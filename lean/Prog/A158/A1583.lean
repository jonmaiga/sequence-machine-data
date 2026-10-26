import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A158301: Denominator of Bernoulli(n, -5/6).

The programs for A158301, the canonical program `A158301.P14699896372540319621` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158301 has offset 0).

The definition of A158301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158301.P14699896372540319621

`A158207(n)/A000034(A289207(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A158301

/-- `A158207(n)/A000034(A289207(n))` -/
def P14699896372540319621.Spec : Prop :=
  ∀ n, P14699896372540319621.a n = (A158301 n : ℚ)

end A158301

/-! ## A158301.P5825222311473741554

`A158077(n)/A000034(A289207(n))²`
-/

namespace A158301.P5825222311473741554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158077 n : ℚ) / (A000034 (A289207 n).toNat ^ 2 : ℚ)

end

end A158301.P5825222311473741554

namespace A158301

/-- `A158077(n)/A000034(A289207(n))²` -/
def P5825222311473741554.Spec : Prop :=
  ∀ n, P5825222311473741554.a n = (A158301 n : ℚ)

end A158301

/-! ## A158301.P16431834392645228390

`A158207(n)/A000034(A233583(n+1))`
-/

namespace A158301.P16431834392645228390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n : ℚ) / (A000034 (A233583 (n + 1)).toNat : ℚ)

end

end A158301.P16431834392645228390

namespace A158301

/-- `A158207(n)/A000034(A233583(n+1))` -/
def P16431834392645228390.Spec : Prop :=
  ∀ n, P16431834392645228390.a n = (A158301 n : ℚ)

end A158301

/-! ## A158301.P11545168471842251595

`A158207(n)/A158077(n)*A158207(n)`
-/

namespace A158301.P11545168471842251595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n : ℚ) / (A158077 n : ℚ) * (A158207 n : ℚ)

end

end A158301.P11545168471842251595

namespace A158301

/-- `A158207(n)/A158077(n)*A158207(n)` -/
def P11545168471842251595.Spec : Prop :=
  ∀ n, P11545168471842251595.a n = (A158301 n : ℚ)

end A158301

/-! ## A158301.P11269935531700759340

`lcm(A000034(n), A158207(n))/A000034(n)`
-/

namespace A158301.P11269935531700759340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 n) (A158207 n) : ℚ) / (A000034 n : ℚ)

end

end A158301.P11269935531700759340

namespace A158301

/-- `lcm(A000034(n), A158207(n))/A000034(n)` -/
def P11269935531700759340.Spec : Prop :=
  ∀ n, P11269935531700759340.a n = (A158301 n : ℚ)

end A158301

/-! ## A158301.P15413065854741424266

`A158077(n)/A000034(A233583(n+1))²`
-/

namespace A158301.P15413065854741424266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158077 n : ℚ) / (A000034 (A233583 (n + 1)).toNat ^ 2 : ℚ)

end

end A158301.P15413065854741424266

namespace A158301

/-- `A158077(n)/A000034(A233583(n+1))²` -/
def P15413065854741424266.Spec : Prop :=
  ∀ n, P15413065854741424266.a n = (A158301 n : ℚ)

end A158301

/-! ## A158301.P3804166912525513214

`A158207(n)²/A158077(n)`
-/

namespace A158301.P3804166912525513214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158207 n ^ 2 : ℚ) / (A158077 n : ℚ)

end

end A158301.P3804166912525513214

namespace A158301

/-- `A158207(n)²/A158077(n)` -/
def P3804166912525513214.Spec : Prop :=
  ∀ n, P3804166912525513214.a n = (A158301 n : ℚ)

end A158301

/-!
# A158302: "1" followed by repeats of 2^k deleting all 4^k, k > 0.

The programs for A158302, the canonical program `A158302.P13707864566656512103` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158302 has offset 0).

The definition of A158302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158302.P13707864566656512103

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158302

/-- `4*a(n-2)` -/
def P13707864566656512103.Spec : Prop :=
  ∀ n, (P13707864566656512103.a n : ℤ) = A158302 n

theorem P13707864566656512103.correct : P13707864566656512103.Spec := by
  intro n
  simp only [A158302]

end A158302

/-! ## A158302.P9949050272810838884

`ceil(2^or(1, n-1))`
-/

namespace A158302.P9949050272810838884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉

end

end A158302.P9949050272810838884

namespace A158302

/-- `ceil(2^or(1, n-1))` -/
def P9949050272810838884.Spec : Prop :=
  ∀ n, P9949050272810838884.a n = A158302 n

end A158302

/-! ## A158302.P9635552584252447118

`round(2^or(1, n-1))`
-/

namespace A158302.P9635552584252447118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ))

end

end A158302.P9635552584252447118

namespace A158302

/-- `round(2^or(1, n-1))` -/
def P9635552584252447118.Spec : Prop :=
  ∀ n, P9635552584252447118.a n = A158302 n

end A158302

/-! ## A158302.P12238179781907363524

`ceil(2^n/gcd(2, n))`
-/

namespace A158302.P12238179781907363524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n : ℚ) / (Nat.gcd 2 n : ℚ)⌉

end

end A158302.P12238179781907363524

namespace A158302

/-- `ceil(2^n/gcd(2, n))` -/
def P12238179781907363524.Spec : Prop :=
  ∀ n, P12238179781907363524.a n = A158302 n

end A158302

/-! ## A158302.P7679089707020953044

`ceil(2^-or(1, -n))`
-/

namespace A158302.P7679089707020953044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (-Int.lor 1 (-(n : ℤ)) : ℤ)⌉

end

end A158302.P7679089707020953044

namespace A158302

/-- `ceil(2^-or(1, -n))` -/
def P7679089707020953044.Spec : Prop :=
  ∀ n, P7679089707020953044.a n = A158302 n

end A158302

/-! ## A158302.P14875789178481594275

`round(2^-or(1, -n))`
-/

namespace A158302.P14875789178481594275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (-Int.lor 1 (-(n : ℤ)) : ℤ))

end

end A158302.P14875789178481594275

namespace A158302

/-- `round(2^-or(1, -n))` -/
def P14875789178481594275.Spec : Prop :=
  ∀ n, P14875789178481594275.a n = A158302 n

end A158302

/-! ## A158302.P17112963043999237832

`∏[gcd(4, ∏{d}[n+1, #])]`
-/

namespace A158302.P17112963043999237832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (∏ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158302.P17112963043999237832

namespace A158302

/-- `∏[gcd(4, ∏{d}[n+1, #])]` -/
def P17112963043999237832.Spec : Prop :=
  ∀ n, (P17112963043999237832.a n : ℤ) = A158302 n

end A158302

/-! ## A158302.P15192539433955510137

`ogf((1+2x-2x^2)/(1-4x^2))`
-/

namespace A158302.P15192539433955510137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -2] [1, 0, -4] n

end

end A158302.P15192539433955510137

namespace A158302

/-- `ogf((1+2x-2x^2)/(1-4x^2))` -/
def P15192539433955510137.Spec : Prop :=
  ∀ n, P15192539433955510137.a n = A158302 n

end A158302

/-! ## A158302.P11780387688048438084

`∏[5-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A158302.P11780387688048438084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A158302.P11780387688048438084

namespace A158302

/-- `∏[5-a(n-1)]` -/
def P11780387688048438084.Spec : Prop :=
  ∀ n, P11780387688048438084.a n = A158302 n

end A158302

/-! ## A158302.P12937707326018725712

`ceil(2^(n-(n+1)%2))`
-/

namespace A158302.P12937707326018725712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - (((n + 1) % 2 : ℕ) : ℤ) : ℤ)⌉

end

end A158302.P12937707326018725712

namespace A158302

/-- `ceil(2^(n-(n+1)%2))` -/
def P12937707326018725712.Spec : Prop :=
  ∀ n, P12937707326018725712.a n = A158302 n

end A158302

/-! ## A158302.P10976562612312032871

`ceil(2^(and(1, n)+n-1))`
-/

namespace A158302.P10976562612312032871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((Nat.land 1 n : ℤ) + ((n : ℤ) - 1) : ℤ)⌉

end

end A158302.P10976562612312032871

namespace A158302

/-- `ceil(2^(and(1, n)+n-1))` -/
def P10976562612312032871.Spec : Prop :=
  ∀ n, P10976562612312032871.a n = A158302 n

end A158302

/-! ## A158302.P7737034434881966994

`round(2^(and(1, n)+n-1))`
-/

namespace A158302.P7737034434881966994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.land 1 n : ℤ) + ((n : ℤ) - 1) : ℤ))

end

end A158302.P7737034434881966994

namespace A158302

/-- `round(2^(and(1, n)+n-1))` -/
def P7737034434881966994.Spec : Prop :=
  ∀ n, P7737034434881966994.a n = A158302 n

end A158302

/-! ## A158302.P5446155621410263160

`ceil(2^(n-and(1, n-1)))`
-/

namespace A158302.P5446155621410263160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - Int.land 1 ((n : ℤ) - 1) : ℤ)⌉

end

end A158302.P5446155621410263160

namespace A158302

/-- `ceil(2^(n-and(1, n-1)))` -/
def P5446155621410263160.Spec : Prop :=
  ∀ n, P5446155621410263160.a n = A158302 n

end A158302

/-! ## A158302.P7556623247973620148

`round(2^(n-and(1, n-1)))`
-/

namespace A158302.P7556623247973620148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - Int.land 1 ((n : ℤ) - 1) : ℤ))

end

end A158302.P7556623247973620148

namespace A158302

/-- `round(2^(n-and(1, n-1)))` -/
def P7556623247973620148.Spec : Prop :=
  ∀ n, P7556623247973620148.a n = A158302 n

end A158302

/-! ## A158302.P14755188623347961860

`2^(n-char[2*(n+1)])`
-/

namespace A158302.P14755188623347961860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A158302.P14755188623347961860

namespace A158302

/-- `2^(n-char[2*(n+1)])` -/
def P14755188623347961860.Spec : Prop :=
  ∀ n, P14755188623347961860.a n = (A158302 n : ℚ)

end A158302

/-! ## A158302.P3152307064819766156

`-floor((-2)^or(1, n-1))`
-/

namespace A158302.P3152307064819766156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊(-2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌋

end

end A158302.P3152307064819766156

namespace A158302

/-- `-floor((-2)^or(1, n-1))` -/
def P3152307064819766156.Spec : Prop :=
  ∀ n, P3152307064819766156.a n = A158302 n

end A158302

/-! ## A158302.P17968357701739597358

`2^n/a(∑[(-1)^n])` with `a(0)=1`
-/

namespace A158302.P17968357701739597358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℚ) / a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A158302.P17968357701739597358

namespace A158302

/-- `2^n/a(∑[(-1)^n])` -/
def P17968357701739597358.Spec : Prop :=
  ∀ n, P17968357701739597358.a n = (A158302 n : ℚ)

end A158302

/-! ## A158302.P13940656390707956051

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A158302.P13940656390707956051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A158302.P13940656390707956051

namespace A158302

/-- `a(n-2)/(1/2)²` -/
def P13940656390707956051.Spec : Prop :=
  ∀ n, P13940656390707956051.a n = (A158302 n : ℚ)

end A158302

/-! ## A158302.P3941082190313918605

`floor(a(n-2)/(1-3/4))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A158302.P3941082190313918605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A158302.P3941082190313918605

namespace A158302

/-- `floor(a(n-2)/(1-3/4))` -/
def P3941082190313918605.Spec : Prop :=
  ∀ n, P3941082190313918605.a n = A158302 n

end A158302

/-!
# A158303: Triangle read by rows, A007318 * (A158300 * 0^(n-k)).

The programs for A158303, there is no canonical definition to state claims against.
-/

/-! ## A158303.P9507995723269216431

`A124845(n)*A232089(n)`
-/

namespace A158303.P9507995723269216431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124845 n * A232089 n

end

end A158303.P9507995723269216431

/-! ## A158303.P5187843339551310667

`A059268(n)%3*A082137(n)`
-/

namespace A158303.P5187843339551310667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059268 n) 3 * A082137 n

end

end A158303.P5187843339551310667

/-! ## A158303.P15831382845730739111

`A135837(n+1)²/A124927(n)`
-/

namespace A158303.P15831382845730739111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135837 (n + 1) ^ 2 : ℚ) / (A124927 n : ℚ)

end

end A158303.P15831382845730739111

/-! ## A158303.P12475205320280483123

`gcd(2, A002260(n+1))*A082137(n)`
-/

namespace A158303.P12475205320280483123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A002260 (n + 1)) : ℤ) * A082137 n

end

end A158303.P12475205320280483123

/-! ## A158303.P13761413784869018421

`A000034(A002262(n))*A082137(n)`
-/

namespace A158303.P13761413784869018421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002262 n).toNat * A082137 n

end

end A158303.P13761413784869018421

/-! ## A158303.P5804831733396584264

`A000010(A059268(n))*A124845(n)`
-/

namespace A158303.P5804831733396584264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A124845 n

end

end A158303.P5804831733396584264

/-! ## A158303.P11627640034907568051

`A087079(A002262(n))*A124845(n)`
-/

namespace A158303.P11627640034907568051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 (A002262 n).toNat * A124845 n

end

end A158303.P11627640034907568051

/-! ## A158303.P7232394244724829968

`A007318(n)*A327171(A059268(n))`
-/

namespace A158303.P7232394244724829968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A327171 (A059268 n).toNat

end

end A158303.P7232394244724829968

/-! ## A158303.P18382207982038577657

`A013609(n)/A040001(A002262(n))`
-/

namespace A158303.P18382207982038577657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A040001 (A002262 n).toNat : ℚ)

end

end A158303.P18382207982038577657

/-! ## A158303.P11826568521023070078

`A078898(A135837(n+1)²/A007318(n))`
-/

namespace A158303.P11826568521023070078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.roundAway ((A135837 (n + 1) ^ 2 : ℚ) / (A007318 n : ℚ))).toNat

end

end A158303.P11826568521023070078

/-!
# A158304: Numbers k such that k^2 contains no digit greater than 4.

The programs for A158304, there is no canonical definition to state claims against.
-/

/-! ## A158304.P14410216970474765509

`sqrt(A158082(n+1))`
-/

namespace A158304.P14410216970474765509
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A158082 (n + 1) : ℝ)

end

end A158304.P14410216970474765509

/-! ## A158304.P2085962030991488161

`A158082(n+1)^(2/A040002(n))`
-/

namespace A158304.P2085962030991488161
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A158082 (n + 1) : ℝ) ^ (2 / (A040002 n : ℚ) : ℝ)

end

end A158304.P2085962030991488161

/-! ## A158304.P14118394517405525808

`A158082(n+1)^2^(A159075(n)-1)`
-/

namespace A158304.P14118394517405525808
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A158082 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A159075 n - 1 : ℤ) : ℝ)

end

end A158304.P14118394517405525808

/-! ## A158304.P9323746434430306735

`A158082(n+1)^(A006519(2*n+1)/2)`
-/

namespace A158304.P9323746434430306735
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A158082 (n + 1) : ℝ) ^ ((A006519 (2 * n + 1) : ℚ) / 2 : ℝ)

end

end A158304.P9323746434430306735

/-! ## A158304.P11993764485056411476

`lt[A028907(n)%10, 5]`
-/

namespace A158304.P11993764485056411476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028907 n) 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A158304.P11993764485056411476

/-!
# A158305: a(n) = 324n^2 - 2n.

The programs for A158305, the canonical program `A158305.P15718906776568236799` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158305 has offset 1).

The definition of A158305 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*(n+1)²-2*(n+1)` (program `A158305.P15718906776568236799`, by `A158305.P15718906776568236799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158305.P15718906776568236799

`324*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158305

/-- `324*(n+1)²-2*(n+1)` -/
def P15718906776568236799.Spec : Prop :=
  ∀ n, P15718906776568236799.a n = A158305 (n + 1)

theorem P15718906776568236799.correct : P15718906776568236799.Spec := by
  intro n
  simp only [A158305, Nat.add_sub_cancel]

end A158305

/-! ## A158305.P1059394590955504851

`(n+1)*(A158306(n+1)-1)`
-/

namespace A158305.P1059394590955504851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158306 (n + 1) - 1)

end

end A158305.P1059394590955504851

namespace A158305

/-- `(n+1)*(A158306(n+1)-1)` -/
def P1059394590955504851.Spec : Prop :=
  ∀ n, P1059394590955504851.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P14789224938691374936

`2*(n+1)*A157954(n+1)`
-/

namespace A158305.P14789224938691374936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157954 (n + 1))

end

end A158305.P14789224938691374936

namespace A158305

/-- `2*(n+1)*A157954(n+1)` -/
def P14789224938691374936.Spec : Prop :=
  ∀ n, P14789224938691374936.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P3193348631448518089

`(n+1)*(A158272(n+1)-3)`
-/

namespace A158305.P3193348631448518089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158272 (n + 1) - 3)

end

end A158305.P3193348631448518089

namespace A158305

/-- `(n+1)*(A158272(n+1)-3)` -/
def P3193348631448518089.Spec : Prop :=
  ∀ n, P3193348631448518089.a n = A158305 (n + 1)

theorem P3193348631448518089.correct : P3193348631448518089.Spec := by
  intro n
  simp only [A158305, Nat.add_sub_cancel, A158305.P3193348631448518089.a, A158305.P15718906776568236799.a, A158272, A158272.P16060879512858708277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158305

/-! ## A158305.P17579970448345207574

`lcm(2, A004767(n)+1-A158271(n+1))`
-/

namespace A158305.P17579970448345207574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004767 n + 1 - A158271 (n + 1))

end

end A158305.P17579970448345207574

namespace A158305

/-- `lcm(2, A004767(n)+1-A158271(n+1))` -/
def P17579970448345207574.Spec : Prop :=
  ∀ n, (P17579970448345207574.a n : ℤ) = A158305 (n + 1)

end A158305

/-! ## A158305.P4308841447850047705

`A157953(2*(n+1))`
-/

namespace A158305.P4308841447850047705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (2 * (n + 1))

end

end A158305.P4308841447850047705

namespace A158305

/-- `A157953(2*(n+1))` -/
def P4308841447850047705.Spec : Prop :=
  ∀ n, P4308841447850047705.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P1252088945003906738

`(A158123(2*(n+1))-2)*2*(n+1)`
-/

namespace A158305.P1252088945003906738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158123 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158305.P1252088945003906738

namespace A158305

/-- `(A158123(2*(n+1))-2)*2*(n+1)` -/
def P1252088945003906738.Spec : Prop :=
  ∀ n, P1252088945003906738.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P17227472881642560612

`A158271(2*(n+1))%A158271(n+1)`
-/

namespace A158305.P17227472881642560612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158271 (2 * (n + 1))) (A158271 (n + 1))

end

end A158305.P17227472881642560612

namespace A158305

/-- `A158271(2*(n+1))%A158271(n+1)` -/
def P17227472881642560612.Spec : Prop :=
  ∀ n, P17227472881642560612.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P13589902765816543099

`2*(A158598(2*(n+1))+A000124(2*n+1))`
-/

namespace A158305.P13589902765816543099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158598 (2 * (n + 1)) + A000124 (2 * n + 1))

end

end A158305.P13589902765816543099

namespace A158305

/-- `2*(A158598(2*(n+1))+A000124(2*n+1))` -/
def P13589902765816543099.Spec : Prop :=
  ∀ n, P13589902765816543099.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P16921093247761378663

`(n+1)*A350522(A239129(n+1))`
-/

namespace A158305.P16921093247761378663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350522 (A239129 (n + 1)).toNat

end

end A158305.P16921093247761378663

namespace A158305

/-- `(n+1)*A350522(A239129(n+1))` -/
def P16921093247761378663.Spec : Prop :=
  ∀ n, P16921093247761378663.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P6796828838553058923

`(n+1)*A350522(A017257(2*n+1))`
-/

namespace A158305.P6796828838553058923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A350522 (A017257 (2 * n + 1)).toNat

end

end A158305.P6796828838553058923

namespace A158305

/-- `(n+1)*A350522(A017257(2*n+1))` -/
def P6796828838553058923.Spec : Prop :=
  ∀ n, P6796828838553058923.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P13324882893820444566

`(n+1)*A017245(A016969(A016969(n)))`
-/

namespace A158305.P13324882893820444566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017245 (A016969 (A016969 n).toNat).toNat

end

end A158305.P13324882893820444566

namespace A158305

/-- `(n+1)*A017245(A016969(A016969(n)))` -/
def P13324882893820444566.Spec : Prop :=
  ∀ n, P13324882893820444566.a n = A158305 (n + 1)

end A158305

/-!
# A158306: a(n) = 324n - 1.

The programs for A158306, the canonical program `A158306.P11794498770987135353` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158306 has offset 1).

The definition of A158306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `324*(n+1)-1` (program `A158306.P11794498770987135353`, by `A158306.P11794498770987135353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158306.P11794498770987135353

