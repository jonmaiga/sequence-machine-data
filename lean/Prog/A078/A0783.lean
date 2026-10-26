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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
# A078303: Generalized Fermat numbers: 6^(2^n) + 1, n >= 0.

The programs for A078303, the canonical program `A078303.P10000313471864119574` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078303 has offset 0).

The definition of A078303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6^2^n+1` (program `A078303.P10000313471864119574`, by `A078303.P10000313471864119574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078303.P10000313471864119574

`6^2^n+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078303

/-- `6^2^n+1` -/
def P10000313471864119574.Spec : Prop :=
  ∀ n, (P10000313471864119574.a n : ℤ) = A078303 n

theorem P10000313471864119574.correct : P10000313471864119574.Spec := by
  intro n
  simp only [A078303]

end A078303

/-! ## A078303.P18142400509320807824

`or(1, 6^2^n)`
-/

namespace A078303.P18142400509320807824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 ^ 2 ^ n)

end

end A078303.P18142400509320807824

namespace A078303

/-- `or(1, 6^2^n)` -/
def P18142400509320807824.Spec : Prop :=
  ∀ n, (P18142400509320807824.a n : ℤ) = A078303 n

end A078303

/-! ## A078303.P2955260254882262573

`xor(1, 6^2^n)`
-/

namespace A078303.P2955260254882262573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 ^ 2 ^ n)

end

end A078303.P2955260254882262573

namespace A078303

/-- `xor(1, 6^2^n)` -/
def P2955260254882262573.Spec : Prop :=
  ∀ n, (P2955260254882262573.a n : ℤ) = A078303 n

end A078303

/-! ## A078303.P3608245830236126011

`Δ[∑[a(n-1)²]+n]` with `a(0)=0, a(1)=6`
-/

namespace A078303.P3608245830236126011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078303.P3608245830236126011

namespace A078303

/-- `Δ[∑[a(n-1)²]+n]` -/
def P3608245830236126011.Spec : Prop :=
  ∀ n, P3608245830236126011.a n = A078303 n

end A078303

/-!
# A078304: Generalized Fermat numbers: 7^(2^n)+1, n >= 0.

The programs for A078304, the canonical program `A078304.P3959046593858587199` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078304 has offset 0).

The definition of A078304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^2^n+1` (program `A078304.P3959046593858587199`, by `A078304.P3959046593858587199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078304.P3959046593858587199

`7^2^n+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078304

/-- `7^2^n+1` -/
def P3959046593858587199.Spec : Prop :=
  ∀ n, (P3959046593858587199.a n : ℤ) = A078304 n

theorem P3959046593858587199.correct : P3959046593858587199.Spec := by
  intro n
  simp only [A078304]

end A078304

/-! ## A078304.P1482613278941809891

`xor(3, (1-a(n-1))²)` with `a(0)=8`
-/

namespace A078304.P1482613278941809891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  Int.xor 3 ((1 - a (n - 1)) ^ 2)

end

end A078304.P1482613278941809891

namespace A078304

/-- `xor(3, (1-a(n-1))²)` -/
def P1482613278941809891.Spec : Prop :=
  ∀ n, P1482613278941809891.a n = A078304 n

end A078304

/-! ## A078304.P549565703756476813

`Δ[∑[a(n-1)²]+n]` with `a(0)=0, a(1)=7`
-/

namespace A078304.P549565703756476813
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f2 =>
  f2 (n - 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A078304.P549565703756476813

namespace A078304

/-- `Δ[∑[a(n-1)²]+n]` -/
def P549565703756476813.Spec : Prop :=
  ∀ n, P549565703756476813.a n = A078304 n

end A078304

/-!
# A078306: a(n) = Sum_{d divides n} (-1)^(n/d+1)*d^2.

The programs for A078306, the canonical program `A078306.P7255771743428390491` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078306 has offset 1).

The definition of A078306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078306.P9853841968732035635

`∑{d}[n+1, lcm(2, #²)/2]`
-/

namespace A078306.P9853841968732035635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 (d ^ 2) : ℚ) / 2

end

end A078306.P9853841968732035635

namespace A078306

/-- `∑{d}[n+1, lcm(2, #²)/2]` -/
def P9853841968732035635.Spec : Prop :=
  ∀ n, P9853841968732035635.a n = (A078306 (n + 1) : ℚ)

end A078306

/-! ## A078306.P16856135692587460848

`∑{d}[n+1, #²/gcd(2, #)]`
-/

namespace A078306.P16856135692587460848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d ^ 2 : ℚ) / (Nat.gcd 2 d : ℚ)

end

end A078306.P16856135692587460848

namespace A078306

/-- `∑{d}[n+1, #²/gcd(2, #)]` -/
def P16856135692587460848.Spec : Prop :=
  ∀ n, P16856135692587460848.a n = (A078306 (n + 1) : ℚ)

end A078306

/-! ## A078306.P12803990549269754453

`-∑{d}[n+1, (-1)^((n+1)/#)*#²]`
-/

namespace A078306.P12803990549269754453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (-1 : ℝ) ^ ((n + 1 : ℚ) / (d : ℚ) : ℝ) * (d ^ 2 : ℝ))

end

end A078306.P12803990549269754453

namespace A078306

/-- `-∑{d}[n+1, (-1)^((n+1)/#)*#²]` -/
def P12803990549269754453.Spec : Prop :=
  ∀ n, P12803990549269754453.a n = (A078306 (n + 1) : ℝ)

end A078306

/-! ## A078306.P7255771743428390491

`∑{d}[n+1, #*A026741(#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078306

/-- `∑{d}[n+1, #*A026741(#)]` -/
def P7255771743428390491.Spec : Prop :=
  ∀ n, P7255771743428390491.a n = A078306 (n + 1)

theorem P7255771743428390491.correct : P7255771743428390491.Spec := by
  intro n
  simp only [A078306, Nat.add_sub_cancel]

end A078306

/-! ## A078306.P4706632633989647181

`∑{d}[n+1, #*A078747((n+1)/#)]`
-/

namespace A078306.P4706632633989647181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A078747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P4706632633989647181

namespace A078306

/-- `∑{d}[n+1, #*A078747((n+1)/#)]` -/
def P4706632633989647181.Spec : Prop :=
  ∀ n, P4706632633989647181.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P887735051380593665

`A050999(n+1)*A276391(n+1)`
-/

namespace A078306.P887735051380593665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) * A276391 (n + 1)

end

end A078306.P887735051380593665

namespace A078306

/-- `A050999(n+1)*A276391(n+1)` -/
def P887735051380593665.Spec : Prop :=
  ∀ n, P887735051380593665.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P10744396130204969955

`(A050999(n+1)+A001157(n+1))/2`
-/

namespace A078306.P10744396130204969955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050999 (n + 1) + A001157 (n + 1) : ℚ) / 2

end

end A078306.P10744396130204969955

namespace A078306

/-- `(A050999(n+1)+A001157(n+1))/2` -/
def P10744396130204969955.Spec : Prop :=
  ∀ n, P10744396130204969955.a n = (A078306 (n + 1) : ℚ)

end A078306

/-! ## A078306.P12850427779049067013

`2*A076577(n+1)-A001157(n+1)`
-/

namespace A078306.P12850427779049067013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076577 (n + 1) - A001157 (n + 1)

end

end A078306.P12850427779049067013

namespace A078306

/-- `2*A076577(n+1)-A001157(n+1)` -/
def P12850427779049067013.Spec : Prop :=
  ∀ n, P12850427779049067013.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P3875543882505029840

`∑{d}[n+1, A000593(#)*A002618((n+1)/#)]`
-/

namespace A078306.P3875543882505029840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000593 d * A002618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P3875543882505029840

namespace A078306

/-- `∑{d}[n+1, A000593(#)*A002618((n+1)/#)]` -/
def P3875543882505029840.Spec : Prop :=
  ∀ n, P3875543882505029840.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P5065500980620330066

`∑{d}[n+1, A007434(#)*A048272((n+1)/#)]`
-/

namespace A078306.P5065500980620330066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P5065500980620330066

namespace A078306

/-- `∑{d}[n+1, A007434(#)*A048272((n+1)/#)]` -/
def P5065500980620330066.Spec : Prop :=
  ∀ n, P5065500980620330066.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P15290985956103830768

`∑{d}[n+1, A000082(#)*A118209((n+1)/#)]`
-/

namespace A078306.P15290985956103830768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A118209 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P15290985956103830768

namespace A078306

/-- `∑{d}[n+1, A000082(#)*A118209((n+1)/#)]` -/
def P15290985956103830768.Spec : Prop :=
  ∀ n, P15290985956103830768.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P15085940561925092925

`∑{d}[n+1, A064987(#)*A117212((n+1)/#)]`
-/

namespace A078306.P15085940561925092925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064987 d * A117212 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P15085940561925092925

namespace A078306

/-- `∑{d}[n+1, A064987(#)*A117212((n+1)/#)]` -/
def P15085940561925092925.Spec : Prop :=
  ∀ n, P15085940561925092925.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P15493091309480263233

`∑{d}[n+1, A057660(#)*A193356((n+1)/#)]`
-/

namespace A078306.P15493091309480263233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P15493091309480263233

namespace A078306

/-- `∑{d}[n+1, A057660(#)*A193356((n+1)/#)]` -/
def P15493091309480263233.Spec : Prop :=
  ∀ n, P15493091309480263233.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P9185371250433151973

`∑{d}[n+1, A023900(#)*A228274((n+1)/#)]`
-/

namespace A078306.P9185371250433151973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A228274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P9185371250433151973

namespace A078306

/-- `∑{d}[n+1, A023900(#)*A228274((n+1)/#)]` -/
def P9185371250433151973.Spec : Prop :=
  ∀ n, P9185371250433151973.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P2569864798773946332

`∑{d}[n+1, A055615(#)*A288418((n+1)/#)]`
-/

namespace A078306.P2569864798773946332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A288418 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P2569864798773946332

namespace A078306

/-- `∑{d}[n+1, A055615(#)*A288418((n+1)/#)]` -/
def P2569864798773946332.Spec : Prop :=
  ∀ n, P2569864798773946332.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P836737976300316770

`∑{d}[n+1, A063445(#)*A288417((n+1)/#)]`
-/

namespace A078306.P836737976300316770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A288417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P836737976300316770

namespace A078306

/-- `∑{d}[n+1, A063445(#)*A288417((n+1)/#)]` -/
def P836737976300316770.Spec : Prop :=
  ∀ n, P836737976300316770.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P5239574529467923402

`∑{d}[n+1, A007433(#)*A361019((n+1)/#)]`
-/

namespace A078306.P5239574529467923402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007433 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P5239574529467923402

namespace A078306

/-- `∑{d}[n+1, A007433(#)*A361019((n+1)/#)]` -/
def P5239574529467923402.Spec : Prop :=
  ∀ n, P5239574529467923402.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P612395883614672419

`∑{d}[n+1, A088705(#)*A308422((n+1)/#)]`
-/

namespace A078306.P612395883614672419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A308422 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P612395883614672419

namespace A078306

/-- `∑{d}[n+1, A088705(#)*A308422((n+1)/#)]` -/
def P612395883614672419.Spec : Prop :=
  ∀ n, P612395883614672419.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P14365868130140452304

`∑{d}[n+1, A254520(#)*A300853((n+1)/#)]`
-/

namespace A078306.P14365868130140452304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254520 d * A300853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P14365868130140452304

namespace A078306

/-- `∑{d}[n+1, A254520(#)*A300853((n+1)/#)]` -/
def P14365868130140452304.Spec : Prop :=
  ∀ n, P14365868130140452304.a n = A078306 (n + 1)

end A078306

/-! ## A078306.P3404336471965743980

`∑{d}[n+1, A230074(#)*A328407((n+1)/#)]`
-/

namespace A078306.P3404336471965743980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A328407 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078306.P3404336471965743980

namespace A078306

/-- `∑{d}[n+1, A230074(#)*A328407((n+1)/#)]` -/
def P3404336471965743980.Spec : Prop :=
  ∀ n, P3404336471965743980.a n = A078306 (n + 1)

end A078306

/-!
# A078307: a(n) = Sum_{d divides n} (-1)^(n/d+1)*d^3.

The programs for A078307, the canonical program `A078307.P15856725681295439327` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078307 has offset 1).

The definition of A078307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078307.P15856725681295439327

`∑{d}[n+1, A309337(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078307

/-- `∑{d}[n+1, A309337(#)]` -/
def P15856725681295439327.Spec : Prop :=
  ∀ n, P15856725681295439327.a n = A078307 (n + 1)

theorem P15856725681295439327.correct : P15856725681295439327.Spec := by
  intro n
  simp only [A078307, Nat.add_sub_cancel]

end A078307

/-! ## A078307.P15614880473326040623

`∑{d}[n+1, #*A308422(#)]`
-/

namespace A078307.P15614880473326040623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A308422 d

end

end A078307.P15614880473326040623

namespace A078307

/-- `∑{d}[n+1, #*A308422(#)]` -/
def P15614880473326040623.Spec : Prop :=
  ∀ n, P15614880473326040623.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P1872558606919862282

`∑{d}[n+1, A000056(#)*A000593((n+1)/#)]`
-/

namespace A078307.P1872558606919862282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P1872558606919862282

namespace A078307

/-- `∑{d}[n+1, A000056(#)*A000593((n+1)/#)]` -/
def P1872558606919862282.Spec : Prop :=
  ∀ n, P1872558606919862282.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P5611402449322970008

`∑{d}[n+1, A048272(#)*A059376((n+1)/#)]`
-/

namespace A078307.P5611402449322970008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A059376 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P5611402449322970008

namespace A078307

/-- `∑{d}[n+1, A048272(#)*A059376((n+1)/#)]` -/
def P5611402449322970008.Spec : Prop :=
  ∀ n, P5611402449322970008.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P495656993410504284

`∑{d}[n+1, A053191(#)*A078306((n+1)/#)]`
-/

namespace A078307.P495656993410504284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053191 d * A078306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P495656993410504284

namespace A078307

/-- `∑{d}[n+1, A053191(#)*A078306((n+1)/#)]` -/
def P495656993410504284.Spec : Prop :=
  ∀ n, P495656993410504284.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P4331741499956262657

`∑{d}[n+1, A115607(#)*A208895((n+1)/#)]`
-/

namespace A078307.P4331741499956262657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A115607 d * A208895 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P4331741499956262657

namespace A078307

/-- `∑{d}[n+1, A115607(#)*A208895((n+1)/#)]` -/
def P4331741499956262657.Spec : Prop :=
  ∀ n, P4331741499956262657.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P9887112963373485369

`∑{d}[n+1, A055615(#)*A288419((n+1)/#)]`
-/

namespace A078307.P9887112963373485369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A288419 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P9887112963373485369

namespace A078307

/-- `∑{d}[n+1, A055615(#)*A288419((n+1)/#)]` -/
def P9887112963373485369.Spec : Prop :=
  ∀ n, P9887112963373485369.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P7611828082529533524

`∑{d}[n+1, A088705(#)*A309335((n+1)/#)]`
-/

namespace A078307.P7611828082529533524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A088705 d * A309335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P7611828082529533524

namespace A078307

/-- `∑{d}[n+1, A088705(#)*A309335((n+1)/#)]` -/
def P7611828082529533524.Spec : Prop :=
  ∀ n, P7611828082529533524.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P16187780218151888314

`∑{d}[n+1, A117212(#)*A328259((n+1)/#)]`
-/

namespace A078307.P16187780218151888314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A328259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P16187780218151888314

namespace A078307

/-- `∑{d}[n+1, A117212(#)*A328259((n+1)/#)]` -/
def P16187780218151888314.Spec : Prop :=
  ∀ n, P16187780218151888314.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P17780855815791051255

`∑{d}[n+1, A193356(#)*A350156((n+1)/#)]`
-/

namespace A078307.P17780855815791051255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A350156 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P17780855815791051255

namespace A078307

/-- `∑{d}[n+1, A193356(#)*A350156((n+1)/#)]` -/
def P17780855815791051255.Spec : Prop :=
  ∀ n, P17780855815791051255.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P13566266165283683775

`∑{d}[n+1, A230074(#)*A328408((n+1)/#)]`
-/

namespace A078307.P13566266165283683775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A230074 d * A328408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P13566266165283683775

namespace A078307

/-- `∑{d}[n+1, A230074(#)*A328408((n+1)/#)]` -/
def P13566266165283683775.Spec : Prop :=
  ∀ n, P13566266165283683775.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P7721532052933792344

`∑{d}[n+1, A321140(#)*A361019((n+1)/#)]`
-/

namespace A078307.P7721532052933792344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321140 d * A361019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P7721532052933792344

namespace A078307

/-- `∑{d}[n+1, A321140(#)*A361019((n+1)/#)]` -/
def P7721532052933792344.Spec : Prop :=
  ∀ n, P7721532052933792344.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P1767013233624015204

`A007331(n+1)+A007331(n+1)-A001158(n+1)`
-/

namespace A078307.P1767013233624015204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007331 (n + 1) + (A007331 (n + 1) - A001158 (n + 1))

end

end A078307.P1767013233624015204

namespace A078307

/-- `A007331(n+1)+A007331(n+1)-A001158(n+1)` -/
def P1767013233624015204.Spec : Prop :=
  ∀ n, P1767013233624015204.a n = A078307 (n + 1)

end A078307

/-! ## A078307.P1680564510230930229

`∑{d}[n+1, A254521(#)*A304906((n+1)/#)]`
-/

namespace A078307.P1680564510230930229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254521 d * A304906 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078307.P1680564510230930229

namespace A078307

/-- `∑{d}[n+1, A254521(#)*A304906((n+1)/#)]` -/
def P1680564510230930229.Spec : Prop :=
  ∀ n, P1680564510230930229.a n = A078307 (n + 1)

end A078307

/-!
# A078308: a(n) = Sum_{d divides n} d^(n/d + 1).

The programs for A078308, the canonical program `A078308.P15532551831241798990` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078308 has offset 1).

The definition of A078308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078308.P15532551831241798990

`∑{d}[n+1, #^ceil((n+2)/#)]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078308

/-- `∑{d}[n+1, #^ceil((n+2)/#)]` -/
def P15532551831241798990.Spec : Prop :=
  ∀ n, P15532551831241798990.a n = (A078308 (n + 1) : ℚ)

end A078308

/-! ## A078308.P12977231192602692921

`A308502(∑[n+2])`
-/

namespace A078308.P12977231192602692921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308502 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078308.P12977231192602692921

namespace A078308

/-- `A308502(∑[n+2])` -/
def P12977231192602692921.Spec : Prop :=
  ∀ n, P12977231192602692921.a n = A078308 (n + 1)

end A078308

/-! ## A078308.P2234710888533916425

`A294579(∑[n+2])`
-/

namespace A078308.P2234710888533916425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294579 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078308.P2234710888533916425

namespace A078308

/-- `A294579(∑[n+2])` -/
def P2234710888533916425.Spec : Prop :=
  ∀ n, P2234710888533916425.a n = A078308 (n + 1)

end A078308

/-! ## A078308.P8809217675190411483

`A294579(A000096(n+1))/A000034(2*n)`
-/

namespace A078308.P8809217675190411483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294579 (A000096 (n + 1)).toNat : ℚ) / (A000034 (2 * n) : ℚ)

end

end A078308.P8809217675190411483

namespace A078308

/-- `A294579(A000096(n+1))/A000034(2*n)` -/
def P8809217675190411483.Spec : Prop :=
  ∀ n, P8809217675190411483.a n = (A078308 (n + 1) : ℚ)

end A078308

/-! ## A078308.P6188580161933768976

`A294579(A000096(n+1))^(n/A028310(n))`
-/

namespace A078308.P6188580161933768976
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294579 (A000096 (n + 1)).toNat : ℝ) ^ ((n : ℚ) / (A028310 n : ℚ) : ℝ)

end

end A078308.P6188580161933768976

namespace A078308

/-- `A294579(A000096(n+1))^(n/A028310(n))` -/
def P6188580161933768976.Spec : Prop :=
  ∀ n, P6188580161933768976.a n = (A078308 (n + 1) : ℝ)

end A078308

/-!
# A078309: Numbers that are congruent to {1, 4, 7} mod 10.

The programs for A078309, the canonical program `A078309.P6453942409018077993` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078309 has offset 1).

The definition of A078309 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078309.P6453942409018077993

`a(n-3)+10` with `a(0)=1, a(1)=4, a(2)=7`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078309

/-- `a(n-3)+10` -/
def P6453942409018077993.Spec : Prop :=
  ∀ n, (P6453942409018077993.a n : ℤ) = A078309 (n + 1)

theorem P6453942409018077993.correct : P6453942409018077993.Spec := by
  intro n
  simp only [A078309, Nat.add_sub_cancel]

end A078309

/-! ## A078309.P14475259055010321430

`3*(n+1)+floor(n/3)-2`
-/

namespace A078309.P14475259055010321430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) + ⌊(n : ℚ) / 3⌋ - 2

end

end A078309.P14475259055010321430

namespace A078309

/-- `3*(n+1)+floor(n/3)-2` -/
def P14475259055010321430.Spec : Prop :=
  ∀ n, P14475259055010321430.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P8491924321338357824

`(30*(n+1)-24-3*cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A078309.P8491924321338357824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((30 * (n + 1) : ℤ) - 24 : ℝ) - 3 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A078309.P8491924321338357824

namespace A078309

/-- `(30*(n+1)-24-3*cos(2*(n+1)*π/3)+sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P8491924321338357824.Spec : Prop :=
  ∀ n, P8491924321338357824.a n = (A078309 (n + 1) : ℝ)

end A078309

/-! ## A078309.P1368002530963466040

`abs(comp[or(3, n)]+Δ[n²])`
-/

namespace A078309.P1368002530963466040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))|

end

end A078309.P1368002530963466040

namespace A078309

/-- `abs(comp[or(3, n)]+Δ[n²])` -/
def P1368002530963466040.Spec : Prop :=
  ∀ n, P1368002530963466040.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P15807360085996663301

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A078309.P15807360085996663301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078309.P15807360085996663301

namespace A078309

/-- `∑[floor(a(n-3))]` -/
def P15807360085996663301.Spec : Prop :=
  ∀ n, (P15807360085996663301.a n : ℤ) = A078309 (n + 1)

end A078309

/-! ## A078309.P14744414143964689576

`ceil(or(1, 5*2*n)/3)`
-/

namespace A078309.P14744414143964689576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 1 (5 * (2 * n)) : ℚ) / 3⌉

end

end A078309.P14744414143964689576

namespace A078309

/-- `ceil(or(1, 5*2*n)/3)` -/
def P14744414143964689576.Spec : Prop :=
  ∀ n, P14744414143964689576.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P12791603883675890338

`ceil(xor(1, 5*2*n)/3)`
-/

namespace A078309.P12791603883675890338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (5 * (2 * n)) : ℚ) / 3⌉

end

end A078309.P12791603883675890338

namespace A078309

/-- `ceil(xor(1, 5*2*n)/3)` -/
def P12791603883675890338.Spec : Prop :=
  ∀ n, P12791603883675890338.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P4680496808170405077

`∑[a(n-3)%5]` with `a(0)=1, a(1)=3, a(2)=3, a(3)=4`
-/

namespace A078309.P4680496808170405077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 4] fun n f1 =>
  f1 (n - 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078309.P4680496808170405077

namespace A078309

/-- `∑[a(n-3)%5]` -/
def P4680496808170405077.Spec : Prop :=
  ∀ n, (P4680496808170405077.a n : ℤ) = A078309 (n + 1)

end A078309

/-! ## A078309.P17070602802027698377

`∑[7-a(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A078309.P17070602802027698377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n f1 =>
  7 - f1 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078309.P17070602802027698377

namespace A078309

/-- `∑[7-a(a(n-3))]` -/
def P17070602802027698377.Spec : Prop :=
  ∀ n, P17070602802027698377.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P11308490924352575835

`∑[(2*n²-1)%3+2]`
-/

namespace A078309.P11308490924352575835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n ^ 2 : ℤ) - 1) 3 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078309.P11308490924352575835

namespace A078309

/-- `∑[(2*n²-1)%3+2]` -/
def P11308490924352575835.Spec : Prop :=
  ∀ n, P11308490924352575835.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P17294450277239222807

`∑[∑[ogf((1+3x+3x^2+3x^3)/(1+x+x^2))]]`
-/

namespace A078309.P17294450277239222807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078309.P17294450277239222807

namespace A078309

/-- `∑[∑[ogf((1+3x+3x^2+3x^3)/(1+x+x^2))]]` -/
def P17294450277239222807.Spec : Prop :=
  ∀ n, P17294450277239222807.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P332331640801723096

`ogf((1+3x+3x^2+3x^3)/(1-x-x^3+x^4))`
-/

namespace A078309.P332331640801723096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 3] [1, -1, 0, -1, 1] n

end

end A078309.P332331640801723096

namespace A078309

/-- `ogf((1+3x+3x^2+3x^3)/(1-x-x^3+x^4))` -/
def P332331640801723096.Spec : Prop :=
  ∀ n, P332331640801723096.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P7792589984264866619

`floor(4*n-a(n-2)/5)` with `a(0)=1, a(1)=4`
-/

namespace A078309.P7792589984264866619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊(4 * n : ℚ) - (a (n - 2) : ℚ) / 5⌋

end

end A078309.P7792589984264866619

namespace A078309

/-- `floor(4*n-a(n-2)/5)` -/
def P7792589984264866619.Spec : Prop :=
  ∀ n, P7792589984264866619.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P17621287136450529226

`round(lcm(2, 2*n+1)/3+2*n)`
-/

namespace A078309.P17621287136450529226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm 2 (2 * n + 1) : ℚ) / 3 + (2 * n : ℚ))

end

end A078309.P17621287136450529226

namespace A078309

/-- `round(lcm(2, 2*n+1)/3+2*n)` -/
def P17621287136450529226.Spec : Prop :=
  ∀ n, P17621287136450529226.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P12930146519652082115

`floor(a(n-1)-(floor(a(n-2))%2-4))` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A078309.P12930146519652082115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2)) 2 - 4)

end

end A078309.P12930146519652082115

namespace A078309

/-- `floor(a(n-1)-(floor(a(n-2))%2-4))` -/
def P12930146519652082115.Spec : Prop :=
  ∀ n, P12930146519652082115.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P741752376084145442

`ceil((A008592(n)+1)/3)`
-/

namespace A078309.P741752376084145442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008592 n + 1 : ℚ) / 3⌉

end

end A078309.P741752376084145442

namespace A078309

/-- `ceil((A008592(n)+1)/3)` -/
def P741752376084145442.Spec : Prop :=
  ∀ n, P741752376084145442.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P16020811090405281056

`∪[A131229(n+1), A017317(n)]`
-/

namespace A078309.P16020811090405281056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078309.P16020811090405281056

namespace A078309

/-- `∪[A131229(n+1), A017317(n)]` -/
def P16020811090405281056.Spec : Prop :=
  ∀ n, (P16020811090405281056.a n : ℤ) = A078309 (n + 1)

end A078309

/-! ## A078309.P7245288133746013749

`∪[A271508(n+1), A017353(n)]`
-/

namespace A078309.P7245288133746013749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078309.P7245288133746013749

namespace A078309

/-- `∪[A271508(n+1), A017353(n)]` -/
def P7245288133746013749.Spec : Prop :=
  ∀ n, (P7245288133746013749.a n : ℤ) = A078309 (n + 1)

end A078309

/-! ## A078309.P16722957003351410967

`A271625(n+1)%A248121(n+1)`
-/

namespace A078309.P16722957003351410967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271625 (n + 1)) (A248121 (n + 1))

end

end A078309.P16722957003351410967

namespace A078309

/-- `A271625(n+1)%A248121(n+1)` -/
def P16722957003351410967.Spec : Prop :=
  ∀ n, P16722957003351410967.a n = A078309 (n + 1)

end A078309

/-! ## A078309.P3376168111168353332

`∪[A131229(n+1), A271508(n+1)]`
-/

namespace A078309.P3376168111168353332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078309.P3376168111168353332

namespace A078309

/-- `∪[A131229(n+1), A271508(n+1)]` -/
def P3376168111168353332.Spec : Prop :=
  ∀ n, (P3376168111168353332.a n : ℤ) = A078309 (n + 1)

end A078309

/-!
# A078310: a(n) = n*rad(n) + 1, where rad = A007947 (squarefree kernel).

The programs for A078310, the canonical program `A078310.P14219530768046252322` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078310 has offset 1).

The definition of A078310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A007947(n+1)+1` (program `A078310.P14219530768046252322`, by `A078310.P14219530768046252322.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078310.P13481393932737065980

`A064549(n+1)+1`
-/

namespace A078310.P13481393932737065980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

end

end A078310.P13481393932737065980

namespace A078310

/-- `A064549(n+1)+1` -/
def P13481393932737065980.Spec : Prop :=
  ∀ n, P13481393932737065980.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P14219530768046252322

`(n+1)*A007947(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078310

/-- `(n+1)*A007947(n+1)+1` -/
def P14219530768046252322.Spec : Prop :=
  ∀ n, P14219530768046252322.a n = A078310 (n + 1)

theorem P14219530768046252322.correct : P14219530768046252322.Spec := by
  intro n
  simp only [A078310, Nat.add_sub_cancel]

end A078310

/-! ## A078310.P10236635109096462469

`(n+1)*∏{p}[n+1, #]+1`
-/

namespace A078310.P10236635109096462469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A078310.P10236635109096462469

namespace A078310

/-- `(n+1)*∏{p}[n+1, #]+1` -/
def P10236635109096462469.Spec : Prop :=
  ∀ n, (P10236635109096462469.a n : ℤ) = A078310 (n + 1)

theorem P10236635109096462469.correct : P10236635109096462469.Spec := by
  intro n
  simp only [A078310, Nat.add_sub_cancel, A078310.P10236635109096462469.f1, A078310.P10236635109096462469.a, A078310.P14219530768046252322.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078310

/-! ## A078310.P7890736698081039485

`lcm(n+1, ∏{p}[n+1, #]+1)-n`
-/

namespace A078310.P7890736698081039485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p + 1) : ℤ) - (n : ℤ)

end

end A078310.P7890736698081039485

namespace A078310

/-- `lcm(n+1, ∏{p}[n+1, #]+1)-n` -/
def P7890736698081039485.Spec : Prop :=
  ∀ n, P7890736698081039485.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P18166582766345840811

`A355038(n+1)/(n+1)+1`
-/

namespace A078310.P18166582766345840811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A078310.P18166582766345840811

namespace A078310

/-- `A355038(n+1)/(n+1)+1` -/
def P18166582766345840811.Spec : Prop :=
  ∀ n, P18166582766345840811.a n = (A078310 (n + 1) : ℚ)

end A078310

/-! ## A078310.P4510094138157771469

`(n+1)*A076618(n+1)-n`
-/

namespace A078310.P4510094138157771469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076618 (n + 1) - (n : ℤ)

end

end A078310.P4510094138157771469

namespace A078310

/-- `(n+1)*A076618(n+1)-n` -/
def P4510094138157771469.Spec : Prop :=
  ∀ n, P4510094138157771469.a n = A078310 (n + 1)

theorem P4510094138157771469.correct : P4510094138157771469.Spec := by
  intro n
  simp only [A078310, Nat.add_sub_cancel, A078310.P4510094138157771469.a, A078310.P14219530768046252322.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078310

/-! ## A078310.P5690395338923233699

`(n+1)²/A003557(n+1)+1`
-/

namespace A078310.P5690395338923233699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1

end

end A078310.P5690395338923233699

namespace A078310

/-- `(n+1)²/A003557(n+1)+1` -/
def P5690395338923233699.Spec : Prop :=
  ∀ n, P5690395338923233699.a n = (A078310 (n + 1) : ℚ)

end A078310

/-! ## A078310.P4776275214424694033

`A011264(n+1)*A055491(n+1)+1`
-/

namespace A078310.P4776275214424694033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (n + 1) * A055491 (n + 1) + 1

end

end A078310.P4776275214424694033

namespace A078310

/-- `A011264(n+1)*A055491(n+1)+1` -/
def P4776275214424694033.Spec : Prop :=
  ∀ n, P4776275214424694033.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P14797326978423930597

`A003557(n+1)*A078615(n+1)+1`
-/

namespace A078310.P14797326978423930597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A078615 (n + 1) + 1

end

end A078310.P14797326978423930597

namespace A078310

/-- `A003557(n+1)*A078615(n+1)+1` -/
def P14797326978423930597.Spec : Prop :=
  ∀ n, P14797326978423930597.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P18058327086527376623

`A007913(n+1)*A356191(n+1)+1`
-/

namespace A078310.P18058327086527376623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A356191 (n + 1) + 1

end

end A078310.P18058327086527376623

namespace A078310

/-- `A007913(n+1)*A356191(n+1)+1` -/
def P18058327086527376623.Spec : Prop :=
  ∀ n, P18058327086527376623.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P13656700800648616269

`A062759(n+1)*A304776(n+1)+1`
-/

namespace A078310.P13656700800648616269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 1) * A304776 (n + 1) + 1

end

end A078310.P13656700800648616269

namespace A078310

/-- `A062759(n+1)*A304776(n+1)+1` -/
def P13656700800648616269.Spec : Prop :=
  ∀ n, P13656700800648616269.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P9695034856425044254

`A053143(n+1)*A336643(n+1)+1`
-/

namespace A078310.P9695034856425044254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A336643 (n + 1) + 1

end

end A078310.P9695034856425044254

namespace A078310

/-- `A053143(n+1)*A336643(n+1)+1` -/
def P9695034856425044254.Spec : Prop :=
  ∀ n, P9695034856425044254.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P9275786130206370672

`A066990(n+1)*A350390(n+1)+1`
-/

namespace A078310.P9275786130206370672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1) * A350390 (n + 1) + 1

end

end A078310.P9275786130206370672

namespace A078310

/-- `A066990(n+1)*A350390(n+1)+1` -/
def P9275786130206370672.Spec : Prop :=
  ∀ n, P9275786130206370672.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P7719709517285691370

`A361265(n+1)/A005361(n+1)+1`
-/

namespace A078310.P7719709517285691370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361265 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ) + 1

