import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A158301: Denominator of Bernoulli(n, -5/6).

The programs for A158301, the canonical program `A158301.P14699896372540319621` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158301 has offset 0).

The definition of A158301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158301.P14699896372540319621

`A158207(n)/A000034(A289207(n))`

The canonical program, it is in `Seq.B005.C001`.
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

The programs for A158302, the canonical program `A158302.P13707864566656512103` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158302 has offset 0).

The definition of A158302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158302.P13707864566656512103

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C020`.
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

The programs for A158305, the canonical program `A158305.P6039842049694872712` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158305 has offset 1).

The definition of A158305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158305.P6039842049694872712

`∑[Δ[(18*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158305

/-- `∑[Δ[(18*n)²]-2]` -/
def P6039842049694872712.Spec : Prop :=
  ∀ n, P6039842049694872712.a n = A158305 (n + 1)

theorem P6039842049694872712.correct : P6039842049694872712.Spec := by
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

end A158305

/-! ## A158305.P6560508384562462311

`A158271(n+1)-4*(n+1)`
-/

namespace A158305.P6560508384562462311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158271 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158305.P6560508384562462311

namespace A158305

/-- `A158271(n+1)-4*(n+1)` -/
def P6560508384562462311.Spec : Prop :=
  ∀ n, P6560508384562462311.a n = A158305 (n + 1)

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

/-! ## A158305.P15586605130434058172

`Δ[A001504(n)]²-Δ[A002378(n)]`
-/

namespace A158305.P15586605130434058172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - (f2 (n + 1) - f2 n)

end

end A158305.P15586605130434058172

namespace A158305

/-- `Δ[A001504(n)]²-Δ[A002378(n)]` -/
def P15586605130434058172.Spec : Prop :=
  ∀ n, P15586605130434058172.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P6498078685938972890

`A008591(n+1)*A044102(n+1)-A005843(n+1)`
-/

namespace A158305.P6498078685938972890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (n + 1) * A044102 (n + 1) - A005843 (n + 1)

end

end A158305.P6498078685938972890

namespace A158305

/-- `A008591(n+1)*A044102(n+1)-A005843(n+1)` -/
def P6498078685938972890.Spec : Prop :=
  ∀ n, P6498078685938972890.a n = A158305 (n + 1)

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

/-! ## A158305.P10736978183172342023

`A157909(2*(n+1))+7-2*n`
-/

namespace A158305.P10736978183172342023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157909 (2 * (n + 1)) + (7 - (2 * n : ℤ))

end

end A158305.P10736978183172342023

namespace A158305

/-- `A157909(2*(n+1))+7-2*n` -/
def P10736978183172342023.Spec : Prop :=
  ∀ n, P10736978183172342023.a n = A158305 (n + 1)

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

/-! ## A158305.P2815547609791878533

`A165798(2*(n+1))+A157446(2*(n+1))`
-/

namespace A158305.P2815547609791878533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165798 (2 * (n + 1)) + A157446 (2 * (n + 1))

end

end A158305.P2815547609791878533

namespace A158305

/-- `A165798(2*(n+1))+A157446(2*(n+1))` -/
def P2815547609791878533.Spec : Prop :=
  ∀ n, P2815547609791878533.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P15733505405563515733

`A361692(2*(n+1))+A017258(2*n+1)`
-/

namespace A158305.P15733505405563515733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361692 (2 * (n + 1)) + A017258 (2 * n + 1)

end

end A158305.P15733505405563515733

namespace A158305

/-- `A361692(2*(n+1))+A017258(2*n+1)` -/
def P15733505405563515733.Spec : Prop :=
  ∀ n, P15733505405563515733.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P5326624530303950013

`A292344(2*(n+1))+A177071(2*n+1)`
-/

namespace A158305.P5326624530303950013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292344 (2 * (n + 1)) + A177071 (2 * n + 1)

end

end A158305.P5326624530303950013

namespace A158305

/-- `A292344(2*(n+1))+A177071(2*n+1)` -/
def P5326624530303950013.Spec : Prop :=
  ∀ n, P5326624530303950013.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P8904556117041678172

`A158226(2*(n+1))-A156635(2*(n+1))`
-/

namespace A158305.P8904556117041678172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158226 (2 * (n + 1)) - A156635 (2 * (n + 1))

end

end A158305.P8904556117041678172

namespace A158305

/-- `A158226(2*(n+1))-A156635(2*(n+1))` -/
def P8904556117041678172.Spec : Prop :=
  ∀ n, P8904556117041678172.a n = A158305 (n + 1)

end A158305

/-! ## A158305.P12496139438229844777

`A156814(2*(n+1))-A158132(2*(n+1))`
-/

namespace A158305.P12496139438229844777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156814 (2 * (n + 1)) - A158132 (2 * (n + 1))

end

end A158305.P12496139438229844777

namespace A158305

/-- `A156814(2*(n+1))-A158132(2*(n+1))` -/
def P12496139438229844777.Spec : Prop :=
  ∀ n, P12496139438229844777.a n = A158305 (n + 1)

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

/-!
# A158306: a(n) = 324n - 1.

The programs for A158306, the canonical program `A158306.P5353355730782825387` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158306 has offset 1).

The definition of A158306 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158306.P5353355730782825387

`2*a(n-1)-a(n-2)` with `a(0)=323, a(1)=647`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158306

/-- `2*a(n-1)-a(n-2)` -/
def P5353355730782825387.Spec : Prop :=
  ∀ n, P5353355730782825387.a n = A158306 (n + 1)

theorem P5353355730782825387.correct : P5353355730782825387.Spec := by
  intro n
  simp only [A158306, Nat.add_sub_cancel]

end A158306

/-!
# A158307: a(n) = 361*n^2 - 2*n.

The programs for A158307, the canonical program `A158307.P1646574279755772281` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158307 has offset 1).

The definition of A158307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158307.P1646574279755772281

`∑[Δ[(19*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158307

/-- `∑[Δ[(19*n)²]-2]` -/
def P1646574279755772281.Spec : Prop :=
  ∀ n, P1646574279755772281.a n = A158307 (n + 1)

theorem P1646574279755772281.correct : P1646574279755772281.Spec := by
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

end A158307

/-! ## A158307.P12616878356918494135

`A158309(n+1)-4*(n+1)`
-/

namespace A158307.P12616878356918494135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158309 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158307.P12616878356918494135

namespace A158307

/-- `A158309(n+1)-4*(n+1)` -/
def P12616878356918494135.Spec : Prop :=
  ∀ n, P12616878356918494135.a n = A158307 (n + 1)

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

/-! ## A158307.P1036518957290358471

`A317319(A004277(n+1))²-A004277(n+1)`
-/

namespace A158307.P1036518957290358471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317319 (A004277 (n + 1)).toNat ^ 2 - A004277 (n + 1)

end

end A158307.P1036518957290358471

namespace A158307

/-- `A317319(A004277(n+1))²-A004277(n+1)` -/
def P1036518957290358471.Spec : Prop :=
  ∀ n, P1036518957290358471.a n = A158307 (n + 1)

end A158307

/-! ## A158307.P1774533019679193236

`A035106(37*(n+1)+n)-(2*n+1)`
-/

namespace A158307.P1774533019679193236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (37 * (n + 1) + n) - (2 * n + 1 : ℤ)

end

end A158307.P1774533019679193236

namespace A158307

/-- `A035106(37*(n+1)+n)-(2*n+1)` -/
def P1774533019679193236.Spec : Prop :=
  ∀ n, P1774533019679193236.a n = A158307 (n + 1)

end A158307

/-!
# A158308: a(n) = 361*n - 1.

The programs for A158308, the canonical program `A158308.P9685559836146012148` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158308 has offset 1).

The definition of A158308 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158308.P9685559836146012148

`2*a(n-1)-a(n-2)` with `a(0)=360, a(1)=721`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158308

/-- `2*a(n-1)-a(n-2)` -/
def P9685559836146012148.Spec : Prop :=
  ∀ n, P9685559836146012148.a n = A158308 (n + 1)

theorem P9685559836146012148.correct : P9685559836146012148.Spec := by
  intro n
  simp only [A158308, Nat.add_sub_cancel]

end A158308

/-!
# A158309: a(n) = 361*n^2 + 2*n.

The programs for A158309, the canonical program `A158309.P6090341220791078021` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158309 has offset 1).

The definition of A158309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158309.P6090341220791078021

`∑[Δ[(19*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158309

/-- `∑[Δ[(19*n)²]+2]` -/
def P6090341220791078021.Spec : Prop :=
  ∀ n, P6090341220791078021.a n = A158309 (n + 1)

theorem P6090341220791078021.correct : P6090341220791078021.Spec := by
  intro n
  simp only [A158309, Nat.add_sub_cancel]

end A158309

/-! ## A158309.P12311127729305815736

`record[(19*(1-n))²]+2*(n+1)`
-/

namespace A158309.P12311127729305815736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (19 * (1 - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * (n + 1) : ℤ)

end

end A158309.P12311127729305815736

namespace A158309

/-- `record[(19*(1-n))²]+2*(n+1)` -/
def P12311127729305815736.Spec : Prop :=
  ∀ n, P12311127729305815736.a n = A158309 (n + 1)

end A158309

/-! ## A158309.P1848627128351747039

`(19*(n+1))²+or(1, 2*n)+1`
-/

namespace A158309.P1848627128351747039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (19 * (n + 1)) ^ 2 + (Nat.lor 1 (2 * n) + 1)

end

end A158309.P1848627128351747039

namespace A158309

/-- `(19*(n+1))²+or(1, 2*n)+1` -/
def P1848627128351747039.Spec : Prop :=
  ∀ n, (P1848627128351747039.a n : ℤ) = A158309 (n + 1)

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

/-! ## A158309.P2105231330043673176

`A158307(n+1)+4*(n+1)`
-/

namespace A158309.P2105231330043673176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158307 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158309.P2105231330043673176

namespace A158309

/-- `A158307(n+1)+4*(n+1)` -/
def P2105231330043673176.Spec : Prop :=
  ∀ n, P2105231330043673176.a n = A158309 (n + 1)

end A158309

/-! ## A158309.P18055438275737082383

`A158307(n+1)+A004767(n)+1`
-/

namespace A158309.P18055438275737082383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158307 (n + 1) + A004767 n + 1

end

end A158309.P18055438275737082383

namespace A158309

/-- `A158307(n+1)+A004767(n)+1` -/
def P18055438275737082383.Spec : Prop :=
  ∀ n, P18055438275737082383.a n = A158309 (n + 1)

end A158309

/-! ## A158309.P10318618564278082615

`A008601(n+1)²+2*(n+1)`
-/

namespace A158309.P10318618564278082615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008601 (n + 1) ^ 2 + (2 * (n + 1) : ℤ)

end

end A158309.P10318618564278082615

namespace A158309

/-- `A008601(n+1)²+2*(n+1)` -/
def P10318618564278082615.Spec : Prop :=
  ∀ n, P10318618564278082615.a n = A158309 (n + 1)

end A158309

/-! ## A158309.P9467725580913827954

`lt[1, A260215(n)]+(19*(n+1))²`
-/

namespace A158309.P9467725580913827954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (19 * (n + 1)) ^ 2

end

end A158309.P9467725580913827954

namespace A158309

/-- `lt[1, A260215(n)]+(19*(n+1))²` -/
def P9467725580913827954.Spec : Prop :=
  ∀ n, (P9467725580913827954.a n : ℤ) = A158309 (n + 1)

end A158309

/-! ## A158309.P8537785986289402876

`A004277(n+1)+A317319(A004277(n+1))²`
-/

namespace A158309.P8537785986289402876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A317319 (A004277 (n + 1)).toNat ^ 2

end

end A158309.P8537785986289402876

namespace A158309

/-- `A004277(n+1)+A317319(A004277(n+1))²` -/
def P8537785986289402876.Spec : Prop :=
  ∀ n, P8537785986289402876.a n = A158309 (n + 1)

end A158309

/-!
# A158310: a(n) = 361*n + 1.

The programs for A158310, the canonical program `A158310.P3507062570797398571` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158310 has offset 1).

The definition of A158310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158310.P3507062570797398571

`2*a(n-1)-a(n-2)` with `a(0)=362, a(1)=723`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158310

/-- `2*a(n-1)-a(n-2)` -/
def P3507062570797398571.Spec : Prop :=
  ∀ n, P3507062570797398571.a n = A158310 (n + 1)

theorem P3507062570797398571.correct : P3507062570797398571.Spec := by
  intro n
  simp only [A158310, Nat.add_sub_cancel]

end A158310

/-!
# A158312: a(n) = 400*n^2 + 2*n.

The programs for A158312, the canonical program `A158312.P7142510028498239533` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158312 has offset 1).

The definition of A158312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158312.P7142510028498239533

`∑[Δ[(20*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158312

/-- `∑[Δ[(20*n)²]+2]` -/
def P7142510028498239533.Spec : Prop :=
  ∀ n, P7142510028498239533.a n = A158312 (n + 1)

theorem P7142510028498239533.correct : P7142510028498239533.Spec := by
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

end A158312

/-! ## A158312.P4736821483782962985

`A158316(n+1)+4*(n+1)`
-/

namespace A158312.P4736821483782962985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158316 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158312.P4736821483782962985

namespace A158312

/-- `A158316(n+1)+4*(n+1)` -/
def P4736821483782962985.Spec : Prop :=
  ∀ n, P4736821483782962985.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P7531511958827041229

`A158325(n+1)-A210645(n+1)`
-/

namespace A158312.P7531511958827041229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158325 (n + 1) - A210645 (n + 1)

end

end A158312.P7531511958827041229

namespace A158312

/-- `A158325(n+1)-A210645(n+1)` -/
def P7531511958827041229.Spec : Prop :=
  ∀ n, P7531511958827041229.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P10151821960517332762

`2*(n+1)+A008602(n+1)²`
-/

namespace A158312.P10151821960517332762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008602 (n + 1) ^ 2

end

end A158312.P10151821960517332762

namespace A158312

/-- `2*(n+1)+A008602(n+1)²` -/
def P10151821960517332762.Spec : Prop :=
  ∀ n, P10151821960517332762.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P1374984996966865979

`A005843(n+1)+A008602(n+1)*A008602(n+1)`
-/

namespace A158312.P1374984996966865979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008602 (n + 1) * A008602 (n + 1)

end

end A158312.P1374984996966865979

namespace A158312

/-- `A005843(n+1)+A008602(n+1)*A008602(n+1)` -/
def P1374984996966865979.Spec : Prop :=
  ∀ n, P1374984996966865979.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P8144049324502883852

`A005843(n+1)+A008592(n+1)*A317095(n+1)`
-/

namespace A158312.P8144049324502883852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008592 (n + 1) * A317095 (n + 1)

end

end A158312.P8144049324502883852

namespace A158312

/-- `A005843(n+1)+A008592(n+1)*A317095(n+1)` -/
def P8144049324502883852.Spec : Prop :=
  ∀ n, P8144049324502883852.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P6778984567399498994

`A008602(n+1)*A215145(n+1)-A008600(n+1)`
-/

namespace A158312.P6778984567399498994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (n + 1) * A215145 (n + 1) - A008600 (n + 1)

end

end A158312.P6778984567399498994

namespace A158312

/-- `A008602(n+1)*A215145(n+1)-A008600(n+1)` -/
def P6778984567399498994.Spec : Prop :=
  ∀ n, P6778984567399498994.a n = A158312 (n + 1)

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

/-! ## A158312.P3238170986342555740

`4*(n+1)+A157659(2*(n+1))`
-/

namespace A158312.P3238170986342555740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A157659 (2 * (n + 1))

end

end A158312.P3238170986342555740

namespace A158312

/-- `4*(n+1)+A157659(2*(n+1))` -/
def P3238170986342555740.Spec : Prop :=
  ∀ n, P3238170986342555740.a n = A158312 (n + 1)

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

/-! ## A158312.P16888274462164676913

`2*(n+1)+A195033(2*(n+1))²`
-/

namespace A158312.P16888274462164676913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A195033 (2 * (n + 1)) ^ 2

end

end A158312.P16888274462164676913

namespace A158312

/-- `2*(n+1)+A195033(2*(n+1))²` -/
def P16888274462164676913.Spec : Prop :=
  ∀ n, P16888274462164676913.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P2615073726620599397

`A158064(2*(n+1))+A157948(2*(n+1))`
-/

namespace A158312.P2615073726620599397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158064 (2 * (n + 1)) + A157948 (2 * (n + 1))

end

end A158312.P2615073726620599397

namespace A158312

/-- `A158064(2*(n+1))+A157948(2*(n+1))` -/
def P2615073726620599397.Spec : Prop :=
  ∀ n, P2615073726620599397.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P11062496549482389299

`A210645(2*(n+1))+A157474(2*(n+1))`
-/

namespace A158312.P11062496549482389299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210645 (2 * (n + 1)) + A157474 (2 * (n + 1))

end

end A158312.P11062496549482389299

namespace A158312

/-- `A210645(2*(n+1))+A157474(2*(n+1))` -/
def P11062496549482389299.Spec : Prop :=
  ∀ n, P11062496549482389299.a n = A158312 (n + 1)

end A158312

/-! ## A158312.P1866615506971839542

`A005843(n+1)+A008592(A005843(n+1))²`
-/

namespace A158312.P1866615506971839542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008592 (A005843 (n + 1)).toNat ^ 2

end

end A158312.P1866615506971839542

namespace A158312

/-- `A005843(n+1)+A008592(A005843(n+1))²` -/
def P1866615506971839542.Spec : Prop :=
  ∀ n, P1866615506971839542.a n = A158312 (n + 1)

end A158312

/-!
# A158313: a(n) = 400 * n + 1.

The programs for A158313, the canonical program `A158313.P13196245246290778702` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158313 has offset 1).

The definition of A158313 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158313.P13196245246290778702

`2*a(n-1)-a(n-2)` with `a(0)=401, a(1)=801`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158313

/-- `2*a(n-1)-a(n-2)` -/
def P13196245246290778702.Spec : Prop :=
  ∀ n, P13196245246290778702.a n = A158313 (n + 1)

theorem P13196245246290778702.correct : P13196245246290778702.Spec := by
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

The programs for A158315, the canonical program `A158315.P7807818137616395365` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158315 has offset 0).

The definition of A158315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A158280, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158315.P7807818137616395365

`A158280(n)/7`

The canonical program, it is in `Seq.B007.C000`.
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

The programs for A158316, the canonical program `A158316.P4802030690171082004` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158316 has offset 1).

The definition of A158316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158316.P4802030690171082004

`∑[Δ[(20*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158316

/-- `∑[Δ[(20*n)²]-2]` -/
def P4802030690171082004.Spec : Prop :=
  ∀ n, P4802030690171082004.a n = A158316 (n + 1)

theorem P4802030690171082004.correct : P4802030690171082004.Spec := by
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

end A158316

/-! ## A158316.P10578004890641986836

`A158312(n+1)-4*(n+1)`
-/

namespace A158316.P10578004890641986836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158312 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158316.P10578004890641986836

namespace A158316

/-- `A158312(n+1)-4*(n+1)` -/
def P10578004890641986836.Spec : Prop :=
  ∀ n, P10578004890641986836.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P14578723112334037836

`A158010(n+1)+A156635(n+1)`
-/

namespace A158316.P14578723112334037836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158010 (n + 1) + A156635 (n + 1)

end

end A158316.P14578723112334037836

namespace A158316

/-- `A158010(n+1)+A156635(n+1)` -/
def P14578723112334037836.Spec : Prop :=
  ∀ n, P14578723112334037836.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P4325104214840911667

`A158329(n+1)-A210645(n+1)`
-/

namespace A158316.P4325104214840911667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158329 (n + 1) - A210645 (n + 1)

end

end A158316.P4325104214840911667

namespace A158316

/-- `A158329(n+1)-A210645(n+1)` -/
def P4325104214840911667.Spec : Prop :=
  ∀ n, P4325104214840911667.a n = A158316 (n + 1)

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

/-! ## A158316.P14172364986323821942

`A008602(n+1)²-2*(n+1)`
-/

namespace A158316.P14172364986323821942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158316.P14172364986323821942

namespace A158316

/-- `A008602(n+1)²-2*(n+1)` -/
def P14172364986323821942.Spec : Prop :=
  ∀ n, P14172364986323821942.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P1812364654147337149

`A008602(n+1)*A008602(n+1)-A005843(n+1)`
-/

namespace A158316.P1812364654147337149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (n + 1) * A008602 (n + 1) - A005843 (n + 1)

end

end A158316.P1812364654147337149

namespace A158316

/-- `A008602(n+1)*A008602(n+1)-A005843(n+1)` -/
def P1812364654147337149.Spec : Prop :=
  ∀ n, P1812364654147337149.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P17562206420609665963

`A008602(n+1)*A215145(n+1)-A008604(n+1)`
-/

namespace A158316.P17562206420609665963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008602 (n + 1) * A215145 (n + 1) - A008604 (n + 1)

end

end A158316.P17562206420609665963

namespace A158316

/-- `A008602(n+1)*A215145(n+1)-A008604(n+1)` -/
def P17562206420609665963.Spec : Prop :=
  ∀ n, P17562206420609665963.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P14431652871437057382

`A008592(n+1)*A317095(n+1)-A005843(n+1)`
-/

namespace A158316.P14431652871437057382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1) * A317095 (n + 1) - A005843 (n + 1)

end

end A158316.P14431652871437057382

namespace A158316

/-- `A008592(n+1)*A317095(n+1)-A005843(n+1)` -/
def P14431652871437057382.Spec : Prop :=
  ∀ n, P14431652871437057382.a n = A158316 (n + 1)

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

/-! ## A158316.P11041124776180878441

`A158129(2*(n+1))+2*(n+1)`
-/

namespace A158316.P11041124776180878441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158129 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A158316.P11041124776180878441

namespace A158316

/-- `A158129(2*(n+1))+2*(n+1)` -/
def P11041124776180878441.Spec : Prop :=
  ∀ n, P11041124776180878441.a n = A158316 (n + 1)

end A158316

/-! ## A158316.P9820322782276589033

`A158490(2*(n+1))+2*(4-n)`
-/

namespace A158316.P9820322782276589033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158490 (2 * (n + 1)) + 2 * (4 - (n : ℤ))

end

end A158316.P9820322782276589033

namespace A158316

/-- `A158490(2*(n+1))+2*(4-n)` -/
def P9820322782276589033.Spec : Prop :=
  ∀ n, P9820322782276589033.a n = A158316 (n + 1)

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

/-!
# A158317: a(n) = 400*n - 1.

The programs for A158317, the canonical program `A158317.P11424719519401125688` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158317 has offset 1).

The definition of A158317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158317.P11424719519401125688

`2*a(n-1)-a(n-2)` with `a(0)=399, a(1)=799`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158317

/-- `2*a(n-1)-a(n-2)` -/
def P11424719519401125688.Spec : Prop :=
  ∀ n, P11424719519401125688.a n = A158317 (n + 1)

theorem P11424719519401125688.correct : P11424719519401125688.Spec := by
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

The programs for A158319, the canonical program `A158319.P4122979403367782686` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158319 has offset 1).

The definition of A158319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158319.P4122979403367782686

`2*a(n-1)-a(n-2)` with `a(0)=440, a(1)=881`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158319

/-- `2*a(n-1)-a(n-2)` -/
def P4122979403367782686.Spec : Prop :=
  ∀ n, P4122979403367782686.a n = A158319 (n + 1)

theorem P4122979403367782686.correct : P4122979403367782686.Spec := by
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

The programs for A158321, the canonical program `A158321.P16159369678204285088` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158321 has offset 1).

The definition of A158321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158321.P16159369678204285088

`∑[Δ[(21*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158321

/-- `∑[Δ[(21*n)²]+2]` -/
def P16159369678204285088.Spec : Prop :=
  ∀ n, P16159369678204285088.a n = A158321 (n + 1)

theorem P16159369678204285088.correct : P16159369678204285088.Spec := by
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

/-! ## A158321.P1923902097515284017

`A157737(n+1)+4*(n+1)`
-/

namespace A158321.P1923902097515284017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157737 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158321.P1923902097515284017

namespace A158321

/-- `A157737(n+1)+4*(n+1)` -/
def P1923902097515284017.Spec : Prop :=
  ∀ n, P1923902097515284017.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P15465591551668982321

`2*(n+1)+A008603(n+1)²`
-/

namespace A158321.P15465591551668982321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008603 (n + 1) ^ 2

end

end A158321.P15465591551668982321

namespace A158321

/-- `2*(n+1)+A008603(n+1)²` -/
def P15465591551668982321.Spec : Prop :=
  ∀ n, P15465591551668982321.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P15901471276696007951

`2*(n+1)+A195033(2*n+1)²`
-/

namespace A158321.P15901471276696007951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A195033 (2 * n + 1) ^ 2

end

end A158321.P15901471276696007951

namespace A158321

/-- `2*(n+1)+A195033(2*n+1)²` -/
def P15901471276696007951.Spec : Prop :=
  ∀ n, P15901471276696007951.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P8209369029260450655

`A173141(3*(n+1))-(n+1)`
-/

namespace A158321.P8209369029260450655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173141 (3 * (n + 1)) - (n + 1 : ℤ)

end

end A158321.P8209369029260450655

namespace A158321

/-- `A173141(3*(n+1))-(n+1)` -/
def P8209369029260450655.Spec : Prop :=
  ∀ n, P8209369029260450655.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P10475986469065012854

`A132355(A131877(n+1))-A008594(n+1)`
-/

namespace A158321.P10475986469065012854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (A131877 (n + 1)).toNat - A008594 (n + 1)

end

end A158321.P10475986469065012854

namespace A158321

/-- `A132355(A131877(n+1))-A008594(n+1)` -/
def P10475986469065012854.Spec : Prop :=
  ∀ n, P10475986469065012854.a n = A158321 (n + 1)

end A158321

/-! ## A158321.P3475996085085612741

`A005843(n+1)+A312892(A008706(n+1))²`
-/

namespace A158321.P3475996085085612741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A312892 (A008706 (n + 1)).toNat ^ 2

end

end A158321.P3475996085085612741

namespace A158321

/-- `A005843(n+1)+A312892(A008706(n+1))²` -/
def P3475996085085612741.Spec : Prop :=
  ∀ n, P3475996085085612741.a n = A158321 (n + 1)

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

/-!
# A158322: a(n) = 441*n + 1.

The programs for A158322, the canonical program `A158322.P4427143363771986388` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158322 has offset 1).

The definition of A158322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158322.P4427143363771986388

`2*a(n-1)-a(n-2)` with `a(0)=442, a(1)=883`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158322

/-- `2*a(n-1)-a(n-2)` -/
def P4427143363771986388.Spec : Prop :=
  ∀ n, P4427143363771986388.a n = A158322 (n + 1)

theorem P4427143363771986388.correct : P4427143363771986388.Spec := by
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

The programs for A158325, the canonical program `A158325.P16976377369724047332` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158325 has offset 1).

The definition of A158325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158325.P16976377369724047332

`∑[Δ[(22*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158325

/-- `∑[Δ[(22*n)²]+2]` -/
def P16976377369724047332.Spec : Prop :=
  ∀ n, P16976377369724047332.a n = A158325 (n + 1)

theorem P16976377369724047332.correct : P16976377369724047332.Spec := by
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

end A158325

/-! ## A158325.P12863345594995624635

`A158329(n+1)+4*(n+1)`
-/

namespace A158325.P12863345594995624635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158329 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158325.P12863345594995624635

namespace A158325

/-- `A158329(n+1)+4*(n+1)` -/
def P12863345594995624635.Spec : Prop :=
  ∀ n, P12863345594995624635.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P635769905629585981

`A210645(n+1)+A158312(n+1)`
-/

namespace A158325.P635769905629585981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210645 (n + 1) + A158312 (n + 1)

end

end A158325.P635769905629585981

namespace A158325

/-- `A210645(n+1)+A158312(n+1)` -/
def P635769905629585981.Spec : Prop :=
  ∀ n, P635769905629585981.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P10687700278260513181

`A005843(n+1)+A008604(n+1)²`
-/

namespace A158325.P10687700278260513181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008604 (n + 1) ^ 2

end

end A158325.P10687700278260513181

namespace A158325

/-- `A005843(n+1)+A008604(n+1)²` -/
def P10687700278260513181.Spec : Prop :=
  ∀ n, P10687700278260513181.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P7458617694885160868

`A008604(n+1)*A161709(n+1)-A008602(n+1)`
-/

namespace A158325.P7458617694885160868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 (n + 1) * A161709 (n + 1) - A008602 (n + 1)

end

end A158325.P7458617694885160868

namespace A158325

/-- `A008604(n+1)*A161709(n+1)-A008602(n+1)` -/
def P7458617694885160868.Spec : Prop :=
  ∀ n, P7458617694885160868.a n = A158325 (n + 1)

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

/-! ## A158325.P11035641650436441579

`abs(1-A173267(n+2+n))+1`
-/

namespace A158325.P11035641650436441579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A173267 (n + 2 + n)| + 1

end

end A158325.P11035641650436441579

namespace A158325

/-- `abs(1-A173267(n+2+n))+1` -/
def P11035641650436441579.Spec : Prop :=
  ∀ n, P11035641650436441579.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P18226078883340215686

`4*(n+1)+A157960(2*(n+1))`
-/

namespace A158325.P18226078883340215686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A157960 (2 * (n + 1))

end

end A158325.P18226078883340215686

namespace A158325

/-- `4*(n+1)+A157960(2*(n+1))` -/
def P18226078883340215686.Spec : Prop :=
  ∀ n, P18226078883340215686.a n = A158325 (n + 1)

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

/-! ## A158325.P5366695900715551498

`2*(n+1)+A008593(2*(n+1))²`
-/

namespace A158325.P5366695900715551498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008593 (2 * (n + 1)) ^ 2

end

end A158325.P5366695900715551498

namespace A158325

/-- `2*(n+1)+A008593(2*(n+1))²` -/
def P5366695900715551498.Spec : Prop :=
  ∀ n, P5366695900715551498.a n = A158325 (n + 1)

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

/-! ## A158325.P1731927628764096978

`A004277(n+1)+A004277(A017509(n)+1)²`
-/

namespace A158325.P1731927628764096978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A004277 (A017509 n + 1).toNat ^ 2

end

end A158325.P1731927628764096978

namespace A158325

/-- `A004277(n+1)+A004277(A017509(n)+1)²` -/
def P1731927628764096978.Spec : Prop :=
  ∀ n, P1731927628764096978.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P13841465452726740268

`A005843(n+1)+A310368(A008706(n+1))²`
-/

namespace A158325.P13841465452726740268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A310368 (A008706 (n + 1)).toNat ^ 2

end

end A158325.P13841465452726740268

namespace A158325

/-- `A005843(n+1)+A310368(A008706(n+1))²` -/
def P13841465452726740268.Spec : Prop :=
  ∀ n, P13841465452726740268.a n = A158325 (n + 1)

end A158325

/-! ## A158325.P15085681578646211007

`2*(n+1)+A014681(A017509(2*n+1))²`
-/

namespace A158325.P15085681578646211007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A014681 (A017509 (2 * n + 1)).toNat ^ 2

end

end A158325.P15085681578646211007

namespace A158325

/-- `2*(n+1)+A014681(A017509(2*n+1))²` -/
def P15085681578646211007.Spec : Prop :=
  ∀ n, P15085681578646211007.a n = A158325 (n + 1)

end A158325

/-!
# A158326: a(n) = 484*n + 1.

The programs for A158326, the canonical program `A158326.P7991535806040660221` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158326 has offset 1).

The definition of A158326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158326.P7991535806040660221

`2*a(n-1)-a(n-2)` with `a(0)=485, a(1)=969`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158326

/-- `2*a(n-1)-a(n-2)` -/
def P7991535806040660221.Spec : Prop :=
  ∀ n, P7991535806040660221.a n = A158326 (n + 1)

theorem P7991535806040660221.correct : P7991535806040660221.Spec := by
  intro n
  simp only [A158326, Nat.add_sub_cancel]

end A158326

/-!
# A158327: a(n) = A145444(n)-A145511(n).

The programs for A158327, the canonical program `A158327.P17963926596425252861` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158327 has offset 1).

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

The canonical program, it is in `Seq.B007.C000`.
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

The programs for A158328, the canonical program `A158328.P9213306656047142761` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158328 has offset 1).

The definition of A158328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158328.P9213306656047142761

`p?[A106712(n+1)-2]`

The canonical program, it is in `Seq.B005.C001`.
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

The programs for A158329, the canonical program `A158329.P5134105185824432701` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158329 has offset 1).

The definition of A158329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158329.P5134105185824432701

`∑[Δ[(22*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158329

/-- `∑[Δ[(22*n)²]-2]` -/
def P5134105185824432701.Spec : Prop :=
  ∀ n, P5134105185824432701.a n = A158329 (n + 1)

theorem P5134105185824432701.correct : P5134105185824432701.Spec := by
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

end A158329

/-! ## A158329.P3740117883384183632

`A158325(n+1)-4*(n+1)`
-/

namespace A158329.P3740117883384183632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158325 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158329.P3740117883384183632

namespace A158329

/-- `A158325(n+1)-4*(n+1)` -/
def P3740117883384183632.Spec : Prop :=
  ∀ n, P3740117883384183632.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P4479709988910810452

`A210645(n+1)+A158316(n+1)`
-/

namespace A158329.P4479709988910810452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210645 (n + 1) + A158316 (n + 1)

end

end A158329.P4479709988910810452

namespace A158329

/-- `A210645(n+1)+A158316(n+1)` -/
def P4479709988910810452.Spec : Prop :=
  ∀ n, P4479709988910810452.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P15168146256239037145

`A008604(n+1)²-A005843(n+1)`
-/

namespace A158329.P15168146256239037145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 (n + 1) ^ 2 - A005843 (n + 1)

end

end A158329.P15168146256239037145

namespace A158329

/-- `A008604(n+1)²-A005843(n+1)` -/
def P15168146256239037145.Spec : Prop :=
  ∀ n, P15168146256239037145.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P10582658438921503783

`A008604(n+1)*A161709(n+1)-A008606(n+1)`
-/

namespace A158329.P10582658438921503783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 (n + 1) * A161709 (n + 1) - A008606 (n + 1)

end

end A158329.P10582658438921503783

namespace A158329

/-- `A008604(n+1)*A161709(n+1)-A008606(n+1)` -/
def P10582658438921503783.Spec : Prop :=
  ∀ n, P10582658438921503783.a n = A158329 (n + 1)

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

/-! ## A158329.P7000792624564537804

`A158539(2*(n+1))+9-2*n`
-/

namespace A158329.P7000792624564537804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158539 (2 * (n + 1)) + (9 - (2 * n : ℤ))

end

end A158329.P7000792624564537804

namespace A158329

/-- `A158539(2*(n+1))+9-2*n` -/
def P7000792624564537804.Spec : Prop :=
  ∀ n, P7000792624564537804.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P3669378396774540915

`A008593(2*(n+1))²-2*(n+1)`
-/

namespace A158329.P3669378396774540915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (2 * (n + 1)) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158329.P3669378396774540915

namespace A158329

/-- `A008593(2*(n+1))²-2*(n+1)` -/
def P3669378396774540915.Spec : Prop :=
  ∀ n, P3669378396774540915.a n = A158329 (n + 1)

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

/-! ## A158329.P14803691502640994613

`A173267(2*(n+1))+2*A001478(2*(n+1))`
-/

namespace A158329.P14803691502640994613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173267 (2 * (n + 1)) + 2 * A001478 (2 * (n + 1))

end

end A158329.P14803691502640994613

namespace A158329

/-- `A173267(2*(n+1))+2*A001478(2*(n+1))` -/
def P14803691502640994613.Spec : Prop :=
  ∀ n, P14803691502640994613.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P2785849711288186484

`A004277(A017509(n)+1)²-2*(n+1)`
-/

namespace A158329.P2785849711288186484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A017509 n + 1).toNat ^ 2 - (2 * (n + 1) : ℤ)

end

end A158329.P2785849711288186484

namespace A158329

/-- `A004277(A017509(n)+1)²-2*(n+1)` -/
def P2785849711288186484.Spec : Prop :=
  ∀ n, P2785849711288186484.a n = A158329 (n + 1)

end A158329

/-! ## A158329.P10195452197508656503

`A310368(A008706(n+1))²-A005843(n+1)`
-/

namespace A158329.P10195452197508656503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310368 (A008706 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158329.P10195452197508656503

namespace A158329

/-- `A310368(A008706(n+1))²-A005843(n+1)` -/
def P10195452197508656503.Spec : Prop :=
  ∀ n, P10195452197508656503.a n = A158329 (n + 1)

end A158329

/-!
# A158330: a(n) = 484*n - 1.

The programs for A158330, the canonical program `A158330.P11206124125586144157` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158330 has offset 1).

The definition of A158330 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A158330.P11206124125586144157

`2*a(n-1)-a(n-2)` with `a(0)=483, a(1)=967`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158330

/-- `2*a(n-1)-a(n-2)` -/
def P11206124125586144157.Spec : Prop :=
  ∀ n, P11206124125586144157.a n = A158330 (n + 1)

theorem P11206124125586144157.correct : P11206124125586144157.Spec := by
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

The programs for A158339, the canonical program `A158339.P10759301498337830588` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158339 has offset 1).

The definition of A158339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158339.P10759301498337830588

`∩[A118717(n+1)+A118717(n+3), A175708(n+1)+1+n]`

The canonical program, it is in `Seq.B011.C000`.
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

/-! ## A158340.P17021874196615460038

`∩[A039170(n+1), A109422(n+1)]`
-/

namespace A158340.P17021874196615460038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158340.P17021874196615460038

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

/-! ## A158340.P12663945769726364375

`∩[A109422(n+1), A261355(A261355(n+1)+1)]`
-/

namespace A158340.P12663945769726364375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261355 (A261355 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158340.P12663945769726364375

/-!
# A158341: a(n) = A013928(A002110(n)).

The programs for A158341, there is no canonical definition to state claims against.
-/

/-! ## A158341.P1356125387868036850

`A013928(A002110(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A158341.P1356125387868036850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A002110 n).toNat

end

end A158341.P1356125387868036850

/-! ## A158341.P7884780658222474527

`A365435(n)-1`
-/

namespace A158341.P7884780658222474527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365435 n - 1

end

end A158341.P7884780658222474527

/-! ## A158341.P16320466820480855000

`A064273(2^n-1)`
-/

namespace A158341.P16320466820480855000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064273 (2 ^ n - 1)

end

end A158341.P16320466820480855000

/-! ## A158341.P755570496921475912

`A246353(2^n-1)-1`
-/

namespace A158341.P755570496921475912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246353 (2 ^ n - 1) - 1

end

end A158341.P755570496921475912

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

/-! ## A158342.P2997247892546596038

`∩[A132243(n+1), A029924(n)]`
-/

namespace A158342.P2997247892546596038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029924 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A158342.P2997247892546596038

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

/-! ## A158350.P13544290599903946443

`A003961(p?[A099349(n+1)])`
-/

namespace A158350.P13544290599903946443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A158350.P13544290599903946443

/-!
# A158357: a(n) is the smallest number that is greater than a(n-1) and whose name in Spanish contains n vowels.

The programs for A158357, there is no canonical definition to state claims against.
-/

/-! ## A158357.P5426233245041347705

`a(n-1)` with `a(0)=2, a(1)=5, a(2)=7, a(3)=22, a(4)=25, a(5)=27, a(6)=44, a(7)=116, a(8)=117, a(9)=144`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
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

The programs for A158362, there is no canonical definition to state claims against.
-/

/-! ## A158362.P1720203980787693855

`A002378(n+1)*A107444(n+2)`
-/

namespace A158362.P1720203980787693855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (n + 1) * A107444 (n + 2)

end

end A158362.P1720203980787693855

/-! ## A158362.P7962788452802375638

`C((n+2)^3, n+3)`
-/

namespace A158362.P7962788452802375638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 3) (n + 3)

end

end A158362.P7962788452802375638

/-!
# A158363: a(n) = binomial((n+2)^3,n+1).

The programs for A158363, there is no canonical definition to state claims against.
-/

/-! ## A158363.P17494262703303300904

`C((n+2)^3, n+1)`
-/

namespace A158363.P17494262703303300904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 2) ^ 3) (n + 1)