`324*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158306

/-- `324*(n+1)-1` -/
def P11794498770987135353.Spec : Prop :=
  ∀ n, P11794498770987135353.a n = A158306 (n + 1)

theorem P11794498770987135353.correct : P11794498770987135353.Spec := by
  intro n
  simp only [A158306, Nat.add_sub_cancel]

end A158306

/-!
# A158307: a(n) = 361*n^2 - 2*n.

The programs for A158307, the canonical program `A158307.P6603017654892669029` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158307 has offset 1).

The definition of A158307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `361*(n+1)²-2*(n+1)` (program `A158307.P6603017654892669029`, by `A158307.P6603017654892669029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158307.P6603017654892669029

`361*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158307

/-- `361*(n+1)²-2*(n+1)` -/
def P6603017654892669029.Spec : Prop :=
  ∀ n, P6603017654892669029.a n = A158307 (n + 1)

theorem P6603017654892669029.correct : P6603017654892669029.Spec := by
  intro n
  simp only [A158307, Nat.add_sub_cancel]

end A158307

/-! ## A158307.P13230686856780200614

`(n+1)*(A158308(n+1)-1)`
-/

namespace A158307.P13230686856780200614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158308 (n + 1) - 1)

end

end A158307.P13230686856780200614

namespace A158307

/-- `(n+1)*(A158308(n+1)-1)` -/
def P13230686856780200614.Spec : Prop :=
  ∀ n, P13230686856780200614.a n = A158307 (n + 1)

end A158307

/-! ## A158307.P1877878735562015657

`(n+1)*(A158310(n+1)-3)`
-/

namespace A158307.P1877878735562015657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158310 (n + 1) - 3)

end

end A158307.P1877878735562015657

namespace A158307

/-- `(n+1)*(A158310(n+1)-3)` -/
def P1877878735562015657.Spec : Prop :=
  ∀ n, P1877878735562015657.a n = A158307 (n + 1)

theorem P1877878735562015657.correct : P1877878735562015657.Spec := by
  intro n
  simp only [A158307, Nat.add_sub_cancel, A158307.P1877878735562015657.a, A158307.P6603017654892669029.a, A158310, A158310.P12871068091217849425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158307

/-! ## A158307.P1501783457500777954

`A158309(2*(n+1))%A158309(n+1)`
-/

namespace A158307.P1501783457500777954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158309 (2 * (n + 1))) (A158309 (n + 1))

end

end A158307.P1501783457500777954

namespace A158307

/-- `A158309(2*(n+1))%A158309(n+1)` -/
def P1501783457500777954.Spec : Prop :=
  ∀ n, P1501783457500777954.a n = A158307 (n + 1)

end A158307

/-!
# A158308: a(n) = 361*n - 1.

The programs for A158308, the canonical program `A158308.P16249798360513858787` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158308 has offset 1).

The definition of A158308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `361*(n+1)-1` (program `A158308.P16249798360513858787`, by `A158308.P16249798360513858787.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158308.P16249798360513858787

`361*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158308

/-- `361*(n+1)-1` -/
def P16249798360513858787.Spec : Prop :=
  ∀ n, P16249798360513858787.a n = A158308 (n + 1)

theorem P16249798360513858787.correct : P16249798360513858787.Spec := by
  intro n
  simp only [A158308, Nat.add_sub_cancel]

end A158308

/-!
# A158309: a(n) = 361*n^2 + 2*n.

The programs for A158309, the canonical program `A158309.P12447839275717793896` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158309 has offset 1).

The definition of A158309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `361*(n+1)²+2*(n+1)` (program `A158309.P12447839275717793896`, by `A158309.P12447839275717793896.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158309.P12447839275717793896

`361*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158309

/-- `361*(n+1)²+2*(n+1)` -/
def P12447839275717793896.Spec : Prop :=
  ∀ n, (P12447839275717793896.a n : ℤ) = A158309 (n + 1)

theorem P12447839275717793896.correct : P12447839275717793896.Spec := by
  intro n
  simp only [A158309, Nat.add_sub_cancel]

end A158309

/-! ## A158309.P17644564701888753215

`(n+1)*(A158310(n+1)+1)`
-/

namespace A158309.P17644564701888753215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158310 (n + 1) + 1)

end

end A158309.P17644564701888753215

namespace A158309

/-- `(n+1)*(A158310(n+1)+1)` -/
def P17644564701888753215.Spec : Prop :=
  ∀ n, P17644564701888753215.a n = A158309 (n + 1)

theorem P17644564701888753215.correct : P17644564701888753215.Spec := by
  intro n
  simp only [A158309, Nat.add_sub_cancel, A158309.P17644564701888753215.a, A158309.P12447839275717793896.a, A158310, A158310.P12871068091217849425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158309

/-! ## A158309.P8107020838323043071

`(n+1)*(A158308(n+1)+3)`
-/

namespace A158309.P8107020838323043071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158308 (n + 1) + 3)

end

end A158309.P8107020838323043071

namespace A158309

/-- `(n+1)*(A158308(n+1)+3)` -/
def P8107020838323043071.Spec : Prop :=
  ∀ n, P8107020838323043071.a n = A158309 (n + 1)

end A158309

/-! ## A158309.P12746249663731956615

`A052410(A031697(n+1))`
-/

namespace A158309.P12746249663731956615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A031697 (n + 1)).toNat

end

end A158309.P12746249663731956615

namespace A158309

/-- `A052410(A031697(n+1))` -/
def P12746249663731956615.Spec : Prop :=
  ∀ n, P12746249663731956615.a n = A158309 (n + 1)

end A158309

/-!
# A158310: a(n) = 361*n + 1.

The programs for A158310, the canonical program `A158310.P12871068091217849425` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158310 has offset 1).

The definition of A158310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `361*(n+1)+1` (program `A158310.P12871068091217849425`, by `A158310.P12871068091217849425.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158310.P12871068091217849425

`361*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158310

/-- `361*(n+1)+1` -/
def P12871068091217849425.Spec : Prop :=
  ∀ n, (P12871068091217849425.a n : ℤ) = A158310 (n + 1)

theorem P12871068091217849425.correct : P12871068091217849425.Spec := by
  intro n
  simp only [A158310, Nat.add_sub_cancel]

end A158310

/-!
# A158312: a(n) = 400*n^2 + 2*n.

The programs for A158312, the canonical program `A158312.P11246815781174736915` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158312 has offset 1).

The definition of A158312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `400*(n+1)²+2*(n+1)` (program `A158312.P11246815781174736915`, by `A158312.P11246815781174736915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158312.P11246815781174736915

`400*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158312

/-- `400*(n+1)²+2*(n+1)` -/
def P11246815781174736915.Spec : Prop :=
  ∀ n, (P11246815781174736915.a n : ℤ) = A158312 (n + 1)

theorem P11246815781174736915.correct : P11246815781174736915.Spec := by
  intro n
  simp only [A158312, Nat.add_sub_cancel]

end A158312

/-! ## A158312.P111954567190460776

`(n+1)*(A158313(n+1)+1)`
-/

namespace A158312.P111954567190460776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158313 (n + 1) + 1)

end

end A158312.P111954567190460776

namespace A158312

/-- `(n+1)*(A158313(n+1)+1)` -/
def P111954567190460776.Spec : Prop :=
  ∀ n, P111954567190460776.a n = A158312 (n + 1)

theorem P111954567190460776.correct : P111954567190460776.Spec := by
  intro n
  simp only [A158312, Nat.add_sub_cancel, A158312.P111954567190460776.a, A158312.P11246815781174736915.a, A158313, A158313.P10216603484988806898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158312

/-! ## A158312.P12622973878060964262

`(n+1)*(A158317(n+1)+3)`
-/

namespace A158312.P12622973878060964262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158317 (n + 1) + 3)

end

end A158312.P12622973878060964262

namespace A158312

/-- `(n+1)*(A158317(n+1)+3)` -/
def P12622973878060964262.Spec : Prop :=
  ∀ n, P12622973878060964262.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P9773680364167853644

`2*(n+1)*A157956(n+1)`
-/

namespace A158312.P9773680364167853644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157956 (n + 1))

end

end A158312.P9773680364167853644

namespace A158312

/-- `2*(n+1)*A157956(n+1)` -/
def P9773680364167853644.Spec : Prop :=
  ∀ n, P9773680364167853644.a n = A158312 (n + 1)

theorem P9773680364167853644.correct : P9773680364167853644.Spec := by
  intro n
  simp only [A158312, Nat.add_sub_cancel, A158312.P9773680364167853644.a, A158312.P11246815781174736915.a, A157956, A157956.P2998159344433925523.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158312

/-! ## A158312.P6809121402165867006

`A055438(2*(n+1))`
-/

namespace A158312.P6809121402165867006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055438 (2 * (n + 1))

end

end A158312.P6809121402165867006

namespace A158312

/-- `A055438(2*(n+1))` -/
def P6809121402165867006.Spec : Prop :=
  ∀ n, P6809121402165867006.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P17728785582081163417

`2*(A157916(2*(n+1))+n)`
-/

namespace A158312.P17728785582081163417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157916 (2 * (n + 1)) + (n : ℤ))

end

end A158312.P17728785582081163417

namespace A158312

/-- `2*(A157916(2*(n+1))+n)` -/
def P17728785582081163417.Spec : Prop :=
  ∀ n, P17728785582081163417.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P5847615228893886697

`2*(n+1)*A158128(2*(n+1))`
-/

namespace A158312.P5847615228893886697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158128 (2 * (n + 1))

end

end A158312.P5847615228893886697

namespace A158312

/-- `2*(n+1)*A158128(2*(n+1))` -/
def P5847615228893886697.Spec : Prop :=
  ∀ n, P5847615228893886697.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P16205285350873949768

`(n+1)*A016825(A008592(A008592(n+1)))`
-/

namespace A158312.P16205285350873949768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016825 (A008592 (A008592 (n + 1)).toNat).toNat

end

end A158312.P16205285350873949768

namespace A158312

/-- `(n+1)*A016825(A008592(A008592(n+1)))` -/
def P16205285350873949768.Spec : Prop :=
  ∀ n, P16205285350873949768.a n = A158312 (n + 1)

end A158312

/-!
# A158313: a(n) = 400 * n + 1.

The programs for A158313, the canonical program `A158313.P10216603484988806898` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158313 has offset 1).

The definition of A158313 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `400*(n+1)+1` (program `A158313.P10216603484988806898`, by `A158313.P10216603484988806898.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158313.P10216603484988806898

`400*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158313

/-- `400*(n+1)+1` -/
def P10216603484988806898.Spec : Prop :=
  ∀ n, (P10216603484988806898.a n : ℤ) = A158313 (n + 1)

theorem P10216603484988806898.correct : P10216603484988806898.Spec := by
  intro n
  simp only [A158313, Nat.add_sub_cancel]

end A158313

/-!
# A158314: Consider a twin prime pair (p, q=p+2) such that the number of prime digits in p is equal to the number of odd digits in q; sequence lists values of p.

The programs for A158314, there is no canonical definition to state claims against.
-/

/-! ## A158314.P279421182350518736

`A225184(∑{d}[n^3*10^(n-1), gcd(7, #)]+2)`
-/

namespace A158314.P279421182350518736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225184 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.gcd 7 d + 2)

end

end A158314.P279421182350518736

/-!
# A158315: A158280(n)/7.

The programs for A158315, the canonical program `A158315.P7807818137616395365` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158315 has offset 0).

The definition of A158315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158315.P7807818137616395365

`A158280(n)/7`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A158315

/-- `A158280(n)/7` -/
def P7807818137616395365.Spec : Prop :=
  ∀ n, P7807818137616395365.a n = (A158315 n : ℚ)

end A158315

/-! ## A158315.P16701910334960352950

`∏{e}[Δ[n²], C(#+2, 2)]`
-/

namespace A158315.P16701910334960352950
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 2) 2

end

end A158315.P16701910334960352950

namespace A158315

/-- `∏{e}[Δ[n²], C(#+2, 2)]` -/
def P16701910334960352950.Spec : Prop :=
  ∀ n, (P16701910334960352950.a n : ℤ) = A158315 n

end A158315

/-! ## A158315.P17909091817384515722

`∏{e}[4*n+2, C(#+2, 2)]/3`
-/

namespace A158315.P17909091817384515722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℚ) / 3

end

end A158315.P17909091817384515722

namespace A158315

/-- `∏{e}[4*n+2, C(#+2, 2)]/3` -/
def P17909091817384515722.Spec : Prop :=
  ∀ n, P17909091817384515722.a n = (A158315 n : ℚ)

end A158315

/-! ## A158315.P12417511754082959937

`∏{e}[2*n+1, C(#+2, 2)]%comp[∑[n]]`
-/

namespace A158315.P12417511754082959937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A158315.P12417511754082959937

namespace A158315

/-- `∏{e}[2*n+1, C(#+2, 2)]%comp[∑[n]]` -/
def P12417511754082959937.Spec : Prop :=
  ∀ n, (P12417511754082959937.a n : ℤ) = A158315 n

end A158315

/-! ## A158315.P8029305840428105480

`A133700(Δ[n²])`
-/

namespace A158315.P8029305840428105480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158315.P8029305840428105480

namespace A158315

/-- `A133700(Δ[n²])` -/
def P8029305840428105480.Spec : Prop :=
  ∀ n, P8029305840428105480.a n = A158315 n

end A158315

/-! ## A158315.P7091135911142325949

`A145399(Δ[n²])`
-/

namespace A158315.P7091135911142325949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158315.P7091135911142325949

namespace A158315

/-- `A145399(Δ[n²])` -/
def P7091135911142325949.Spec : Prop :=
  ∀ n, P7091135911142325949.a n = A158315 n

end A158315

/-! ## A158315.P8695755034771614168

`A145511(Δ[n²])`
-/

namespace A158315.P8695755034771614168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158315.P8695755034771614168

namespace A158315

/-- `A145511(Δ[n²])` -/
def P8695755034771614168.Spec : Prop :=
  ∀ n, P8695755034771614168.a n = A158315 n

end A158315

/-! ## A158315.P11795639999512771349

`A288571(Δ[n²])`
-/

namespace A158315.P11795639999512771349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288571 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158315.P11795639999512771349

namespace A158315

/-- `A288571(Δ[n²])` -/
def P11795639999512771349.Spec : Prop :=
  ∀ n, P11795639999512771349.a n = A158315 n

end A158315

/-! ## A158315.P17485744990350658279

`A369100(Δ[n²])`
-/

namespace A158315.P17485744990350658279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369100 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158315.P17485744990350658279

namespace A158315

/-- `A369100(Δ[n²])` -/
def P17485744990350658279.Spec : Prop :=
  ∀ n, P17485744990350658279.a n = A158315 n

end A158315

/-! ## A158315.P5055753860963301018

`∑{d}[Δ[n²], A000005(#)]`
-/

namespace A158315.P5055753860963301018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A158315.P5055753860963301018

namespace A158315

/-- `∑{d}[Δ[n²], A000005(#)]` -/
def P5055753860963301018.Spec : Prop :=
  ∀ n, P5055753860963301018.a n = A158315 n

end A158315

/-! ## A158315.P18092743172062638597

`abs(A288571(2*n+1))`
-/

namespace A158315.P18092743172062638597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288571 (2 * n + 1)|

end

end A158315.P18092743172062638597

namespace A158315

/-- `abs(A288571(2*n+1))` -/
def P18092743172062638597.Spec : Prop :=
  ∀ n, P18092743172062638597.a n = A158315 n

end A158315

/-! ## A158315.P2819499015458490762

`abs(A369100(2*n+1))`
-/

namespace A158315.P2819499015458490762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A369100 (2 * n + 1)|

end

end A158315.P2819499015458490762

namespace A158315

/-- `abs(A369100(2*n+1))` -/
def P2819499015458490762.Spec : Prop :=
  ∀ n, P2819499015458490762.a n = A158315 n

end A158315

/-! ## A158315.P10152411452547482326

`∑{d}[2*n+1, A060764(#)]`
-/

namespace A158315.P10152411452547482326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060764 d

end

end A158315.P10152411452547482326

namespace A158315

/-- `∑{d}[2*n+1, A060764(#)]` -/
def P10152411452547482326.Spec : Prop :=
  ∀ n, P10152411452547482326.a n = A158315 n

end A158315

/-! ## A158315.P7930051067898196479

`∑{d}[2*n+1, A349211(#)]`
-/

namespace A158315.P7930051067898196479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349211 d

end

end A158315.P7930051067898196479

namespace A158315

/-- `∑{d}[2*n+1, A349211(#)]` -/
def P7930051067898196479.Spec : Prop :=
  ∀ n, P7930051067898196479.a n = A158315 n

end A158315

/-! ## A158315.P10793366350441836453

`∑{d}[2*n+1, A349213(#)]`
-/

namespace A158315.P10793366350441836453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349213 d

end

end A158315.P10793366350441836453

namespace A158315

/-- `∑{d}[2*n+1, A349213(#)]` -/
def P10793366350441836453.Spec : Prop :=
  ∀ n, P10793366350441836453.a n = A158315 n

end A158315

/-! ## A158315.P5990765025785844607

`∏{e}[2*n+1, A025738(#)]`
-/

namespace A158315.P5990765025785844607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A025738 (Nat.factorization (f1 n) p)

end

end A158315.P5990765025785844607

namespace A158315

/-- `∏{e}[2*n+1, A025738(#)]` -/
def P5990765025785844607.Spec : Prop :=
  ∀ n, P5990765025785844607.a n = A158315 n

end A158315

/-! ## A158315.P2549511977137778546

`A145511(2*n+1)%(n+3)`
-/

namespace A158315.P2549511977137778546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145511 (2 * n + 1)) (n + 3 : ℤ)

end

end A158315.P2549511977137778546

namespace A158315

/-- `A145511(2*n+1)%(n+3)` -/
def P2549511977137778546.Spec : Prop :=
  ∀ n, P2549511977137778546.a n = A158315 n

end A158315

/-! ## A158315.P17093083099137872552

`∑{d}[2*n+1, A000005(2*#)/2]`
-/

namespace A158315.P17093083099137872552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000005 (2 * d) : ℚ) / 2

end

end A158315.P17093083099137872552

namespace A158315

/-- `∑{d}[2*n+1, A000005(2*#)/2]` -/
def P17093083099137872552.Spec : Prop :=
  ∀ n, P17093083099137872552.a n = (A158315 n : ℚ)

end A158315

/-! ## A158315.P15461138593530903244

`A051119(A158647(n))`
-/

namespace A158315.P15461138593530903244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A158647 n).toNat

end

end A158315.P15461138593530903244

namespace A158315

