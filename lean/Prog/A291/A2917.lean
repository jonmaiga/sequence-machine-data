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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A291700: Number of ways of writing n as a sum of n nonnegative cubes.

The programs for A291700, there is no canonical definition to state claims against.
-/

/-! ## A291700.P5788902402737370726

`A290054(∑[4*n])`
-/

namespace A291700.P5788902402737370726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291700.P5788902402737370726

/-! ## A291700.P7956684890747872006

`A017077(C(n, 8))`
-/

namespace A291700.P7956684890747872006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (Nat.choose n 8)

end

end A291700.P7956684890747872006

/-! ## A291700.P9367281018602614324

`sqrt(A017078(C(n, 8)))`
-/

namespace A291700.P9367281018602614324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017078 (Nat.choose n 8) : ℝ)

end

end A291700.P9367281018602614324

/-! ## A291700.P5550318626728583192

`A017113(C(n, 8))-3`
-/

namespace A291700.P5550318626728583192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (Nat.choose n 8) - 3

end

end A291700.P5550318626728583192

/-! ## A291700.P13085116462556773361

`A017077(Δ[A306860(n)])`
-/

namespace A291700.P13085116462556773361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017077 (f1 (n + 1) - f1 n).toNat

end

end A291700.P13085116462556773361

/-!
# A291701: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of k-th power of continued fraction 1 - x/(1 - x^2/(1 - x^3/(1 - x^4/(1 - x^5/(1 - ...))))).

The programs for A291701, there is no canonical definition to state claims against.
-/

/-! ## A291701.P13364151635045277759

`A286352(n)-A125005(A326323(n))`
-/

namespace A291701.P13364151635045277759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n - A125005 (A326323 n).toNat

end

end A291701.P13364151635045277759

/-! ## A291701.P3688897351795756044

`A286352(A089311(A094544(n))+n)`
-/

namespace A291701.P3688897351795756044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A089311 (A094544 n).toNat + (n : ℤ)).toNat

end

end A291701.P3688897351795756044

/-! ## A291701.P8956569273453843944

`A286352(A025469(A163661(n))+n)`
-/

namespace A291701.P8956569273453843944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A025469 (A163661 n).toNat + (n : ℤ)).toNat

end

end A291701.P8956569273453843944

/-! ## A291701.P16506833521321718672

`A286352(A025469(A256116(n))+n)`
-/

namespace A291701.P16506833521321718672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 (A025469 (A256116 n).toNat + (n : ℤ)).toNat

end

end A291701.P16506833521321718672

/-! ## A291701.P17686070065093944696

`A286352(n)-A089311(A094544(n))`
-/

namespace A291701.P17686070065093944696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 n - A089311 (A094544 n).toNat

end

end A291701.P17686070065093944696

/-!
# A291703: Number of connected dominating sets in the complete tripartite graph K_{n,n,n}.

The programs for A291703, the canonical program `A291703.P10698987530802811860` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291703 has offset 1).

The definition of A291703 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291703.P10698987530802811860

`A291537(n+1)-3%(n+3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A291703

/-- `A291537(n+1)-3%(n+3)` -/
def P10698987530802811860.Spec : Prop :=
  ∀ n, P10698987530802811860.a n = A291703 (n + 1)

theorem P10698987530802811860.correct : P10698987530802811860.Spec := by
  intro n
  simp only [A291703, Nat.add_sub_cancel]

end A291703

/-! ## A291703.P6005652907121646023

`A291537(n+1)-A002262(A167614(n+1))`
-/

namespace A291703.P6005652907121646023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291537 (n + 1) - A002262 (A167614 (n + 1)).toNat

end

end A291703.P6005652907121646023

namespace A291703

/-- `A291537(n+1)-A002262(A167614(n+1))` -/
def P6005652907121646023.Spec : Prop :=
  ∀ n, P6005652907121646023.a n = A291703 (n + 1)

end A291703

/-! ## A291703.P17490541784166398240

`A023503(p?[5-A000120(n)])+2*A020537(n)`
-/

namespace A291703.P17490541784166398240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023503 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 2 * A020537 n

end

end A291703.P17490541784166398240

namespace A291703

/-- `A023503(p?[5-A000120(n)])+2*A020537(n)` -/
def P17490541784166398240.Spec : Prop :=
  ∀ n, P17490541784166398240.a n = A291703 (n + 1)

end A291703

/-! ## A291703.P1411116637664858176

`A033428(n+1)+A291537(n+1)-A290325(n+1)`
-/

namespace A291703.P1411116637664858176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (n + 1) + (A291537 (n + 1) - A290325 (n + 1))

end

end A291703.P1411116637664858176

namespace A291703

/-- `A033428(n+1)+A291537(n+1)-A290325(n+1)` -/
def P1411116637664858176.Spec : Prop :=
  ∀ n, P1411116637664858176.a n = A291703 (n + 1)

end A291703

/-! ## A291703.P5061799993381006172

`A291537(n+1)+A347536(n+2)-A290325(n+2)`
-/

namespace A291703.P5061799993381006172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291537 (n + 1) + (A347536 (n + 2) - A290325 (n + 2))

end

end A291703.P5061799993381006172

namespace A291703

/-- `A291537(n+1)+A347536(n+2)-A290325(n+2)` -/
def P5061799993381006172.Spec : Prop :=
  ∀ n, P5061799993381006172.a n = A291703 (n + 1)

end A291703

/-!
# A291706: Number of connected dominating sets in the n-ladder graph.

The programs for A291706, the canonical program `A291706.P4093605294459976754` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291706 has offset 1).

The definition of A291706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291706.P4093605294459976754

`2*a(n-1)+a(n-2)` with `a(0)=3, a(1)=9, a(2)=24, a(3)=56`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291706

/-- `2*a(n-1)+a(n-2)` -/
def P4093605294459976754.Spec : Prop :=
  ∀ n, (P4093605294459976754.a n : ℤ) = A291706 (n + 1)

theorem P4093605294459976754.correct : P4093605294459976754.Spec := by
  intro n
  simp only [A291706, Nat.add_sub_cancel]

end A291706

/-! ## A291706.P13812118066084592158

`ogf((3+3x+3x^2-x^3)/(1-2x-x^2))`
-/

namespace A291706.P13812118066084592158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3, 3, -1] [1, -2, -1] n

end

end A291706.P13812118066084592158

namespace A291706

/-- `ogf((3+3x+3x^2-x^3)/(1-2x-x^2))` -/
def P13812118066084592158.Spec : Prop :=
  ∀ n, P13812118066084592158.a n = A291706 (n + 1)

end A291706

/-! ## A291706.P9626170775295616590

`A001333(n)*A329513(2*n+1)`
-/

namespace A291706.P9626170775295616590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n * A329513 (2 * n + 1)

end

end A291706.P9626170775295616590

namespace A291706

/-- `A001333(n)*A329513(2*n+1)` -/
def P9626170775295616590.Spec : Prop :=
  ∀ n, P9626170775295616590.a n = A291706 (n + 1)

end A291706

/-! ## A291706.P2655396037662703751

`Δ[A000129(n)]*A329513(2*n+1)`
-/

namespace A291706.P2655396037662703751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A329513 (2 * n + 1)

end

end A291706.P2655396037662703751

namespace A291706

/-- `Δ[A000129(n)]*A329513(2*n+1)` -/
def P2655396037662703751.Spec : Prop :=
  ∀ n, P2655396037662703751.a n = A291706 (n + 1)

end A291706

/-! ## A291706.P11759864503876923154

`lcm(A001333(n), A329513(A010061(n+1)))`
-/

namespace A291706.P11759864503876923154
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001333 n) (A329513 (A010061 (n + 1)).toNat)

end

end A291706.P11759864503876923154

namespace A291706

/-- `lcm(A001333(n), A329513(A010061(n+1)))` -/
def P11759864503876923154.Spec : Prop :=
  ∀ n, (P11759864503876923154.a n : ℤ) = A291706 (n + 1)

end A291706

/-! ## A291706.P6098281262697927924

`A097564(A016777(n))*A329513(2*n+1)`
-/

namespace A291706.P6098281262697927924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A016777 n).toNat * A329513 (2 * n + 1)

end

end A291706.P6098281262697927924

namespace A291706

/-- `A097564(A016777(n))*A329513(2*n+1)` -/
def P6098281262697927924.Spec : Prop :=
  ∀ n, P6098281262697927924.a n = A291706 (n + 1)

end A291706

/-!
# A291708: Number of partitions of n into two prime parts or two nonprime parts.

The programs for A291708, there is no canonical definition to state claims against.
-/

/-! ## A291708.P680071887614674239

`floor((n+1)/2)-A062602(n+1)`
-/

namespace A291708.P680071887614674239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - A062602 (n + 1)

end

end A291708.P680071887614674239

/-! ## A291708.P2258903702376835534

`ceil(n/2-A062602(n+1))`
-/

namespace A291708.P2258903702376835534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A062602 (n + 1) : ℚ)⌉

end

end A291708.P2258903702376835534

/-! ## A291708.P5371437299909070424

`A061358(n+1)+A062610(n+1)`
-/

namespace A291708.P5371437299909070424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (n + 1) + A062610 (n + 1)

end

end A291708.P5371437299909070424

/-! ## A291708.P10013350360568032965

`n-(A062602(n+1)+A004526(n))`
-/

namespace A291708.P10013350360568032965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A062602 (n + 1) + A004526 n)

end

end A291708.P10013350360568032965

/-!
# A291709: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Sum_{j>=1} (-1)^(j-1)*binomial(-k,j-1)*x^j/j).

The programs for A291709, there is no canonical definition to state claims against.
-/

/-! ## A291709.P18403024264637750828

`A326323(n)-A025469(A086350(2*(n+1)))`
-/

namespace A291709.P18403024264637750828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326323 n - A025469 (A086350 (2 * (n + 1))).toNat

end

end A291709.P18403024264637750828

/-! ## A291709.P2847704837881453475

`A048266(A326323(n))`
-/

namespace A291709.P2847704837881453475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A326323 n).toNat

end

end A291709.P2847704837881453475

/-! ## A291709.P14085795559949335610

`A123068(A326323(n)+1)`
-/

namespace A291709.P14085795559949335610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A326323 n + 1).toNat

end

end A291709.P14085795559949335610

/-!
# A291711: The minimum number of coins needed to pay for n units in the currency system of values 1, 3, 8, 21, 55, 144, ..., Fibonacci(2k), ...

The programs for A291711, the canonical program `A291711.P15975325620196948492` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291711 has offset 1).

The definition of A291711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, A381579, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291711.P15975325620196948492

`A007953(A381579(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A291711

/-- `A007953(A381579(n+1))` -/
def P15975325620196948492.Spec : Prop :=
  ∀ n, P15975325620196948492.a n = A291711 (n + 1)

theorem P15975325620196948492.correct : P15975325620196948492.Spec := by
  intro n
  simp only [A291711, Nat.add_sub_cancel]

end A291711

/-! ## A291711.P9284269620312153165

`A005812(A381608(n+1))`
-/

namespace A291711.P9284269620312153165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A381608 (n + 1)).toNat

end

end A291711.P9284269620312153165

namespace A291711

/-- `A005812(A381608(n+1))` -/
def P9284269620312153165.Spec : Prop :=
  ∀ n, P9284269620312153165.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P6066707334793520454

`A245588(ceil(ϕ*n)+1)`
-/

namespace A291711.P6066707334793520454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245588 (⌈Real.goldenRatio * (n : ℝ)⌉ + 1).toNat

end

end A291711.P6066707334793520454

namespace A291711

/-- `A245588(ceil(ϕ*n)+1)` -/
def P6066707334793520454.Spec : Prop :=
  ∀ n, P6066707334793520454.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P14112247400497154008

`A245588(A189662(n+1))%A000040(n+1)`
-/

namespace A291711.P14112247400497154008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245588 (A189662 (n + 1)).toNat) (A000040 (n + 1))

end

end A291711.P14112247400497154008

namespace A291711

/-- `A245588(A189662(n+1))%A000040(n+1)` -/
def P14112247400497154008.Spec : Prop :=
  ∀ n, P14112247400497154008.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P5287083122139842329

`A007318(and(2, n-2))*A245588(A189662(n+1))`
-/

namespace A291711.P5287083122139842329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 2)).toNat * A245588 (A189662 (n + 1)).toNat

end

end A291711.P5287083122139842329

namespace A291711

/-- `A007318(and(2, n-2))*A245588(A189662(n+1))` -/
def P5287083122139842329.Spec : Prop :=
  ∀ n, P5287083122139842329.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P1251982345798754856

`dr(A245588(A101868(n+1)))`
-/

namespace A291711.P1251982345798754856
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A245588 (A101868 (n + 1)).toNat)

end

end A291711.P1251982345798754856

namespace A291711

/-- `dr(A245588(A101868(n+1)))` -/
def P1251982345798754856.Spec : Prop :=
  ∀ n, (P1251982345798754856.a n : ℤ) = A291711 (n + 1)

end A291711

/-! ## A291711.P17272924040505371924

`A245588(A101868(n+1)+1)-1`
-/

namespace A291711.P17272924040505371924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245588 (A101868 (n + 1) + 1).toNat - 1

end

end A291711.P17272924040505371924

namespace A291711

/-- `A245588(A101868(n+1)+1)-1` -/
def P17272924040505371924.Spec : Prop :=
  ∀ n, P17272924040505371924.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P1857239857120877987

`A139351(A003754(n+1))+1`
-/

namespace A291711.P1857239857120877987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A003754 (n + 1)).toNat + 1

end

end A291711.P1857239857120877987

namespace A291711

/-- `A139351(A003754(n+1))+1` -/
def P1857239857120877987.Spec : Prop :=
  ∀ n, P1857239857120877987.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P16364271473018239990

`A139352(A247648(n+1))+1`
-/

namespace A291711.P16364271473018239990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (A247648 (n + 1)).toNat + 1

end

end A291711.P16364271473018239990

namespace A291711

/-- `A139352(A247648(n+1))+1` -/
def P16364271473018239990.Spec : Prop :=
  ∀ n, P16364271473018239990.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P5681344720474571323

`A139351(A380358(n+1))`
-/

namespace A291711.P5681344720474571323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A380358 (n + 1)).toNat

end

end A291711.P5681344720474571323

namespace A291711

/-- `A139351(A380358(n+1))` -/
def P5681344720474571323.Spec : Prop :=
  ∀ n, P5681344720474571323.a n = A291711 (n + 1)

end A291711

/-! ## A291711.P12371718995185550511

`A139351(eq[1, A334076(n+1)])`
-/

namespace A291711.P12371718995185550511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291711.P12371718995185550511

namespace A291711

/-- `A139351(eq[1, A334076(n+1)])` -/
def P12371718995185550511.Spec : Prop :=
  ∀ n, P12371718995185550511.a n = A291711 (n + 1)

end A291711

/-!
# A291712: Lexicographically earliest sequence of positive terms such that, for any m and n > 0, if m < n then a(m) != a(n) or a(m+1) != a(n+1), and if n = least k > m such that a(k) = a(m) then m and n have a different parity.

The programs for A291712, there is no canonical definition to state claims against.
-/

/-! ## A291712.P17860473035651748705

`A124748(A357187(n+2)+A108950(n+1))`
-/

namespace A291712.P17860473035651748705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (A357187 (n + 2) + A108950 (n + 1)).toNat

end

end A291712.P17860473035651748705

/-! ## A291712.P14882770581024368787

`A377168(A329703(n))`
-/

namespace A291712.P14882770581024368787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377168 (A329703 n).toNat

end

end A291712.P14882770581024368787

/-! ## A291712.P12189037213203474759

`A175665(A156789(n))`
-/

namespace A291712.P12189037213203474759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175665 (A156789 n).toNat

end

end A291712.P12189037213203474759

/-! ## A291712.P12482729347491324868

`A379672(A134620(n+1))`
-/

namespace A291712.P12482729347491324868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379672 (A134620 (n + 1)).toNat

end

end A291712.P12482729347491324868

/-! ## A291712.P13038188128465109574

`A333381(A300415(n)+1)`
-/

namespace A291712.P13038188128465109574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A300415 n + 1).toNat

end

end A291712.P13038188128465109574

/-!
# A291713: 144 * preferred ratios of room width / length in Alberti's Ten Books on Architecture.

The programs for A291713, there is no canonical definition to state claims against.
-/

/-! ## A291713.P8273919731720258547

`A114334(n+14)`
-/

namespace A291713.P8273919731720258547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114334 (n + 14)

end

end A291713.P8273919731720258547

/-! ## A291713.P4471863473054855730

`record[gcd(n, A003586(5*n+14))]`
-/

namespace A291713.P4471863473054855730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A003586 (5 * n + 14))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291713.P4471863473054855730

/-! ## A291713.P2336268491443884181

`A144566(A111222(n+1))`
-/

namespace A291713.P2336268491443884181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144566 (A111222 (n + 1)).toNat

end

end A291713.P2336268491443884181

/-! ## A291713.P3459711434701557858

`A144566(A155771(n+1))`
-/

namespace A291713.P3459711434701557858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144566 (A155771 (n + 1)).toNat

end

end A291713.P3459711434701557858

/-! ## A291713.P13273593626091141371

`A144566(A299544(n+1))`
-/

namespace A291713.P13273593626091141371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144566 (A299544 (n + 1)).toNat

end

end A291713.P13273593626091141371

/-!
# A291715: a(n) = 420*(preferred ratios of room width / height in Alberti's Ten Books on Architecture).

The programs for A291715, there is no canonical definition to state claims against.
-/

/-! ## A291715.P12178713907385169414

`A062857(A062886(n)+27)`
-/

namespace A291715.P12178713907385169414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062857 (A062886 n + 27).toNat

end

end A291715.P12178713907385169414

/-!
# A291717: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1 <= k <= m positions can be picked in an m X m square grid such that the picked positions have a central symmetry.

The programs for A291717, there is no canonical definition to state claims against.
-/

/-! ## A291717.P14591424633118756731

`A292154(n+1)+A292155(n+1)`
-/

namespace A291717.P14591424633118756731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292154 (n + 1) + A292155 (n + 1)

end

end A291717.P14591424633118756731

/-! ## A291717.P518024214090308159

`A292153(n+1)-A292156(n+1)`
-/

namespace A291717.P518024214090308159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A292156 (n + 1)

end

end A291717.P518024214090308159

/-! ## A291717.P17063368925890518650

`A292155(n+1)+A292154(A077168(n))`
-/

namespace A291717.P17063368925890518650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292155 (n + 1) + A292154 (A077168 n).toNat

end

end A291717.P17063368925890518650

/-! ## A291717.P8676069482580026031

`A292154(n+1)+A072068(A072063(n+3)*A072103(n+1))`
-/

namespace A291717.P8676069482580026031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292154 (n + 1) + A072068 (A072063 (n + 3) * A072103 (n + 1)).toNat

end

end A291717.P8676069482580026031

/-! ## A291717.P7434069927436348656

`lcm(A292154(n+1), A353516(A077969(n+1)))`
-/

namespace A291717.P7434069927436348656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A292154 (n + 1)) (A353516 (A077969 (n + 1)).toNat)

end

end A291717.P7434069927436348656

/-!
# A291718: Triangle T(m,k) read by rows, where T(m,k) is the number of ways in which 1 <= k <= m positions can be picked in an m X m square grid such that the picked positions have a line symmetry.