end

end A158363.P17494262703303300904

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

/-! ## A158363.P12453341031157390934

`lcm(n+2, C((n+2)*(n+2)², n+1))`
-/

namespace A158363.P12453341031157390934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.choose ((n + 2) * (n + 2) ^ 2) (n + 1))

end

end A158363.P12453341031157390934

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

/-!
# A158364: a(n) = 529*n^2 - 2*n.

The programs for A158364, the canonical program `A158364.P9795848080856613032` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158364 has offset 1).

The definition of A158364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158364.P9795848080856613032

`∑[Δ[(23*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158364

/-- `∑[Δ[(23*n)²]-2]` -/
def P9795848080856613032.Spec : Prop :=
  ∀ n, P9795848080856613032.a n = A158364 (n + 1)

theorem P9795848080856613032.correct : P9795848080856613032.Spec := by
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

end A158364

/-! ## A158364.P17804144695906291699

`A158367(n+1)-4*(n+1)`
-/

namespace A158364.P17804144695906291699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158367 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158364.P17804144695906291699

namespace A158364

/-- `A158367(n+1)-4*(n+1)` -/
def P17804144695906291699.Spec : Prop :=
  ∀ n, P17804144695906291699.a n = A158364 (n + 1)

end A158364

/-! ## A158364.P7446594944385917518

`A008605(n+1)²-2*(n+1)`
-/

namespace A158364.P7446594944385917518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008605 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158364.P7446594944385917518

namespace A158364

/-- `A008605(n+1)²-2*(n+1)` -/
def P7446594944385917518.Spec : Prop :=
  ∀ n, P7446594944385917518.a n = A158364 (n + 1)

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

/-! ## A158364.P12998264532108110251

`A215148(n+1)²-A103214(2*(n+1))`
-/

namespace A158364.P12998264532108110251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215148 (n + 1) ^ 2 - A103214 (2 * (n + 1))

end

end A158364.P12998264532108110251

namespace A158364

/-- `A215148(n+1)²-A103214(2*(n+1))` -/
def P12998264532108110251.Spec : Prop :=
  ∀ n, P12998264532108110251.a n = A158364 (n + 1)

end A158364

/-! ## A158364.P5861818401321168283

`A158410(n+1)-A135453(A008458(n+1))`
-/

namespace A158364.P5861818401321168283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158410 (n + 1) - A135453 (A008458 (n + 1)).toNat

end

end A158364.P5861818401321168283

namespace A158364

/-- `A158410(n+1)-A135453(A008458(n+1))` -/
def P5861818401321168283.Spec : Prop :=
  ∀ n, P5861818401321168283.a n = A158364 (n + 1)

end A158364

/-! ## A158364.P5219510629765865901

`A310375(A008706(n+1))²-A005843(n+1)`
-/

namespace A158364.P5219510629765865901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310375 (A008706 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158364.P5219510629765865901

namespace A158364

/-- `A310375(A008706(n+1))²-A005843(n+1)` -/
def P5219510629765865901.Spec : Prop :=
  ∀ n, P5219510629765865901.a n = A158364 (n + 1)

end A158364

/-!
# A158365: a(n) = 529*n - 1.

The programs for A158365, the canonical program `A158365.P6576995031971473076` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158365 has offset 1).

The definition of A158365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158365.P6576995031971473076

`(n+1)*529-1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158365