end

end A078310.P7719709517285691370

namespace A078310

/-- `A361265(n+1)/A005361(n+1)+1` -/
def P7719709517285691370.Spec : Prop :=
  ∀ n, P7719709517285691370.a n = (A078310 (n + 1) : ℚ)

end A078310

/-! ## A078310.P12316065585896164552

`A361264(n+1)/A007947(n+1)+1`
-/

namespace A078310.P12316065585896164552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361264 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) + 1

end

end A078310.P12316065585896164552

namespace A078310

/-- `A361264(n+1)/A007947(n+1)+1` -/
def P12316065585896164552.Spec : Prop :=
  ∀ n, P12316065585896164552.a n = (A078310 (n + 1) : ℚ)

end A078310

/-! ## A078310.P192434956071244341

`lcm(A011262(n+1), A011264(n+1))+1`
-/

namespace A078310.P192434956071244341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011262 (n + 1)) (A011264 (n + 1)) + 1

end

end A078310.P192434956071244341

namespace A078310

/-- `lcm(A011262(n+1), A011264(n+1))+1` -/
def P192434956071244341.Spec : Prop :=
  ∀ n, (P192434956071244341.a n : ℤ) = A078310 (n + 1)

end A078310

/-! ## A078310.P6159121361679269218

`A007913(n+1)²*A011264(n+1)+1`
-/

namespace A078310.P6159121361679269218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) ^ 2 * A011264 (n + 1) + 1

end

end A078310.P6159121361679269218

namespace A078310

/-- `A007913(n+1)²*A011264(n+1)+1` -/
def P6159121361679269218.Spec : Prop :=
  ∀ n, P6159121361679269218.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P5236920021546004316

`A336643(n+1)²*A011262(n+1)+1`
-/

namespace A078310.P5236920021546004316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) ^ 2 * A011262 (n + 1) + 1

end

end A078310.P5236920021546004316

namespace A078310

/-- `A336643(n+1)²*A011262(n+1)+1` -/
def P5236920021546004316.Spec : Prop :=
  ∀ n, P5236920021546004316.a n = A078310 (n + 1)

end A078310

/-! ## A078310.P8422978040613906003

`A053143(n+1)²/A011262(n+1)+1`
-/

namespace A078310.P8422978040613906003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053143 (n + 1) ^ 2 : ℚ) / (A011262 (n + 1) : ℚ) + 1

end

end A078310.P8422978040613906003

namespace A078310

/-- `A053143(n+1)²/A011262(n+1)+1` -/
def P8422978040613906003.Spec : Prop :=
  ∀ n, P8422978040613906003.a n = (A078310 (n + 1) : ℚ)

end A078310

/-! ## A078310.P11988425465475968232

`A224866(A348018(n+1))`
-/

namespace A078310.P11988425465475968232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (A348018 (n + 1)).toNat

end

end A078310.P11988425465475968232

namespace A078310

/-- `A224866(A348018(n+1))` -/
def P11988425465475968232.Spec : Prop :=
  ∀ n, P11988425465475968232.a n = A078310 (n + 1)

end A078310

/-!
# A078311: Smallest prime factor of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078311, there is no canonical definition to state claims against.
-/

/-! ## A078311.P11889142533451334392

`A020639(A078310(n+1))`
-/

namespace A078311.P11889142533451334392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078310 (n + 1)).toNat

end

end A078311.P11889142533451334392

/-! ## A078311.P5392162682490143338

`A020639((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078311.P5392162682490143338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078311.P5392162682490143338

/-! ## A078311.P15552521935714090102

`A020639(lcm(n+1, ∏{p}[n+1, #]+1)-n)`
-/

namespace A078311.P15552521935714090102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p + 1) - n)

end

end A078311.P15552521935714090102

/-! ## A078311.P6014807318580907831

`A020639(A078322(n+1))`
-/

namespace A078311.P6014807318580907831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078322 (n + 1)).toNat

end

end A078311.P6014807318580907831

/-! ## A078311.P18196758831459601854

`A020639(A064549(n+1)+1)`
-/

namespace A078311.P18196758831459601854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064549 (n + 1) + 1).toNat

end

end A078311.P18196758831459601854

/-! ## A078311.P7374739207080585146

`A020639((n+1)*A007947(n+1)+1)`
-/

namespace A078311.P7374739207080585146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078311.P7374739207080585146

/-! ## A078311.P2377597170005860175

`A020639((n+1)²/A003557(n+1)+1)`
-/

namespace A078311.P2377597170005860175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)).toNat

end

end A078311.P2377597170005860175

/-! ## A078311.P10692219296335033191

`A020639((n+1)*∏{d}[n+1, A089026(#)]+1)`
-/

namespace A078311.P10692219296335033191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A089026 d) + 1).toNat

end

end A078311.P10692219296335033191

/-! ## A078311.P15134840763166802487

`A020639(A224866(A348018(n+1)))`
-/

namespace A078311.P15134840763166802487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078311.P15134840763166802487

/-!
# A078312: Greatest prime factor of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078312, the canonical program `A078312.P13960604439947323661` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078312 has offset 1).

The definition of A078312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078312.P13960604439947323661

`A006530(A078310(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078312

/-- `A006530(A078310(n+1))` -/
def P13960604439947323661.Spec : Prop :=
  ∀ n, P13960604439947323661.a n = A078312 (n + 1)

theorem P13960604439947323661.correct : P13960604439947323661.Spec := by
  intro n
  simp only [A078312, Nat.add_sub_cancel]

end A078312

/-! ## A078312.P2025583470213715530

`A006530((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078312.P2025583470213715530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078312.P2025583470213715530

namespace A078312

/-- `A006530((n+1)*∏{p}[n+1, #]+1)` -/
def P2025583470213715530.Spec : Prop :=
  ∀ n, P2025583470213715530.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P12434806361300054012

`A006530(A078322(n+1))`
-/

namespace A078312.P12434806361300054012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078322 (n + 1)).toNat

end

end A078312.P12434806361300054012

namespace A078312

/-- `A006530(A078322(n+1))` -/
def P12434806361300054012.Spec : Prop :=
  ∀ n, P12434806361300054012.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P8459279451950254923

`A006530(A064549(n+1)+1)`
-/

namespace A078312.P8459279451950254923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064549 (n + 1) + 1).toNat

end

end A078312.P8459279451950254923

namespace A078312

/-- `A006530(A064549(n+1)+1)` -/
def P8459279451950254923.Spec : Prop :=
  ∀ n, P8459279451950254923.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P4637480590912029158

`A006530((n+1)*A007947(n+1)+1)`
-/

namespace A078312.P4637480590912029158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078312.P4637480590912029158

namespace A078312

/-- `A006530((n+1)*A007947(n+1)+1)` -/
def P4637480590912029158.Spec : Prop :=
  ∀ n, P4637480590912029158.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P17183051679564815251

`A006530((n+1)²/A003557(n+1)+1)`
-/

namespace A078312.P17183051679564815251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)).toNat

end

end A078312.P17183051679564815251

namespace A078312

/-- `A006530((n+1)²/A003557(n+1)+1)` -/
def P17183051679564815251.Spec : Prop :=
  ∀ n, P17183051679564815251.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P9051464110839207416

`A006530((n+1)*∏{d}[n+1, A089026(#)]+1)`
-/

namespace A078312.P9051464110839207416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A089026 d) + 1).toNat

end

end A078312.P9051464110839207416

namespace A078312

/-- `A006530((n+1)*∏{d}[n+1, A089026(#)]+1)` -/
def P9051464110839207416.Spec : Prop :=
  ∀ n, P9051464110839207416.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P2092070444000467962

`A006530(A224866(A348018(n+1)))`
-/

namespace A078312.P2092070444000467962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078312.P2092070444000467962

namespace A078312

/-- `A006530(A224866(A348018(n+1)))` -/
def P2092070444000467962.Spec : Prop :=
  ∀ n, P2092070444000467962.a n = A078312 (n + 1)

end A078312

/-! ## A078312.P18189190203545398595

`A006530(A079228(A064549(n+1)))`
-/

namespace A078312.P18189190203545398595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079228 (A064549 (n + 1)).toNat).toNat

end

end A078312.P18189190203545398595

namespace A078312

/-- `A006530(A079228(A064549(n+1)))` -/
def P18189190203545398595.Spec : Prop :=
  ∀ n, P18189190203545398595.a n = A078312 (n + 1)

end A078312

/-!
# A078313: Number of distinct prime factors of n*rad(n)+1, where rad=A007947 (squarefree kernel).

The programs for A078313, the canonical program `A078313.P16342502329399441970` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078313 has offset 1).

The definition of A078313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078313.P16342502329399441970

`∑{e}[∏{p}[(n+1)*∏{p}[n+1, #]+1, #], #]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078313

/-- `∑{e}[∏{p}[(n+1)*∏{p}[n+1, #]+1, #], #]` -/
def P16342502329399441970.Spec : Prop :=
  ∀ n, (P16342502329399441970.a n : ℤ) = A078313 (n + 1)

theorem P16342502329399441970.correct : P16342502329399441970.Spec := by
  intro n
  simp only [A078313, Nat.add_sub_cancel]

end A078313

/-! ## A078313.P12179055452978302759

`∑{e}[A078322(n+1), #]`
-/

namespace A078313.P12179055452978302759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078313.P12179055452978302759

namespace A078313

/-- `∑{e}[A078322(n+1), #]` -/
def P12179055452978302759.Spec : Prop :=
  ∀ n, (P12179055452978302759.a n : ℤ) = A078313 (n + 1)

end A078313

/-! ## A078313.P8766664788561815888

`A001221((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078313.P8766664788561815888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078313.P8766664788561815888

namespace A078313

/-- `A001221((n+1)*∏{p}[n+1, #]+1)` -/
def P8766664788561815888.Spec : Prop :=
  ∀ n, P8766664788561815888.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P11048115379978598017

`A001222(∏{p}[(n+1)*∏{p}[n+1, #]+1, #])`
-/

namespace A078313.P11048115379978598017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078313.P11048115379978598017

namespace A078313

/-- `A001222(∏{p}[(n+1)*∏{p}[n+1, #]+1, #])` -/
def P11048115379978598017.Spec : Prop :=
  ∀ n, P11048115379978598017.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P14122182356456849731

`log2(A000005(∏{p}[(n+1)*∏{p}[n+1, #]+1, #]))`
-/

namespace A078313.P14122182356456849731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A078313.P14122182356456849731

namespace A078313

/-- `log2(A000005(∏{p}[(n+1)*∏{p}[n+1, #]+1, #]))` -/
def P14122182356456849731.Spec : Prop :=
  ∀ n, P14122182356456849731.a n = (A078313 (n + 1) : ℝ)

end A078313

/-! ## A078313.P17270610945558940871

`A001221(A078310(n+1))`
-/

namespace A078313.P17270610945558940871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078310 (n + 1)).toNat

end

end A078313.P17270610945558940871

namespace A078313

/-- `A001221(A078310(n+1))` -/
def P17270610945558940871.Spec : Prop :=
  ∀ n, P17270610945558940871.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P8098280827360746990

`A001221(A078322(n+1))`
-/

namespace A078313.P8098280827360746990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078322 (n + 1)).toNat

end

end A078313.P8098280827360746990

namespace A078313

/-- `A001221(A078322(n+1))` -/
def P8098280827360746990.Spec : Prop :=
  ∀ n, P8098280827360746990.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P2920184819907014632

`A001221(A064549(n+1)+1)`
-/

namespace A078313.P2920184819907014632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A064549 (n + 1) + 1).toNat

end

end A078313.P2920184819907014632

namespace A078313

/-- `A001221(A064549(n+1)+1)` -/
def P2920184819907014632.Spec : Prop :=
  ∀ n, P2920184819907014632.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P8447459651465584314

`A001221((n+1)*A007947(n+1)+1)`
-/

namespace A078313.P8447459651465584314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078313.P8447459651465584314

namespace A078313

/-- `A001221((n+1)*A007947(n+1)+1)` -/
def P8447459651465584314.Spec : Prop :=
  ∀ n, P8447459651465584314.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P17400738164418929098

`A001221((n+1)²/A003557(n+1)+1)`
-/

namespace A078313.P17400738164418929098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)).toNat

end

end A078313.P17400738164418929098

namespace A078313

/-- `A001221((n+1)²/A003557(n+1)+1)` -/
def P17400738164418929098.Spec : Prop :=
  ∀ n, P17400738164418929098.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P11808985119114776569

`A001221((n+1)*∏{d}[n+1, A089026(#)]+1)`
-/

namespace A078313.P11808985119114776569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A089026 d) + 1).toNat

end

end A078313.P11808985119114776569

namespace A078313

/-- `A001221((n+1)*∏{d}[n+1, A089026(#)]+1)` -/
def P11808985119114776569.Spec : Prop :=
  ∀ n, P11808985119114776569.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P1612288313816434676

`A001222(∏{p}[(n+1)*A007947(n+1)+1, #])`
-/

namespace A078313.P1612288313816434676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A078313.P1612288313816434676

namespace A078313

/-- `A001222(∏{p}[(n+1)*A007947(n+1)+1, #])` -/
def P1612288313816434676.Spec : Prop :=
  ∀ n, P1612288313816434676.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P8331577335159492605

`A001222(∏{p}[(n+1)²/A003557(n+1)+1, #])`
-/

namespace A078313.P8331577335159492605
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)

end

end A078313.P8331577335159492605

namespace A078313

/-- `A001222(∏{p}[(n+1)²/A003557(n+1)+1, #])` -/
def P8331577335159492605.Spec : Prop :=
  ∀ n, P8331577335159492605.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P5015837963454965230

`A001221(A224866(A348018(n+1)))`
-/

namespace A078313.P5015837963454965230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078313.P5015837963454965230

namespace A078313

/-- `A001221(A224866(A348018(n+1)))` -/
def P5015837963454965230.Spec : Prop :=
  ∀ n, P5015837963454965230.a n = A078313 (n + 1)

end A078313

/-! ## A078313.P7481704221420341411

`A001221(A079228(A064549(n+1)))`
-/

namespace A078313.P7481704221420341411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079228 (A064549 (n + 1)).toNat).toNat

end

end A078313.P7481704221420341411

namespace A078313

/-- `A001221(A079228(A064549(n+1)))` -/
def P7481704221420341411.Spec : Prop :=
  ∀ n, P7481704221420341411.a n = A078313 (n + 1)

end A078313

/-!
# A078314: Total number of prime factors of n*rad(n)+1 counted with multiplicity, where rad = A007947 (squarefree kernel).

The programs for A078314, the canonical program `A078314.P2877485393770838390` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078314 has offset 1).

The definition of A078314 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078314.P2877485393770838390

`A001222(A078310(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A078314

/-- `A001222(A078310(n+1))` -/
def P2877485393770838390.Spec : Prop :=
  ∀ n, P2877485393770838390.a n = A078314 (n + 1)

theorem P2877485393770838390.correct : P2877485393770838390.Spec := by
  intro n
  simp only [A078314, Nat.add_sub_cancel]

end A078314

/-! ## A078314.P2380182929477423173

`∑{e}[(n+1)*∏{p}[n+1, #]+1, #]`
-/

namespace A078314.P2380182929477423173
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A078314.P2380182929477423173

namespace A078314

/-- `∑{e}[(n+1)*∏{p}[n+1, #]+1, #]` -/
def P2380182929477423173.Spec : Prop :=
  ∀ n, (P2380182929477423173.a n : ℤ) = A078314 (n + 1)

end A078314

/-! ## A078314.P6937843724684605568

`∑{e}[A064549(n+1)+1, #]`
-/

namespace A078314.P6937843724684605568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078314.P6937843724684605568

namespace A078314

/-- `∑{e}[A064549(n+1)+1, #]` -/
def P6937843724684605568.Spec : Prop :=
  ∀ n, (P6937843724684605568.a n : ℤ) = A078314 (n + 1)

end A078314

/-! ## A078314.P5654500150612355424

`A001222((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078314.P5654500150612355424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078314.P5654500150612355424

namespace A078314

/-- `A001222((n+1)*∏{p}[n+1, #]+1)` -/
def P5654500150612355424.Spec : Prop :=
  ∀ n, P5654500150612355424.a n = A078314 (n + 1)

end A078314

/-! ## A078314.P5369636894347703956

`A001222(A064549(n+1)+1)`
-/

namespace A078314.P5369636894347703956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064549 (n + 1) + 1).toNat

end

end A078314.P5369636894347703956

namespace A078314

/-- `A001222(A064549(n+1)+1)` -/
def P5369636894347703956.Spec : Prop :=
  ∀ n, P5369636894347703956.a n = A078314 (n + 1)

end A078314

/-! ## A078314.P4055994774690861387

`A001222((n+1)*A007947(n+1)+1)`
-/

namespace A078314.P4055994774690861387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078314.P4055994774690861387

namespace A078314

/-- `A001222((n+1)*A007947(n+1)+1)` -/
def P4055994774690861387.Spec : Prop :=
  ∀ n, P4055994774690861387.a n = A078314 (n + 1)

end A078314

/-! ## A078314.P4757359483254709057

`A001222((n+1)²/A003557(n+1)+1)`
-/

namespace A078314.P4757359483254709057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)).toNat

end

end A078314.P4757359483254709057

namespace A078314

/-- `A001222((n+1)²/A003557(n+1)+1)` -/
def P4757359483254709057.Spec : Prop :=
  ∀ n, P4757359483254709057.a n = A078314 (n + 1)

end A078314

/-! ## A078314.P5361492076259581045

`A001222((n+1)*∏{d}[n+1, A089026(#)]+1)`
-/

namespace A078314.P5361492076259581045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n + 1 : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A089026 d) + 1).toNat

end

end A078314.P5361492076259581045

namespace A078314

/-- `A001222((n+1)*∏{d}[n+1, A089026(#)]+1)` -/
def P5361492076259581045.Spec : Prop :=
  ∀ n, P5361492076259581045.a n = A078314 (n + 1)

end A078314

/-! ## A078314.P7553913634408325248

`A001222(A224866(A348018(n+1)))`
-/

namespace A078314.P7553913634408325248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078314.P7553913634408325248

namespace A078314

/-- `A001222(A224866(A348018(n+1)))` -/
def P7553913634408325248.Spec : Prop :=
  ∀ n, P7553913634408325248.a n = A078314 (n + 1)

end A078314

/-! ## A078314.P17621557717137847954

`A001222(A079228(A064549(n+1)))`
-/

namespace A078314.P17621557717137847954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A079228 (A064549 (n + 1)).toNat).toNat

end

end A078314.P17621557717137847954

namespace A078314

/-- `A001222(A079228(A064549(n+1)))` -/
def P17621557717137847954.Spec : Prop :=
  ∀ n, P17621557717137847954.a n = A078314 (n + 1)

end A078314

/-!
# A078315: Minimum exponent in prime factorization of n*rad(n)+1, where rad = A007947 (the radical or squarefree kernel).

The programs for A078315, the canonical program `A078315.P6296526760985903432` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078315 has offset 1).

The definition of A078315 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078315.P6296526760985903432

`A051904(A078310(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078315

/-- `A051904(A078310(n+1))` -/
def P6296526760985903432.Spec : Prop :=
  ∀ n, P6296526760985903432.a n = A078315 (n + 1)

theorem P6296526760985903432.correct : P6296526760985903432.Spec := by
  intro n
  simp only [A078315, Nat.add_sub_cancel]

end A078315

/-! ## A078315.P1549107955932791417

`val((n+1)*∏{p}[n+1, #]+1, ∏{p}[(n+1)*∏{p}[n+1, #]+1, #])`
-/

namespace A078315.P1549107955932791417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f3 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A078315.P1549107955932791417

namespace A078315

/-- `val((n+1)*∏{p}[n+1, #]+1, ∏{p}[(n+1)*∏{p}[n+1, #]+1, #])` -/
def P1549107955932791417.Spec : Prop :=
  ∀ n, (P1549107955932791417.a n : ℤ) = A078315 (n + 1)

end A078315

/-! ## A078315.P8432938981783710945

`A174789(∏{e}[A064549(n+1)+1, A036656(#)])`
-/

namespace A078315.P8432938981783710945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174789 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A036656 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A078315.P8432938981783710945

namespace A078315

/-- `A174789(∏{e}[A064549(n+1)+1, A036656(#)])` -/
def P8432938981783710945.Spec : Prop :=
  ∀ n, P8432938981783710945.a n = A078315 (n + 1)

end A078315

/-! ## A078315.P2674408233624251790

`val((n+1)*∏{p}[n+1, #]+1, A007947((n+1)*∏{p}[n+1, #]+1))`
-/

namespace A078315.P2674408233624251790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) (A007947 ((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1)).toNat

end

end A078315.P2674408233624251790

namespace A078315

/-- `val((n+1)*∏{p}[n+1, #]+1, A007947((n+1)*∏{p}[n+1, #]+1))` -/
def P2674408233624251790.Spec : Prop :=
  ∀ n, (P2674408233624251790.a n : ℤ) = A078315 (n + 1)

end A078315

/-! ## A078315.P7587708745192765253

`A051904(A064549(n+1)+1)`
-/

namespace A078315.P7587708745192765253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A064549 (n + 1) + 1).toNat

end

end A078315.P7587708745192765253

namespace A078315

/-- `A051904(A064549(n+1)+1)` -/
def P7587708745192765253.Spec : Prop :=
  ∀ n, P7587708745192765253.a n = A078315 (n + 1)

end A078315

/-! ## A078315.P14349965207902408372

`A020639(A000005((n+1)*∏{p}[n+1, #]+1))-1`
-/

namespace A078315.P14349965207902408372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000005 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)).toNat - 1

end

end A078315.P14349965207902408372

namespace A078315

/-- `A020639(A000005((n+1)*∏{p}[n+1, #]+1))-1` -/
def P14349965207902408372.Spec : Prop :=
  ∀ n, P14349965207902408372.a n = A078315 (n + 1)

end A078315

/-! ## A078315.P5202588511220795773

`A088904(A090187(n+1))`
-/

namespace A078315.P5202588511220795773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088904 (A090187 (n + 1)).toNat

end

end A078315.P5202588511220795773

namespace A078315

/-- `A088904(A090187(n+1))` -/
def P5202588511220795773.Spec : Prop :=
  ∀ n, P5202588511220795773.a n = A078315 (n + 1)

end A078315

/-! ## A078315.P14712729635955099932

`A316789((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078315.P14712729635955099932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078315.P14712729635955099932

namespace A078315

/-- `A316789((n+1)*∏{p}[n+1, #]+1)` -/
def P14712729635955099932.Spec : Prop :=
  ∀ n, P14712729635955099932.a n = A078315 (n + 1)

end A078315

/-! ## A078315.P9978881942287331462

`A010052((n+1)*∏{p}[n+1, #]+1)+1`
-/

namespace A078315.P9978881942287331462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) + 1

end

end A078315.P9978881942287331462

namespace A078315

/-- `A010052((n+1)*∏{p}[n+1, #]+1)+1` -/
def P9978881942287331462.Spec : Prop :=
  ∀ n, P9978881942287331462.a n = A078315 (n + 1)

end A078315

/-! ## A078315.P16660481634095013960

`A010052(A064549(n+1)+1)+1`
-/

namespace A078315.P16660481634095013960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A064549 (n + 1) + 1).toNat + 1

end

end A078315.P16660481634095013960

namespace A078315

/-- `A010052(A064549(n+1)+1)+1` -/
def P16660481634095013960.Spec : Prop :=
  ∀ n, P16660481634095013960.a n = A078315 (n + 1)

end A078315

/-!
# A078316: Maximum exponent in the prime factorization of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078316, the canonical program `A078316.P1814470591158265181` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078316 has offset 1).

The definition of A078316 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078316.P1814470591158265181

`A051903(A078310(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078316

/-- `A051903(A078310(n+1))` -/
def P1814470591158265181.Spec : Prop :=
  ∀ n, P1814470591158265181.a n = A078316 (n + 1)

theorem P1814470591158265181.correct : P1814470591158265181.Spec := by
  intro n
  simp only [A078316, Nat.add_sub_cancel]

end A078316

/-! ## A078316.P16668530890096208862

`A051903((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078316.P16668530890096208862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078316.P16668530890096208862

namespace A078316

/-- `A051903((n+1)*∏{p}[n+1, #]+1)` -/
def P16668530890096208862.Spec : Prop :=
  ∀ n, P16668530890096208862.a n = A078316 (n + 1)

end A078316

/-! ## A078316.P15506342057169959271

`A051903(A064549(n+1)+1)`
-/

namespace A078316.P15506342057169959271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A064549 (n + 1) + 1).toNat

end

end A078316.P15506342057169959271

namespace A078316

/-- `A051903(A064549(n+1)+1)` -/
def P15506342057169959271.Spec : Prop :=
  ∀ n, P15506342057169959271.a n = A078316 (n + 1)

end A078316

/-! ## A078316.P4609070540924442864

`A051903((n+1)*A007947(n+1)+1)`
-/

namespace A078316.P4609070540924442864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078316.P4609070540924442864

namespace A078316

/-- `A051903((n+1)*A007947(n+1)+1)` -/
def P4609070540924442864.Spec : Prop :=
  ∀ n, P4609070540924442864.a n = A078316 (n + 1)

end A078316

/-! ## A078316.P1214398124583318996

`A051903(A052410(n+1)*A062759(n+1)+1)`
-/

namespace A078316.P1214398124583318996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A052410 (n + 1) * A062759 (n + 1) + 1).toNat

end

end A078316.P1214398124583318996

namespace A078316

/-- `A051903(A052410(n+1)*A062759(n+1)+1)` -/
def P1214398124583318996.Spec : Prop :=
  ∀ n, P1214398124583318996.a n = A078316 (n + 1)

end A078316

/-! ## A078316.P8334789471792353110

`A066301(A064549(n+1)+1)+1`
-/

namespace A078316.P8334789471792353110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A064549 (n + 1) + 1).toNat + 1

end

end A078316.P8334789471792353110

namespace A078316

/-- `A066301(A064549(n+1)+1)+1` -/
def P8334789471792353110.Spec : Prop :=
  ∀ n, P8334789471792353110.a n = A078316 (n + 1)

end A078316

/-!
# A078317: Number of divisors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078317, the canonical program `A078317.P4878042880391652802` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078317 has offset 1).

The definition of A078317 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078317.P4878042880391652802