The programs for A291718, there is no canonical definition to state claims against.
-/

/-! ## A291718.P17463522350427464277

`A292153(n+1)-A010051(A002709(n))`
-/

namespace A291718.P17463522350427464277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A010051 (A002709 n).toNat

end

end A291718.P17463522350427464277

/-! ## A291718.P4754467083386143073

`A292153(n+1)-A014083(A001848(n))`
-/

namespace A291718.P4754467083386143073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A014083 (A001848 n).toNat

end

end A291718.P4754467083386143073

/-! ## A291718.P12683632868175655825

`A292153(n+1)-A010054(A084507(n))`
-/

namespace A291718.P12683632868175655825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A010054 (A084507 n).toNat

end

end A291718.P12683632868175655825

/-! ## A291718.P16002079479291427469

`A292153(n+1)-A191322(A181061(n))`
-/

namespace A291718.P16002079479291427469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A191322 (A181061 n).toNat

end

end A291718.P16002079479291427469

/-! ## A291718.P17460106937376256462

`A292153(n+1)-A353528(A326517(n))`
-/

namespace A291718.P17460106937376256462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292153 (n + 1) - A353528 (A326517 n).toNat

end

end A291718.P17460106937376256462

/-!
# A291719: Numbers occurring in Ezra Ehrenkrantz's "Modular Coordination System".

The programs for A291719, there is no canonical definition to state claims against.
-/

/-! ## A291719.P6311001629228099944

`∩[A200001(n+1), A356939(n+1)]`
-/

namespace A291719.P6311001629228099944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291719.P6311001629228099944

/-! ## A291719.P14640271518507632513

`eq[2, A141256(A326302(n))]`
-/

namespace A291719.P14640271518507632513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A326302 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291719.P14640271518507632513

/-! ## A291719.P5769346920349018388

`lt[A002034(A366905(n+1)²), 13]+1`
-/

namespace A291719.P5769346920349018388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A366905 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291719.P5769346920349018388

/-! ## A291719.P11391559287813431845

`record[A064364(n+1)]%A071062(n+1)`
-/

namespace A291719.P11391559287813431845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064364 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A071062 (n + 1))

end

end A291719.P11391559287813431845

/-! ## A291719.P4513525319889306230

`∩[A010432(n+1), A161604(n+1)]`
-/

namespace A291719.P4513525319889306230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291719.P4513525319889306230

/-!
# A291720: Expansion of Product_{k>=1} 1/(1 - x^(k^3))^(k^3).

The programs for A291720, there is no canonical definition to state claims against.
-/

/-! ## A291720.P2934894026996092321

`A151970(6^A132292(n+1))`
-/

namespace A291720.P2934894026996092321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151970 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A132292 (n + 1) : ℤ))).toNat

end

end A291720.P2934894026996092321

/-! ## A291720.P6700276894620665400

`A238690(A110656(n+1)^8)`
-/

namespace A291720.P6700276894620665400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A110656 (n + 1) ^ 8).toNat

end

end A291720.P6700276894620665400

/-! ## A291720.P5350911494406191105

`A151970(C(9, A132292(n+1)))`
-/

namespace A291720.P5350911494406191105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151970 (Nat.choose 9 (A132292 (n + 1)).toNat)

end

end A291720.P5350911494406191105

/-! ## A291720.P13153020556036873138

`A035936(A034386(A303168(n))²)`
-/

namespace A291720.P13153020556036873138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A034386 (A303168 n).toNat ^ 2).toNat

end

end A291720.P13153020556036873138

/-! ## A291720.P14251126012999025126

`A161332(A290850(n))`
-/

namespace A291720.P14251126012999025126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161332 (A290850 n).toNat

end

end A291720.P14251126012999025126

/-!
# A291721: Expansion of Product_{k>=1} ((1 + x^(k^3))/(1 - x^(k^3)))^(k^3).

The programs for A291721, there is no canonical definition to state claims against.
-/

/-! ## A291721.P3637481223479353793

`∑[A028601(A139714(n))²]`
-/

namespace A291721.P3637481223479353793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028601 (A139714 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291721.P3637481223479353793

/-! ## A291721.P8167761015911136639

`∑[A136664(A056219(or(1, n)))]`
-/

namespace A291721.P8167761015911136639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136664 (A056219 (Nat.lor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291721.P8167761015911136639

/-! ## A291721.P10719071793260377756

`∑[A062756(A071542(n)!)²]`
-/

namespace A291721.P10719071793260377756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (Nat.factorial (A071542 n).toNat) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291721.P10719071793260377756

/-! ## A291721.P840237731005611658

`∑[A035327(A052955(A008642(n)))]`
-/

namespace A291721.P840237731005611658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A052955 (A008642 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291721.P840237731005611658

/-! ## A291721.P4863485749591497473

`A072793(∑[A000045(A291692(n))])`
-/

namespace A291721.P4863485749591497473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A291692 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072793 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291721.P4863485749591497473

/-!
# A291723: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - S^3.

The programs for A291723, the canonical program `A291723.P13868917721459428928` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291723 has offset 0).

The definition of A291723 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291723.P13868917721459428928

`a(n-3)+3*a(n-5)+3*a(n-7)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=3, a(5)=1, a(6)=3, a(7)=6, a(8)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291723

/-- `a(n-3)+3*a(n-5)+3*a(n-7)+a(n-9)` -/
def P13868917721459428928.Spec : Prop :=
  ∀ n, (P13868917721459428928.a n : ℤ) = A291723 n

theorem P13868917721459428928.correct : P13868917721459428928.Spec := by
  intro n
  simp only [A291723]

end A291723

/-!
# A291725: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)^2.

The programs for A291725, the canonical program `A291725.P12612644847781527468` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291725 has offset 0).

The definition of A291725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291725.P12612644847781527468

`2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=6, a(3)=11, a(4)=18, a(5)=30`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291725

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)-a(n-6)` -/
def P12612644847781527468.Spec : Prop :=
  ∀ n, P12612644847781527468.a n = A291725 n

theorem P12612644847781527468.correct : P12612644847781527468.Spec := by
  intro n
  simp only [A291725]

end A291725

/-! ## A291725.P17138981138360678172

`A164406(n)+A068921(n)`
-/

namespace A291725.P17138981138360678172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164406 n + A068921 n

end

end A291725.P17138981138360678172

namespace A291725

/-- `A164406(n)+A068921(n)` -/
def P17138981138360678172.Spec : Prop :=
  ∀ n, P17138981138360678172.a n = A291725 n

theorem P17138981138360678172.correct : P17138981138360678172.Spec := by
  intro n
  simp only [A291725, Nat.add_sub_cancel, A291725.P17138981138360678172.a, A291725.P12612644847781527468.a, A068921, A068921.P14390823611597591154.a, A164406, A164406.P600747503632810465.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291725

/-! ## A291725.P1631812672007777227

`A143361(∑[n+2]+3)`
-/

namespace A291725.P1631812672007777227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A291725.P1631812672007777227

namespace A291725

/-- `A143361(∑[n+2]+3)` -/
def P1631812672007777227.Spec : Prop :=
  ∀ n, P1631812672007777227.a n = A291725 n

end A291725

/-! ## A291725.P2733549901216009179

`record[A143361(A133263(n))]`
-/

namespace A291725.P2733549901216009179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291725.P2733549901216009179

namespace A291725

/-- `record[A143361(A133263(n))]` -/
def P2733549901216009179.Spec : Prop :=
  ∀ n, P2733549901216009179.a n = A291725 n

end A291725

/-! ## A291725.P10908675644630317624

`record[A143361(A238531(n))]`
-/

namespace A291725.P10908675644630317624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A238531 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291725.P10908675644630317624

namespace A291725

/-- `record[A143361(A238531(n))]` -/
def P10908675644630317624.Spec : Prop :=
  ∀ n, P10908675644630317624.a n = A291725 n

end A291725

/-! ## A291725.P6708153992069336742

`record[A143361(A089071(n+1))]`
-/

namespace A291725.P6708153992069336742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291725.P6708153992069336742

namespace A291725

/-- `record[A143361(A089071(n+1))]` -/
def P6708153992069336742.Spec : Prop :=
  ∀ n, P6708153992069336742.a n = A291725 n

end A291725

/-! ## A291725.P16775644656411025886

`A202191(eq[2, A002262(n)])`
-/

namespace A291725.P16775644656411025886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291725.P16775644656411025886

namespace A291725

/-- `A202191(eq[2, A002262(n)])` -/
def P16775644656411025886.Spec : Prop :=
  ∀ n, P16775644656411025886.a n = A291725 n

end A291725

/-! ## A291725.P15945260424887820303

`A202191(A167614(n+1)-1)`
-/

namespace A291725.P15945260424887820303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (A167614 (n + 1) - 1).toNat

end

end A291725.P15945260424887820303

namespace A291725

/-- `A202191(A167614(n+1)-1)` -/
def P15945260424887820303.Spec : Prop :=
  ∀ n, P15945260424887820303.a n = A291725 n

end A291725

/-! ## A291725.P5388789914428110566

`A144401(A000096(n+2))`
-/

namespace A291725.P5388789914428110566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A000096 (n + 2)).toNat

end

end A291725.P5388789914428110566

namespace A291725

/-- `A144401(A000096(n+2))` -/
def P5388789914428110566.Spec : Prop :=
  ∀ n, P5388789914428110566.a n = A291725 n

end A291725

/-!
# A291726: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)^3.

The programs for A291726, there is no canonical definition to state claims against.
-/

/-! ## A291726.P17127615051588691213

`∑[A143361(A167614(n+2))]+1`
-/

namespace A291726.P17127615051588691213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143361 (A167614 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A291726.P17127615051588691213

/-! ## A291726.P7796502528661922573

`A202191(A167614(n+2))`
-/

namespace A291726.P7796502528661922573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (A167614 (n + 2)).toNat

end

end A291726.P7796502528661922573

/-! ## A291726.P16128649513204386579

`A202191(eq[3, A002262(n)])`
-/

namespace A291726.P16128649513204386579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A291726.P16128649513204386579

/-! ## A291726.P8093370394967033345

`A202191(A238531(n+4)+1)`
-/

namespace A291726.P8093370394967033345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (A238531 (n + 4) + 1).toNat

end

end A291726.P8093370394967033345

/-! ## A291726.P15820800741125067565

`A144401((n+3)²-∑[n+1])`
-/

namespace A291726.P15820800741125067565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291726.P15820800741125067565

/-!
# A291727: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)^4.

The programs for A291727, there is no canonical definition to state claims against.
-/

/-! ## A291727.P10066272617305368019

`A202191(∑[n+4]+10)`
-/

namespace A291727.P10066272617305368019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202191 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A291727.P10066272617305368019

/-! ## A291727.P4073778465074325129

`A144401(Δ[A111396(n)])`
-/

namespace A291727.P4073778465074325129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (f1 (n + 1) - f1 n).toNat

end

end A291727.P4073778465074325129

/-! ## A291727.P3654230361957670554

`A144401(A056115(n)+12)`
-/

namespace A291727.P3654230361957670554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A056115 n + 12).toNat

end

end A291727.P3654230361957670554

/-! ## A291727.P2632214156959186832

`A144401(A144396(n+1)+∑[n+3]+6)`
-/

namespace A291727.P2632214156959186832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A144396 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 6 : ℕ) : ℤ)).toNat

end

end A291727.P2632214156959186832

/-! ## A291727.P10449430176699846633

`A144401(A111396(n+1)-A111396(n))`
-/

namespace A291727.P10449430176699846633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144401 (A111396 (n + 1) - A111396 n).toNat

end

end A291727.P10449430176699846633

/-!
# A291728: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - S - S^2.

The programs for A291728, the canonical program `A291728.P16994734202063689907` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291728 has offset 0).

The definition of A291728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291728.P16994734202063689907

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=9, a(4)=17, a(5)=35`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291728

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)+a(n-6)` -/
def P16994734202063689907.Spec : Prop :=
  ∀ n, (P16994734202063689907.a n : ℤ) = A291728 n

theorem P16994734202063689907.correct : P16994734202063689907.Spec := by
  intro n
  simp only [A291728]

end A291728

/-! ## A291728.P5718863351757498355

`A165190(A211476(n+2))`
-/

namespace A291728.P5718863351757498355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A211476 (n + 2)).toNat

end

end A291728.P5718863351757498355

namespace A291728

/-- `A165190(A211476(n+2))` -/
def P5718863351757498355.Spec : Prop :=
  ∀ n, P5718863351757498355.a n = A291728 n

end A291728

/-! ## A291728.P4546563025526813598

`A372888(n)+A000005(A001862(n))`
-/

namespace A291728.P4546563025526813598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372888 n + A000005 (A001862 n).toNat

end

end A291728.P4546563025526813598

namespace A291728

/-- `A372888(n)+A000005(A001862(n))` -/
def P4546563025526813598.Spec : Prop :=
  ∀ n, P4546563025526813598.a n = A291728 n

end A291728

/-! ## A291728.P6026159135668115516

`A320847(A355190(n))+A000079(n)`
-/

namespace A291728.P6026159135668115516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A355190 n).toNat + A000079 n

end

end A291728.P6026159135668115516

namespace A291728

/-- `A320847(A355190(n))+A000079(n)` -/
def P6026159135668115516.Spec : Prop :=
  ∀ n, P6026159135668115516.a n = A291728 n

end A291728

/-! ## A291728.P12982196358064165049

`A001462(A382989(n)+A324741(n))`
-/

namespace A291728.P12982196358064165049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A382989 n + A324741 n).toNat

end

end A291728.P12982196358064165049

namespace A291728

/-- `A001462(A382989(n)+A324741(n))` -/
def P12982196358064165049.Spec : Prop :=
  ∀ n, P12982196358064165049.a n = A291728 n

end A291728

/-!
# A291729: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - 2 S - S^2.

The programs for A291729, the canonical program `A291729.P7257159050829882454` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291729 has offset 0).

The definition of A291729 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291729.P7257159050829882454

`2*a(n-1)+a(n-2)+2*a(n-3)+2*a(n-4)+a(n-6)` with `a(0)=2, a(1)=5, a(2)=14, a(3)=39, a(4)=106, a(5)=290`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291729

/-- `2*a(n-1)+a(n-2)+2*a(n-3)+2*a(n-4)+a(n-6)` -/
def P7257159050829882454.Spec : Prop :=
  ∀ n, (P7257159050829882454.a n : ℤ) = A291729 n

theorem P7257159050829882454.correct : P7257159050829882454.Spec := by
  intro n
  simp only [A291729]

end A291729

/-! ## A291729.P13357443492780551663

`a(n-1)!` with `a(0)=2, a(1)=5, a(2)=14, a(3)=39, a(4)=106, a(5)=290`
-/

namespace A291729.P13357443492780551663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 14, 39, 106, 290] fun n a =>
  Nat.factorial (a (n - 1))

end

end A291729.P13357443492780551663

namespace A291729

/-- `a(n-1)!` -/
def P13357443492780551663.Spec : Prop :=
  ∀ n, (P13357443492780551663.a n : ℤ) = A291729 n

end A291729

/-!
# A291730: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - 2 S - 2 S^2.

The programs for A291730, there is no canonical definition to state claims against.
-/

/-! ## A291730.P6882613750362891909

`2*A291731(n)`
-/

namespace A291730.P6882613750362891909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A291731 n

end

end A291730.P6882613750362891909

/-! ## A291730.P15330507280345619221

`A291731(n)/abs(A065357(n)/2)`
-/

namespace A291730.P15330507280345619221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291731 n : ℚ) / |(A065357 n : ℚ) / 2|

end

end A291730.P15330507280345619221

/-! ## A291730.P10741180532753050531

`A291731(sqrt(A000290(n)))+A291731(n)`
-/

namespace A291730.P10741180532753050531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291731 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat + A291731 n

end

end A291730.P10741180532753050531

/-! ## A291730.P1249355040671833849

`A291731(A005843(n)/2)+A291731(n)`
-/

namespace A291730.P1249355040671833849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291731 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A291731 n

end

end A291730.P1249355040671833849

/-! ## A291730.P7638861756698426982

`A291731(A005843(n)-n)+A291731(n)`
-/

namespace A291730.P7638861756698426982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291731 (A005843 n - (n : ℤ)).toNat + A291731 n

end

end A291730.P7638861756698426982

/-! ## A291730.P1689666337635445380

`A291731(n)+A291731(n)%A291382(n)`
-/

namespace A291730.P1689666337635445380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291731 n + Int.tmod (A291731 n) (A291382 n)

end

end A291730.P1689666337635445380

/-! ## A291730.P6823179658402515123

`(A291731(n)+A291731(n))%A110594(n+1)`
-/

namespace A291730.P6823179658402515123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291731 n + A291731 n) (A110594 (n + 1))

end

end A291730.P6823179658402515123

/-!
# A291731: a(n) = (1/2)*A291730(n).

The programs for A291731, there is no canonical definition to state claims against.
-/

/-! ## A291731.P11715822475457201049

`1/2*A291730(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291731.P11715822475457201049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A291730 n : ℚ)

end

end A291731.P11715822475457201049

/-! ## A291731.P2386701982196399001

`A291730(n)/2`
-/

namespace A291731.P2386701982196399001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291730 n : ℚ) / 2

end

end A291731.P2386701982196399001

/-! ## A291731.P1243551199718126069

`record[ratio[A291730(A142150(n))]]`
-/

namespace A291731.P1243551199718126069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291730 (A142150 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291731.P1243551199718126069

/-! ## A291731.P16899935817167955074

`A014682(A291730(n))`
-/

namespace A291731.P16899935817167955074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A291730 n).toNat

end

end A291731.P16899935817167955074

/-! ## A291731.P14460442675892460917

`A273943(lcm(2, A291730(n)))`
-/

namespace A291731.P14460442675892460917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A291730 n))

end

end A291731.P14460442675892460917

/-!
# A291732: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - 2 S)^2.

The programs for A291732, there is no canonical definition to state claims against.
-/

/-! ## A291732.P13261516951979889428

`4*A291733(n)`
-/

namespace A291732.P13261516951979889428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A291733 n

end

end A291732.P13261516951979889428

/-! ## A291732.P857897582170128998

`A008574(A291733(n))`
-/

namespace A291732.P857897582170128998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A291733 n).toNat

end

end A291732.P857897582170128998

/-! ## A291732.P7318008587305314150

`A008586(or(C(2, n)%2, A291733(n)))`
-/

namespace A291732.P7318008587305314150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (Int.lor ((Nat.choose 2 n % 2 : ℕ) : ℤ) (A291733 n)).toNat

end

end A291732.P7318008587305314150

/-! ## A291732.P7657154380579716857

`A283763(n)+A008586(A291733(n))`
-/

namespace A291732.P7657154380579716857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283763 n + A008586 (A291733 n).toNat

end

end A291732.P7657154380579716857

/-! ## A291732.P11359016019615038575

`A008586(A326627(n)+A291733(n))`
-/

namespace A291732.P11359016019615038575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A326627 n + A291733 n).toNat

end

end A291732.P11359016019615038575

/-!
# A291733: a(n) = (1/4)*A291732(n).

The programs for A291733, there is no canonical definition to state claims against.
-/

/-! ## A291733.P8943639482601632587

`1/4*A291732(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A291733.P8943639482601632587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A291732 n : ℚ)

end

end A291733.P8943639482601632587

/-! ## A291733.P14696390937698890705

`A291732(n)/4`
-/