/-- `A051119(A158647(n))` -/
def P15461138593530903244.Spec : Prop :=
  ∀ n, P15461138593530903244.a n = A158315 n

end A158315

/-! ## A158315.P17451034966384871238

`A007425(A278223(n+1))`
-/

namespace A158315.P17451034966384871238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (A278223 (n + 1)).toNat

end

end A158315.P17451034966384871238

namespace A158315

/-- `A007425(A278223(n+1))` -/
def P17451034966384871238.Spec : Prop :=
  ∀ n, P17451034966384871238.a n = A158315 n

end A158315

/-!
# A158316: a(n) = 400*n^2 - 2*n.

The programs for A158316, the canonical program `A158316.P12908009134673896317` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158316 has offset 1).

The definition of A158316 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `400*(n+1)²-2*(n+1)` (program `A158316.P12908009134673896317`, by `A158316.P12908009134673896317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158316.P12908009134673896317

`400*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158316

/-- `400*(n+1)²-2*(n+1)` -/
def P12908009134673896317.Spec : Prop :=
  ∀ n, P12908009134673896317.a n = A158316 (n + 1)

theorem P12908009134673896317.correct : P12908009134673896317.Spec := by
  intro n
  simp only [A158316, Nat.add_sub_cancel]

end A158316

/-! ## A158316.P2454543566684769282

`(n+1)*(A158317(n+1)-1)`
-/

namespace A158316.P2454543566684769282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158317 (n + 1) - 1)

end

end A158316.P2454543566684769282

namespace A158316

/-- `(n+1)*(A158317(n+1)-1)` -/
def P2454543566684769282.Spec : Prop :=
  ∀ n, P2454543566684769282.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P3082491497586729357

`2*(n+1)*A157955(n+1)`
-/

namespace A158316.P3082491497586729357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157955 (n + 1))

end

end A158316.P3082491497586729357

namespace A158316

/-- `2*(n+1)*A157955(n+1)` -/
def P3082491497586729357.Spec : Prop :=
  ∀ n, P3082491497586729357.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P12420221746691069903

`(n+1)*(A158313(n+1)-3)`
-/

namespace A158316.P12420221746691069903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158313 (n + 1) - 3)

end

end A158316.P12420221746691069903

namespace A158316

/-- `(n+1)*(A158313(n+1)-3)` -/
def P12420221746691069903.Spec : Prop :=
  ∀ n, P12420221746691069903.a n = A158316 (n + 1)

theorem P12420221746691069903.correct : P12420221746691069903.Spec := by
  intro n
  simp only [A158316, Nat.add_sub_cancel, A158316.P12420221746691069903.a, A158316.P12908009134673896317.a, A158313, A158313.P10216603484988806898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158316

/-! ## A158316.P5580034863034733462

`lcm(2, A004767(n)+1-A158312(n+1))`
-/

namespace A158316.P5580034863034733462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004767 n + 1 - A158312 (n + 1))

end

end A158316.P5580034863034733462

namespace A158316

/-- `lcm(2, A004767(n)+1-A158312(n+1))` -/
def P5580034863034733462.Spec : Prop :=
  ∀ n, (P5580034863034733462.a n : ℤ) = A158316 (n + 1)

end A158316

/-! ## A158316.P6175415058272672254

`A157659(2*(n+1))`
-/

namespace A158316.P6175415058272672254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157659 (2 * (n + 1))

end

end A158316.P6175415058272672254

namespace A158316

/-- `A157659(2*(n+1))` -/
def P6175415058272672254.Spec : Prop :=
  ∀ n, P6175415058272672254.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P1786974493014981358

`2*(A157919(2*(n+1))-n)`
-/

namespace A158316.P1786974493014981358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A157919 (2 * (n + 1)) - (n : ℤ))

end

end A158316.P1786974493014981358

namespace A158316

/-- `2*(A157919(2*(n+1))-n)` -/
def P1786974493014981358.Spec : Prop :=
  ∀ n, P1786974493014981358.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P16549621940546585977

`(A158128(2*(n+1))-2)*2*(n+1)`
-/

namespace A158316.P16549621940546585977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158128 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158316.P16549621940546585977

namespace A158316

/-- `(A158128(2*(n+1))-2)*2*(n+1)` -/
def P16549621940546585977.Spec : Prop :=
  ∀ n, P16549621940546585977.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P17276370574939063972

`(n+1)*A016825(A017377(A017377(n)))`
-/

namespace A158316.P17276370574939063972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016825 (A017377 (A017377 n).toNat).toNat

end

end A158316.P17276370574939063972

namespace A158316

/-- `(n+1)*A016825(A017377(A017377(n)))` -/
def P17276370574939063972.Spec : Prop :=
  ∀ n, P17276370574939063972.a n = A158316 (n + 1)

end A158316

/-!
# A158317: a(n) = 400*n - 1.

The programs for A158317, the canonical program `A158317.P10417869041478746288` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158317 has offset 1).

The definition of A158317 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `400*(n+1)-1` (program `A158317.P10417869041478746288`, by `A158317.P10417869041478746288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158317.P10417869041478746288

`400*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158317

/-- `400*(n+1)-1` -/
def P10417869041478746288.Spec : Prop :=
  ∀ n, P10417869041478746288.a n = A158317 (n + 1)

theorem P10417869041478746288.correct : P10417869041478746288.Spec := by
  intro n
  simp only [A158317, Nat.add_sub_cancel]

end A158317

/-!
# A158318: Primes p such that 5p-2 is prime.

The programs for A158318, there is no canonical definition to state claims against.
-/

/-! ## A158318.P3397267250664202900

`p?[A024896(n+1)]`
-/

namespace A158318.P3397267250664202900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158318.P3397267250664202900

/-! ## A158318.P1982506464534367299

`p?[A087505(n+1)+1]`
-/

namespace A158318.P1982506464534367299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158318.P1982506464534367299

/-! ## A158318.P221530886208819286

`p?[A107304(n+1)-1]`
-/

namespace A158318.P221530886208819286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107304 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158318.P221530886208819286

/-! ## A158318.P13115963265901315033

`p?[A111225(n+1)+2]`
-/

namespace A158318.P13115963265901315033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158318.P13115963265901315033

/-! ## A158318.P3392605317223269862

`p?[2*A102338(n+1)+1]`
-/

namespace A158318.P3392605317223269862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102338 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158318.P3392605317223269862

/-! ## A158318.P16922120168500350781

`p?[2*A024913(n+1)-1]`
-/

namespace A158318.P16922120168500350781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024913 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158318.P16922120168500350781

/-! ## A158318.P5235705762167820098

`record[A006530(A024896(n+2))]`
-/

namespace A158318.P5235705762167820098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024896 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158318.P5235705762167820098

/-! ## A158318.P3709690561436055173

`filter[A024896(n+1), A010051(#)]`
-/

namespace A158318.P3709690561436055173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A158318.P3709690561436055173

/-! ## A158318.P648106254019789905

`filter[A024896(n+1), A379969(#)]`
-/

namespace A158318.P648106254019789905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A158318.P648106254019789905

/-! ## A158318.P17986908322495505889

`filter[A024896(n+2), A365716(#)]`
-/

namespace A158318.P17986908322495505889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A158318.P17986908322495505889

/-! ## A158318.P12602076443621302571

`filter[A024896(n+2), A380467(#)]`
-/

namespace A158318.P12602076443621302571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A158318.P12602076443621302571

/-! ## A158318.P14678839547552419248

`∩[A024896(n+1), A042988(n)]`
-/

namespace A158318.P14678839547552419248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158318.P14678839547552419248

/-! ## A158318.P1107678124606263324

`record[A006530(A087505(n+2)+1)]`
-/

namespace A158318.P1107678124606263324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087505 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158318.P1107678124606263324

/-! ## A158318.P4984225439598949634

`record[A006530(A111225(n+1)+2)]`
-/

namespace A158318.P4984225439598949634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111225 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158318.P4984225439598949634

/-! ## A158318.P2379446015978941295

`∩[A000040(n+1), A024896(n+1)]`
-/

namespace A158318.P2379446015978941295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158318.P2379446015978941295

/-! ## A158318.P2269718365828777221

`∩[A024896(n+1), A040028(n+1)]`
-/

namespace A158318.P2269718365828777221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158318.P2269718365828777221

/-! ## A158318.P2211249220170846166

`∩[A024896(n+1), A040036(n+1)]`
-/

namespace A158318.P2211249220170846166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158318.P2211249220170846166

/-! ## A158318.P10603328646139632008

`∩[A024896(n+1), A040044(n+1)]`
-/

namespace A158318.P10603328646139632008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158318.P10603328646139632008

/-! ## A158318.P4106315998696518054

`∩[A024896(n+1), A040046(n+1)]`
-/

namespace A158318.P4106315998696518054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158318.P4106315998696518054

/-!
# A158319: a(n) = 441*n - 1.

The programs for A158319, the canonical program `A158319.P3522117045208799461` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158319 has offset 1).

The definition of A158319 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)-1` (program `A158319.P3522117045208799461`, by `A158319.P3522117045208799461.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158319.P3522117045208799461

`441*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158319

/-- `441*(n+1)-1` -/
def P3522117045208799461.Spec : Prop :=
  ∀ n, P3522117045208799461.a n = A158319 (n + 1)

theorem P3522117045208799461.correct : P3522117045208799461.Spec := by
  intro n
  simp only [A158319, Nat.add_sub_cancel]

end A158319

/-!
# A158320: a(1)=0, a(n) is the smallest nonprime > (n-1)^smallest digit of a(n-1).

The programs for A158320, there is no canonical definition to state claims against.
-/

/-! ## A158320.P6971908584245826367

`xor(3, A270779(∏{p}[n+1, #+1]))`
-/

namespace A158320.P6971908584245826367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A270779 (∏ p ∈ Nat.primeFactors (f1 n), (p + 1)))

end

end A158320.P6971908584245826367

/-!
# A158321: a(n) = 441n^2 + 2n.

The programs for A158321, the canonical program `A158321.P18099827393748730785` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158321 has offset 1).

The definition of A158321 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)²+2*(n+1)` (program `A158321.P18099827393748730785`, by `A158321.P18099827393748730785.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158321.P18099827393748730785

`441*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158321

/-- `441*(n+1)²+2*(n+1)` -/
def P18099827393748730785.Spec : Prop :=
  ∀ n, (P18099827393748730785.a n : ℤ) = A158321 (n + 1)

theorem P18099827393748730785.correct : P18099827393748730785.Spec := by
  intro n
  simp only [A158321, Nat.add_sub_cancel]

end A158321

/-! ## A158321.P15447987472091305715

`(n+1)*(A158322(n+1)+1)`
-/

namespace A158321.P15447987472091305715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158322 (n + 1) + 1)

end

end A158321.P15447987472091305715

namespace A158321

/-- `(n+1)*(A158322(n+1)+1)` -/
def P15447987472091305715.Spec : Prop :=
  ∀ n, P15447987472091305715.a n = A158321 (n + 1)

theorem P15447987472091305715.correct : P15447987472091305715.Spec := by
  intro n
  simp only [A158321, Nat.add_sub_cancel, A158321.P15447987472091305715.a, A158321.P18099827393748730785.a, A158322, A158322.P9669721433400368136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158321

/-! ## A158321.P17711006169684361687

`(n+1)*(A158319(n+1)+3)`
-/

namespace A158321.P17711006169684361687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158319 (n + 1) + 3)

end

end A158321.P17711006169684361687

namespace A158321

/-- `(n+1)*(A158319(n+1)+3)` -/
def P17711006169684361687.Spec : Prop :=
  ∀ n, P17711006169684361687.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P8194716705929237610

`(n+1)*A017185(A008589(A008589(n+1)))`
-/

namespace A158321.P8194716705929237610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017185 (A008589 (A008589 (n + 1)).toNat).toNat

end

end A158321.P8194716705929237610

namespace A158321

/-- `(n+1)*A017185(A008589(A008589(n+1)))` -/
def P8194716705929237610.Spec : Prop :=
  ∀ n, P8194716705929237610.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P9100714035381534913

`A052410(A031699(n+1))`
-/

namespace A158321.P9100714035381534913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A031699 (n + 1)).toNat

end

end A158321.P9100714035381534913

namespace A158321

/-- `A052410(A031699(n+1))` -/
def P9100714035381534913.Spec : Prop :=
  ∀ n, P9100714035381534913.a n = A158321 (n + 1)

end A158321

/-!
# A158322: a(n) = 441*n + 1.

The programs for A158322, the canonical program `A158322.P9669721433400368136` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158322 has offset 1).

The definition of A158322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `441*(n+1)+1` (program `A158322.P9669721433400368136`, by `A158322.P9669721433400368136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158322.P9669721433400368136

`441*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158322

/-- `441*(n+1)+1` -/
def P9669721433400368136.Spec : Prop :=
  ∀ n, (P9669721433400368136.a n : ℤ) = A158322 (n + 1)

theorem P9669721433400368136.correct : P9669721433400368136.Spec := by
  intro n
  simp only [A158322, Nat.add_sub_cancel]

end A158322

/-!
# A158323: Numbers that are the greater of twin primes such that the number of odd digits of the lesser prime equals the number of prime digits of the greater prime.

The programs for A158323, there is no canonical definition to state claims against.
-/

/-! ## A158323.P2876032137694675090

`A107685(A215370(n+2))`
-/

namespace A158323.P2876032137694675090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (A215370 (n + 2)).toNat

end

end A158323.P2876032137694675090

/-! ## A158323.P6715660199547201939

`A107685(p?[∑[A054707(n+1)]])`
-/

namespace A158323.P6715660199547201939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158323.P6715660199547201939

/-!
# A158324: Successive powers of two, represented as binary coded decimal. (0x1, 0x2, 0x4, 0x8, 0x16, 0x32, etc.)

The programs for A158324, there is no canonical definition to state claims against.
-/

/-! ## A158324.P10715758184275221887

`A102489(2^n)`
-/

namespace A158324.P10715758184275221887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (2 ^ n)

end

end A158324.P10715758184275221887

/-! ## A158324.P10773359766751544244

`record[A102489(A001316(n))]`
-/

namespace A158324.P10773359766751544244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158324.P10773359766751544244

/-! ## A158324.P10863158151142545607

`record[A102489(A029930(n))]`
-/

namespace A158324.P10863158151142545607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158324.P10863158151142545607

/-! ## A158324.P16738035344436660712

`record[A102489(A034008(n))]`
-/

namespace A158324.P16738035344436660712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A034008 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158324.P16738035344436660712

/-!
# A158325: a(n) = 484*n^2 + 2*n.

The programs for A158325, the canonical program `A158325.P8059623103518368680` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158325 has offset 1).

The definition of A158325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `484*(n+1)²+2*(n+1)` (program `A158325.P8059623103518368680`, by `A158325.P8059623103518368680.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158325.P8059623103518368680

`484*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158325

/-- `484*(n+1)²+2*(n+1)` -/
def P8059623103518368680.Spec : Prop :=
  ∀ n, (P8059623103518368680.a n : ℤ) = A158325 (n + 1)

theorem P8059623103518368680.correct : P8059623103518368680.Spec := by
  intro n
  simp only [A158325, Nat.add_sub_cancel]

end A158325

/-! ## A158325.P6629055960831225849

`(n+1)*(A158326(n+1)+1)`
-/

namespace A158325.P6629055960831225849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158326 (n + 1) + 1)

end

end A158325.P6629055960831225849

namespace A158325

/-- `(n+1)*(A158326(n+1)+1)` -/
def P6629055960831225849.Spec : Prop :=
  ∀ n, P6629055960831225849.a n = A158325 (n + 1)

theorem P6629055960831225849.correct : P6629055960831225849.Spec := by
  intro n
  simp only [A158325, Nat.add_sub_cancel, A158325.P6629055960831225849.a, A158325.P8059623103518368680.a, A158326, A158326.P18443615611504215997.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158325

/-! ## A158325.P6855534580444167013

`(n+1)*(A158330(n+1)+3)`
-/

namespace A158325.P6855534580444167013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158330 (n + 1) + 3)

end

end A158325.P6855534580444167013

namespace A158325

/-- `(n+1)*(A158330(n+1)+3)` -/
def P6855534580444167013.Spec : Prop :=
  ∀ n, P6855534580444167013.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P17790008243442200021

`2*(n+1)*A157958(n+1)`
-/

namespace A158325.P17790008243442200021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157958 (n + 1))

end

end A158325.P17790008243442200021

namespace A158325

/-- `2*(n+1)*A157958(n+1)` -/
def P17790008243442200021.Spec : Prop :=
  ∀ n, P17790008243442200021.a n = A158325 (n + 1)

theorem P17790008243442200021.correct : P17790008243442200021.Spec := by
  intro n
  simp only [A158325, Nat.add_sub_cancel, A158325.P17790008243442200021.a, A158325.P8059623103518368680.a, A157958, A157958.P10452381409287298142.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158325

/-! ## A158325.P9303621784907022314

`A173267(2*(n+1))`
-/

namespace A158325.P9303621784907022314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173267 (2 * (n + 1))

end

end A158325.P9303621784907022314

namespace A158325

/-- `A173267(2*(n+1))` -/
def P9303621784907022314.Spec : Prop :=
  ∀ n, P9303621784907022314.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P15815949667609284876

`2*(n+1)*A158131(2*(n+1))`
-/

namespace A158325.P15815949667609284876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158131 (2 * (n + 1))

end

end A158325.P15815949667609284876

namespace A158325

/-- `2*(n+1)*A158131(2*(n+1))` -/
def P15815949667609284876.Spec : Prop :=
  ∀ n, P15815949667609284876.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P18304300816188273986

`(A158130(2*(n+1))+2)*2*(n+1)`
-/

namespace A158325.P18304300816188273986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158130 (2 * (n + 1)) + 2) * (2 * (n + 1) : ℤ)

end

end A158325.P18304300816188273986

namespace A158325

/-- `(A158130(2*(n+1))+2)*2*(n+1)` -/
def P18304300816188273986.Spec : Prop :=
  ∀ n, P18304300816188273986.a n = A158325 (n + 1)

end A158325

/-!
# A158326: a(n) = 484*n + 1.

The programs for A158326, the canonical program `A158326.P18443615611504215997` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158326 has offset 1).

The definition of A158326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `484*(n+1)+1` (program `A158326.P18443615611504215997`, by `A158326.P18443615611504215997.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158326.P18443615611504215997

`484*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158326

/-- `484*(n+1)+1` -/
def P18443615611504215997.Spec : Prop :=
  ∀ n, (P18443615611504215997.a n : ℤ) = A158326 (n + 1)

theorem P18443615611504215997.correct : P18443615611504215997.Spec := by
  intro n
  simp only [A158326, Nat.add_sub_cancel]

end A158326

/-!
# A158327: a(n) = A145444(n)-A145511(n).

The programs for A158327, the canonical program `A158327.P17963926596425252861` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158327 has offset 1).

The definition of A158327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158327.P2736969581597139605

`A145444(n+1)-A145511(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158327.P2736969581597139605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - A145511 (n + 1)

end

end A158327.P2736969581597139605

namespace A158327

/-- `A145444(n+1)-A145511(n+1)` -/
def P2736969581597139605.Spec : Prop :=
  ∀ n, P2736969581597139605.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P5330040366448313774

`A158801(2*A259445(n+1))`
-/

namespace A158327.P5330040366448313774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158801 (2 * A259445 (n + 1)).toNat

end

end A158327.P5330040366448313774

namespace A158327

/-- `A158801(2*A259445(n+1))` -/
def P5330040366448313774.Spec : Prop :=
  ∀ n, P5330040366448313774.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P3329327956445779149

`A158801(n+1)-A158360(n+1)`
-/

namespace A158327.P3329327956445779149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158801 (n + 1) - A158360 (n + 1)

end

end A158327.P3329327956445779149

namespace A158327

/-- `A158801(n+1)-A158360(n+1)` -/
def P3329327956445779149.Spec : Prop :=
  ∀ n, P3329327956445779149.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P13758156310438827508

`gcd(A158801(2*(n+1)), A158801(n+1))`
-/

namespace A158327.P13758156310438827508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A158801 (2 * (n + 1))) (A158801 (n + 1))