`A000005(A078310(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078317

/-- `A000005(A078310(n+1))` -/
def P4878042880391652802.Spec : Prop :=
  ∀ n, P4878042880391652802.a n = A078317 (n + 1)

theorem P4878042880391652802.correct : P4878042880391652802.Spec := by
  intro n
  simp only [A078317, Nat.add_sub_cancel]

end A078317

/-! ## A078317.P5438111280347436389

`∏{e}[(n+1)*∏{p}[n+1, #]+1, #+1]`
-/

namespace A078317.P5438111280347436389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A078317.P5438111280347436389

namespace A078317

/-- `∏{e}[(n+1)*∏{p}[n+1, #]+1, #+1]` -/
def P5438111280347436389.Spec : Prop :=
  ∀ n, (P5438111280347436389.a n : ℤ) = A078317 (n + 1)

end A078317

/-! ## A078317.P16265455226546925621

`∏{e}[lcm(∏{p}[n+1, #]+1, n+1)-n, #+1]`
-/

namespace A078317.P16265455226546925621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∏ p ∈ Nat.primeFactors (f2 n), p + 1) (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A078317.P16265455226546925621

namespace A078317

/-- `∏{e}[lcm(∏{p}[n+1, #]+1, n+1)-n, #+1]` -/
def P16265455226546925621.Spec : Prop :=
  ∀ n, (P16265455226546925621.a n : ℤ) = A078317 (n + 1)

end A078317

/-! ## A078317.P16957093393204438964

`A000005((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078317.P16957093393204438964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078317.P16957093393204438964

namespace A078317

/-- `A000005((n+1)*∏{p}[n+1, #]+1)` -/
def P16957093393204438964.Spec : Prop :=
  ∀ n, P16957093393204438964.a n = A078317 (n + 1)

end A078317

/-! ## A078317.P1852236499145863153

`A000005(A064549(n+1)+1)`
-/

namespace A078317.P1852236499145863153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064549 (n + 1) + 1).toNat

end

end A078317.P1852236499145863153

namespace A078317

/-- `A000005(A064549(n+1)+1)` -/
def P1852236499145863153.Spec : Prop :=
  ∀ n, P1852236499145863153.a n = A078317 (n + 1)

end A078317

/-! ## A078317.P3667354444867931807

`A000005((n+1)*A007947(n+1)+1)`
-/

namespace A078317.P3667354444867931807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078317.P3667354444867931807

namespace A078317

/-- `A000005((n+1)*A007947(n+1)+1)` -/
def P3667354444867931807.Spec : Prop :=
  ∀ n, P3667354444867931807.a n = A078317 (n + 1)

end A078317

/-! ## A078317.P15444684100132439831

`A000005(A224866(A348018(n+1)))`
-/

namespace A078317.P15444684100132439831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078317.P15444684100132439831

namespace A078317

/-- `A000005(A224866(A348018(n+1)))` -/
def P15444684100132439831.Spec : Prop :=
  ∀ n, P15444684100132439831.a n = A078317 (n + 1)

end A078317

/-! ## A078317.P15706626351496880217

`A074848(A064549(n+1)+1)`
-/

namespace A078317.P15706626351496880217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (A064549 (n + 1) + 1).toNat

end

end A078317.P15706626351496880217

namespace A078317

/-- `A074848(A064549(n+1)+1)` -/
def P15706626351496880217.Spec : Prop :=
  ∀ n, P15706626351496880217.a n = A078317 (n + 1)

end A078317

/-! ## A078317.P1297226197669054615

`A000005(A079228(A064549(n+1)))`
-/

namespace A078317.P1297226197669054615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079228 (A064549 (n + 1)).toNat).toNat

end

end A078317.P1297226197669054615

namespace A078317

/-- `A000005(A079228(A064549(n+1)))` -/
def P1297226197669054615.Spec : Prop :=
  ∀ n, P1297226197669054615.a n = A078317 (n + 1)

end A078317

/-! ## A078317.P6039317458096209205

`A000005(A079228((n+1)*A007947(n+1)))`
-/

namespace A078317.P6039317458096209205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079228 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A078317.P6039317458096209205

namespace A078317

/-- `A000005(A079228((n+1)*A007947(n+1)))` -/
def P6039317458096209205.Spec : Prop :=
  ∀ n, P6039317458096209205.a n = A078317 (n + 1)

end A078317

/-!
# A078318: Sum of divisors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078318, the canonical program `A078318.P9588675743747203793` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078318 has offset 1).

The definition of A078318 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078318.P9588675743747203793

`A000203(A078310(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078318

/-- `A000203(A078310(n+1))` -/
def P9588675743747203793.Spec : Prop :=
  ∀ n, P9588675743747203793.a n = A078318 (n + 1)

theorem P9588675743747203793.correct : P9588675743747203793.Spec := by
  intro n
  simp only [A078318, Nat.add_sub_cancel]

end A078318

/-! ## A078318.P6269897853122300145

`A000203((n+1)*A007947(n+1)+1)`
-/

namespace A078318.P6269897853122300145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078318.P6269897853122300145

namespace A078318

/-- `A000203((n+1)*A007947(n+1)+1)` -/
def P6269897853122300145.Spec : Prop :=
  ∀ n, P6269897853122300145.a n = A078318 (n + 1)

end A078318

/-! ## A078318.P8130707267509819583

`∑{d}[(n+1)*∏{p}[n+1, #]+1, #]`
-/

namespace A078318.P8130707267509819583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A078318.P8130707267509819583

namespace A078318

/-- `∑{d}[(n+1)*∏{p}[n+1, #]+1, #]` -/
def P8130707267509819583.Spec : Prop :=
  ∀ n, (P8130707267509819583.a n : ℤ) = A078318 (n + 1)

end A078318

/-! ## A078318.P3685702413676839228

`∑{d}[A064549(n+1)+1, #]`
-/

namespace A078318.P3685702413676839228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078318.P3685702413676839228

namespace A078318

/-- `∑{d}[A064549(n+1)+1, #]` -/
def P3685702413676839228.Spec : Prop :=
  ∀ n, (P3685702413676839228.a n : ℤ) = A078318 (n + 1)

end A078318

/-! ## A078318.P5689668540687433446

`A000203((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078318.P5689668540687433446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078318.P5689668540687433446

namespace A078318

/-- `A000203((n+1)*∏{p}[n+1, #]+1)` -/
def P5689668540687433446.Spec : Prop :=
  ∀ n, P5689668540687433446.a n = A078318 (n + 1)

end A078318

/-! ## A078318.P9078134995408443560

`A000203(A064549(n+1)+1)`
-/

namespace A078318.P9078134995408443560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A064549 (n + 1) + 1).toNat

end

end A078318.P9078134995408443560

namespace A078318

/-- `A000203(A064549(n+1)+1)` -/
def P9078134995408443560.Spec : Prop :=
  ∀ n, P9078134995408443560.a n = A078318 (n + 1)

end A078318

/-! ## A078318.P14842170418107146823

`A000203(A224866(A348018(n+1)))`
-/

namespace A078318.P14842170418107146823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078318.P14842170418107146823

namespace A078318

/-- `A000203(A224866(A348018(n+1)))` -/
def P14842170418107146823.Spec : Prop :=
  ∀ n, P14842170418107146823.a n = A078318 (n + 1)

end A078318

/-! ## A078318.P16083620557240336626

`A000203(A355261((n+1)²)+1)`
-/

namespace A078318.P16083620557240336626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A355261 ((n + 1) ^ 2) + 1).toNat

end

end A078318.P16083620557240336626

namespace A078318

/-- `A000203(A355261((n+1)²)+1)` -/
def P16083620557240336626.Spec : Prop :=
  ∀ n, P16083620557240336626.a n = A078318 (n + 1)

end A078318

/-! ## A078318.P4930018699628970605

`A000203(A079228(A064549(n+1)))`
-/

namespace A078318.P4930018699628970605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A079228 (A064549 (n + 1)).toNat).toNat

end

end A078318.P4930018699628970605

namespace A078318

/-- `A000203(A079228(A064549(n+1)))` -/
def P4930018699628970605.Spec : Prop :=
  ∀ n, P4930018699628970605.a n = A078318 (n + 1)

end A078318

/-!
# A078319: Sum of distinct prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078319, the canonical program `A078319.P14888292905057710081` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078319 has offset 1).

The definition of A078319 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078319.P14888292905057710081

`A008472(A078310(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078319

/-- `A008472(A078310(n+1))` -/
def P14888292905057710081.Spec : Prop :=
  ∀ n, P14888292905057710081.a n = A078319 (n + 1)

theorem P14888292905057710081.correct : P14888292905057710081.Spec := by
  intro n
  simp only [A078319, Nat.add_sub_cancel]

end A078319

/-! ## A078319.P10071320459538548909

`∑{p}[(n+1)*∏{p}[n+1, #]+1, #]`
-/

namespace A078319.P10071320459538548909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A078319.P10071320459538548909

namespace A078319

/-- `∑{p}[(n+1)*∏{p}[n+1, #]+1, #]` -/
def P10071320459538548909.Spec : Prop :=
  ∀ n, (P10071320459538548909.a n : ℤ) = A078319 (n + 1)

end A078319

/-! ## A078319.P6042292786195260594

`∑{p}[A078322(n+1), #]`
-/

namespace A078319.P6042292786195260594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078319.P6042292786195260594

namespace A078319

/-- `∑{p}[A078322(n+1), #]` -/
def P6042292786195260594.Spec : Prop :=
  ∀ n, (P6042292786195260594.a n : ℤ) = A078319 (n + 1)

end A078319

/-! ## A078319.P16782892921555261727

`∑{p}[A064549(n+1)+1, #]`
-/

namespace A078319.P16782892921555261727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078319.P16782892921555261727

namespace A078319

/-- `∑{p}[A064549(n+1)+1, #]` -/
def P16782892921555261727.Spec : Prop :=
  ∀ n, (P16782892921555261727.a n : ℤ) = A078319 (n + 1)

end A078319

/-! ## A078319.P8718387726650041846

`∑{p}[(n+1)*A007947(n+1)+1, #]`
-/

namespace A078319.P8718387726650041846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078319.P8718387726650041846

namespace A078319

/-- `∑{p}[(n+1)*A007947(n+1)+1, #]` -/
def P8718387726650041846.Spec : Prop :=
  ∀ n, (P8718387726650041846.a n : ℤ) = A078319 (n + 1)

end A078319

/-! ## A078319.P7402425202679132227

`A008472((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078319.P7402425202679132227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078319.P7402425202679132227

namespace A078319

/-- `A008472((n+1)*∏{p}[n+1, #]+1)` -/
def P7402425202679132227.Spec : Prop :=
  ∀ n, P7402425202679132227.a n = A078319 (n + 1)

end A078319

/-! ## A078319.P1636199753268728169

`A001414(A078322(n+1))`
-/

namespace A078319.P1636199753268728169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078322 (n + 1)).toNat

end

end A078319.P1636199753268728169

namespace A078319

/-- `A001414(A078322(n+1))` -/
def P1636199753268728169.Spec : Prop :=
  ∀ n, P1636199753268728169.a n = A078319 (n + 1)

end A078319

/-! ## A078319.P13989683722830446186

`A008472(A064549(n+1)+1)`
-/

namespace A078319.P13989683722830446186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A064549 (n + 1) + 1).toNat

end

end A078319.P13989683722830446186

namespace A078319

/-- `A008472(A064549(n+1)+1)` -/
def P13989683722830446186.Spec : Prop :=
  ∀ n, P13989683722830446186.a n = A078319 (n + 1)

end A078319

/-!
# A078320: Sum of all prime factors of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078320, the canonical program `A078320.P3684429173825938426` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078320 has offset 1).

The definition of A078320 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078320.P3684429173825938426

`A001414(A078310(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078320

/-- `A001414(A078310(n+1))` -/
def P3684429173825938426.Spec : Prop :=
  ∀ n, P3684429173825938426.a n = A078320 (n + 1)

theorem P3684429173825938426.correct : P3684429173825938426.Spec := by
  intro n
  simp only [A078320, Nat.add_sub_cancel]

end A078320

/-! ## A078320.P4917703123549136951

`A001414(A064549(n+1)+1)`
-/

namespace A078320.P4917703123549136951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A064549 (n + 1) + 1).toNat

end

end A078320.P4917703123549136951

namespace A078320

/-- `A001414(A064549(n+1)+1)` -/
def P4917703123549136951.Spec : Prop :=
  ∀ n, P4917703123549136951.a n = A078320 (n + 1)

end A078320

/-! ## A078320.P13500856495075254138

`A001414((n+1)*A007947(n+1)+1)`
-/

namespace A078320.P13500856495075254138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078320.P13500856495075254138

namespace A078320

/-- `A001414((n+1)*A007947(n+1)+1)` -/
def P13500856495075254138.Spec : Prop :=
  ∀ n, P13500856495075254138.a n = A078320 (n + 1)

end A078320

/-! ## A078320.P8988405754585111657

`A001414((n+1)²/A003557(n+1)+1)`
-/

namespace A078320.P8988405754585111657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)).toNat

end

end A078320.P8988405754585111657

namespace A078320

/-- `A001414((n+1)²/A003557(n+1)+1)` -/
def P8988405754585111657.Spec : Prop :=
  ∀ n, P8988405754585111657.a n = A078320 (n + 1)

end A078320

/-! ## A078320.P16361034595640987798

`A001414((n+1)*A099636(n+1)*A340677(n+1)+1)`
-/

namespace A078320.P16361034595640987798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 ((n + 1 : ℤ) * (A099636 (n + 1) * A340677 (n + 1)) + 1).toNat

end

end A078320.P16361034595640987798

namespace A078320

/-- `A001414((n+1)*A099636(n+1)*A340677(n+1)+1)` -/
def P16361034595640987798.Spec : Prop :=
  ∀ n, P16361034595640987798.a n = A078320 (n + 1)

end A078320

/-!
# A078321: Euler's totient of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078321, the canonical program `A078321.P9458142871836543441` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078321 has offset 1).

The definition of A078321 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078321.P9458142871836543441

`A000010(A078310(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078321

/-- `A000010(A078310(n+1))` -/
def P9458142871836543441.Spec : Prop :=
  ∀ n, P9458142871836543441.a n = A078321 (n + 1)

theorem P9458142871836543441.correct : P9458142871836543441.Spec := by
  intro n
  simp only [A078321, Nat.add_sub_cancel]

end A078321

/-! ## A078321.P465909229591695369

`A000010((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078321.P465909229591695369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078321.P465909229591695369

namespace A078321

/-- `A000010((n+1)*∏{p}[n+1, #]+1)` -/
def P465909229591695369.Spec : Prop :=
  ∀ n, P465909229591695369.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P6036781839690929251

`A000010(A064549(n+1)+1)`
-/

namespace A078321.P6036781839690929251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A064549 (n + 1) + 1).toNat

end

end A078321.P6036781839690929251

namespace A078321

/-- `A000010(A064549(n+1)+1)` -/
def P6036781839690929251.Spec : Prop :=
  ∀ n, P6036781839690929251.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P3600367726826553513

`A000010((n+1)*A007947(n+1)+1)`
-/

namespace A078321.P3600367726826553513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078321.P3600367726826553513

namespace A078321

/-- `A000010((n+1)*A007947(n+1)+1)` -/
def P3600367726826553513.Spec : Prop :=
  ∀ n, P3600367726826553513.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P2161881565534662295

`A000010(abs((n+1)*A062953(n+1))+1)`
-/

namespace A078321.P2161881565534662295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (|(n + 1 : ℤ) * A062953 (n + 1)| + 1).toNat

end

end A078321.P2161881565534662295

namespace A078321

/-- `A000010(abs((n+1)*A062953(n+1))+1)` -/
def P2161881565534662295.Spec : Prop :=
  ∀ n, P2161881565534662295.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P4254124008380733091

`A000010(lcm(n+1, A007947(n+1)+1)-n)`
-/

namespace A078321.P4254124008380733091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (n + 1 : ℤ) (A007947 (n + 1) + 1) - n)

end

end A078321.P4254124008380733091

namespace A078321

/-- `A000010(lcm(n+1, A007947(n+1)+1)-n)` -/
def P4254124008380733091.Spec : Prop :=
  ∀ n, P4254124008380733091.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P9815536027485866264

`A000010(A224866(A348018(n+1)))`
-/

namespace A078321.P9815536027485866264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A224866 (A348018 (n + 1)).toNat).toNat

end

end A078321.P9815536027485866264

namespace A078321

/-- `A000010(A224866(A348018(n+1)))` -/
def P9815536027485866264.Spec : Prop :=
  ∀ n, P9815536027485866264.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P180186787259421889

`A000010(lcm(2, (n+1)²/A003557(n+1)+1))`
-/

namespace A078321.P180186787259421889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A003557 (n + 1) : ℚ) + 1)))

end

end A078321.P180186787259421889

namespace A078321

/-- `A000010(lcm(2, (n+1)²/A003557(n+1)+1))` -/
def P180186787259421889.Spec : Prop :=
  ∀ n, P180186787259421889.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P16587079156644152351

`A109606((n+1)*∏{p}[n+1, #]+1)+1`
-/

namespace A078321.P16587079156644152351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) + 1

end

end A078321.P16587079156644152351

namespace A078321

/-- `A109606((n+1)*∏{p}[n+1, #]+1)+1` -/
def P16587079156644152351.Spec : Prop :=
  ∀ n, P16587079156644152351.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P12257723532424955272

`A000010(A355261((n+1)²)+1)`
-/

namespace A078321.P12257723532424955272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A355261 ((n + 1) ^ 2) + 1).toNat

end

end A078321.P12257723532424955272

namespace A078321

/-- `A000010(A355261((n+1)²)+1)` -/
def P12257723532424955272.Spec : Prop :=
  ∀ n, P12257723532424955272.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P5982020260980792832

`A109606((n+1)*A007947(n+1)+1)+1`
-/

namespace A078321.P5982020260980792832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat + 1

end

end A078321.P5982020260980792832

namespace A078321

/-- `A109606((n+1)*A007947(n+1)+1)+1` -/
def P5982020260980792832.Spec : Prop :=
  ∀ n, P5982020260980792832.a n = A078321 (n + 1)

theorem P5982020260980792832.correct : P5982020260980792832.Spec := by
  intro n
  simp only [A078321, Nat.add_sub_cancel, A078321.P5982020260980792832.a, A078321.P9458142871836543441.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A078310, A078310.P14219530768046252322.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078321

/-! ## A078321.P13726927810263285485

`A000010(A079228(A064549(n+1)))`
-/

namespace A078321.P13726927810263285485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079228 (A064549 (n + 1)).toNat).toNat

end

end A078321.P13726927810263285485

namespace A078321

/-- `A000010(A079228(A064549(n+1)))` -/
def P13726927810263285485.Spec : Prop :=
  ∀ n, P13726927810263285485.a n = A078321 (n + 1)

end A078321

/-! ## A078321.P11450928752462625482

`A000010(A079228((n+1)*A007947(n+1)))`
-/

namespace A078321.P11450928752462625482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A079228 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A078321.P11450928752462625482

namespace A078321

/-- `A000010(A079228((n+1)*A007947(n+1)))` -/
def P11450928752462625482.Spec : Prop :=
  ∀ n, P11450928752462625482.a n = A078321 (n + 1)

end A078321

/-!
# A078322: a(n) = rad(n*rad(n)+1), where rad = A007947 (squarefree kernel).

The programs for A078322, the canonical program `A078322.P10930946867228013755` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078322 has offset 1).

The definition of A078322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947((n+1)*A007947(n+1)+1)` (program `A078322.P10930946867228013755`, by `A078322.P10930946867228013755.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078322.P10930946867228013755

`A007947((n+1)*A007947(n+1)+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078322

/-- `A007947((n+1)*A007947(n+1)+1)` -/
def P10930946867228013755.Spec : Prop :=
  ∀ n, P10930946867228013755.a n = A078322 (n + 1)

theorem P10930946867228013755.correct : P10930946867228013755.Spec := by
  intro n
  simp only [A078322, Nat.add_sub_cancel]

end A078322

/-! ## A078322.P10813970106250221507

`∏{p}[(n+1)*∏{p}[n+1, #]+1, #]`
-/

namespace A078322.P10813970106250221507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A078322.P10813970106250221507

namespace A078322

/-- `∏{p}[(n+1)*∏{p}[n+1, #]+1, #]` -/
def P10813970106250221507.Spec : Prop :=
  ∀ n, (P10813970106250221507.a n : ℤ) = A078322 (n + 1)

end A078322

/-! ## A078322.P5791389688057926627

`∏{p}[lcm(∏{p}[n+1, #]+1, n+1)-n, #]`
-/

namespace A078322.P5791389688057926627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∏ p ∈ Nat.primeFactors (f2 n), p + 1) (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078322.P5791389688057926627

namespace A078322

/-- `∏{p}[lcm(∏{p}[n+1, #]+1, n+1)-n, #]` -/
def P5791389688057926627.Spec : Prop :=
  ∀ n, (P5791389688057926627.a n : ℤ) = A078322 (n + 1)

end A078322

/-! ## A078322.P8142577046834383332

`∏{p}[A078310(n+1), #]`
-/

namespace A078322.P8142577046834383332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078322.P8142577046834383332

namespace A078322

/-- `∏{p}[A078310(n+1), #]` -/
def P8142577046834383332.Spec : Prop :=
  ∀ n, (P8142577046834383332.a n : ℤ) = A078322 (n + 1)

end A078322

/-! ## A078322.P16974290948834625900

`∏{p}[A064549(n+1)+1, #]`
-/

namespace A078322.P16974290948834625900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078322.P16974290948834625900

namespace A078322

/-- `∏{p}[A064549(n+1)+1, #]` -/
def P16974290948834625900.Spec : Prop :=
  ∀ n, (P16974290948834625900.a n : ℤ) = A078322 (n + 1)

end A078322

/-! ## A078322.P6925306155943952628

`A007947(A078310(n+1))`
-/

namespace A078322.P6925306155943952628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A078310 (n + 1)).toNat

end

end A078322.P6925306155943952628

namespace A078322

/-- `A007947(A078310(n+1))` -/
def P6925306155943952628.Spec : Prop :=
  ∀ n, P6925306155943952628.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P3332136598251649859

`A007947(A064549(n+1)+1)`
-/

namespace A078322.P3332136598251649859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A064549 (n + 1) + 1).toNat

end

end A078322.P3332136598251649859

namespace A078322

/-- `A007947(A064549(n+1)+1)` -/
def P3332136598251649859.Spec : Prop :=
  ∀ n, P3332136598251649859.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P1675455789457085746

`A015052(A064549(n+1)+1)`
-/

namespace A078322.P1675455789457085746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A064549 (n + 1) + 1).toNat

end

end A078322.P1675455789457085746

namespace A078322

/-- `A015052(A064549(n+1)+1)` -/
def P1675455789457085746.Spec : Prop :=
  ∀ n, P1675455789457085746.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P14444528585664405556

`A015053(A064549(n+1)+1)`
-/

namespace A078322.P14444528585664405556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A064549 (n + 1) + 1).toNat

end

end A078322.P14444528585664405556

namespace A078322

/-- `A015053(A064549(n+1)+1)` -/
def P14444528585664405556.Spec : Prop :=
  ∀ n, P14444528585664405556.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P3290285584838048468

`A019530(A064549(n+1)+1)`
-/

namespace A078322.P3290285584838048468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (A064549 (n + 1) + 1).toNat

end

end A078322.P3290285584838048468

namespace A078322

/-- `A019530(A064549(n+1)+1)` -/
def P3290285584838048468.Spec : Prop :=
  ∀ n, P3290285584838048468.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P5991248602509391335

`A019555(A064549(n+1)+1)`
-/

namespace A078322.P5991248602509391335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A064549 (n + 1) + 1).toNat

end

end A078322.P5991248602509391335

namespace A078322

/-- `A019555(A064549(n+1)+1)` -/
def P5991248602509391335.Spec : Prop :=
  ∀ n, P5991248602509391335.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P11302229509431403728

`A053166(A064549(n+1)+1)`
-/

namespace A078322.P11302229509431403728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A064549 (n + 1) + 1).toNat

end

end A078322.P11302229509431403728

namespace A078322

/-- `A053166(A064549(n+1)+1)` -/
def P11302229509431403728.Spec : Prop :=
  ∀ n, P11302229509431403728.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P9207080366546534633

`A056554(A064549(n+1)+1)`
-/

namespace A078322.P9207080366546534633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056554 (A064549 (n + 1) + 1).toNat

end

end A078322.P9207080366546534633

namespace A078322

/-- `A056554(A064549(n+1)+1)` -/
def P9207080366546534633.Spec : Prop :=
  ∀ n, P9207080366546534633.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P15485454457310138593

`abs(A062953(A064549(n+1)+1))`
-/

namespace A078322.P15485454457310138593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062953 (A064549 (n + 1) + 1).toNat|

end

end A078322.P15485454457310138593

namespace A078322

/-- `abs(A062953(A064549(n+1)+1))` -/
def P15485454457310138593.Spec : Prop :=
  ∀ n, P15485454457310138593.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P16834066692871955776

`A076618(A064549(n+1)+1)-1`
-/

namespace A078322.P16834066692871955776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (A064549 (n + 1) + 1).toNat - 1

end

end A078322.P16834066692871955776

namespace A078322

/-- `A076618(A064549(n+1)+1)-1` -/
def P16834066692871955776.Spec : Prop :=
  ∀ n, P16834066692871955776.a n = A078322 (n + 1)

theorem P16834066692871955776.correct : P16834066692871955776.Spec := by
  intro n
  simp only [A078322, Nat.add_sub_cancel, A078322.P16834066692871955776.a, A078322.P10930946867228013755.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, A076618, A076618.P8099091245670450071.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078322

/-! ## A078322.P5669161835562249997

`A015053(A078310(2*n+1-n))`
-/

namespace A078322.P5669161835562249997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A078310 (2 * n + 1 - n)).toNat

end

end A078322.P5669161835562249997

namespace A078322

/-- `A015053(A078310(2*n+1-n))` -/
def P5669161835562249997.Spec : Prop :=
  ∀ n, P5669161835562249997.a n = A078322 (n + 1)

end A078322

/-! ## A078322.P9783941676044004621

`A007947(A079228((n+1)*A007947(n+1)))`
-/

namespace A078322.P9783941676044004621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A079228 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A078322.P9783941676044004621

namespace A078322

/-- `A007947(A079228((n+1)*A007947(n+1)))` -/
def P9783941676044004621.Spec : Prop :=
  ∀ n, P9783941676044004621.a n = A078322 (n + 1)

end A078322

/-!
# A078323: Arithmetic derivative of n*rad(n)+1, where rad = A007947 (squarefree kernel).

The programs for A078323, the canonical program `A078323.P5728057834281854607` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078323 has offset 1).

The definition of A078323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078323.P5728057834281854607

`A003415(A078310(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078323

/-- `A003415(A078310(n+1))` -/
def P5728057834281854607.Spec : Prop :=
  ∀ n, P5728057834281854607.a n = A078323 (n + 1)

theorem P5728057834281854607.correct : P5728057834281854607.Spec := by
  intro n
  simp only [A078323, Nat.add_sub_cancel]

end A078323

/-! ## A078323.P729670662650203359

`∑{d}[A078310(n+1), A300251(#)]`
-/

namespace A078323.P729670662650203359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078323.P729670662650203359

namespace A078323

/-- `∑{d}[A078310(n+1), A300251(#)]` -/
def P729670662650203359.Spec : Prop :=
  ∀ n, P729670662650203359.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P8484400453260187623

`∑{d}[A064549(n+1)+1, A300251(#)]`
-/

namespace A078323.P8484400453260187623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078323.P8484400453260187623

namespace A078323

/-- `∑{d}[A064549(n+1)+1, A300251(#)]` -/
def P8484400453260187623.Spec : Prop :=
  ∀ n, P8484400453260187623.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P12117740658937194103

`∑{d}[(n+1)*A007947(n+1)+1, A300251(#)]`
-/

namespace A078323.P12117740658937194103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078323.P12117740658937194103

namespace A078323

/-- `∑{d}[(n+1)*A007947(n+1)+1, A300251(#)]` -/
def P12117740658937194103.Spec : Prop :=
  ∀ n, P12117740658937194103.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P4625746069981971927

`∑{d}[(n+1)*A076618(n+1)-n, A300251(#)]`
-/

namespace A078323.P4625746069981971927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076618 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078323.P4625746069981971927

namespace A078323

/-- `∑{d}[(n+1)*A076618(n+1)-n, A300251(#)]` -/
def P4625746069981971927.Spec : Prop :=
  ∀ n, P4625746069981971927.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P3233209367660473754

`∑{d}[A003557(n+1)*A078615(n+1)+1, A300251(#)]`
-/

namespace A078323.P3233209367660473754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A078615 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078323.P3233209367660473754

namespace A078323

/-- `∑{d}[A003557(n+1)*A078615(n+1)+1, A300251(#)]` -/
def P3233209367660473754.Spec : Prop :=
  ∀ n, P3233209367660473754.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P1876526176193530734

`∑{d}[A053143(n+1)*A336643(n+1)+1, A300251(#)]`
-/

namespace A078323.P1876526176193530734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A336643 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078323.P1876526176193530734

namespace A078323

/-- `∑{d}[A053143(n+1)*A336643(n+1)+1, A300251(#)]` -/
def P1876526176193530734.Spec : Prop :=
  ∀ n, P1876526176193530734.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P12556806063582200525

`A003415((n+1)*∏{p}[n+1, #]+1)`
-/

namespace A078323.P12556806063582200525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1)

end

end A078323.P12556806063582200525

namespace A078323

/-- `A003415((n+1)*∏{p}[n+1, #]+1)` -/
def P12556806063582200525.Spec : Prop :=
  ∀ n, P12556806063582200525.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P11333540869182263015

`A168036((n+1)*∏{p}[n+1, #]+1)+(n+1)*∏{p}[n+1, #]+1`
-/

namespace A078323.P11333540869182263015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) + 1) + (((n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p) + 1 : ℕ) : ℤ)

end

end A078323.P11333540869182263015

namespace A078323

/-- `A168036((n+1)*∏{p}[n+1, #]+1)+(n+1)*∏{p}[n+1, #]+1` -/
def P11333540869182263015.Spec : Prop :=
  ∀ n, P11333540869182263015.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P744824568343465698

`A003415(A064549(n+1)+1)`
-/

namespace A078323.P744824568343465698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A064549 (n + 1) + 1).toNat

end

end A078323.P744824568343465698

namespace A078323

/-- `A003415(A064549(n+1)+1)` -/
def P744824568343465698.Spec : Prop :=
  ∀ n, P744824568343465698.a n = A078323 (n + 1)

end A078323

/-! ## A078323.P16796429386977406511

`A003415((n+1)*A007947(n+1)+1)`
-/

namespace A078323.P16796429386977406511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 ((n + 1 : ℤ) * A007947 (n + 1) + 1).toNat

end

end A078323.P16796429386977406511

namespace A078323

/-- `A003415((n+1)*A007947(n+1)+1)` -/
def P16796429386977406511.Spec : Prop :=
  ∀ n, P16796429386977406511.a n = A078323 (n + 1)

end A078323

/-!
# A078324: Primes of the form m*rad(m)+1, where rad = A007947 (squarefree kernel).

The programs for A078324, there is no canonical definition to state claims against.
-/

/-! ## A078324.P12016876026899842178

`p?[A078325(n+1)]`
-/

namespace A078324.P12016876026899842178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P12016876026899842178

/-! ## A078324.P12655716371615740690

`p?[A224866(n+1)]`
-/

namespace A078324.P12655716371615740690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P12655716371615740690

/-! ## A078324.P14818359607529665477

`p?[A001694(n+1)+1]`
-/

namespace A078324.P14818359607529665477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P14818359607529665477

/-! ## A078324.P10809421245557261878

`p?[A076446(n)+a(n-1)]` with `a(0)=2`
-/

namespace A078324.P10809421245557261878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A076446 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P10809421245557261878

/-! ## A078324.P4251666876084685143

`p?[A084371(n+1)*A306458(n+1)+1]`
-/

namespace A078324.P4251666876084685143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1) * A306458 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P4251666876084685143

/-! ## A078324.P6210252784324998375

`p?[gcd(A000038(n)², A224866(ϕ²-(ϕ-n)))]`
-/

namespace A078324.P6210252784324998375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A224866 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A078324.P6210252784324998375

/-! ## A078324.P10491383131583094405

`(A000041(n)%2)!*p?[A224866(ϕ²-(ϕ-n))]`
-/

namespace A078324.P10491383131583094405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P10491383131583094405

/-! ## A078324.P12337290088806291562

`p?[A078325(A008619(n))-A000035(n)]`
-/

namespace A078324.P12337290088806291562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (A008619 n).toNat - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P12337290088806291562

/-! ## A078324.P1994936146512733228

`p?[A078325(A008619(n))-A010059(n)]`
-/

namespace A078324.P1994936146512733228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (A008619 n).toNat - A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P1994936146512733228

/-! ## A078324.P9441668211753406686

`p?[A078325(A008619(n))-A059841(n)]`
-/

namespace A078324.P9441668211753406686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (A008619 n).toNat - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078324.P9441668211753406686

/-! ## A078324.P6520063984474388064

`A000027(p?[A224866(ϕ²-(ϕ-n))])`
-/

namespace A078324.P6520063984474388064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078324.P6520063984474388064

/-! ## A078324.P488001163704078346

`∩[A078325(n+1), A173626(n+1)]`
-/

namespace A078324.P488001163704078346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P488001163704078346

/-! ## A078324.P15581234545421714691

`∩[A173626(n+1), A224866(n+1)]`
-/

namespace A078324.P15581234545421714691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P15581234545421714691

/-! ## A078324.P3859404984448911563

`∩[A002313(n+1), A078325(n+1)]`
-/

namespace A078324.P3859404984448911563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P3859404984448911563

/-! ## A078324.P13653322071674805526

`∩[A002313(n+1), A224866(n+1)]`
-/

namespace A078324.P13653322071674805526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P13653322071674805526