namespace A291733.P14696390937698890705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291732 n : ℚ) / 4

end

end A291733.P14696390937698890705

/-! ## A291733.P17334366354661632478

`A110962(A291732(n))`
-/

namespace A291733.P17334366354661632478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A291732 n).toNat

end

end A291733.P17334366354661632478

/-! ## A291733.P6947631377630296866

`A174571(A179051(n)*A291732(n))`
-/

namespace A291733.P6947631377630296866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A179051 n * A291732 n).toNat

end

end A291733.P6947631377630296866

/-! ## A291733.P12741241884605866150

`A174571(A291732(n)^A179051(n))`
-/

namespace A291733.P12741241884605866150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (SequenceMachineLib.roundAway ((A291732 n : ℚ) ^ (A179051 n : ℤ))).toNat

end

end A291733.P12741241884605866150

/-!
# A291734: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)(1 - 2 S).

The programs for A291734, the canonical program `A291734.P17297414494026807977` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291734 has offset 0).

The definition of A291734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 267 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291734.P17297414494026807977

`2*A052912(n+1)-A000930(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A291734

/-- `2*A052912(n+1)-A000930(n+1)` -/
def P17297414494026807977.Spec : Prop :=
  ∀ n, P17297414494026807977.a n = A291734 n

theorem P17297414494026807977.correct : P17297414494026807977.Spec := by
  intro n
  simp only [A291734]

end A291734

/-! ## A291734.P2726411899364628340

`A123387(A150991(n+1))`
-/

namespace A291734.P2726411899364628340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123387 (A150991 (n + 1)).toNat

end

end A291734.P2726411899364628340

namespace A291734

/-- `A123387(A150991(n+1))` -/
def P2726411899364628340.Spec : Prop :=
  ∀ n, P2726411899364628340.a n = A291734 n

end A291734

/-!
# A291735: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - S - S^3.

The programs for A291735, the canonical program `A291735.P15331994252251203647` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291735 has offset 0).

The definition of A291735 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291735.P15331994252251203647

`a(n-1)+2*a(n-3)+3*a(n-5)+3*a(n-7)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5, a(4)=10, a(5)=19, a(6)=35, a(7)=67, a(8)=124`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291735

/-- `a(n-1)+2*a(n-3)+3*a(n-5)+3*a(n-7)+a(n-9)` -/
def P15331994252251203647.Spec : Prop :=
  ∀ n, (P15331994252251203647.a n : ℤ) = A291735 n

theorem P15331994252251203647.correct : P15331994252251203647.Spec := by
  intro n
  simp only [A291735]

end A291735

/-! ## A291735.P3725784619271904537

`A330779(A372370(n))`
-/

namespace A291735.P3725784619271904537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330779 (A372370 n).toNat

end

end A291735.P3725784619271904537

namespace A291735

/-- `A330779(A372370(n))` -/
def P3725784619271904537.Spec : Prop :=
  ∀ n, P3725784619271904537.a n = A291735 n

end A291735

/-! ## A291735.P348268720828988939

`A183423(A186546(n+1))`
-/

namespace A291735.P348268720828988939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183423 (A186546 (n + 1)).toNat

end

end A291735.P348268720828988939

namespace A291735

/-- `A183423(A186546(n+1))` -/
def P348268720828988939.Spec : Prop :=
  ∀ n, P348268720828988939.a n = A291735 n

end A291735

/-! ## A291735.P14984632751194229806

`A002024(∏{digits}[n, gcd(#, #!²)]*A075202(n+1))`
-/

namespace A291735.P14984632751194229806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℤ) * A075202 (n + 1)).toNat

end

end A291735.P14984632751194229806

namespace A291735

/-- `A002024(∏{digits}[n, gcd(#, #!²)]*A075202(n+1))` -/
def P14984632751194229806.Spec : Prop :=
  ∀ n, P14984632751194229806.a n = A291735 n

end A291735

/-! ## A291735.P1691198284019003560

`A330060(A061255(n))+A000701(n)`
-/

namespace A291735.P1691198284019003560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330060 (A061255 n).toNat + A000701 n

end

end A291735.P1691198284019003560

namespace A291735

/-- `A330060(A061255(n))+A000701(n)` -/
def P1691198284019003560.Spec : Prop :=
  ∀ n, P1691198284019003560.a n = A291735 n

end A291735

/-!
# A291736: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - S^2 - S^3.

The programs for A291736, there is no canonical definition to state claims against.
-/

/-! ## A291736.P5158404909872016823

`A057574(n)-A215861(n)`
-/

namespace A291736.P5158404909872016823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n - A215861 n

end

end A291736.P5158404909872016823

/-!
# A291737: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - S - S^2 - S^3.

The programs for A291737, there is no canonical definition to state claims against.
-/

/-! ## A291737.P12254824512375395948

`A342497(n)+A049610(A032559(n+1))`
-/

namespace A291737.P12254824512375395948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342497 n + A049610 (A032559 (n + 1)).toNat

end

end A291737.P12254824512375395948

/-! ## A291737.P3645571944942522290

`A245473(A077826(n))`
-/

namespace A291737.P3645571944942522290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A077826 n).toNat

end

end A291737.P3645571944942522290

/-! ## A291737.P7425989957655620844

`A001462(∑[record[A294105(n)]])`
-/

namespace A291737.P7425989957655620844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291737.P7425989957655620844

/-! ## A291737.P14931107596320202136

`A285184(A004891(n+1))-(char[1]+char[5])`
-/

namespace A291737.P14931107596320202136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (A004891 (n + 1)).toNat - (((if ∃ j, f1 j = n then 1 else 0) + (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ)

end

end A291737.P14931107596320202136

/-!
# A291738: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = 1 - S - S^4.

The programs for A291738, there is no canonical definition to state claims against.
-/

/-! ## A291738.P3482122468131458914

`A243283(lcm(A052542(n), A059317(n)))`
-/

namespace A291738.P3482122468131458914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (Int.lcm (A052542 n) (A059317 n))

end

end A291738.P3482122468131458914

/-! ## A291738.P3384520606629384717

`A243283(A052542(n)^A038769(n+1))`
-/

namespace A291738.P3384520606629384717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (SequenceMachineLib.roundAway ((A052542 n : ℚ) ^ (A038769 (n + 1) : ℤ))).toNat

end

end A291738.P3384520606629384717

/-! ## A291738.P11414836976837026411

`A243283(C(A052542(n), A038769(n+1)))`
-/

namespace A291738.P11414836976837026411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (Nat.choose (A052542 n).toNat (A038769 (n + 1)).toNat)

end

end A291738.P11414836976837026411

/-! ## A291738.P12884773311859907889

`A243283(A038769(n+1)²*A052542(n))`
-/

namespace A291738.P12884773311859907889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A038769 (n + 1) ^ 2 * A052542 n).toNat

end

end A291738.P12884773311859907889

/-! ## A291738.P13593249462904105893

`A002024(A271941(n+2))-A281543(n+1)`
-/

namespace A291738.P13593249462904105893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A271941 (n + 2)).toNat - A281543 (n + 1)

end

end A291738.P13593249462904105893

/-!
# A291740: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)(1 - S^2).

The programs for A291740, there is no canonical definition to state claims against.
-/

/-! ## A291740.P11954412306243518126

`A276057(n+5)/2`
-/

namespace A291740.P11954412306243518126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276057 (n + 5) : ℚ) / 2

end

end A291740.P11954412306243518126

/-! ## A291740.P3039398897039892489

`A273943(A276057(n+5))`
-/

namespace A291740.P3039398897039892489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A276057 (n + 5)).toNat

end

end A291740.P3039398897039892489

/-! ## A291740.P6123510131025669190

`xor(A276057(n+5)+1, A003188(A276057(n+5)+1))`
-/

namespace A291740.P6123510131025669190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A276057 (n + 5) + 1) (A003188 (A276057 (n + 5) + 1).toNat)

end

end A291740.P6123510131025669190

/-! ## A291740.P14290529389877597913

`A249122(A276057(n+5)+1)`
-/

namespace A291740.P14290529389877597913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A276057 (n + 5) + 1).toNat

end

end A291740.P14290529389877597913

/-! ## A291740.P15647203687722656666

`A038572(lcm(2, A276057(n+5)))`
-/

namespace A291740.P15647203687722656666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm 2 (A276057 (n + 5)))

end

end A291740.P15647203687722656666

/-!
# A291741: p-INVERT of (1,0,1,0,0,0,0,...), where p(S) = (1 - S)(1 + S^2).

The programs for A291741, there is no canonical definition to state claims against.
-/

/-! ## A291741.P12768629901189111634

`A002264(A107341(n+1)-A076341(n+1))`
-/

namespace A291741.P12768629901189111634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A107341 (n + 1) - A076341 (n + 1)).toNat

end

end A291741.P12768629901189111634

/-!
# A291742: Number of maximal independent vertex sets in the n-Fibonacci cube graph.

The programs for A291742, there is no canonical definition to state claims against.
-/

/-! ## A291742.P16066994963585019768

`or(2, A265536(C(n², 2)/6))`
-/

namespace A291742.P16066994963585019768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A265536 (SequenceMachineLib.roundAway ((Nat.choose (n ^ 2) 2 : ℚ) / 6)).toNat)

end

end A291742.P16066994963585019768

/-! ## A291742.P961899286447033325

`A321378(∑[n²+2]-2)+1+n`
-/

namespace A291742.P961899286447033325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321378 (∑ j ∈ Finset.range (n + 1), f1 j - 2) + 1 + (n : ℤ)

end

end A291742.P961899286447033325

/-!
# A291743: G.f. A(x) satisfies: A(x - 2*x*A(x)) = x + x*A(x).

The programs for A291743, there is no canonical definition to state claims against.
-/

/-! ## A291743.P706355505051420818

`A020703(Δ[n^n]-a(n-1)+1)` with `a(0)=1`
-/

namespace A291743.P706355505051420818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020703 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - a (n - 1) + 1).toNat

end

end A291743.P706355505051420818

/-!
# A291744: G.f. A(x) satisfies: A(x - x*A(x)) = x + 2*x*A(x).

The programs for A291744, there is no canonical definition to state claims against.
-/

/-! ## A291744.P16987780078878595644

`A275913(A277954(n))`
-/

namespace A291744.P16987780078878595644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275913 (A277954 n).toNat

end

end A291744.P16987780078878595644

/-!
# A291745: Nonprimes of the form 3*k + 1.

The programs for A291745, the canonical program `A291745.P12155943270432222460` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291745 has offset 1).

The definition of A291745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291745.P12155943270432222460