/-- `(n+1)*529-1` -/
def P6576995031971473076.Spec : Prop :=
  ∀ n, P6576995031971473076.a n = A158365 (n + 1)

theorem P6576995031971473076.correct : P6576995031971473076.Spec := by
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

The programs for A158367, the canonical program `A158367.P15586191319032627868` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158367 has offset 1).

The definition of A158367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158367.P15586191319032627868

`∑[Δ[(23*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158367

/-- `∑[Δ[(23*n)²]+2]` -/
def P15586191319032627868.Spec : Prop :=
  ∀ n, P15586191319032627868.a n = A158367 (n + 1)

theorem P15586191319032627868.correct : P15586191319032627868.Spec := by
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

/-! ## A158367.P12118651266523454868

`A158364(n+1)+4*(n+1)`
-/

namespace A158367.P12118651266523454868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158364 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158367.P12118651266523454868

namespace A158367

/-- `A158364(n+1)+4*(n+1)` -/
def P12118651266523454868.Spec : Prop :=
  ∀ n, P12118651266523454868.a n = A158367 (n + 1)

end A158367

/-! ## A158367.P494645246919456875

`2*(n+1)+A008605(n+1)²`
-/

namespace A158367.P494645246919456875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008605 (n + 1) ^ 2

end

end A158367.P494645246919456875

namespace A158367

/-- `2*(n+1)+A008605(n+1)²` -/
def P494645246919456875.Spec : Prop :=
  ∀ n, P494645246919456875.a n = A158367 (n + 1)

end A158367

/-! ## A158367.P14279480110836656153

`A158413(n+1)-A135453(A008458(n+1))`
-/

namespace A158367.P14279480110836656153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158413 (n + 1) - A135453 (A008458 (n + 1)).toNat

end

end A158367.P14279480110836656153

namespace A158367

/-- `A158413(n+1)-A135453(A008458(n+1))` -/
def P14279480110836656153.Spec : Prop :=
  ∀ n, P14279480110836656153.a n = A158367 (n + 1)

end A158367

/-! ## A158367.P17289788758467036765

`A005843(n+1)+A310375(A008706(n+1))²`
-/

namespace A158367.P17289788758467036765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A310375 (A008706 (n + 1)).toNat ^ 2

end

end A158367.P17289788758467036765

namespace A158367

/-- `A005843(n+1)+A310375(A008706(n+1))²` -/
def P17289788758467036765.Spec : Prop :=
  ∀ n, P17289788758467036765.a n = A158367 (n + 1)

end A158367

/-! ## A158367.P15840242382967376909

`A158368((n+1)²)+A005408(n)`
-/

namespace A158367.P15840242382967376909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158368 ((n + 1) ^ 2) + A005408 n

end

end A158367.P15840242382967376909

namespace A158367

/-- `A158368((n+1)²)+A005408(n)` -/
def P15840242382967376909.Spec : Prop :=
  ∀ n, P15840242382967376909.a n = A158367 (n + 1)

end A158367

/-!
# A158368: a(n) = 529*n + 1.

The programs for A158368, the canonical program `A158368.P14859695313969243984` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158368 has offset 1).

The definition of A158368 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158368.P14859695313969243984

`(n+1)*530-n`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158368

/-- `(n+1)*530-n` -/
def P14859695313969243984.Spec : Prop :=
  ∀ n, P14859695313969243984.a n = A158368 (n + 1)

theorem P14859695313969243984.correct : P14859695313969243984.Spec := by
  intro n
  simp only [A158368, Nat.add_sub_cancel]

end A158368

/-!
# A158369: a(n) = 576*n^2 + 2*n.

The programs for A158369, the canonical program `A158369.P15654295710997262892` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158369 has offset 1).

The definition of A158369 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158369.P15654295710997262892

`∑[Δ[(24*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158369

/-- `∑[Δ[(24*n)²]+2]` -/
def P15654295710997262892.Spec : Prop :=
  ∀ n, P15654295710997262892.a n = A158369 (n + 1)

theorem P15654295710997262892.correct : P15654295710997262892.Spec := by
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

end A158369

/-! ## A158369.P5140928900750936058

`A158371(n+1)+4*(n+1)`
-/

namespace A158369.P5140928900750936058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158371 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158369.P5140928900750936058

namespace A158369

/-- `A158371(n+1)+4*(n+1)` -/
def P5140928900750936058.Spec : Prop :=
  ∀ n, P5140928900750936058.a n = A158369 (n + 1)

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

end A158369

/-! ## A158369.P16184760727506194886

`A325475(n+1)+2*(n+1)`
-/

namespace A158369.P16184760727506194886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325475 (n + 1) + (2 * (n + 1) : ℤ)

end

end A158369.P16184760727506194886

namespace A158369

/-- `A325475(n+1)+2*(n+1)` -/
def P16184760727506194886.Spec : Prop :=
  ∀ n, P16184760727506194886.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P6980180461380050770

`2*(n+1)+A008606(n+1)²`
-/

namespace A158369.P6980180461380050770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008606 (n + 1) ^ 2

end

end A158369.P6980180461380050770

namespace A158369

/-- `2*(n+1)+A008606(n+1)²` -/
def P6980180461380050770.Spec : Prop :=
  ∀ n, P6980180461380050770.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P14082948013987225571

`(4*(A016921(n+1)-1))²+2*(n+1)`
-/

namespace A158369.P14082948013987225571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (A016921 (n + 1) - 1)) ^ 2 + (2 * (n + 1) : ℤ)

end

end A158369.P14082948013987225571

namespace A158369

/-- `(4*(A016921(n+1)-1))²+2*(n+1)` -/
def P14082948013987225571.Spec : Prop :=
  ∀ n, P14082948013987225571.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P14599791719740098115

`A008606(n+1)*A103214(n+1)-A008604(n+1)`
-/

namespace A158369.P14599791719740098115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (n + 1) * A103214 (n + 1) - A008604 (n + 1)

end

end A158369.P14599791719740098115

namespace A158369

/-- `A008606(n+1)*A103214(n+1)-A008604(n+1)` -/
def P14599791719740098115.Spec : Prop :=
  ∀ n, P14599791719740098115.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P3206458312437835306

`2*(n+1)+A008594(2*(n+1))²`
-/

namespace A158369.P3206458312437835306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008594 (2 * (n + 1)) ^ 2

end

end A158369.P3206458312437835306

namespace A158369

/-- `2*(n+1)+A008594(2*(n+1))²` -/
def P3206458312437835306.Spec : Prop :=
  ∀ n, P3206458312437835306.a n = A158369 (n + 1)

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

/-! ## A158369.P12327325524467606798

`A156635(2*(n+1))-2*A001478(2*(n+1))`
-/

namespace A158369.P12327325524467606798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156635 (2 * (n + 1)) - 2 * A001478 (2 * (n + 1))

end

end A158369.P12327325524467606798

namespace A158369

/-- `A156635(2*(n+1))-2*A001478(2*(n+1))` -/
def P12327325524467606798.Spec : Prop :=
  ∀ n, P12327325524467606798.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P1766381015188984412

`A103214(n+1)²-A215148(2*(n+1))`
-/

namespace A158369.P1766381015188984412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (n + 1) ^ 2 - A215148 (2 * (n + 1))

end

end A158369.P1766381015188984412

namespace A158369

/-- `A103214(n+1)²-A215148(2*(n+1))` -/
def P1766381015188984412.Spec : Prop :=
  ∀ n, P1766381015188984412.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P16451913906715256499

`A158686(3*(n+1))+A005408(n)`
-/

namespace A158369.P16451913906715256499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 (3 * (n + 1)) + A005408 n

end

end A158369.P16451913906715256499

namespace A158369

/-- `A158686(3*(n+1))+A005408(n)` -/
def P16451913906715256499.Spec : Prop :=
  ∀ n, P16451913906715256499.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P6754866727516327681

`A158686(A008585(n+1))+2*n+1`
-/

namespace A158369.P6754866727516327681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 (A008585 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A158369.P6754866727516327681

namespace A158369

/-- `A158686(A008585(n+1))+2*n+1` -/
def P6754866727516327681.Spec : Prop :=
  ∀ n, P6754866727516327681.a n = A158369 (n + 1)

end A158369

/-! ## A158369.P1409029584263703188

`A010006(A008458(n+1))+2*n`
-/

namespace A158369.P1409029584263703188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 (A008458 (n + 1)).toNat + (2 * n : ℤ)

end

end A158369.P1409029584263703188

namespace A158369

/-- `A010006(A008458(n+1))+2*n` -/
def P1409029584263703188.Spec : Prop :=
  ∀ n, P1409029584263703188.a n = A158369 (n + 1)

end A158369

/-!
# A158370: a(n) = 576*n + 1.

The programs for A158370, the canonical program `A158370.P7081742304530739413` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158370 has offset 1).

The definition of A158370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158370.P7081742304530739413

`576+a(n-1)` with `a(0)=577`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158370

/-- `576+a(n-1)` -/
def P7081742304530739413.Spec : Prop :=
  ∀ n, (P7081742304530739413.a n : ℤ) = A158370 (n + 1)

theorem P7081742304530739413.correct : P7081742304530739413.Spec := by
  intro n
  simp only [A158370, Nat.add_sub_cancel]

end A158370

/-!
# A158371: a(n) = 576*n^2 - 2*n.

The programs for A158371, the canonical program `A158371.P16819817808130928269` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158371 has offset 1).

The definition of A158371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158371.P16819817808130928269

`∑[Δ[(24*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158371

/-- `∑[Δ[(24*n)²]-2]` -/
def P16819817808130928269.Spec : Prop :=
  ∀ n, P16819817808130928269.a n = A158371 (n + 1)

theorem P16819817808130928269.correct : P16819817808130928269.Spec := by
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

end A158371

/-! ## A158371.P2189020144093897888

`A158369(n+1)-4*(n+1)`
-/

namespace A158371.P2189020144093897888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158369 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158371.P2189020144093897888

namespace A158371

/-- `A158369(n+1)-4*(n+1)` -/
def P2189020144093897888.Spec : Prop :=
  ∀ n, P2189020144093897888.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P15784052124369923516

`A325475(n+1)-2*(n+1)`
-/

namespace A158371.P15784052124369923516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325475 (n + 1) - (2 * (n + 1) : ℤ)

end

end A158371.P15784052124369923516

namespace A158371

/-- `A325475(n+1)-2*(n+1)` -/
def P15784052124369923516.Spec : Prop :=
  ∀ n, P15784052124369923516.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P9428847811335721556

`A008606(n+1)²-2*(n+1)`
-/

namespace A158371.P9428847811335721556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008606 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158371.P9428847811335721556

namespace A158371

/-- `A008606(n+1)²-2*(n+1)` -/
def P9428847811335721556.Spec : Prop :=
  ∀ n, P9428847811335721556.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P11956509703026065395

`A008604(n+1)+A008606(n+1)*A183010(n+1)`
-/

namespace A158371.P11956509703026065395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 (n + 1) + A008606 (n + 1) * A183010 (n + 1)

end

end A158371.P11956509703026065395

namespace A158371

/-- `A008604(n+1)+A008606(n+1)*A183010(n+1)` -/
def P11956509703026065395.Spec : Prop :=
  ∀ n, P11956509703026065395.a n = A158371 (n + 1)

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

/-! ## A158371.P2503919202452000510

`A158543(2*(n+1))+2*(5-n)`
-/

namespace A158371.P2503919202452000510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158543 (2 * (n + 1)) + 2 * (5 - (n : ℤ))

end

end A158371.P2503919202452000510

namespace A158371

/-- `A158543(2*(n+1))+2*(5-n)` -/
def P2503919202452000510.Spec : Prop :=
  ∀ n, P2503919202452000510.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P18143089175250578725

`A008594(2*(n+1))²-2*(n+1)`
-/

namespace A158371.P18143089175250578725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (2 * (n + 1)) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158371.P18143089175250578725

namespace A158371

/-- `A008594(2*(n+1))²-2*(n+1)` -/
def P18143089175250578725.Spec : Prop :=
  ∀ n, P18143089175250578725.a n = A158371 (n + 1)

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

/-! ## A158371.P1793223084220024160

`A103214(n+1)²-A158060(2*(n+1))`
-/

namespace A158371.P1793223084220024160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (n + 1) ^ 2 - A158060 (2 * (n + 1))

end

end A158371.P1793223084220024160

namespace A158371

/-- `A103214(n+1)²-A158060(2*(n+1))` -/
def P1793223084220024160.Spec : Prop :=
  ∀ n, P1793223084220024160.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P15466704265472525823

`A158316(2*(n+1))-A158010(2*(n+1))`
-/

namespace A158371.P15466704265472525823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158316 (2 * (n + 1)) - A158010 (2 * (n + 1))

end

end A158371.P15466704265472525823

namespace A158371

/-- `A158316(2*(n+1))-A158010(2*(n+1))` -/
def P15466704265472525823.Spec : Prop :=
  ∀ n, P15466704265472525823.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P6387658582513119396

`A157948(3*(n+1))+n+1`
-/

namespace A158371.P6387658582513119396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157948 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A158371.P6387658582513119396

namespace A158371

/-- `A157948(3*(n+1))+n+1` -/
def P6387658582513119396.Spec : Prop :=
  ∀ n, P6387658582513119396.a n = A158371 (n + 1)

end A158371

/-! ## A158371.P14110602770875462826

`A158686(3*(n+1))-A005408(n+1)`
-/

namespace A158371.P14110602770875462826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158686 (3 * (n + 1)) - A005408 (n + 1)

end

end A158371.P14110602770875462826

namespace A158371

/-- `A158686(3*(n+1))-A005408(n+1)` -/
def P14110602770875462826.Spec : Prop :=
  ∀ n, P14110602770875462826.a n = A158371 (n + 1)

end A158371

/-!
# A158372: a(n) = 576*n - 1.

The programs for A158372, the canonical program `A158372.P8061055444034103388` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158372 has offset 1).

The definition of A158372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158372.P8061055444034103388

`576+a(n-1)` with `a(0)=575`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158372

/-- `576+a(n-1)` -/
def P8061055444034103388.Spec : Prop :=
  ∀ n, (P8061055444034103388.a n : ℤ) = A158372 (n + 1)

theorem P8061055444034103388.correct : P8061055444034103388.Spec := by
  intro n
  simp only [A158372, Nat.add_sub_cancel]

end A158372

/-!
# A158373: a(n) = 625*n^2 - 2*n.

The programs for A158373, the canonical program `A158373.P12437128889368613193` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158373 has offset 1).

The definition of A158373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158373.P12437128889368613193

`∑[Δ[(25*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158373

/-- `∑[Δ[(25*n)²]-2]` -/
def P12437128889368613193.Spec : Prop :=
  ∀ n, P12437128889368613193.a n = A158373 (n + 1)

theorem P12437128889368613193.correct : P12437128889368613193.Spec := by
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

end A158373

/-! ## A158373.P6436060580744434051

`A158382(n+1)-4*(n+1)`
-/

namespace A158373.P6436060580744434051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158382 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158373.P6436060580744434051

namespace A158373

/-- `A158382(n+1)-4*(n+1)` -/
def P6436060580744434051.Spec : Prop :=
  ∀ n, P6436060580744434051.a n = A158373 (n + 1)

end A158373

/-! ## A158373.P17991632569176153855

`A008607(n+1)²-2*(n+1)`
-/

namespace A158373.P17991632569176153855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158373.P17991632569176153855

namespace A158373

/-- `A008607(n+1)²-2*(n+1)` -/
def P17991632569176153855.Spec : Prop :=
  ∀ n, P17991632569176153855.a n = A158373 (n + 1)

end A158373

/-! ## A158373.P10204808005995290800

`A008607(n+1)*A008607(n+1)-A005843(n+1)`
-/

namespace A158373.P10204808005995290800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (n + 1) * A008607 (n + 1) - A005843 (n + 1)

end

end A158373.P10204808005995290800

namespace A158373

/-- `A008607(n+1)*A008607(n+1)-A005843(n+1)` -/
def P10204808005995290800.Spec : Prop :=
  ∀ n, P10204808005995290800.a n = A158373 (n + 1)

end A158373

/-! ## A158373.P2908027522068523550

`Δ[C(A016885(n), 2)]²-2*(n+1)`
-/

namespace A158373.P2908027522068523550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016885 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158373.P2908027522068523550

namespace A158373

/-- `Δ[C(A016885(n), 2)]²-2*(n+1)` -/
def P2908027522068523550.Spec : Prop :=
  ∀ n, P2908027522068523550.a n = A158373 (n + 1)

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

/-! ## A158373.P14752548901324262617

`A008706(A008706(n+1))²-2*(n+1)`
-/

namespace A158373.P14752548901324262617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008706 (n + 1)).toNat ^ 2 - (2 * (n + 1) : ℤ)

end

end A158373.P14752548901324262617

namespace A158373

/-- `A008706(A008706(n+1))²-2*(n+1)` -/
def P14752548901324262617.Spec : Prop :=
  ∀ n, P14752548901324262617.a n = A158373 (n + 1)

end A158373

/-! ## A158373.P193522774023933413

`A008587(A008587(n+1))²-2*(n+1)`
-/

namespace A158373.P193522774023933413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A008587 (n + 1)).toNat ^ 2 - (2 * (n + 1) : ℤ)

end

end A158373.P193522774023933413

namespace A158373

/-- `A008587(A008587(n+1))²-2*(n+1)` -/
def P193522774023933413.Spec : Prop :=
  ∀ n, P193522774023933413.a n = A158373 (n + 1)

end A158373

/-!
# A158374: a(n) = 625*n - 1.

The programs for A158374, the canonical program `A158374.P9339554309899079502` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158374 has offset 1).

The definition of A158374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158374.P9339554309899079502

`624+n*625`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158374

/-- `624+n*625` -/
def P9339554309899079502.Spec : Prop :=
  ∀ n, (P9339554309899079502.a n : ℤ) = A158374 (n + 1)

theorem P9339554309899079502.correct : P9339554309899079502.Spec := by
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

The programs for A158382, the canonical program `A158382.P14887932645818246369` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158382 has offset 1).