/-! ## A078324.P17611472956204862283

`∩[A055025(n+1), A078325(n+1)]`
-/

namespace A078324.P17611472956204862283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P17611472956204862283

/-! ## A078324.P7374639272307849748

`∩[A078325(n+1), A109515(n+1)]`
-/

namespace A078324.P7374639272307849748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P7374639272307849748

/-! ## A078324.P2879463433000928528

`∩[A109515(n+1), A224866(n+1)]`
-/

namespace A078324.P2879463433000928528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P2879463433000928528

/-! ## A078324.P3459539225271973925

`∩[A078325(n+1), A266987(n+1)]`
-/

namespace A078324.P3459539225271973925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P3459539225271973925

/-! ## A078324.P12148537950472931876

`∩[A224866(n+1), A266987(n+1)]`
-/

namespace A078324.P12148537950472931876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078324.P12148537950472931876

/-!
# A078325: Squarefree numbers of the form m*rad(m)+1, where rad = A007947 (squarefree kernel).

The programs for A078325, there is no canonical definition to state claims against.
-/

/-! ## A078325.P2761190547957308054

`record[A007947(A224866(n+1))]`
-/

namespace A078325.P2761190547957308054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A224866 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P2761190547957308054

/-! ## A078325.P7240214743185638211

`filter[A224866(n+1), A008966(#)]`
-/

namespace A078325.P7240214743185638211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A078325.P7240214743185638211

/-! ## A078325.P11711417086883210423

`record[A007913(A001694(n+1)+1)]`
-/

namespace A078325.P11711417086883210423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A001694 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P11711417086883210423

/-! ## A078325.P9394069078737831218

`record[A007947(A001694(n+1)+1)]`
-/

namespace A078325.P9394069078737831218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A001694 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P9394069078737831218

/-! ## A078325.P435077249614411068

`∩[A005117(n+1), A224866(n+1)]`
-/

namespace A078325.P435077249614411068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P435077249614411068

/-! ## A078325.P13325175144801895310

`filter[A224866(n+1), A323154(#)]`
-/

namespace A078325.P13325175144801895310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A078325.P13325175144801895310

/-! ## A078325.P9456942873570346205

`∩[A224866(n+1), A348506(n+1)]`
-/

namespace A078325.P9456942873570346205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P9456942873570346205

/-! ## A078325.P17162085584690934775

`∩[A089269(n+1), A224866(n+1)]`
-/

namespace A078325.P17162085584690934775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P17162085584690934775

/-! ## A078325.P10177858843374714669

`record[A007947(n+2)/A055231(n+1)]`
-/

namespace A078325.P10177858843374714669
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 2) : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P10177858843374714669

/-! ## A078325.P17612609832956736279

`record[A055231(A001694(n+1)+1)]`
-/

namespace A078325.P17612609832956736279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A001694 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P17612609832956736279

/-! ## A078325.P14465886086086707946

`record[A055231(n+2)/A055231(n+1)]`
-/

namespace A078325.P14465886086086707946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055231 (n + 2) : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P14465886086086707946

/-! ## A078325.P8530070428682712227

`∩[A034044(n+1), A224866(n+1)]`
-/

namespace A078325.P8530070428682712227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P8530070428682712227

/-! ## A078325.P2671359649477857133

`∩[A064594(n+1), A224866(n+1)]`
-/

namespace A078325.P2671359649477857133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P2671359649477857133

/-! ## A078325.P3740944667630666612

`∩[A144338(n+1), A224866(n+1)]`
-/

namespace A078325.P3740944667630666612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P3740944667630666612

/-! ## A078325.P918700548406465

`record[A007913(A057521(n+1)+1)]`
-/

namespace A078325.P918700548406465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A057521 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P918700548406465

/-! ## A078325.P18197175717146276356

`record[A007947(A057521(n+1)+1)]`
-/

namespace A078325.P18197175717146276356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A057521 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P18197175717146276356

/-! ## A078325.P16603785642271906276

`∩[A224866(n+1), A394256(n+1)]`
-/

namespace A078325.P16603785642271906276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394256 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078325.P16603785642271906276

/-! ## A078325.P12107888124397323452

`record[A078322(A003557(n+1))]`
-/

namespace A078325.P12107888124397323452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078325.P12107888124397323452

/-!
# A078326: Numbers n such that n-1 and n are a pair of consecutive powerful numbers.

The programs for A078326, there is no canonical definition to state claims against.
-/

/-! ## A078326.P17564353247811845128

`A060355(n+1)+1`
-/

namespace A078326.P17564353247811845128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060355 (n + 1) + 1

end

end A078326.P17564353247811845128

/-! ## A078326.P7155829598856784506

`∩[A240591(n+1), A327875(n+1)]+1`
-/

namespace A078326.P7155829598856784506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A078326.P7155829598856784506

/-! ## A078326.P5625649698278281019

`∩[A216323(n+1), A327875(n+1)]+1`
-/

namespace A078326.P5625649698278281019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A078326.P5625649698278281019

/-! ## A078326.P8509744539904923927

`A001694(lt[A076446(n+1), 2]+2)`
-/

namespace A078326.P8509744539904923927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076446 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A078326.P8509744539904923927

/-! ## A078326.P7366749647307444567

`∩[A001694(n+1), A224866(n+1)]`
-/

namespace A078326.P7366749647307444567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078326.P7366749647307444567

/-!
# A078327: Numbers k such that A078142(k) = A006530(k).

The programs for A078327, the canonical program `A078327.P16613963034878203912` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078327 has offset 1).

The definition of A078327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078327.P16613963034878203912