`record[A005451(3*n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A291745

/-- `record[A005451(3*n+1)]` -/
def P12155943270432222460.Spec : Prop :=
  ∀ n, P12155943270432222460.a n = A291745 (n + 1)

theorem P12155943270432222460.correct : P12155943270432222460.Spec := by
  intro n
  simp only [A291745, Nat.add_sub_cancel]

end A291745

/-! ## A291745.P2626610300131781802

`record[A191558(3*n+1)]`
-/

namespace A291745.P2626610300131781802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291745.P2626610300131781802

namespace A291745

/-- `record[A191558(3*n+1)]` -/
def P2626610300131781802.Spec : Prop :=
  ∀ n, P2626610300131781802.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P456605832673548737

`record[A288469(3*n+1)]`
-/

namespace A291745.P456605832673548737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291745.P456605832673548737

namespace A291745

/-- `record[A288469(3*n+1)]` -/
def P456605832673548737.Spec : Prop :=
  ∀ n, P456605832673548737.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P5987512559705855144

`3*A153309(n+1)+1`
-/

namespace A291745.P5987512559705855144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153309 (n + 1) + 1

end

end A291745.P5987512559705855144

namespace A291745

/-- `3*A153309(n+1)+1` -/
def P5987512559705855144.Spec : Prop :=
  ∀ n, P5987512559705855144.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P18431063996151179857

`3*A153184(n+1)-2`
-/

namespace A291745.P18431063996151179857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A153184 (n + 1) - 2

end

end A291745.P18431063996151179857

namespace A291745

/-- `3*A153184(n+1)-2` -/
def P18431063996151179857.Spec : Prop :=
  ∀ n, P18431063996151179857.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P11881042599179459978

`3*comp[A024892(n+1)]+1`
-/

namespace A291745.P11881042599179459978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A291745.P11881042599179459978

namespace A291745

/-- `3*comp[A024892(n+1)]+1` -/
def P11881042599179459978.Spec : Prop :=
  ∀ n, (P11881042599179459978.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P14080999661766308983

`∩[3*n+1, A018252(n+1)]`
-/

namespace A291745.P14080999661766308983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291745.P14080999661766308983

namespace A291745

/-- `∩[3*n+1, A018252(n+1)]` -/
def P14080999661766308983.Spec : Prop :=
  ∀ n, (P14080999661766308983.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P2036584004666235547

`comp[∪[ceil(3*n/2), A000040(n+1)]]`
-/

namespace A291745.P2036584004666235547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A291745.P2036584004666235547

namespace A291745

/-- `comp[∪[ceil(3*n/2), A000040(n+1)]]` -/
def P2036584004666235547.Spec : Prop :=
  ∀ n, (P2036584004666235547.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P11822322534172795033

`3*(lt[A014963(3*n+1), n+2]+1)-2`
-/

namespace A291745.P11822322534172795033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℤ) - 2

end

end A291745.P11822322534172795033

namespace A291745

/-- `3*(lt[A014963(3*n+1), n+2]+1)-2` -/
def P11822322534172795033.Spec : Prop :=
  ∀ n, P11822322534172795033.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P1926347604027658930

`3*(lt[A020639(2*n+1+n), n+2]+1)-2`
-/

namespace A291745.P1926347604027658930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℤ) - 2

end

end A291745.P1926347604027658930

namespace A291745

/-- `3*(lt[A020639(2*n+1+n), n+2]+1)-2` -/
def P1926347604027658930.Spec : Prop :=
  ∀ n, P1926347604027658930.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P4988800699773035385

`A016777(A153309(n+1))`
-/

namespace A291745.P4988800699773035385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A153309 (n + 1)).toNat

end

end A291745.P4988800699773035385

namespace A291745

/-- `A016777(A153309(n+1))` -/
def P4988800699773035385.Spec : Prop :=
  ∀ n, P4988800699773035385.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P5237113560710155896

`filter[A016777(n), A005171(#)]`
-/

namespace A291745.P5237113560710155896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A291745.P5237113560710155896

namespace A291745

/-- `filter[A016777(n), A005171(#)]` -/
def P5237113560710155896.Spec : Prop :=
  ∀ n, P5237113560710155896.a n = A291745 (n + 1)

end A291745

/-! ## A291745.P4674084913517572921

`eq[A055671(n), A057078(n)]`
-/

namespace A291745.P4674084913517572921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P4674084913517572921

namespace A291745

/-- `eq[A055671(n), A057078(n)]` -/
def P4674084913517572921.Spec : Prop :=
  ∀ n, (P4674084913517572921.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P12313973988349178239

`eq[A055672(n), A057078(n)]`
-/

namespace A291745.P12313973988349178239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P12313973988349178239

namespace A291745

/-- `eq[A055672(n), A057078(n)]` -/
def P12313973988349178239.Spec : Prop :=
  ∀ n, (P12313973988349178239.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P9460618472977496085

`eq[A055671(n), A089598(n)]`
-/

namespace A291745.P9460618472977496085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P9460618472977496085

namespace A291745

/-- `eq[A055671(n), A089598(n)]` -/
def P9460618472977496085.Spec : Prop :=
  ∀ n, (P9460618472977496085.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P8707870835505656433

`eq[A055671(n), A109265(n)]`
-/

namespace A291745.P8707870835505656433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P8707870835505656433

namespace A291745

/-- `eq[A055671(n), A109265(n)]` -/
def P8707870835505656433.Spec : Prop :=
  ∀ n, (P8707870835505656433.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P12280345378314479148

`eq[A055672(n), A109265(n)]`
-/

namespace A291745.P12280345378314479148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109265 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P12280345378314479148

namespace A291745

/-- `eq[A055672(n), A109265(n)]` -/
def P12280345378314479148.Spec : Prop :=
  ∀ n, (P12280345378314479148.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P15590515992283303638

`eq[A055671(n), A110568(n)]`
-/

namespace A291745.P15590515992283303638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P15590515992283303638

namespace A291745

/-- `eq[A055671(n), A110568(n)]` -/
def P15590515992283303638.Spec : Prop :=
  ∀ n, (P15590515992283303638.a n : ℤ) = A291745 (n + 1)

end A291745

/-! ## A291745.P7686371590048591371

`eq[A055672(n), A110568(n)]`
-/

namespace A291745.P7686371590048591371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110568 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291745.P7686371590048591371

namespace A291745

/-- `eq[A055672(n), A110568(n)]` -/
def P7686371590048591371.Spec : Prop :=
  ∀ n, (P7686371590048591371.a n : ℤ) = A291745 (n + 1)

end A291745

/-!
# A291746: Nonprimes of the form 5*k + 1.

The programs for A291746, there is no canonical definition to state claims against.
-/

/-! ## A291746.P7251148832783337752

`record[A005451(5*n+1)]`
-/

namespace A291746.P7251148832783337752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291746.P7251148832783337752

/-! ## A291746.P17367157013297849975

`record[A191558(5*n+1)]`
-/

namespace A291746.P17367157013297849975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291746.P17367157013297849975

/-! ## A291746.P14956215210333239835

`record[A288469(5*n+1)]`
-/

namespace A291746.P14956215210333239835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291746.P14956215210333239835

/-! ## A291746.P2564193347692091073

`record[A063928(10*n+2)]`
-/

namespace A291746.P2564193347692091073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (10 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291746.P2564193347692091073

/-! ## A291746.P4288539050196319951

`5*A153329(n+1)+1`
-/

namespace A291746.P4288539050196319951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A153329 (n + 1) + 1

end

end A291746.P4288539050196319951

/-! ## A291746.P11151168221144821463

`∩[5*n+1, A018252(n+1)]`
-/

namespace A291746.P11151168221144821463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A291746.P11151168221144821463

/-! ## A291746.P14989229406284423096

`5*lt[A020639(5*n+1), n+2]+1`
-/

namespace A291746.P14989229406284423096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (5 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291746.P14989229406284423096

/-! ## A291746.P9956048257985962643

`A016861(A153329(n+1))`
-/

namespace A291746.P9956048257985962643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (A153329 (n + 1)).toNat

end

end A291746.P9956048257985962643

/-! ## A291746.P3986332306800490202

`filter[A016861(n), A005171(#)]`
-/

namespace A291746.P3986332306800490202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A291746.P3986332306800490202

/-! ## A291746.P12408658588472780277

`eq[A055671(n), A152856(n)]`
-/

namespace A291746.P12408658588472780277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152856 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A291746.P12408658588472780277

/-!
# A291747: Nonprimes of the form 7*k + 1.

The programs for A291747, there is no canonical definition to state claims against.
-/

/-! ## A291747.P12856705998075323354

`record[A135684(7*n+1)]`
-/

namespace A291747.P12856705998075323354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291747.P12856705998075323354

/-! ## A291747.P15578696231842293608

`record[A191558(7*n+1)]`
-/

namespace A291747.P15578696231842293608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291747.P15578696231842293608

/-! ## A291747.P10227928574550703920

`record[A288469(7*n+1)]`
-/

namespace A291747.P10227928574550703920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (7 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291747.P10227928574550703920

/-! ## A291747.P6413694622428699096

`record[A063928(7*n+2)]`
-/

namespace A291747.P6413694622428699096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (7 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A291747.P6413694622428699096

/-! ## A291747.P16764332990425395014

`∩[A018252(n+1), 7*n+1]`
-/

namespace A291747.P16764332990425395014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A291747.P16764332990425395014

/-! ## A291747.P15880571132645825154

`filter[A016993(n), A005171(#)]`
-/

namespace A291747.P15880571132645825154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A291747.P15880571132645825154

/-! ## A291747.P5402313711915715094

`filter[A016993(n), A292438(#)]`
-/

namespace A291747.P5402313711915715094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A291747.P5402313711915715094

/-! ## A291747.P9143804341845077227

`filter[A026474(n+1), A292438(#)]`
-/

namespace A291747.P9143804341845077227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A291747.P9143804341845077227

/-! ## A291747.P18263189625891835958

`filter[A304500(3*n), A005171(#)]`
-/

namespace A291747.P18263189625891835958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A291747.P18263189625891835958

/-! ## A291747.P1959718376724157663

`filter[A304500(3*n), A292438(#)]`
-/

namespace A291747.P1959718376724157663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304500 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A291747.P1959718376724157663

/-!
# A291748: Expansion of Product_{k>=1} (1 + x^(2*k^2 - 1)).

The programs for A291748, there is no canonical definition to state claims against.
-/

/-! ## A291748.P5814642034453807589

`A121262(∑[A120685(n)²])`
-/

namespace A291748.P5814642034453807589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120685 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291748.P5814642034453807589

/-! ## A291748.P9433171375585467871

`and(A248105(A008720(5*n+9)), A267513(3*(n+6)))`
-/

namespace A291748.P9433171375585467871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248105 (A008720 (5 * n + 9)).toNat) (A267513 (3 * (n + 6)))

end

end A291748.P9433171375585467871

/-! ## A291748.P5926734362295839552

`abs(Δ[A079998(A117385(2*(n+2)))])`
-/

namespace A291748.P5926734362295839552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A117385 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A291748.P5926734362295839552

/-! ## A291748.P3196183924382952128

`A058342(xor(A006670(n+1), A108363(n)))`
-/

namespace A291748.P3196183924382952128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058342 (Int.xor (A006670 (n + 1)) (A108363 n)).toNat

end

end A291748.P3196183924382952128

/-! ## A291748.P7352368964363493146

`A320006(∑[A087475(or(n, 2*n))])`
-/

namespace A291748.P7352368964363493146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 (Nat.lor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291748.P7352368964363493146

/-!
# A291749: Expansion of Product_{k>=1} (1 + x^(2*k^2 + 1)).

The programs for A291749, there is no canonical definition to state claims against.
-/

/-! ## A291749.P1646715949444468387

`A097325(Δ[A036605(A156301(n))])`
-/

namespace A291749.P1646715949444468387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036605 (A156301 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (f1 (n + 1) - f1 n).toNat

end

end A291749.P1646715949444468387

/-! ## A291749.P6856812589977686900

`A121262(∑[A325171(2*(n+1))-A121262(n)])`
-/

namespace A291749.P6856812589977686900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325171 (2 * (n + 1)) - A121262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A291749.P6856812589977686900

/-! ## A291749.P3669132780713002563

`A000035(∪[2^(n+3)-A163695(n+3), A027383(n)])`
-/

namespace A291749.P3669132780713002563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A163695 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A291749.P3669132780713002563

/-! ## A291749.P3971032089455908785

`and(A024692(n+1), A128851(n))`
-/

namespace A291749.P3971032089455908785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024692 (n + 1)) (A128851 n)

end

end A291749.P3971032089455908785

/-! ## A291749.P7128312494501477402

`and(A024692(n+1), A108859(n+1))`
-/

namespace A291749.P7128312494501477402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024692 (n + 1)) (A108859 (n + 1))

end

end A291749.P7128312494501477402

/-!
# A291750: Compound filter: a(n) = P(A003557(n), A048250(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A291750, the canonical program `A291750.P5209050474501545968` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291750 has offset 1).

The definition of A291750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291750.P5209050474501545968

`1/2*(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A291750

/-- `1/2*(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))` -/
def P5209050474501545968.Spec : Prop :=
  ∀ n, P5209050474501545968.a n = (A291750 (n + 1) : ℚ)

end A291750

/-! ## A291750.P5486515860402833846

`(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))/2`
-/

namespace A291750.P5486515860402833846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A003557 (n + 1) + A048250 (n + 1)) ^ 2 - A003557 (n + 1) - 3 * A048250 (n + 1) : ℚ) / 2

end

end A291750.P5486515860402833846

namespace A291750

/-- `(2+(A003557(n+1)+A048250(n+1))²-A003557(n+1)-3*A048250(n+1))/2` -/
def P5486515860402833846.Spec : Prop :=
  ∀ n, P5486515860402833846.a n = (A291750 (n + 1) : ℚ)

end A291750

/-!
# A291751: Lexicographically earliest such sequence a that a(i) = a(j) => A003557(i) = A003557(j) and A048250(i) = A048250(j), for all i, j.

The programs for A291751, there is no canonical definition to state claims against.
-/

/-! ## A291751.P10921468771505049036

`A002260(A038722(A291752(n+1)))`
-/

namespace A291751.P10921468771505049036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (A291752 (n + 1)).toNat).toNat

end

end A291751.P10921468771505049036

/-! ## A291751.P8843002287492941030

`A004736(A291752(n+1))`
-/

namespace A291751.P8843002287492941030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A291752 (n + 1)).toNat

end

end A291751.P8843002287492941030

/-! ## A291751.P7867283533998033972

`A193592(A291752(n+1)-1)`
-/

namespace A291751.P7867283533998033972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A291752 (n + 1) - 1).toNat

end

end A291751.P7867283533998033972

/-! ## A291751.P13948929591392359626

`A193739(A291752(n+1)-1)`
-/

namespace A291751.P13948929591392359626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A291752 (n + 1) - 1).toNat

end

end A291751.P13948929591392359626

/-! ## A291751.P15999613785856046568

`A025581(A291752(n+1)-1)+1`
-/

namespace A291751.P15999613785856046568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A291752 (n + 1) - 1).toNat + 1

end

end A291751.P15999613785856046568

/-! ## A291751.P3171685384848102112

`A144257(A291752(n+1))+A057427(n)`
-/

namespace A291751.P3171685384848102112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (A291752 (n + 1)).toNat + A057427 n

end

end A291751.P3171685384848102112

/-! ## A291751.P15351624705035785767

`A003991(A291752(n+1))/A101296(n+1)`
-/

namespace A291751.P15351624705035785767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A291752 (n + 1)).toNat : ℚ) / (A101296 (n + 1) : ℚ)

end

end A291751.P15351624705035785767

/-! ## A291751.P13292649883138043526

`A003991(A291752(n+1))/(A320110(2*(n+1))-1)`
-/

namespace A291751.P13292649883138043526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A291752 (n + 1)).toNat : ℚ) / (A320110 (2 * (n + 1)) - 1 : ℚ)

end

end A291751.P13292649883138043526

/-! ## A291751.P10164373561716701496

`A003991(A291752(n+1))/A002260(A286467(n+1))`
-/

namespace A291751.P10164373561716701496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A291752 (n + 1)).toNat : ℚ) / (A002260 (A286467 (n + 1)).toNat : ℚ)

end

end A291751.P10164373561716701496

/-! ## A291751.P5062874075341608602

`A003991(A291752(n+1))/A144328(A286454(n+1)+1)`
-/

namespace A291751.P5062874075341608602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A291752 (n + 1)).toNat : ℚ) / (A144328 (A286454 (n + 1) + 1).toNat : ℚ)

end

end A291751.P5062874075341608602

/-! ## A291751.P11379002272411706731

`A003991(A291752(n+1))/A329901(A238745(n+1))`
-/

namespace A291751.P11379002272411706731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A291752 (n + 1)).toNat : ℚ) / (A329901 (A238745 (n + 1)).toNat : ℚ)

end

end A291751.P11379002272411706731

/-!
# A291752: Compound filter: a(n) = P(A101296(n), A291751(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A291752, there is no canonical definition to state claims against.
-/

/-! ## A291752.P4617896534443637477

`1/2*(2+(A101296(n+1)+A291751(n+1))²-A101296(n+1)-3*A291751(n+1))`
-/

namespace A291752.P4617896534443637477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A101296 (n + 1) + A291751 (n + 1)) ^ 2 - A101296 (n + 1) - 3 * A291751 (n + 1) : ℚ)

end

end A291752.P4617896534443637477

/-!
# A291753: a(n) is the length of stage n in A137843.

The programs for A291753, there is no canonical definition to state claims against.
-/

/-! ## A291753.P5911248150126350805

`2*a(n-1)+A137843(n)%2` with `a(0)=1`
-/

namespace A291753.P5911248150126350805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + Int.tmod (A137843 n) 2

end

end A291753.P5911248150126350805

/-! ## A291753.P12433250215145011476

`A112306(n)+A044941(A020707(n))`
-/

namespace A291753.P12433250215145011476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112306 n + A044941 (A020707 n).toNat

end

end A291753.P12433250215145011476

/-! ## A291753.P454802725454398110

`A112306(n)+A044941(A146541(n))`
-/

namespace A291753.P454802725454398110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112306 n + A044941 (A146541 n).toNat

end

end A291753.P454802725454398110

/-! ## A291753.P18367819430885566989

`A185036(A048311(n))+A112306(n)`
-/

namespace A291753.P18367819430885566989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A048311 n).toNat + A112306 n

end

end A291753.P18367819430885566989

/-! ## A291753.P13971811364920903389

`or(A068527(A011782(n)), A112306(n))`
-/

namespace A291753.P13971811364920903389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068527 (A011782 n).toNat) (A112306 n)

end

end A291753.P13971811364920903389

/-!
# A291754: a(n) is the length of stage n in A137844.

The programs for A291754, there is no canonical definition to state claims against.
-/

/-! ## A291754.P12489071925652393915

`2*a(n-1)+A137844(n)%2` with `a(0)=1`
-/

namespace A291754.P12489071925652393915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + Int.tmod (A137844 n) 2

end

end A291754.P12489071925652393915

/-! ## A291754.P14953727482431823513

`or(2*a(n-1), A131719(A110519(n)))` with `a(0)=1`
-/

namespace A291754.P14953727482431823513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A131719 (A110519 n).toNat)

end

end A291754.P14953727482431823513

/-! ## A291754.P2664493061188796814

`or(2*a(n-1), A120966(A094638(n+1)))` with `a(0)=1`
-/

namespace A291754.P2664493061188796814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A120966 (A094638 (n + 1)).toNat)

end

end A291754.P2664493061188796814

/-! ## A291754.P8753085488464448545

`2*a(n-1)-A188470(n+1)/A008683(A075058(n))` with `a(0)=1`
-/

namespace A291754.P8753085488464448545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (A188470 (n + 1) : ℚ) / (A008683 (A075058 n).toNat : ℚ)

end

end A291754.P8753085488464448545

/-! ## A291754.P7428643092052277695

`or(A004396(A118255(n+1)), A118255(n+1))`
-/

namespace A291754.P7428643092052277695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004396 (A118255 (n + 1)).toNat) (A118255 (n + 1))

end

end A291754.P7428643092052277695

/-!
# A291755: Compound filter (multiplicative order of 2 mod 2n+1 & eulerphi(2n+1)): a(n) = P(A002326(n), A037225(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A291755, there is no canonical definition to state claims against.
-/

/-! ## A291755.P9479204675197736389

`1/2*(2+(A002326(n)+A000010(2*n+1))²-A002326(n)-3*A000010(2*n+1))`
-/

namespace A291755.P9479204675197736389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A002326 n + A000010 (2 * n + 1)) ^ 2 - A002326 n - 3 * A000010 (2 * n + 1) : ℚ)

end

end A291755.P9479204675197736389

/-!
# A291756: Compound filter: a(n) = P(A003557(n), A000010(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A291756, the canonical program `A291756.P7501113078620905802` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291756 has offset 1).

The definition of A291756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291756.P7501113078620905802

`1/2*(2+(A003557(n+1)+A000010(n+1))²-A003557(n+1)-3*A000010(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A291756

/-- `1/2*(2+(A003557(n+1)+A000010(n+1))²-A003557(n+1)-3*A000010(n+1))` -/
def P7501113078620905802.Spec : Prop :=
  ∀ n, P7501113078620905802.a n = (A291756 (n + 1) : ℚ)

end A291756

/-!
# A291757: a(n) = (1/2)*(2 + ((A003557(n)+A046523(n))^2) - A003557(n) - 3*A046523(n)).

The programs for A291757, the canonical program `A291757.P8333880744549637240` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291757 has offset 1).

The definition of A291757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291757.P8333880744549637240

`1/2*(2+(A003557(n+1)+A046523(n+1))²-A003557(n+1)-3*A046523(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A291757

/-- `1/2*(2+(A003557(n+1)+A046523(n+1))²-A003557(n+1)-3*A046523(n+1))` -/
def P8333880744549637240.Spec : Prop :=
  ∀ n, P8333880744549637240.a n = (A291757 (n + 1) : ℚ)

end A291757

/-!
# A291758: Compound filter (prime signature of n & sum of squarefree divisors of n): a(n) = P(A046523(n), A048250(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A291758, the canonical program `A291758.P10546400910474517383` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291758 has offset 1).

The definition of A291758 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291758.P10546400910474517383

`1/2*(2+(A046523(n+1)+A048250(n+1))²-A046523(n+1)-3*A048250(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A291758

/-- `1/2*(2+(A046523(n+1)+A048250(n+1))²-A046523(n+1)-3*A048250(n+1))` -/
def P10546400910474517383.Spec : Prop :=
  ∀ n, P10546400910474517383.a n = (A291758 (n + 1) : ℚ)

end A291758

/-! ## A291758.P17922414326885037906

`A286360(n+1)%A007947(A307888(n+1))`
-/

namespace A291758.P17922414326885037906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286360 (n + 1)) (A007947 (A307888 (n + 1)).toNat)

end

end A291758.P17922414326885037906

namespace A291758

/-- `A286360(n+1)%A007947(A307888(n+1))` -/
def P17922414326885037906.Spec : Prop :=
  ∀ n, P17922414326885037906.a n = A291758 (n + 1)

end A291758

/-!
# A291759: Binary encoding of 2-digits in ternary representation of A048673(n).

The programs for A291759, the canonical program `A291759.P1154487178848887037` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291759 has offset 1).

The definition of A291759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291759.P1154487178848887037

`A289814(A048673(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A291759

/-- `A289814(A048673(n+1))` -/
def P1154487178848887037.Spec : Prop :=
  ∀ n, P1154487178848887037.a n = A291759 (n + 1)

theorem P1154487178848887037.correct : P1154487178848887037.Spec := by
  intro n
  simp only [A291759, Nat.add_sub_cancel]

end A291759

/-! ## A291759.P7568983994338660211

`A289814(A108228(n+1)+1)`
-/

namespace A291759.P7568983994338660211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A108228 (n + 1) + 1).toNat

end

end A291759.P7568983994338660211

namespace A291759

/-- `A289814(A108228(n+1)+1)` -/
def P7568983994338660211.Spec : Prop :=
  ∀ n, P7568983994338660211.a n = A291759 (n + 1)

end A291759

/-! ## A291759.P4908824802083678813

`A289814(A243501(n+1)/2)`
-/

namespace A291759.P4908824802083678813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A291759.P4908824802083678813

namespace A291759

/-- `A289814(A243501(n+1)/2)` -/
def P4908824802083678813.Spec : Prop :=
  ∀ n, P4908824802083678813.a n = A291759 (n + 1)

end A291759

/-! ## A291759.P4792679742647588325

`A289814(ceil(A003961(n+1)/2))`
-/

namespace A291759.P4792679742647588325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat

end

end A291759.P4792679742647588325

namespace A291759

/-- `A289814(ceil(A003961(n+1)/2))` -/
def P4792679742647588325.Spec : Prop :=
  ∀ n, P4792679742647588325.a n = A291759 (n + 1)

end A291759

/-! ## A291759.P7072280717334095905

`A289814(round(A003961(n+1)/2))`
-/

namespace A291759.P7072280717334095905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A291759.P7072280717334095905

namespace A291759

/-- `A289814(round(A003961(n+1)/2))` -/
def P7072280717334095905.Spec : Prop :=
  ∀ n, P7072280717334095905.a n = A291759 (n + 1)

end A291759

/-! ## A291759.P10704239804773175355

`A289814(round(A249734(n+1)/6))`
-/

namespace A291759.P10704239804773175355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 6)).toNat

end

end A291759.P10704239804773175355

namespace A291759

/-- `A289814(round(A249734(n+1)/6))` -/
def P10704239804773175355.Spec : Prop :=
  ∀ n, P10704239804773175355.a n = A291759 (n + 1)

end A291759

/-! ## A291759.P10503755587661281092

`A289814((A003961(n+1)+1)/2)`
-/

namespace A291759.P10503755587661281092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A291759.P10503755587661281092

namespace A291759

/-- `A289814((A003961(n+1)+1)/2)` -/
def P10503755587661281092.Spec : Prop :=
  ∀ n, P10503755587661281092.a n = A291759 (n + 1)

end A291759

/-! ## A291759.P14441263431899138292

`A291760(A254115(n+1))`
-/

namespace A291759.P14441263431899138292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291760 (A254115 (n + 1)).toNat

end

end A291759.P14441263431899138292

namespace A291759

/-- `A291760(A254115(n+1))` -/
def P14441263431899138292.Spec : Prop :=
  ∀ n, P14441263431899138292.a n = A291759 (n + 1)

end A291759

/-!
# A291760: Binary encoding of 2-digits in ternary representation of A254103(n).

The programs for A291760, there is no canonical definition to state claims against.
-/

/-! ## A291760.P4997886100208065692

`A289814(A254103(n))`
-/

namespace A291760.P4997886100208065692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A254103 n).toNat

end

end A291760.P4997886100208065692

/-! ## A291760.P17055164033281459936

`A289831(A254103(n))-A304760(n)`
-/

namespace A291760.P17055164033281459936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A254103 n).toNat - A304760 n

end

end A291760.P17055164033281459936

/-! ## A291760.P17318406020334925997

`∑{e}[A000045(A038754(A304746(n))), #]`
-/

namespace A291760.P17318406020334925997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A038754 (A304746 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A291760.P17318406020334925997

/-! ## A291760.P1182273439983863005

`∑{e}[A345342(A304746(n)), #]`
-/

namespace A291760.P1182273439983863005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345342 (A304746 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A291760.P1182273439983863005

/-! ## A291760.P16175570452181936203

`(3*n+1)%A037445(A094980(n))`
-/

namespace A291760.P16175570452181936203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n + 1 : ℤ) (A037445 (A094980 n).toNat)

end

end A291760.P16175570452181936203

/-!
# A291761: Restricted growth sequence transform of ((-1)^n)*A046523(n); filter combining the parity and the prime signature of n.

The programs for A291761, there is no canonical definition to state claims against.
-/

/-! ## A291761.P15848292906720320739

`A305891(A089247(n+1)%A319323(n+1))`
-/

namespace A291761.P15848292906720320739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305891 (Int.tmod (A089247 (n + 1)) (A319323 (n + 1))).toNat

end

end A291761.P15848292906720320739

/-! ## A291761.P11031105790973130458

`A373250(A097272(n+1)%A279102(3*n+2))`
-/

namespace A291761.P11031105790973130458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373250 (Int.tmod (A097272 (n + 1)) (A279102 (3 * n + 2))).toNat

end

end A291761.P11031105790973130458

/-! ## A291761.P9295721835830563775

`∏{e}[record[and(-3, 2^n)], A319337(#)]`
-/

namespace A291761.P9295721835830563775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A319337 (Nat.factorization (f1 n).natAbs p)

end

end A291761.P9295721835830563775

/-! ## A291761.P2826531291079683351

`∏{e}[Δ[A126646(n)], A319337(#)]`
-/

namespace A291761.P2826531291079683351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A319337 (Nat.factorization (f1 n).natAbs p)

end

end A291761.P2826531291079683351

/-! ## A291761.P7291895795788486245

`A001222(3^A319337(n+1))`
-/

namespace A291761.P7291895795788486245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A319337 (n + 1) : ℤ))).toNat

end

end A291761.P7291895795788486245

/-!
# A291763: Binary encoding of 2-digits in ternary representation of A245612(n).

The programs for A291763, the canonical program `A291763.P8562917103276515339` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291763 has offset 0).

The definition of A291763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A245612, A289814, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291763.P8562917103276515339

`A289814(A245612(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A291763

/-- `A289814(A245612(n))` -/
def P8562917103276515339.Spec : Prop :=
  ∀ n, P8562917103276515339.a n = A291763 n

theorem P8562917103276515339.correct : P8562917103276515339.Spec := by
  intro n
  simp only [A291763]

end A291763

/-! ## A291763.P13180590381165670252

`A291759(A163511(n))`
-/

namespace A291763.P13180590381165670252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291759 (A163511 n).toNat

end

end A291763.P13180590381165670252

namespace A291763

/-- `A291759(A163511(n))` -/
def P13180590381165670252.Spec : Prop :=
  ∀ n, P13180590381165670252.a n = A291763 n

end A291763

/-! ## A291763.P17735105949086854476

`A291759(A364258(n)+n)`
-/

namespace A291763.P17735105949086854476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291759 (A364258 n + (n : ℤ)).toNat

end

end A291763.P17735105949086854476

namespace A291763

/-- `A291759(A364258(n)+n)` -/
def P17735105949086854476.Spec : Prop :=
  ∀ n, P17735105949086854476.a n = A291763 n

theorem P17735105949086854476.correct : P17735105949086854476.Spec := by
  intro n
  simp only [A291763, Nat.add_sub_cancel, A291763.P17735105949086854476.a, A291763.P8562917103276515339.a, A245612, A245612.P9111246450174136386.a, A289814, A289814.P11371932108795153936.a, A291759, A291759.P1154487178848887037.a, A364258, A364258.P6786196179042320049.a, A048673, A048673.P16342935298832955059.a, A163511, A163511.P5635496813650871695.a, A045965, A045965.P3274931299755745232.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A003961, A003961.P5996473960037614004.a, A025480, A025480.P15873863116418380882.a, A145341, A145341.P17834554394848515737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291763

/-! ## A291763.P7214667562777167507

`A289814(ceil(A163511(Δ[n²])/2))`
-/

namespace A291763.P7214667562777167507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 ⌈(A163511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉.toNat

end

end A291763.P7214667562777167507

namespace A291763

/-- `A289814(ceil(A163511(Δ[n²])/2))` -/
def P7214667562777167507.Spec : Prop :=
  ∀ n, P7214667562777167507.a n = A291763 n

end A291763

/-! ## A291763.P16049704527654965513

`A289814(round(A163511(Δ[n²])/2))`
-/

namespace A291763.P16049704527654965513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A163511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A291763.P16049704527654965513

namespace A291763

/-- `A289814(round(A163511(Δ[n²])/2))` -/
def P16049704527654965513.Spec : Prop :=
  ∀ n, P16049704527654965513.a n = A291763 n

end A291763

/-! ## A291763.P15674601997407865970

`A289814((A163511(2*n+1)+A057427(n))/2)`
-/

namespace A291763.P15674601997407865970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.roundAway ((A163511 (2 * n + 1) + A057427 n : ℚ) / 2)).toNat

end

end A291763.P15674601997407865970

namespace A291763

/-- `A289814((A163511(2*n+1)+A057427(n))/2)` -/
def P15674601997407865970.Spec : Prop :=
  ∀ n, P15674601997407865970.a n = A291763 n

end A291763

/-! ## A291763.P638486481277374795

`A328749(A245612(n))+A305295(n)`
-/

namespace A291763.P638486481277374795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A245612 n).toNat + A305295 n

end

end A291763.P638486481277374795

namespace A291763

/-- `A328749(A245612(n))+A305295(n)` -/
def P638486481277374795.Spec : Prop :=
  ∀ n, P638486481277374795.a n = A291763 n

theorem P638486481277374795.correct : P638486481277374795.Spec := by
  intro n
  simp only [A291763, Nat.add_sub_cancel, A291763.P638486481277374795.a, A291763.P8562917103276515339.a, A245612, A245612.P9111246450174136386.a, A289814, A289814.P11371932108795153936.a, A305295, A305295.P5022715488973413442.a, A328749, A328749.P17846108739945119774.a, A048673, A048673.P16342935298832955059.a, A163511, A163511.P5635496813650871695.a, A289813, A289813.P9011554254818249259.a, A004488, A004488.P15486159278781190577.a, A045965, A045965.P3274931299755745232.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A003961, A003961.P5996473960037614004.a, A025480, A025480.P15873863116418380882.a, A145341, A145341.P17834554394848515737.a, A168237, A168237.P12346762420407185560.a, A300222, A300222.P16406266268068730929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291763

/-!
# A291764: Restricted growth sequence transform of A291784, (psi(n) + phi(n))/2.

The programs for A291764, there is no canonical definition to state claims against.
-/

/-! ## A291764.P12879972237134168277

`∑[A284490(A318795(A135587(2*(n+2))))]`
-/

namespace A291764.P12879972237134168277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284490 (A318795 (A135587 (2 * (n + 2))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291764.P12879972237134168277

/-! ## A291764.P13857551698327037157

`∑[A005713(A023538(n+1)-n)]`
-/

namespace A291764.P13857551698327037157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005713 (A023538 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291764.P13857551698327037157

/-! ## A291764.P14558168676703006565

`a(n-1)+A169585(n)+A005713(A023538(n+1)-n)` with `a(0)=1, a(1)=2`
-/

namespace A291764.P14558168676703006565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (A169585 n + A005713 (A023538 (n + 1) - (n : ℤ)).toNat)

end

end A291764.P14558168676703006565

/-! ## A291764.P15395509717877004904

`a(n-1)+A005713(A023538(n+1)-n)*A019430(2*n)` with `a(0)=1`
-/

namespace A291764.P15395509717877004904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A005713 (A023538 (n + 1) - (n : ℤ)).toNat * A019430 (2 * n)

end

end A291764.P15395509717877004904

/-! ## A291764.P14039776898212058441

`∑[A326029(3*n+10)%2]`
-/

namespace A291764.P14039776898212058441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326029 (3 * n + 10)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291764.P14039776898212058441

/-!
# A291765: Compound filter (sum of proper divisors & prime signature): a(n) = P(A001065(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A291765, the canonical program `A291765.P1288831403050932489` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291765 has offset 1).

The definition of A291765 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046523, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291765.P1288831403050932489

`1/2*(2+(A001065(n+1)+A046523(n+1))²-A001065(n+1)-3*A046523(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A291765

/-- `1/2*(2+(A001065(n+1)+A046523(n+1))²-A001065(n+1)-3*A046523(n+1))` -/
def P1288831403050932489.Spec : Prop :=
  ∀ n, P1288831403050932489.a n = (A291765 (n + 1) : ℚ)

end A291765

/-! ## A291765.P2917079938068454566

`(2+(A001065(n+1)+A046523(n+1))²-A001065(n+1)-3*A046523(n+1))/2`
-/

namespace A291765.P2917079938068454566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A001065 (n + 1) + A046523 (n + 1)) ^ 2 - A001065 (n + 1) - 3 * A046523 (n + 1) : ℚ) / 2

end

end A291765.P2917079938068454566

namespace A291765

/-- `(2+(A001065(n+1)+A046523(n+1))²-A001065(n+1)-3*A046523(n+1))/2` -/
def P2917079938068454566.Spec : Prop :=
  ∀ n, P2917079938068454566.a n = (A291765 (n + 1) : ℚ)

end A291765

/-!
# A291767: Odd bisection of A291761.

The programs for A291767, there is no canonical definition to state claims against.
-/

/-! ## A291767.P11291608403860553677

`A291761(2*n+1)`
-/

namespace A291767.P11291608403860553677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291761 (2 * n + 1)

end

end A291767.P11291608403860553677

/-! ## A291767.P1831636645624681013

`A291761(n+n+1)+2-4/2`
-/

namespace A291767.P1831636645624681013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291761 (n + n + 1) : ℚ) + (2 - (4 : ℚ) / 2)

end

end A291767.P1831636645624681013

/-! ## A291767.P16130281944661048272

`A000027(A291761(Δ[n²]))`
-/

namespace A291767.P16130281944661048272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A291761 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A291767.P16130281944661048272

/-! ## A291767.P547984684991613280

`A291761(A005408(n))%A000124(n+1)`
-/

namespace A291767.P547984684991613280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291761 (A005408 n).toNat) (A000124 (n + 1))

end

end A291767.P547984684991613280

/-! ## A291767.P7013018632644634563

`A361430(A335850(A360908((2*n+1)²)))`
-/

namespace A291767.P7013018632644634563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A335850 (A360908 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A291767.P7013018632644634563

/-!
# A291768: Even bisection of A291761.

The programs for A291768, there is no canonical definition to state claims against.
-/

/-! ## A291768.P14026487970725055413

`A291761(2*(n+1))`
-/

namespace A291768.P14026487970725055413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291761 (2 * (n + 1))

end

end A291768.P14026487970725055413

/-! ## A291768.P11191346615216160303

`A291761((n+1)/log2(sqrt(2)))+2-4/2`
-/

namespace A291768.P11191346615216160303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291761 (SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.logb 2 (Real.sqrt (2 : ℝ)))).toNat : ℚ) + (2 - (4 : ℚ) / 2)

end

end A291768.P11191346615216160303

/-! ## A291768.P7193249743254479813

`A067004(A001248(A291761(n+2+n)))`
-/

namespace A291768.P7193249743254479813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067004 (A001248 (A291761 (n + 2 + n)).toNat).toNat

end

end A291768.P7193249743254479813

/-!
# A291769: Restricted growth sequence transform of A292249; filter combining multiplicative order of 2 mod 2n+1 & prime signature of 2n+1 (A002326 & A278223).

The programs for A291769, there is no canonical definition to state claims against.
-/

/-! ## A291769.P5842984211172687670

`A336934(Δ[n²])`
-/

namespace A291769.P5842984211172687670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336934 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A291769.P5842984211172687670

/-! ## A291769.P16024105891440469826

`xor(1, xor(1, A336934(2*n+1)))`
-/

namespace A291769.P16024105891440469826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A336934 (2 * n + 1)))

end

end A291769.P16024105891440469826

/-! ## A291769.P12733119968444264072

`A000027(A336934(2*n+1))`
-/

namespace A291769.P12733119968444264072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A336934 (2 * n + 1)).toNat

end

end A291769.P12733119968444264072

/-! ## A291769.P4173271968784570589

`A336934(2*n+1)%A014206(n)`
-/

namespace A291769.P4173271968784570589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336934 (2 * n + 1)) (A014206 n)