end

end A158327.P13758156310438827508

namespace A158327

/-- `gcd(A158801(2*(n+1)), A158801(n+1))` -/
def P13758156310438827508.Spec : Prop :=
  ∀ n, (P13758156310438827508.a n : ℤ) = A158327 (n + 1)

end A158327

/-! ## A158327.P4796143898502235598

`A145444(n+1)-A145399(A026741(n+1))`
-/

namespace A158327.P4796143898502235598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - A145399 (A026741 (n + 1)).toNat

end

end A158327.P4796143898502235598

namespace A158327

/-- `A145444(n+1)-A145399(A026741(n+1))` -/
def P4796143898502235598.Spec : Prop :=
  ∀ n, P4796143898502235598.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P202598491116457277

`A158360(2*n+5)-A158360(A259445(n+1))`
-/

namespace A158327.P202598491116457277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158360 (2 * n + 5) - A158360 (A259445 (n + 1)).toNat

end

end A158327.P202598491116457277

namespace A158327

/-- `A158360(2*n+5)-A158360(A259445(n+1))` -/
def P202598491116457277.Spec : Prop :=
  ∀ n, P202598491116457277.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P17963926596425252861

`∑{d}[A000265(n+1)%(n+1), A000005(A274611(#))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A158327

/-- `∑{d}[A000265(n+1)%(n+1), A000005(A274611(#))]` -/
def P17963926596425252861.Spec : Prop :=
  ∀ n, P17963926596425252861.a n = A158327 (n + 1)

theorem P17963926596425252861.correct : P17963926596425252861.Spec := by
  intro n
  simp only [A158327, Nat.add_sub_cancel]

end A158327

/-! ## A158327.P2554531178366620100

`A145444(n+1)-(A158360(n+1)+A145501(n+1))`
-/

namespace A158327.P2554531178366620100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - (A158360 (n + 1) + A145501 (n + 1))

end

end A158327.P2554531178366620100

namespace A158327

/-- `A145444(n+1)-(A158360(n+1)+A145501(n+1))` -/
def P2554531178366620100.Spec : Prop :=
  ∀ n, P2554531178366620100.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P3615533749537350864

`A145501(n+1)+A158801(n+1)-A145511(n+1)`
-/

namespace A158327.P3615533749537350864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (n + 1) + (A158801 (n + 1) - A145511 (n + 1))

end

end A158327.P3615533749537350864

namespace A158327

/-- `A145501(n+1)+A158801(n+1)-A145511(n+1)` -/
def P3615533749537350864.Spec : Prop :=
  ∀ n, P3615533749537350864.a n = A158327 (n + 1)

end A158327

/-! ## A158327.P7771319517643124746

`A145444(2*(n+1))%A145511(2*(n+1))`
-/

namespace A158327.P7771319517643124746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145444 (2 * (n + 1))) (A145511 (2 * (n + 1)))

end

end A158327.P7771319517643124746

namespace A158327

/-- `A145444(2*(n+1))%A145511(2*(n+1))` -/
def P7771319517643124746.Spec : Prop :=
  ∀ n, P7771319517643124746.a n = A158327 (n + 1)

end A158327

/-!
# A158328: Lessers p1 of twin primes with prime sums of digits of p1 and p2.

The programs for A158328, the canonical program `A158328.P9213306656047142761` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158328 has offset 1).

The definition of A158328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158328.P9213306656047142761

`p?[A106712(n+1)-2]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A158328

/-- `p?[A106712(n+1)-2]` -/
def P9213306656047142761.Spec : Prop :=
  ∀ n, P9213306656047142761.a n = A158328 (n + 1)

theorem P9213306656047142761.correct : P9213306656047142761.Spec := by
  intro n
  simp only [A158328, Nat.add_sub_cancel]

end A158328

/-! ## A158328.P5766486767674518798

`∩[A001359(n+1), A106711(n+1)]`
-/

namespace A158328.P5766486767674518798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P5766486767674518798

namespace A158328

/-- `∩[A001359(n+1), A106711(n+1)]` -/
def P5766486767674518798.Spec : Prop :=
  ∀ n, (P5766486767674518798.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P11238790258090540890

`∩[A001838(n+1), A106711(n+1)]`
-/

namespace A158328.P11238790258090540890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P11238790258090540890

namespace A158328

/-- `∩[A001838(n+1), A106711(n+1)]` -/
def P11238790258090540890.Spec : Prop :=
  ∀ n, (P11238790258090540890.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P6301413827227636720

`∩[A054799(n+1), A106711(n+1)]`
-/

namespace A158328.P6301413827227636720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P6301413827227636720

namespace A158328

/-- `∩[A054799(n+1), A106711(n+1)]` -/
def P6301413827227636720.Spec : Prop :=
  ∀ n, (P6301413827227636720.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P2330554553983739228

`∩[A063693(n+1), A106711(n+1)]`
-/

namespace A158328.P2330554553983739228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P2330554553983739228

namespace A158328

/-- `∩[A063693(n+1), A106711(n+1)]` -/
def P2330554553983739228.Spec : Prop :=
  ∀ n, (P2330554553983739228.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P6682615292600594832

`∩[A063700(n+1), A106711(n+1)]`
-/

namespace A158328.P6682615292600594832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P6682615292600594832

namespace A158328

/-- `∩[A063700(n+1), A106711(n+1)]` -/
def P6682615292600594832.Spec : Prop :=
  ∀ n, (P6682615292600594832.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P18332126450227695165

`∩[A106711(n+1), A181747(n+1)]`
-/

namespace A158328.P18332126450227695165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P18332126450227695165

namespace A158328

/-- `∩[A106711(n+1), A181747(n+1)]` -/
def P18332126450227695165.Spec : Prop :=
  ∀ n, (P18332126450227695165.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P5270029851450064052

`∩[A106711(n+1), A280255(n+1)]`
-/

namespace A158328.P5270029851450064052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P5270029851450064052

namespace A158328

/-- `∩[A106711(n+1), A280255(n+1)]` -/
def P5270029851450064052.Spec : Prop :=
  ∀ n, (P5270029851450064052.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P14702672485286491501

`∩[A106711(n+1), A280590(n+1)]`
-/

namespace A158328.P14702672485286491501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P14702672485286491501

namespace A158328

/-- `∩[A106711(n+1), A280590(n+1)]` -/
def P14702672485286491501.Spec : Prop :=
  ∀ n, (P14702672485286491501.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P1002008316854517217

`∩[A106711(n+1), A106712(n+1)-2]`
-/

namespace A158328.P1002008316854517217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106712 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P1002008316854517217

namespace A158328

/-- `∩[A106711(n+1), A106712(n+1)-2]` -/
def P1002008316854517217.Spec : Prop :=
  ∀ n, (P1002008316854517217.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P15890385358771734042

`∩[A106711(n+1), A274212(n+1)]`
-/

namespace A158328.P15890385358771734042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P15890385358771734042

namespace A158328

/-- `∩[A106711(n+1), A274212(n+1)]` -/
def P15890385358771734042.Spec : Prop :=
  ∀ n, (P15890385358771734042.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P15912714809777352289

`∩[A046704(n+1)-2, A046704(n+1)]`
-/

namespace A158328.P15912714809777352289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P15912714809777352289

namespace A158328

/-- `∩[A046704(n+1)-2, A046704(n+1)]` -/
def P15912714809777352289.Spec : Prop :=
  ∀ n, (P15912714809777352289.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P11065181268511685994

`A046704(eq[2, A046704(n+2)-A046704(n+1)]+1)`
-/

namespace A158328.P11065181268511685994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (n + 2) - A046704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046704 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A158328.P11065181268511685994

namespace A158328

/-- `A046704(eq[2, A046704(n+2)-A046704(n+1)]+1)` -/
def P11065181268511685994.Spec : Prop :=
  ∀ n, P11065181268511685994.a n = A158328 (n + 1)

end A158328

/-! ## A158328.P16165588939484519756

`∩[A066147(n+1), A106711(n+1)]`
-/

namespace A158328.P16165588939484519756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P16165588939484519756

namespace A158328

/-- `∩[A066147(n+1), A106711(n+1)]` -/
def P16165588939484519756.Spec : Prop :=
  ∀ n, (P16165588939484519756.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P17942199210225005698

`∩[A065873(n+1), A106711(n+1)]`
-/

namespace A158328.P17942199210225005698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P17942199210225005698

namespace A158328

/-- `∩[A065873(n+1), A106711(n+1)]` -/
def P17942199210225005698.Spec : Prop :=
  ∀ n, (P17942199210225005698.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P8265720475675991805

`∩[A072282(n+1), A106711(n+1)]`
-/

namespace A158328.P8265720475675991805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P8265720475675991805

namespace A158328

/-- `∩[A072282(n+1), A106711(n+1)]` -/
def P8265720475675991805.Spec : Prop :=
  ∀ n, (P8265720475675991805.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P16053172789225486549

`∩[A067532(n+1), A106711(n+1)]`
-/

namespace A158328.P16053172789225486549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P16053172789225486549

namespace A158328

/-- `∩[A067532(n+1), A106711(n+1)]` -/
def P16053172789225486549.Spec : Prop :=
  ∀ n, (P16053172789225486549.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P13169648693710821859

`∩[A040976(n+1), A106711(n+1)]`
-/

namespace A158328.P13169648693710821859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158328.P13169648693710821859

namespace A158328

/-- `∩[A040976(n+1), A106711(n+1)]` -/
def P13169648693710821859.Spec : Prop :=
  ∀ n, (P13169648693710821859.a n : ℤ) = A158328 (n + 1)

end A158328

/-! ## A158328.P11767664231959770484

`filter[A106711(n+1), A353463(#)]`
-/

namespace A158328.P11767664231959770484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353463 (f1 j).toNat = 1) n)

end

end A158328.P11767664231959770484

namespace A158328

/-- `filter[A106711(n+1), A353463(#)]` -/
def P11767664231959770484.Spec : Prop :=
  ∀ n, P11767664231959770484.a n = A158328 (n + 1)

end A158328

/-! ## A158328.P2403810749824628462

`record[A006530(A106712(n+2)-2)]`
-/

namespace A158328.P2403810749824628462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106712 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158328.P2403810749824628462

namespace A158328

/-- `record[A006530(A106712(n+2)-2)]` -/
def P2403810749824628462.Spec : Prop :=
  ∀ n, P2403810749824628462.a n = A158328 (n + 1)

end A158328

/-!
# A158329: a(n) = 484*n^2 - 2*n.

The programs for A158329, the canonical program `A158329.P9931345175409210729` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158329 has offset 1).

The definition of A158329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `484*(n+1)²-2*(n+1)` (program `A158329.P9931345175409210729`, by `A158329.P9931345175409210729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158329.P9931345175409210729

`484*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158329

/-- `484*(n+1)²-2*(n+1)` -/
def P9931345175409210729.Spec : Prop :=
  ∀ n, P9931345175409210729.a n = A158329 (n + 1)

theorem P9931345175409210729.correct : P9931345175409210729.Spec := by
  intro n
  simp only [A158329, Nat.add_sub_cancel]

end A158329

/-! ## A158329.P12297692981094905870

`(n+1)*(A158330(n+1)-1)`
-/

namespace A158329.P12297692981094905870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158330 (n + 1) - 1)

end

end A158329.P12297692981094905870

namespace A158329

/-- `(n+1)*(A158330(n+1)-1)` -/
def P12297692981094905870.Spec : Prop :=
  ∀ n, P12297692981094905870.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P4047334673575827849

`2*(n+1)*A157961(n+1)`
-/

namespace A158329.P4047334673575827849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157961 (n + 1))

end

end A158329.P4047334673575827849

namespace A158329

/-- `2*(n+1)*A157961(n+1)` -/
def P4047334673575827849.Spec : Prop :=
  ∀ n, P4047334673575827849.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P9806477187345313143

`(n+1)*(A158326(n+1)-3)`
-/

namespace A158329.P9806477187345313143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158326 (n + 1) - 3)

end

end A158329.P9806477187345313143

namespace A158329

/-- `(n+1)*(A158326(n+1)-3)` -/
def P9806477187345313143.Spec : Prop :=
  ∀ n, P9806477187345313143.a n = A158329 (n + 1)

theorem P9806477187345313143.correct : P9806477187345313143.Spec := by
  intro n
  simp only [A158329, Nat.add_sub_cancel, A158329.P9806477187345313143.a, A158329.P9931345175409210729.a, A158326, A158326.P18443615611504215997.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158329

/-! ## A158329.P8604724823832581184

`A157960(2*(n+1))`
-/

namespace A158329.P8604724823832581184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157960 (2 * (n + 1))

end

end A158329.P8604724823832581184

namespace A158329

/-- `A157960(2*(n+1))` -/
def P8604724823832581184.Spec : Prop :=
  ∀ n, P8604724823832581184.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P5523233208570095988

`2*(n+1)*A158130(2*(n+1))`
-/

namespace A158329.P5523233208570095988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158130 (2 * (n + 1))

end

end A158329.P5523233208570095988

namespace A158329

/-- `2*(n+1)*A158130(2*(n+1))` -/
def P5523233208570095988.Spec : Prop :=
  ∀ n, P5523233208570095988.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P12547345667226351124

`(A158131(2*(n+1))-2)*2*(n+1)`
-/

namespace A158329.P12547345667226351124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158131 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158329.P12547345667226351124

namespace A158329

/-- `(A158131(2*(n+1))-2)*2*(n+1)` -/
def P12547345667226351124.Spec : Prop :=
  ∀ n, P12547345667226351124.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P17515390950627633399

`A158325(2*(n+1))%A158325(n+1)`
-/

namespace A158329.P17515390950627633399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158325 (2 * (n + 1))) (A158325 (n + 1))

end

end A158329.P17515390950627633399

namespace A158329

/-- `A158325(2*(n+1))%A158325(n+1)` -/
def P17515390950627633399.Spec : Prop :=
  ∀ n, P17515390950627633399.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P398508947488906789

`2*(A158670(2*(n+1))+A000124(2*n+1))`
-/

namespace A158329.P398508947488906789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158670 (2 * (n + 1)) + A000124 (2 * n + 1))

end

end A158329.P398508947488906789

namespace A158329

/-- `2*(A158670(2*(n+1))+A000124(2*n+1))` -/
def P398508947488906789.Spec : Prop :=
  ∀ n, P398508947488906789.a n = A158329 (n + 1)

end A158329

/-!
# A158330: a(n) = 484*n - 1.

The programs for A158330, the canonical program `A158330.P9388602164770503643` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158330 has offset 1).

The definition of A158330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `484*(n+1)-1` (program `A158330.P9388602164770503643`, by `A158330.P9388602164770503643.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158330.P9388602164770503643

`484*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158330

/-- `484*(n+1)-1` -/
def P9388602164770503643.Spec : Prop :=
  ∀ n, P9388602164770503643.a n = A158330 (n + 1)

theorem P9388602164770503643.correct : P9388602164770503643.Spec := by
  intro n
  simp only [A158330, Nat.add_sub_cancel]

end A158330

/-!
# A158331: List of twin primes p1 and p2 with the sums of digits in p1 and p2 are twin primes.

The programs for A158331, there is no canonical definition to state claims against.
-/

/-! ## A158331.P8624948531826699599

`A146972(C(A035343(n), A354828(n+1))+n)`
-/

namespace A158331.P8624948531826699599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146972 (Nat.choose (A035343 n).toNat (A354828 (n + 1)).toNat + n)

end

end A158331.P8624948531826699599

/-! ## A158331.P12069931484769344263

`A146972(C(A342097(n+1), A354828(n+1))+n)`
-/

namespace A158331.P12069931484769344263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146972 (Nat.choose (A342097 (n + 1)).toNat (A354828 (n + 1)).toNat + n)

end

end A158331.P12069931484769344263

/-! ## A158331.P16062404000856083004

`A020639(A146972(n+1)*A146972(A233583(n+1)))`
-/

namespace A158331.P16062404000856083004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A146972 (n + 1) * A146972 (A233583 (n + 1)).toNat).toNat

end

end A158331.P16062404000856083004

/-! ## A158331.P13690143554610493492

`A146972(A055645(n)+A019590(n+1))`
-/

namespace A158331.P13690143554610493492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146972 (A055645 n + A019590 (n + 1)).toNat

end

end A158331.P13690143554610493492

/-!
# A158332: Greater of twin primes, each prime having an even digit sum.

The programs for A158332, the canonical program `A158332.P15794101750954824745` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158332 has offset 1).

The definition of A158332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158332.P15794101750954824745