`eq[A006530(n+1), A078142(n+1)]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A078327

/-- `eq[A006530(n+1), A078142(n+1)]+1` -/
def P16613963034878203912.Spec : Prop :=
  ∀ n, (P16613963034878203912.a n : ℤ) = A078327 (n + 1)

theorem P16613963034878203912.correct : P16613963034878203912.Spec := by
  intro n
  simp only [A078327, Nat.add_sub_cancel]

end A078327

/-! ## A078327.P9833060347826868386

`eq[A078142(n+1), A111089(n+1)]+1`
-/

namespace A078327.P9833060347826868386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078142 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078327.P9833060347826868386

namespace A078327

/-- `eq[A078142(n+1), A111089(n+1)]+1` -/
def P9833060347826868386.Spec : Prop :=
  ∀ n, (P9833060347826868386.a n : ℤ) = A078327 (n + 1)

end A078327

/-! ## A078327.P16358622967844735480

`∩[A111905(n+1), A362981(n+1)]`
-/

namespace A078327.P16358622967844735480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078327.P16358622967844735480

namespace A078327

/-- `∩[A111905(n+1), A362981(n+1)]` -/
def P16358622967844735480.Spec : Prop :=
  ∀ n, (P16358622967844735480.a n : ℤ) = A078327 (n + 1)

end A078327

/-! ## A078327.P1175653836032994009

`eq[A006530(A035877(n)), A285203(n+1)]`
-/

namespace A078327.P1175653836032994009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A035877 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078327.P1175653836032994009

namespace A078327

/-- `eq[A006530(A035877(n)), A285203(n+1)]` -/
def P1175653836032994009.Spec : Prop :=
  ∀ n, (P1175653836032994009.a n : ℤ) = A078327 (n + 1)

end A078327

/-! ## A078327.P16360489964717471060

`eq[A126760(n), A279224(A094473(3*n+1))]`
-/

namespace A078327.P16360489964717471060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279224 (A094473 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078327.P16360489964717471060

namespace A078327

/-- `eq[A126760(n), A279224(A094473(3*n+1))]` -/
def P16360489964717471060.Spec : Prop :=
  ∀ n, (P16360489964717471060.a n : ℤ) = A078327 (n + 1)

end A078327

/-!
# A078328: Least m such that A078142(m) = A006530(m) = n-th prime.

The programs for A078328, there is no canonical definition to state claims against.
-/

/-! ## A078328.P8345047787522074483

`A358170(A007827(n)*A340019(n+1))`
-/

namespace A078328.P8345047787522074483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 (A007827 n * A340019 (n + 1)).toNat

end

end A078328.P8345047787522074483

/-!
# A078329: Primes p such that mu(p+1)=-1, where mu denotes the moebius function.

The programs for A078329, there is no canonical definition to state claims against.
-/

/-! ## A078329.P5686026737535117522

`∩[A049097(n+1), A075431(n+1)]`
-/

namespace A078329.P5686026737535117522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P5686026737535117522

/-! ## A078329.P18011597598809937458

`∩[A065301(n+1), A075431(n+1)]`
-/

namespace A078329.P18011597598809937458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P18011597598809937458

/-! ## A078329.P7015125028722494834

`∩[A002313(n+1), A075431(n+1)]`
-/

namespace A078329.P7015125028722494834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P7015125028722494834

/-! ## A078329.P8416973348797977171

`∩[A055025(n+1), A075431(n+1)]`
-/

namespace A078329.P8416973348797977171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P8416973348797977171

/-! ## A078329.P14090745608932795516

`∩[A075431(n+1), A266987(n+1)]`
-/

namespace A078329.P14090745608932795516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P14090745608932795516

/-! ## A078329.P9228078719947122189

`∩[A075431(n+1), A386424(n+1)]`
-/

namespace A078329.P9228078719947122189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P9228078719947122189

/-! ## A078329.P10532285306479278829

`∩[A075431(n+1), A347877(n+1)]`
-/

namespace A078329.P10532285306479278829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347877 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P10532285306479278829

/-! ## A078329.P182677290625823823

`∩[A075431(n+1), A281292(n+1)]`
-/

namespace A078329.P182677290625823823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P182677290625823823

/-! ## A078329.P220420500071234166

`∩[A075431(n+1), A224450(n+1)]`
-/

namespace A078329.P220420500071234166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P220420500071234166

/-! ## A078329.P3450927869071584180

`p?[or(n, A353629(n+1))+n]`
-/

namespace A078329.P3450927869071584180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A353629 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078329.P3450927869071584180

/-! ## A078329.P1010685218655525206

`∩[A065300(n+1), A075431(n+1)]`
-/

namespace A078329.P1010685218655525206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P1010685218655525206

/-! ## A078329.P1483331662166511716

`p?[and(n, A008683(n+1))]`
-/

namespace A078329.P1483331662166511716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078329.P1483331662166511716

/-! ## A078329.P2019097171587123118

`p?[-xor(n, A008683(n+2))]`
-/

namespace A078329.P2019097171587123118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (A008683 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078329.P2019097171587123118

/-! ## A078329.P10653512060955657847

`p?[-((n+2)*A008683(n+3))]`
-/

namespace A078329.P10653512060955657847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 2 : ℤ) * A008683 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078329.P10653512060955657847

/-! ## A078329.P9736010788504858065

`record[and(A008683(n+3), A020639(n+2))]`
-/

namespace A078329.P9736010788504858065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008683 (n + 3)) (A020639 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078329.P9736010788504858065

/-! ## A078329.P5614186144079613367

`∩[A003654(n+1), A075431(n+1)]`
-/

namespace A078329.P5614186144079613367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P5614186144079613367

/-! ## A078329.P12350995422358948142

`∩[A003814(n+1), A075431(n+1)]`
-/

namespace A078329.P12350995422358948142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P12350995422358948142

/-! ## A078329.P16662264512301726731

`∩[A031396(n+1), A075431(n+1)]`
-/

namespace A078329.P16662264512301726731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P16662264512301726731

/-! ## A078329.P1187986742864988850

`∩[A025284(n+1), A075431(n+1)]`
-/

namespace A078329.P1187986742864988850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P1187986742864988850

/-! ## A078329.P9568917240175828320

`∩[A075431(n+1), A125022(n+1)]`
-/

namespace A078329.P9568917240175828320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078329.P9568917240175828320

/-!
# A078330: Primes p such that mu(p-1) = -1, where mu is the Moebius function; that is, p-1 is squarefree and has an odd number of prime factors.

The programs for A078330, the canonical program `A078330.P2471805559415879060` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078330 has offset 1).

The definition of A078330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078330.P16464793205418109901

`p?[A255219(n+1)]`
-/

namespace A078330.P16464793205418109901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078330.P16464793205418109901

namespace A078330

/-- `p?[A255219(n+1)]` -/
def P16464793205418109901.Spec : Prop :=
  ∀ n, P16464793205418109901.a n = A078330 (n + 1)

end A078330

/-! ## A078330.P2044793572443067149

`∩[A039787(n+1), A255219(n+1)]`
-/

namespace A078330.P2044793572443067149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P2044793572443067149

namespace A078330

/-- `∩[A039787(n+1), A255219(n+1)]` -/
def P2044793572443067149.Spec : Prop :=
  ∀ n, (P2044793572443067149.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P2471805559415879060

`∩[A039787(n+1), A062304(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A078330

/-- `∩[A039787(n+1), A062304(n+1)]` -/
def P2471805559415879060.Spec : Prop :=
  ∀ n, (P2471805559415879060.a n : ℤ) = A078330 (n + 1)

theorem P2471805559415879060.correct : P2471805559415879060.Spec := by
  intro n
  simp only [A078330, Nat.add_sub_cancel]

end A078330

/-! ## A078330.P14485645504400523401

`∩[A255219(n+1), A348283(n+1)]`
-/

namespace A078330.P14485645504400523401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P14485645504400523401

namespace A078330

/-- `∩[A255219(n+1), A348283(n+1)]` -/
def P14485645504400523401.Spec : Prop :=
  ∀ n, (P14485645504400523401.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P2943418743918921448

`∩[A002145(n+1), A062304(n+1)]`
-/

namespace A078330.P2943418743918921448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P2943418743918921448

namespace A078330

/-- `∩[A002145(n+1), A062304(n+1)]` -/
def P2943418743918921448.Spec : Prop :=
  ∀ n, (P2943418743918921448.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P10136936388573416511

`∩[A045326(n+1), A062304(n+1)]`
-/

namespace A078330.P10136936388573416511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P10136936388573416511

namespace A078330

/-- `∩[A045326(n+1), A062304(n+1)]` -/
def P10136936388573416511.Spec : Prop :=
  ∀ n, (P10136936388573416511.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P10383872648492882031

`∩[A002145(n+1), A255219(n+1)]`
-/

namespace A078330.P10383872648492882031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P10383872648492882031

namespace A078330

/-- `∩[A002145(n+1), A255219(n+1)]` -/
def P10383872648492882031.Spec : Prop :=
  ∀ n, (P10383872648492882031.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P10873761173155871963

`∩[A045326(n+1), A255219(n+1)]`
-/

namespace A078330.P10873761173155871963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P10873761173155871963

namespace A078330

/-- `∩[A045326(n+1), A255219(n+1)]` -/
def P10873761173155871963.Spec : Prop :=
  ∀ n, (P10873761173155871963.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P11527624410690216286

`∩[A062304(n+1), A085760(n+1)]`
-/

namespace A078330.P11527624410690216286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P11527624410690216286

namespace A078330

/-- `∩[A062304(n+1), A085760(n+1)]` -/
def P11527624410690216286.Spec : Prop :=
  ∀ n, (P11527624410690216286.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P15021739865995341134

`∩[A062304(n+1), A197504(n+1)]`
-/

namespace A078330.P15021739865995341134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P15021739865995341134

namespace A078330

/-- `∩[A062304(n+1), A197504(n+1)]` -/
def P15021739865995341134.Spec : Prop :=
  ∀ n, (P15021739865995341134.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P1730001917765769909

`∩[A062304(n+1), A332555(n+1)]`
-/

namespace A078330.P1730001917765769909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P1730001917765769909

namespace A078330

/-- `∩[A062304(n+1), A332555(n+1)]` -/
def P1730001917765769909.Spec : Prop :=
  ∀ n, (P1730001917765769909.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P3835008666018795777

`∩[A062304(n+1), A285015(n+1)]`
-/

namespace A078330.P3835008666018795777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P3835008666018795777

namespace A078330

/-- `∩[A062304(n+1), A285015(n+1)]` -/
def P3835008666018795777.Spec : Prop :=
  ∀ n, (P3835008666018795777.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P6185642078570458638

`p?[A008683(2*n+1)*(4*n+2)+1]`
-/

namespace A078330.P6185642078570458638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n + 1) * (4 * n + 2 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078330.P6185642078570458638

namespace A078330

/-- `p?[A008683(2*n+1)*(4*n+2)+1]` -/
def P6185642078570458638.Spec : Prop :=
  ∀ n, P6185642078570458638.a n = A078330 (n + 1)

end A078330

/-! ## A078330.P6464419105223263517

`∩[A062304(n+1), A292762(n+1)]`
-/

namespace A078330.P6464419105223263517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P6464419105223263517

namespace A078330

/-- `∩[A062304(n+1), A292762(n+1)]` -/
def P6464419105223263517.Spec : Prop :=
  ∀ n, (P6464419105223263517.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P4362511504369292689

`∩[A039786(n+1), A255219(n+1)]`
-/

namespace A078330.P4362511504369292689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P4362511504369292689

namespace A078330

/-- `∩[A039786(n+1), A255219(n+1)]` -/
def P4362511504369292689.Spec : Prop :=
  ∀ n, (P4362511504369292689.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P8997128251432238464

`∩[A049196(n+1), A062304(n+1)]`
-/

namespace A078330.P8997128251432238464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P8997128251432238464

namespace A078330

/-- `∩[A049196(n+1), A062304(n+1)]` -/
def P8997128251432238464.Spec : Prop :=
  ∀ n, (P8997128251432238464.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P14049397205080760747

`∩[A049149(n+1), A062304(n+1)]`
-/

namespace A078330.P14049397205080760747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P14049397205080760747

namespace A078330

/-- `∩[A049149(n+1), A062304(n+1)]` -/
def P14049397205080760747.Spec : Prop :=
  ∀ n, (P14049397205080760747.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P11378639628370533151

`∩[A049098(n+1), A062304(n+1)]`
-/

namespace A078330.P11378639628370533151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P11378639628370533151

namespace A078330

/-- `∩[A049098(n+1), A062304(n+1)]` -/
def P11378639628370533151.Spec : Prop :=
  ∀ n, (P11378639628370533151.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P9576789293936839188

`∩[A062304(n+1), A069579(n+1)]`
-/

namespace A078330.P9576789293936839188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P9576789293936839188

namespace A078330

/-- `∩[A062304(n+1), A069579(n+1)]` -/
def P9576789293936839188.Spec : Prop :=
  ∀ n, (P9576789293936839188.a n : ℤ) = A078330 (n + 1)

end A078330

/-! ## A078330.P11393455280631429384

`∩[A040116(n+1), A255219(n+1)]`
-/

namespace A078330.P11393455280631429384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078330.P11393455280631429384

namespace A078330

/-- `∩[A040116(n+1), A255219(n+1)]` -/
def P11393455280631429384.Spec : Prop :=
  ∀ n, (P11393455280631429384.a n : ℤ) = A078330 (n + 1)

end A078330

/-!
# A078331: First prime such that p^2==1 (mod n).

The programs for A078331, there is no canonical definition to state claims against.
-/

/-! ## A078331.P14029238841892462044

`A093868(A259445(n+1)%A102634(n+1))`
-/

namespace A078331.P14029238841892462044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (Int.tmod (A259445 (n + 1)) (A102634 (n + 1))).toNat

end

end A078331.P14029238841892462044

/-! ## A078331.P17927045791354533708

`A194603(A056554(n+1)^A275043(n))`
-/

namespace A078331.P17927045791354533708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (SequenceMachineLib.roundAway ((A056554 (n + 1) : ℚ) ^ (A275043 n : ℤ))).toNat

end

end A078331.P17927045791354533708

/-! ## A078331.P12178682597934210326

`A194603(A259445(n+1))%A119752(n+3)`
-/

namespace A078331.P12178682597934210326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194603 (A259445 (n + 1)).toNat) (A119752 (n + 3))

end

end A078331.P12178682597934210326

/-!
# A078334: Primes in A005728, which counts the terms in the Farey sequence of order n.

The programs for A078334, the canonical program `A078334.P18056598420346971869` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078334 has offset 1).

The definition of A078334 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5509 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078334.P18056598420346971869

`A002088(A055201(n+1))+1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A078334

/-- `A002088(A055201(n+1))+1` -/
def P18056598420346971869.Spec : Prop :=
  ∀ n, P18056598420346971869.a n = A078334 (n + 1)

theorem P18056598420346971869.correct : P18056598420346971869.Spec := by
  intro n
  simp only [A078334, Nat.add_sub_cancel]

end A078334

/-! ## A078334.P14458231128875874634

`A005728(A055201(n+1))`
-/

namespace A078334.P14458231128875874634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (A055201 (n + 1)).toNat

end

end A078334.P14458231128875874634

namespace A078334

/-- `A005728(A055201(n+1))` -/
def P14458231128875874634.Spec : Prop :=
  ∀ n, P14458231128875874634.a n = A078334 (n + 1)

theorem P14458231128875874634.correct : P14458231128875874634.Spec := by
  intro n
  simp only [A078334, Nat.add_sub_cancel, A078334.P14458231128875874634.a, A078334.P18056598420346971869.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A005728, A005728.P12032251568510858139.a, A055201, A055201.P11625339162653954639.f1, A055201.P11625339162653954639.f3, A055201.P11625339162653954639.f2, A055201.P11625339162653954639.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A049632, A049632.P1310813934760745666.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A206350, A206350.P761280235204802101.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A140434, A140434.P96571140770797263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078334

/-! ## A078334.P7280638247532776406

`A049643(A055201(2*n+1-n))`
-/

namespace A078334.P7280638247532776406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A055201 (2 * n + 1 - n)).toNat

end

end A078334.P7280638247532776406

namespace A078334

/-- `A049643(A055201(2*n+1-n))` -/
def P7280638247532776406.Spec : Prop :=
  ∀ n, P7280638247532776406.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P15720084138433029955

`p?[A005728(n)]`
-/

namespace A078334.P15720084138433029955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P15720084138433029955

namespace A078334

/-- `p?[A005728(n)]` -/
def P15720084138433029955.Spec : Prop :=
  ∀ n, P15720084138433029955.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P15421325785124958675

`p?[A049643(n)]`
-/

namespace A078334.P15421325785124958675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P15421325785124958675

namespace A078334

/-- `p?[A049643(n)]` -/
def P15421325785124958675.Spec : Prop :=
  ∀ n, P15421325785124958675.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P10613065116961724944

`p?[∑[A384710(n)]]`
-/

namespace A078334.P10613065116961724944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P10613065116961724944

namespace A078334

/-- `p?[∑[A384710(n)]]` -/
def P10613065116961724944.Spec : Prop :=
  ∀ n, P10613065116961724944.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P16602335809136211435

`p?[Δ[A049688(n)]]`
-/

namespace A078334.P16602335809136211435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P16602335809136211435

namespace A078334

/-- `p?[Δ[A049688(n)]]` -/
def P16602335809136211435.Spec : Prop :=
  ∀ n, P16602335809136211435.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P13230626136884144622

`p?[A002088(n)+1]`
-/

namespace A078334.P13230626136884144622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P13230626136884144622

namespace A078334

/-- `p?[A002088(n)+1]` -/
def P13230626136884144622.Spec : Prop :=
  ∀ n, P13230626136884144622.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P4224458138135155468

`p?[A015614(n+1)+2]`
-/

namespace A078334.P4224458138135155468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P4224458138135155468

namespace A078334

/-- `p?[A015614(n+1)+2]` -/
def P4224458138135155468.Spec : Prop :=
  ∀ n, P4224458138135155468.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P2382272002638622445

`p?[∑[A000010(n+1)]+1]`
-/

namespace A078334.P2382272002638622445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P2382272002638622445

namespace A078334

/-- `p?[∑[A000010(n+1)]+1]` -/
def P2382272002638622445.Spec : Prop :=
  ∀ n, P2382272002638622445.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P3693080708235181211

`p?[∑[A039649(n+1)]-n]`
-/

namespace A078334.P3693080708235181211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P3693080708235181211

namespace A078334

/-- `p?[∑[A039649(n+1)]-n]` -/
def P3693080708235181211.Spec : Prop :=
  ∀ n, P3693080708235181211.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P14914560807384928059

`p?[A015613(n+1)+2+n]`
-/

namespace A078334.P14914560807384928059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P14914560807384928059

namespace A078334

/-- `p?[A015613(n+1)+2+n]` -/
def P14914560807384928059.Spec : Prop :=
  ∀ n, P14914560807384928059.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P7949846969588089400

`p?[A000010(n)+a(n-1)]` with `a(0)=1`
-/

namespace A078334.P7949846969588089400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P7949846969588089400

namespace A078334

/-- `p?[A000010(n)+a(n-1)]` -/
def P7949846969588089400.Spec : Prop :=
  ∀ n, P7949846969588089400.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P12974701508510549135

`p?[∑[A349137(2*n+1)]+1]`
-/

namespace A078334.P12974701508510549135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P12974701508510549135

namespace A078334

/-- `p?[∑[A349137(2*n+1)]+1]` -/
def P12974701508510549135.Spec : Prop :=
  ∀ n, P12974701508510549135.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P4941147644765453516

`p?[∑[A000010(A028310(n))]]`
-/

namespace A078334.P4941147644765453516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P4941147644765453516

namespace A078334

/-- `p?[∑[A000010(A028310(n))]]` -/
def P4941147644765453516.Spec : Prop :=
  ∀ n, P4941147644765453516.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P14534091101599907451

`p?[A049688(n+1)-A049688(n)]`
-/

namespace A078334.P14534091101599907451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 (n + 1) - A049688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P14534091101599907451

namespace A078334

/-- `p?[A049688(n+1)-A049688(n)]` -/
def P14534091101599907451.Spec : Prop :=
  ∀ n, P14534091101599907451.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P18435090900093660208

`p?[∑[A265120(n+1)]]`
-/

namespace A078334.P18435090900093660208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265120 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078334.P18435090900093660208

namespace A078334

/-- `p?[∑[A265120(n+1)]]` -/
def P18435090900093660208.Spec : Prop :=
  ∀ n, P18435090900093660208.a n = A078334 (n + 1)

end A078334

/-! ## A078334.P6746695545343472094

`∩[A015919(n+1), A049643(n)]`
-/

namespace A078334.P6746695545343472094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078334.P6746695545343472094

namespace A078334

/-- `∩[A015919(n+1), A049643(n)]` -/
def P6746695545343472094.Spec : Prop :=
  ∀ n, (P6746695545343472094.a n : ℤ) = A078334 (n + 1)

end A078334

/-! ## A078334.P4668574504969828513

`∩[A049643(n), A380468(n+1)]`
-/

namespace A078334.P4668574504969828513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078334.P4668574504969828513

namespace A078334

/-- `∩[A049643(n), A380468(n+1)]` -/
def P4668574504969828513.Spec : Prop :=
  ∀ n, (P4668574504969828513.a n : ℤ) = A078334 (n + 1)

end A078334

/-!
# A078337: Palindromes which are a nontrivial product of 2 palindromes (which need not be distinct).

The programs for A078337, there is no canonical definition to state claims against.
-/

/-! ## A078337.P9011453632569277189

`∩[A002113(n+1), A115683(n+1)]`
-/

namespace A078337.P9011453632569277189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078337.P9011453632569277189

/-! ## A078337.P7298986709743284450

`∩[A032350(n+1), A115683(n+1)]`
-/

namespace A078337.P7298986709743284450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078337.P7298986709743284450

/-! ## A078337.P12304530378086621603

`∩[A083158(n+1), A115683(n+1)]`
-/

namespace A078337.P12304530378086621603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078337.P12304530378086621603

/-! ## A078337.P17352952394936512798

`∩[A115683(n+1), A086862(n)+a(n-1)]` with `a(0)=0`
-/

namespace A078337.P17352952394936512798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A086862 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078337.P17352952394936512798

/-! ## A078337.P4643499982742508073

`record[A047813(A115683(n+1))]`
-/

namespace A078337.P4643499982742508073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P4643499982742508073

/-! ## A078337.P360753857109837108

`filter[A115683(n+1), A136522(#)]`
-/

namespace A078337.P360753857109837108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A078337.P360753857109837108

/-! ## A078337.P15834672418184603148

`record[A331472(A115683(C(n+1, n)))]`
-/

namespace A078337.P15834672418184603148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P15834672418184603148

/-! ## A078337.P10238468907896309558

`record[A331472(A115683(round((n+1)/2)))]`
-/

namespace A078337.P10238468907896309558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P10238468907896309558

/-! ## A078337.P5328063269132221219

`record[A331472(A115683(n+1))]%A008888(n)`
-/

namespace A078337.P5328063269132221219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A008888 n)

end

end A078337.P5328063269132221219

/-! ## A078337.P5186340582742518170

`record[A331472(A115683(n+1))%A016972(n)]`
-/

namespace A078337.P5186340582742518170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331472 (A115683 (n + 1)).toNat) (A016972 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P5186340582742518170

/-! ## A078337.P13200120288880948847

`A020985(n)²*record[A331472(A115683(n+1))]`
-/

namespace A078337.P13200120288880948847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P13200120288880948847

/-! ## A078337.P585179799809513789

`A000007(n+1)+record[A331472(A115683(n+1))]`
-/

namespace A078337.P585179799809513789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P585179799809513789

/-! ## A078337.P11037976041071156304

`A000038(n+1)+record[A331472(A115683(n+1))]`
-/

namespace A078337.P11037976041071156304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P11037976041071156304

/-! ## A078337.P13270493716719960358

`A000035(2*n)+record[A331472(A115683(n+1))]`
-/

namespace A078337.P13270493716719960358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P13270493716719960358

/-! ## A078337.P17369517870751235157

`record[A000034(2*n)*A331472(A115683(n+1))]`
-/

namespace A078337.P17369517870751235157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P17369517870751235157

/-! ## A078337.P14550491378328613365

`record[A331472(A115683(n+1)%A065212(n+1))]`
-/

namespace A078337.P14550491378328613365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (Int.tmod (A115683 (n + 1)) (A065212 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P14550491378328613365

/-! ## A078337.P11337976676416922874

`record[A331472(A115683(n+1))+A008683(4*(n+1))]`
-/

namespace A078337.P11337976676416922874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat + A008683 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P11337976676416922874

/-! ## A078337.P1445936085536870881

`record[A331472(A115683(n+1))+A001222(((-1)^n)²)]`
-/

namespace A078337.P1445936085536870881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat + A001222 (((-1) ^ n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P1445936085536870881

/-! ## A078337.P2771751161842073388

`A000203(((-1)^n)²)*record[A331472(A115683(n+1))]`
-/

namespace A078337.P2771751161842073388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A115683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (((-1) ^ n) ^ 2).toNat * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078337.P2771751161842073388

/-!
# A078338: Let u(1)=u(2)=u(3)=1 and u(n)=(-1)^n*sign(u(n-1)-u(n-2))*u(n-3), then a(n)=sum(k=1,n,u(k)).

The programs for A078338, there is no canonical definition to state claims against.
-/

/-! ## A078338.P3167181266050230617

`∑[A076447(n+1)-1]`
-/

namespace A078338.P3167181266050230617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076447 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078338.P3167181266050230617

/-!
# A078339: Let u(1)=u(2)=u(3)=1 and u(n)=(-1)^n*sign(u(n-1)-u(n-2))*u(n-3); then a(n)=sum(k=1,n,sum(i=1,k,u(i))) - 3*(n-1).

The programs for A078339, there is no canonical definition to state claims against.
-/

/-! ## A078339.P6342790143158609874

`∑[A078338(n+1)]-3*n`
-/

namespace A078339.P6342790143158609874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (3 * n : ℤ)

end

end A078339.P6342790143158609874

/-!
# A078341: Triangle read by rows: T(n,k) = n*T(n-1,k-1) + k*T(n-1,k) starting with T(0,0)=1.

The programs for A078341, the canonical program `A078341.P1714417929773285621` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078341 has offset 1).

The definition of A078341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `row(n)*T(n-1,k-1)+col(n)*T(n-1,k)` (program `A078341.P1714417929773285621`, by `A078341.P1714417929773285621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078341.P1714417929773285621

`row(n)*T(n-1,k-1)+col(n)*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078341

/-- `row(n)*T(n-1,k-1)+col(n)*T(n-1,k)` -/
def P1714417929773285621.Spec : Prop :=
  ∀ n, (P1714417929773285621.a n : ℤ) = A078341 (n + 1)

theorem P1714417929773285621.correct : P1714417929773285621.Spec := by
  intro n
  simp only [A078341, Nat.add_sub_cancel]

end A078341

/-! ## A078341.P7541048648134839614

`A371762(n)-A326499(A272644(n+2))`
-/

namespace A078341.P7541048648134839614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371762 n - A326499 ((A272644 (n + 2)).toNat + 50)

end

end A078341.P7541048648134839614

namespace A078341

/-- `A371762(n)-A326499(A272644(n+2))` -/
def P7541048648134839614.Spec : Prop :=
  ∀ n, P7541048648134839614.a n = A078341 (n + 1)

end A078341

/-! ## A078341.P15631773045427708105

`A371762(n)-A088950(A371762(n+2))`
-/

namespace A078341.P15631773045427708105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371762 n - A088950 (A371762 (n + 2)).toNat

end

end A078341.P15631773045427708105

namespace A078341

/-- `A371762(n)-A088950(A371762(n+2))` -/
def P15631773045427708105.Spec : Prop :=
  ∀ n, P15631773045427708105.a n = A078341 (n + 1)

end A078341

/-! ## A078341.P7688084382608205007

`A034584(A245111(n))`
-/

namespace A078341.P7688084382608205007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A245111 n).toNat

end

end A078341.P7688084382608205007

namespace A078341

/-- `A034584(A245111(n))` -/
def P7688084382608205007.Spec : Prop :=
  ∀ n, P7688084382608205007.a n = A078341 (n + 1)

end A078341

/-! ## A078341.P8826199235472091691

`A337774(A304336(n)+1)`
-/

namespace A078341.P8826199235472091691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337774 (A304336 n + 1).toNat

end

end A078341.P8826199235472091691

namespace A078341

/-- `A337774(A304336(n)+1)` -/
def P8826199235472091691.Spec : Prop :=
  ∀ n, P8826199235472091691.a n = A078341 (n + 1)

end A078341

/-!
# A078342: Number of positive integers less than n that are coprime to all primes less than or equal to the square root of n.

The programs for A078342, the canonical program `A078342.P16377039344616556995` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078342 has offset 1).

The definition of A078342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078342.P2897679909515500

`A066247(n+1)+A056812(n+1)`
-/

namespace A078342.P2897679909515500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1) + A056812 (n + 1)

end

end A078342.P2897679909515500

namespace A078342

/-- `A066247(n+1)+A056812(n+1)` -/
def P2897679909515500.Spec : Prop :=
  ∀ n, P2897679909515500.a n = A078342 (n + 1)

theorem P2897679909515500.correct : P2897679909515500.Spec := by
  intro n
  simp only [A078342, Nat.add_sub_cancel, A078342.P2897679909515500.a, A078342.P16377039344616556995.f2, A078342.P16377039344616556995.f1, A078342.P16377039344616556995.a, A008578, A008578.P3639467937083264764.a, A056811, A056811.P3378557342044572151.a, A056812, A056812.P14896031248377744571.a, A066247, A066247.P15227533178821378383.f1, A066247.P15227533178821378383.a, A000196, A000196.P15434771586934192083.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A078342

/-! ## A078342.P4962969482393067941

`A079715(n+1)-A080339(n+1)`
-/

namespace A078342.P4962969482393067941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079715 (n + 1) - A080339 (n + 1)

end

end A078342.P4962969482393067941

namespace A078342

/-- `A079715(n+1)-A080339(n+1)` -/
def P4962969482393067941.Spec : Prop :=
  ∀ n, P4962969482393067941.a n = A078342 (n + 1)

end A078342

/-! ## A078342.P16377039344616556995

`∑[char[A008578(n+1)]]-A056811(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078342

/-- `∑[char[A008578(n+1)]]-A056811(n+1)` -/
def P16377039344616556995.Spec : Prop :=
  ∀ n, P16377039344616556995.a n = A078342 (n + 1)

theorem P16377039344616556995.correct : P16377039344616556995.Spec := by
  intro n
  simp only [A078342, Nat.add_sub_cancel]

end A078342

/-! ## A078342.P1144400289868701031

`A079715(n+1)-C(A006530(n+1), n+1)`
-/

namespace A078342.P1144400289868701031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079715 (n + 1) - (Nat.choose (A006530 (n + 1)).toNat (n + 1) : ℤ)

end

end A078342.P1144400289868701031

namespace A078342

/-- `A079715(n+1)-C(A006530(n+1), n+1)` -/
def P1144400289868701031.Spec : Prop :=
  ∀ n, P1144400289868701031.a n = A078342 (n + 1)

end A078342

/-! ## A078342.P11784171393592684738

`floor(A056812(n+1)+(n+1)/A066560(n+1))`
-/

namespace A078342.P11784171393592684738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056812 (n + 1) : ℚ) + (n + 1 : ℚ) / (A066560 (n + 1) : ℚ)⌋

end

end A078342.P11784171393592684738

namespace A078342

/-- `floor(A056812(n+1)+(n+1)/A066560(n+1))` -/
def P11784171393592684738.Spec : Prop :=
  ∀ n, P11784171393592684738.a n = A078342 (n + 1)

end A078342

/-!
# A078343: a(0) = -1, a(1) = 2; a(n) = 2*a(n-1) + a(n-2).

The programs for A078343, the canonical program `A078343.P1646667795740139049` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078343 has offset 0).

The definition of A078343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-2)` (program `A078343.P1646667795740139049`, by `A078343.P1646667795740139049.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078343.P1646667795740139049

`2*a(n-1)+a(n-2)` with `a(0)=-1, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078343

/-- `2*a(n-1)+a(n-2)` -/
def P1646667795740139049.Spec : Prop :=
  ∀ n, P1646667795740139049.a n = A078343 n

theorem P1646667795740139049.correct : P1646667795740139049.Spec := by
  intro n
  simp only [A078343]

end A078343

/-! ## A078343.P1262805413575842087

`4*A000129(n)-A000129(n+1)`
-/

namespace A078343.P1262805413575842087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000129 n - A000129 (n + 1)

end

end A078343.P1262805413575842087

namespace A078343

/-- `4*A000129(n)-A000129(n+1)` -/
def P1262805413575842087.Spec : Prop :=
  ∀ n, P1262805413575842087.a n = A078343 n

end A078343

/-! ## A078343.P7634090133692728612

`ogf((1-4x)/(-1+2x+x^2))`
-/

namespace A078343.P7634090133692728612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4] [1, -2, -1] n

end

end A078343.P7634090133692728612

namespace A078343

/-- `ogf((1-4x)/(-1+2x+x^2))` -/
def P7634090133692728612.Spec : Prop :=
  ∀ n, P7634090133692728612.a n = A078343 n

end A078343

/-! ## A078343.P3185272638982112653

`a(n-1)+a(n-1)+a(n-2)` with `a(0)=-1, a(1)=2`
-/

namespace A078343.P3185272638982112653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 2))

end

end A078343.P3185272638982112653

namespace A078343

/-- `a(n-1)+a(n-1)+a(n-2)` -/
def P3185272638982112653.Spec : Prop :=
  ∀ n, P3185272638982112653.a n = A078343 n

theorem P3185272638982112653.correct : P3185272638982112653.Spec := by
  intro n
  simp only [A078343, Nat.add_sub_cancel, A078343.P3185272638982112653.a, A078343.P1646667795740139049.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078343

/-! ## A078343.P3287902146431765533

`3*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=-1, a(1)=2`
-/

namespace A078343.P3287902146431765533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A078343.P3287902146431765533

namespace A078343

/-- `3*a(n-1)-(a(n-1)-a(n-2))` -/
def P3287902146431765533.Spec : Prop :=
  ∀ n, P3287902146431765533.a n = A078343 n

theorem P3287902146431765533.correct : P3287902146431765533.Spec := by
  intro n
  simp only [A078343, Nat.add_sub_cancel, A078343.P3287902146431765533.a, A078343.P1646667795740139049.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078343

/-! ## A078343.P17906666425936145735

`A266506(A111284(n+1))`
-/

namespace A078343.P17906666425936145735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266506 (A111284 (n + 1)).toNat

end

end A078343.P17906666425936145735

namespace A078343

/-- `A266506(A111284(n+1))` -/
def P17906666425936145735.Spec : Prop :=
  ∀ n, P17906666425936145735.a n = A078343 n

end A078343

/-! ## A078343.P7095491098163301405

`A135532(n)-A000129(n)`
-/

namespace A078343.P7095491098163301405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n - A000129 n

end

end A078343.P7095491098163301405

namespace A078343

/-- `A135532(n)-A000129(n)` -/
def P7095491098163301405.Spec : Prop :=
  ∀ n, P7095491098163301405.a n = A078343 n

end A078343

/-! ## A078343.P2059602197306347423

`A111955(n)-A033999(n)`
-/

namespace A078343.P2059602197306347423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111955 n - A033999 n

end

end A078343.P2059602197306347423

namespace A078343

/-- `A111955(n)-A033999(n)` -/
def P2059602197306347423.Spec : Prop :=
  ∀ n, P2059602197306347423.a n = A078343 n

theorem P2059602197306347423.correct : P2059602197306347423.Spec := by
  intro n
  simp only [A078343, Nat.add_sub_cancel, A078343.P2059602197306347423.a, A078343.P1646667795740139049.a, A033999, A033999.P17703899380244199787.a, A111955, A111955.P17725153685513830976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A078343

/-! ## A078343.P15984798123326971589

`A135532(n)-A002965(2*n)`
-/

namespace A078343.P15984798123326971589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n - A002965 (2 * n)

end

end A078343.P15984798123326971589

namespace A078343

/-- `A135532(n)-A002965(2*n)` -/
def P15984798123326971589.Spec : Prop :=
  ∀ n, P15984798123326971589.a n = A078343 n

end A078343

/-! ## A078343.P6090056936471855072

`(A221172(n)+A000129(n))/2`
-/

namespace A078343.P6090056936471855072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221172 n + A000129 n : ℚ) / 2

end

end A078343.P6090056936471855072

namespace A078343

/-- `(A221172(n)+A000129(n))/2` -/
def P6090056936471855072.Spec : Prop :=
  ∀ n, P6090056936471855072.a n = (A078343 n : ℚ)

end A078343

/-! ## A078343.P1210330164085614627

`A266505(2*n)-A000129(n)`
-/

namespace A078343.P1210330164085614627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n) - A000129 n

end

end A078343.P1210330164085614627

namespace A078343

/-- `A266505(2*n)-A000129(n)` -/
def P1210330164085614627.Spec : Prop :=
  ∀ n, P1210330164085614627.a n = A078343 n

end A078343

/-! ## A078343.P11388439493880837041

`A135532(n)-A135153(2*n)`
-/

namespace A078343.P11388439493880837041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135532 n - A135153 (2 * n)

end

end A078343.P11388439493880837041

namespace A078343

/-- `A135532(n)-A135153(2*n)` -/
def P11388439493880837041.Spec : Prop :=
  ∀ n, P11388439493880837041.a n = A078343 n

end A078343

/-! ## A078343.P14439892478267273498

`A163271(n+1)-abs(A176981(n))`
-/

namespace A078343.P14439892478267273498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163271 (n + 1) - |A176981 n|

end

end A078343.P14439892478267273498

namespace A078343

/-- `A163271(n+1)-abs(A176981(n))` -/
def P14439892478267273498.Spec : Prop :=
  ∀ n, P14439892478267273498.a n = A078343 n

end A078343

/-! ## A078343.P7464719158226849638

`2*A000129(n)-abs(A176981(n))`
-/

namespace A078343.P7464719158226849638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n - |A176981 n|

end

end A078343.P7464719158226849638

namespace A078343

/-- `2*A000129(n)-abs(A176981(n))` -/
def P7464719158226849638.Spec : Prop :=
  ∀ n, P7464719158226849638.a n = A078343 n

end A078343

/-! ## A078343.P15682870566644434909

`A001333(n+1)-A266504(2*n)`
-/

namespace A078343.P15682870566644434909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A266504 (2 * n)

end

end A078343.P15682870566644434909

namespace A078343

/-- `A001333(n+1)-A266504(2*n)` -/
def P15682870566644434909.Spec : Prop :=
  ∀ n, P15682870566644434909.a n = A078343 n

end A078343

/-! ## A078343.P10376009296633144500

`A266505(2*n)-A002965(2*n)`
-/

namespace A078343.P10376009296633144500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (2 * n) - A002965 (2 * n)

end

end A078343.P10376009296633144500

namespace A078343

/-- `A266505(2*n)-A002965(2*n)` -/
def P10376009296633144500.Spec : Prop :=
  ∀ n, P10376009296633144500.a n = A078343 n

end A078343

/-! ## A078343.P16756934366246090602

`A000129(n)+Δ[A000129(abs(1-n))]`
-/

namespace A078343.P16756934366246090602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f1 (n + 1) - f1 n)

end

end A078343.P16756934366246090602

namespace A078343

/-- `A000129(n)+Δ[A000129(abs(1-n))]` -/
def P16756934366246090602.Spec : Prop :=
  ∀ n, P16756934366246090602.a n = A078343 n

end A078343

/-! ## A078343.P10975433363751829039

`A249576(3*n+2)-abs(A176981(n))`
-/

namespace A078343.P10975433363751829039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (3 * n + 2) - |A176981 n|

end

end A078343.P10975433363751829039

namespace A078343

/-- `A249576(3*n+2)-abs(A176981(n))` -/
def P10975433363751829039.Spec : Prop :=
  ∀ n, P10975433363751829039.a n = A078343 n

end A078343

/-! ## A078343.P16322615235549942844

`A152113(2*n+1)-A266504(2*n)`
-/

namespace A078343.P16322615235549942844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (2 * n + 1) - A266504 (2 * n)

end

end A078343.P16322615235549942844

namespace A078343

/-- `A152113(2*n+1)-A266504(2*n)` -/
def P16322615235549942844.Spec : Prop :=
  ∀ n, P16322615235549942844.a n = A078343 n

end A078343

/-! ## A078343.P10594388168467584752

`A002965(2*n+3)-A266504(2*n)`
-/

namespace A078343.P10594388168467584752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (2 * n + 3) - A266504 (2 * n)

end

end A078343.P10594388168467584752

namespace A078343

/-- `A002965(2*n+3)-A266504(2*n)` -/
def P10594388168467584752.Spec : Prop :=
  ∀ n, P10594388168467584752.a n = A078343 n

end A078343

/-!
# A078344: a(1)=1; a(2)=2; a(3)=3; a(n) = Sum_{k=3..n-1} (a(k) + a(k-1) + a(k-2)).

The programs for A078344, the canonical program `A078344.P1278807583244063804` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078344 has offset 1).

The definition of A078344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078344.P1278807583244063804

`2*a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078344

/-- `2*a(n-1)+a(n-2)+a(n-3)` -/
def P1278807583244063804.Spec : Prop :=
  ∀ n, (P1278807583244063804.a n : ℤ) = A078344 (n + 1)

theorem P1278807583244063804.correct : P1278807583244063804.Spec := by
  intro n
  simp only [A078344, Nat.add_sub_cancel]

end A078344

/-! ## A078344.P7533426175055476278

`ogf((-1+2x^2+3x^3)/(-1+2x+x^2+x^3))`
-/

namespace A078344.P7533426175055476278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, -3] [1, -2, -1, -1] n

end

end A078344.P7533426175055476278

namespace A078344

/-- `ogf((-1+2x^2+3x^3)/(-1+2x+x^2+x^3))` -/
def P7533426175055476278.Spec : Prop :=
  ∀ n, P7533426175055476278.a n = A078344 (n + 1)

end A078344

/-! ## A078344.P8440663897141028312

`a(n-1)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A078344.P8440663897141028312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) + a (n - 3)))

end

end A078344.P8440663897141028312

namespace A078344

/-- `a(n-1)+a(n-1)+a(n-2)+a(n-3)` -/
def P8440663897141028312.Spec : Prop :=
  ∀ n, (P8440663897141028312.a n : ℤ) = A078344 (n + 1)

theorem P8440663897141028312.correct : P8440663897141028312.Spec := by
  intro n
  simp only [A078344, Nat.add_sub_cancel, A078344.P8440663897141028312.a, A078344.P1278807583244063804.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078344

/-! ## A078344.P14994439720826731498

`A109545(n)+A308589(n+1)%A276225(n)`
-/

namespace A078344.P14994439720826731498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109545 n + Int.tmod (A308589 (n + 1)) (A276225 n)

end

end A078344.P14994439720826731498

namespace A078344

/-- `A109545(n)+A308589(n+1)%A276225(n)` -/
def P14994439720826731498.Spec : Prop :=
  ∀ n, P14994439720826731498.a n = A078344 (n + 1)

end A078344

/-! ## A078344.P8588685654391858080

`record[A347725(n+1)-A276226(n)]`
-/

namespace A078344.P8588685654391858080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347725 (n + 1) - A276226 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078344.P8588685654391858080

namespace A078344

/-- `record[A347725(n+1)-A276226(n)]` -/
def P8588685654391858080.Spec : Prop :=
  ∀ n, P8588685654391858080.a n = A078344 (n + 1)

end A078344

/-!
# A078346: a(1) = 1; a(n) = Sum_{k=1..n-1} a(floor((n-1)/k)).

The programs for A078346, there is no canonical definition to state claims against.
-/

/-! ## A078346.P115729747878645621

`∑[A320224(n+1)]`
-/

namespace A078346.P115729747878645621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078346.P115729747878645621

/-! ## A078346.P1599071234343470151

`A320224(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A078346.P1599071234343470151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320224 (n + 1) + a (A023443 n).toNat

end

end A078346.P1599071234343470151

/-! ## A078346.P10492430844218238912

`A320224(n+1)+a(A289439(2*(n+1))-2)` with `a(0)=1`
-/

namespace A078346.P10492430844218238912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320224 (n + 1) + a (A289439 (2 * (n + 1)) - 2).toNat

end

end A078346.P10492430844218238912

/-! ## A078346.P4644135017756679316

`A194698(15*A003318(n+1))`
-/

namespace A078346.P4644135017756679316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (15 * A003318 (n + 1)).toNat

end

end A078346.P4644135017756679316

/-! ## A078346.P13022105062361036810

`A322847(a(n-1)+n-1)` with `a(0)=1`
-/

namespace A078346.P13022105062361036810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A322847 (a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A078346.P13022105062361036810

/-!
# A078347: Numbers k such that the number of ordered factorizations of k is > cototient(k).

The programs for A078347, there is no canonical definition to state claims against.
-/

/-! ## A078347.P6395358174133060295

`lt[A051953(A028310(n)), A074206(n)]`
-/

namespace A078347.P6395358174133060295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078347.P6395358174133060295

/-! ## A078347.P13352775226845229063

`lt[A082023(2*n), A074206(n)]`
-/

namespace A078347.P13352775226845229063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078347.P13352775226845229063

/-! ## A078347.P456316853117800484

`lt[A082023(A004277(n))², A074206(n)²]`
-/

namespace A078347.P456316853117800484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A004277 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078347.P456316853117800484

/-! ## A078347.P15464251706652016770

`lt[A082023(A005843(n))², A074206(n)²]`
-/

namespace A078347.P15464251706652016770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 (A005843 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078347.P15464251706652016770

/-! ## A078347.P3612769022100476419

`lt[n+1, A225530(n)+A074206(n)]`
-/

namespace A078347.P3612769022100476419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n + A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A078347.P3612769022100476419

/-!
# A078348: Primes p such that every decimal digit d in p appears exactly d times.

The programs for A078348, there is no canonical definition to state claims against.
-/

/-! ## A078348.P6657020444757420469

`∩[A108571(n+1), A266815(n+1)]`
-/

namespace A078348.P6657020444757420469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078348.P6657020444757420469

/-! ## A078348.P1729548889023585946

`∩[A108571(n+1), A178552(n+1)]`
-/

namespace A078348.P1729548889023585946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078348.P1729548889023585946

/-! ## A078348.P7110445317627108591

`p?[A108571(n+1)]`
-/

namespace A078348.P7110445317627108591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078348.P7110445317627108591

/-! ## A078348.P13804849710343264918

`p?[record[A108571(A052938(n))]]`
-/

namespace A078348.P13804849710343264918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078348.P13804849710343264918

/-! ## A078348.P10302849161550932402

`p?[record[A108571(A117910(n))]]`
-/

namespace A078348.P10302849161550932402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078348.P10302849161550932402

/-!
# A078349: Number of primes in sequence h(m) defined by h(1) = n, h(m+1) = Floor(h(m)/2).

The programs for A078349, the canonical program `A078349.P15992223728515405576` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078349 has offset 1).

The definition of A078349 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078349.P15992223728515405576

`A010051(n+1)+a(floor((n+1)/2)-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078349

/-- `A010051(n+1)+a(floor((n+1)/2)-1)` -/
def P15992223728515405576.Spec : Prop :=
  ∀ n, P15992223728515405576.a n = A078349 (n + 1)

theorem P15992223728515405576.correct : P15992223728515405576.Spec := by
  intro n
  simp only [A078349, Nat.add_sub_cancel]

end A078349

/-! ## A078349.P4487111628665643177

`A000120(A292599(n+1))`
-/

namespace A078349.P4487111628665643177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292599 (n + 1)).toNat

end

end A078349.P4487111628665643177

namespace A078349

/-- `A000120(A292599(n+1))` -/
def P4487111628665643177.Spec : Prop :=
  ∀ n, P4487111628665643177.a n = A078349 (n + 1)

end A078349

/-! ## A078349.P16812773270708510983

`A007814(A292258(n+1))`
-/

namespace A078349.P16812773270708510983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A292258 (n + 1)).toNat

end

end A078349.P16812773270708510983

namespace A078349

/-- `A007814(A292258(n+1))` -/
def P16812773270708510983.Spec : Prop :=
  ∀ n, P16812773270708510983.a n = A078349 (n + 1)

end A078349

/-! ## A078349.P7349447239932355539

`A048881(2*A292599(n+1))`
-/

namespace A078349.P7349447239932355539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A292599 (n + 1)).toNat

end

end A078349.P7349447239932355539

namespace A078349

/-- `A048881(2*A292599(n+1))` -/
def P7349447239932355539.Spec : Prop :=
  ∀ n, P7349447239932355539.a n = A078349 (n + 1)

end A078349

/-! ## A078349.P8872230809230881417

`A001222(A001316(2*A292599(n+1)))`
-/

namespace A078349.P8872230809230881417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (2 * A292599 (n + 1)).toNat).toNat

end

end A078349.P8872230809230881417

namespace A078349

/-- `A001222(A001316(2*A292599(n+1)))` -/
def P8872230809230881417.Spec : Prop :=
  ∀ n, P8872230809230881417.a n = A078349 (n + 1)

end A078349

/-! ## A078349.P8286144199948687692

`A000005(A001316(A292599(n+1)%(n+1)))-1`
-/

namespace A078349.P8286144199948687692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A001316 (Int.tmod (A292599 (n + 1)) (n + 1 : ℤ)).toNat).toNat - 1

end

end A078349.P8286144199948687692

namespace A078349

/-- `A000005(A001316(A292599(n+1)%(n+1)))-1` -/
def P8286144199948687692.Spec : Prop :=
  ∀ n, P8286144199948687692.a n = A078349 (n + 1)

end A078349

/-! ## A078349.P7255997848977224188

`A001222(A005940(A292599(n+1)+1))`
-/

namespace A078349.P7255997848977224188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A005940 (A292599 (n + 1) + 1).toNat).toNat

end

end A078349.P7255997848977224188

namespace A078349

/-- `A001222(A005940(A292599(n+1)+1))` -/
def P7255997848977224188.Spec : Prop :=
  ∀ n, P7255997848977224188.a n = A078349 (n + 1)

end A078349

/-!
# A078350: Number of primes in {n, f(n), f(f(n)), ..., 1}, where f is the Collatz function defined by f(x) = x/2 if x is even; f(x) = 3x + 1 if x is odd.

The programs for A078350, there is no canonical definition to state claims against.
-/

/-! ## A078350.P489041955740060997

`A057427(n)+A055509(n+1)`
-/

namespace A078350.P489041955740060997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A055509 (n + 1)

end

end A078350.P489041955740060997

/-! ## A078350.P12894721126559784331

`A055509(n+1)-A057428(n)`
-/

namespace A078350.P12894721126559784331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (n + 1) - A057428 n

end

end A078350.P12894721126559784331

/-! ## A078350.P5064205734323684119

`A008908(n+1)-A267830(n+1)`
-/

namespace A078350.P5064205734323684119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A267830 (n + 1)

end

end A078350.P5064205734323684119

/-! ## A078350.P7966105425182087331

`A006577(n+1)+1-A267830(n+1)`
-/

namespace A078350.P7966105425182087331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A267830 (n + 1))

end

end A078350.P7966105425182087331

/-! ## A078350.P9091431689724633822

`A055509(n+1)+A010051(A020639(n+1))`
-/

namespace A078350.P9091431689724633822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (n + 1) + A010051 (A020639 (n + 1)).toNat

end

end A078350.P9091431689724633822

/-! ## A078350.P13241040165221491203

`A006667(n+1)+A064433(n+2)-A267830(n+1)`
-/

namespace A078350.P13241040165221491203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + (A064433 (n + 2) - A267830 (n + 1))

end

end A078350.P13241040165221491203

/-! ## A078350.P10255175951048902747

`(A055509(n+1)+1)%record[A000010(n+1)]`
-/

namespace A078350.P10255175951048902747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055509 (n + 1) + 1) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078350.P10255175951048902747

/-! ## A078350.P17305752706387287789

`A055509(2*(n+1))+A057428(n)²`
-/

namespace A078350.P17305752706387287789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (2 * (n + 1)) + A057428 n ^ 2

end

end A078350.P17305752706387287789

/-! ## A078350.P5407947794520745655

`(A008908(n+1)+1)%A267830(2*(n+1))`
-/

namespace A078350.P5407947794520745655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1) + 1) (A267830 (2 * (n + 1)))

end

end A078350.P5407947794520745655

/-! ## A078350.P14627792968200597588

`A178334(A178334(2*n))+A055509(2*n+2)`
-/

namespace A078350.P14627792968200597588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 (2 * n)).toNat + A055509 (2 * n + 2)

end

end A078350.P14627792968200597588

/-! ## A078350.P17260123873085071112

`A055509(n+1)+A010051(A299963(n+1))`
-/

namespace A078350.P17260123873085071112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (n + 1) + A010051 (A299963 (n + 1)).toNat

end

end A078350.P17260123873085071112

/-!
# A078351: 

The programs for A078351, there is no canonical definition to state claims against.
-/

/-! ## A078351.P3954542447212363553

`17^n²`
-/

namespace A078351.P3954542447212363553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17 ^ n ^ 2

end

end A078351.P3954542447212363553

/-!
# A078352: 

The programs for A078352, there is no canonical definition to state claims against.
-/

/-! ## A078352.P3789964971568264836

`18^n²`
-/

namespace A078352.P3789964971568264836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ n ^ 2

end

end A078352.P3789964971568264836

/-!
# A078353: 

The programs for A078353, there is no canonical definition to state claims against.
-/

/-! ## A078353.P12140098456113275881

`19^n²`
-/

namespace A078353.P12140098456113275881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19 ^ n ^ 2

end

end A078353.P12140098456113275881

/-!
# A078354: 

The programs for A078354, there is no canonical definition to state claims against.
-/

/-! ## A078354.P277978311575401360

`20^n²`
-/

namespace A078354.P277978311575401360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 ^ n ^ 2

end

end A078354.P277978311575401360

/-!
# A078355: Minimal (positive) solution a(n) of Pell equation b(n)^2 - D(n)*a(n)^2 = +4 with D(n)= A077425(n). The companion sequence is a(n)=A077428(n).

The programs for A078355, there is no canonical definition to state claims against.
-/

/-! ## A078355.P15755166671200369240

`floor(A077428(n+1)/sqrt(A077425(n+1)))`
-/

namespace A078355.P15755166671200369240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077428 (n + 1) : ℝ) / Real.sqrt (A077425 (n + 1) : ℝ)⌋

end

end A078355.P15755166671200369240

/-!
# A078357: Minimal positive solution x of Pell equation y^2 - A077426(n)*x^2 = -4.

The programs for A078357, there is no canonical definition to state claims against.
-/

/-! ## A078357.P2238973011814107878

`ceil(A078356(n+1)/sqrt(A077426(n+1)))`
-/

namespace A078357.P2238973011814107878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A078356 (n + 1) : ℝ) / Real.sqrt (A077426 (n + 1) : ℝ)⌉

end

end A078357.P2238973011814107878

/-!
# A078358: Non-oblong numbers: Complement of A002378.

The programs for A078358, the canonical program `A078358.P11401124287563201188` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078358 has offset 1).

The definition of A078358 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078358.P11401124287563201188