end

end A291769.P4173271968784570589

/-! ## A291769.P13173760438884520675

`A034947(n+1)²*A336934(2*n+1)`
-/

namespace A291769.P13173760438884520675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) ^ 2 * A336934 (2 * n + 1)

end

end A291769.P13173760438884520675

/-! ## A291769.P10371647248689998304

`A336934(A005408(n))%A028911(n)`
-/

namespace A291769.P10371647248689998304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336934 (A005408 n).toNat) (A028911 n)

end

end A291769.P10371647248689998304

/-! ## A291769.P2141437660586454125

`gcd(A000038(n), A336934(A103517(2*n)))`
-/

namespace A291769.P2141437660586454125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A336934 (A103517 (2 * n)).toNat)

end

end A291769.P2141437660586454125

/-! ## A291769.P8988457015650026153

`or(A000007(n), A336934(A103517(2*n)))`
-/

namespace A291769.P8988457015650026153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A336934 (A103517 (2 * n)).toNat)

end

end A291769.P8988457015650026153

/-! ## A291769.P3453752614045560473

`A336934(A103517(2*n))^ceil(n/A000041(n))`
-/

namespace A291769.P3453752614045560473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336934 (A103517 (2 * n)).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A291769.P3453752614045560473

/-! ## A291769.P14465315679415276165

`and(A126646(n), A336934(A005408(n)))`
-/

namespace A291769.P14465315679415276165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n) (A336934 (A005408 n).toNat)

end

end A291769.P14465315679415276165

/-! ## A291769.P1693955909692765161

`A001221(A054809(n+1))*A336934(A103517(2*n))`
-/

namespace A291769.P1693955909692765161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A054809 (n + 1)).toNat * A336934 (A103517 (2 * n)).toNat

end

end A291769.P1693955909692765161

/-!
# A291770: A binary encoding of the zeros in ternary representation of n.

The programs for A291770, the canonical program `A291770.P14763637493214319991` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291770 has offset 1).

The definition of A291770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291770.P14763637493214319991

`A035327(A289831(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A291770

/-- `A035327(A289831(n+1))` -/
def P14763637493214319991.Spec : Prop :=
  ∀ n, P14763637493214319991.a n = A291770 (n + 1)

theorem P14763637493214319991.correct : P14763637493214319991.Spec := by
  intro n
  simp only [A291770, Nat.add_sub_cancel]

end A291770

/-! ## A291770.P12103403022201845166

`A289814(A274601(n+1)-1)`
-/

namespace A291770.P12103403022201845166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A274601 (n + 1) - 1).toNat

end

end A291770.P12103403022201845166

namespace A291770

/-- `A289814(A274601(n+1)-1)` -/
def P12103403022201845166.Spec : Prop :=
  ∀ n, P12103403022201845166.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P9865273988154020251

`A289814(A274601(n+2))`
-/

namespace A291770.P9865273988154020251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A274601 (n + 2)).toNat

end

end A291770.P9865273988154020251

namespace A291770

/-- `A289814(A274601(n+2))` -/
def P9865273988154020251.Spec : Prop :=
  ∀ n, P9865273988154020251.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P6220440470680936558

`A289814(A338245(A338246(n+2)))`
-/

namespace A291770.P6220440470680936558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A338245 (A338246 (n + 2)).toNat).toNat

end

end A291770.P6220440470680936558

namespace A291770

/-- `A289814(A338245(A338246(n+2)))` -/
def P6220440470680936558.Spec : Prop :=
  ∀ n, P6220440470680936558.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P6225879378466930090

`A289814(A338246(A338247(n+2)))`
-/

namespace A291770.P6225879378466930090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A338246 (A338247 (n + 2)).toNat).toNat

end

end A291770.P6225879378466930090

namespace A291770

/-- `A289814(A338246(A338247(n+2)))` -/
def P6225879378466930090.Spec : Prop :=
  ∀ n, P6225879378466930090.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P15245597330424885749

`A292250(A064216(n+1))`
-/

namespace A291770.P15245597330424885749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292250 (A064216 (n + 1)).toNat

end

end A291770.P15245597330424885749

namespace A291770

/-- `A292250(A064216(n+1))` -/
def P15245597330424885749.Spec : Prop :=
  ∀ n, P15245597330424885749.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P915622481296964502

`A292250(A292245(n+1)+A292244(n+1))`
-/

namespace A291770.P915622481296964502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292250 (A292245 (n + 1) + A292244 (n + 1)).toNat

end

end A291770.P915622481296964502

namespace A291770

/-- `A292250(A292245(n+1)+A292244(n+1))` -/
def P915622481296964502.Spec : Prop :=
  ∀ n, P915622481296964502.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P9101775441550813995

`A292370(A006288(n+1))`
-/

namespace A291770.P9101775441550813995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A006288 (n + 1)).toNat

end

end A291770.P9101775441550813995

namespace A291770

/-- `A292370(A006288(n+1))` -/
def P9101775441550813995.Spec : Prop :=
  ∀ n, P9101775441550813995.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P1002016196263143169

`A292370(A023717(n+1))`
-/

namespace A291770.P1002016196263143169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A023717 (n + 1)).toNat

end

end A291770.P1002016196263143169

namespace A291770

/-- `A292370(A023717(n+1))` -/
def P1002016196263143169.Spec : Prop :=
  ∀ n, P1002016196263143169.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P2716210264967973604

`A292370(A023713(n+2))`
-/

namespace A291770.P2716210264967973604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A023713 (n + 2)).toNat

end

end A291770.P2716210264967973604

namespace A291770

/-- `A292370(A023713(n+2))` -/
def P2716210264967973604.Spec : Prop :=
  ∀ n, P2716210264967973604.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P8288568799862951868

`A292370(A023709(n+1)+1)`
-/

namespace A291770.P8288568799862951868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A023709 (n + 1) + 1).toNat

end

end A291770.P8288568799862951868

namespace A291770

/-- `A292370(A023709(n+1)+1)` -/
def P8288568799862951868.Spec : Prop :=
  ∀ n, P8288568799862951868.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P429154837427513538

`A289814(A171960(n+1))`
-/

namespace A291770.P429154837427513538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A171960 (n + 1)).toNat

end

end A291770.P429154837427513538

namespace A291770

/-- `A289814(A171960(n+1))` -/
def P429154837427513538.Spec : Prop :=
  ∀ n, P429154837427513538.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P8319688465366528106

`A289813(A256293(n+1))`
-/

namespace A291770.P8319688465366528106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A256293 (n + 1)).toNat

end

end A291770.P8319688465366528106

namespace A291770

/-- `A289813(A256293(n+1))` -/
def P8319688465366528106.Spec : Prop :=
  ∀ n, P8319688465366528106.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P15127306754509385383

`A343230(A374363(n+1))`
-/

namespace A291770.P15127306754509385383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343230 (A374363 (n + 1)).toNat

end

end A291770.P15127306754509385383

namespace A291770

/-- `A343230(A374363(n+1))` -/
def P15127306754509385383.Spec : Prop :=
  ∀ n, P15127306754509385383.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P9911842531776079270

`A292370(A023709(n+2))`
-/

namespace A291770.P9911842531776079270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292370 (A023709 (n + 2)).toNat

end

end A291770.P9911842531776079270

namespace A291770

/-- `A292370(A023709(n+2))` -/
def P9911842531776079270.Spec : Prop :=
  ∀ n, P9911842531776079270.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P3362103766955316514

`A343229(lt[A338247(n), n])`
-/

namespace A291770.P3362103766955316514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338247 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A291770.P3362103766955316514

namespace A291770

/-- `A343229(lt[A338247(n), n])` -/
def P3362103766955316514.Spec : Prop :=
  ∀ n, P3362103766955316514.a n = A291770 (n + 1)

end A291770

/-! ## A291770.P11294653532743465896

`A292240(A254104(n+1))`
-/

namespace A291770.P11294653532743465896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292240 (A254104 (n + 1)).toNat

end

end A291770.P11294653532743465896

namespace A291770

/-- `A292240(A254104(n+1))` -/
def P11294653532743465896.Spec : Prop :=
  ∀ n, P11294653532743465896.a n = A291770 (n + 1)

end A291770

/-!
# A291771: Filter based on runlengths of 0-digits in base-3 expansion of n: a(n) = A278222(A291770(n)).

The programs for A291771, the canonical program `A291771.P9273662202954046865` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291771 has offset 1).

The definition of A291771 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A278222, A291770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A291771.P9273662202954046865

`A278222(A291770(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A291771

/-- `A278222(A291770(n+1))` -/
def P9273662202954046865.Spec : Prop :=
  ∀ n, P9273662202954046865.a n = A291771 (n + 1)

theorem P9273662202954046865.correct : P9273662202954046865.Spec := by
  intro n
  simp only [A291771, Nat.add_sub_cancel]

end A291771

/-! ## A291771.P18029092123109385862

`A290092(A171960(n+1))`
-/

namespace A291771.P18029092123109385862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A171960 (n + 1)).toNat

end

end A291771.P18029092123109385862

namespace A291771

/-- `A290092(A171960(n+1))` -/
def P18029092123109385862.Spec : Prop :=
  ∀ n, P18029092123109385862.a n = A291771 (n + 1)

end A291771

/-! ## A291771.P4172195794525911735

`A290091(A256293(n+1))`
-/

namespace A291771.P4172195794525911735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 (A256293 (n + 1)).toNat

end

end A291771.P4172195794525911735

namespace A291771

/-- `A290091(A256293(n+1))` -/
def P4172195794525911735.Spec : Prop :=
  ∀ n, P4172195794525911735.a n = A291771 (n + 1)

end A291771

/-! ## A291771.P9842272469482394105

`A290092(A274601(n+1)-1)`
-/

namespace A291771.P9842272469482394105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A274601 (n + 1) - 1).toNat