The definition of A158382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158382.P14887932645818246369

`∑[Δ[(25*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158382

/-- `∑[Δ[(25*n)²]+2]` -/
def P14887932645818246369.Spec : Prop :=
  ∀ n, P14887932645818246369.a n = A158382 (n + 1)

theorem P14887932645818246369.correct : P14887932645818246369.Spec := by
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

/-! ## A158382.P13292268513274115940

`A158373(n+1)+4*(n+1)`
-/

namespace A158382.P13292268513274115940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158373 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158382.P13292268513274115940

namespace A158382

/-- `A158373(n+1)+4*(n+1)` -/
def P13292268513274115940.Spec : Prop :=
  ∀ n, P13292268513274115940.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P14322355654825544825

`2*(n+1)+A008607(n+1)²`
-/

namespace A158382.P14322355654825544825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008607 (n + 1) ^ 2

end

end A158382.P14322355654825544825

namespace A158382

/-- `2*(n+1)+A008607(n+1)²` -/
def P14322355654825544825.Spec : Prop :=
  ∀ n, P14322355654825544825.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P3573308524209141089

`A005843(n+1)+A008607(n+1)*A008607(n+1)`
-/

namespace A158382.P3573308524209141089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008607 (n + 1) * A008607 (n + 1)

end

end A158382.P3573308524209141089

namespace A158382

/-- `A005843(n+1)+A008607(n+1)*A008607(n+1)` -/
def P3573308524209141089.Spec : Prop :=
  ∀ n, P3573308524209141089.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P5272119150599166842

`Δ[C(A016885(n), 2)]²+2*(n+1)`
-/

namespace A158382.P5272119150599166842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016885 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + (2 * (n + 1) : ℤ)

end

end A158382.P5272119150599166842

namespace A158382

/-- `Δ[C(A016885(n), 2)]²+2*(n+1)` -/
def P5272119150599166842.Spec : Prop :=
  ∀ n, P5272119150599166842.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P8496410993582198126

`2*(n+1)+A008706(A008706(n+1))²`
-/

namespace A158382.P8496410993582198126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A008706 (A008706 (n + 1)).toNat ^ 2

end

end A158382.P8496410993582198126

namespace A158382

/-- `2*(n+1)+A008706(A008706(n+1))²` -/
def P8496410993582198126.Spec : Prop :=
  ∀ n, P8496410993582198126.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P3557891037330668009

`(A016897(A016897(n))+1)²+2*(n+1)`
-/

namespace A158382.P3557891037330668009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016897 (A016897 n).toNat + 1) ^ 2 + (2 * (n + 1) : ℤ)

end

end A158382.P3557891037330668009

namespace A158382

/-- `(A016897(A016897(n))+1)²+2*(n+1)` -/
def P3557891037330668009.Spec : Prop :=
  ∀ n, P3557891037330668009.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P10908508550335689603

`A004277(n+1)+(A016897(A016897(n))+1)²`
-/

namespace A158382.P10908508550335689603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + (A016897 (A016897 n).toNat + 1) ^ 2

end

end A158382.P10908508550335689603

namespace A158382

/-- `A004277(n+1)+(A016897(A016897(n))+1)²` -/
def P10908508550335689603.Spec : Prop :=
  ∀ n, P10908508550335689603.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P3532911049536124104

`A010015(A008587(n+1))+2*n`
-/

namespace A158382.P3532911049536124104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010015 (A008587 (n + 1)).toNat + (2 * n : ℤ)

end

end A158382.P3532911049536124104

namespace A158382

/-- `A010015(A008587(n+1))+2*n` -/
def P3532911049536124104.Spec : Prop :=
  ∀ n, P3532911049536124104.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P7866469533045286915

`A004277(n+1)+A008587(A008587(n+1))²`
-/

namespace A158382.P7866469533045286915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1) + A008587 (A008587 (n + 1)).toNat ^ 2

end

end A158382.P7866469533045286915

namespace A158382

/-- `A004277(n+1)+A008587(A008587(n+1))²` -/
def P7866469533045286915.Spec : Prop :=
  ∀ n, P7866469533045286915.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P7630690489144800429

`A005843(n+1)+A008587(A008587(n+1))²`
-/

namespace A158382.P7630690489144800429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A008587 (A008587 (n + 1)).toNat ^ 2

end

end A158382.P7630690489144800429

namespace A158382

/-- `A005843(n+1)+A008587(A008587(n+1))²` -/
def P7630690489144800429.Spec : Prop :=
  ∀ n, P7630690489144800429.a n = A158382 (n + 1)

end A158382

/-! ## A158382.P4634293501718893612

`A014681(2*n+1)+A008587(A008587(n+1))²`
-/

namespace A158382.P4634293501718893612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n + 1) + A008587 (A008587 (n + 1)).toNat ^ 2

end

end A158382.P4634293501718893612

namespace A158382

/-- `A014681(2*n+1)+A008587(A008587(n+1))²` -/
def P4634293501718893612.Spec : Prop :=
  ∀ n, P4634293501718893612.a n = A158382 (n + 1)

end A158382

/-!
# A158383: a(n) = 625*n + 1.

The programs for A158383, the canonical program `A158383.P9284509564524839963` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158383 has offset 1).

The definition of A158383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158383.P9284509564524839963

`(n+1)*625+1`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158383

/-- `(n+1)*625+1` -/
def P9284509564524839963.Spec : Prop :=
  ∀ n, (P9284509564524839963.a n : ℤ) = A158383 (n + 1)

theorem P9284509564524839963.correct : P9284509564524839963.Spec := by
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

The programs for A158385, the canonical program `A158385.P7428301847300349163` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158385 has offset 1).

The definition of A158385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158385.P7428301847300349163

`∑[Δ[(26*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158385

/-- `∑[Δ[(26*n)²]+2]` -/
def P7428301847300349163.Spec : Prop :=
  ∀ n, P7428301847300349163.a n = A158385 (n + 1)

theorem P7428301847300349163.correct : P7428301847300349163.Spec := by
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

end A158385

/-! ## A158385.P4845528782821334849

`A158392(n+1)+4*(n+1)`
-/

namespace A158385.P4845528782821334849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158392 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158385.P4845528782821334849

namespace A158385

/-- `A158392(n+1)+4*(n+1)` -/
def P4845528782821334849.Spec : Prop :=
  ∀ n, P4845528782821334849.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P11193476771571849202

`A005843(n+1)+A252994(n+1)²`
-/

namespace A158385.P11193476771571849202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A252994 (n + 1) ^ 2

end

end A158385.P11193476771571849202

namespace A158385

/-- `A005843(n+1)+A252994(n+1)²` -/
def P11193476771571849202.Spec : Prop :=
  ∀ n, P11193476771571849202.a n = A158385 (n + 1)

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

/-! ## A158385.P12489349956204866411

`A158220(2*(n+1))-2*(n+1)`
-/

namespace A158385.P12489349956204866411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158220 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

end

end A158385.P12489349956204866411

namespace A158385

/-- `A158220(2*(n+1))-2*(n+1)` -/
def P12489349956204866411.Spec : Prop :=
  ∀ n, P12489349956204866411.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P17500306393186336858

`A157998(2*(n+1))+4*(n+1)`
-/

namespace A158385.P17500306393186336858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157998 (2 * (n + 1)) + (4 * (n + 1) : ℤ)

end

end A158385.P17500306393186336858

namespace A158385

/-- `A157998(2*(n+1))+4*(n+1)` -/
def P17500306393186336858.Spec : Prop :=
  ∀ n, P17500306393186336858.a n = A158385 (n + 1)

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

/-! ## A158385.P3328056237914036208

`A156635(2*(n+1))+A154377(2*(n+1))`
-/

namespace A158385.P3328056237914036208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156635 (2 * (n + 1)) + A154377 (2 * (n + 1))

end

end A158385.P3328056237914036208

namespace A158385

/-- `A156635(2*(n+1))+A154377(2*(n+1))` -/
def P3328056237914036208.Spec : Prop :=
  ∀ n, P3328056237914036208.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P3704082409302758464

`A158132(2*(n+1))+A157514(2*(n+1))`
-/

namespace A158385.P3704082409302758464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158132 (2 * (n + 1)) + A157514 (2 * (n + 1))

end

end A158385.P3704082409302758464

namespace A158385

/-- `A158132(2*(n+1))+A157514(2*(n+1))` -/
def P3704082409302758464.Spec : Prop :=
  ∀ n, P3704082409302758464.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P15777892000707460338

`A005843(n+1)+A310504(A008706(n+1))²`
-/

namespace A158385.P15777892000707460338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A310504 (A008706 (n + 1)).toNat ^ 2

end

end A158385.P15777892000707460338

namespace A158385

/-- `A005843(n+1)+A310504(A008706(n+1))²` -/
def P15777892000707460338.Spec : Prop :=
  ∀ n, P15777892000707460338.a n = A158385 (n + 1)

end A158385

/-! ## A158385.P14661100765004729973

`A053755(A008595(n+1))+2*n+1`
-/

namespace A158385.P14661100765004729973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A008595 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A158385.P14661100765004729973

namespace A158385

/-- `A053755(A008595(n+1))+2*n+1` -/
def P14661100765004729973.Spec : Prop :=
  ∀ n, P14661100765004729973.a n = A158385 (n + 1)

end A158385

/-!
# A158386: a(n) = 676*n + 1.

The programs for A158386, the canonical program `A158386.P6411551101232183037` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158386 has offset 1).

The definition of A158386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158386.P6411551101232183037

`676+a(n-1)` with `a(0)=677`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158386

/-- `676+a(n-1)` -/
def P6411551101232183037.Spec : Prop :=
  ∀ n, (P6411551101232183037.a n : ℤ) = A158386 (n + 1)

theorem P6411551101232183037.correct : P6411551101232183037.Spec := by
  intro n
  simp only [A158386, Nat.add_sub_cancel]

end A158386

/-!
# A158387: a(n) = -1 if n is a square, 1 if n is not a square.

The programs for A158387, the canonical program `A158387.P7105808994487481565` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158387 has offset 1).

The definition of A158387 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A158387.P7105808994487481565

`(-1)^A000005(n+1)`

The canonical program, it is in `Seq.B003.C002`.
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

`∏{d}[n+1, floor(-1/#)]`
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

/-- `∏{d}[n+1, floor(-1/#)]` -/
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

/-! ## A158387.P11517691946428837606

`round(∏{d}[n+1, -(n+1)/#²])`
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

/-- `round(∏{d}[n+1, -(n+1)/#²])` -/
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

/-! ## A158387.P1375137237994131224

`1-A214304(2*(n+1))`
-/

namespace A158387.P1375137237994131224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A214304 (2 * (n + 1))

end

end A158387.P1375137237994131224

namespace A158387

/-- `1-A214304(2*(n+1))` -/
def P1375137237994131224.Spec : Prop :=
  ∀ n, P1375137237994131224.a n = A158387 (n + 1)

end A158387

/-!
# A158388: -1 followed by infinitely many 1's.

The programs for A158388, the canonical program `A158388.P7320455639458137227` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158388 has offset 0).