`ceil(sqrt(n+1))+n+1-1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078358

/-- `ceil(sqrt(n+1))+n+1-1` -/
def P11401124287563201188.Spec : Prop :=
  ∀ n, P11401124287563201188.a n = A078358 (n + 1)

theorem P11401124287563201188.correct : P11401124287563201188.Spec := by
  intro n
  simp only [A078358, Nat.add_sub_cancel]

end A078358

/-! ## A078358.P5283514659364212645

`∑[ceil(cosh(char[(n+1)²]))]`
-/

namespace A078358.P5283514659364212645
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P5283514659364212645

namespace A078358

/-- `∑[ceil(cosh(char[(n+1)²]))]` -/
def P5283514659364212645.Spec : Prop :=
  ∀ n, P5283514659364212645.a n = A078358 (n + 1)

end A078358

/-! ## A078358.P13341672783793780095

`∑[round(cosh(char[(n+1)²]))]`
-/

namespace A078358.P13341672783793780095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P13341672783793780095

namespace A078358

/-- `∑[round(cosh(char[(n+1)²]))]` -/
def P13341672783793780095.Spec : Prop :=
  ∀ n, P13341672783793780095.a n = A078358 (n + 1)

end A078358

/-! ## A078358.P6035986878061397145

`xor(1, xor(1, comp[n²+n]))`
-/

namespace A078358.P6035986878061397145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A078358.P6035986878061397145

namespace A078358

/-- `xor(1, xor(1, comp[n²+n]))` -/
def P6035986878061397145.Spec : Prop :=
  ∀ n, (P6035986878061397145.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P6145275630353502902

`∑[(char[(n+1)²]+1)!]`
-/

namespace A078358.P6145275630353502902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P6145275630353502902

namespace A078358

/-- `∑[(char[(n+1)²]+1)!]` -/
def P6145275630353502902.Spec : Prop :=
  ∀ n, (P6145275630353502902.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P6642882503988194101

`∑[gcd(2, char[(n+1)²]+1)]`
-/

namespace A078358.P6642882503988194101
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 ((if ∃ j, f2 j = n then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P6642882503988194101

namespace A078358

/-- `∑[gcd(2, char[(n+1)²]+1)]` -/
def P6642882503988194101.Spec : Prop :=
  ∀ n, (P6642882503988194101.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P2513515400405911429

`∑[(char[(n+1)²]+1)%3]`
-/

namespace A078358.P2513515400405911429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0) + 1) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P2513515400405911429

namespace A078358

/-- `∑[(char[(n+1)²]+1)%3]` -/
def P2513515400405911429.Spec : Prop :=
  ∀ n, (P2513515400405911429.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P102398390165912222

`∑[C(2, 2-char[(n+1)²])]`
-/

namespace A078358.P102398390165912222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P102398390165912222

namespace A078358

/-- `∑[C(2, 2-char[(n+1)²])]` -/
def P102398390165912222.Spec : Prop :=
  ∀ n, (P102398390165912222.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P5785812329026949624

`∑[or(2, char[(n+1)²])-1]`
-/

namespace A078358.P5785812329026949624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (if ∃ j, f2 j = n then 1 else 0) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P5785812329026949624

namespace A078358

/-- `∑[or(2, char[(n+1)²])-1]` -/
def P5785812329026949624.Spec : Prop :=
  ∀ n, P5785812329026949624.a n = A078358 (n + 1)

end A078358

/-! ## A078358.P10280467996442634115

`∑[char[C(n+1, n)²]+1]`
-/

namespace A078358.P10280467996442634115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P10280467996442634115

namespace A078358

/-- `∑[char[C(n+1, n)²]+1]` -/
def P10280467996442634115.Spec : Prop :=
  ∀ n, (P10280467996442634115.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P9419803313823894830

`comp[n²+n]%(2*(n+1))`
-/

namespace A078358.P9419803313823894830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % (2 * (n + 1))

end

end A078358.P9419803313823894830

namespace A078358

/-- `comp[n²+n]%(2*(n+1))` -/
def P9419803313823894830.Spec : Prop :=
  ∀ n, (P9419803313823894830.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P3049439731637707013

`gcd(n, n+1)*comp[n*(n+1)]`
-/

namespace A078358.P3049439731637707013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A078358.P3049439731637707013

namespace A078358

/-- `gcd(n, n+1)*comp[n*(n+1)]` -/
def P3049439731637707013.Spec : Prop :=
  ∀ n, (P3049439731637707013.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P6535637836489585078

`comp[A002378(n)]`
-/

namespace A078358.P6535637836489585078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078358.P6535637836489585078

namespace A078358

/-- `comp[A002378(n)]` -/
def P6535637836489585078.Spec : Prop :=
  ∀ n, (P6535637836489585078.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P3319207923613506045

`comp[A038714(n)]`
-/

namespace A078358.P3319207923613506045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078358.P3319207923613506045

namespace A078358

/-- `comp[A038714(n)]` -/
def P3319207923613506045.Spec : Prop :=
  ∀ n, (P3319207923613506045.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P13553460057460651068

`comp[A083392(n)]`
-/

namespace A078358.P13553460057460651068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083392 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078358.P13553460057460651068

namespace A078358

/-- `comp[A083392(n)]` -/
def P13553460057460651068.Spec : Prop :=
  ∀ n, (P13553460057460651068.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P2463745926668272183

`comp[A110660(n)]`
-/

namespace A078358.P2463745926668272183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078358.P2463745926668272183

namespace A078358

/-- `comp[A110660(n)]` -/
def P2463745926668272183.Spec : Prop :=
  ∀ n, (P2463745926668272183.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P2409337199405441294

`comp[A131723(n)]`
-/

namespace A078358.P2409337199405441294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131723 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A078358.P2409337199405441294

namespace A078358

/-- `comp[A131723(n)]` -/
def P2409337199405441294.Spec : Prop :=
  ∀ n, (P2409337199405441294.a n : ℤ) = A078358 (n + 1)

end A078358

/-! ## A078358.P9850941619718400883

`∑[2-A267635(n)]`
-/

namespace A078358.P9850941619718400883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A267635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078358.P9850941619718400883

namespace A078358

/-- `∑[2-A267635(n)]` -/
def P9850941619718400883.Spec : Prop :=
  ∀ n, P9850941619718400883.a n = A078358 (n + 1)

end A078358

/-!
# A078359: Number of ways to write n as sum of a positive square and a positive cube.

The programs for A078359, there is no canonical definition to state claims against.
-/

/-! ## A078359.P1356705718591725752

`C(A001222(A283455(n+1)), A266364(n))`
-/

namespace A078359.P1356705718591725752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 (A283455 (n + 1)).toNat).toNat (A266364 n).toNat

end

end A078359.P1356705718591725752

/-! ## A078359.P10267520712389985546

`C(A051903(A283455(n+1)), A266528(n))`
-/

namespace A078359.P10267520712389985546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051903 (A283455 (n + 1)).toNat).toNat (A266528 n).toNat

end

end A078359.P10267520712389985546

/-! ## A078359.P8373283694230954991

`C(A072911(A266551(3*(n+2))), A266528(n))`
-/

namespace A078359.P8373283694230954991
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A072911 (A266551 (3 * (n + 2))).toNat).toNat (A266528 n).toNat

end

end A078359.P8373283694230954991

/-! ## A078359.P17622770988403887947

`A025457(A073019(n+2))`
-/

namespace A078359.P17622770988403887947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (A073019 (n + 2)).toNat

end

end A078359.P17622770988403887947

/-! ## A078359.P2688282606764959154

`and(A158819(n+1), A165057(A229131(n+1)))`
-/

namespace A078359.P2688282606764959154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158819 (n + 1)) (A165057 (A229131 (n + 1)).toNat)

end

end A078359.P2688282606764959154

/-!
# A078360: Numbers having a unique representation as sum of a positive square and a positive cube.

The programs for A078360, there is no canonical definition to state claims against.
-/

/-! ## A078360.P10920598254162485042

`eq[1, A078359(n+1)]+1`
-/

namespace A078360.P10920598254162485042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078360.P10920598254162485042

/-! ## A078360.P1353533014887348052

`eq[1, A078359(A028310(n))]`
-/

namespace A078360.P1353533014887348052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078360.P1353533014887348052

/-! ## A078360.P9436254614351086617

`eq[1, A002262(a(A078359(n)))]` with `a(0)=6, a(1)=2`
-/

namespace A078360.P9436254614351086617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6, 2] fun n f2 =>
  A002262 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078360.P9436254614351086617

/-! ## A078360.P3441868050814736735

`eq[1, A284050(a(A078359(n)))]` with `a(0)=2, a(1)=3, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A078360.P3441868050814736735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 1, 2, 2] fun n f2 =>
  A284050 (f2 (A078359 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078360.P3441868050814736735

/-! ## A078360.P2444177025557003476

`∩[A055394(n+1), A235986(n+1)]`
-/

namespace A078360.P2444177025557003476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078360.P2444177025557003476

/-!
# A078361: Minimal positive solution a(n) of Pell equation a(n)^2 - D(n)*b(n)^2 = +4 or -4 with D(n)=A077425(n). The companion sequence is b(n)=A077058(n).

The programs for A078361, there is no canonical definition to state claims against.
-/

/-! ## A078361.P9118911779214175764

`2*A077057(n+1)-A077058(n+1)`
-/

namespace A078361.P9118911779214175764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077057 (n + 1) - A077058 (n + 1)

end

end A078361.P9118911779214175764

/-! ## A078361.P5521000037028786093

`A004277(A077057(n+1))-A077058(n+1)`
-/

namespace A078361.P5521000037028786093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A077057 (n + 1)).toNat - A077058 (n + 1)

end

end A078361.P5521000037028786093

/-!
# A078362: A Chebyshev S-sequence with Diophantine property.

The programs for A078362, the canonical program `A078362.P2036950443164086940` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078362 has offset 0).

The definition of A078362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078362.P2036950443164086940

`13*a(n-1)-a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078362

/-- `13*a(n-1)-a(n-2)` -/
def P2036950443164086940.Spec : Prop :=
  ∀ n, P2036950443164086940.a n = A078362 n

theorem P2036950443164086940.correct : P2036950443164086940.Spec := by
  intro n
  simp only [A078362]

end A078362

/-! ## A078362.P6719715896211220684

`sqrt((A078363(n+1)²-4)/165)`
-/

namespace A078362.P6719715896211220684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A078363 (n + 1) ^ 2 - 4 : ℚ) / 165 : ℝ)

end

end A078362.P6719715896211220684

namespace A078362

/-- `sqrt((A078363(n+1)²-4)/165)` -/
def P6719715896211220684.Spec : Prop :=
  ∀ n, P6719715896211220684.a n = (A078362 n : ℝ)

end A078362

/-! ## A078362.P575819877995141989

`ogf(1/(1-13x+x^2))`
-/

namespace A078362.P575819877995141989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -13, 1] n

end

end A078362.P575819877995141989

namespace A078362

/-- `ogf(1/(1-13x+x^2))` -/
def P575819877995141989.Spec : Prop :=
  ∀ n, P575819877995141989.a n = A078362 n

end A078362

/-! ## A078362.P9696930976711385678

`∑[A085260(n+1)]`
-/

namespace A078362.P9696930976711385678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078362.P9696930976711385678

namespace A078362

/-- `∑[A085260(n+1)]` -/
def P9696930976711385678.Spec : Prop :=
  ∀ n, P9696930976711385678.a n = A078362 n

end A078362

/-! ## A078362.P7598269216150651848

`A126866(n)-a(n-1)` with `a(0)=1`
-/

namespace A078362.P7598269216150651848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126866 n - a (n - 1)

end

end A078362.P7598269216150651848

namespace A078362

/-- `A126866(n)-a(n-1)` -/
def P7598269216150651848.Spec : Prop :=
  ∀ n, P7598269216150651848.a n = A078362 n

end A078362

/-! ## A078362.P6381701487339128479

`Δ[A098300(n)-a(n-1)]` with `a(0)=0`
-/

namespace A078362.P6381701487339128479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A098300 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078362.P6381701487339128479

namespace A078362

/-- `Δ[A098300(n)-a(n-1)]` -/
def P6381701487339128479.Spec : Prop :=
  ∀ n, P6381701487339128479.a n = A078362 n

end A078362

/-! ## A078362.P17399201855179926155

`∑[abs(a(n-1)-A078363(n))]` with `a(0)=1`
-/

namespace A078362.P17399201855179926155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  |f1 (n - 1) - A078363 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078362.P17399201855179926155

namespace A078362

/-- `∑[abs(a(n-1)-A078363(n))]` -/
def P17399201855179926155.Spec : Prop :=
  ∀ n, P17399201855179926155.a n = A078362 n

end A078362

/-! ## A078362.P9216642014554780423

`∑[A098310(n+1)+A098310(n)]`
-/

namespace A078362.P9216642014554780423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098310 (n + 1) + A098310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078362.P9216642014554780423

namespace A078362

/-- `∑[A098310(n+1)+A098310(n)]` -/
def P9216642014554780423.Spec : Prop :=
  ∀ n, P9216642014554780423.a n = A078362 n

end A078362

/-!
# A078363: A Chebyshev T-sequence with Diophantine property.

The programs for A078363, the canonical program `A078363.P17557404867361463653` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078363 has offset 0).

The definition of A078363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078363.P17557404867361463653

`13*a(n-1)-a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078363

/-- `13*a(n-1)-a(n-2)` -/
def P17557404867361463653.Spec : Prop :=
  ∀ n, P17557404867361463653.a n = A078363 n

theorem P17557404867361463653.correct : P17557404867361463653.Spec := by
  intro n
  simp only [A078363]

end A078363

/-! ## A078363.P314889740532730280

`ogf((2-13x)/(1-13x+x^2))`
-/

namespace A078363.P314889740532730280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -13] [1, -13, 1] n

end

end A078363.P314889740532730280

namespace A078363

/-- `ogf((2-13x)/(1-13x+x^2))` -/
def P314889740532730280.Spec : Prop :=
  ∀ n, P314889740532730280.a n = A078363 n

end A078363

/-! ## A078363.P8867589564609409356

`Δ[Δ[A098300(abs(1-n))]]`
-/

namespace A078363.P8867589564609409356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098300 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078363.P8867589564609409356

namespace A078363

/-- `Δ[Δ[A098300(abs(1-n))]]` -/
def P8867589564609409356.Spec : Prop :=
  ∀ n, P8867589564609409356.a n = A078363 n

end A078363

/-! ## A078363.P10211941789457469485

`A085260(n+1)+A085260(A028310(n))`
-/

namespace A078363.P10211941789457469485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085260 (n + 1) + A085260 (A028310 n).toNat

end

end A078363.P10211941789457469485

namespace A078363

/-- `A085260(n+1)+A085260(A028310(n))` -/
def P10211941789457469485.Spec : Prop :=
  ∀ n, P10211941789457469485.a n = A078363 n

end A078363

/-! ## A078363.P8180751918334734486

`A085260(n+1)+A085260(A134478(∑[n]))`
-/

namespace A078363.P8180751918334734486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085260 (n + 1) + A085260 (A134478 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A078363.P8180751918334734486

namespace A078363

/-- `A085260(n+1)+A085260(A134478(∑[n]))` -/
def P8180751918334734486.Spec : Prop :=
  ∀ n, P8180751918334734486.a n = A078363 n

end A078363

/-! ## A078363.P2999010141010383521

`A085260(n+1)+A085260(A000007(n)+n)`
-/

namespace A078363.P2999010141010383521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085260 (n + 1) + A085260 (A000007 n + (n : ℤ)).toNat

end

end A078363.P2999010141010383521

namespace A078363

/-- `A085260(n+1)+A085260(A000007(n)+n)` -/
def P2999010141010383521.Spec : Prop :=
  ∀ n, P2999010141010383521.a n = A078363 n

end A078363

/-! ## A078363.P9778930340543434809

`((13+sqrt(165))^n+(13-sqrt(165))^n)/2^n`
-/

namespace A078363.P9778930340543434809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((13 + Real.sqrt (165 : ℝ)) ^ n + (13 - Real.sqrt (165 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A078363.P9778930340543434809

namespace A078363

/-- `((13+sqrt(165))^n+(13-sqrt(165))^n)/2^n` -/
def P9778930340543434809.Spec : Prop :=
  ∀ n, P9778930340543434809.a n = (A078363 n : ℝ)

theorem P9778930340543434809.correct : P9778930340543434809.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078363, Nat.add_sub_cancel, A078363.P9778930340543434809.a, A078363.P17557404867361463653.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078363, Nat.add_sub_cancel, A078363.P9778930340543434809.a, A078363.P17557404867361463653.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078363

/-!
# A078364: A Chebyshev S-sequence with Diophantine property.

The programs for A078364, the canonical program `A078364.P15419036456267862370` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078364 has offset 0).

The definition of A078364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078364.P15419036456267862370

`15*a(n-1)-a(n-2)` with `a(0)=1, a(1)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078364

/-- `15*a(n-1)-a(n-2)` -/
def P15419036456267862370.Spec : Prop :=
  ∀ n, P15419036456267862370.a n = A078364 n

theorem P15419036456267862370.correct : P15419036456267862370.Spec := by
  intro n
  simp only [A078364]

end A078364

/-! ## A078364.P1442677963965958130

`ogf(1/(1-15x+x^2))`
-/

namespace A078364.P1442677963965958130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -15, 1] n

end

end A078364.P1442677963965958130

namespace A078364

/-- `ogf(1/(1-15x+x^2))` -/
def P1442677963965958130.Spec : Prop :=
  ∀ n, P1442677963965958130.a n = A078364 n

end A078364

/-! ## A078364.P6912830164015236067

`∑[A160682(n+1)]`
-/

namespace A078364.P6912830164015236067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078364.P6912830164015236067

namespace A078364

/-- `∑[A160682(n+1)]` -/
def P6912830164015236067.Spec : Prop :=
  ∀ n, P6912830164015236067.a n = A078364 n

end A078364

/-! ## A078364.P18159515898095270205

`Δ[A098302(n)-a(n-1)]` with `a(0)=0`
-/

namespace A078364.P18159515898095270205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A098302 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078364.P18159515898095270205

namespace A078364

/-- `Δ[A098302(n)-a(n-1)]` -/
def P18159515898095270205.Spec : Prop :=
  ∀ n, P18159515898095270205.a n = A078364 n

end A078364

/-! ## A078364.P5549838700508453369

`A161591(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A078364.P5549838700508453369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161591 (n + 1) - a (n - 1)

end

end A078364.P5549838700508453369

namespace A078364

/-- `A161591(n+1)-a(n-1)` -/
def P5549838700508453369.Spec : Prop :=
  ∀ n, P5549838700508453369.a n = A078364 n

end A078364

/-! ## A078364.P5333999116245006781

`16*a(n-1)-A161591(n)` with `a(0)=1`
-/

namespace A078364.P5333999116245006781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) - A161591 n

end

end A078364.P5333999116245006781

namespace A078364

/-- `16*a(n-1)-A161591(n)` -/
def P5333999116245006781.Spec : Prop :=
  ∀ n, P5333999116245006781.a n = A078364 n

end A078364

/-! ## A078364.P17578349906766532433

`∑[record[A160682(A193738(n))]]`
-/

namespace A078364.P17578349906766532433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160682 (A193738 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078364.P17578349906766532433

namespace A078364

/-- `∑[record[A160682(A193738(n))]]` -/
def P17578349906766532433.Spec : Prop :=
  ∀ n, P17578349906766532433.a n = A078364 n

end A078364

/-! ## A078364.P839541582990501815

`∑[A099271(n+1)+A099271(n)]`
-/

namespace A078364.P839541582990501815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099271 (n + 1) + A099271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078364.P839541582990501815

namespace A078364

/-- `∑[A099271(n+1)+A099271(n)]` -/
def P839541582990501815.Spec : Prop :=
  ∀ n, P839541582990501815.a n = A078364 n

end A078364

/-!
# A078365: A Chebyshev T-sequence with Diophantine property.

The programs for A078365, the canonical program `A078365.P6772546135818025039` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078365 has offset 0).

The definition of A078365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078365.P6772546135818025039

`15*a(n-1)-a(n-2)` with `a(0)=2, a(1)=15`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078365

/-- `15*a(n-1)-a(n-2)` -/
def P6772546135818025039.Spec : Prop :=
  ∀ n, P6772546135818025039.a n = A078365 n

theorem P6772546135818025039.correct : P6772546135818025039.Spec := by
  intro n
  simp only [A078365]

end A078365

/-! ## A078365.P1970073541783691989

`ogf((2-15x)/(1-15x+x^2))`
-/

namespace A078365.P1970073541783691989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -15] [1, -15, 1] n

end

end A078365.P1970073541783691989

namespace A078365

/-- `ogf((2-15x)/(1-15x+x^2))` -/
def P1970073541783691989.Spec : Prop :=
  ∀ n, P1970073541783691989.a n = A078365 n

end A078365

/-! ## A078365.P16962820739738013775

`13*A098302(n)+2`
-/

namespace A078365.P16962820739738013775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A098302 n + 2

end

end A078365.P16962820739738013775

namespace A078365

/-- `13*A098302(n)+2` -/
def P16962820739738013775.Spec : Prop :=
  ∀ n, P16962820739738013775.a n = A078365 n

end A078365

/-! ## A078365.P2768118169137870894

`A160682(n+1)+A160682(A028310(n))`
-/

namespace A078365.P2768118169137870894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160682 (n + 1) + A160682 (A028310 n).toNat

end

end A078365.P2768118169137870894

namespace A078365

/-- `A160682(n+1)+A160682(A028310(n))` -/
def P2768118169137870894.Spec : Prop :=
  ∀ n, P2768118169137870894.a n = A078365 n

end A078365

/-! ## A078365.P7231896326921476462

`A060964(eq[15, A002262(n)])`
-/

namespace A078365.P7231896326921476462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078365.P7231896326921476462

namespace A078365

/-- `A060964(eq[15, A002262(n)])` -/
def P7231896326921476462.Spec : Prop :=
  ∀ n, P7231896326921476462.a n = A078365 n

end A078365

/-! ## A078365.P5397866496631162608

`A060964(eq[16, A002260(n+1)])`
-/

namespace A078365.P5397866496631162608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078365.P5397866496631162608

namespace A078365

/-- `A060964(eq[16, A002260(n+1)])` -/
def P5397866496631162608.Spec : Prop :=
  ∀ n, P5397866496631162608.a n = A078365 n

end A078365

/-! ## A078365.P15663764394620128029

`A060964(eq[16, A134868(n+1)])`
-/

namespace A078365.P15663764394620128029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078365.P15663764394620128029

namespace A078365

/-- `A060964(eq[16, A134868(n+1)])` -/
def P15663764394620128029.Spec : Prop :=
  ∀ n, P15663764394620128029.a n = A078365 n

end A078365

/-! ## A078365.P3019823137963059371

`((15+sqrt(221))^n+(15-sqrt(221))^n)/2^n`
-/

namespace A078365.P3019823137963059371
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((15 + Real.sqrt (221 : ℝ)) ^ n + (15 - Real.sqrt (221 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A078365.P3019823137963059371

namespace A078365

/-- `((15+sqrt(221))^n+(15-sqrt(221))^n)/2^n` -/
def P3019823137963059371.Spec : Prop :=
  ∀ n, P3019823137963059371.a n = (A078365 n : ℝ)

theorem P3019823137963059371.correct : P3019823137963059371.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078365, Nat.add_sub_cancel, A078365.P3019823137963059371.a, A078365.P6772546135818025039.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078365, Nat.add_sub_cancel, A078365.P3019823137963059371.a, A078365.P6772546135818025039.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078365

/-!
# A078366: A Chebyshev S-sequence with Diophantine property.

The programs for A078366, the canonical program `A078366.P135284017620035086` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078366 has offset 0).

The definition of A078366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078366.P135284017620035086

`17*a(n-1)-a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078366

/-- `17*a(n-1)-a(n-2)` -/
def P135284017620035086.Spec : Prop :=
  ∀ n, P135284017620035086.a n = A078366 n

theorem P135284017620035086.correct : P135284017620035086.Spec := by
  intro n
  simp only [A078366]

end A078366

/-! ## A078366.P11264884956644385943

`sqrt((A078367(n+1)²-4)/285)`
-/

namespace A078366.P11264884956644385943
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A078367 (n + 1) ^ 2 - 4 : ℚ) / 285 : ℝ)

end

end A078366.P11264884956644385943

namespace A078366

/-- `sqrt((A078367(n+1)²-4)/285)` -/
def P11264884956644385943.Spec : Prop :=
  ∀ n, P11264884956644385943.a n = (A078366 n : ℝ)

end A078366

/-! ## A078366.P17255086583555111622

`ogf(1/(1-17x+x^2))`
-/

namespace A078366.P17255086583555111622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -17, 1] n

end

end A078366.P17255086583555111622

namespace A078366

/-- `ogf(1/(1-17x+x^2))` -/
def P17255086583555111622.Spec : Prop :=
  ∀ n, P17255086583555111622.a n = A078366 n

end A078366

/-! ## A078366.P2467782500948901374

`∑[A161595(n+1)]`
-/

namespace A078366.P2467782500948901374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078366.P2467782500948901374

namespace A078366

/-- `∑[A161595(n+1)]` -/
def P2467782500948901374.Spec : Prop :=
  ∀ n, P2467782500948901374.a n = A078366 n

end A078366

/-! ## A078366.P16005851836323821013

`Δ[A098304(n)-a(n-1)]` with `a(0)=0`
-/

namespace A078366.P16005851836323821013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A098304 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078366.P16005851836323821013

namespace A078366

/-- `Δ[A098304(n)-a(n-1)]` -/
def P16005851836323821013.Spec : Prop :=
  ∀ n, P16005851836323821013.a n = A078366 n

end A078366

/-! ## A078366.P9210379162412215888

`A161599(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A078366.P9210379162412215888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161599 (n + 1) - a (n - 1)

end

end A078366.P9210379162412215888

namespace A078366

/-- `A161599(n+1)-a(n-1)` -/
def P9210379162412215888.Spec : Prop :=
  ∀ n, P9210379162412215888.a n = A078366 n

end A078366

/-! ## A078366.P13470464470179612933

`18*a(n-1)-A161599(n)` with `a(0)=1`
-/

namespace A078366.P13470464470179612933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  18 * a (n - 1) - A161599 n

end

end A078366.P13470464470179612933

namespace A078366

/-- `18*a(n-1)-A161599(n)` -/
def P13470464470179612933.Spec : Prop :=
  ∀ n, P13470464470179612933.a n = A078366 n

end A078366

/-! ## A078366.P534264517168358009

`∑[record[A161595(A051340(n))]]`
-/

namespace A078366.P534264517168358009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161595 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078366.P534264517168358009

namespace A078366

/-- `∑[record[A161595(A051340(n))]]` -/
def P534264517168358009.Spec : Prop :=
  ∀ n, P534264517168358009.a n = A078366 n

end A078366

/-! ## A078366.P11407422037514769384

`∑[record[A161595(A152271(n))]]`
-/

namespace A078366.P11407422037514769384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161595 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078366.P11407422037514769384

namespace A078366

/-- `∑[record[A161595(A152271(n))]]` -/
def P11407422037514769384.Spec : Prop :=
  ∀ n, P11407422037514769384.a n = A078366 n

end A078366

/-! ## A078366.P12713977613439541290

`∑[A099273(n+1)+A099273(n)]`
-/

namespace A078366.P12713977613439541290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099273 (n + 1) + A099273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078366.P12713977613439541290

namespace A078366

/-- `∑[A099273(n+1)+A099273(n)]` -/
def P12713977613439541290.Spec : Prop :=
  ∀ n, P12713977613439541290.a n = A078366 n

end A078366

/-!
# A078367: A Chebyshev T-sequence with Diophantine property.

The programs for A078367, the canonical program `A078367.P13868056440944435490` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078367 has offset 0).

The definition of A078367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078367.P13868056440944435490

`17*a(n-1)-a(n-2)` with `a(0)=2, a(1)=17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078367

/-- `17*a(n-1)-a(n-2)` -/
def P13868056440944435490.Spec : Prop :=
  ∀ n, P13868056440944435490.a n = A078367 n

theorem P13868056440944435490.correct : P13868056440944435490.Spec := by
  intro n
  simp only [A078367]

end A078367

/-! ## A078367.P9987243854625773392

`ogf((2-17x)/(1-17x+x^2))`
-/

namespace A078367.P9987243854625773392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -17] [1, -17, 1] n

end

end A078367.P9987243854625773392

namespace A078367

/-- `ogf((2-17x)/(1-17x+x^2))` -/
def P9987243854625773392.Spec : Prop :=
  ∀ n, P9987243854625773392.a n = A078367 n

end A078367

/-! ## A078367.P6748150325268897538

`15*A098304(n)+2`
-/

namespace A078367.P6748150325268897538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A098304 n + 2

end

end A078367.P6748150325268897538

namespace A078367

/-- `15*A098304(n)+2` -/
def P6748150325268897538.Spec : Prop :=
  ∀ n, P6748150325268897538.a n = A078367 n

end A078367

/-! ## A078367.P436628369563477595

`A161595(n+1)+A161595(A028310(n))`
-/

namespace A078367.P436628369563477595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161595 (n + 1) + A161595 (A028310 n).toNat

end

end A078367.P436628369563477595

namespace A078367

/-- `A161595(n+1)+A161595(A028310(n))` -/
def P436628369563477595.Spec : Prop :=
  ∀ n, P436628369563477595.a n = A078367 n

end A078367

/-! ## A078367.P17945911437028207391

`A060964(eq[17, A002262(n)])`
-/

namespace A078367.P17945911437028207391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078367.P17945911437028207391

namespace A078367

/-- `A060964(eq[17, A002262(n)])` -/
def P17945911437028207391.Spec : Prop :=
  ∀ n, P17945911437028207391.a n = A078367 n

end A078367

/-! ## A078367.P3265440589767993503

`A060964(eq[18, A002260(n+1)])`
-/

namespace A078367.P3265440589767993503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078367.P3265440589767993503

namespace A078367

/-- `A060964(eq[18, A002260(n+1)])` -/
def P3265440589767993503.Spec : Prop :=
  ∀ n, P3265440589767993503.a n = A078367 n

end A078367

/-! ## A078367.P562166917135119841

`((17+sqrt(285))^n+(17-sqrt(285))^n)/2^n`
-/

namespace A078367.P562166917135119841
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((17 + Real.sqrt (285 : ℝ)) ^ n + (17 - Real.sqrt (285 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A078367.P562166917135119841

namespace A078367

/-- `((17+sqrt(285))^n+(17-sqrt(285))^n)/2^n` -/
def P562166917135119841.Spec : Prop :=
  ∀ n, P562166917135119841.a n = (A078367 n : ℝ)

theorem P562166917135119841.correct : P562166917135119841.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078367, Nat.add_sub_cancel, A078367.P562166917135119841.a, A078367.P13868056440944435490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078367, Nat.add_sub_cancel, A078367.P562166917135119841.a, A078367.P13868056440944435490.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078367

/-!
# A078368: A Chebyshev S-sequence with Diophantine property.

The programs for A078368, the canonical program `A078368.P15429380246600630932` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078368 has offset 0).

The definition of A078368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078368.P15429380246600630932

`19*a(n-1)-a(n-2)` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078368

/-- `19*a(n-1)-a(n-2)` -/
def P15429380246600630932.Spec : Prop :=
  ∀ n, P15429380246600630932.a n = A078368 n

theorem P15429380246600630932.correct : P15429380246600630932.Spec := by
  intro n
  simp only [A078368]

end A078368

/-! ## A078368.P17348026804988181750

`ogf(1/(1-19x+x^2))`
-/

namespace A078368.P17348026804988181750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -19, 1] n

end

end A078368.P17348026804988181750

namespace A078368

/-- `ogf(1/(1-19x+x^2))` -/
def P17348026804988181750.Spec : Prop :=
  ∀ n, P17348026804988181750.a n = A078368 n

end A078368

/-! ## A078368.P13992234076139023584

`∑[A099275(n+1)+A099275(n)]`
-/

namespace A078368.P13992234076139023584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099275 (n + 1) + A099275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078368.P13992234076139023584

namespace A078368

/-- `∑[A099275(n+1)+A099275(n)]` -/
def P13992234076139023584.Spec : Prop :=
  ∀ n, P13992234076139023584.a n = A078368 n

end A078368

/-! ## A078368.P11925155904216138401

`A179943(eq[17, A025581(n)])`
-/

namespace A078368.P11925155904216138401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179943 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078368.P11925155904216138401

namespace A078368

/-- `A179943(eq[17, A025581(n)])` -/
def P11925155904216138401.Spec : Prop :=
  ∀ n, P11925155904216138401.a n = A078368 n

end A078368

/-! ## A078368.P8272628649580826339

`(a(n-1)²-1)/a(n-2)` with `a(0)=1, a(1)=19`
-/

namespace A078368.P8272628649580826339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 19] fun n a =>
  (a (n - 1) ^ 2 - 1) / a (n - 2)

end

end A078368.P8272628649580826339

namespace A078368

/-- `(a(n-1)²-1)/a(n-2)` -/
def P8272628649580826339.Spec : Prop :=
  ∀ n, P8272628649580826339.a n = (A078368 n : ℚ)

end A078368

/-!
# A078369: A Chebyshev T-sequence with Diophantine property.

The programs for A078369, the canonical program `A078369.P3501412528752642799` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078369 has offset 0).

The definition of A078369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078369.P3501412528752642799

`19*a(n-1)-a(n-2)` with `a(0)=2, a(1)=19`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078369

/-- `19*a(n-1)-a(n-2)` -/
def P3501412528752642799.Spec : Prop :=
  ∀ n, P3501412528752642799.a n = A078369 n

theorem P3501412528752642799.correct : P3501412528752642799.Spec := by
  intro n
  simp only [A078369]

end A078369

/-! ## A078369.P17622470820527648419

`ogf((2-19x)/(1-19x+x^2))`
-/

namespace A078369.P17622470820527648419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -19] [1, -19, 1] n

end

end A078369.P17622470820527648419

namespace A078369

/-- `ogf((2-19x)/(1-19x+x^2))` -/
def P17622470820527648419.Spec : Prop :=
  ∀ n, P17622470820527648419.a n = A078369 n

end A078369

/-! ## A078369.P14021503934993270955

`A060964(eq[19, A002262(n)])`
-/

namespace A078369.P14021503934993270955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078369.P14021503934993270955

namespace A078369

/-- `A060964(eq[19, A002262(n)])` -/
def P14021503934993270955.Spec : Prop :=
  ∀ n, P14021503934993270955.a n = A078369 n

end A078369

/-! ## A078369.P17192296010072201895

`A060964(eq[20, A002260(n+1)])`
-/

namespace A078369.P17192296010072201895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078369.P17192296010072201895

namespace A078369

/-- `A060964(eq[20, A002260(n+1)])` -/
def P17192296010072201895.Spec : Prop :=
  ∀ n, P17192296010072201895.a n = A078369 n

end A078369

/-! ## A078369.P13436505151619126167

`A060964(eq[20, A134868(n+1)])`
-/

namespace A078369.P13436505151619126167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078369.P13436505151619126167

namespace A078369

/-- `A060964(eq[20, A134868(n+1)])` -/
def P13436505151619126167.Spec : Prop :=
  ∀ n, P13436505151619126167.a n = A078369 n

end A078369

/-! ## A078369.P2888294507247330435

`((19+sqrt(357))^n+(19-sqrt(357))^n)/2^n`
-/

namespace A078369.P2888294507247330435
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((19 + Real.sqrt (357 : ℝ)) ^ n + (19 - Real.sqrt (357 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A078369.P2888294507247330435

namespace A078369

/-- `((19+sqrt(357))^n+(19-sqrt(357))^n)/2^n` -/
def P2888294507247330435.Spec : Prop :=
  ∀ n, P2888294507247330435.a n = (A078369 n : ℝ)

theorem P2888294507247330435.correct : P2888294507247330435.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A078369, Nat.add_sub_cancel, A078369.P2888294507247330435.a, A078369.P3501412528752642799.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A078369, Nat.add_sub_cancel, A078369.P2888294507247330435.a, A078369.P3501412528752642799.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A078369

/-!
# A078370: a(n) = 4*(n+1)*n + 5.

The programs for A078370, the canonical program `A078370.P14272331962349434448` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078370 has offset 0).

The definition of A078370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)*n+5` (program `A078370.P14272331962349434448`, by `A078370.P14272331962349434448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078370.P982384176211858489

`(2*n+1)²+4`
-/

namespace A078370.P982384176211858489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + 4

end

end A078370.P982384176211858489

namespace A078370

/-- `(2*n+1)²+4` -/
def P982384176211858489.Spec : Prop :=
  ∀ n, (P982384176211858489.a n : ℤ) = A078370 n

theorem P982384176211858489.correct : P982384176211858489.Spec := by
  intro n
  simp only [A078370, Nat.add_sub_cancel, A078370.P982384176211858489.a, A078370.P14272331962349434448.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078370

/-! ## A078370.P14272331962349434448

`4*(n+1)*n+5`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078370

/-- `4*(n+1)*n+5` -/
def P14272331962349434448.Spec : Prop :=
  ∀ n, (P14272331962349434448.a n : ℤ) = A078370 n

theorem P14272331962349434448.correct : P14272331962349434448.Spec := by
  intro n
  simp only [A078370]

end A078370

/-! ## A078370.P2507473797435168413

`or(5, ∑[8*n])`
-/

namespace A078370.P2507473797435168413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078370.P2507473797435168413

namespace A078370

/-- `or(5, ∑[8*n])` -/
def P2507473797435168413.Spec : Prop :=
  ∀ n, (P2507473797435168413.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P11376354910363902620

`xor(5, ∑[8*n])`
-/

namespace A078370.P11376354910363902620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078370.P11376354910363902620

namespace A078370

/-- `xor(5, ∑[8*n])` -/
def P11376354910363902620.Spec : Prop :=
  ∀ n, (P11376354910363902620.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P10703633881164162500

`record[xor(1, n)²+4]`
-/

namespace A078370.P10703633881164162500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078370.P10703633881164162500

namespace A078370

/-- `record[xor(1, n)²+4]` -/
def P10703633881164162500.Spec : Prop :=
  ∀ n, (P10703633881164162500.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P10811129489342147883

`record[or(4, xor(1, n)²)]`
-/

namespace A078370.P10811129489342147883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (Nat.xor 1 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078370.P10811129489342147883

namespace A078370

/-- `record[or(4, xor(1, n)²)]` -/
def P10811129489342147883.Spec : Prop :=
  ∀ n, (P10811129489342147883.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P16186966284943924499

`-xor(4, -Δ[n²]²)`
-/

namespace A078370.P16186966284943924499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 4 (-(((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2))

end

end A078370.P16186966284943924499

namespace A078370

/-- `-xor(4, -Δ[n²]²)` -/
def P16186966284943924499.Spec : Prop :=
  ∀ n, P16186966284943924499.a n = A078370 n

end A078370

/-! ## A078370.P11502155769173365300

`∑[a(n-1)+8]` with `a(0)=5, a(1)=8`
-/

namespace A078370.P11502155769173365300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 8] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078370.P11502155769173365300

namespace A078370

/-- `∑[a(n-1)+8]` -/
def P11502155769173365300.Spec : Prop :=
  ∀ n, (P11502155769173365300.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P5746816210071953325

`record[(n^and(1, n))²+4]`
-/

namespace A078370.P5746816210071953325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n) ^ 2 + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078370.P5746816210071953325

namespace A078370

/-- `record[(n^and(1, n))²+4]` -/
def P5746816210071953325.Spec : Prop :=
  ∀ n, (P5746816210071953325.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P15592265669598159384

`∑[ogf((5-2x+5x^2)/(1-2x+x^2))]`
-/

namespace A078370.P15592265669598159384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078370.P15592265669598159384

namespace A078370

/-- `∑[ogf((5-2x+5x^2)/(1-2x+x^2))]` -/
def P15592265669598159384.Spec : Prop :=
  ∀ n, P15592265669598159384.a n = A078370 n

end A078370

/-! ## A078370.P15890432200938815816

`ogf((5-2x+5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A078370.P15890432200938815816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -2, 5] [1, -3, 3, -1] n

end

end A078370.P15890432200938815816

namespace A078370

/-- `ogf((5-2x+5x^2)/(1-3x+3x^2-x^3))` -/
def P15890432200938815816.Spec : Prop :=
  ∀ n, P15890432200938815816.a n = A078370 n

end A078370

/-! ## A078370.P388873936001619823

`∑[8*n%a(n-1)]` with `a(0)=5`
-/

namespace A078370.P388873936001619823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  8 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078370.P388873936001619823

namespace A078370

/-- `∑[8*n%a(n-1)]` -/
def P388873936001619823.Spec : Prop :=
  ∀ n, (P388873936001619823.a n : ℤ) = A078370 n

end A078370

/-! ## A078370.P12999318997526993018

`record[lcm(4, n+1)+(1-n)²]`
-/

namespace A078370.P12999318997526993018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (n + 1) : ℤ) + (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078370.P12999318997526993018

namespace A078370

/-- `record[lcm(4, n+1)+(1-n)²]` -/
def P12999318997526993018.Spec : Prop :=
  ∀ n, P12999318997526993018.a n = A078370 n

end A078370

/-! ## A078370.P11475284432928888517

`Δ[A217873(n)+n]`
-/

namespace A078370.P11475284432928888517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217873 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078370.P11475284432928888517

namespace A078370

/-- `Δ[A217873(n)+n]` -/
def P11475284432928888517.Spec : Prop :=
  ∀ n, P11475284432928888517.a n = A078370 n

end A078370

/-! ## A078370.P2760309799649428708

`A087475(Δ[n²])`
-/

namespace A078370.P2760309799649428708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087475 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078370.P2760309799649428708

namespace A078370

/-- `A087475(Δ[n²])` -/
def P2760309799649428708.Spec : Prop :=
  ∀ n, P2760309799649428708.a n = A078370 n

end A078370

/-! ## A078370.P17393447695841869814

`A243883(Δ[n²])`
-/

namespace A078370.P17393447695841869814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243883 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078370.P17393447695841869814

namespace A078370

/-- `A243883(Δ[n²])` -/
def P17393447695841869814.Spec : Prop :=
  ∀ n, P17393447695841869814.a n = A078370 n

end A078370

/-! ## A078370.P5689451495103815011

`A261327(Δ[n²])`
-/

namespace A078370.P5689451495103815011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078370.P5689451495103815011

namespace A078370

/-- `A261327(Δ[n²])` -/
def P5689451495103815011.Spec : Prop :=
  ∀ n, P5689451495103815011.a n = A078370 n

end A078370

/-! ## A078370.P222790235906280147

`record[A243883(n+1)]`
-/

namespace A078370.P222790235906280147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078370.P222790235906280147

namespace A078370

/-- `record[A243883(n+1)]` -/
def P222790235906280147.Spec : Prop :=
  ∀ n, P222790235906280147.a n = A078370 n

end A078370

/-! ## A078370.P9266536148256070778

`record[A261327(n+1)]`
-/

namespace A078370.P9266536148256070778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078370.P9266536148256070778

namespace A078370

/-- `record[A261327(n+1)]` -/
def P9266536148256070778.Spec : Prop :=
  ∀ n, P9266536148256070778.a n = A078370 n

end A078370

/-! ## A078370.P1355295370274764555

`A349803(3*n+2)`
-/

namespace A078370.P1355295370274764555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349803 (3 * n + 2)

end

end A078370.P1355295370274764555

namespace A078370

/-- `A349803(3*n+2)` -/
def P1355295370274764555.Spec : Prop :=
  ∀ n, P1355295370274764555.a n = A078370 n

end A078370

/-!
# A078371: a(n) = (2*n+5)*(2*n+1).

The programs for A078371, the canonical program `A078371.P2557264616226656584` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078371 has offset 0).

The definition of A078371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+5)*(2*n+1)` (program `A078371.P2557264616226656584`, by `A078371.P2557264616226656584.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078371.P15057954265294300556

`(2*n+3)²-4`
-/

namespace A078371.P15057954265294300556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 3) ^ 2 : ℤ) - 4

end

end A078371.P15057954265294300556

namespace A078371

/-- `(2*n+3)²-4` -/
def P15057954265294300556.Spec : Prop :=
  ∀ n, P15057954265294300556.a n = A078371 n

theorem P15057954265294300556.correct : P15057954265294300556.Spec := by
  intro n
  simp only [A078371, Nat.add_sub_cancel, A078371.P15057954265294300556.a, A078371.P2557264616226656584.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078371

/-! ## A078371.P2557264616226656584

`(2*n+5)*(2*n+1)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078371

/-- `(2*n+5)*(2*n+1)` -/
def P2557264616226656584.Spec : Prop :=
  ∀ n, (P2557264616226656584.a n : ℤ) = A078371 n

theorem P2557264616226656584.correct : P2557264616226656584.Spec := by
  intro n
  simp only [A078371]

end A078371

/-! ## A078371.P7945100566704686696

`A061037(2*n+1+2)`
-/

namespace A078371.P7945100566704686696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (2 * n + 1 + 2)

end

end A078371.P7945100566704686696

namespace A078371

/-- `A061037(2*n+1+2)` -/
def P7945100566704686696.Spec : Prop :=
  ∀ n, P7945100566704686696.a n = A078371 n

end A078371

/-! ## A078371.P11328821766373639023

`or(5, 8*(∑[n]+n))`
-/

namespace A078371.P11328821766373639023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A078371.P11328821766373639023

namespace A078371

/-- `or(5, 8*(∑[n]+n))` -/
def P11328821766373639023.Spec : Prop :=
  ∀ n, (P11328821766373639023.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P7565911822029636869

`xor(5, 8*(∑[n]+n))`
-/

namespace A078371.P7565911822029636869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 (8 * (∑ j ∈ Finset.range (n + 1), f1 j + n))

end

end A078371.P7565911822029636869

namespace A078371

/-- `xor(5, 8*(∑[n]+n))` -/
def P7565911822029636869.Spec : Prop :=
  ∀ n, (P7565911822029636869.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P14576327268432027404

`record[(n+5)*xor(1, n)]`
-/

namespace A078371.P14576327268432027404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 5) * Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078371.P14576327268432027404

namespace A078371

/-- `record[(n+5)*xor(1, n)]` -/
def P14576327268432027404.Spec : Prop :=
  ∀ n, (P14576327268432027404.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P15443384434805074365

`∑[a(n-1)+8]` with `a(0)=5, a(1)=16`
-/

namespace A078371.P15443384434805074365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 16] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078371.P15443384434805074365

namespace A078371

/-- `∑[a(n-1)+8]` -/
def P15443384434805074365.Spec : Prop :=
  ∀ n, (P15443384434805074365.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P2512117891010796662

`record[(2*n-3)²-4]`
-/

namespace A078371.P2512117891010796662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) ^ 2 - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078371.P2512117891010796662

namespace A078371

/-- `record[(2*n-3)²-4]` -/
def P2512117891010796662.Spec : Prop :=
  ∀ n, P2512117891010796662.a n = A078371 n

end A078371

/-! ## A078371.P1964223209176609871

`lcm(2*n+5, Δ[n²])`
-/

namespace A078371.P1964223209176609871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 5 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A078371.P1964223209176609871

namespace A078371

/-- `lcm(2*n+5, Δ[n²])` -/
def P1964223209176609871.Spec : Prop :=
  ∀ n, (P1964223209176609871.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P1854541156922154565

`∑[ogf((5+6x-3x^2)/(1-2x+x^2))]`
-/

namespace A078371.P1854541156922154565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6, -3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078371.P1854541156922154565

namespace A078371

/-- `∑[ogf((5+6x-3x^2)/(1-2x+x^2))]` -/
def P1854541156922154565.Spec : Prop :=
  ∀ n, P1854541156922154565.a n = A078371 n

end A078371

/-! ## A078371.P6437698318361895635

`ogf((5+6x-3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A078371.P6437698318361895635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 6, -3] [1, -3, 3, -1] n

end

end A078371.P6437698318361895635

namespace A078371

/-- `ogf((5+6x-3x^2)/(1-3x+3x^2-x^3))` -/
def P6437698318361895635.Spec : Prop :=
  ∀ n, P6437698318361895635.a n = A078371 n

end A078371

/-! ## A078371.P10740521984111340338

`gcd(A061550(n), A069079(n))`
-/

namespace A078371.P10740521984111340338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061550 n) (A069079 n)

end

end A078371.P10740521984111340338

namespace A078371

/-- `gcd(A061550(n), A069079(n))` -/
def P10740521984111340338.Spec : Prop :=
  ∀ n, (P10740521984111340338.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P3786614872818104328

`∪[A003185(n), A085027(n)]`
-/

namespace A078371.P3786614872818104328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085027 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078371.P3786614872818104328

namespace A078371

/-- `∪[A003185(n), A085027(n)]` -/
def P3786614872818104328.Spec : Prop :=
  ∀ n, (P3786614872818104328.a n : ℤ) = A078371 n

end A078371

/-! ## A078371.P5584156418804010824

`A069079(n)%A073577(n+1)`
-/

namespace A078371.P5584156418804010824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069079 n) (A073577 (n + 1))

end

end A078371.P5584156418804010824

namespace A078371

/-- `A069079(n)%A073577(n+1)` -/
def P5584156418804010824.Spec : Prop :=
  ∀ n, P5584156418804010824.a n = A078371 n

end A078371

/-! ## A078371.P15806633946195388264

`A158554(n+1)%A154106(n)`
-/

namespace A078371.P15806633946195388264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158554 (n + 1)) (A154106 n)

end

end A078371.P15806633946195388264

namespace A078371

/-- `A158554(n+1)%A154106(n)` -/
def P15806633946195388264.Spec : Prop :=
  ∀ n, P15806633946195388264.a n = A078371 n

end A078371

/-! ## A078371.P1743380047019961125

`A069071(n)%A254527(n+1)`
-/

namespace A078371.P1743380047019961125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069071 n) (A254527 (n + 1))

end

end A078371.P1743380047019961125

namespace A078371

/-- `A069071(n)%A254527(n+1)` -/
def P1743380047019961125.Spec : Prop :=
  ∀ n, P1743380047019961125.a n = A078371 n

end A078371

/-! ## A078371.P9482215998017913244

`A274119(n)%A157872(n+1)`
-/

namespace A078371.P9482215998017913244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274119 n) (A157872 (n + 1))