end

end A291771.P9842272469482394105

namespace A291771

/-- `A290092(A274601(n+1)-1)` -/
def P9842272469482394105.Spec : Prop :=
  ∀ n, P9842272469482394105.a n = A291771 (n + 1)

end A291771

/-! ## A291771.P17273096064082127003

`A290092(A274601(n+2))`
-/

namespace A291771.P17273096064082127003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A274601 (n + 2)).toNat

end

end A291771.P17273096064082127003

namespace A291771

/-- `A290092(A274601(n+2))` -/
def P17273096064082127003.Spec : Prop :=
  ∀ n, P17273096064082127003.a n = A291771 (n + 1)

end A291771

/-! ## A291771.P14214863716007217976

`A290092(A284797(n+1))`
-/

namespace A291771.P14214863716007217976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A284797 (n + 1)).toNat

end

end A291771.P14214863716007217976

namespace A291771

/-- `A290092(A284797(n+1))` -/
def P14214863716007217976.Spec : Prop :=
  ∀ n, P14214863716007217976.a n = A291771 (n + 1)

end A291771

/-!
# A291773: Domination number of the n-Apollonian network.

The programs for A291773, the canonical program `A291773.P2027793909205803490` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291773 has offset 1).

The definition of A291773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291773.P2027793909205803490

`4*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291773

/-- `4*a(n-1)-3*a(n-2)` -/
def P2027793909205803490.Spec : Prop :=
  ∀ n, P2027793909205803490.a n = A291773 (n + 1)

theorem P2027793909205803490.correct : P2027793909205803490.Spec := by
  intro n
  simp only [A291773, Nat.add_sub_cancel]

end A291773

/-! ## A291773.P2408175768483950555

`ogf((1-3x+2x^2-5x^3)/(1-4x+3x^2))`
-/

namespace A291773.P2408175768483950555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2, -5] [1, -4, 3] n

end

end A291773.P2408175768483950555

namespace A291773

/-- `ogf((1-3x+2x^2-5x^3)/(1-4x+3x^2))` -/
def P2408175768483950555.Spec : Prop :=
  ∀ n, P2408175768483950555.a n = A291773 (n + 1)

end A291773

/-! ## A291773.P6422807002163143247

`3*a(n-1)-5` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A291773.P6422807002163143247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  3 * a (n - 1) - 5

end

end A291773.P6422807002163143247

namespace A291773

/-- `3*a(n-1)-5` -/
def P6422807002163143247.Spec : Prop :=
  ∀ n, P6422807002163143247.a n = A291773 (n + 1)

end A291773

/-! ## A291773.P2847349039673287202

`a(n-1)+3^(n-3)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A291773.P2847349039673287202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) + (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A291773.P2847349039673287202

namespace A291773

/-- `a(n-1)+3^(n-3)` -/
def P2847349039673287202.Spec : Prop :=
  ∀ n, P2847349039673287202.a n = (A291773 (n + 1) : ℚ)

end A291773

/-! ## A291773.P1427458724946740757

`A302487(n+1)/A141044(n)`
-/

namespace A291773.P1427458724946740757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302487 (n + 1) : ℚ) / (A141044 n : ℚ)

end

end A291773.P1427458724946740757

namespace A291773

/-- `A302487(n+1)/A141044(n)` -/
def P1427458724946740757.Spec : Prop :=
  ∀ n, P1427458724946740757.a n = (A291773 (n + 1) : ℚ)

end A291773

/-! ## A291773.P11106153804406727617

`gcd(A169585(n), A302487(n+1))`
-/

namespace A291773.P11106153804406727617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169585 n) (A302487 (n + 1))

end

end A291773.P11106153804406727617

namespace A291773

/-- `gcd(A169585(n), A302487(n+1))` -/
def P11106153804406727617.Spec : Prop :=
  ∀ n, (P11106153804406727617.a n : ℤ) = A291773 (n + 1)

end A291773

/-! ## A291773.P7897260421485367613

`A302487(n+1)-A019590(n+1)`
-/

namespace A291773.P7897260421485367613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302487 (n + 1) - A019590 (n + 1)

end

end A291773.P7897260421485367613

namespace A291773

/-- `A302487(n+1)-A019590(n+1)` -/
def P7897260421485367613.Spec : Prop :=
  ∀ n, P7897260421485367613.a n = A291773 (n + 1)

end A291773

/-! ## A291773.P2036852041918574346

`A115098(n)%A052156(n)+1`
-/

namespace A291773.P2036852041918574346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115098 n) (A052156 n) + 1

end

end A291773.P2036852041918574346

namespace A291773

/-- `A115098(n)%A052156(n)+1` -/
def P2036852041918574346.Spec : Prop :=
  ∀ n, P2036852041918574346.a n = A291773 (n + 1)

end A291773

/-! ## A291773.P7320719683897073277

`A094388(n)-A120463(A004275(n))`
-/

namespace A291773.P7320719683897073277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n - A120463 (A004275 n).toNat

end

end A291773.P7320719683897073277

namespace A291773

/-- `A094388(n)-A120463(A004275(n))` -/
def P7320719683897073277.Spec : Prop :=
  ∀ n, P7320719683897073277.a n = A291773 (n + 1)

end A291773

/-! ## A291773.P4546308710021957017

`∑[a(n-1)²/a(n-2)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A291773.P4546308710021957017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2, 1, 3] fun n f1 =>
  f1 (n - 1) ^ 2 / f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291773.P4546308710021957017

namespace A291773

/-- `∑[a(n-1)²/a(n-2)]` -/
def P4546308710021957017.Spec : Prop :=
  ∀ n, P4546308710021957017.a n = (A291773 (n + 1) : ℚ)

end A291773

/-!
# A291774: Triangle read by rows: chromatic invariant T(n,m) of the complete bipartite graph K_{m,n}.

The programs for A291774, there is no canonical definition to state claims against.
-/

/-! ## A291774.P6071952495922228465

`A371761(A245300(n))`
-/

namespace A291774.P6071952495922228465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371761 (A245300 n).toNat

end

end A291774.P6071952495922228465

/-!
# A291776: a(n) = prime that is eventually reached when x -> sigma(x)-1 is repeatedly applied to 2^n-1, or -1 if no prime is ever reached.

The programs for A291776, there is no canonical definition to state claims against.
-/

/-! ## A291776.P9031039766363449758

`A039654(2^(n+2)-1)`
-/

namespace A291776.P9031039766363449758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (2 ^ (n + 2) - 1)

end

end A291776.P9031039766363449758

/-! ## A291776.P7236462186278898545

`A039654(A126646(n+1))+A000007(n+1)`
-/

namespace A291776.P7236462186278898545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (A126646 (n + 1)).toNat + A000007 (n + 1)

end

end A291776.P7236462186278898545

/-! ## A291776.P13976863012880548051

`A039654(A126646(n+1))%A001550(n+1)`
-/

namespace A291776.P13976863012880548051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039654 (A126646 (n + 1)).toNat) (A001550 (n + 1))

end

end A291776.P13976863012880548051

/-! ## A291776.P15067532814385221123

`A039654(A126646(n+1))+A000038(2*n+3)`
-/

namespace A291776.P15067532814385221123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039654 (A126646 (n + 1)).toNat + A000038 (2 * n + 3)

end

end A291776.P15067532814385221123

/-! ## A291776.P2218160636300600175

`A245552(2*(n+2))+A039654(A000225(n+2))`
-/

namespace A291776.P2218160636300600175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245552 (2 * (n + 2)) + A039654 (A000225 (n + 2)).toNat

end

end A291776.P2218160636300600175

/-!
# A291777: a(n) = number of steps to reach a prime when x -> sigma(x)-1 is repeatedly applied to 2^n-1, or -1 if no prime is ever reached.

The programs for A291777, there is no canonical definition to state claims against.
-/

/-! ## A291777.P17546738530954247840

`A039655(2^(n+2)-1)`
-/

namespace A291777.P17546738530954247840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039655 (2 ^ (n + 2) - 1)

end

end A291777.P17546738530954247840

/-! ## A291777.P14714163028938994641

`A039655(A000225(n+2))%(n+1)`
-/

namespace A291777.P14714163028938994641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039655 (A000225 (n + 2)).toNat) (n + 1 : ℤ)

end

end A291777.P14714163028938994641

/-! ## A291777.P3354120204760455843

`A127324(A327359(n)+A006958(n+1))`
-/

namespace A291777.P3354120204760455843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A327359 n + A006958 (n + 1)).toNat

end

end A291777.P3354120204760455843

/-! ## A291777.P93713010378850063

`xor(A007862(A098156(n)), A323169(n+1))`
-/

namespace A291777.P93713010378850063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007862 (A098156 n).toNat) (A323169 (n + 1))

end

end A291777.P93713010378850063

/-! ## A291777.P8444780183084016501

`A039655(A052955(2*(n+1)))*A250662(n)`
-/

namespace A291777.P8444780183084016501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039655 (A052955 (2 * (n + 1))).toNat * A250662 n

end

end A291777.P8444780183084016501

/-!
# A291778: a(n) = 2^floor(2*n/3).

The programs for A291778, the canonical program `A291778.P10198138018419453041` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291778 has offset 0).

The definition of A291778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291778.P10198138018419453041

`2^floor(2*n/3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291778

/-- `2^floor(2*n/3)` -/
def P10198138018419453041.Spec : Prop :=
  ∀ n, P10198138018419453041.a n = (A291778 n : ℚ)

end A291778

/-! ## A291778.P15438114803819286162

`4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A291778.P15438114803819286162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  4 * a (n - 3)

end

end A291778.P15438114803819286162

namespace A291778

/-- `4*a(n-3)` -/
def P15438114803819286162.Spec : Prop :=
  ∀ n, (P15438114803819286162.a n : ℤ) = A291778 n

end A291778

/-! ## A291778.P7934382704354941336

`∏[a(n-3)!]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A291778.P7934382704354941336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A291778.P7934382704354941336

namespace A291778

/-- `∏[a(n-3)!]` -/
def P7934382704354941336.Spec : Prop :=
  ∀ n, (P7934382704354941336.a n : ℤ) = A291778 n

end A291778

/-! ## A291778.P9699553868130435405

`a(n-3)/(1/2)²` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A291778.P9699553868130435405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) / ((1 : ℚ) / 2) ^ 2

end

end A291778.P9699553868130435405

namespace A291778

/-- `a(n-3)/(1/2)²` -/
def P9699553868130435405.Spec : Prop :=
  ∀ n, P9699553868130435405.a n = (A291778 n : ℚ)

end A291778

/-! ## A291778.P7156477888380311053

`floor(2^∑[a(n-3)²])` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A291778.P7156477888380311053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291778.P7156477888380311053

namespace A291778

/-- `floor(2^∑[a(n-3)²])` -/
def P7156477888380311053.Spec : Prop :=
  ∀ n, (P7156477888380311053.a n : ℤ) = A291778 n

end A291778

/-! ## A291778.P2439079281092194426

`floor(2^∑[floor(a(n-3))])` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A291778.P2439079281092194426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291778.P2439079281092194426

namespace A291778

/-- `floor(2^∑[floor(a(n-3))])` -/
def P2439079281092194426.Spec : Prop :=
  ∀ n, (P2439079281092194426.a n : ℤ) = A291778 n

end A291778

/-! ## A291778.P3022649834542308677

`∏[(lcm(2*n+1, n-1)%3)!]`
-/

namespace A291778.P3022649834542308677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.lcm (2 * n + 1 : ℤ) ((n : ℤ) - 1) % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A291778.P3022649834542308677

namespace A291778

/-- `∏[(lcm(2*n+1, n-1)%3)!]` -/
def P3022649834542308677.Spec : Prop :=
  ∀ n, (P3022649834542308677.a n : ℤ) = A291778 n

end A291778

/-! ## A291778.P7571652230971224199

`a(n-3)+lcm(3, a(n-3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A291778.P7571652230971224199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) + Nat.lcm 3 (a (n - 3))

end

end A291778.P7571652230971224199

namespace A291778

/-- `a(n-3)+lcm(3, a(n-3))` -/
def P7571652230971224199.Spec : Prop :=
  ∀ n, (P7571652230971224199.a n : ℤ) = A291778 n

end A291778

/-! ## A291778.P14100448660495657656

`∑[abs(A117902(n))]`
-/

namespace A291778.P14100448660495657656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117902 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291778.P14100448660495657656

namespace A291778

/-- `∑[abs(A117902(n))]` -/
def P14100448660495657656.Spec : Prop :=
  ∀ n, P14100448660495657656.a n = A291778 n

end A291778

/-! ## A291778.P13769450397800185840

`A173862(Δ[n²])`
-/

namespace A291778.P13769450397800185840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173862 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A291778.P13769450397800185840

namespace A291778

/-- `A173862(Δ[n²])` -/
def P13769450397800185840.Spec : Prop :=
  ∀ n, P13769450397800185840.a n = A291778 n

end A291778

/-! ## A291778.P14367786245924816139

`∏[abs(A143098(2*n+1))]`
-/

namespace A291778.P14367786245924816139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143098 (2 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A291778.P14367786245924816139

namespace A291778

/-- `∏[abs(A143098(2*n+1))]` -/
def P14367786245924816139.Spec : Prop :=
  ∀ n, P14367786245924816139.a n = A291778 n

end A291778

/-! ## A291778.P1802962549016792471

`A000079(A004523(n))`
-/

namespace A291778.P1802962549016792471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004523 n).toNat

end

end A291778.P1802962549016792471

namespace A291778

/-- `A000079(A004523(n))` -/
def P1802962549016792471.Spec : Prop :=
  ∀ n, P1802962549016792471.a n = A291778 n

end A291778

/-! ## A291778.P16089758542259402761

`A016116(A004773(n))`
-/

namespace A291778.P16089758542259402761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004773 n).toNat

end

end A291778.P16089758542259402761

namespace A291778

/-- `A016116(A004773(n))` -/
def P16089758542259402761.Spec : Prop :=
  ∀ n, P16089758542259402761.a n = A291778 n

end A291778

/-! ## A291778.P13357367657550287075

`A016116(A168056(n))`
-/

namespace A291778.P13357367657550287075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A168056 n).toNat

end

end A291778.P13357367657550287075

namespace A291778

/-- `A016116(A168056(n))` -/
def P13357367657550287075.Spec : Prop :=
  ∀ n, P13357367657550287075.a n = A291778 n

end A291778

/-! ## A291778.P6734168906057075114

`A200675(A008576(n))`
-/

namespace A291778.P6734168906057075114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (A008576 n).toNat

end

end A291778.P6734168906057075114

namespace A291778

/-- `A200675(A008576(n))` -/
def P6734168906057075114.Spec : Prop :=
  ∀ n, P6734168906057075114.a n = A291778 n

end A291778

/-!
# A291779: a(n) = 2^n - 2^floor(2n/3).

The programs for A291779, the canonical program `A291779.P1766320799201324658` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291779 has offset 0).

The definition of A291779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291779.P1766320799201324658

`2^n-2^floor(2*n/3)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A291779

/-- `2^n-2^floor(2*n/3)` -/
def P1766320799201324658.Spec : Prop :=
  ∀ n, P1766320799201324658.a n = (A291779 n : ℚ)

end A291779

/-! ## A291779.P10705412292929106134