`∩[A119449(n+1)+2, A119449(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A158332

/-- `∩[A119449(n+1)+2, A119449(n+1)]` -/
def P15794101750954824745.Spec : Prop :=
  ∀ n, (P15794101750954824745.a n : ℤ) = A158332 (n + 1)

theorem P15794101750954824745.correct : P15794101750954824745.Spec := by
  intro n
  simp only [A158332, Nat.add_sub_cancel]

end A158332

/-! ## A158332.P12808236767081848641

`∩[A068719(A119449(n+1)), A119449(n+3)]`
-/

namespace A158332.P12808236767081848641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068719 (A119449 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119449 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158332.P12808236767081848641

namespace A158332

/-- `∩[A068719(A119449(n+1)), A119449(n+3)]` -/
def P12808236767081848641.Spec : Prop :=
  ∀ n, (P12808236767081848641.a n : ℤ) = A158332 (n + 1)

end A158332

/-! ## A158332.P4975439062022439545

`p?[Δ[A024206(A119449(n+1))]]`
-/

namespace A158332.P4975439062022439545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (A119449 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A158332.P4975439062022439545

namespace A158332

/-- `p?[Δ[A024206(A119449(n+1))]]` -/
def P4975439062022439545.Spec : Prop :=
  ∀ n, P4975439062022439545.a n = A158332 (n + 1)

end A158332

/-! ## A158332.P7956914965767902329

`∩[A132244(n+1), A243587(n+1)]`
-/

namespace A158332.P7956914965767902329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158332.P7956914965767902329

namespace A158332

/-- `∩[A132244(n+1), A243587(n+1)]` -/
def P7956914965767902329.Spec : Prop :=
  ∀ n, (P7956914965767902329.a n : ℤ) = A158332 (n + 1)

end A158332

/-!
# A158333: Position of number of digits increment in the sequence of powers of 3.

The programs for A158333, there is no canonical definition to state claims against.
-/

/-! ## A158333.P14505584042246791203

`(A054965(A028310(n))+1)/A205479(A000040(n+1))`
-/

namespace A158333.P14505584042246791203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054965 (A028310 n).toNat + 1 : ℚ) / (A205479 (A000040 (n + 1)).toNat : ℚ)

end

end A158333.P14505584042246791203

/-!
# A158336: A triangle of matrix polynomials: m(n)=antisymmeticmatix(n).pseudotranspose[antisymmeticmatix(n)].

The programs for A158336, there is no canonical definition to state claims against.
-/

/-! ## A158336.P13725015488639055903

`A014893(A051162(n))*A124216(n)`
-/

namespace A158336.P13725015488639055903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014893 (A051162 n).toNat * A124216 n

end

end A158336.P13725015488639055903

/-! ## A158336.P17981120342055474363

`A056594(A051162(n))*A124216(A316669(n+1))`
-/

namespace A158336.P17981120342055474363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A051162 n).toNat * A124216 (A316669 (n + 1)).toNat

end

end A158336.P17981120342055474363

/-!
# A158337: Composite numbers k such that k - (number of prime factors of k, counted with multiplicity) is a prime.

The programs for A158337, there is no canonical definition to state claims against.
-/

/-! ## A158337.P6707940241436892268

`lt[A067911(abs(A001222(n+1)-n)+1), n]+1`
-/

namespace A158337.P6707940241436892268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067911 (|A001222 (n + 1) - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A158337.P6707940241436892268

/-! ## A158337.P6507926386150790207

`lt[A124575(A014312(n+3)), A241986(n)]`
-/

namespace A158337.P6507926386150790207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124575 (A014312 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A158337.P6507926386150790207

/-!
# A158338: Composite numbers k such that k - number of divisors of k = prime.

The programs for A158338, there is no canonical definition to state claims against.
-/

/-! ## A158338.P1609989040487627010

`filter[A067531(n+1), A005171(#)]`
-/

namespace A158338.P1609989040487627010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A158338.P1609989040487627010

/-! ## A158338.P10552629094377697327

`filter[A067531(n+1), A066247(#)]`
-/

namespace A158338.P10552629094377697327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A158338.P10552629094377697327

/-! ## A158338.P10219670128350301276

`filter[A067531(n+1), A283265(#)]`
-/

namespace A158338.P10219670128350301276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A158338.P10219670128350301276

/-! ## A158338.P16104473058371731953

`∩[A002808(n+1), A067531(n+1)]`
-/

namespace A158338.P16104473058371731953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P16104473058371731953

/-! ## A158338.P14861927978491019676

`∩[A018252(n+1), A067531(n+1)]`
-/

namespace A158338.P14861927978491019676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P14861927978491019676

/-! ## A158338.P7011254642902216361

`∩[A067531(n+1), A141468(n+1)]`
-/

namespace A158338.P7011254642902216361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P7011254642902216361

/-! ## A158338.P11654675218877336571

`∩[A067531(n+1), A179891(n+1)]`
-/

namespace A158338.P11654675218877336571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179891 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P11654675218877336571

/-! ## A158338.P12735952978566896000

`∩[A067531(n+1), A080257(n+1)]`
-/

namespace A158338.P12735952978566896000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P12735952978566896000

/-! ## A158338.P13466687574495020228

`∩[A056653(n+1), A067531(n+1)]`
-/

namespace A158338.P13466687574495020228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P13466687574495020228

/-! ## A158338.P2104029566942733328

`∩[A065090(n+1), A067531(n+1)]`
-/

namespace A158338.P2104029566942733328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P2104029566942733328

/-! ## A158338.P3677191039298448230

`∩[A067531(n+1), A171581(n+1)]`
-/

namespace A158338.P3677191039298448230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P3677191039298448230

/-! ## A158338.P3005552572746759263

`∩[A067531(n+1), A173905(n+1)]`
-/

namespace A158338.P3005552572746759263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P3005552572746759263

/-! ## A158338.P17360096773324401278

`∩[A067531(n+1), A176423(n+1)]`
-/

namespace A158338.P17360096773324401278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P17360096773324401278

/-! ## A158338.P13631647943716712518

`∩[A067531(n+1), A343311(n+1)]`
-/

namespace A158338.P13631647943716712518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P13631647943716712518

/-! ## A158338.P10629328675054295796

`∩[A067531(n+1), A387319(n+1)]`
-/

namespace A158338.P10629328675054295796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P10629328675054295796

/-! ## A158338.P15903905438209940318

`∩[A067531(n+1), A348718(n+1)]`
-/

namespace A158338.P15903905438209940318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158338.P15903905438209940318

/-!
# A158339: Semiprimes that are the sum of four successive semiprimes.

The programs for A158339, the canonical program `A158339.P10759301498337830588` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158339 has offset 1).

The definition of A158339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158339.P10759301498337830588

`∩[A118717(n+1)+A118717(n+3), A175708(n+1)+1+n]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A158339

/-- `∩[A118717(n+1)+A118717(n+3), A175708(n+1)+1+n]` -/
def P10759301498337830588.Spec : Prop :=
  ∀ n, (P10759301498337830588.a n : ℤ) = A158339 (n + 1)

theorem P10759301498337830588.correct : P10759301498337830588.Spec := by
  intro n
  simp only [A158339, Nat.add_sub_cancel]

end A158339

/-!
# A158340: Composite numbers k such that (number of prime factors of k, counted with multiplicity) + (number of divisors of k) is a prime.

The programs for A158340, there is no canonical definition to state claims against.
-/

/-! ## A158340.P11753026494660420407

`∩[A109422(n+1), A368904(n+1)]`
-/

namespace A158340.P11753026494660420407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158340.P11753026494660420407

/-! ## A158340.P5943889347356901604

`A109422(A293754(n+1)^A117358(n+1))`
-/

namespace A158340.P5943889347356901604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (SequenceMachineLib.roundAway ((A293754 (n + 1) : ℚ) ^ (A117358 (n + 1) : ℤ))).toNat

end

end A158340.P5943889347356901604

/-! ## A158340.P13224160739497965961

`A109422(C(A293754(n+1), A117358(n+1)))`
-/

namespace A158340.P13224160739497965961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (Nat.choose (A293754 (n + 1)).toNat (A117358 (n + 1)).toNat)

end

end A158340.P13224160739497965961

/-! ## A158340.P4111983336278405159

`A109422(A117358(n+1)²*A293754(n+1))`
-/

namespace A158340.P4111983336278405159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (A117358 (n + 1) ^ 2 * A293754 (n + 1)).toNat

end

end A158340.P4111983336278405159

/-!
# A158341: a(n) = A013928(A002110(n)).

The programs for A158341, the canonical program `A158341.P1356125387868036850` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158341 has offset 0).

The definition of A158341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013928, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158341.P1356125387868036850

`A013928(A002110(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158341

/-- `A013928(A002110(n))` -/
def P1356125387868036850.Spec : Prop :=
  ∀ n, P1356125387868036850.a n = A158341 n

theorem P1356125387868036850.correct : P1356125387868036850.Spec := by
  intro n
  simp only [A158341]

end A158341

/-! ## A158341.P7884780658222474527

`A365435(n)-1`
-/

namespace A158341.P7884780658222474527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365435 n - 1

end

end A158341.P7884780658222474527

namespace A158341

/-- `A365435(n)-1` -/
def P7884780658222474527.Spec : Prop :=
  ∀ n, P7884780658222474527.a n = A158341 n

end A158341

/-! ## A158341.P16320466820480855000

`A064273(2^n-1)`
-/

namespace A158341.P16320466820480855000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064273 (2 ^ n - 1)

end

end A158341.P16320466820480855000

namespace A158341

/-- `A064273(2^n-1)` -/
def P16320466820480855000.Spec : Prop :=
  ∀ n, P16320466820480855000.a n = A158341 n

end A158341

/-! ## A158341.P755570496921475912

`A246353(2^n-1)-1`
-/

namespace A158341.P755570496921475912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 (2 ^ n - 1) - 1

end

end A158341.P755570496921475912

namespace A158341

/-- `A246353(2^n-1)-1` -/
def P755570496921475912.Spec : Prop :=
  ∀ n, P755570496921475912.a n = A158341 n

end A158341

/-! ## A158341.P15655244293356408291

`record[A064273(and(n, -(n+2)))]`
-/

namespace A158341.P15655244293356408291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064273 (Int.land (n : ℤ) (-(n + 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158341.P15655244293356408291

namespace A158341

/-- `record[A064273(and(n, -(n+2)))]` -/
def P15655244293356408291.Spec : Prop :=
  ∀ n, P15655244293356408291.a n = A158341 n

end A158341

/-!
# A158342: List of twin primes p1 and p2 with odd sum of digits of p1 and even sum of digits of p2.

The programs for A158342, there is no canonical definition to state claims against.
-/

/-! ## A158342.P2841415866179533912

`A132245(A032806(n+1)+1)`
-/

namespace A158342.P2841415866179533912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132245 (A032806 (n + 1) + 1).toNat

end

end A158342.P2841415866179533912

/-!
# A158348: Number of n-colorings of the Hypercube Graph Q4.

The programs for A158348, there is no canonical definition to state claims against.
-/

/-! ## A158348.P2858635197748720482

`A342128(A145018(n+5))`
-/

namespace A158348.P2858635197748720482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342128 (A145018 (n + 5)).toNat

end

end A158348.P2858635197748720482

/-! ## A158348.P10309207699529370691

`A342128(A155212(n)+12)`
-/

namespace A158348.P10309207699529370691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342128 (A155212 n + 12).toNat

end

end A158348.P10309207699529370691

/-! ## A158348.P1926023963551522143

`A342128(A056000(n)+14)`
-/

namespace A158348.P1926023963551522143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342128 (A056000 n + 14).toNat

end

end A158348.P1926023963551522143

/-!
# A158350: Primes p such that previousPrime(p) + p -+ 1 are twin primes.

The programs for A158350, there is no canonical definition to state claims against.
-/

/-! ## A158350.P14645674400101895259

`A167597(n+1)-A099349(n+1)`
-/

namespace A158350.P14645674400101895259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167597 (n + 1) - A099349 (n + 1)

end

end A158350.P14645674400101895259

/-! ## A158350.P14401259020479439638

`A045319(A176986(n+1))`
-/

namespace A158350.P14401259020479439638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (A176986 (n + 1)).toNat

end

end A158350.P14401259020479439638

/-! ## A158350.P18048385098508761817

`A000040(A176986(n+1)+1)`
-/

namespace A158350.P18048385098508761817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A176986 (n + 1) + 1).toNat

end

end A158350.P18048385098508761817

/-! ## A158350.P16390069543556730183

`A006005(A176986(n+1)+1)`
-/

namespace A158350.P16390069543556730183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A176986 (n + 1) + 1).toNat

end

end A158350.P16390069543556730183

/-! ## A158350.P6995523588488317855

`A004139(A176986(n+1)-1)`
-/

namespace A158350.P6995523588488317855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A176986 (n + 1) - 1).toNat

end

end A158350.P6995523588488317855

/-! ## A158350.P15764329358255657244

`A008578(A176986(n+1)+2)`
-/

namespace A158350.P15764329358255657244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A176986 (n + 1) + 2).toNat

end

end A158350.P15764329358255657244

/-! ## A158350.P5126553350164283654

`A151800(A099349(n+1))`
-/

namespace A158350.P5126553350164283654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A099349 (n + 1)).toNat

end

end A158350.P5126553350164283654

/-! ## A158350.P14575286157667573752

`A000040(A000720(A099349(n+1))+1)`
-/

namespace A158350.P14575286157667573752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A099349 (n + 1)).toNat + 1).toNat

end

end A158350.P14575286157667573752

/-!
# A158357: a(n) is the smallest number that is greater than a(n-1) and whose name in Spanish contains n vowels.

The programs for A158357, there is no canonical definition to state claims against.
-/

/-! ## A158357.P5426233245041347705

`a(n-1)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=22, a(4)=25, a(5)=27, a(6)=44, a(7)=116, a(8)=117, a(9)=144`
-/

namespace A158357.P5426233245041347705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7, 22, 25, 27, 44, 116, 117, 144] fun n a =>
  a (n - 1)

end

end A158357.P5426233245041347705

/-!
# A158358: Pseudoprimes to base 2 that are not squarefree, including the even pseudoprimes.

The programs for A158358, there is no canonical definition to state claims against.
-/

/-! ## A158358.P7536339505713245989

`∪[A247830(n+1), A247831(n+1)]%A247830(2*(n+2))`
-/

namespace A158358.P7536339505713245989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247831 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A247830 (2 * (n + 2)))

end

end A158358.P7536339505713245989

/-!
# A158359: Triangle T(n,k) read by rows: coefficient [x^(n-k)] of the characteristic polynomial of the n X n matrix A(r,c)=1 (if c > r) and A(r,c)=c (if c <= r).

The programs for A158359, there is no canonical definition to state claims against.
-/

/-! ## A158359.P4916004888199386954

`A213735(n)-A025469(A129952(n))`
-/

namespace A158359.P4916004888199386954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213735 n - A025469 (A129952 n).toNat

end

end A158359.P4916004888199386954

/-! ## A158359.P7797923477073301530

`A213735(n)-A102683(A073304(n))`
-/

namespace A158359.P7797923477073301530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213735 n - A102683 (A073304 n).toNat

end

end A158359.P7797923477073301530

/-! ## A158359.P16574628525354805267

`A213735(n)-A285969(A159347(n))`
-/

namespace A158359.P16574628525354805267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213735 n - A285969 (A159347 n).toNat

end

end A158359.P16574628525354805267

/-! ## A158359.P12360741252313525165

`A248925(n)-A010051(A148236(n))`
-/

namespace A158359.P12360741252313525165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248925 n - A010051 (A148236 n).toNat

end

end A158359.P12360741252313525165

/-!
# A158360: a(n) = A145511(n) - A145501(n).

The programs for A158360, there is no canonical definition to state claims against.
-/

/-! ## A158360.P17496234580882934251

`A145511(n+1)-A145501(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158360.P17496234580882934251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) - A145501 (n + 1)

end

end A158360.P17496234580882934251

/-! ## A158360.P6958213101194318680

`A158801(n+1)-A158327(n+1)`
-/

namespace A158360.P6958213101194318680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158801 (n + 1) - A158327 (n + 1)

end

end A158360.P6958213101194318680

/-! ## A158360.P3344886132145770981

`A145399(A026741(n+1))-A145501(n+1)`
-/

namespace A158360.P3344886132145770981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 (A026741 (n + 1)).toNat - A145501 (n + 1)

end

end A158360.P3344886132145770981

/-! ## A158360.P10522643844315822665

`A145444(n+1)-(A158327(n+1)+A145501(n+1))`
-/

namespace A158360.P10522643844315822665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145444 (n + 1) - (A158327 (n + 1) + A145501 (n + 1))

end

end A158360.P10522643844315822665

/-! ## A158360.P15803717895739416060

`A145511(n+1)+A158801(n+1)-A145444(n+1)`
-/

namespace A158360.P15803717895739416060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) + (A158801 (n + 1) - A145444 (n + 1))

end

end A158360.P15803717895739416060

/-!
# A158361: Primes p with property that Q = p^4 + 2^4 is prime.

The programs for A158361, there is no canonical definition to state claims against.
-/

/-! ## A158361.P7068072132002051137

`∩[A100484(n+1), A134620(n+1)]/2`
-/

namespace A158361.P7068072132002051137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134620 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A158361.P7068072132002051137

/-! ## A158361.P10860133254196787907

`floor(root(A094479(n+1), 4))`
-/

namespace A158361.P10860133254196787907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094479 (n + 1) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A158361.P10860133254196787907

/-! ## A158361.P7354132006899484809

`round(A000007(n+1)+root(A094479(n+1), 4))`
-/

namespace A158361.P7354132006899484809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 (n + 1) : ℝ) + (A094479 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A158361.P7354132006899484809

/-! ## A158361.P15427907548513404924

`round(A000038(n+1)+root(A094479(n+1), 4))`
-/

namespace A158361.P15427907548513404924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000038 (n + 1) : ℝ) + (A094479 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A158361.P15427907548513404924

/-! ## A158361.P18069392840344706713

`record[A006530(A134620(n+1))]`
-/

namespace A158361.P18069392840344706713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A134620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158361.P18069392840344706713

/-! ## A158361.P4547568387601240857

`A014682(∩[A100484(n+1), A134620(n+1)])`
-/

namespace A158361.P4547568387601240857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134620 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A158361.P4547568387601240857

/-! ## A158361.P6772926243012562648

`A000040(record[A263297(A134620(n+1))])`
-/

namespace A158361.P6772926243012562648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (A134620 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A158361.P6772926243012562648

/-! ## A158361.P11743586617175490618

`A000040(A287927(n+1))`
-/

namespace A158361.P11743586617175490618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A287927 (n + 1)).toNat

end

end A158361.P11743586617175490618

/-! ## A158361.P10179681019393756473

`A008578(A287927(n+1)+1)`
-/

namespace A158361.P10179681019393756473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A287927 (n + 1) + 1).toNat

end

end A158361.P10179681019393756473

/-! ## A158361.P5610017828193412381

`∑{d}[A287927(n+1), A007444(#)]`
-/

namespace A158361.P5610017828193412381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A158361.P5610017828193412381

/-!
# A158362: a(n) = binomial((n+1)^3,n+2).

The programs for A158362, the canonical program `A158362.P7962788452802375638` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158362 has offset 1).

The definition of A158362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+2)^3, n+3)` (program `A158362.P7962788452802375638`, by `A158362.P7962788452802375638.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158362.P7962788452802375638

`C((n+2)^3, n+3)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158362

/-- `C((n+2)^3, n+3)` -/
def P7962788452802375638.Spec : Prop :=
  ∀ n, (P7962788452802375638.a n : ℤ) = A158362 (n + 1)

theorem P7962788452802375638.correct : P7962788452802375638.Spec := by
  intro n
  simp only [A158362, Nat.add_sub_cancel]

end A158362

/-! ## A158362.P1720203980787693855

`A002378(n+1)*A107444(n+2)`
-/

namespace A158362.P1720203980787693855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A107444 (n + 2)

end

end A158362.P1720203980787693855

namespace A158362

/-- `A002378(n+1)*A107444(n+2)` -/
def P1720203980787693855.Spec : Prop :=
  ∀ n, P1720203980787693855.a n = A158362 (n + 1)

end A158362

/-!
# A158363: a(n) = binomial((n+2)^3,n+1).

The programs for A158363, the canonical program `A158363.P17494262703303300904` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158363 has offset 0).

The definition of A158363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+2)^3, n+1)` (program `A158363.P17494262703303300904`, by `A158363.P17494262703303300904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158363.P17494262703303300904

`C((n+2)^3, n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158363

/-- `C((n+2)^3, n+1)` -/
def P17494262703303300904.Spec : Prop :=
  ∀ n, (P17494262703303300904.a n : ℤ) = A158363 n

theorem P17494262703303300904.correct : P17494262703303300904.Spec := by
  intro n
  simp only [A158363]

end A158363

/-! ## A158363.P5424997636080826613

`∑[abs(Δ[C((n+1)*(n+1)², n)])]+1`
-/

namespace A158363.P5424997636080826613
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) * (n + 1) ^ 2) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A158363.P5424997636080826613

namespace A158363

/-- `∑[abs(Δ[C((n+1)*(n+1)², n)])]+1` -/
def P5424997636080826613.Spec : Prop :=
  ∀ n, P5424997636080826613.a n = A158363 n

end A158363

/-! ## A158363.P12453341031157390934

`lcm(n+2, C((n+2)*(n+2)², n+1))`
-/

namespace A158363.P12453341031157390934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.choose ((n + 2) * (n + 2) ^ 2) (n + 1))

end

end A158363.P12453341031157390934

namespace A158363

/-- `lcm(n+2, C((n+2)*(n+2)², n+1))` -/
def P12453341031157390934.Spec : Prop :=
  ∀ n, (P12453341031157390934.a n : ℤ) = A158363 n

end A158363

/-! ## A158363.P8359928685504446626

`record[C(A109900(n+3), A027656(n))]`
-/

namespace A158363.P8359928685504446626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109900 (n + 3)).toNat (A027656 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158363.P8359928685504446626

namespace A158363

/-- `record[C(A109900(n+3), A027656(n))]` -/
def P8359928685504446626.Spec : Prop :=
  ∀ n, (P8359928685504446626.a n : ℤ) = A158363 n

end A158363

/-! ## A158363.P8829947631224895721

`record[C(A126951(n+4), A126951(n+1))]`
-/

namespace A158363.P8829947631224895721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126951 (n + 4)).toNat (A126951 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158363.P8829947631224895721

namespace A158363

/-- `record[C(A126951(n+4), A126951(n+1))]` -/
def P8829947631224895721.Spec : Prop :=
  ∀ n, (P8829947631224895721.a n : ℤ) = A158363 n

end A158363

/-!
# A158364: a(n) = 529*n^2 - 2*n.

The programs for A158364, the canonical program `A158364.P8091984443434420973` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158364 has offset 1).