end

end A078371.P9482215998017913244

namespace A078371

/-- `A274119(n)%A157872(n+1)` -/
def P9482215998017913244.Spec : Prop :=
  ∀ n, P9482215998017913244.a n = A078371 n

end A078371

/-! ## A078371.P15224274746949310019

`Δ[A273408(n)]`
-/

namespace A078371.P15224274746949310019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078371.P15224274746949310019

namespace A078371

/-- `Δ[A273408(n)]` -/
def P15224274746949310019.Spec : Prop :=
  ∀ n, P15224274746949310019.a n = A078371 n

end A078371

/-! ## A078371.P11906925730845400034

`Δ[A322594(n)+n]`
-/

namespace A078371.P11906925730845400034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322594 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078371.P11906925730845400034

namespace A078371

/-- `Δ[A322594(n)+n]` -/
def P11906925730845400034.Spec : Prop :=
  ∀ n, P11906925730845400034.a n = A078371 n

end A078371

/-! ## A078371.P9027270814861978158

`A070262(Δ[n²])`
-/

namespace A078371.P9027270814861978158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070262 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078371.P9027270814861978158

namespace A078371

/-- `A070262(Δ[n²])` -/
def P9027270814861978158.Spec : Prop :=
  ∀ n, P9027270814861978158.a n = A078371 n

end A078371

/-!
# A078372: Number of squarefree integers in {n, f(n), f(f(n)), ...., 1}, where f is the Collatz function defined by f(x) = x/2 if x is even; f(x) = 3x + 1 if x is odd.

The programs for A078372, there is no canonical definition to state claims against.
-/

/-! ## A078372.P11172377482229410561

`A008908(n+1)-A087891(n+1)`
-/

namespace A078372.P11172377482229410561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A087891 (n + 1)

end

end A078372.P11172377482229410561

/-! ## A078372.P14173963149753432194

`A006577(n+1)+1-A087891(n+1)`
-/

namespace A078372.P14173963149753432194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A087891 (n + 1))

end

end A078372.P14173963149753432194

/-! ## A078372.P5602606580594549087

`A006577(n+1)-A023443(A087891(n+1))`
-/

namespace A078372.P5602606580594549087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) - A023443 (A087891 (n + 1)).toNat

end

end A078372.P5602606580594549087

/-! ## A078372.P8145186259904680758

`A076228(n+1)+A213204(n+1)-A087891(n+1)`
-/

namespace A078372.P8145186259904680758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + (A213204 (n + 1) - A087891 (n + 1))

end

end A078372.P8145186259904680758

/-! ## A078372.P3546333464692932767

`A006577(A005843(n+1))-A087891(n+1)`
-/

namespace A078372.P3546333464692932767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A005843 (n + 1)).toNat - A087891 (n + 1)

end

end A078372.P3546333464692932767

/-!
# A078373: n sets a record for the number of primes in {n, f(n), f(f(n)), ..., 1}, where f is the Collatz function defined by f(x) = x/2 if x is even; f(x) = 3x + 1 if x is odd.

The programs for A078373, there is no canonical definition to state claims against.
-/

/-! ## A078373.P7701742756643162695

`A181921(A362958(n+1))`
-/

namespace A078373.P7701742756643162695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181921 (A362958 (n + 1)).toNat

end

end A078373.P7701742756643162695

/-! ## A078373.P17112308864379580687

`A181921(record[A078350(n+2)])`
-/

namespace A078373.P17112308864379580687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078373.P17112308864379580687

/-! ## A078373.P8611148465075010722

`A181921(record[A055509(n+1)+1])`
-/

namespace A078373.P8611148465075010722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181921 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078373.P8611148465075010722

/-!
# A078374: Number of partitions of n into distinct and relatively prime parts.

The programs for A078374, there is no canonical definition to state claims against.
-/

/-! ## A078374.P3096366845191677983

`A000009(n+1)-A303280(n+1)`
-/

namespace A078374.P3096366845191677983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A303280 (n + 1)

end

end A078374.P3096366845191677983

/-! ## A078374.P5579780777871703656

`∑{d}[n+1, A007427(#)*A047966((n+1)/#)]`
-/

namespace A078374.P5579780777871703656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A047966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078374.P5579780777871703656

/-! ## A078374.P5991110656953755655

`∑{d}[n+1, A055615(#)*A319301((n+1)/#)]`
-/

namespace A078374.P5991110656953755655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A319301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078374.P5991110656953755655

/-! ## A078374.P6623425432612095086

`A036469(n+1)-(A303280(n+1)+A036469(n))`
-/

namespace A078374.P6623425432612095086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 (n + 1) - (A303280 (n + 1) + A036469 n)

end

end A078374.P6623425432612095086

/-! ## A078374.P9699197351108264683

`A035457(A163300(n+1))-A303280(n+1)`
-/

namespace A078374.P9699197351108264683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (A163300 (n + 1)).toNat - A303280 (n + 1)

end

end A078374.P9699197351108264683

/-! ## A078374.P16433920677475655775

`A337452(n+1)+A025147(n)`
-/

namespace A078374.P16433920677475655775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337452 (n + 1) + A025147 n

end

end A078374.P16433920677475655775

/-! ## A078374.P2019765763616215130

`A305713(n+1)+A303140(n+1)`
-/

namespace A078374.P2019765763616215130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (n + 1) + A303140 (n + 1)

end

end A078374.P2019765763616215130

/-!
# A078375: Smallest prime factor of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078375, there is no canonical definition to state claims against.
-/

/-! ## A078375.P1902058708981976110

`A020639(A055394(n+1))`
-/

namespace A078375.P1902058708981976110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055394 (n + 1)).toNat

end

end A078375.P1902058708981976110

/-! ## A078375.P6966498664793293908

`A020639(A078386(n+1))`
-/

namespace A078375.P6966498664793293908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A078386 (n + 1)).toNat

end

end A078375.P6966498664793293908

/-! ## A078375.P12075404708175391289

`A020639(eq[1, A266364(n)]+1)`
-/

namespace A078375.P12075404708175391289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078375.P12075404708175391289

/-! ## A078375.P14007936608157316923

`A020639(record[(n+2)/A266364(n+1)])`
-/

namespace A078375.P14007936608157316923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A078375.P14007936608157316923

/-! ## A078375.P2851808166123052334

`A078376(n+1)-A046665(A055394(n+1))`
-/

namespace A078375.P2851808166123052334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078376 (n + 1) - A046665 (A055394 (n + 1)).toNat

end

end A078375.P2851808166123052334

/-! ## A078375.P6060490811091536588

`A014673(2*A055394(n+1))`
-/

namespace A078375.P6060490811091536588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * A055394 (n + 1)).toNat

end

end A078375.P6060490811091536588

/-! ## A078375.P13960527344031356029

`p?[A020639(n+1)*A266364(n)]`
-/

namespace A078375.P13960527344031356029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078375.P13960527344031356029

/-! ## A078375.P10647598177038477180

`A020639(eq[1, A266528(n)]+1)`
-/

namespace A078375.P10647598177038477180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078375.P10647598177038477180

/-! ## A078375.P16733307202609858652

`A020639(lt[A266528(n), 2]+1)`
-/

namespace A078375.P16733307202609858652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078375.P16733307202609858652

/-! ## A078375.P214853436828784585

`p?[A020639(n+1)*A266528(n)]`
-/

namespace A078375.P214853436828784585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078375.P214853436828784585

/-!
# A078376: Greatest prime factor of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078376, there is no canonical definition to state claims against.
-/

/-! ## A078376.P2772677667969144866

`A006530(A055394(n+1))`
-/

namespace A078376.P2772677667969144866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A055394 (n + 1)).toNat

end

end A078376.P2772677667969144866

/-! ## A078376.P12165008080539328803

`A006530(A078386(n+1))`
-/

namespace A078376.P12165008080539328803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A078386 (n + 1)).toNat

end

end A078376.P12165008080539328803

/-! ## A078376.P7659548467123271314

`A006530(eq[1, A266364(n)]+1)`
-/

namespace A078376.P7659548467123271314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078376.P7659548467123271314

/-! ## A078376.P9775408686958489479

`A006530(lt[A266364(n), 2]+1)`
-/

namespace A078376.P9775408686958489479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078376.P9775408686958489479

/-! ## A078376.P9204879213009808360

`A002034(∏{p}[A055394(n+1), #])`
-/

namespace A078376.P9204879213009808360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A078376.P9204879213009808360

/-! ## A078376.P1567070691258125228

`A111089(2*A055394(n+1))`
-/

namespace A078376.P1567070691258125228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (2 * A055394 (n + 1)).toNat

end

end A078376.P1567070691258125228

/-! ## A078376.P13283717769364925511

`A046665(2*A055394(n+1))+2`
-/

namespace A078376.P13283717769364925511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (2 * A055394 (n + 1)).toNat + 2

end

end A078376.P13283717769364925511

/-! ## A078376.P11077266464406791105

`p?[A006530(n+1)*A266364(n)]`
-/

namespace A078376.P11077266464406791105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078376.P11077266464406791105

/-! ## A078376.P11719448554598321748

`A006530(eq[1, A266528(n)]+1)`
-/

namespace A078376.P11719448554598321748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078376.P11719448554598321748

/-! ## A078376.P8290899769409522032

`A006530(lt[A266528(n), 2]+1)`
-/

namespace A078376.P8290899769409522032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078376.P8290899769409522032

/-! ## A078376.P16536943014606550282

`p?[A006530(n+1)*A266528(n)]`
-/

namespace A078376.P16536943014606550282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078376.P16536943014606550282

/-!
# A078377: Number of distinct prime factors of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078377, there is no canonical definition to state claims against.
-/

/-! ## A078377.P14089567786758881120

`A001221(A055394(n+1))`
-/

namespace A078377.P14089567786758881120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A055394 (n + 1)).toNat

end

end A078377.P14089567786758881120

/-! ## A078377.P9400870541100543120

`∑{e}[A078386(n+1), #]`
-/

namespace A078377.P9400870541100543120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078377.P9400870541100543120

/-! ## A078377.P7774798032800579773

`A001221(A078386(n+1))`
-/

namespace A078377.P7774798032800579773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A078386 (n + 1)).toNat

end

end A078377.P7774798032800579773

/-! ## A078377.P4910432217959227644

`∑{d}[A055394(n+1), A010051(#)]`
-/

namespace A078377.P4910432217959227644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A078377.P4910432217959227644

/-! ## A078377.P13452724637789974311

`∑{p}[A055394(n+1), A001222(#)]`
-/

namespace A078377.P13452724637789974311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A078377.P13452724637789974311

/-! ## A078377.P17445484534624112508

`∑{p}[A055394(n+1), A008966(#)]`
-/

namespace A078377.P17445484534624112508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008966 p

end

end A078377.P17445484534624112508

/-! ## A078377.P7355757536089124462

`A001222(∏{p}[A055394(n+1), #])`
-/

namespace A078377.P7355757536089124462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A078377.P7355757536089124462

/-! ## A078377.P16286721386423609332

`∑{p}[A055394(n+1), -A008683(#)]`
-/

namespace A078377.P16286721386423609332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (-A008683 p)

end

end A078377.P16286721386423609332

/-! ## A078377.P7370972960348611056

`∑{e}[A055394(n+1), A000038(#)+1]`
-/

namespace A078377.P7370972960348611056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A000038 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A078377.P7370972960348611056

/-! ## A078377.P18105914911852685260

`∑{e}[A055394(n+1), A000034(2*#)]`
-/

namespace A078377.P18105914911852685260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 (2 * Nat.factorization (f1 n).natAbs p)

end

end A078377.P18105914911852685260

/-! ## A078377.P10975311968062225021

`val(A000005(∏{p}[A055394(n+1), #]), 2)`
-/

namespace A078377.P10975311968062225021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)).toNat 2

end

end A078377.P10975311968062225021

/-! ## A078377.P3385843882312197233

`A001222(∏{e}[A055394(n+1), A000040(#)])`
-/

namespace A078377.P3385843882312197233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A078377.P3385843882312197233

/-! ## A078377.P8018685545316119898

`∑{p}[A055394(n+1), A000188(#)]`
-/

namespace A078377.P8018685545316119898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000188 p

end

end A078377.P8018685545316119898

/-! ## A078377.P17790627489262589975

`A001221(eq[1, A266364(n)]+1)`
-/

namespace A078377.P17790627489262589975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078377.P17790627489262589975

/-! ## A078377.P458183464924636929

`∑{p}[eq[1, A266364(n)]+1, A001222(#)]`
-/

namespace A078377.P458183464924636929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A078377.P458183464924636929

/-! ## A078377.P6225995790002526505

`∑{d}[A055394(n+1), A061397(#)/#]`
-/

namespace A078377.P6225995790002526505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A061397 d : ℚ) / (d : ℚ)

end

end A078377.P6225995790002526505

/-! ## A078377.P13537166815613718431

`A001221(eq[1, A266528(n)]+1)`
-/

namespace A078377.P13537166815613718431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078377.P13537166815613718431

/-! ## A078377.P3531295220185814764

`∑{e}[A055394(n+1)², A000034(#)]`
-/

namespace A078377.P3531295220185814764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000034 (Nat.factorization (f1 n).natAbs p)

end

end A078377.P3531295220185814764

/-!
# A078378: Total number of prime factors of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078378, there is no canonical definition to state claims against.
-/

/-! ## A078378.P13293276087163516902

`A001222(A055394(n+1))`
-/

namespace A078378.P13293276087163516902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055394 (n + 1)).toNat

end

end A078378.P13293276087163516902

/-! ## A078378.P5765053737948657579

`A001222(eq[1, A266364(n)]+1)`
-/

namespace A078378.P5765053737948657579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078378.P5765053737948657579

/-! ## A078378.P2025345580503171031

`A001222(record[(n+2)/A266364(n+1)])`
-/

namespace A078378.P2025345580503171031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A078378.P2025345580503171031

/-! ## A078378.P5804606869520937304

`∑{d}[A055394(n+1), A001221(A014963(#))]`
-/

namespace A078378.P5804606869520937304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A078378.P5804606869520937304

/-! ## A078378.P18331576325531016949

`A001222(eq[1, A266528(n)]+1)`
-/

namespace A078378.P18331576325531016949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078378.P18331576325531016949

/-!
# A078379: Minimum exponent in prime factorization of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078379, there is no canonical definition to state claims against.
-/

/-! ## A078379.P18246355215286339844

`A051904(A055394(n+1))`
-/

namespace A078379.P18246355215286339844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A055394 (n + 1)).toNat

end

end A078379.P18246355215286339844

/-! ## A078379.P2866828833764750291