`4*or(a(n-2), a(n-3))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A291779.P10705412292929106134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  4 * Nat.lor (a (n - 2)) (a (n - 3))

end

end A291779.P10705412292929106134

namespace A291779

/-- `4*or(a(n-2), a(n-3))` -/
def P10705412292929106134.Spec : Prop :=
  ∀ n, (P10705412292929106134.a n : ℤ) = A291779 n

end A291779

/-! ## A291779.P16215346702821357722

`lcm(A060549(n+1), A291778(n))`
-/

namespace A291779.P16215346702821357722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060549 (n + 1)) (A291778 n)

end

end A291779.P16215346702821357722

namespace A291779

/-- `lcm(A060549(n+1), A291778(n))` -/
def P16215346702821357722.Spec : Prop :=
  ∀ n, (P16215346702821357722.a n : ℤ) = A291779 n

end A291779

/-! ## A291779.P14764829272285927263

`A060549(n+1)*A158780(n+1)`
-/

namespace A291779.P14764829272285927263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060549 (n + 1) * A158780 (n + 1)

end

end A291779.P14764829272285927263

namespace A291779

/-- `A060549(n+1)*A158780(n+1)` -/
def P14764829272285927263.Spec : Prop :=
  ∀ n, P14764829272285927263.a n = A291779 n

end A291779

/-! ## A291779.P8354337467892831351

`A060547(n+1)*A060550(2*(n+1))`
-/

namespace A291779.P8354337467892831351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060547 (n + 1) * A060550 (2 * (n + 1))

end

end A291779.P8354337467892831351

namespace A291779

/-- `A060547(n+1)*A060550(2*(n+1))` -/
def P8354337467892831351.Spec : Prop :=
  ∀ n, P8354337467892831351.a n = A291779 n

end A291779

/-! ## A291779.P6975578440395372664

`ogf(x/(1-2x-4x^3+8x^4))`
-/

namespace A291779.P6975578440395372664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -2, 0, -4, 8] n

end

end A291779.P6975578440395372664

namespace A291779

/-- `ogf(x/(1-2x-4x^3+8x^4))` -/
def P6975578440395372664.Spec : Prop :=
  ∀ n, P6975578440395372664.a n = A291779 n

end A291779

/-!
# A291780: Consider the Watanabe tag system defined in A291067; a(n) = number of binary words of length n which terminate at the empty word.

The programs for A291780, there is no canonical definition to state claims against.
-/

/-! ## A291780.P16019331567873412464

`2^(n+1)-A291781(n+1)`
-/

namespace A291780.P16019331567873412464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A291781 (n + 1)

end

end A291780.P16019331567873412464

/-! ## A291780.P7501980749576602516

`A048578(n)-(A291781(n+1)+1)`
-/

namespace A291780.P7501980749576602516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - (A291781 (n + 1) + 1)

end

end A291780.P7501980749576602516

/-! ## A291780.P2522980378991542467

`A126646(n)+1-A291781(n+1)`
-/

namespace A291780.P2522980378991542467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A291781 (n + 1))

end

end A291780.P2522980378991542467

/-! ## A291780.P5602203627291398059

`A291778(n+1)+A291779(n+1)-A291781(n+1)`
-/

namespace A291780.P5602203627291398059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 (n + 1) + (A291779 (n + 1) - A291781 (n + 1))

end

end A291780.P5602203627291398059

/-! ## A291780.P17299839101843780842

`A289670(n+1)+A289671(n+1)-A291781(n+1)`
-/

namespace A291780.P17299839101843780842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289670 (n + 1) + (A289671 (n + 1) - A291781 (n + 1))

end

end A291780.P17299839101843780842

/-!
# A291781: Consider the Watanabe tag system defined in A291067; a(n) = number of binary words of length n which terminate in a cycle.

The programs for A291781, there is no canonical definition to state claims against.
-/

/-! ## A291781.P1558718852403252292

`2^(n+1)-A291780(n+1)`
-/

namespace A291781.P1558718852403252292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A291780 (n + 1)

end

end A291781.P1558718852403252292

/-! ## A291781.P1427999834440581947

`and(-A291780(n+1), A126646(n))`
-/

namespace A291781.P1427999834440581947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A291780 (n + 1)) (A126646 n)

end

end A291781.P1427999834440581947

/-! ## A291781.P5682443452136336093

`and(-A291780(n+1), A052955(2*n))`
-/

namespace A291781.P5682443452136336093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A291780 (n + 1)) (A052955 (2 * n))

end

end A291781.P5682443452136336093

/-! ## A291781.P6612674844027397115

`A000079(n)+A000079(n)-A291780(n+1)`
-/

namespace A291781.P6612674844027397115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A000079 n - A291780 (n + 1))

end

end A291781.P6612674844027397115

/-! ## A291781.P13558155071223734914

`A291778(n+1)+A291779(n+1)-A291780(n+1)`
-/

namespace A291781.P13558155071223734914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291778 (n + 1) + (A291779 (n + 1) - A291780 (n + 1))

end

end A291781.P13558155071223734914

/-!
# A291782: Let f_k(n) be the result of applying phi (the Euler totient function A000010) k times to n; a(n) = n*Product_{k=1..oo} f_k(n).

The programs for A291782, the canonical program `A291782.P13217686668389589060` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291782 has offset 1).

The definition of A291782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A291782.P13217686668389589060

`(n+1)*A092694(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A291782

/-- `(n+1)*A092694(n+1)` -/
def P13217686668389589060.Spec : Prop :=
  ∀ n, P13217686668389589060.a n = A291782 (n + 1)

theorem P13217686668389589060.correct : P13217686668389589060.Spec := by
  intro n
  simp only [A291782, Nat.add_sub_cancel]

end A291782

/-! ## A291782.P234798440232772380

`a(A109606(n+1))*(n+1)` with `a(0)=1`
-/

namespace A291782.P234798440232772380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A109606 (n + 1)).toNat * (n + 1)

end

end A291782.P234798440232772380

namespace A291782

/-- `a(A109606(n+1))*(n+1)` -/
def P234798440232772380.Spec : Prop :=
  ∀ n, (P234798440232772380.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P15462098157374736002

`(n+1)*a(A000010(n+1)-1)` with `a(0)=1`
-/

namespace A291782.P15462098157374736002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A000010 (n + 1) - 1).toNat

end

end A291782.P15462098157374736002

namespace A291782

/-- `(n+1)*a(A000010(n+1)-1)` -/
def P15462098157374736002.Spec : Prop :=
  ∀ n, (P15462098157374736002.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P6384503701085216287

`(n+1)*a(A039649(n+1)-2)` with `a(0)=1`
-/

namespace A291782.P6384503701085216287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A039649 (n + 1) - 2).toNat

end

end A291782.P6384503701085216287

namespace A291782

/-- `(n+1)*a(A039649(n+1)-2)` -/
def P6384503701085216287.Spec : Prop :=
  ∀ n, (P6384503701085216287.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P14526806991339257444

`(n+1)*a(n-A051953(n+1))` with `a(0)=1`
-/

namespace A291782.P14526806991339257444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ((n : ℤ) - A051953 (n + 1)).toNat

end

end A291782.P14526806991339257444

namespace A291782

/-- `(n+1)*a(n-A051953(n+1))` -/
def P14526806991339257444.Spec : Prop :=
  ∀ n, (P14526806991339257444.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P13915710591385096351

`(n+1)*a(A046073(n+1)*A060594(n+1)-1)` with `a(0)=1`
-/

namespace A291782.P13915710591385096351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A046073 (n + 1) * A060594 (n + 1) - 1).toNat

end

end A291782.P13915710591385096351

namespace A291782

/-- `(n+1)*a(A046073(n+1)*A060594(n+1)-1)` -/
def P13915710591385096351.Spec : Prop :=
  ∀ n, (P13915710591385096351.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P17168643085474371105

`(n+1)*a(A049633(n)-A049632(n)-1)` with `a(0)=1`
-/

namespace A291782.P17168643085474371105
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A049633 n - A049632 n - 1).toNat

end

end A291782.P17168643085474371105

namespace A291782

/-- `(n+1)*a(A049633(n)-A049632(n)-1)` -/
def P17168643085474371105.Spec : Prop :=
  ∀ n, (P17168643085474371105.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P14216149407345911772

`(n+1)*a(Δ[eq[1, A038566(n+1)]]-1)` with `a(0)=1`
-/

namespace A291782.P14216149407345911772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1).toNat

end

end A291782.P14216149407345911772

namespace A291782

/-- `(n+1)*a(Δ[eq[1, A038566(n+1)]]-1)` -/
def P14216149407345911772.Spec : Prop :=
  ∀ n, (P14216149407345911772.a n : ℤ) = A291782 (n + 1)

end A291782

/-! ## A291782.P14897340246744786248

`(n+1)*a(floor(log2(A243305(n+1)))-1)` with `a(0)=1`
-/

namespace A291782.P14897340246744786248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (Nat.log 2 (A243305 (n + 1)).toNat - 1)

end

end A291782.P14897340246744786248

namespace A291782

/-- `(n+1)*a(floor(log2(A243305(n+1)))-1)` -/
def P14897340246744786248.Spec : Prop :=
  ∀ n, (P14897340246744786248.a n : ℤ) = A291782 (n + 1)

end A291782

/-!
# A291783: Partial sums of A064415(k)^2.

The programs for A291783, the canonical program `A291783.P5990808469657588639` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291783 has offset 1).

The definition of A291783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291783.P8888517102509175774

`∑[A064415(n+1)²]`
-/

namespace A291783.P8888517102509175774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P8888517102509175774

namespace A291783

/-- `∑[A064415(n+1)²]` -/
def P8888517102509175774.Spec : Prop :=
  ∀ n, P8888517102509175774.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P12859671875520374646

`∑[∑[A334195(n+1)]²]`
-/

namespace A291783.P12859671875520374646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P12859671875520374646

namespace A291783

/-- `∑[∑[A334195(n+1)]²]` -/
def P12859671875520374646.Spec : Prop :=
  ∀ n, P12859671875520374646.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P5990808469657588639

`∑[A054725(n+1)²]-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A291783

/-- `∑[A054725(n+1)²]-1` -/
def P5990808469657588639.Spec : Prop :=
  ∀ n, P5990808469657588639.a n = A291783 (n + 1)

theorem P5990808469657588639.correct : P5990808469657588639.Spec := by
  intro n
  simp only [A291783, Nat.add_sub_cancel]

end A291783

/-! ## A291783.P17276035115458603761

`∑[val(A309243(n+1), 2)²]`
-/

namespace A291783.P17276035115458603761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A309243 (n + 1)).toNat 2 ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P17276035115458603761

namespace A291783

/-- `∑[val(A309243(n+1), 2)²]` -/
def P17276035115458603761.Spec : Prop :=
  ∀ n, (P17276035115458603761.a n : ℤ) = A291783 (n + 1)

end A291783

/-! ## A291783.P2620275129633692908

`∑[A003434(Δ[A049690(n)])²]`
-/

namespace A291783.P2620275129633692908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f2 (n + 1) - f2 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P2620275129633692908

namespace A291783

/-- `∑[A003434(Δ[A049690(n)])²]` -/
def P2620275129633692908.Spec : Prop :=
  ∀ n, P2620275129633692908.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P10884824998719377002

`∑[A003434(A062570(n+1))²]`
-/

namespace A291783.P10884824998719377002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A062570 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P10884824998719377002

namespace A291783

/-- `∑[A003434(A062570(n+1))²]` -/
def P10884824998719377002.Spec : Prop :=
  ∀ n, P10884824998719377002.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P17911577780158767000

`∑[A003434(A108514(n+1))²]`
-/

namespace A291783.P17911577780158767000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A108514 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P17911577780158767000

namespace A291783

/-- `∑[A003434(A108514(n+1))²]` -/
def P17911577780158767000.Spec : Prop :=
  ∀ n, P17911577780158767000.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P11759148010187360033

`∑[A003434(A333787(n+1))²]`
-/

namespace A291783.P11759148010187360033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A333787 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P11759148010187360033

namespace A291783

/-- `∑[A003434(A333787(n+1))²]` -/
def P11759148010187360033.Spec : Prop :=
  ∀ n, P11759148010187360033.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P6675480765937802304

`∑[A003434(A000010(2*(n+1)))²]`
-/

namespace A291783.P6675480765937802304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A000010 (2 * (n + 1))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P6675480765937802304

namespace A291783

/-- `∑[A003434(A000010(2*(n+1)))²]` -/
def P6675480765937802304.Spec : Prop :=
  ∀ n, P6675480765937802304.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P12234245482552445905

`∑[A032358(2*(n+1))²]`
-/

namespace A291783.P12234245482552445905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P12234245482552445905

namespace A291783

/-- `∑[A032358(2*(n+1))²]` -/
def P12234245482552445905.Spec : Prop :=
  ∀ n, P12234245482552445905.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P501944096211557789

`∑[(1-A003434(2*(n+1)))²]`
-/

namespace A291783.P501944096211557789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003434 (2 * (n + 1))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P501944096211557789

namespace A291783

/-- `∑[(1-A003434(2*(n+1)))²]` -/
def P501944096211557789.Spec : Prop :=
  ∀ n, P501944096211557789.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P15222146927404353315

`∑[(2-A049108(2*(n+1)))²]`
-/

namespace A291783.P15222146927404353315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049108 (2 * (n + 1))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P15222146927404353315

namespace A291783

/-- `∑[(2-A049108(2*(n+1)))²]` -/
def P15222146927404353315.Spec : Prop :=
  ∀ n, P15222146927404353315.a n = A291783 (n + 1)

end A291783

/-! ## A291783.P11070045762218338609

`∑[A023443(A003434(2*(n+1)))²]`
-/

namespace A291783.P11070045762218338609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003434 (2 * (n + 1))).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A291783.P11070045762218338609

namespace A291783

/-- `∑[A023443(A003434(2*(n+1)))²]` -/
def P11070045762218338609.Spec : Prop :=
  ∀ n, P11070045762218338609.a n = A291783 (n + 1)

end A291783

/-!
# A291784: a(n) = (psi(n) + phi(n))/2.

The programs for A291784, the canonical program `A291784.P16578059245399966389` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A291784 has offset 1).

The definition of A291784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A291784.P5477271466791787721

`∑{d}[n+1, #*A353629((n+1)/#)]`
-/

namespace A291784.P5477271466791787721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P5477271466791787721

namespace A291784

/-- `∑{d}[n+1, #*A353629((n+1)/#)]` -/
def P5477271466791787721.Spec : Prop :=
  ∀ n, P5477271466791787721.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P15027810941921735021

`A318320(n+1)+A000010(n+1)`
-/

namespace A291784.P15027810941921735021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318320 (n + 1) + A000010 (n + 1)

end

end A291784.P15027810941921735021

namespace A291784

/-- `A318320(n+1)+A000010(n+1)` -/
def P15027810941921735021.Spec : Prop :=
  ∀ n, P15027810941921735021.a n = A291784 (n + 1)

theorem P15027810941921735021.correct : P15027810941921735021.Spec := by
  intro n
  simp only [A291784, Nat.add_sub_cancel, A291784.P15027810941921735021.a, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A000010, A000010.P4673923239450215316.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A318320, A318320.P3093360369618625706.a, A378542, A378542.P16518719972786175247.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, A115362, A115362.P12022203208950917127.a, A274179, A274179.P5668171272729194890.a, A373185, A373185.P3689991770781756836.f1, A373185.P3689991770781756836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291784

/-! ## A291784.P8757153736341529203

`A318441(n+1)+A318325(n+1)`
-/

namespace A291784.P8757153736341529203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (n + 1) + A318325 (n + 1)

end

end A291784.P8757153736341529203

namespace A291784

/-- `A318441(n+1)+A318325(n+1)` -/
def P8757153736341529203.Spec : Prop :=
  ∀ n, P8757153736341529203.a n = A291784 (n + 1)

theorem P8757153736341529203.correct : P8757153736341529203.Spec := by
  intro n
  simp only [A291784, Nat.add_sub_cancel, A291784.P8757153736341529203.a, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318441, A318441.P17763329033337270691.a, A378542, A378542.P16518719972786175247.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A057427, A057427.P3058147525557661423.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A000007, A000007.P6599383543502402472.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, A115362, A115362.P12022203208950917127.a, A274179, A274179.P5668171272729194890.a, A373185, A373185.P3689991770781756836.f1, A373185.P3689991770781756836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291784

/-! ## A291784.P17175069500172301592

`A001615(n+1)-A318320(n+1)`
-/

namespace A291784.P17175069500172301592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - A318320 (n + 1)

end

end A291784.P17175069500172301592

namespace A291784

/-- `A001615(n+1)-A318320(n+1)` -/
def P17175069500172301592.Spec : Prop :=
  ∀ n, P17175069500172301592.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P4689878400273646947

`(A001615(n+1)+Δ[A002088(n)])/2`
-/

namespace A291784.P4689878400273646947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A291784.P4689878400273646947

namespace A291784

/-- `(A001615(n+1)+Δ[A002088(n)])/2` -/
def P4689878400273646947.Spec : Prop :=
  ∀ n, P4689878400273646947.a n = (A291784 (n + 1) : ℚ)

end A291784

/-! ## A291784.P10798380985178872349

`(A001615(n+1)+A000010(n+1))/2`
-/

namespace A291784.P10798380985178872349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) + A000010 (n + 1) : ℚ) / 2

end

end A291784.P10798380985178872349

namespace A291784

/-- `(A001615(n+1)+A000010(n+1))/2` -/
def P10798380985178872349.Spec : Prop :=
  ∀ n, P10798380985178872349.a n = (A291784 (n + 1) : ℚ)

end A291784

/-! ## A291784.P14071006978756248191

`A000010(n+1)+A292786(n+1)/2`
-/

namespace A291784.P14071006978756248191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) + (A292786 (n + 1) : ℚ) / 2

end

end A291784.P14071006978756248191

namespace A291784

/-- `A000010(n+1)+A292786(n+1)/2` -/
def P14071006978756248191.Spec : Prop :=
  ∀ n, P14071006978756248191.a n = (A291784 (n + 1) : ℚ)

end A291784

/-! ## A291784.P14341289216587959203

`A001615(n+1)-A292786(n+1)/2`
-/

namespace A291784.P14341289216587959203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) - (A292786 (n + 1) : ℚ) / 2

end

end A291784.P14341289216587959203

namespace A291784

/-- `A001615(n+1)-A292786(n+1)/2` -/
def P14341289216587959203.Spec : Prop :=
  ∀ n, P14341289216587959203.a n = (A291784 (n + 1) : ℚ)

end A291784

/-! ## A291784.P16616339371956595537

`(A001615(n+1)+A039649(n+1)-1)/2`
-/

namespace A291784.P16616339371956595537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) + (A039649 (n + 1) - 1) : ℚ) / 2

end

end A291784.P16616339371956595537

namespace A291784

/-- `(A001615(n+1)+A039649(n+1)-1)/2` -/
def P16616339371956595537.Spec : Prop :=
  ∀ n, P16616339371956595537.a n = (A291784 (n + 1) : ℚ)

end A291784

/-! ## A291784.P17045127698155422591

`∑{d}[n+1, A000010(#)*A007875((n+1)/#)]`
-/

namespace A291784.P17045127698155422591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007875 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P17045127698155422591

namespace A291784

/-- `∑{d}[n+1, A000010(#)*A007875((n+1)/#)]` -/
def P17045127698155422591.Spec : Prop :=
  ∀ n, P17045127698155422591.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P4651668213361985663

`∑{d}[n+1, A007431(#)*A018892((n+1)/#)]`
-/

namespace A291784.P4651668213361985663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A018892 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P4651668213361985663

namespace A291784

/-- `∑{d}[n+1, A007431(#)*A018892((n+1)/#)]` -/
def P4651668213361985663.Spec : Prop :=
  ∀ n, P4651668213361985663.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P12024698292868884054

`∑{d}[n+1, A063659(#)*A065043((n+1)/#)]`
-/

namespace A291784.P12024698292868884054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A065043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P12024698292868884054

namespace A291784

/-- `∑{d}[n+1, A063659(#)*A065043((n+1)/#)]` -/
def P12024698292868884054.Spec : Prop :=
  ∀ n, P12024698292868884054.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P18155362276280350577

`∑{d}[n+1, A038548(#)*A130107((n+1)/#)]`
-/

namespace A291784.P18155362276280350577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038548 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P18155362276280350577

namespace A291784

/-- `∑{d}[n+1, A038548(#)*A130107((n+1)/#)]` -/
def P18155362276280350577.Spec : Prop :=
  ∀ n, P18155362276280350577.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P4180790939484348680

`∑{d}[n+1, A007432(#)*A184389((n+1)/#)]`
-/

namespace A291784.P4180790939484348680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A184389 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P4180790939484348680

namespace A291784

/-- `∑{d}[n+1, A007432(#)*A184389((n+1)/#)]` -/
def P4180790939484348680.Spec : Prop :=
  ∀ n, P4180790939484348680.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P9374510380780265073

`∑{d}[n+1, A008966(#)*A378535((n+1)/#)]`
-/

namespace A291784.P9374510380780265073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A378535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P9374510380780265073

namespace A291784

/-- `∑{d}[n+1, A008966(#)*A378535((n+1)/#)]` -/
def P9374510380780265073.Spec : Prop :=
  ∀ n, P9374510380780265073.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P12242933727556386486

`∑{d}[n+1, A074206(#)*A318441((n+1)/#)]`
-/

namespace A291784.P12242933727556386486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074206 d * A318441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P12242933727556386486