The definition of A158364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*(n+1)²-2*(n+1)` (program `A158364.P8091984443434420973`, by `A158364.P8091984443434420973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158364.P8091984443434420973

`529*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158364

/-- `529*(n+1)²-2*(n+1)` -/
def P8091984443434420973.Spec : Prop :=
  ∀ n, P8091984443434420973.a n = A158364 (n + 1)

theorem P8091984443434420973.correct : P8091984443434420973.Spec := by
  intro n
  simp only [A158364, Nat.add_sub_cancel]

end A158364

/-! ## A158364.P7611964409876746378

`(n+1)*(A158365(n+1)-1)`
-/

namespace A158364.P7611964409876746378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158365 (n + 1) - 1)

end

end A158364.P7611964409876746378

namespace A158364

/-- `(n+1)*(A158365(n+1)-1)` -/
def P7611964409876746378.Spec : Prop :=
  ∀ n, P7611964409876746378.a n = A158364 (n + 1)

end A158364

/-! ## A158364.P8960285908873620763

`(n+1)*(A158368(n+1)-3)`
-/

namespace A158364.P8960285908873620763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158368 (n + 1) - 3)

end

end A158364.P8960285908873620763

namespace A158364

/-- `(n+1)*(A158368(n+1)-3)` -/
def P8960285908873620763.Spec : Prop :=
  ∀ n, P8960285908873620763.a n = A158364 (n + 1)

theorem P8960285908873620763.correct : P8960285908873620763.Spec := by
  intro n
  simp only [A158364, Nat.add_sub_cancel, A158364.P8960285908873620763.a, A158364.P8091984443434420973.a, A158368, A158368.P7770606815532801405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158364

/-! ## A158364.P271523379289036441

`A158367(2*(n+1))%A158367(n+1)`
-/

namespace A158364.P271523379289036441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158367 (2 * (n + 1))) (A158367 (n + 1))

end

end A158364.P271523379289036441

namespace A158364

/-- `A158367(2*(n+1))%A158367(n+1)` -/
def P271523379289036441.Spec : Prop :=
  ∀ n, P271523379289036441.a n = A158364 (n + 1)

end A158364

/-!
# A158365: a(n) = 529*n - 1.

The programs for A158365, the canonical program `A158365.P1111986259373638167` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158365 has offset 1).

The definition of A158365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*(n+1)-1` (program `A158365.P1111986259373638167`, by `A158365.P1111986259373638167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158365.P1111986259373638167

`529*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158365

/-- `529*(n+1)-1` -/
def P1111986259373638167.Spec : Prop :=
  ∀ n, P1111986259373638167.a n = A158365 (n + 1)

theorem P1111986259373638167.correct : P1111986259373638167.Spec := by
  intro n
  simp only [A158365, Nat.add_sub_cancel]

end A158365

/-!
# A158366: Least k such that n! divides (n+k)!/(n+1)!.

The programs for A158366, there is no canonical definition to state claims against.
-/

/-! ## A158366.P4771063340532517758

`or(abs(A016406(n)), A075054(n+1))`
-/

namespace A158366.P4771063340532517758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |A016406 n| (A075054 (n + 1))

end

end A158366.P4771063340532517758

/-! ## A158366.P3869459677932045210

`or(A075054(n+1), A135481(n+1))`
-/

namespace A158366.P3869459677932045210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075054 (n + 1)) (A135481 (n + 1))

end

end A158366.P3869459677932045210

/-! ## A158366.P17327969845685467939

`or(and(2, A056594(n)), A075054(n+1))`
-/

namespace A158366.P17327969845685467939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 2 (A056594 n)) (A075054 (n + 1))

end

end A158366.P17327969845685467939

/-! ## A158366.P2523769044908646592

`or(and(2, A111954(n)), A075054(n+1))`
-/

namespace A158366.P2523769044908646592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 2 (A111954 n)) (A075054 (n + 1))

end

end A158366.P2523769044908646592

/-! ## A158366.P8970905925527362180

`or(and(n, A016213(n)), A075054(n+1))`
-/

namespace A158366.P8970905925527362180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (n : ℤ) (A016213 n)) (A075054 (n + 1))

end

end A158366.P8970905925527362180

/-! ## A158366.P8136235255086926735

`or(A004638(n+1)%5, A075054(n+1))`
-/

namespace A158366.P8136235255086926735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A004638 (n + 1)) 5) (A075054 (n + 1))

end

end A158366.P8136235255086926735

/-! ## A158366.P17828185355916055519

`A075054(n+1)+A000038(A004455(n))`
-/

namespace A158366.P17828185355916055519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (n + 1) + A000038 (A004455 n).toNat

end

end A158366.P17828185355916055519

/-! ## A158366.P12983281026526661181

`or(A007814(A017053(n)), A075054(n+1))`
-/

namespace A158366.P12983281026526661181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A017053 n).toNat) (A075054 (n + 1))

end

end A158366.P12983281026526661181

/-! ## A158366.P12240241114158557530

`or(A075054(n+1), A107279(A027656(n)))`
-/

namespace A158366.P12240241114158557530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075054 (n + 1)) (A107279 (A027656 n).toNat)

end

end A158366.P12240241114158557530

/-!
# A158367: a(n) = 529*n^2 + 2*n.

The programs for A158367, the canonical program `A158367.P11979929180529016922` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158367 has offset 1).

The definition of A158367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*(n+1)²+2*(n+1)` (program `A158367.P11979929180529016922`, by `A158367.P11979929180529016922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158367.P11979929180529016922

`529*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158367

/-- `529*(n+1)²+2*(n+1)` -/
def P11979929180529016922.Spec : Prop :=
  ∀ n, (P11979929180529016922.a n : ℤ) = A158367 (n + 1)

theorem P11979929180529016922.correct : P11979929180529016922.Spec := by
  intro n
  simp only [A158367, Nat.add_sub_cancel]

end A158367

/-! ## A158367.P11730338175926047191

`(n+1)*(A158368(n+1)+1)`
-/

namespace A158367.P11730338175926047191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158368 (n + 1) + 1)

end

end A158367.P11730338175926047191

namespace A158367

/-- `(n+1)*(A158368(n+1)+1)` -/
def P11730338175926047191.Spec : Prop :=
  ∀ n, P11730338175926047191.a n = A158367 (n + 1)

theorem P11730338175926047191.correct : P11730338175926047191.Spec := by
  intro n
  simp only [A158367, Nat.add_sub_cancel, A158367.P11730338175926047191.a, A158367.P11979929180529016922.a, A158368, A158368.P7770606815532801405.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158367

/-! ## A158367.P5055779394381587847

`(n+1)*(A158365(n+1)+3)`
-/

namespace A158367.P5055779394381587847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158365 (n + 1) + 3)

end

end A158367.P5055779394381587847

namespace A158367

/-- `(n+1)*(A158365(n+1)+3)` -/
def P5055779394381587847.Spec : Prop :=
  ∀ n, P5055779394381587847.a n = A158367 (n + 1)

end A158367

/-! ## A158367.P8429997530575616901

`A031701(A187829(n+1))`
-/

namespace A158367.P8429997530575616901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031701 (A187829 (n + 1)).toNat

end

end A158367.P8429997530575616901

namespace A158367

/-- `A031701(A187829(n+1))` -/
def P8429997530575616901.Spec : Prop :=
  ∀ n, P8429997530575616901.a n = A158367 (n + 1)

end A158367

/-! ## A158367.P1144135252647848687

`A031701(A077168(n))`
-/

namespace A158367.P1144135252647848687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031701 (A077168 n).toNat

end

end A158367.P1144135252647848687

namespace A158367

/-- `A031701(A077168(n))` -/
def P1144135252647848687.Spec : Prop :=
  ∀ n, P1144135252647848687.a n = A158367 (n + 1)

end A158367

/-!
# A158368: a(n) = 529*n + 1.

The programs for A158368, the canonical program `A158368.P7770606815532801405` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158368 has offset 1).

The definition of A158368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `529*(n+1)+1` (program `A158368.P7770606815532801405`, by `A158368.P7770606815532801405.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158368.P7770606815532801405

`529*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158368

/-- `529*(n+1)+1` -/
def P7770606815532801405.Spec : Prop :=
  ∀ n, (P7770606815532801405.a n : ℤ) = A158368 (n + 1)

theorem P7770606815532801405.correct : P7770606815532801405.Spec := by
  intro n
  simp only [A158368, Nat.add_sub_cancel]

end A158368

/-!
# A158369: a(n) = 576*n^2 + 2*n.

The programs for A158369, the canonical program `A158369.P10253454668304456400` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158369 has offset 1).

The definition of A158369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*(n+1)²+2*(n+1)` (program `A158369.P10253454668304456400`, by `A158369.P10253454668304456400.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158369.P10253454668304456400

`576*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158369

/-- `576*(n+1)²+2*(n+1)` -/
def P10253454668304456400.Spec : Prop :=
  ∀ n, (P10253454668304456400.a n : ℤ) = A158369 (n + 1)

theorem P10253454668304456400.correct : P10253454668304456400.Spec := by
  intro n
  simp only [A158369, Nat.add_sub_cancel]

end A158369

/-! ## A158369.P1677783260946545411

`(n+1)*(A158370(n+1)+1)`
-/

namespace A158369.P1677783260946545411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158370 (n + 1) + 1)

end

end A158369.P1677783260946545411

namespace A158369

/-- `(n+1)*(A158370(n+1)+1)` -/
def P1677783260946545411.Spec : Prop :=
  ∀ n, P1677783260946545411.a n = A158369 (n + 1)

theorem P1677783260946545411.correct : P1677783260946545411.Spec := by
  intro n
  simp only [A158369, Nat.add_sub_cancel, A158369.P1677783260946545411.a, A158369.P10253454668304456400.a, A158370, A158370.P7997081242684084524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158369

/-! ## A158369.P12864935855503791976

`(n+1)*(A158372(n+1)+3)`
-/

namespace A158369.P12864935855503791976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158372 (n + 1) + 3)

end

end A158369.P12864935855503791976

namespace A158369

/-- `(n+1)*(A158372(n+1)+3)` -/
def P12864935855503791976.Spec : Prop :=
  ∀ n, P12864935855503791976.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P3490026551000517624

`2*(n+1)*A157990(n+1)`
-/

namespace A158369.P3490026551000517624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157990 (n + 1))

end

end A158369.P3490026551000517624

namespace A158369

/-- `2*(n+1)*A157990(n+1)` -/
def P3490026551000517624.Spec : Prop :=
  ∀ n, P3490026551000517624.a n = A158369 (n + 1)

theorem P3490026551000517624.correct : P3490026551000517624.Spec := by
  intro n
  simp only [A158369, Nat.add_sub_cancel, A158369.P3490026551000517624.a, A158369.P10253454668304456400.a, A157990, A157990.P10283086455766197930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158369

/-! ## A158369.P16929089722932148050

`(96*(A016969(n)+1)+2)*(n+1)`
-/

namespace A158369.P16929089722932148050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (96 * (A016969 n + 1) + 2) * (n + 1 : ℤ)

end

end A158369.P16929089722932148050

namespace A158369

/-- `(96*(A016969(n)+1)+2)*(n+1)` -/
def P16929089722932148050.Spec : Prop :=
  ∀ n, P16929089722932148050.a n = A158369 (n + 1)

theorem P16929089722932148050.correct : P16929089722932148050.Spec := by
  intro n
  simp only [A158369, Nat.add_sub_cancel, A158369.P16929089722932148050.a, A158369.P10253454668304456400.a, A016969, A016969.P9377817521032485226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158369

/-! ## A158369.P3714611443632435748

`2*(A158271(n+1)-A157324(n+1))`
-/

namespace A158369.P3714611443632435748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158271 (n + 1) - A157324 (n + 1))

end

end A158369.P3714611443632435748

namespace A158369

/-- `2*(A158271(n+1)-A157324(n+1))` -/
def P3714611443632435748.Spec : Prop :=
  ∀ n, P3714611443632435748.a n = A158369 (n + 1)

theorem P3714611443632435748.correct : P3714611443632435748.Spec := by
  intro n
  simp only [A158369, Nat.add_sub_cancel, A158369.P3714611443632435748.a, A158369.P10253454668304456400.a, A157324, A157324.P15345809453353872924.a, A158271, A158271.P12179135139869131557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158369

/-! ## A158369.P9376513917573942413

`(A158136(2*(n+1))+2)*2*(n+1)`
-/

namespace A158369.P9376513917573942413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158136 (2 * (n + 1)) + 2) * (2 * (n + 1) : ℤ)

end

end A158369.P9376513917573942413

namespace A158369

/-- `(A158136(2*(n+1))+2)*2*(n+1)` -/
def P9376513917573942413.Spec : Prop :=
  ∀ n, P9376513917573942413.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P17823136133357109107

`(A158255(2*(n+1))-(2*n+1))*(n+1)`
-/

namespace A158369.P17823136133357109107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158255 (2 * (n + 1)) - (2 * n + 1 : ℤ)) * (n + 1 : ℤ)

end

end A158369.P17823136133357109107

namespace A158369

/-- `(A158255(2*(n+1))-(2*n+1))*(n+1)` -/
def P17823136133357109107.Spec : Prop :=
  ∀ n, P17823136133357109107.a n = A158369 (n + 1)

end A158369

/-!
# A158370: a(n) = 576*n + 1.

The programs for A158370, the canonical program `A158370.P7997081242684084524` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158370 has offset 1).

The definition of A158370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*(n+1)+1` (program `A158370.P7997081242684084524`, by `A158370.P7997081242684084524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158370.P7997081242684084524

`576*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158370

/-- `576*(n+1)+1` -/
def P7997081242684084524.Spec : Prop :=
  ∀ n, (P7997081242684084524.a n : ℤ) = A158370 (n + 1)

theorem P7997081242684084524.correct : P7997081242684084524.Spec := by
  intro n
  simp only [A158370, Nat.add_sub_cancel]

end A158370

/-!
# A158371: a(n) = 576*n^2 - 2*n.

The programs for A158371, the canonical program `A158371.P15450564424248320410` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158371 has offset 1).

The definition of A158371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*(n+1)²-2*(n+1)` (program `A158371.P15450564424248320410`, by `A158371.P15450564424248320410.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158371.P15450564424248320410

`576*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158371

/-- `576*(n+1)²-2*(n+1)` -/
def P15450564424248320410.Spec : Prop :=
  ∀ n, P15450564424248320410.a n = A158371 (n + 1)

theorem P15450564424248320410.correct : P15450564424248320410.Spec := by
  intro n
  simp only [A158371, Nat.add_sub_cancel]

end A158371

/-! ## A158371.P15329316065329306847

`(n+1)*(A158372(n+1)-1)`
-/

namespace A158371.P15329316065329306847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158372 (n + 1) - 1)

end

end A158371.P15329316065329306847

namespace A158371

/-- `(n+1)*(A158372(n+1)-1)` -/
def P15329316065329306847.Spec : Prop :=
  ∀ n, P15329316065329306847.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P5381259917939443458

`2*(n+1)*A157997(n+1)`
-/

namespace A158371.P5381259917939443458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157997 (n + 1))

end

end A158371.P5381259917939443458

namespace A158371

/-- `2*(n+1)*A157997(n+1)` -/
def P5381259917939443458.Spec : Prop :=
  ∀ n, P5381259917939443458.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P13301364896604868083

`(n+1)*(A158370(n+1)-3)`
-/

namespace A158371.P13301364896604868083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158370 (n + 1) - 3)

end

end A158371.P13301364896604868083

namespace A158371

/-- `(n+1)*(A158370(n+1)-3)` -/
def P13301364896604868083.Spec : Prop :=
  ∀ n, P13301364896604868083.a n = A158371 (n + 1)

theorem P13301364896604868083.correct : P13301364896604868083.Spec := by
  intro n
  simp only [A158371, Nat.add_sub_cancel, A158371.P13301364896604868083.a, A158371.P15450564424248320410.a, A158370, A158370.P7997081242684084524.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158371

/-! ## A158371.P5122838658394417775

`A156635(2*(n+1))`
-/

namespace A158371.P5122838658394417775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156635 (2 * (n + 1))

end

end A158371.P5122838658394417775

namespace A158371

/-- `A156635(2*(n+1))` -/
def P5122838658394417775.Spec : Prop :=
  ∀ n, P5122838658394417775.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P18254692746992684377

`2*(A158738(2*(n+1))-n)`
-/

namespace A158371.P18254692746992684377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A158738 (2 * (n + 1)) - (n : ℤ))

end

end A158371.P18254692746992684377

namespace A158371

/-- `2*(A158738(2*(n+1))-n)` -/
def P18254692746992684377.Spec : Prop :=
  ∀ n, P18254692746992684377.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P15205869972284314626

`2*(n+1)*A158136(2*(n+1))`
-/

namespace A158371.P15205869972284314626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158136 (2 * (n + 1))

end

end A158371.P15205869972284314626

namespace A158371

/-- `2*(n+1)*A158136(2*(n+1))` -/
def P15205869972284314626.Spec : Prop :=
  ∀ n, P15205869972284314626.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P16214001480810675379

`A158369(2*(n+1))%A158369(n+1)`
-/

namespace A158371.P16214001480810675379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158369 (2 * (n + 1))) (A158369 (n + 1))

end

end A158371.P16214001480810675379

namespace A158371

/-- `A158369(2*(n+1))%A158369(n+1)` -/
def P16214001480810675379.Spec : Prop :=
  ∀ n, P16214001480810675379.a n = A158371 (n + 1)

end A158371

/-!
# A158372: a(n) = 576*n - 1.

The programs for A158372, the canonical program `A158372.P14411357511359478082` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158372 has offset 1).

The definition of A158372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `576*(n+1)-1` (program `A158372.P14411357511359478082`, by `A158372.P14411357511359478082.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158372.P14411357511359478082

`576*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158372

/-- `576*(n+1)-1` -/
def P14411357511359478082.Spec : Prop :=
  ∀ n, P14411357511359478082.a n = A158372 (n + 1)

theorem P14411357511359478082.correct : P14411357511359478082.Spec := by
  intro n
  simp only [A158372, Nat.add_sub_cancel]

end A158372

/-!
# A158373: a(n) = 625*n^2 - 2*n.

The programs for A158373, the canonical program `A158373.P10122933274415194963` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158373 has offset 1).

The definition of A158373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `625*(n+1)²-2*(n+1)` (program `A158373.P10122933274415194963`, by `A158373.P10122933274415194963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158373.P10122933274415194963

`625*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158373

/-- `625*(n+1)²-2*(n+1)` -/
def P10122933274415194963.Spec : Prop :=
  ∀ n, P10122933274415194963.a n = A158373 (n + 1)

theorem P10122933274415194963.correct : P10122933274415194963.Spec := by
  intro n
  simp only [A158373, Nat.add_sub_cancel]

end A158373

/-! ## A158373.P9867657476911017066

`(n+1)*(A158374(n+1)-1)`
-/

namespace A158373.P9867657476911017066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158374 (n + 1) - 1)

end

end A158373.P9867657476911017066

namespace A158373

/-- `(n+1)*(A158374(n+1)-1)` -/
def P9867657476911017066.Spec : Prop :=
  ∀ n, P9867657476911017066.a n = A158373 (n + 1)

end A158373

/-! ## A158373.P1341448677598934049

`(n+1)*(A158383(n+1)-3)`
-/

namespace A158373.P1341448677598934049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158383 (n + 1) - 3)