`A055396(∏{e}[A055394(n+1), A000040(#)])`
-/

namespace A078379.P2866828833764750291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A078379.P2866828833764750291

/-! ## A078379.P13964776585852741638

`A055396(∏{e}[A055394(n+1), A055398(#)])`
-/

namespace A078379.P13964776585852741638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A055398 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A078379.P13964776585852741638

/-! ## A078379.P17817841980693194967

`A078380(n+1)-A062977(A055394(n+1))`
-/

namespace A078379.P17817841980693194967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078380 (n + 1) - A062977 (A055394 (n + 1)).toNat

end

end A078379.P17817841980693194967

/-! ## A078379.P12905726944309667399

`A051904(eq[1, A266364(n)]+1)`
-/

namespace A078379.P12905726944309667399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078379.P12905726944309667399

/-! ## A078379.P5250410612039313487

`val(A320389(eq[1, A266364(n)]+1), 2)`
-/

namespace A078379.P5250410612039313487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A078379.P5250410612039313487

/-! ## A078379.P7312169157791977021

`∑{e}[A304181(eq[1, A266364(n)]+1), #]`
-/

namespace A078379.P7312169157791977021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078379.P7312169157791977021

/-! ## A078379.P2725238554436492295

`A051904(eq[1, A266528(n)]+1)`
-/

namespace A078379.P2725238554436492295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078379.P2725238554436492295

/-! ## A078379.P2988065821960133007

`val(A320389(eq[1, A266528(n)]+1), 2)`
-/

namespace A078379.P2988065821960133007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A320389 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A078379.P2988065821960133007

/-! ## A078379.P5491787495508083466

`∑{e}[A304181(eq[1, A266528(n)]+1), #]`
-/

namespace A078379.P5491787495508083466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A078379.P5491787495508083466

/-! ## A078379.P15912748682246700228

`A025581(7^∏{e}[A055394(n+1), A007599(#)])`
-/

namespace A078379.P15912748682246700228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007599 (Nat.factorization (f1 n).natAbs p) : ℤ))).toNat

end

end A078379.P15912748682246700228

/-!
# A078380: Maximum exponent in prime factorization of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078380, there is no canonical definition to state claims against.
-/

/-! ## A078380.P9183798332044148369

`A051903(A055394(n+1))`
-/

namespace A078380.P9183798332044148369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A055394 (n + 1)).toNat

end

end A078380.P9183798332044148369

/-! ## A078380.P3314414563943863087

`A078379(n+1)+A062977(A055394(n+1))`
-/

namespace A078380.P3314414563943863087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078379 (n + 1) + A062977 (A055394 (n + 1)).toNat

end

end A078380.P3314414563943863087

/-! ## A078380.P16706526000443046430

`A051903(eq[1, A266364(n)]+1)`
-/

namespace A078380.P16706526000443046430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078380.P16706526000443046430

/-! ## A078380.P11349979500208340750

`val(A046523(eq[1, A266364(n)]+1), 2)`
-/

namespace A078380.P11349979500208340750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A078380.P11349979500208340750

/-! ## A078380.P15073378006119112748

`A061395(A181819(A055394(n+1))²)`
-/

namespace A078380.P15073378006119112748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A181819 (A055394 (n + 1)).toNat ^ 2).toNat

end

end A078380.P15073378006119112748

/-! ## A078380.P18214604264943358696

`A051903(eq[1, A266528(n)]+1)`
-/

namespace A078380.P18214604264943358696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078380.P18214604264943358696

/-! ## A078380.P7993457236444585318

`A324912(eq[1, A266528(n)]+1)`
-/

namespace A078380.P7993457236444585318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324912 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078380.P7993457236444585318

/-! ## A078380.P17018180975748741615

`val(A046523(eq[1, A266528(n)]+1), 2)`
-/

namespace A078380.P17018180975748741615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A046523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)).toNat 2

end

end A078380.P17018180975748741615

/-!
# A078381: Number of divisors of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078381, there is no canonical definition to state claims against.
-/

/-! ## A078381.P14587523177692269811

`A000005(A055394(n+1))`
-/

namespace A078381.P14587523177692269811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055394 (n + 1)).toNat

end

end A078381.P14587523177692269811

/-! ## A078381.P12674896994169383453

`∑{d}[A055394(n+1), A008683(#)+1]`
-/

namespace A078381.P12674896994169383453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A008683 d + 1)

end

end A078381.P12674896994169383453

/-! ## A078381.P16698437621027662076

`∑{d}[A055394(n+1), A020985(C(2, #))]`
-/

namespace A078381.P16698437621027662076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020985 (Nat.choose 2 d)

end

end A078381.P16698437621027662076

/-! ## A078381.P12679400376761240285

`∑{d}[A055394(n+1), val(A020639(#), 2)!]`
-/

namespace A078381.P12679400376761240285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (SequenceMachineLib.valuation (A020639 d).toNat 2)

end

end A078381.P12679400376761240285

/-! ## A078381.P10707911393855912750

`A000005(eq[1, A266364(n)]+1)`
-/

namespace A078381.P10707911393855912750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078381.P10707911393855912750

/-! ## A078381.P15346311183894835974

`A000005(lt[A266364(n), 2]+1)`
-/

namespace A078381.P15346311183894835974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078381.P15346311183894835974

/-! ## A078381.P6629278600384999145

`∑{d}[A055394(n+1), A020985(#)²]`
-/

namespace A078381.P6629278600384999145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A020985 d ^ 2

end

end A078381.P6629278600384999145

/-! ## A078381.P9591996687555191762

`A000005(eq[1, A266528(n)]+1)`
-/

namespace A078381.P9591996687555191762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078381.P9591996687555191762

/-!
# A078382: Sum of divisors of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078382, there is no canonical definition to state claims against.
-/

/-! ## A078382.P15977261824923558308

`A000203(A055394(n+1))`
-/

namespace A078382.P15977261824923558308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A055394 (n + 1)).toNat

end

end A078382.P15977261824923558308

/-! ## A078382.P15731671384462328106

`A000203(eq[1, A266364(n)]+1)`
-/

namespace A078382.P15731671384462328106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078382.P15731671384462328106

/-! ## A078382.P2454436187786001308

`A000203(lt[A266364(n), 2]+1)`
-/

namespace A078382.P2454436187786001308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078382.P2454436187786001308

/-! ## A078382.P1121475674114729360

`A000027(∑{d}[eq[1, A266364(n)]+1, #])`
-/

namespace A078382.P1121475674114729360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A078382.P1121475674114729360

/-! ## A078382.P9463570045713296288

`A000203(eq[1, A266528(n)]+1)`
-/

namespace A078382.P9463570045713296288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078382.P9463570045713296288

/-! ## A078382.P2873606224561978603

`A000203(lt[A266528(n), 2]+1)`
-/

namespace A078382.P2873606224561978603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078382.P2873606224561978603

/-!
# A078383: Sum of distinct prime factors of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078383, there is no canonical definition to state claims against.
-/

/-! ## A078383.P3819130926477954454

`A008472(A055394(n+1))`
-/

namespace A078383.P3819130926477954454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A055394 (n + 1)).toNat

end

end A078383.P3819130926477954454

/-! ## A078383.P8241119910688036440

`∑{p}[A078386(n+1), #]`
-/

namespace A078383.P8241119910688036440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078386 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078383.P8241119910688036440

/-! ## A078383.P7057518763114138225

`A001414(A078386(n+1))`
-/

namespace A078383.P7057518763114138225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078386 (n + 1)).toNat

end

end A078383.P7057518763114138225

/-! ## A078383.P14563967419885429653

`∑{p}[eq[1, A266364(n)]+1, #]`
-/

namespace A078383.P14563967419885429653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A078383.P14563967419885429653

/-! ## A078383.P14974564358181186395

`∑{p}[record[(n+2)/A266364(n+1)], #]`
-/

namespace A078383.P14974564358181186395
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A078383.P14974564358181186395

/-! ## A078383.P16344904534751771520

`∑{d}[A055394(n+1), A061397(#)]`
-/

namespace A078383.P16344904534751771520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061397 d

end

end A078383.P16344904534751771520

/-! ## A078383.P6492478643338872516

`∑{p}[eq[1, A266528(n)]+1, #]`
-/

namespace A078383.P6492478643338872516
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A078383.P6492478643338872516

/-! ## A078383.P2659874820142876575

`∑{p}[record[(n+2)/A266528(n+1)], #]`
-/

namespace A078383.P2659874820142876575
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266528 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A078383.P2659874820142876575

/-!
# A078384: Sum of all prime factors of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078384, there is no canonical definition to state claims against.
-/

/-! ## A078384.P10934600779817393318

`A001414(A055394(n+1))`
-/

namespace A078384.P10934600779817393318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A055394 (n + 1)).toNat

end

end A078384.P10934600779817393318

/-! ## A078384.P9011708045413621477

`A001414(eq[1, A266364(n)]+1)`
-/

namespace A078384.P9011708045413621477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078384.P9011708045413621477

/-! ## A078384.P8606943922113176512

`∑{d}[A055394(n+1), A120007(#)]`
-/

namespace A078384.P8606943922113176512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A078384.P8606943922113176512

/-! ## A078384.P13313258731916837859

`A036288(eq[1, A266364(n)]+1)-1`
-/

namespace A078384.P13313258731916837859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - 1

end

end A078384.P13313258731916837859

/-! ## A078384.P6386443046589450376

`eq[1, A266364(n)]+1-A075255(eq[1, A266364(n)]+1)`
-/

namespace A078384.P6386443046589450376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A075255 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1)

end

end A078384.P6386443046589450376

/-! ## A078384.P17426900064186696503

`A001414(eq[1, A266528(n)]+1)`
-/

namespace A078384.P17426900064186696503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078384.P17426900064186696503

/-!
# A078385: Euler's totient of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078385, there is no canonical definition to state claims against.
-/

/-! ## A078385.P3758733895236272942

`A000010(A055394(n+1))`
-/

namespace A078385.P3758733895236272942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A055394 (n + 1)).toNat

end

end A078385.P3758733895236272942

/-! ## A078385.P8867114271759552248

`A000010(lcm(2, A055394(n-log2(1/2))))`
-/

namespace A078385.P8867114271759552248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A055394 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat))

end

end A078385.P8867114271759552248

/-! ## A078385.P1977959850310789827

`A000010(eq[1, A266364(n)]+1)`
-/

namespace A078385.P1977959850310789827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078385.P1977959850310789827

/-! ## A078385.P7783108514044294849

`A000010(lt[A266364(n), 2]+1)`
-/

namespace A078385.P7783108514044294849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A078385.P7783108514044294849

/-! ## A078385.P11233118542319033639

`A000010(record[(n+2)/A266364(n+1)])`
-/

namespace A078385.P11233118542319033639
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A078385.P11233118542319033639

/-! ## A078385.P2714967537880628990

`A055034(lcm(2, A055394(n+1)))`
-/

namespace A078385.P2714967537880628990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Int.lcm 2 (A055394 (n + 1)))

end

end A078385.P2714967537880628990

/-! ## A078385.P15872353179480430453

`A000010(eq[1, A266528(n)]+1)`
-/

namespace A078385.P15872353179480430453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078385.P15872353179480430453

/-! ## A078385.P5952262792202908336

`A000010(record[(n+2)/A266528(n+1)])`
-/

namespace A078385.P5952262792202908336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266528 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A078385.P5952262792202908336

/-!
# A078386: Squarefree kernels of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078386, there is no canonical definition to state claims against.
-/

/-! ## A078386.P5370615336610434725

`A007947(A055394(n+1))`
-/

namespace A078386.P5370615336610434725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A055394 (n + 1)).toNat

end

end A078386.P5370615336610434725

/-! ## A078386.P13225318252937836790

`∏{p}[eq[1, A266364(n)]+1, #]`
-/

namespace A078386.P13225318252937836790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A078386.P13225318252937836790

/-! ## A078386.P17982620942897715896

`A007947(eq[1, A266364(n)]+1)`
-/

namespace A078386.P17982620942897715896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078386.P17982620942897715896

/-! ## A078386.P17743806500218474200

`A064549(eq[1, A266364(n)]+1)/A055394(n+1)`
-/

namespace A078386.P17743806500218474200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / (A055394 (n + 1) : ℚ)

end

end A078386.P17743806500218474200

/-! ## A078386.P17096436198753143496

`A064549(A055394(n+1))/record[(n+2)/A266364(n+1)]`
-/

namespace A078386.P17096436198753143496
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (A055394 (n + 1)).toNat : ℚ) / f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078386.P17096436198753143496

/-! ## A078386.P14706749846494511437

`∏{p}[eq[1, A266528(n)]+1, #]`
-/

namespace A078386.P14706749846494511437
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A078386.P14706749846494511437

/-! ## A078386.P13773265155929499851

`∏{p}[record[(n+2)/A266528(n+1)], #]`
-/

namespace A078386.P13773265155929499851
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266528 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A078386.P13773265155929499851

/-! ## A078386.P16908302018862239888

`∏{p}[A020725(eq[1, A266528(n)]), #]`
-/

namespace A078386.P16908302018862239888
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078386.P16908302018862239888

/-! ## A078386.P11832456070677274369

`gcd(A002110(A074764(n+1)), A055394(n+1))`
-/

namespace A078386.P11832456070677274369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (A074764 (n + 1)).toNat) (A055394 (n + 1))

end

end A078386.P11832456070677274369

/-!
# A078387: Moebius's mu of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078387, there is no canonical definition to state claims against.
-/

/-! ## A078387.P14347278426157749285

`A008683(A055394(n+1))`
-/

namespace A078387.P14347278426157749285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A055394 (n + 1)).toNat

end

end A078387.P14347278426157749285

/-! ## A078387.P16014379594255217542

`∏{e}[A055394(n+1), A240328(#)]`
-/

namespace A078387.P16014379594255217542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A240328 (Nat.factorization (f1 n).natAbs p)

end

end A078387.P16014379594255217542

/-! ## A078387.P434406366033030400

`A008683(A055394(n-log2(1/2)))%2`
-/

namespace A078387.P434406366033030400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (A055394 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat).toNat) 2

end

end A078387.P434406366033030400

/-! ## A078387.P13244660317814886242

`A008683(eq[1, A266364(n)]+1)`
-/

namespace A078387.P13244660317814886242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078387.P13244660317814886242

/-! ## A078387.P4588782533775675878

`A008683(record[(n+2)/A266364(n+1)])`
-/

namespace A078387.P4588782533775675878
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A078387.P4588782533775675878

/-! ## A078387.P17467205861613083515

`∑{d}[A055394(n+1), A007427(#)]`
-/

namespace A078387.P17467205861613083515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A078387.P17467205861613083515

/-! ## A078387.P16141871707025865651

`A008683(eq[1, A266528(n)]+1)`
-/

namespace A078387.P16141871707025865651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078387.P16141871707025865651

/-!
# A078388: Arithmetic derivative of numbers which can be written as sum of a positive square and a positive cube.

The programs for A078388, there is no canonical definition to state claims against.
-/

/-! ## A078388.P429939040569650050

`A003415(A055394(n+1))`
-/

namespace A078388.P429939040569650050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A055394 (n + 1)).toNat

end

end A078388.P429939040569650050

/-! ## A078388.P5802881849466103017

`∑{d}[A055394(n+1), A300251(#)]`
-/

namespace A078388.P5802881849466103017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A078388.P5802881849466103017

/-! ## A078388.P7426031301328164570

`A003415(eq[1, A266364(n)]+1)`
-/

namespace A078388.P7426031301328164570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078388.P7426031301328164570

/-! ## A078388.P6856141863600722207

`A319703(2*A055394(n+1))`
-/

namespace A078388.P6856141863600722207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A055394 (n + 1)).toNat

end

end A078388.P6856141863600722207

/-! ## A078388.P10628217484107022134

`A003415(eq[1, A266528(n)]+1)`
-/

namespace A078388.P10628217484107022134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A078388.P10628217484107022134

/-!
# A078389: Number of different values obtained by evaluating all different parenthesizations of 1/2/3/4/.../n.

The programs for A078389, there is no canonical definition to state claims against.
-/

/-! ## A078389.P1422708358067254669

`∑[A265529(2*a(n-1))]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A078389.P1422708358067254669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  A265529 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078389.P1422708358067254669

/-! ## A078389.P12761800509763651990

`A265529(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A078389.P12761800509763651990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A265529 (a (n - 1)).toNat + a (n - 1)

end

end A078389.P12761800509763651990

/-! ## A078389.P224254292597597182

`A229219(A027412(n))`
-/

namespace A078389.P224254292597597182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A027412 n).toNat

end

end A078389.P224254292597597182

/-! ## A078389.P17520912449826846657

`A161205(A148706(n))`
-/

namespace A078389.P17520912449826846657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A148706 n).toNat

end

end A078389.P17520912449826846657

/-! ## A078389.P4323348614052209863

`A229219(A149832(n))`
-/

namespace A078389.P4323348614052209863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229219 (A149832 n).toNat

end

end A078389.P4323348614052209863

/-!
# A078390: Composite numbers which can be written as sum of a positive square and a positive cube.

The programs for A078390, there is no canonical definition to state claims against.
-/

/-! ## A078390.P3236230211331211481

`filter[A055394(n+1), A005171(#)]`
-/

namespace A078390.P3236230211331211481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A078390.P3236230211331211481

/-! ## A078390.P2962160209310184507

`filter[A055394(n+1), A066247(#)]`
-/

namespace A078390.P2962160209310184507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A078390.P2962160209310184507

/-! ## A078390.P15356143943139902705

`∩[A002808(n+1), A055394(n+1)]`
-/

namespace A078390.P15356143943139902705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078390.P15356143943139902705

/-! ## A078390.P9321857367870570240

`∩[A018252(n+1), A055394(n+1)]`
-/

namespace A078390.P9321857367870570240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078390.P9321857367870570240

/-! ## A078390.P10471311587842269710

`∩[A055394(n+1), A141468(n+1)]`
-/

namespace A078390.P10471311587842269710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078390.P10471311587842269710

/-! ## A078390.P8486450401101709402

`∩[A055394(n+1), A062973(n+1)]`
-/

namespace A078390.P8486450401101709402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078390.P8486450401101709402

/-! ## A078390.P7831678714766539142

`∩[A055394(n+1), A056653(n+1)]`
-/

namespace A078390.P7831678714766539142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078390.P7831678714766539142

/-! ## A078390.P870054644005628784

`∩[A055394(n+1), A176423(n+1)]`
-/

namespace A078390.P870054644005628784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078390.P870054644005628784

/-! ## A078390.P6003926964123769614

`eq[A005171(n+1), A266364(n)]+1`
-/

namespace A078390.P6003926964123769614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078390.P6003926964123769614

/-! ## A078390.P4705497154021524086

`eq[A066247(n+1), A266364(n)]+1`
-/

namespace A078390.P4705497154021524086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078390.P4705497154021524086

/-! ## A078390.P14593917197651650415

`eq[A014973(n+1), A266364(n)]+1`
-/

namespace A078390.P14593917197651650415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078390.P14593917197651650415

/-! ## A078390.P1092156574390081972

`eq[A005171(n+1), A266528(n)]+1`
-/

namespace A078390.P1092156574390081972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078390.P1092156574390081972

/-! ## A078390.P16348567532838814042

`eq[A014973(n+1), A266528(n)]+1`
-/

namespace A078390.P16348567532838814042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078390.P16348567532838814042

/-!
# A078391: Triangle read by rows: T(n,k) = Catalan(k)*Catalan(n-k).

The programs for A078391, the canonical program `A078391.P8888525674707534434` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078391 has offset 0).

The definition of A078391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(col(n))*A000108(row(n)-col(n))` (program `A078391.P8888525674707534434`, by `A078391.P8888525674707534434.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078391.P8888525674707534434

`A000108(col(n))*A000108(row(n)-col(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A078391

/-- `A000108(col(n))*A000108(row(n)-col(n))` -/
def P8888525674707534434.Spec : Prop :=
  ∀ n, P8888525674707534434.a n = A078391 n

theorem P8888525674707534434.correct : P8888525674707534434.Spec := by
  intro n
  simp only [A078391]

end A078391

/-! ## A078391.P13351993380243280703

`A000108(row(n)-col(n))*A000108(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078391.P13351993380243280703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n) * A000108 (SequenceMachineLib.triCol n)

end

end A078391.P13351993380243280703

namespace A078391

/-- `A000108(row(n)-col(n))*A000108(col(n))` -/
def P13351993380243280703.Spec : Prop :=
  ∀ n, P13351993380243280703.a n = A078391 n

theorem P13351993380243280703.correct : P13351993380243280703.Spec := by
  intro n
  simp only [A078391, Nat.add_sub_cancel, A078391.P13351993380243280703.a, A078391.P8888525674707534434.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A078391

/-! ## A078391.P10422904294121243265

`A067804(n)/A003991(n+1)`
-/

namespace A078391.P10422904294121243265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067804 n : ℚ) / (A003991 (n + 1) : ℚ)

end

end A078391.P10422904294121243265

namespace A078391

/-- `A067804(n)/A003991(n+1)` -/
def P10422904294121243265.Spec : Prop :=
  ∀ n, P10422904294121243265.a n = (A078391 n : ℚ)

end A078391

/-! ## A078391.P16614903396200051892

`A141811(n+1)/A099375(n)`
-/

namespace A078391.P16614903396200051892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141811 (n + 1) : ℚ) / (A099375 n : ℚ)

end

end A078391.P16614903396200051892

namespace A078391

/-- `A141811(n+1)/A099375(n)` -/
def P16614903396200051892.Spec : Prop :=
  ∀ n, P16614903396200051892.a n = (A078391 n : ℚ)

end A078391

/-! ## A078391.P5127950631851178344

`A342982(n)/A086645(n)`
-/

namespace A078391.P5127950631851178344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342982 n : ℚ) / (A086645 n : ℚ)

end

end A078391.P5127950631851178344

namespace A078391

/-- `A342982(n)/A086645(n)` -/
def P5127950631851178344.Spec : Prop :=
  ∀ n, P5127950631851178344.a n = (A078391 n : ℚ)

end A078391

/-! ## A078391.P8061254534422831916

`A342982(n)/(2*A232535(n)-A091042(n))`
-/

namespace A078391.P8061254534422831916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342982 n : ℚ) / (2 * A232535 n - A091042 n : ℚ)

end

end A078391.P8061254534422831916

namespace A078391

/-- `A342982(n)/(2*A232535(n)-A091042(n))` -/
def P8061254534422831916.Spec : Prop :=
  ∀ n, P8061254534422831916.a n = (A078391 n : ℚ)

end A078391

/-! ## A078391.P5000663666063556099

`A342982(n)/A202023(A292564(n))`
-/

namespace A078391.P5000663666063556099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342982 n : ℚ) / (A202023 (A292564 n).toNat : ℚ)

end

end A078391.P5000663666063556099

namespace A078391

/-- `A342982(n)/A202023(A292564(n))` -/
def P5000663666063556099.Spec : Prop :=
  ∀ n, P5000663666063556099.a n = (A078391 n : ℚ)

end A078391

/-! ## A078391.P12853322950569746780

`∏{e}[A036561(n), A000108(#)]`
-/

namespace A078391.P12853322950569746780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000108 (Nat.factorization (f1 n).natAbs p)

end

end A078391.P12853322950569746780

namespace A078391

/-- `∏{e}[A036561(n), A000108(#)]` -/
def P12853322950569746780.Spec : Prop :=
  ∀ n, P12853322950569746780.a n = A078391 n

end A078391

/-! ## A078391.P3181049222944250424

`A246596(A089633(n))`
-/

namespace A078391.P3181049222944250424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 (A089633 n).toNat

end

end A078391.P3181049222944250424

namespace A078391

/-- `A246596(A089633(n))` -/
def P3181049222944250424.Spec : Prop :=
  ∀ n, P3181049222944250424.a n = A078391 n

end A078391

/-! ## A078391.P5728929040014112429

`A246596(A130328(n)-1)`
-/

namespace A078391.P5728929040014112429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246596 (A130328 n - 1).toNat

end

end A078391.P5728929040014112429

namespace A078391

/-- `A246596(A130328(n)-1)` -/
def P5728929040014112429.Spec : Prop :=
  ∀ n, P5728929040014112429.a n = A078391 n

end A078391

/-!
# A078392: Sum of GCD's of parts in all partitions of n.

The programs for A078392, there is no canonical definition to state claims against.
-/

/-! ## A078392.P14050614062955670350

`∑{d}[n+1, (n+1)/#*A000837(#)]`
-/

namespace A078392.P14050614062955670350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A000837 d : ℚ)

end

end A078392.P14050614062955670350

/-! ## A078392.P17001398437833245172

`∑{d}[n+1, A000041(#)*A000010((n+1)/#)]`
-/

namespace A078392.P17001398437833245172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000041 d * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078392.P17001398437833245172

/-! ## A078392.P15036441335063447046

`∑{d}[n+1, A029935(#)*A333697((n+1)/#)]`
-/

namespace A078392.P15036441335063447046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A333697 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078392.P15036441335063447046

/-! ## A078392.P5959871471712150391

`∑{d}[n+1, A305841(#)*A326305((n+1)/#)]`
-/

namespace A078392.P5959871471712150391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A305841 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078392.P5959871471712150391

/-! ## A078392.P12005205976426554886

`A220136(A050291(2*n))+A000203(n+1)`
-/

namespace A078392.P12005205976426554886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A050291 (2 * n)).toNat + A000203 (n + 1)

end

end A078392.P12005205976426554886

/-!
# A078393: Squarefree numbers which can be written as sum of a positive square and a positive cube.

The programs for A078393, there is no canonical definition to state claims against.
-/

/-! ## A078393.P13259776489520520611

`record[A078386(n+1)]`
-/

namespace A078393.P13259776489520520611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078393.P13259776489520520611

/-! ## A078393.P4523901186918626118

`record[A007913(A055394(n+1))]`
-/

namespace A078393.P4523901186918626118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A055394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078393.P4523901186918626118

/-! ## A078393.P7491727152720723742

`filter[A055394(n+1), A008966(#)]`
-/

namespace A078393.P7491727152720723742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A078393.P7491727152720723742

/-! ## A078393.P11236864587846849729

`record[A007947(A055394(2*n+1-n))]`
-/

namespace A078393.P11236864587846849729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A055394 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078393.P11236864587846849729

/-! ## A078393.P11686068746550629306

`record[A007947(A022549(n+4))]`
-/

namespace A078393.P11686068746550629306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A022549 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078393.P11686068746550629306

/-! ## A078393.P12415356827621255864

`filter[A022549(n+3), A008966(#)]`
-/

namespace A078393.P12415356827621255864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A078393.P12415356827621255864

/-! ## A078393.P6013047531518462326

`∩[A005117(n+1), A055394(n+1)]`
-/

namespace A078393.P6013047531518462326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078393.P6013047531518462326

/-! ## A078393.P12730683355713664238

`∩[A005117(n+1), A022549(n+3)]`
-/

namespace A078393.P12730683355713664238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078393.P12730683355713664238

/-! ## A078393.P7536985962712576863

`∩[A022549(n+1), A144338(n+1)]`
-/

namespace A078393.P7536985962712576863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078393.P7536985962712576863

/-! ## A078393.P7664153353481556041

`∩[A055394(n+1), A144338(n+1)]`
-/

namespace A078393.P7664153353481556041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078393.P7664153353481556041

/-! ## A078393.P11795367627066475826

`eq[A008683(n+1)², A266364(n)]+1`
-/

namespace A078393.P11795367627066475826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078393.P11795367627066475826

/-! ## A078393.P13392586415314993988

`eq[A008683(n+1)², A266528(n)]+1`
-/

namespace A078393.P13392586415314993988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A078393.P13392586415314993988

/-!
# A078394: Numbers k such that reverse(A004154(k)) + 1 is prime.

The programs for A078394, there is no canonical definition to state claims against.
-/

/-! ## A078394.P6774151870519698640

`A218654(A150571(n))`
-/

namespace A078394.P6774151870519698640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218654 (A150571 n).toNat

end

end A078394.P6774151870519698640

/-! ## A078394.P738107354234128150

`A318268(A344654(n+1))+n`
-/

namespace A078394.P738107354234128150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318268 (A344654 (n + 1)).toNat + (n : ℤ)

end

end A078394.P738107354234128150

/-! ## A078394.P6360980211535494163

`∪[A004877(n+1), A061169(n)]`
-/

namespace A078394.P6360980211535494163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078394.P6360980211535494163

/-!
# A078395: a(1) = 1, a(n) for n > 1 is the smallest multiple of a(n-1) that begins with the reverse concatenation from n to 1.

The programs for A078395, there is no canonical definition to state claims against.
-/

/-! ## A078395.P13010941557967159673

`∏[A078396(n+1)]/A078396(n+1)`
-/

namespace A078395.P13010941557967159673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078396 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A078396 (n + 1) : ℚ)

end

end A078395.P13010941557967159673

/-!
# A078396: a(n) = A078395(n+1)/A078395(n).

The programs for A078396, there is no canonical definition to state claims against.
-/

/-! ## A078396.P8414050316845781186

`A078395(n+2)/A078395(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078396.P8414050316845781186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078395 (n + 2) : ℚ) / (A078395 (n + 1) : ℚ)

end

end A078396.P8414050316845781186

/-! ## A078396.P5414102908825382372

`ratio[A078395(n+1)]`
-/

namespace A078396.P5414102908825382372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078395 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078396.P5414102908825382372

/-! ## A078396.P15330225983022686916

`ratio[-A078395(A077168(n))]`
-/

namespace A078396.P15330225983022686916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078395 (A077168 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078396.P15330225983022686916

/-!
# A078397: a(n) = A078296(n+1)/A078296(n).

The programs for A078397, there is no canonical definition to state claims against.
-/

/-! ## A078397.P7402828567402266185

`A078296(n+2)/A078296(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078397.P7402828567402266185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078296 (n + 2) : ℚ) / (A078296 (n + 1) : ℚ)

end

end A078397.P7402828567402266185

/-! ## A078397.P15401617450966173886

`ratio[A078296(n+1)]`
-/

namespace A078397.P15401617450966173886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078296 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078397.P15401617450966173886

/-! ## A078397.P9836266233720536300

`ratio[record[A078296(A050603(n))]]`
-/

namespace A078397.P9836266233720536300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078296 (A050603 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078397.P9836266233720536300

/-! ## A078397.P2401636495664185326

`ratio[record[A078296(A126759(n))]]`
-/

namespace A078397.P2401636495664185326
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078296 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078397.P2401636495664185326

/-!
# A078398: a(1) = 1; a(n) for n > 1 is the smallest multiple of a(n-1) that begins with n concatenations of n.

The programs for A078398, there is no canonical definition to state claims against.
-/

/-! ## A078398.P5218298004975178962

`∏[A078399(n+1)]/A078399(n+1)`
-/

namespace A078398.P5218298004975178962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078399 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A078399 (n + 1) : ℚ)

end

end A078398.P5218298004975178962

/-!
# A078399: a(n) = A078398(n+1)/A078398(n).

The programs for A078399, there is no canonical definition to state claims against.
-/

/-! ## A078399.P15068905476291190323

`ratio[A078398(n+1)]`
-/

namespace A078399.P15068905476291190323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078398 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A078399.P15068905476291190323

/-! ## A078399.P1731731592773689394

`A078398(n+2)/A078398(n+1)`
-/

namespace A078399.P1731731592773689394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078398 (n + 2) : ℚ) / (A078398 (n + 1) : ℚ)

end

end A078399.P1731731592773689394