namespace A291784

/-- `∑{d}[n+1, A074206(#)*A318441((n+1)/#)]` -/
def P12242933727556386486.Spec : Prop :=
  ∀ n, P12242933727556386486.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P16578059245399966389

`∑{d}[n+1, A271102(#)*A378542((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A291784

/-- `∑{d}[n+1, A271102(#)*A378542((n+1)/#)]` -/
def P16578059245399966389.Spec : Prop :=
  ∀ n, P16578059245399966389.a n = A291784 (n + 1)

theorem P16578059245399966389.correct : P16578059245399966389.Spec := by
  intro n
  simp only [A291784, Nat.add_sub_cancel]

end A291784

/-! ## A291784.P18094706938853697600

`∑{d}[n+1, A002033(#-1)*A318441((n+1)/#)]`
-/

namespace A291784.P18094706938853697600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A318441 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A291784.P18094706938853697600

namespace A291784

/-- `∑{d}[n+1, A002033(#-1)*A318441((n+1)/#)]` -/
def P18094706938853697600.Spec : Prop :=
  ∀ n, P18094706938853697600.a n = A291784 (n + 1)

end A291784

/-! ## A291784.P5012414657183142543

`A051953(n+1)+A318441(n+1)+A318326(n+1)`
-/

namespace A291784.P5012414657183142543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A318441 (n + 1) + A318326 (n + 1))

end

end A291784.P5012414657183142543

namespace A291784

/-- `A051953(n+1)+A318441(n+1)+A318326(n+1)` -/
def P5012414657183142543.Spec : Prop :=
  ∀ n, P5012414657183142543.a n = A291784 (n + 1)

theorem P5012414657183142543.correct : P5012414657183142543.Spec := by
  intro n
  simp only [A291784, Nat.add_sub_cancel, A291784.P5012414657183142543.a, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A051953, A051953.P11179276897610979764.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A318326, A318326.P16485873540069210944.a, A318441, A318441.P17763329033337270691.a, A378542, A378542.P16518719972786175247.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A003557, A003557.P6364735403900941810.a, A057427, A057427.P3058147525557661423.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, A000007, A000007.P6599383543502402472.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A115362, A115362.P12022203208950917127.a, A274179, A274179.P5668171272729194890.a, A373185, A373185.P3689991770781756836.f1, A373185.P3689991770781756836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291784

/-! ## A291784.P15937671249537884730

`A083254(n+1)+A318442(n+1)+A318325(n+1)`
-/

namespace A291784.P15937671249537884730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + (A318442 (n + 1) + A318325 (n + 1))

end

end A291784.P15937671249537884730

namespace A291784

/-- `A083254(n+1)+A318442(n+1)+A318325(n+1)` -/
def P15937671249537884730.Spec : Prop :=
  ∀ n, P15937671249537884730.a n = A291784 (n + 1)

theorem P15937671249537884730.correct : P15937671249537884730.Spec := by
  intro n
  simp only [A291784, Nat.add_sub_cancel, A291784.P15937671249537884730.a, A291784.P16578059245399966389.f1, A291784.P16578059245399966389.a, A083254, A083254.P7544960031424623367.a, A271102, A271102.P3010353493992336101.f1, A271102.P3010353493992336101.a, A318325, A318325.P6590032439412958240.f1, A318325.P6590032439412958240.a, A318442, A318442.P15306764883021255507.a, A378542, A378542.P16518719972786175247.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A057427, A057427.P3058147525557661423.a, A318320, A318320.P3093360369618625706.a, A318326, A318326.P16485873540069210944.a, A378543, A378543.P12831466803385793164.f1, A378543.P12831466803385793164.a, A000007, A000007.P6599383543502402472.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A359372, A359372.P10350618056396225445.f1, A359372.P10350618056396225445.a, A373188, A373188.P5716519306742437807.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A115362, A115362.P12022203208950917127.a, A274179, A274179.P5668171272729194890.a, A373185, A373185.P3689991770781756836.f1, A373185.P3689991770781756836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A291784

/-!
# A291785: Iterate the map A291784: k -> (psi(k)+phi(k))/2, starting with n, until a power of a prime (A000961) is reached, or -1 if that never happens.

The programs for A291785, there is no canonical definition to state claims against.
-/

/-! ## A291785.P12882288671816825809

`A000015(A306369(n+1))%A102454(3*n+5)`
-/

namespace A291785.P12882288671816825809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000015 (A306369 (n + 1)).toNat) (A102454 (3 * n + 5))

end

end A291785.P12882288671816825809

/-! ## A291785.P10846175376701120991

`A000015(A291786(A000961(n+9))+A291784(n+1))`
-/

namespace A291785.P10846175376701120991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A291786 (A000961 (n + 9)).toNat + A291784 (n + 1)).toNat

end

end A291785.P10846175376701120991

/-! ## A291785.P10993368564962661398

`A291934(A291784(n+1))%A290447(A291787(n))`
-/

namespace A291785.P10993368564962661398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291934 (A291784 (n + 1)).toNat) (A290447 (A291787 n).toNat)

end

end A291785.P10993368564962661398

/-! ## A291785.P17958865328719221193

`A291934(n+1)%A173348(n+1)`
-/

namespace A291785.P17958865328719221193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291934 (n + 1)) (A173348 (n + 1))

end

end A291785.P17958865328719221193

/-! ## A291785.P239649000167138612

`lcm(A125847(A342030(n+1)), A291934(n+1))`
-/

namespace A291785.P239649000167138612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A125847 (A342030 (n + 1)).toNat) (A291934 (n + 1))

end

end A291785.P239649000167138612

/-!
# A291786: a(n) = number of iterations of k -> (psi(k)+phi(k))/2 (A291784) needed to reach a prime or a power of a prime or 1, or -1 if that doesn't happen.

The programs for A291786, there is no canonical definition to state claims against.
-/

/-! ## A291786.P3667860753478611404

`A035232(A042965(n+1)^A281116(n+1))`
-/

namespace A291786.P3667860753478611404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (SequenceMachineLib.roundAway ((A042965 (n + 1) : ℚ) ^ (A281116 (n + 1) : ℤ))).toNat

end

end A291786.P3667860753478611404

/-! ## A291786.P380390069493355641

`A000961(n+1)%A092791(A254578(n+1))`
-/

namespace A291786.P380390069493355641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000961 (n + 1)) (A092791 (A254578 (n + 1)).toNat)

end

end A291786.P380390069493355641

/-! ## A291786.P11540478584670044973

`A001221(A344314(n+1)^A243055(n+1))`
-/

namespace A291786.P11540478584670044973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A344314 (n + 1) : ℚ) ^ (A243055 (n + 1) : ℤ))).toNat

end

end A291786.P11540478584670044973

/-! ## A291786.P9434593412430550554

`A293429(A293460(n)^A205117(n+1))`
-/

namespace A291786.P9434593412430550554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 (SequenceMachineLib.roundAway ((A293460 n : ℚ) ^ (A205117 (n + 1) : ℤ))).toNat

end

end A291786.P9434593412430550554

/-! ## A291786.P6309832981770391535

`A293429(A293439(n+1)^A205117(n+1))`
-/

namespace A291786.P6309832981770391535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 (SequenceMachineLib.roundAway ((A293439 (n + 1) : ℚ) ^ (A205117 (n + 1) : ℤ))).toNat

end

end A291786.P6309832981770391535

/-!
# A291787: Trajectory of 45 under repeated application of the map k -> A291784(k).

The programs for A291787, there is no canonical definition to state claims against.
-/

/-! ## A291787.P524783782658330084

`A291784(a(n-1))` with `a(0)=45`
-/

namespace A291787.P524783782658330084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [45] fun n a =>
  A291784 (a (n - 1)).toNat

end

end A291787.P524783782658330084

/-!
# A291788: Numbers n whose trajectory under the map k -> (psi(k)+phi(k))/2 (A291784) grows without limit.

The programs for A291788, there is no canonical definition to state claims against.
-/

/-! ## A291788.P11084103772329675845

`lt[A291785(n+1), 0]+1`
-/

namespace A291788.P11084103772329675845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291785 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291788.P11084103772329675845

/-! ## A291788.P13395694330646710840

`lt[A291786(n+1), 0]+1`
-/

namespace A291788.P13395694330646710840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291786 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A291788.P13395694330646710840

/-! ## A291788.P11298022781917658636

`lt[A291785(A028310(n)), 0]`
-/

namespace A291788.P11298022781917658636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291785 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291788.P11298022781917658636

/-! ## A291788.P18083339735456413646

`lt[A291785(A233583(n+1)), 1]`
-/

namespace A291788.P18083339735456413646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291785 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A291788.P18083339735456413646

/-! ## A291788.P11194202114097805815

`eq[0, A254667(A291785(n+1)+1)]+1`
-/

namespace A291788.P11194202114097805815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A291785 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291788.P11194202114097805815

/-!
# A291790: Numbers whose trajectory under iteration of the map k -> (sigma(k)+phi(k))/2 consists only of integers and is unbounded.

The programs for A291790, there is no canonical definition to state claims against.
-/

/-! ## A291790.P490173261396886847

`lt[A002265(n), A291914(A028310(n))]`
-/

namespace A291790.P490173261396886847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291790.P490173261396886847

/-! ## A291790.P12029650462404950045

`lt[A123108(n), A291914(A028310(n))]`
-/

namespace A291790.P12029650462404950045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291790.P12029650462404950045

/-!
# A291791: Numbers n whose trajectory under the iteration of k -> (sigma(k)+phi(k))/2 reaches a fraction.

The programs for A291791, there is no canonical definition to state claims against.
-/

/-! ## A291791.P2277281810063594416

`lt[-1, A291914(n+2)]+2`
-/

namespace A291791.P2277281810063594416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A291791.P2277281810063594416

/-! ## A291791.P5517902288034653725

`lt[1, or(n, A291914(n+1))]+1`
-/

namespace A291791.P5517902288034653725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A291914 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A291791.P5517902288034653725

/-! ## A291791.P8773906626718762199

`lt[1, A291914(A233583(n+1))+2]`
-/

namespace A291791.P8773906626718762199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A233583 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A291791.P8773906626718762199

/-! ## A291791.P5093378254339164396

`∪[A290001(n+1), A371013(n+1)]`
-/

namespace A291791.P5093378254339164396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291791.P5093378254339164396

/-! ## A291791.P16517159670476500112

`∪[A290001(n+1), A028982(n+3)]`
-/

namespace A291791.P16517159670476500112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290001 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A291791.P16517159670476500112

/-! ## A291791.P3978153816323153440

`A020725(lt[A057428(n), A291914(n+1)])`
-/

namespace A291791.P3978153816323153440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291791.P3978153816323153440

/-! ## A291791.P7162712190213499549

`A065475(lt[A057428(n), A291914(n+1)])`
-/

namespace A291791.P7162712190213499549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A291791.P7162712190213499549

/-! ## A291791.P13770335902483273460

`lt[A057428(n), A291914(A233583(n+1))]`
-/

namespace A291791.P13770335902483273460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A291791.P13770335902483273460

/-! ## A291791.P2400821926486901437

`A065475(lt[A159075(n)-1, A291914(n+3)]+1)+1`
-/

namespace A291791.P2400821926486901437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291914 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) + 1

end

end A291791.P2400821926486901437

/-! ## A291791.P17740818629117956311

`lt[2, A000005(A291934(n+1))]+1`
-/

namespace A291791.P17740818629117956311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A291934 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A291791.P17740818629117956311

/-!
# A291792: Numbers m such that Post's tag system started at the word (100)^m eventually dies (i.e., reaches the empty string).

The programs for A291792, there is no canonical definition to state claims against.
-/

/-! ## A291792.P12364314529519685457

`eq[0, A291793(n+1)]+1`
-/

namespace A291792.P12364314529519685457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291792.P12364314529519685457

/-! ## A291792.P13966953557449850866

`eq[0, A291794(n+1)]+1`
-/

namespace A291792.P13966953557449850866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291794 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291792.P13966953557449850866

/-! ## A291792.P7297597920177831557

`eq[1, A284121(n+1)]+1`
-/

namespace A291792.P7297597920177831557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A291792.P7297597920177831557

/-! ## A291792.P8065228923560028524

`eq[0, A291793(A028310(n))]`
-/

namespace A291792.P8065228923560028524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291793 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291792.P8065228923560028524

/-! ## A291792.P837844572453239522

`eq[1, A284121(A008619(A004273(n)))]`
-/

namespace A291792.P837844572453239522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291792.P837844572453239522

/-! ## A291792.P10047993450486339753

`eq[1, A284121(A233583(n+1))]`
-/

namespace A291792.P10047993450486339753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A291792.P10047993450486339753

/-!
# A291793: Period of orbit of Post's tag system applied to the word (100)^n (version 2), or -1 if the orbit increases without limit.

The programs for A291793, there is no canonical definition to state claims against.
-/

/-! ## A291793.P6055180997714021604

`xor(A166586(A284121(n+1)), A284121(n+1))`
-/

namespace A291793.P6055180997714021604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A166586 (A284121 (n + 1)).toNat) (A284121 (n + 1))

end

end A291793.P6055180997714021604

/-! ## A291793.P2093137879466567567

`A131209(A284121(n+1))-1`
-/

namespace A291793.P2093137879466567567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A284121 (n + 1)).toNat - 1

end

end A291793.P2093137879466567567

/-! ## A291793.P17041685301797141588

`A130758(or(1, A284121(n+1)))`
-/

namespace A291793.P17041685301797141588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130758 (Int.lor 1 (A284121 (n + 1))).toNat

end

end A291793.P17041685301797141588

/-! ## A291793.P8323458890962250032

`A075423(or(1, A284121(n+1))²)`
-/

namespace A291793.P8323458890962250032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075423 (Int.lor 1 (A284121 (n + 1)) ^ 2).toNat

end

end A291793.P8323458890962250032

/-! ## A291793.P1099512762465600545

`and(-2, A019554(A284121(n+1)²))`
-/

namespace A291793.P1099512762465600545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A019554 (A284121 (n + 1) ^ 2).toNat)

end

end A291793.P1099512762465600545

/-! ## A291793.P8115536895336670496

`A052928(A019554(A284121(n+1)²))`
-/

namespace A291793.P8115536895336670496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A019554 (A284121 (n + 1) ^ 2).toNat).toNat

end

end A291793.P8115536895336670496

/-! ## A291793.P14442636169228406584

`A284121(n+1)-A166586(A284121(n+1)²)`
-/

namespace A291793.P14442636169228406584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (n + 1) - A166586 (A284121 (n + 1) ^ 2).toNat

end

end A291793.P14442636169228406584

/-! ## A291793.P10774750221150191670

`A284121(n+1)-A178225(A284121(n+1)²)`
-/

namespace A291793.P10774750221150191670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284121 (n + 1) - A178225 (A284121 (n + 1) ^ 2).toNat

end

end A291793.P10774750221150191670

/-! ## A291793.P9417140909871988761

`A055396(A284121(n+1)²)*A284121(n+1)`
-/

namespace A291793.P9417140909871988761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A284121 (n + 1) ^ 2).toNat * A284121 (n + 1)

end

end A291793.P9417140909871988761

/-! ## A291793.P5542960756123677067

`A052928(A284121(n+1)²)/A284121(n+1)`
-/

namespace A291793.P5542960756123677067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052928 (A284121 (n + 1) ^ 2).toNat : ℚ) / (A284121 (n + 1) : ℚ)

end

end A291793.P5542960756123677067

/-! ## A291793.P1148773636423238231

`A158377(A284121(n+1)²)/A284121(n+1)`
-/

namespace A291793.P1148773636423238231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158377 (A284121 (n + 1) ^ 2).toNat : ℚ) / (A284121 (n + 1) : ℚ)

end

end A291793.P1148773636423238231

/-! ## A291793.P8889587449082527341

`A284121(n+1)%A000961(A284121(n+1)²)`
-/

namespace A291793.P8889587449082527341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284121 (n + 1)) (A000961 (A284121 (n + 1) ^ 2).toNat)

end

end A291793.P8889587449082527341

/-! ## A291793.P10816028320362980999

`and(2-A305265(n)², A284121(n+1))`
-/

namespace A291793.P10816028320362980999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 - A305265 n ^ 2) (A284121 (n + 1))

end

end A291793.P10816028320362980999

/-! ## A291793.P15418916989284265924

`and(A224077(A017137(n)), A284121(n+1))`
-/

namespace A291793.P15418916989284265924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A224077 (A017137 n).toNat) (A284121 (n + 1))

end

end A291793.P15418916989284265924

/-! ## A291793.P10551422770050150863

`and(A040930(n²), A284121(n+1))`
-/

namespace A291793.P10551422770050150863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040930 (n ^ 2)) (A284121 (n + 1))

end

end A291793.P10551422770050150863

/-! ## A291793.P10984175335486229605

`and(A224077(A027907(n²)), A284121(n+1))`
-/

namespace A291793.P10984175335486229605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A224077 (A027907 (n ^ 2)).toNat) (A284121 (n + 1))

end

end A291793.P10984175335486229605

/-! ## A291793.P7671237001683135423

`A052928(A284121(n+1)%A333277(n+1))`
-/

namespace A291793.P7671237001683135423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (Int.tmod (A284121 (n + 1)) (A333277 (n + 1))).toNat

end

end A291793.P7671237001683135423

/-!
# A291794: Consider Post's tag system applied to the word (100)^n; a(n) = length of first word we see that is in the cycle, if the orbit cycles, or 0 if the orbit reaches the empty string, or -1 if the orbit is unbounded.

The programs for A291794, there is no canonical definition to state claims against.
-/

/-! ## A291794.P3734072898990479798

`A291800(∑[2^(n+1)])`
-/

namespace A291794.P3734072898990479798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291800 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291794.P3734072898990479798

/-!
# A291795: Consider Post's tag system applied to the word (100)^n; a(n) = length of the longest word in the orbit, or -1 if the orbit is unbounded.

The programs for A291795, there is no canonical definition to state claims against.
-/

/-! ## A291795.P16010515457611355962

`A291801(∑[2^(n+1)])`
-/

namespace A291795.P16010515457611355962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291801 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291795.P16010515457611355962

/-!
# A291796: Consider Post's tag system applied to the word (100)^n; a(n) = position of the longest word in the orbit, or -1 if the orbit is unbounded.

The programs for A291796, there is no canonical definition to state claims against.
-/

/-! ## A291796.P3116164639196387669

`A291802(∑[2^(n+1)])`
-/

namespace A291796.P3116164639196387669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291802 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A291796.P3116164639196387669

/-!
# A291799: Take n-th word over {1,2} listed in A291797 and apply the Post tag system described in A284116 (but adapted to the alphabet {1,2}); a(n) = period of orbit of that word, or 0 if the orbit ends at the empty word.

The programs for A291799, there is no canonical definition to state claims against.
-/

/-! ## A291799.P5292136174790186256

`A057354(A291800(n+1))%A290441(n+1)`
-/

namespace A291799.P5292136174790186256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057354 (A291800 (n + 1)).toNat) (A290441 (n + 1))

end

end A291799.P5292136174790186256

/-! ## A291799.P3772929999204947386

`A057354(A291800(n+1)%A290439(n+2))`
-/

namespace A291799.P3772929999204947386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (Int.tmod (A291800 (n + 1)) (A290439 (n + 2))).toNat

end

end A291799.P3772929999204947386