end

end A158373.P1341448677598934049

namespace A158373

/-- `(n+1)*(A158383(n+1)-3)` -/
def P1341448677598934049.Spec : Prop :=
  ∀ n, P1341448677598934049.a n = A158373 (n + 1)

theorem P1341448677598934049.correct : P1341448677598934049.Spec := by
  intro n
  simp only [A158373, Nat.add_sub_cancel, A158373.P1341448677598934049.a, A158373.P10122933274415194963.a, A158383, A158383.P11617585301148495171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158373

/-! ## A158373.P6475458900151252522

`A158382(2*(n+1))%A158382(n+1)`
-/

namespace A158373.P6475458900151252522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158382 (2 * (n + 1))) (A158382 (n + 1))

end

end A158373.P6475458900151252522

namespace A158373

/-- `A158382(2*(n+1))%A158382(n+1)` -/
def P6475458900151252522.Spec : Prop :=
  ∀ n, P6475458900151252522.a n = A158373 (n + 1)

end A158373

/-!
# A158374: a(n) = 625*n - 1.

The programs for A158374, the canonical program `A158374.P14399755099115733962` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158374 has offset 1).

The definition of A158374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `625*(n+1)-1` (program `A158374.P14399755099115733962`, by `A158374.P14399755099115733962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158374.P14399755099115733962

`625*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158374

/-- `625*(n+1)-1` -/
def P14399755099115733962.Spec : Prop :=
  ∀ n, P14399755099115733962.a n = A158374 (n + 1)

theorem P14399755099115733962.correct : P14399755099115733962.Spec := by
  intro n
  simp only [A158374, Nat.add_sub_cancel]

end A158374

/-!
# A158377: a(1) = 0, a(n) = lcm(A034684(n), A034699(n)) for n >= 2.

The programs for A158377, there is no canonical definition to state claims against.
-/

/-! ## A158377.P12768062151188422962

`(A304233(n+1)-n)%(n+1)+n`
-/

namespace A158377.P12768062151188422962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304233 (n + 1) - (n : ℤ)) (n + 1 : ℤ) + (n : ℤ)

end

end A158377.P12768062151188422962

/-! ## A158377.P8550633520937904211

`A087156(gcd(n+1, A304233(n+1)))`
-/

namespace A158377.P8550633520937904211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (Int.gcd (n + 1 : ℤ) (A304233 (n + 1)))

end

end A158377.P8550633520937904211

/-! ## A158377.P1792558324558116062

`A057427(n)+n%A304233(n+1)`
-/

namespace A158377.P1792558324558116062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + Int.tmod (n : ℤ) (A304233 (n + 1))

end

end A158377.P1792558324558116062

/-! ## A158377.P8522691425078691440

`abs(A131738(n)/A284600(A324388(n+1)))`
-/

namespace A158377.P8522691425078691440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A131738 n : ℚ) / (A284600 (A324388 (n + 1)).toNat : ℚ)|

end

end A158377.P8522691425078691440

/-! ## A158377.P5026956010305698268

`lcm(A008475(A034684(n+1)), A034699(n+1))`
-/

namespace A158377.P5026956010305698268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008475 (A034684 (n + 1)).toNat) (A034699 (n + 1))

end

end A158377.P5026956010305698268

/-! ## A158377.P14663636811277926615

`A131738(n)²/(A284600(n+1)*A324388(n+1))`
-/

namespace A158377.P14663636811277926615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131738 n ^ 2 : ℚ) / (A284600 (n + 1) * A324388 (n + 1) : ℚ)

end

end A158377.P14663636811277926615

/-! ## A158377.P13823104043560854643

`A087156(A304233(n+1)/(n*A001221(n+1)!%2+1))`
-/

namespace A158377.P13823104043560854643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (SequenceMachineLib.roundAway ((A304233 (n + 1) : ℚ) / ((n * (Nat.factorial (A001221 (n + 1)).toNat % 2) + 1 : ℕ) : ℚ))).toNat

end

end A158377.P13823104043560854643

/-! ## A158377.P5384499386752636542

`gcd(A002378(n), A087156(A304233(n+1)))`
-/

namespace A158377.P5384499386752636542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 n) (A087156 (A304233 (n + 1)).toNat)

end

end A158377.P5384499386752636542

/-!
# A158379: Period-lengths of the base-3 MR-expansions of the reciprocals of the positive integers.

The programs for A158379, there is no canonical definition to state claims against.
-/

/-! ## A158379.P14974930888660565767

`A290104(8*A005939(n+1))`
-/

namespace A158379.P14974930888660565767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (8 * A005939 (n + 1)).toNat

end

end A158379.P14974930888660565767

/-! ## A158379.P12826768158957823595

`A290104(lcm(8, A005939(n+1)))`
-/

namespace A158379.P12826768158957823595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290104 (Int.lcm 8 (A005939 (n + 1)))

end

end A158379.P12826768158957823595

/-! ## A158379.P4010713014338487321

`A237271(A233308(n)*A236440(3*n+2))`
-/

namespace A158379.P4010713014338487321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A233308 n * A236440 (3 * n + 2)).toNat

end

end A158379.P4010713014338487321

/-!
# A158380: Number of solutions to +-1 +- 3 +- 6 +- ... +- n(n+1)/2 = 0.

The programs for A158380, there is no canonical definition to state claims against.
-/

/-! ## A158380.P11632321663185639783

`2*A058498(A000007(gcd(n+1, a(n-1)))+n)` with `a(0)=1`
-/

namespace A158380.P11632321663185639783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A058498 (A000007 (Int.gcd (n + 1 : ℤ) (a (n - 1))) + (n : ℤ)).toNat

end

end A158380.P11632321663185639783

/-! ## A158380.P12406592697839921603

`(A308682(n)+A058498(A028310(n)))*A131379(n)²`
-/

namespace A158380.P12406592697839921603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308682 n + A058498 (A028310 n).toNat) * A131379 n ^ 2

end

end A158380.P12406592697839921603

/-! ## A158380.P1076623820399585492

`(A308682(n)+A058498(A233583(n+1)))*A131379(n)²`
-/

namespace A158380.P1076623820399585492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308682 n + A058498 (A233583 (n + 1)).toNat) * A131379 n ^ 2

end

end A158380.P1076623820399585492

/-! ## A158380.P919136949158503364

`(A308682(n)+A058498(A000007(n)+n))*A131379(n)²`
-/

namespace A158380.P919136949158503364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308682 n + A058498 (A000007 n + (n : ℤ)).toNat) * A131379 n ^ 2

end

end A158380.P919136949158503364

/-! ## A158380.P3423003116850668530

`lcm(A131379(n), A350287(n))`
-/

namespace A158380.P3423003116850668530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131379 n) (A350287 n)

end

end A158380.P3423003116850668530

/-!
# A158381: Positions of Fibonacci numbers in the sequence of Markoff numbers (A002559).

The programs for A158381, there is no canonical definition to state claims against.
-/

/-! ## A158381.P11107063839497243162

`eq[1, A305313(n+1)]+1`
-/

namespace A158381.P11107063839497243162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A158381.P11107063839497243162

/-! ## A158381.P18052157116863259509

`record[A000027(n+1)/A305313(n+1)]`
-/

namespace A158381.P18052157116863259509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A305313 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158381.P18052157116863259509

/-! ## A158381.P3452070654516301791

`record[A028310(n+1)/A305313(n+1)]`
-/

namespace A158381.P3452070654516301791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 (n + 1) : ℚ) / (A305313 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158381.P3452070654516301791

/-! ## A158381.P6350190529602391128

`record[A090108(n+1)/A305313(n+1)]`
-/

namespace A158381.P6350190529602391128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090108 (n + 1) : ℚ) / (A305313 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158381.P6350190529602391128

/-! ## A158381.P13610510725882439628

`record[A117657(n+1)/A305313(n+1)]`
-/

namespace A158381.P13610510725882439628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117657 (n + 1) : ℚ) / (A305313 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A158381.P13610510725882439628

/-!
# A158382: a(n) = 625*n^2 + 2*n.

The programs for A158382, the canonical program `A158382.P4300116314594494459` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158382 has offset 1).

The definition of A158382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `625*(n+1)²+2*(n+1)` (program `A158382.P4300116314594494459`, by `A158382.P4300116314594494459.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158382.P4300116314594494459

`625*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158382

/-- `625*(n+1)²+2*(n+1)` -/
def P4300116314594494459.Spec : Prop :=
  ∀ n, (P4300116314594494459.a n : ℤ) = A158382 (n + 1)

theorem P4300116314594494459.correct : P4300116314594494459.Spec := by
  intro n
  simp only [A158382, Nat.add_sub_cancel]

end A158382

/-! ## A158382.P17276196904508818842

`(n+1)*(A158383(n+1)+1)`
-/

namespace A158382.P17276196904508818842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158383 (n + 1) + 1)

end

end A158382.P17276196904508818842

namespace A158382

/-- `(n+1)*(A158383(n+1)+1)` -/
def P17276196904508818842.Spec : Prop :=
  ∀ n, P17276196904508818842.a n = A158382 (n + 1)

theorem P17276196904508818842.correct : P17276196904508818842.Spec := by
  intro n
  simp only [A158382, Nat.add_sub_cancel, A158382.P17276196904508818842.a, A158382.P4300116314594494459.a, A158383, A158383.P11617585301148495171.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158382

/-! ## A158382.P14437080389048312618

`(n+1)*(A158374(n+1)+3)`
-/

namespace A158382.P14437080389048312618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158374 (n + 1) + 3)

end

end A158382.P14437080389048312618

namespace A158382

/-- `(n+1)*(A158374(n+1)+3)` -/
def P14437080389048312618.Spec : Prop :=
  ∀ n, P14437080389048312618.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P2182100982496541197

`A031703(A187829(n+1))`
-/

namespace A158382.P2182100982496541197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031703 (A187829 (n + 1)).toNat

end

end A158382.P2182100982496541197

namespace A158382

/-- `A031703(A187829(n+1))` -/
def P2182100982496541197.Spec : Prop :=
  ∀ n, P2182100982496541197.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P3097334424965740283

`A031703(A077168(n))`
-/

namespace A158382.P3097334424965740283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031703 (A077168 n).toNat

end

end A158382.P3097334424965740283

namespace A158382

/-- `A031703(A077168(n))` -/
def P3097334424965740283.Spec : Prop :=
  ∀ n, P3097334424965740283.a n = A158382 (n + 1)

end A158382

/-!
# A158383: a(n) = 625*n + 1.

The programs for A158383, the canonical program `A158383.P11617585301148495171` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158383 has offset 1).

The definition of A158383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `625*(n+1)+1` (program `A158383.P11617585301148495171`, by `A158383.P11617585301148495171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158383.P11617585301148495171

`625*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158383

/-- `625*(n+1)+1` -/
def P11617585301148495171.Spec : Prop :=
  ∀ n, (P11617585301148495171.a n : ℤ) = A158383 (n + 1)

theorem P11617585301148495171.correct : P11617585301148495171.Spec := by
  intro n
  simp only [A158383, Nat.add_sub_cancel]

end A158383

/-!
# A158384: Positions of Pell numbers in the sequence of Markoff numbers (A002559).

The programs for A158384, there is no canonical definition to state claims against.
-/

/-! ## A158384.P14099460722169790696

`∑[A035178(A088305(n)+n)+n]`
-/

namespace A158384.P14099460722169790696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (A088305 n + (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158384.P14099460722169790696

/-! ## A158384.P1443034880716914799

`A238598(A140730(n))+A000217(n)`
-/

namespace A158384.P1443034880716914799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A140730 n).toNat + A000217 n

end

end A158384.P1443034880716914799

/-! ## A158384.P2143739088755418473

`or(A331995(A133263(n)), A341907(n))`
-/

namespace A158384.P2143739088755418473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A331995 (A133263 n).toNat) (A341907 n)

end

end A158384.P2143739088755418473

/-! ## A158384.P2524242305957117753

`A356944(A180107(n)+A087811(n+1))`
-/

namespace A158384.P2524242305957117753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A180107 n + A087811 (n + 1)).toNat

end

end A158384.P2524242305957117753

/-! ## A158384.P13220762471853186763

`A335524(A161680(n)+A104401(n+2))`
-/

namespace A158384.P13220762471853186763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A161680 n + A104401 (n + 2)).toNat

end

end A158384.P13220762471853186763

/-!
# A158385: a(n) = 676*n^2 + 2*n.

The programs for A158385, the canonical program `A158385.P9075436861861217674` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158385 has offset 1).

The definition of A158385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `676*(n+1)²+2*(n+1)` (program `A158385.P9075436861861217674`, by `A158385.P9075436861861217674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158385.P9075436861861217674

`676*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158385

/-- `676*(n+1)²+2*(n+1)` -/
def P9075436861861217674.Spec : Prop :=
  ∀ n, (P9075436861861217674.a n : ℤ) = A158385 (n + 1)

theorem P9075436861861217674.correct : P9075436861861217674.Spec := by
  intro n
  simp only [A158385, Nat.add_sub_cancel]

end A158385

/-! ## A158385.P6432120685622395284

`(n+1)*(A158386(n+1)+1)`
-/

namespace A158385.P6432120685622395284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158386 (n + 1) + 1)

end

end A158385.P6432120685622395284

namespace A158385

/-- `(n+1)*(A158386(n+1)+1)` -/
def P6432120685622395284.Spec : Prop :=
  ∀ n, P6432120685622395284.a n = A158385 (n + 1)

theorem P6432120685622395284.correct : P6432120685622395284.Spec := by
  intro n
  simp only [A158385, Nat.add_sub_cancel, A158385.P6432120685622395284.a, A158385.P9075436861861217674.a, A158386, A158386.P16737716224530564397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158385

/-! ## A158385.P739839955543993791

`(n+1)*(A158393(n+1)+3)`
-/

namespace A158385.P739839955543993791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158393 (n + 1) + 3)

end

end A158385.P739839955543993791

namespace A158385

/-- `(n+1)*(A158393(n+1)+3)` -/
def P739839955543993791.Spec : Prop :=
  ∀ n, P739839955543993791.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P12663829853983708773

`2*(n+1)*A158000(n+1)`
-/

namespace A158385.P12663829853983708773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A158000 (n + 1))

end

end A158385.P12663829853983708773

namespace A158385

/-- `2*(n+1)*A158000(n+1)` -/
def P12663829853983708773.Spec : Prop :=
  ∀ n, P12663829853983708773.a n = A158385 (n + 1)

theorem P12663829853983708773.correct : P12663829853983708773.Spec := by
  intro n
  simp only [A158385, Nat.add_sub_cancel, A158385.P12663829853983708773.a, A158385.P9075436861861217674.a, A158000, A158000.P14516939560890834458.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158385

/-! ## A158385.P15775653807881534928

`A173275(2*(n+1))`
-/

namespace A158385.P15775653807881534928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173275 (2 * (n + 1))

end

end A158385.P15775653807881534928

namespace A158385

/-- `A173275(2*(n+1))` -/
def P15775653807881534928.Spec : Prop :=
  ∀ n, P15775653807881534928.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P7623171030967358250

`2*(n+1)*A158221(2*(n+1))`
-/

namespace A158385.P7623171030967358250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158221 (2 * (n + 1))

end

end A158385.P7623171030967358250

namespace A158385

/-- `2*(n+1)*A158221(2*(n+1))` -/
def P7623171030967358250.Spec : Prop :=
  ∀ n, P7623171030967358250.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P17500615396460484160

`(A158219(2*(n+1))+2)*2*(n+1)`
-/

namespace A158385.P17500615396460484160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158219 (2 * (n + 1)) + 2) * (2 * (n + 1) : ℤ)

end

end A158385.P17500615396460484160

namespace A158385

/-- `(A158219(2*(n+1))+2)*2*(n+1)` -/
def P17500615396460484160.Spec : Prop :=
  ∀ n, P17500615396460484160.a n = A158385 (n + 1)

end A158385

/-!
# A158386: a(n) = 676*n + 1.

The programs for A158386, the canonical program `A158386.P16737716224530564397` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158386 has offset 1).

The definition of A158386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `676*(n+1)+1` (program `A158386.P16737716224530564397`, by `A158386.P16737716224530564397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158386.P16737716224530564397

`676*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158386

/-- `676*(n+1)+1` -/
def P16737716224530564397.Spec : Prop :=
  ∀ n, (P16737716224530564397.a n : ℤ) = A158386 (n + 1)

theorem P16737716224530564397.correct : P16737716224530564397.Spec := by
  intro n
  simp only [A158386, Nat.add_sub_cancel]

end A158386

/-!
# A158387: a(n) = -1 if n is a square, 1 if n is not a square.

The programs for A158387, the canonical program `A158387.P7105808994487481565` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158387 has offset 1).

The definition of A158387 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158387.P7105808994487481565

`(-1)^A000005(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A158387

/-- `(-1)^A000005(n+1)` -/
def P7105808994487481565.Spec : Prop :=
  ∀ n, P7105808994487481565.a n = (A158387 (n + 1) : ℚ)

end A158387

/-! ## A158387.P5788574970178121120

`(-1)^Δ[floor(sqrt(n))]`
-/

namespace A158387.P5788574970178121120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A158387.P5788574970178121120

namespace A158387

/-- `(-1)^Δ[floor(sqrt(n))]` -/
def P5788574970178121120.Spec : Prop :=
  ∀ n, P5788574970178121120.a n = (A158387 (n + 1) : ℚ)

end A158387

/-! ## A158387.P14835015740353078565

`∏{d}[n+1, or(#, -1)]`
-/

namespace A158387.P14835015740353078565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1)

end

end A158387.P14835015740353078565

namespace A158387

/-- `∏{d}[n+1, or(#, -1)]` -/
def P14835015740353078565.Spec : Prop :=
  ∀ n, P14835015740353078565.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P11128060156739597728

`gcd(3, Δ[floor(sqrt(n))])-2`
-/

namespace A158387.P11128060156739597728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - 2

end

end A158387.P11128060156739597728

namespace A158387

/-- `gcd(3, Δ[floor(sqrt(n))])-2` -/
def P11128060156739597728.Spec : Prop :=
  ∀ n, P11128060156739597728.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P11326618689804127332

`∏{d}[n+1, -gcd(n, #)]`
-/

namespace A158387.P11326618689804127332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (-(Nat.gcd n d : ℤ))

end

end A158387.P11326618689804127332

namespace A158387

/-- `∏{d}[n+1, -gcd(n, #)]` -/
def P11326618689804127332.Spec : Prop :=
  ∀ n, P11326618689804127332.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P6283701746027890551

`∏{d}[n+1, floor(acot(-#))]`
-/

namespace A158387.P6283701746027890551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌊SequenceMachineLib.acot (-(d : ℤ) : ℝ)⌋

end

end A158387.P6283701746027890551

namespace A158387

/-- `∏{d}[n+1, floor(acot(-#))]` -/
def P6283701746027890551.Spec : Prop :=
  ∀ n, P6283701746027890551.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P13573114741581121927

`∏{d}[n+1, -ceil(acot(#))]`
-/

namespace A158387.P13573114741581121927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (-⌈SequenceMachineLib.acot (d : ℝ)⌉)

end

end A158387.P13573114741581121927

namespace A158387

/-- `∏{d}[n+1, -ceil(acot(#))]` -/
def P13573114741581121927.Spec : Prop :=
  ∀ n, P13573114741581121927.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P6111689907355884651

`∏{d}[n+1, floor(-(1/#))]`
-/

namespace A158387.P6111689907355884651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), ⌊-(1 / (d : ℚ))⌋

end

end A158387.P6111689907355884651

namespace A158387

/-- `∏{d}[n+1, floor(-(1/#))]` -/
def P6111689907355884651.Spec : Prop :=
  ∀ n, P6111689907355884651.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P17873144727391980860