The definition of A158388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158388.P7320455639458137227

`round(cos(acot(n)²))`

The canonical program, it is in `Seq.B000.C020`.
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

The programs for A158392, the canonical program `A158392.P11070874348586422427` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158392 has offset 1).

The definition of A158392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158392.P11070874348586422427

`∑[Δ[(26*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158392

/-- `∑[Δ[(26*n)²]-2]` -/
def P11070874348586422427.Spec : Prop :=
  ∀ n, P11070874348586422427.a n = A158392 (n + 1)

theorem P11070874348586422427.correct : P11070874348586422427.Spec := by
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

end A158392

/-! ## A158392.P17035204297404442614

`A158385(n+1)-4*(n+1)`
-/

namespace A158392.P17035204297404442614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158385 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158392.P17035204297404442614

namespace A158392

/-- `A158385(n+1)-4*(n+1)` -/
def P17035204297404442614.Spec : Prop :=
  ∀ n, P17035204297404442614.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P15024339553384546823

`A252994(n+1)²-A005843(n+1)`
-/

namespace A158392.P15024339553384546823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252994 (n + 1) ^ 2 - A005843 (n + 1)

end

end A158392.P15024339553384546823

namespace A158392

/-- `A252994(n+1)²-A005843(n+1)` -/
def P15024339553384546823.Spec : Prop :=
  ∀ n, P15024339553384546823.a n = A158392 (n + 1)

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

/-! ## A158392.P8771302425621768970

`A158550(2*(n+1))+11-2*n`
-/

namespace A158392.P8771302425621768970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158550 (2 * (n + 1)) + (11 - (2 * n : ℤ))

end

end A158392.P8771302425621768970

namespace A158392

/-- `A158550(2*(n+1))+11-2*n` -/
def P8771302425621768970.Spec : Prop :=
  ∀ n, P8771302425621768970.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P6085365720632868497

`n+2+A158218(2*(n+1))+n`
-/

namespace A158392.P6085365720632868497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A158218 (2 * (n + 1)) + (n : ℤ))

end

end A158392.P6085365720632868497

namespace A158392

/-- `n+2+A158218(2*(n+1))+n` -/
def P6085365720632868497.Spec : Prop :=
  ∀ n, P6085365720632868497.a n = A158392 (n + 1)

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

/-! ## A158392.P12839602077274676130

`A173089(2*(n+1))+A158135(2*(n+1))`
-/

namespace A158392.P12839602077274676130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173089 (2 * (n + 1)) + A158135 (2 * (n + 1))

end

end A158392.P12839602077274676130

namespace A158392

/-- `A173089(2*(n+1))+A158135(2*(n+1))` -/
def P12839602077274676130.Spec : Prop :=
  ∀ n, P12839602077274676130.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P7938618794660351976

`A173275(2*(n+1))+2*A001478(2*(n+1))`
-/

namespace A158392.P7938618794660351976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173275 (2 * (n + 1)) + 2 * A001478 (2 * (n + 1))

end

end A158392.P7938618794660351976

namespace A158392

/-- `A173275(2*(n+1))+2*A001478(2*(n+1))` -/
def P7938618794660351976.Spec : Prop :=
  ∀ n, P7938618794660351976.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P10243020680153044700

`A173275(2*(n+1))+A028387(2*n)-A028387(2*n+1)`
-/

namespace A158392.P10243020680153044700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173275 (2 * (n + 1)) + (A028387 (2 * n) - A028387 (2 * n + 1))

end

end A158392.P10243020680153044700

namespace A158392

/-- `A173275(2*(n+1))+A028387(2*n)-A028387(2*n+1)` -/
def P10243020680153044700.Spec : Prop :=
  ∀ n, P10243020680153044700.a n = A158392 (n + 1)

end A158392

/-! ## A158392.P3598141287448096819

`A310504(A008706(n+1))²-A005843(n+1)`
-/

namespace A158392.P3598141287448096819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310504 (A008706 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158392.P3598141287448096819

namespace A158392

/-- `A310504(A008706(n+1))²-A005843(n+1)` -/
def P3598141287448096819.Spec : Prop :=
  ∀ n, P3598141287448096819.a n = A158392 (n + 1)

end A158392

/-!
# A158393: a(n) = 676*n - 1.

The programs for A158393, the canonical program `A158393.P12142860498347770119` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158393 has offset 1).

The definition of A158393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158393.P12142860498347770119

`676+a(n-1)` with `a(0)=675`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158393

/-- `676+a(n-1)` -/
def P12142860498347770119.Spec : Prop :=
  ∀ n, (P12142860498347770119.a n : ℤ) = A158393 (n + 1)

theorem P12142860498347770119.correct : P12142860498347770119.Spec := by
  intro n
  simp only [A158393, Nat.add_sub_cancel]

end A158393

/-!
# A158394: a(n) = 729*n^2 - 2*n.

The programs for A158394, the canonical program `A158394.P17715600391575224354` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158394 has offset 1).

The definition of A158394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158394.P17715600391575224354

`∑[Δ[(27*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158394

/-- `∑[Δ[(27*n)²]-2]` -/
def P17715600391575224354.Spec : Prop :=
  ∀ n, P17715600391575224354.a n = A158394 (n + 1)

theorem P17715600391575224354.correct : P17715600391575224354.Spec := by
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

end A158394

/-! ## A158394.P7639029927686116459

`A158396(n+1)-4*(n+1)`
-/

namespace A158394.P7639029927686116459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158396 (n + 1) - (4 * (n + 1) : ℤ)

end

end A158394.P7639029927686116459

namespace A158394

/-- `A158396(n+1)-4*(n+1)` -/
def P7639029927686116459.Spec : Prop :=
  ∀ n, P7639029927686116459.a n = A158394 (n + 1)

end A158394

/-! ## A158394.P17629111338594681254

`A305548(n+1)²-2*(n+1)`
-/

namespace A158394.P17629111338594681254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158394.P17629111338594681254

namespace A158394

/-- `A305548(n+1)²-2*(n+1)` -/
def P17629111338594681254.Spec : Prop :=
  ∀ n, P17629111338594681254.a n = A158394 (n + 1)

end A158394

/-! ## A158394.P15186852521185037662

`A305548(n+1)*A305548(n+1)-A005843(n+1)`
-/

namespace A158394.P15186852521185037662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305548 (n + 1) * A305548 (n + 1) - A005843 (n + 1)

end

end A158394.P15186852521185037662

namespace A158394

/-- `A305548(n+1)*A305548(n+1)-A005843(n+1)` -/
def P15186852521185037662.Spec : Prop :=
  ∀ n, P15186852521185037662.a n = A158394 (n + 1)

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

/-! ## A158394.P7206170525708461247

`A157953(3*(n+1))+n+1`
-/

namespace A158394.P7206170525708461247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157953 (3 * (n + 1)) + (n + 1 : ℤ)

end

end A158394.P7206170525708461247

namespace A158394

/-- `A157953(3*(n+1))+n+1` -/
def P7206170525708461247.Spec : Prop :=
  ∀ n, P7206170525708461247.a n = A158394 (n + 1)

end A158394

/-! ## A158394.P18283000278816573296

`A313295(A008706(n+1))²-A005843(n+1)`
-/

namespace A158394.P18283000278816573296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313295 (A008706 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158394.P18283000278816573296

namespace A158394

/-- `A313295(A008706(n+1))²-A005843(n+1)` -/
def P18283000278816573296.Spec : Prop :=
  ∀ n, P18283000278816573296.a n = A158394 (n + 1)

end A158394

/-!
# A158395: a(n) = 729*n - 1.

The programs for A158395, the canonical program `A158395.P15284222088158375099` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158395 has offset 1).

The definition of A158395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158395.P15284222088158375099

`728+n*729`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158395

/-- `728+n*729` -/
def P15284222088158375099.Spec : Prop :=
  ∀ n, (P15284222088158375099.a n : ℤ) = A158395 (n + 1)

theorem P15284222088158375099.correct : P15284222088158375099.Spec := by
  intro n
  simp only [A158395, Nat.add_sub_cancel]

end A158395

/-!
# A158396: a(n) = 729*n^2 + 2*n.

The programs for A158396, the canonical program `A158396.P9883853651342978063` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158396 has offset 1).

The definition of A158396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158396.P9883853651342978063

`∑[Δ[(27*n)²]+2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158396

/-- `∑[Δ[(27*n)²]+2]` -/
def P9883853651342978063.Spec : Prop :=
  ∀ n, P9883853651342978063.a n = A158396 (n + 1)

theorem P9883853651342978063.correct : P9883853651342978063.Spec := by
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

/-! ## A158396.P15372640521265116788

`A158394(n+1)+4*(n+1)`
-/

namespace A158396.P15372640521265116788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158394 (n + 1) + (4 * (n + 1) : ℤ)

end

end A158396.P15372640521265116788

namespace A158396

/-- `A158394(n+1)+4*(n+1)` -/
def P15372640521265116788.Spec : Prop :=
  ∀ n, P15372640521265116788.a n = A158396 (n + 1)

end A158396

/-! ## A158396.P10574375450191677711

`2*(n+1)+A305548(n+1)²`
-/

namespace A158396.P10574375450191677711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + A305548 (n + 1) ^ 2

end

end A158396.P10574375450191677711

namespace A158396

/-- `2*(n+1)+A305548(n+1)²` -/
def P10574375450191677711.Spec : Prop :=
  ∀ n, P10574375450191677711.a n = A158396 (n + 1)

end A158396

/-! ## A158396.P7962977172278326243

`A005843(n+1)+A305548(n+1)*A305548(n+1)`
-/

namespace A158396.P7962977172278326243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A305548 (n + 1) * A305548 (n + 1)

end

end A158396.P7962977172278326243

namespace A158396

/-- `A005843(n+1)+A305548(n+1)*A305548(n+1)` -/
def P7962977172278326243.Spec : Prop :=
  ∀ n, P7962977172278326243.a n = A158396 (n + 1)

end A158396

/-! ## A158396.P1421795519892231548

`A247792(A008591(n+1))+2*n+1`
-/

namespace A158396.P1421795519892231548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247792 (A008591 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A158396.P1421795519892231548

namespace A158396

/-- `A247792(A008591(n+1))+2*n+1` -/
def P1421795519892231548.Spec : Prop :=
  ∀ n, P1421795519892231548.a n = A158396 (n + 1)

end A158396

/-! ## A158396.P6406386798843201093

`A005843(n+1)+A313295(A008706(n+1))²`
-/

namespace A158396.P6406386798843201093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A313295 (A008706 (n + 1)).toNat ^ 2

end

end A158396.P6406386798843201093

namespace A158396

/-- `A005843(n+1)+A313295(A008706(n+1))²` -/
def P6406386798843201093.Spec : Prop :=
  ∀ n, P6406386798843201093.a n = A158396 (n + 1)

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

/-!
# A158397: a(n) = 729*n + 1.

The programs for A158397, the canonical program `A158397.P2761327307079473725` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158397 has offset 1).

The definition of A158397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158397.P2761327307079473725

`729+a(n-1)` with `a(0)=730`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158397

/-- `729+a(n-1)` -/
def P2761327307079473725.Spec : Prop :=
  ∀ n, (P2761327307079473725.a n : ℤ) = A158397 (n + 1)

theorem P2761327307079473725.correct : P2761327307079473725.Spec := by
  intro n
  simp only [A158397, Nat.add_sub_cancel]

end A158397

/-!
# A158398: a(n) = 784*n^2 - 2*n.

The programs for A158398, the canonical program `A158398.P7187171840063261680` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158398 has offset 1).

The definition of A158398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158398.P7187171840063261680

`∑[Δ[(28*n)²]-2]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158398

/-- `∑[Δ[(28*n)²]-2]` -/
def P7187171840063261680.Spec : Prop :=
  ∀ n, P7187171840063261680.a n = A158398 (n + 1)

theorem P7187171840063261680.correct : P7187171840063261680.Spec := by
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

/-! ## A158398.P11659024448754484158

`A135628(n+1)²-2*(n+1)`
-/

namespace A158398.P11659024448754484158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (n + 1) ^ 2 - (2 * (n + 1) : ℤ)

end

end A158398.P11659024448754484158

namespace A158398

/-- `A135628(n+1)²-2*(n+1)` -/
def P11659024448754484158.Spec : Prop :=
  ∀ n, P11659024448754484158.a n = A158398 (n + 1)

end A158398

/-! ## A158398.P8446610556011715688

`A135628(n+1)*A135628(n+1)-A005843(n+1)`
-/

namespace A158398.P8446610556011715688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135628 (n + 1) * A135628 (n + 1) - A005843 (n + 1)

end

end A158398.P8446610556011715688

namespace A158398

/-- `A135628(n+1)*A135628(n+1)-A005843(n+1)` -/
def P8446610556011715688.Spec : Prop :=
  ∀ n, P8446610556011715688.a n = A158398 (n + 1)

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

/-! ## A158398.P15462705699538942736

`A158224(2*(n+1))+2*(n+1)`
-/

namespace A158398.P15462705699538942736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158224 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A158398.P15462705699538942736

namespace A158398

/-- `A158224(2*(n+1))+2*(n+1)` -/
def P15462705699538942736.Spec : Prop :=
  ∀ n, P15462705699538942736.a n = A158398 (n + 1)

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

/-! ## A158398.P10552407519890768046

`A158553(2*(n+1))+2*(6-n)`
-/

namespace A158398.P10552407519890768046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158553 (2 * (n + 1)) + 2 * (6 - (n : ℤ))

end

end A158398.P10552407519890768046

namespace A158398

/-- `A158553(2*(n+1))+2*(6-n)` -/
def P10552407519890768046.Spec : Prop :=
  ∀ n, P10552407519890768046.a n = A158398 (n + 1)

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

/-! ## A158398.P4184122956284080763

`A310532(A008706(n+1))²-A005843(n+1)`
-/

namespace A158398.P4184122956284080763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 (A008706 (n + 1)).toNat ^ 2 - A005843 (n + 1)

end

end A158398.P4184122956284080763

namespace A158398

/-- `A310532(A008706(n+1))²-A005843(n+1)` -/
def P4184122956284080763.Spec : Prop :=
  ∀ n, P4184122956284080763.a n = A158398 (n + 1)

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

The programs for A158399, the canonical program `A158399.P4044410163864917732` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A158399 has offset 1).

The definition of A158399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A158399.P4044410163864917732

`784+a(n-1)` with `a(0)=783`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A158399

/-- `784+a(n-1)` -/
def P4044410163864917732.Spec : Prop :=
  ∀ n, (P4044410163864917732.a n : ℤ) = A158399 (n + 1)

theorem P4044410163864917732.correct : P4044410163864917732.Spec := by
  intro n
  simp only [A158399, Nat.add_sub_cancel]

end A158399