`cos(π*∏{e}[n+1, #+1])`
-/

namespace A158387.P17873144727391980860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℝ))

end

end A158387.P17873144727391980860

namespace A158387

/-- `cos(π*∏{e}[n+1, #+1])` -/
def P17873144727391980860.Spec : Prop :=
  ∀ n, P17873144727391980860.a n = (A158387 (n + 1) : ℝ)

end A158387

/-! ## A158387.P15306531283193993982

`ceil(∏{d}[n+1, -((n+1)/#²)])`
-/

namespace A158387.P15306531283193993982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ d ∈ Nat.divisors (f1 n), (-((n + 1 : ℚ) / (d ^ 2 : ℚ)))⌉

end

end A158387.P15306531283193993982

namespace A158387

/-- `ceil(∏{d}[n+1, -((n+1)/#²)])` -/
def P15306531283193993982.Spec : Prop :=
  ∀ n, P15306531283193993982.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P11517691946428837606

`round(∏{d}[n+1, -((n+1)/#²)])`
-/

namespace A158387.P11517691946428837606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ d ∈ Nat.divisors (f1 n), (-((n + 1 : ℚ) / (d ^ 2 : ℚ))))

end

end A158387.P11517691946428837606

namespace A158387

/-- `round(∏{d}[n+1, -((n+1)/#²)])` -/
def P11517691946428837606.Spec : Prop :=
  ∀ n, P11517691946428837606.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P835833161860487521

`A167686(Δ[floor(sqrt(n))])`
-/

namespace A158387.P835833161860487521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167686 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A158387.P835833161860487521

namespace A158387

/-- `A167686(Δ[floor(sqrt(n))])` -/
def P835833161860487521.Spec : Prop :=
  ∀ n, P835833161860487521.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P10351118643267932110

`∑[-Δ[A000122(n)]]`
-/

namespace A158387.P10351118643267932110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A158387.P10351118643267932110

namespace A158387

/-- `∑[-Δ[A000122(n)]]` -/
def P10351118643267932110.Spec : Prop :=
  ∀ n, P10351118643267932110.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P17080338357352063813

`1-A000122(n+1)`
-/

namespace A158387.P17080338357352063813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000122 (n + 1)

end

end A158387.P17080338357352063813

namespace A158387

/-- `1-A000122(n+1)` -/
def P17080338357352063813.Spec : Prop :=
  ∀ n, P17080338357352063813.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P1070685308820039751

`A171369(n+1)-2`
-/

namespace A158387.P1070685308820039751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171369 (n + 1) - 2

end

end A158387.P1070685308820039751

namespace A158387

/-- `A171369(n+1)-2` -/
def P1070685308820039751.Spec : Prop :=
  ∀ n, P1070685308820039751.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P13542613038861430750

`2*A275437(n)-3`
-/

namespace A158387.P13542613038861430750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A275437 n - 3

end

end A158387.P13542613038861430750

namespace A158387

/-- `2*A275437(n)-3` -/
def P13542613038861430750.Spec : Prop :=
  ∀ n, P13542613038861430750.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P3762882832817629498

`1-abs(A002448(n+1))`
-/

namespace A158387.P3762882832817629498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A002448 (n + 1)|

end

end A158387.P3762882832817629498

namespace A158387

/-- `1-abs(A002448(n+1))` -/
def P3762882832817629498.Spec : Prop :=
  ∀ n, P3762882832817629498.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P3318742516453100869

`A008683(Δ[floor(sqrt(n))]+1)`
-/

namespace A158387.P3318742516453100869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A158387.P3318742516453100869

namespace A158387

/-- `A008683(Δ[floor(sqrt(n))]+1)` -/
def P3318742516453100869.Spec : Prop :=
  ∀ n, P3318742516453100869.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P15796935275035835092

`1-2*A010052(n+1)`
-/

namespace A158387.P15796935275035835092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A010052 (n + 1)

end

end A158387.P15796935275035835092

namespace A158387

/-- `1-2*A010052(n+1)` -/
def P15796935275035835092.Spec : Prop :=
  ∀ n, P15796935275035835092.a n = A158387 (n + 1)

end A158387

/-! ## A158387.P15305959525445080622

`2*A049240(n+1)-1`
-/

namespace A158387.P15305959525445080622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049240 (n + 1) - 1

end

end A158387.P15305959525445080622

namespace A158387

/-- `2*A049240(n+1)-1` -/
def P15305959525445080622.Spec : Prop :=
  ∀ n, P15305959525445080622.a n = A158387 (n + 1)

end A158387

/-!
# A158388: -1 followed by infinitely many 1's.

The programs for A158388, the canonical program `A158388.P7320455639458137227` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158388 has offset 0).

The definition of A158388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158388.P7320455639458137227

`round(cos(acot(n)²))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158388

/-- `round(cos(acot(n)²))` -/
def P7320455639458137227.Spec : Prop :=
  ∀ n, P7320455639458137227.a n = A158388 n

theorem P7320455639458137227.correct : P7320455639458137227.Spec := by
  intro n
  simp only [A158388]

end A158388

/-!
# A158392: a(n) = 676*n^2 - 2*n.

The programs for A158392, the canonical program `A158392.P1504442705324033` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158392 has offset 1).

The definition of A158392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `676*(n+1)²-2*(n+1)` (program `A158392.P1504442705324033`, by `A158392.P1504442705324033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158392.P1504442705324033

`676*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158392

/-- `676*(n+1)²-2*(n+1)` -/
def P1504442705324033.Spec : Prop :=
  ∀ n, P1504442705324033.a n = A158392 (n + 1)

theorem P1504442705324033.correct : P1504442705324033.Spec := by
  intro n
  simp only [A158392, Nat.add_sub_cancel]

end A158392

/-! ## A158392.P14970793717816567320

`(n+1)*(A158393(n+1)-1)`
-/

namespace A158392.P14970793717816567320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158393 (n + 1) - 1)

end

end A158392.P14970793717816567320

namespace A158392

/-- `(n+1)*(A158393(n+1)-1)` -/
def P14970793717816567320.Spec : Prop :=
  ∀ n, P14970793717816567320.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P7931995800752960639

`2*(n+1)*A157999(n+1)`
-/

namespace A158392.P7931995800752960639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A157999 (n + 1))

end

end A158392.P7931995800752960639

namespace A158392

/-- `2*(n+1)*A157999(n+1)` -/
def P7931995800752960639.Spec : Prop :=
  ∀ n, P7931995800752960639.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P9908538226158466424

`(n+1)*(A158386(n+1)-3)`
-/

namespace A158392.P9908538226158466424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158386 (n + 1) - 3)

end

end A158392.P9908538226158466424

namespace A158392

/-- `(n+1)*(A158386(n+1)-3)` -/
def P9908538226158466424.Spec : Prop :=
  ∀ n, P9908538226158466424.a n = A158392 (n + 1)

theorem P9908538226158466424.correct : P9908538226158466424.Spec := by
  intro n
  simp only [A158392, Nat.add_sub_cancel, A158392.P9908538226158466424.a, A158392.P1504442705324033.a, A158386, A158386.P16737716224530564397.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158392

/-! ## A158392.P11881103124220656487

`A157998(2*(n+1))`
-/

namespace A158392.P11881103124220656487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157998 (2 * (n + 1))

end

end A158392.P11881103124220656487

namespace A158392

/-- `A157998(2*(n+1))` -/
def P11881103124220656487.Spec : Prop :=
  ∀ n, P11881103124220656487.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P17825032214102616867

`2*(n+1)*A158219(2*(n+1))`
-/

namespace A158392.P17825032214102616867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158219 (2 * (n + 1))

end

end A158392.P17825032214102616867

namespace A158392

/-- `2*(n+1)*A158219(2*(n+1))` -/
def P17825032214102616867.Spec : Prop :=
  ∀ n, P17825032214102616867.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P17018462400779946811

`(A158221(2*(n+1))-2)*2*(n+1)`
-/

namespace A158392.P17018462400779946811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158221 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158392.P17018462400779946811

namespace A158392

/-- `(A158221(2*(n+1))-2)*2*(n+1)` -/
def P17018462400779946811.Spec : Prop :=
  ∀ n, P17018462400779946811.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P15773112238710796303

`A158385(2*(n+1))%A158385(n+1)`
-/

namespace A158392.P15773112238710796303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158385 (2 * (n + 1))) (A158385 (n + 1))

end

end A158392.P15773112238710796303

namespace A158392

/-- `A158385(2*(n+1))%A158385(n+1)` -/
def P15773112238710796303.Spec : Prop :=
  ∀ n, P15773112238710796303.a n = A158392 (n + 1)

end A158392

/-!
# A158393: a(n) = 676*n - 1.

The programs for A158393, the canonical program `A158393.P11357101183353847905` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158393 has offset 1).

The definition of A158393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `676*(n+1)-1` (program `A158393.P11357101183353847905`, by `A158393.P11357101183353847905.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158393.P11357101183353847905

`676*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158393

/-- `676*(n+1)-1` -/
def P11357101183353847905.Spec : Prop :=
  ∀ n, P11357101183353847905.a n = A158393 (n + 1)

theorem P11357101183353847905.correct : P11357101183353847905.Spec := by
  intro n
  simp only [A158393, Nat.add_sub_cancel]

end A158393

/-!
# A158394: a(n) = 729*n^2 - 2*n.

The programs for A158394, the canonical program `A158394.P14901747009502709890` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158394 has offset 1).

The definition of A158394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)²-2*(n+1)` (program `A158394.P14901747009502709890`, by `A158394.P14901747009502709890.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158394.P14901747009502709890

`729*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158394

/-- `729*(n+1)²-2*(n+1)` -/
def P14901747009502709890.Spec : Prop :=
  ∀ n, P14901747009502709890.a n = A158394 (n + 1)

theorem P14901747009502709890.correct : P14901747009502709890.Spec := by
  intro n
  simp only [A158394, Nat.add_sub_cancel]

end A158394

/-! ## A158394.P12169002628436094176

`(n+1)*(A158395(n+1)-1)`
-/

namespace A158394.P12169002628436094176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158395 (n + 1) - 1)

end

end A158394.P12169002628436094176

namespace A158394

/-- `(n+1)*(A158395(n+1)-1)` -/
def P12169002628436094176.Spec : Prop :=
  ∀ n, P12169002628436094176.a n = A158394 (n + 1)

end A158394

/-! ## A158394.P8612653681538560251

`(n+1)*(A158397(n+1)-3)`
-/

namespace A158394.P8612653681538560251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158397 (n + 1) - 3)

end

end A158394.P8612653681538560251

namespace A158394

/-- `(n+1)*(A158397(n+1)-3)` -/
def P8612653681538560251.Spec : Prop :=
  ∀ n, P8612653681538560251.a n = A158394 (n + 1)

theorem P8612653681538560251.correct : P8612653681538560251.Spec := by
  intro n
  simp only [A158394, Nat.add_sub_cancel, A158394.P8612653681538560251.a, A158394.P14901747009502709890.a, A158397, A158397.P16008032081229113764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158394

/-! ## A158394.P17648912351316324731

`A158396(2*(n+1))%A158396(n+1)`
-/

namespace A158394.P17648912351316324731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158396 (2 * (n + 1))) (A158396 (n + 1))

end

end A158394.P17648912351316324731

namespace A158394

/-- `A158396(2*(n+1))%A158396(n+1)` -/
def P17648912351316324731.Spec : Prop :=
  ∀ n, P17648912351316324731.a n = A158394 (n + 1)

end A158394

/-!
# A158395: a(n) = 729*n - 1.

The programs for A158395, the canonical program `A158395.P10380665952554609948` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158395 has offset 1).

The definition of A158395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)-1` (program `A158395.P10380665952554609948`, by `A158395.P10380665952554609948.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158395.P10380665952554609948

`729*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158395

/-- `729*(n+1)-1` -/
def P10380665952554609948.Spec : Prop :=
  ∀ n, P10380665952554609948.a n = A158395 (n + 1)

theorem P10380665952554609948.correct : P10380665952554609948.Spec := by
  intro n
  simp only [A158395, Nat.add_sub_cancel]

end A158395

/-!
# A158396: a(n) = 729*n^2 + 2*n.

The programs for A158396, the canonical program `A158396.P15560108677603391736` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158396 has offset 1).

The definition of A158396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)²+2*(n+1)` (program `A158396.P15560108677603391736`, by `A158396.P15560108677603391736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158396.P15560108677603391736

`729*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158396

/-- `729*(n+1)²+2*(n+1)` -/
def P15560108677603391736.Spec : Prop :=
  ∀ n, (P15560108677603391736.a n : ℤ) = A158396 (n + 1)

theorem P15560108677603391736.correct : P15560108677603391736.Spec := by
  intro n
  simp only [A158396, Nat.add_sub_cancel]

end A158396

/-! ## A158396.P835557718842236352

`(n+1)*(A158397(n+1)+1)`
-/

namespace A158396.P835557718842236352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158397 (n + 1) + 1)

end

end A158396.P835557718842236352

namespace A158396

/-- `(n+1)*(A158397(n+1)+1)` -/
def P835557718842236352.Spec : Prop :=
  ∀ n, P835557718842236352.a n = A158396 (n + 1)

theorem P835557718842236352.correct : P835557718842236352.Spec := by
  intro n
  simp only [A158396, Nat.add_sub_cancel, A158396.P835557718842236352.a, A158396.P15560108677603391736.a, A158397, A158397.P16008032081229113764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A158396

/-! ## A158396.P15243013893569413475

`(n+1)*(A158395(n+1)+3)`
-/

namespace A158396.P15243013893569413475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158395 (n + 1) + 3)

end

end A158396.P15243013893569413475

namespace A158396

/-- `(n+1)*(A158395(n+1)+3)` -/
def P15243013893569413475.Spec : Prop :=
  ∀ n, P15243013893569413475.a n = A158396 (n + 1)

end A158396

/-! ## A158396.P4247408986656881712

`(n+1)*A017185(A008591(A008591(n+1)))`
-/

namespace A158396.P4247408986656881712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017185 (A008591 (A008591 (n + 1)).toNat).toNat

end

end A158396.P4247408986656881712

namespace A158396

/-- `(n+1)*A017185(A008591(A008591(n+1)))` -/
def P4247408986656881712.Spec : Prop :=
  ∀ n, P4247408986656881712.a n = A158396 (n + 1)

end A158396

/-! ## A158396.P2462945177075064050

`A000027(A031705(n+1))`
-/

namespace A158396.P2462945177075064050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A031705 (n + 1)).toNat

end

end A158396.P2462945177075064050

namespace A158396

/-- `A000027(A031705(n+1))` -/
def P2462945177075064050.Spec : Prop :=
  ∀ n, P2462945177075064050.a n = A158396 (n + 1)

end A158396

/-!
# A158397: a(n) = 729*n + 1.

The programs for A158397, the canonical program `A158397.P16008032081229113764` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158397 has offset 1).

The definition of A158397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `729*(n+1)+1` (program `A158397.P16008032081229113764`, by `A158397.P16008032081229113764.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158397.P16008032081229113764

`729*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158397

/-- `729*(n+1)+1` -/
def P16008032081229113764.Spec : Prop :=
  ∀ n, (P16008032081229113764.a n : ℤ) = A158397 (n + 1)

theorem P16008032081229113764.correct : P16008032081229113764.Spec := by
  intro n
  simp only [A158397, Nat.add_sub_cancel]

end A158397

/-!
# A158398: a(n) = 784*n^2 - 2*n.

The programs for A158398, the canonical program `A158398.P11686974043139984987` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158398 has offset 1).

The definition of A158398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `784*(n+1)²-2*(n+1)` (program `A158398.P11686974043139984987`, by `A158398.P11686974043139984987.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158398.P11686974043139984987

`784*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158398

/-- `784*(n+1)²-2*(n+1)` -/
def P11686974043139984987.Spec : Prop :=
  ∀ n, P11686974043139984987.a n = A158398 (n + 1)

theorem P11686974043139984987.correct : P11686974043139984987.Spec := by
  intro n
  simp only [A158398, Nat.add_sub_cancel]

end A158398

/-! ## A158398.P13111441338247773674

`(n+1)*(A158399(n+1)-1)`
-/

namespace A158398.P13111441338247773674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158399 (n + 1) - 1)

end

end A158398.P13111441338247773674

namespace A158398

/-- `(n+1)*(A158399(n+1)-1)` -/
def P13111441338247773674.Spec : Prop :=
  ∀ n, P13111441338247773674.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P16029146223143185099

`2*(n+1)*A158004(n+1)`
-/

namespace A158398.P16029146223143185099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A158004 (n + 1))

end

end A158398.P16029146223143185099

namespace A158398

/-- `2*(n+1)*A158004(n+1)` -/
def P16029146223143185099.Spec : Prop :=
  ∀ n, P16029146223143185099.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P7536983315512583561

`A005843(n+1)*A158004(n+1)`
-/

namespace A158398.P7536983315512583561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A158004 (n + 1)

end

end A158398.P7536983315512583561

namespace A158398

/-- `A005843(n+1)*A158004(n+1)` -/
def P7536983315512583561.Spec : Prop :=
  ∀ n, P7536983315512583561.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P16016921986712830561

`A158003(2*(n+1))`
-/

namespace A158398.P16016921986712830561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158003 (2 * (n + 1))

end

end A158398.P16016921986712830561

namespace A158398

/-- `A158003(2*(n+1))` -/
def P16016921986712830561.Spec : Prop :=
  ∀ n, P16016921986712830561.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P3023157146147459671

`2*(n+1)*A158225(2*(n+1))`
-/

namespace A158398.P3023157146147459671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A158225 (2 * (n + 1))

end

end A158398.P3023157146147459671

namespace A158398

/-- `2*(n+1)*A158225(2*(n+1))` -/
def P3023157146147459671.Spec : Prop :=
  ∀ n, P3023157146147459671.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P15564291931091625131

`(A158223(2*(n+1))-2)*2*(n+1)`
-/

namespace A158398.P15564291931091625131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A158223 (2 * (n + 1)) - 2) * (2 * (n + 1) : ℤ)

end

end A158398.P15564291931091625131

namespace A158398

/-- `(A158223(2*(n+1))-2)*2*(n+1)` -/
def P15564291931091625131.Spec : Prop :=
  ∀ n, P15564291931091625131.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P17409782139808940110

`(n+1)*A017137(A157924(n+1))`
-/

namespace A158398.P17409782139808940110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017137 (A157924 (n + 1)).toNat

end

end A158398.P17409782139808940110

namespace A158398

/-- `(n+1)*A017137(A157924(n+1))` -/
def P17409782139808940110.Spec : Prop :=
  ∀ n, P17409782139808940110.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P17142044979784339285

`(n+1)*A017137(A157947(n+1)-2)`
-/

namespace A158398.P17142044979784339285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017137 (A157947 (n + 1) - 2).toNat

end

end A158398.P17142044979784339285

namespace A158398

/-- `(n+1)*A017137(A157947(n+1)-2)` -/
def P17142044979784339285.Spec : Prop :=
  ∀ n, P17142044979784339285.a n = A158398 (n + 1)

end A158398

/-!
# A158399: a(n) = 784*n - 1.

The programs for A158399, the canonical program `A158399.P5393343163282980121` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158399 has offset 1).

The definition of A158399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `784*(n+1)-1` (program `A158399.P5393343163282980121`, by `A158399.P5393343163282980121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A158399.P5393343163282980121

`784*(n+1)-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A158399

/-- `784*(n+1)-1` -/
def P5393343163282980121.Spec : Prop :=
  ∀ n, P5393343163282980121.a n = A158399 (n + 1)

theorem P5393343163282980121.correct : P5393343163282980121.Spec := by
  intro n
  simp only [A158399, Nat.add_sub_cancel]

end A158399

