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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C002
import Seq.B008.C001
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
import Seq.Opaque.C025

/-!
# A390800: The sum of the integers k from 1 to n such that gcd(n, k) is a power of a prime (A000961).

The programs for A390800, the canonical program `A390800.P11464708806357456531` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390800 has offset 1).

The definition of A390800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, A131233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390800.P11464708806357456531

`(n+1+A010055(n+1))*A131233(n+1)/2`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A390800

/-- `(n+1+A010055(n+1))*A131233(n+1)/2` -/
def P11464708806357456531.Spec : Prop :=
  ∀ n, P11464708806357456531.a n = (A390800 (n + 1) : ℚ)

end A390800

/-! ## A390800.P2179602053800873766

`∑{d}[n+1, A023888(#)*A331388((n+1)/#)]`
-/

namespace A390800.P2179602053800873766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023888 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390800.P2179602053800873766

namespace A390800

/-- `∑{d}[n+1, A023888(#)*A331388((n+1)/#)]` -/
def P2179602053800873766.Spec : Prop :=
  ∀ n, P2179602053800873766.a n = A390800 (n + 1)

end A390800

/-! ## A390800.P1224358752922325987

`A029931(A033484(n))-A318877(n+1)`
-/

namespace A390800.P1224358752922325987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A033484 n).toNat - A318877 (n + 1)

end

end A390800.P1224358752922325987

namespace A390800

/-- `A029931(A033484(n))-A318877(n+1)` -/
def P1224358752922325987.Spec : Prop :=
  ∀ n, P1224358752922325987.a n = A390800 (n + 1)

end A390800

/-! ## A390800.P867341390646203326

`A000217(A031218(n+1)%A004023(n+1))`
-/

namespace A390800.P867341390646203326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A031218 (n + 1)) (A004023 (n + 1))).toNat

end

end A390800.P867341390646203326

namespace A390800

/-- `A000217(A031218(n+1)%A004023(n+1))` -/
def P867341390646203326.Spec : Prop :=
  ∀ n, P867341390646203326.a n = A390800 (n + 1)

end A390800

/-! ## A390800.P6401024340857135084

`A000217(A385199(n+1)%A127424(3*(n+1)))`
-/

namespace A390800.P6401024340857135084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.tmod (A385199 (n + 1)) (A127424 (3 * (n + 1)))).toNat

end

end A390800.P6401024340857135084

namespace A390800

/-- `A000217(A385199(n+1)%A127424(3*(n+1)))` -/
def P6401024340857135084.Spec : Prop :=
  ∀ n, P6401024340857135084.a n = A390800 (n + 1)

end A390800

/-!
# A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

The programs for A390801, the canonical program `A390801.P18004554109699074383` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390801 has offset 1).

The definition of A390801 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A117494, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390801.P18004554109699074383

`(A010051(n+1)+1)*(n+1)*A117494(n+1)/2`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A390801

/-- `(A010051(n+1)+1)*(n+1)*A117494(n+1)/2` -/
def P18004554109699074383.Spec : Prop :=
  ∀ n, P18004554109699074383.a n = (A390801 (n + 1) : ℚ)

end A390801

/-! ## A390801.P7518913584261521193

`∑{d}[n+1, A023896(#)*A061397((n+1)/#)]`
-/

namespace A390801.P7518913584261521193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390801.P7518913584261521193

namespace A390801

/-- `∑{d}[n+1, A023896(#)*A061397((n+1)/#)]` -/
def P7518913584261521193.Spec : Prop :=
  ∀ n, P7518913584261521193.a n = A390801 (n + 1)

end A390801

/-! ## A390801.P9368983338415668284

`∑{d}[n+1, A057661(#)*A137851((n+1)/#)]`
-/

namespace A390801.P9368983338415668284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A137851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390801.P9368983338415668284

namespace A390801

/-- `∑{d}[n+1, A057661(#)*A137851((n+1)/#)]` -/
def P9368983338415668284.Spec : Prop :=
  ∀ n, P9368983338415668284.a n = A390801 (n + 1)

end A390801

/-! ## A390801.P224603644853016826

`∑{d}[n+1, A008472(#)*A331388((n+1)/#)]`
-/

namespace A390801.P224603644853016826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390801.P224603644853016826

namespace A390801

/-- `∑{d}[n+1, A008472(#)*A331388((n+1)/#)]` -/
def P224603644853016826.Spec : Prop :=
  ∀ n, P224603644853016826.a n = A390801 (n + 1)

end A390801

/-!
# A390802: The sum of the integers k from 1 to n such that gcd(n, k) is odd.

The programs for A390802, the canonical program `A390802.P5003339300626934478` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390802 has offset 1).

The definition of A390802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390802.P5003339300626934478

`(A026741(n+1)+A000035(n+1))*(n+1)/2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A390802

/-- `(A026741(n+1)+A000035(n+1))*(n+1)/2` -/
def P5003339300626934478.Spec : Prop :=
  ∀ n, P5003339300626934478.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P16611970254084922397

`∑[(Δ[lcm(n, n+2)]-1)/2]`
-/

namespace A390802.P16611970254084922397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390802.P16611970254084922397

namespace A390802

/-- `∑[(Δ[lcm(n, n+2)]-1)/2]` -/
def P16611970254084922397.Spec : Prop :=
  ∀ n, P16611970254084922397.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P16848291649559658086

`floor((lcm(n+1, n+3)-n)/2)`
-/

namespace A390802.P16848291649559658086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm (n + 1) (n + 3) : ℤ) - (n : ℤ) : ℚ) / 2⌋

end

end A390802.P16848291649559658086

namespace A390802

/-- `floor((lcm(n+1, n+3)-n)/2)` -/
def P16848291649559658086.Spec : Prop :=
  ∀ n, P16848291649559658086.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P7500817417505600620

`∑[n+1]²%(1-(n+2)²)`
-/

namespace A390802.P7500817417505600620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (1 - ((n + 2) ^ 2 : ℤ))

end

end A390802.P7500817417505600620

namespace A390802

/-- `∑[n+1]²%(1-(n+2)²)` -/
def P7500817417505600620.Spec : Prop :=
  ∀ n, P7500817417505600620.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P4384478109465576563

`gcd(n+1, ∑[n])*floor((n+2)/2)`
-/

namespace A390802.P4384478109465576563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * ⌊(n + 2 : ℚ) / 2⌋

end

end A390802.P4384478109465576563

namespace A390802

/-- `gcd(n+1, ∑[n])*floor((n+2)/2)` -/
def P4384478109465576563.Spec : Prop :=
  ∀ n, P4384478109465576563.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P13392561109849303132

`(n+3)/(n-1)*a(n-2)+1` with `a(0)=1, a(1)=1`
-/

namespace A390802.P13392561109849303132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 2) + 1

end

end A390802.P13392561109849303132

namespace A390802

/-- `(n+3)/(n-1)*a(n-2)+1` -/
def P13392561109849303132.Spec : Prop :=
  ∀ n, P13392561109849303132.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P3973641498825429052

`A367204(n+3)+1`
-/

namespace A390802.P3973641498825429052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367204 (n + 3) + 1

end

end A390802.P3973641498825429052

namespace A390802

/-- `A367204(n+3)+1` -/
def P3973641498825429052.Spec : Prop :=
  ∀ n, P3973641498825429052.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P14035582950759517597

`A309805(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A390802.P14035582950759517597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A309805 (n + 1) - a (n - 1)

end

end A390802.P14035582950759517597

namespace A390802

/-- `A309805(n+1)-a(n-1)` -/
def P14035582950759517597.Spec : Prop :=
  ∀ n, P14035582950759517597.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P7352815033502451280

`A079097(n)*A158416(n)`
-/

namespace A390802.P7352815033502451280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 n * A158416 n

end

end A390802.P7352815033502451280

namespace A390802

/-- `A079097(n)*A158416(n)` -/
def P7352815033502451280.Spec : Prop :=
  ∀ n, P7352815033502451280.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P213403471338977206

`gcd(A126274(n), A212762(n))`
-/

namespace A390802.P213403471338977206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126274 n) (A212762 n)

end

end A390802.P213403471338977206

namespace A390802

/-- `gcd(A126274(n), A212762(n))` -/
def P213403471338977206.Spec : Prop :=
  ∀ n, (P213403471338977206.a n : ℤ) = A390802 (n + 1)

end A390802

/-! ## A390802.P10921791156648468760

`gcd(A212760(n), A212766(n))`
-/

namespace A390802.P10921791156648468760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212760 n) (A212766 n)

end

end A390802.P10921791156648468760

namespace A390802

/-- `gcd(A212760(n), A212766(n))` -/
def P10921791156648468760.Spec : Prop :=
  ∀ n, (P10921791156648468760.a n : ℤ) = A390802 (n + 1)

end A390802

/-! ## A390802.P12645251717043929517

`lcm(A008619(n), A079097(n))`
-/

namespace A390802.P12645251717043929517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008619 n) (A079097 n)

end

end A390802.P12645251717043929517

namespace A390802

/-- `lcm(A008619(n), A079097(n))` -/
def P12645251717043929517.Spec : Prop :=
  ∀ n, (P12645251717043929517.a n : ℤ) = A390802 (n + 1)

end A390802

/-! ## A390802.P14747909456075734338

`A359366(n)+A193356(n+1)`
-/

namespace A390802.P14747909456075734338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359366 n + A193356 (n + 1)

end

end A390802.P14747909456075734338

namespace A390802

/-- `A359366(n)+A193356(n+1)` -/
def P14747909456075734338.Spec : Prop :=
  ∀ n, P14747909456075734338.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P18099198968304593108

`A308422(n+1)-A093353(n)`
-/

namespace A390802.P18099198968304593108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308422 (n + 1) - A093353 n

end

end A390802.P18099198968304593108

namespace A390802

/-- `A308422(n+1)-A093353(n)` -/
def P18099198968304593108.Spec : Prop :=
  ∀ n, P18099198968304593108.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P5044641574248886576

`A008619(n)*A026741(n+1)`
-/

namespace A390802.P5044641574248886576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A026741 (n + 1)

end

end A390802.P5044641574248886576

namespace A390802

/-- `A008619(n)*A026741(n+1)` -/
def P5044641574248886576.Spec : Prop :=
  ∀ n, P5044641574248886576.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P9748792973603727588

`A093005(n+1)/A000034(n)`
-/

namespace A390802.P9748792973603727588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093005 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A390802.P9748792973603727588

namespace A390802

/-- `A093005(n+1)/A000034(n)` -/
def P9748792973603727588.Spec : Prop :=
  ∀ n, P9748792973603727588.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P6957066792752732479

`A133092(n+1)/A010685(n)`
-/

namespace A390802.P6957066792752732479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133092 (n + 1) : ℚ) / (A010685 n : ℚ)

end

end A390802.P6957066792752732479

namespace A390802

/-- `A133092(n+1)/A010685(n)` -/
def P6957066792752732479.Spec : Prop :=
  ∀ n, P6957066792752732479.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P12111002201379098484

`A212760(n)/A145051(n+1)`
-/

namespace A390802.P12111002201379098484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212760 n : ℚ) / (A145051 (n + 1) : ℚ)

end

end A390802.P12111002201379098484

namespace A390802

/-- `A212760(n)/A145051(n+1)` -/
def P12111002201379098484.Spec : Prop :=
  ∀ n, P12111002201379098484.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P11092715371929628861

`gcd(A212759(n), A328994(n+1))`
-/

namespace A390802.P11092715371929628861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212759 n) (A328994 (n + 1))

end

end A390802.P11092715371929628861

namespace A390802

/-- `gcd(A212759(n), A328994(n+1))` -/
def P11092715371929628861.Spec : Prop :=
  ∀ n, (P11092715371929628861.a n : ℤ) = A390802 (n + 1)

end A390802

/-! ## A390802.P7852072017230174805

`lcm(A000463(n+1), A030640(n))`
-/

namespace A390802.P7852072017230174805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000463 (n + 1)) (A030640 n)

end

end A390802.P7852072017230174805

namespace A390802

/-- `lcm(A000463(n+1), A030640(n))` -/
def P7852072017230174805.Spec : Prop :=
  ∀ n, (P7852072017230174805.a n : ℤ) = A390802 (n + 1)

end A390802

/-!
# A390803: The sum of the integers k from 1 to n such that gcd(n, k) is a 5-rough number (A007310).

The programs for A390803, there is no canonical definition to state claims against.
-/

/-! ## A390803.P15310609080008210001

`(n+1+A354354(n+1))*A384042(n+1)/2`
-/

namespace A390803.P15310609080008210001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A354354 (n + 1)) * A384042 (n + 1) : ℚ) / 2

end

end A390803.P15310609080008210001

/-! ## A390803.P5098220673714228596

`∑{d}[n+1, A186099(#)*A331388((n+1)/#)]`
-/

namespace A390803.P5098220673714228596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A186099 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390803.P5098220673714228596

/-!
# A390804: The sum of the integers k from 1 to n such that gcd(n, k) is a power of 2.

The programs for A390804, the canonical program `A390804.P8097581353689946538` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390804 has offset 1).

The definition of A390804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062570, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390804.P8097581353689946538

`(A062570(n+1)+A209229(n+1))*(n+1)/2`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390804

/-- `(A062570(n+1)+A209229(n+1))*(n+1)/2` -/
def P8097581353689946538.Spec : Prop :=
  ∀ n, P8097581353689946538.a n = (A390804 (n + 1) : ℚ)

end A390804

/-! ## A390804.P16802379119078038910

`∑{d}[n+1, A057661(#)*A067856((n+1)/#)]`
-/

namespace A390804.P16802379119078038910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390804.P16802379119078038910

namespace A390804

/-- `∑{d}[n+1, A057661(#)*A067856((n+1)/#)]` -/
def P16802379119078038910.Spec : Prop :=
  ∀ n, P16802379119078038910.a n = A390804 (n + 1)

end A390804

/-! ## A390804.P10047401683457274084

`∑{d}[n+1, A091519(#)*A125287((n+1)/#)]`
-/

namespace A390804.P10047401683457274084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091519 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390804.P10047401683457274084

namespace A390804

/-- `∑{d}[n+1, A091519(#)*A125287((n+1)/#)]` -/
def P10047401683457274084.Spec : Prop :=
  ∀ n, P10047401683457274084.a n = A390804 (n + 1)

end A390804

/-! ## A390804.P1051928569177864590

`∑{d}[n+1, A007437(#)*A327278((n+1)/#)]`
-/

namespace A390804.P1051928569177864590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390804.P1051928569177864590

namespace A390804

/-- `∑{d}[n+1, A007437(#)*A327278((n+1)/#)]` -/
def P1051928569177864590.Spec : Prop :=
  ∀ n, P1051928569177864590.a n = A390804 (n + 1)

end A390804

/-! ## A390804.P8503582802371373743

`∑{d}[n+1, A326937(#)*A338045((n+1)/#)]`
-/

namespace A390804.P8503582802371373743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326937 d * A338045 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390804.P8503582802371373743

namespace A390804

/-- `∑{d}[n+1, A326937(#)*A338045((n+1)/#)]` -/
def P8503582802371373743.Spec : Prop :=
  ∀ n, P8503582802371373743.a n = A390804 (n + 1)

end A390804

/-! ## A390804.P11741449765932099793

`∑{d}[n+1, A023896(#)*A099894((n+1)/#-1)]`
-/

namespace A390804.P11741449765932099793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A099894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A390804.P11741449765932099793

namespace A390804

/-- `∑{d}[n+1, A023896(#)*A099894((n+1)/#-1)]` -/
def P11741449765932099793.Spec : Prop :=
  ∀ n, P11741449765932099793.a n = A390804 (n + 1)

end A390804

/-! ## A390804.P10959650009661533744

`∑{d}[n+1, A038712(#)*A331388((n+1)/#)]`
-/

namespace A390804.P10959650009661533744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390804.P10959650009661533744

namespace A390804

/-- `∑{d}[n+1, A038712(#)*A331388((n+1)/#)]` -/
def P10959650009661533744.Spec : Prop :=
  ∀ n, P10959650009661533744.a n = A390804 (n + 1)

end A390804

/-!
# A390805: The sum of the integers k from 1 to n such that gcd(n, k) is a 3-smooth number (A003586).

The programs for A390805, the canonical program `A390805.P3287936561210564327` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390805 has offset 1).

The definition of A390805 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A065333, A372671, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390805.P3287936561210564327

`(n+1+A065333(n+1))*A372671(n+1)/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A390805

/-- `(n+1+A065333(n+1))*A372671(n+1)/2` -/
def P3287936561210564327.Spec : Prop :=
  ∀ n, P3287936561210564327.a n = (A390805 (n + 1) : ℚ)

end A390805

/-! ## A390805.P8009665670188086551

`∑{d}[n+1, A023896(#)*A065332((n+1)/#)]`
-/

namespace A390805.P8009665670188086551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023896 d * A065332 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390805.P8009665670188086551

namespace A390805

/-- `∑{d}[n+1, A023896(#)*A065332((n+1)/#)]` -/
def P8009665670188086551.Spec : Prop :=
  ∀ n, P8009665670188086551.a n = A390805 (n + 1)

end A390805

/-! ## A390805.P17454159215428845432

`∑{d}[n+1, A072079(#)*A331388((n+1)/#)]`
-/

namespace A390805.P17454159215428845432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072079 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390805.P17454159215428845432

namespace A390805

/-- `∑{d}[n+1, A072079(#)*A331388((n+1)/#)]` -/
def P17454159215428845432.Spec : Prop :=
  ∀ n, P17454159215428845432.a n = A390805 (n + 1)

end A390805

/-! ## A390805.P14858562109131422405

`A079415(A056372(n+1))`
-/

namespace A390805.P14858562109131422405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079415 (A056372 (n + 1)).toNat

end

end A390805.P14858562109131422405

namespace A390805

/-- `A079415(A056372(n+1))` -/
def P14858562109131422405.Spec : Prop :=
  ∀ n, P14858562109131422405.a n = A390805 (n + 1)

end A390805

/-! ## A390805.P17598265630948559514

`A370291(A056394(n+1))`
-/

namespace A390805.P17598265630948559514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370291 (A056394 (n + 1)).toNat

end

end A390805.P17598265630948559514

namespace A390805

/-- `A370291(A056394(n+1))` -/
def P17598265630948559514.Spec : Prop :=
  ∀ n, P17598265630948559514.a n = A390805 (n + 1)

end A390805

/-!
# A390806: The sum of the integers k from 1 to n such that gcd(n, k) is squarefree (A005117).

The programs for A390806, the canonical program `A390806.P17797365199190271958` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390806 has offset 1).

The definition of A390806 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A063659, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390806.P17797365199190271958

`(n+1+A008966(n+1))*A063659(n+1)/2`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A390806

/-- `(n+1+A008966(n+1))*A063659(n+1)/2` -/
def P17797365199190271958.Spec : Prop :=
  ∀ n, P17797365199190271958.a n = (A390806 (n + 1) : ℚ)

end A390806

/-! ## A390806.P15664857902583542656

`∑{d}[n+1, A000082(#)*A125287((n+1)/#)]`
-/

namespace A390806.P15664857902583542656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000082 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390806.P15664857902583542656

namespace A390806

/-- `∑{d}[n+1, A000082(#)*A125287((n+1)/#)]` -/
def P15664857902583542656.Spec : Prop :=
  ∀ n, P15664857902583542656.a n = A390806 (n + 1)

end A390806

/-! ## A390806.P4055867516780219487

`∑{d}[n+1, A048250(#)*A331388((n+1)/#)]`
-/

namespace A390806.P4055867516780219487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390806.P4055867516780219487

namespace A390806

/-- `∑{d}[n+1, A048250(#)*A331388((n+1)/#)]` -/
def P4055867516780219487.Spec : Prop :=
  ∀ n, P4055867516780219487.a n = A390806 (n + 1)

end A390806

/-!
# A390807: The sum of the integers k from 1 to n such that gcd(n, k) is cubefree (A004709).

The programs for A390807, the canonical program `A390807.P12060733116500477193` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390807 has offset 1).

The definition of A390807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, A254926, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390807.P12060733116500477193

`(n+1+A212793(n+1))*A254926(n+1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390807

/-- `(n+1+A212793(n+1))*A254926(n+1)/2` -/
def P12060733116500477193.Spec : Prop :=
  ∀ n, P12060733116500477193.a n = (A390807 (n + 1) : ℚ)

end A390807

/-! ## A390807.P12877543344497210154

`∑{d}[n+1, A073185(#)*A331388((n+1)/#)]`
-/

namespace A390807.P12877543344497210154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A073185 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390807.P12877543344497210154

namespace A390807

/-- `∑{d}[n+1, A073185(#)*A331388((n+1)/#)]` -/
def P12877543344497210154.Spec : Prop :=
  ∀ n, P12877543344497210154.a n = A390807 (n + 1)

end A390807

/-! ## A390807.P14296917700244367818

`C(A386575(A070003(n+2))+1+n, 2)`
-/

namespace A390807.P14296917700244367818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A386575 (A070003 (n + 2)).toNat + 1 + (n : ℤ)).toNat 2

end

end A390807.P14296917700244367818

namespace A390807

/-- `C(A386575(A070003(n+2))+1+n, 2)` -/
def P14296917700244367818.Spec : Prop :=
  ∀ n, (P14296917700244367818.a n : ℤ) = A390807 (n + 1)

end A390807

/-! ## A390807.P8659221738432423865

`A349436(A050921(3*n+2)+1)+∑[n+1]`
-/

namespace A390807.P8659221738432423865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349436 (A050921 (3 * n + 2) + 1).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A390807.P8659221738432423865

namespace A390807

/-- `A349436(A050921(3*n+2)+1)+∑[n+1]` -/
def P8659221738432423865.Spec : Prop :=
  ∀ n, P8659221738432423865.a n = A390807 (n + 1)

end A390807

/-! ## A390807.P5217406481732352749

`A161680(A369796(A369596(n))+n+1)`
-/

namespace A390807.P5217406481732352749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A369796 (A369596 n).toNat + (n + 1 : ℤ)).toNat

end

end A390807.P5217406481732352749

namespace A390807

/-- `A161680(A369796(A369596(n))+n+1)` -/
def P5217406481732352749.Spec : Prop :=
  ∀ n, P5217406481732352749.a n = A390807 (n + 1)

end A390807

/-!
# A390808: The sum of the integers k from 1 to n such that gcd(n, k) is a square.

The programs for A390808, the canonical program `A390808.P15368856780448354872` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390808 has offset 1).

The definition of A390808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390808.P18251409206991548966

`∑{d}[n+1, A007438(#)*A061020((n+1)/#)]`
-/

namespace A390808.P18251409206991548966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P18251409206991548966

namespace A390808

/-- `∑{d}[n+1, A007438(#)*A061020((n+1)/#)]` -/
def P18251409206991548966.Spec : Prop :=
  ∀ n, P18251409206991548966.a n = A390808 (n + 1)

end A390808

/-! ## A390808.P3229626997274954771

`∑{d}[n+1, A007437(#)*A158523((n+1)/#)]`
-/

namespace A390808.P3229626997274954771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P3229626997274954771

namespace A390808

/-- `∑{d}[n+1, A007437(#)*A158523((n+1)/#)]` -/
def P3229626997274954771.Spec : Prop :=
  ∀ n, P3229626997274954771.a n = A390808 (n + 1)

end A390808

/-! ## A390808.P11080848769090283992

`∑{d}[n+1, A057661(#)*A358272((n+1)/#)]`
-/

namespace A390808.P11080848769090283992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P11080848769090283992

namespace A390808

/-- `∑{d}[n+1, A057661(#)*A358272((n+1)/#)]` -/
def P11080848769090283992.Spec : Prop :=
  ∀ n, P11080848769090283992.a n = A390808 (n + 1)

end A390808

/-! ## A390808.P15368856780448354872

`∑{d}[n+1, A125287(#)*A351600((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A390808

/-- `∑{d}[n+1, A125287(#)*A351600((n+1)/#)]` -/
def P15368856780448354872.Spec : Prop :=
  ∀ n, P15368856780448354872.a n = A390808 (n + 1)

theorem P15368856780448354872.correct : P15368856780448354872.Spec := by
  intro n
  simp only [A390808, Nat.add_sub_cancel]

end A390808

/-! ## A390808.P390478405324278905

`∑{d}[n+1, A298473(#)*A309731((n+1)/#)]`
-/

namespace A390808.P390478405324278905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A298473 d * A309731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P390478405324278905

namespace A390808

/-- `∑{d}[n+1, A298473(#)*A309731((n+1)/#)]` -/
def P390478405324278905.Spec : Prop :=
  ∀ n, P390478405324278905.a n = A390808 (n + 1)

end A390808

/-! ## A390808.P11846762605439222211

`∑{d}[n+1, A035316(#)*A331388((n+1)/#)]`
-/

namespace A390808.P11846762605439222211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P11846762605439222211

namespace A390808

/-- `∑{d}[n+1, A035316(#)*A331388((n+1)/#)]` -/
def P11846762605439222211.Spec : Prop :=
  ∀ n, P11846762605439222211.a n = A390808 (n + 1)

end A390808

/-!
# A390809: The sum of the integers k from 1 to n such that gcd(n, k) is either 1 or 2.

The programs for A390809, the canonical program `A390809.P1718216856557359556` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390809 has offset 1).

The definition of A390809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390809.P1718216856557359556

`∑{d}[n+1, A057661(#)*A086831((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A390809

/-- `∑{d}[n+1, A057661(#)*A086831((n+1)/#)]` -/
def P1718216856557359556.Spec : Prop :=
  ∀ n, P1718216856557359556.a n = A390809 (n + 1)

theorem P1718216856557359556.correct : P1718216856557359556.Spec := by
  intro n
  simp only [A390809, Nat.add_sub_cancel]

end A390809

/-! ## A390809.P17572177941799365649

`∑{d}[n+1, A010684(#-1)*A331388((n+1)/#)]`
-/

namespace A390809.P17572177941799365649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010684 (d - 1) * A331388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390809.P17572177941799365649

namespace A390809

/-- `∑{d}[n+1, A010684(#-1)*A331388((n+1)/#)]` -/
def P17572177941799365649.Spec : Prop :=
  ∀ n, P17572177941799365649.a n = A390809 (n + 1)

end A390809

/-!
# A390810: a(n) = Sum_{k=0..n} (k+3) * binomial(4*n-3*k+3,n-k)/(4*n-3*k+3).

The programs for A390810, there is no canonical definition to state claims against.
-/

/-! ## A390810.P13512436163347229157

`A004001(A049311(2*n+1)+A006918(n))`
-/

namespace A390810.P13512436163347229157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A049311 (2 * n + 1) + A006918 n).toNat

end

end A390810.P13512436163347229157

/-!
# A390811: a(n) = Sum_{k=0..n} (2*k+3) * binomial(4*n-2*k+3,n-k)/(4*n-2*k+3).

The programs for A390811, there is no canonical definition to state claims against.
-/

/-! ## A390811.P5817278960405418171

`A004525(A098410(n))+n`
-/

namespace A390811.P5817278960405418171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A098410 n).toNat + (n : ℤ)

end

end A390811.P5817278960405418171

/-!
# A390813: a(n) is the size of the largest Sidon subset of the first n positive perfect squares.

The programs for A390813, there is no canonical definition to state claims against.
-/

/-! ## A390813.P11467908584275910909

`A066063(A243175(n+1))`
-/

namespace A390813.P11467908584275910909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066063 (A243175 (n + 1)).toNat

end

end A390813.P11467908584275910909

/-! ## A390813.P8062806254393260127

`A007456(A357173(n+2))`
-/

namespace A390813.P8062806254393260127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007456 (A357173 (n + 2)).toNat

end

end A390813.P8062806254393260127

/-!
# A390814: Number of cyclically symmetric plane partitions with n orbits of cubes up to the action of C3.

The programs for A390814, there is no canonical definition to state claims against.
-/

/-! ## A390814.P9043494980378571804

`A180447(A374728(n+2))`
-/

namespace A390814.P9043494980378571804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A374728 (n + 2)).toNat

end

end A390814.P9043494980378571804

/-! ## A390814.P12165290693247106344

`A135660(A011952(n+4))`
-/

namespace A390814.P12165290693247106344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A011952 (n + 4)).toNat

end

end A390814.P12165290693247106344

/-! ## A390814.P816312373004155873

`A139338(A298414(n))`
-/

namespace A390814.P816312373004155873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139338 (A298414 n).toNat

end

end A390814.P816312373004155873

/-! ## A390814.P2925561122368404088

`A337769(A117760(n))`
-/

namespace A390814.P2925561122368404088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A117760 n).toNat

end

end A390814.P2925561122368404088

/-! ## A390814.P18420490871253178864

`A263846(A217861(n))`
-/

namespace A390814.P18420490871253178864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A217861 n).toNat

end

end A390814.P18420490871253178864

/-!
# A390815: Denominators > 1 of ratio n!/sigma(n), where n! = factorial of n (A000142) and sigma(n) = sum of divisors of n (A000203).

The programs for A390815, there is no canonical definition to state claims against.
-/

/-! ## A390815.P10026108397120708685

`∑{p}[A000203(A325436(n+1)), #]`
-/

namespace A390815.P10026108397120708685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A325436 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A390815.P10026108397120708685

/-! ## A390815.P6226526655833960064

`A355934(A325436(n+1))`
-/

namespace A390815.P6226526655833960064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (A325436 (n + 1)).toNat

end

end A390815.P6226526655833960064

/-!
# A390816: Number of tripling steps in the Collatz 3x+1 iteration going from 2^n-1 to 1.

The programs for A390816, there is no canonical definition to state claims against.
-/

/-! ## A390816.P1967493547838423231

`A075680(2^n)`
-/

namespace A390816.P1967493547838423231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (2 ^ n)

end

end A390816.P1967493547838423231

/-! ## A390816.P11942639211451227377

`A006667(A000225(n+1))`
-/

namespace A390816.P11942639211451227377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A000225 (n + 1)).toNat

end

end A390816.P11942639211451227377

/-! ## A390816.P17327348174227888065

`A332453(2^n)`
-/

namespace A390816.P17327348174227888065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332453 (2 ^ n)

end

end A390816.P17327348174227888065

/-! ## A390816.P619242626902217973

`A352893(2^(n+1))`
-/

namespace A390816.P619242626902217973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352893 (2 ^ (n + 1))

end

end A390816.P619242626902217973

/-! ## A390816.P2525240196336345610

`A075680(A000079(n))%A006339(n)`
-/

namespace A390816.P2525240196336345610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075680 (A000079 n).toNat) (A006339 n)

end

end A390816.P2525240196336345610

/-!
# A390817: Number of tripling steps to reach 1 in the 3x+1 (Collatz) problem starting with the n-th Mersenne prime.

The programs for A390817, there is no canonical definition to state claims against.
-/

/-! ## A390817.P1732335450159788195

`A390816(A000043(n+1))`
-/

namespace A390817.P1732335450159788195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390816 (A000043 (n + 1)).toNat

end

end A390817.P1732335450159788195

/-!
# A390821: a(n) is the permanent of the unipotent Sylvester-Kac tridiagonal matrix of order n having main diagonal [0, 2, ..., 2*(n-1)], superdiagonal [1, 2, ..., n-1], and [subdiagonal 1-n, 2-n, ..., -1].

The programs for A390821, there is no canonical definition to state claims against.
-/

/-! ## A390821.P8779580500400098918

`A316825(n)-A072376(A213100(n))`
-/

namespace A390821.P8779580500400098918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 n - A072376 (A213100 n).toNat

end

end A390821.P8779580500400098918

/-! ## A390821.P4305858170619044123

`A087117(n)-A333256(A293993(n))`
-/

namespace A390821.P4305858170619044123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n - A333256 (A293993 n).toNat

end

end A390821.P4305858170619044123

/-!
# A390823: Powers k^m, m > 1, of numbers k that are neither prime powers nor powerful.

The programs for A390823, there is no canonical definition to state claims against.
-/

/-! ## A390823.P2892035194366021248

`∪[A303606(n+1), A386762(n+1)]`
-/

namespace A390823.P2892035194366021248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390823.P2892035194366021248

/-! ## A390823.P7958904207127843872

`∩[A131605(n+1), A186129(n+1)]`
-/

namespace A390823.P7958904207127843872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390823.P7958904207127843872

/-! ## A390823.P9912834772302693224

`A355820(A029661(n))+A131605(n+2)`
-/

namespace A390823.P9912834772302693224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355820 (A029661 n).toNat + A131605 (n + 2)

end

end A390823.P9912834772302693224

/-! ## A390823.P8644378686017643030

`A131605(n+2)+A053186(A016754(n+4))`
-/

namespace A390823.P8644378686017643030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2) + A053186 (A016754 (n + 4)).toNat

end

end A390823.P8644378686017643030

/-! ## A390823.P7442466844910788736

`A131605(n+2)+A036987(A378563(n+1))`
-/

namespace A390823.P7442466844910788736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 2) + A036987 (A378563 (n + 1)).toNat

end

end A390823.P7442466844910788736

/-!
# A390824: a(n) = Sum_{k=0..n} binomial(n+k+2,n-k) * Fibonacci(k+1).

The programs for A390824, the canonical program `A390824.P6579202378889722452` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390824 has offset 0).

The definition of A390824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390824.P6579202378889722452

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=42`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390824

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P6579202378889722452.Spec : Prop :=
  ∀ n, P6579202378889722452.a n = A390824 n

theorem P6579202378889722452.correct : P6579202378889722452.Spec := by
  intro n
  simp only [A390824]

end A390824

/-! ## A390824.P16051793394318301272

`∑[A389933(n)]`
-/

namespace A390824.P16051793394318301272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390824.P16051793394318301272

namespace A390824

/-- `∑[A389933(n)]` -/
def P16051793394318301272.Spec : Prop :=
  ∀ n, P16051793394318301272.a n = A390824 n

end A390824

/-! ## A390824.P13039462626060128819

`Δ[A104630(n)]`
-/

namespace A390824.P13039462626060128819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390824.P13039462626060128819

namespace A390824

/-- `Δ[A104630(n)]` -/
def P13039462626060128819.Spec : Prop :=
  ∀ n, P13039462626060128819.a n = A390824 n

end A390824

/-! ## A390824.P15582226644299792465

`∑[∑[A389699(n)]]`
-/

namespace A390824.P15582226644299792465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389699 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390824.P15582226644299792465

namespace A390824

/-- `∑[∑[A389699(n)]]` -/
def P15582226644299792465.Spec : Prop :=
  ∀ n, P15582226644299792465.a n = A390824 n

end A390824

/-! ## A390824.P16430858178166803107

`A104630(n+1)-A104630(n)`
-/

namespace A390824.P16430858178166803107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104630 (n + 1) - A104630 n

end

end A390824.P16430858178166803107

namespace A390824

/-- `A104630(n+1)-A104630(n)` -/
def P16430858178166803107.Spec : Prop :=
  ∀ n, P16430858178166803107.a n = A390824 n

end A390824

/-! ## A390824.P1753376676156215474

`A289780(n+1)-(A389699(n+1)+A289780(n))`
-/

namespace A390824.P1753376676156215474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289780 (n + 1) - (A389699 (n + 1) + A289780 n)

end

end A390824.P1753376676156215474

namespace A390824

/-- `A289780(n+1)-(A389699(n+1)+A289780(n))` -/
def P1753376676156215474.Spec : Prop :=
  ∀ n, P1753376676156215474.a n = A390824 n

end A390824

/-!
# A390825: a(n) = Sum_{k=0..n} binomial(n+2*k,n-k) * Fibonacci(k+1).

The programs for A390825, there is no canonical definition to state claims against.
-/

/-! ## A390825.P7828118778084331045

`A390826(n+1)-(A390826(n)+A289797(n))`
-/

namespace A390825.P7828118778084331045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390826 (n + 1) - (A390826 n + A289797 n)

end

end A390825.P7828118778084331045

/-! ## A390825.P4654758803709577666

`A073678(A150369(n))`
-/

namespace A390825.P4654758803709577666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073678 (A150369 n).toNat

end

end A390825.P4654758803709577666

/-!
# A390826: a(n) = Sum_{k=0..n} binomial(n+2*k+1,n-k) * Fibonacci(k+1).

The programs for A390826, there is no canonical definition to state claims against.
-/

/-! ## A390826.P2566015170578212765

`∑[A390825(n)]`
-/

namespace A390826.P2566015170578212765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390826.P2566015170578212765

/-! ## A390826.P4740466077852953380

`A390827(n+1)-(A390827(n)+A390825(n+1))`
-/

namespace A390826.P4740466077852953380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390827 (n + 1) - (A390827 n + A390825 (n + 1))

end

end A390826.P4740466077852953380

/-!
# A390827: a(n) = Sum_{k=0..n} binomial(n+2*k+2,n-k) * Fibonacci(k+1).

The programs for A390827, there is no canonical definition to state claims against.
-/

/-! ## A390827.P6915144021779119559

`∑[A390826(n)]`
-/

namespace A390827.P6915144021779119559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390827.P6915144021779119559

/-! ## A390827.P12450184260934410208

`∑[∑[A390825(n)]]`
-/

namespace A390827.P12450184260934410208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390825 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390827.P12450184260934410208

/-! ## A390827.P6034425189622967613

`A390826(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A390827.P6034425189622967613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390826 n + a (A000027 (n + 1) - 2).toNat

end

end A390827.P6034425189622967613

/-!
# A390828: a(n) = Sum_{k=0..n} binomial(n+2*k+5,n-k) * Fibonacci(k+1).

The programs for A390828, there is no canonical definition to state claims against.
-/

/-! ## A390828.P2309487144522992746

`∑[∑[∑[A390827(n)]]]`
-/

namespace A390828.P2309487144522992746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390827 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390828.P2309487144522992746

/-! ## A390828.P1780630894465177031

`A289797(n+1)-A390827(n+1)`
-/

namespace A390828.P1780630894465177031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289797 (n + 1) - A390827 (n + 1)

end

end A390828.P1780630894465177031

/-!
# A390830: a(n) = Sum_{k=0..floor(n/4)} 2^k * 3^(n-3*k) * binomial(n-2*k,k) * binomial(n-3*k,k).

The programs for A390830, there is no canonical definition to state claims against.
-/

/-! ## A390830.P3995480109761113934

`A003051(4^n)`
-/

namespace A390830.P3995480109761113934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (4 ^ n)

end

end A390830.P3995480109761113934

/-! ## A390830.P11536196527821189439

`∑[A003050(4^n)]`
-/

namespace A390830.P11536196527821189439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003050 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390830.P11536196527821189439

/-! ## A390830.P14660871328814340458

`∑[A007897(4^n)]`
-/

namespace A390830.P14660871328814340458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007897 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390830.P14660871328814340458

/-!
# A390833: Array read by antidiagonals: A(k, n) is the number of undirected Hamiltonian paths on the k X n knight graph.

The programs for A390833, there is no canonical definition to state claims against.
-/

/-! ## A390833.P13291161325119655415

`A028614(A144493(n))`
-/

namespace A390833.P13291161325119655415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028614 (A144493 n).toNat

end

end A390833.P13291161325119655415

/-! ## A390833.P7548412443135864264

`A028714(A157147(n))`
-/

namespace A390833.P7548412443135864264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028714 (A157147 n).toNat

end

end A390833.P7548412443135864264

/-! ## A390833.P1701606274534419799

`A028661(A174119(n))`
-/

namespace A390833.P1701606274534419799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028661 (A174119 n).toNat

end

end A390833.P1701606274534419799

/-! ## A390833.P13959125368731278749

`A055028(A154233(n))`
-/

namespace A390833.P13959125368731278749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055028 (A154233 n).toNat

end

end A390833.P13959125368731278749

/-! ## A390833.P825325746698843140

`A070208(A184173(n))`
-/

namespace A390833.P825325746698843140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070208 (A184173 n).toNat

end

end A390833.P825325746698843140

/-!
# A390839: a(n) = Product_{k=1..n} (prime(k) + 1)/A001223(k), where A001223 lists the prime gaps, rounded to the nearest integer if necessary.

The programs for A390839, there is no canonical definition to state claims against.
-/

/-! ## A390839.P3649092029087749602

`A317623(A057766(n+2))`
-/

namespace A390839.P3649092029087749602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (A057766 (n + 2)).toNat

end

end A390839.P3649092029087749602

/-! ## A390839.P8199570476486190681

`record[A145366(∑[n+1])]`
-/

namespace A390839.P8199570476486190681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145366 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390839.P8199570476486190681

/-!
# A390841: 2-valuation of Product_{k=1..n} (prime(k) + 1) / (prime(k+1) - prime(k)).

The programs for A390841, there is no canonical definition to state claims against.
-/

/-! ## A390841.P9829303257829131370

`val(A390839(n), 2)`
-/

namespace A390841.P9829303257829131370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A390839 n).toNat 2

end

end A390841.P9829303257829131370

/-! ## A390841.P8238222491186377246

`log2(gcd(A363285(n+3), A390839(n)))`
-/

namespace A390841.P8238222491186377246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A363285 (n + 3)) (A390839 n) : ℝ)

end

end A390841.P8238222491186377246

/-!
# A390842: 3-valuation of Product_{k=1..n} (prime(k) + 1) / (prime(k+1) - prime(k)).

The programs for A390842, there is no canonical definition to state claims against.
-/

/-! ## A390842.P3057198036392543211

`val(A390839(n), 3)`
-/

namespace A390842.P3057198036392543211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A390839 n).toNat 3

end

end A390842.P3057198036392543211

/-!
# A390850: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k-1,n-k) * Fibonacci(k+1).

The programs for A390850, the canonical program `A390850.P6831772031228693775` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390850 has offset 0).

The definition of A390850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390850.P6831772031228693775

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390850

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P6831772031228693775.Spec : Prop :=
  ∀ n, P6831772031228693775.a n = A390850 n

theorem P6831772031228693775.correct : P6831772031228693775.Spec := by
  intro n
  simp only [A390850]

end A390850

/-! ## A390850.P14530440897753608477

`Δ[A390851(abs(1-n))]`
-/

namespace A390850.P14530440897753608477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390851 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390850.P14530440897753608477

namespace A390850

/-- `Δ[A390851(abs(1-n))]` -/
def P14530440897753608477.Spec : Prop :=
  ∀ n, P14530440897753608477.a n = A390850 n

end A390850

/-!
# A390851: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k,n-k) * Fibonacci(k+1).

The programs for A390851, the canonical program `A390851.P11490575218915877126` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390851 has offset 0).

The definition of A390851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390851.P11490575218915877126

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390851

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P11490575218915877126.Spec : Prop :=
  ∀ n, P11490575218915877126.a n = A390851 n

theorem P11490575218915877126.correct : P11490575218915877126.Spec := by
  intro n
  simp only [A390851]

end A390851

/-! ## A390851.P3884253396669710563

`∑[A390850(n)]`
-/

namespace A390851.P3884253396669710563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390851.P3884253396669710563

namespace A390851

/-- `∑[A390850(n)]` -/
def P3884253396669710563.Spec : Prop :=
  ∀ n, P3884253396669710563.a n = A390851 n

end A390851

/-! ## A390851.P11755353806398569177

`A390853(n)-A390850(n+2)`
-/

namespace A390851.P11755353806398569177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390853 n - A390850 (n + 2)

end

end A390851.P11755353806398569177

namespace A390851

/-- `A390853(n)-A390850(n+2)` -/
def P11755353806398569177.Spec : Prop :=
  ∀ n, P11755353806398569177.a n = A390851 n

end A390851

/-! ## A390851.P154602963489901790

`A390852(n+1)-(A390852(n)+A390850(n+1))`
-/

namespace A390851.P154602963489901790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390852 (n + 1) - (A390852 n + A390850 (n + 1))

end

end A390851.P154602963489901790

namespace A390851

/-- `A390852(n+1)-(A390852(n)+A390850(n+1))` -/
def P154602963489901790.Spec : Prop :=
  ∀ n, P154602963489901790.a n = A390851 n

end A390851

/-! ## A390851.P8718534752814694232

`A390853(n+1)-A390859(n)`
-/

namespace A390851.P8718534752814694232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390853 (n + 1) - A390859 n

end

end A390851.P8718534752814694232

namespace A390851

/-- `A390853(n+1)-A390859(n)` -/
def P8718534752814694232.Spec : Prop :=
  ∀ n, P8718534752814694232.a n = A390851 n

end A390851

/-! ## A390851.P9727827126931540366

`A390859(n+1)-2*A390859(n)`
-/

namespace A390851.P9727827126931540366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390859 (n + 1) - 2 * A390859 n

end

end A390851.P9727827126931540366

namespace A390851

/-- `A390859(n+1)-2*A390859(n)` -/
def P9727827126931540366.Spec : Prop :=
  ∀ n, P9727827126931540366.a n = A390851 n

end A390851

/-!
# A390852: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+1,n-k) * Fibonacci(k+1).

The programs for A390852, the canonical program `A390852.P15029824279990138756` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390852 has offset 0).

The definition of A390852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390852.P15029824279990138756

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390852

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P15029824279990138756.Spec : Prop :=
  ∀ n, P15029824279990138756.a n = A390852 n

theorem P15029824279990138756.correct : P15029824279990138756.Spec := by
  intro n
  simp only [A390852]

end A390852

/-! ## A390852.P12819684841605407037

`∑[A390851(n)]`
-/

namespace A390852.P12819684841605407037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390852.P12819684841605407037

namespace A390852

/-- `∑[A390851(n)]` -/
def P12819684841605407037.Spec : Prop :=
  ∀ n, P12819684841605407037.a n = A390852 n

end A390852

/-! ## A390852.P17554694954834380022

`∑[∑[A390850(n)]]`
-/

namespace A390852.P17554694954834380022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390850 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390852.P17554694954834380022

namespace A390852

/-- `∑[∑[A390850(n)]]` -/
def P17554694954834380022.Spec : Prop :=
  ∀ n, P17554694954834380022.a n = A390852 n

end A390852

/-! ## A390852.P15850106965194495683

`A390859(n)-A390851(n+2)`
-/

namespace A390852.P15850106965194495683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390859 n - A390851 (n + 2)

end

end A390852.P15850106965194495683

namespace A390852

/-- `A390859(n)-A390851(n+2)` -/
def P15850106965194495683.Spec : Prop :=
  ∀ n, P15850106965194495683.a n = A390852 n

end A390852

/-! ## A390852.P7573306825318196309

`A390853(n+1)-(A390853(n)+A390851(n+1))`
-/

namespace A390852.P7573306825318196309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390853 (n + 1) - (A390853 n + A390851 (n + 1))

end

end A390852.P7573306825318196309

namespace A390852

/-- `A390853(n+1)-(A390853(n)+A390851(n+1))` -/
def P7573306825318196309.Spec : Prop :=
  ∀ n, P7573306825318196309.a n = A390852 n

end A390852

/-!
# A390853: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+2,n-k) * Fibonacci(k+1).

The programs for A390853, the canonical program `A390853.P17703927995086192055` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390853 has offset 0).

The definition of A390853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390853.P17703927995086192055

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390853

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P17703927995086192055.Spec : Prop :=
  ∀ n, P17703927995086192055.a n = A390853 n

theorem P17703927995086192055.correct : P17703927995086192055.Spec := by
  intro n
  simp only [A390853]

end A390853

/-! ## A390853.P542111167076609040

`∑[A390852(n)]`
-/

namespace A390853.P542111167076609040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390853.P542111167076609040

namespace A390853

/-- `∑[A390852(n)]` -/
def P542111167076609040.Spec : Prop :=
  ∀ n, P542111167076609040.a n = A390853 n

end A390853

/-! ## A390853.P17763996652948292239

`∑[∑[A390851(n)]]`
-/

namespace A390853.P17763996652948292239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390851 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390853.P17763996652948292239

namespace A390853

/-- `∑[∑[A390851(n)]]` -/
def P17763996652948292239.Spec : Prop :=
  ∀ n, P17763996652948292239.a n = A390853 n

end A390853

/-! ## A390853.P7278192173016420071

`A390851(n)+A390850(n+2)`
-/

namespace A390853.P7278192173016420071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390851 n + A390850 (n + 2)

end

end A390853.P7278192173016420071

namespace A390853

/-- `A390851(n)+A390850(n+2)` -/
def P7278192173016420071.Spec : Prop :=
  ∀ n, P7278192173016420071.a n = A390853 n

end A390853

/-! ## A390853.P14207276966206557598

`A390851(n)+A390859(n)-A390852(n+1)`
-/

namespace A390853.P14207276966206557598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390851 n + (A390859 n - A390852 (n + 1))

end

end A390853.P14207276966206557598

namespace A390853

/-- `A390851(n)+A390859(n)-A390852(n+1)` -/
def P14207276966206557598.Spec : Prop :=
  ∀ n, P14207276966206557598.a n = A390853 n

end A390853

/-! ## A390853.P13526834294192573116

`A390859(n+1)+A390859(n)-A099444(n+1)`
-/

namespace A390853.P13526834294192573116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390859 (n + 1) + (A390859 n - A099444 (n + 1))

end

end A390853.P13526834294192573116

namespace A390853

/-- `A390859(n+1)+A390859(n)-A099444(n+1)` -/
def P13526834294192573116.Spec : Prop :=
  ∀ n, P13526834294192573116.a n = A390853 n

end A390853

/-! ## A390853.P10474270035456672288

`A390859(n+1)-(A390859(n)+A390852(n+1))`
-/

namespace A390853.P10474270035456672288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390859 (n + 1) - (A390859 n + A390852 (n + 1))

end

end A390853.P10474270035456672288

namespace A390853

/-- `A390859(n+1)-(A390859(n)+A390852(n+1))` -/
def P10474270035456672288.Spec : Prop :=
  ∀ n, P10474270035456672288.a n = A390853 n

end A390853

/-!
# A390854: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k-1,n-k) * Fibonacci(k+1).

The programs for A390854, there is no canonical definition to state claims against.
-/

/-! ## A390854.P17222996091821890359

`Δ[A390855(abs(1-n))]`
-/

namespace A390854.P17222996091821890359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390855 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A390854.P17222996091821890359

/-!
# A390855: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k,n-k) * Fibonacci(k+1).

The programs for A390855, there is no canonical definition to state claims against.
-/

/-! ## A390855.P12463765164781444059

`∑[A390854(n)]`
-/

namespace A390855.P12463765164781444059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390854 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390855.P12463765164781444059

/-! ## A390855.P15239323753668682792

`A390856(n+1)-(A390856(n)+A390854(n+1))`
-/

namespace A390855.P15239323753668682792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390856 (n + 1) - (A390856 n + A390854 (n + 1))

end

end A390855.P15239323753668682792

/-! ## A390855.P9173260088831777143

`A048575(n)-A390858(n)`
-/

namespace A390855.P9173260088831777143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A390858 n

end

end A390855.P9173260088831777143

/-!
# A390856: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+1,n-k) * Fibonacci(k+1).

The programs for A390856, there is no canonical definition to state claims against.
-/

/-! ## A390856.P7442129258504957990

`∑[A390855(n)]`
-/

namespace A390856.P7442129258504957990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390856.P7442129258504957990

/-! ## A390856.P6962140288968006618

`∑[∑[A390854(n)]]`
-/

namespace A390856.P6962140288968006618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390854 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390856.P6962140288968006618

/-! ## A390856.P6934414359271961201

`A390857(n+1)-(A390857(n)+A390855(n+1))`
-/

namespace A390856.P6934414359271961201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390857 (n + 1) - (A390857 n + A390855 (n + 1))

end

end A390856.P6934414359271961201

/-!
# A390857: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+2,n-k) * Fibonacci(k+1).

The programs for A390857, there is no canonical definition to state claims against.
-/

/-! ## A390857.P16864736857526354600

`∑[A390856(n)]`
-/

namespace A390857.P16864736857526354600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390857.P16864736857526354600

/-! ## A390857.P6622047118564174942

`∑[∑[A390855(n)]]`
-/

namespace A390857.P6622047118564174942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390855 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390857.P6622047118564174942

/-! ## A390857.P11370149906823621082

`∑[∑[∑[A390854(n)]]]`
-/

namespace A390857.P11370149906823621082
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390854 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390857.P11370149906823621082

/-!
# A390858: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+5,n-k) * Fibonacci(k+1).

The programs for A390858, there is no canonical definition to state claims against.
-/

/-! ## A390858.P13564630230370693681

`A048575(n)-A390855(n)`
-/

namespace A390858.P13564630230370693681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A390855 n

end

end A390858.P13564630230370693681

/-! ## A390858.P7273307598044169403

`A390857(n+1)+A390854(n+2)`
-/

namespace A390858.P7273307598044169403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390857 (n + 1) + A390854 (n + 2)

end

end A390858.P7273307598044169403

/-!
# A390859: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+3,n-k) * Fibonacci(k+1).

The programs for A390859, the canonical program `A390859.P13761249216073063088` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390859 has offset 0).

The definition of A390859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390859.P13761249216073063088

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390859

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P13761249216073063088.Spec : Prop :=
  ∀ n, P13761249216073063088.a n = A390859 n

theorem P13761249216073063088.correct : P13761249216073063088.Spec := by
  intro n
  simp only [A390859]

end A390859

/-! ## A390859.P8001234939314558113

`∑[A390853(n)]`
-/

namespace A390859.P8001234939314558113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390859.P8001234939314558113

namespace A390859

/-- `∑[A390853(n)]` -/
def P8001234939314558113.Spec : Prop :=
  ∀ n, P8001234939314558113.a n = A390859 n

end A390859

/-! ## A390859.P5714275174261657134

`∑[∑[A390852(n)]]`
-/

namespace A390859.P5714275174261657134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390852 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390859.P5714275174261657134

namespace A390859

/-- `∑[∑[A390852(n)]]` -/
def P5714275174261657134.Spec : Prop :=
  ∀ n, P5714275174261657134.a n = A390859 n

end A390859

/-! ## A390859.P9271534798055749706

`A390853(n+1)-A390851(n)`
-/

namespace A390859.P9271534798055749706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390853 (n + 1) - A390851 n

end

end A390859.P9271534798055749706

namespace A390859

/-- `A390853(n+1)-A390851(n)` -/
def P9271534798055749706.Spec : Prop :=
  ∀ n, P9271534798055749706.a n = A390859 n

end A390859

/-! ## A390859.P11694411806201185190

`A390852(n)+A390851(n+2)`
-/

namespace A390859.P11694411806201185190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390852 n + A390851 (n + 2)

end

end A390859.P11694411806201185190

namespace A390859

/-- `A390852(n)+A390851(n+2)` -/
def P11694411806201185190.Spec : Prop :=
  ∀ n, P11694411806201185190.a n = A390859 n

end A390859

/-! ## A390859.P7297842672433876278

`A390852(n+1)+A390850(n+2)`
-/

namespace A390859.P7297842672433876278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390852 (n + 1) + A390850 (n + 2)

end

end A390859.P7297842672433876278

namespace A390859

/-- `A390852(n+1)+A390850(n+2)` -/
def P7297842672433876278.Spec : Prop :=
  ∀ n, P7297842672433876278.a n = A390859 n

end A390859

/-!
# A390860: a(n) is the minimum number of armies required for an attacker to have a 50% or better chance of beating a defender with n armies in the game Risk.

The programs for A390860, there is no canonical definition to state claims against.
-/

/-! ## A390860.P1307550443191539163

`ceil((n+3)/(4-sqrt(8)))`
-/

namespace A390860.P1307550443191539163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℝ) / (4 - Real.sqrt (8 : ℝ))⌉

end

end A390860.P1307550443191539163

/-! ## A390860.P16798635188930416104

`A182765(n+3)-(n+2)`
-/

namespace A390860.P16798635188930416104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182765 (n + 3) - (n + 2 : ℤ)

end

end A390860.P16798635188930416104

/-! ## A390860.P13318649184637886086

`A080513(A286667(n+2))`
-/

namespace A390860.P13318649184637886086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A286667 (n + 2)).toNat

end

end A390860.P13318649184637886086

/-! ## A390860.P3203957411444607663

`A002265(A001952(n+3))+1`
-/

namespace A390860.P3203957411444607663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001952 (n + 3)).toNat + 1

end

end A390860.P3203957411444607663

/-! ## A390860.P12454334925698114500

`A110656(A286927(n+3)+1)`
-/

namespace A390860.P12454334925698114500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A286927 (n + 3) + 1).toNat

end

end A390860.P12454334925698114500

/-! ## A390860.P2951340252152769783

`A002265(A186221(2*(n+2))+7)`
-/

namespace A390860.P2951340252152769783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A186221 (2 * (n + 2)) + 7).toNat

end

end A390860.P2951340252152769783

/-!
# A390861: Sum of maximum depths over all increasing rooted trees with n nodes.

The programs for A390861, there is no canonical definition to state claims against.
-/

/-! ## A390861.P5263239211840761248

`A351150(n+1)+A333940(A334272(n))`
-/

namespace A390861.P5263239211840761248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351150 (n + 1) + A333940 (A334272 n).toNat

end

end A390861.P5263239211840761248

/-! ## A390861.P11786208507810389396

`A111854(A277175(n)*A391629(n+3))`
-/

namespace A390861.P11786208507810389396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111854 (A277175 n * A391629 (n + 3)).toNat

end

end A390861.P11786208507810389396

/-!
# A390863: The number of integers k from 1 to n such that gcd(n, k) is an infinitary divisor of n.

The programs for A390863, there is no canonical definition to state claims against.
-/

/-! ## A390863.P3753265006905790618

`n+1-A390864(n+1)`
-/

namespace A390863.P3753265006905790618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390864 (n + 1)

end

end A390863.P3753265006905790618

/-! ## A390863.P14618555526098594648

`A390867(A187829(n+1))`
-/

namespace A390863.P14618555526098594648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390867 (A187829 (n + 1)).toNat

end

end A390863.P14618555526098594648

/-! ## A390863.P3264674295589422995

`A390867(n+1)+A390568(floor(2^(n-1)))`
-/

namespace A390863.P3264674295589422995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390867 (n + 1) + A390568 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A390863.P3264674295589422995

/-! ## A390863.P12757966069602267148

`A390867(n+1)+A010059(A011782(n))`
-/

namespace A390863.P12757966069602267148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390867 (n + 1) + A010059 (A011782 n).toNat

end

end A390863.P12757966069602267148

/-! ## A390863.P13615522254350507973

`A295660(A007283(n))*A390867(n+1)`
-/

namespace A390863.P13615522254350507973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295660 (A007283 n).toNat * A390867 (n + 1)

end

end A390863.P13615522254350507973

/-!
# A390864: The number of integers k from 1 to n such that gcd(n, k) is a noninfinitary divisor of n.

The programs for A390864, there is no canonical definition to state claims against.
-/

/-! ## A390864.P12461807123253495241

`n+1-A390863(n+1)`
-/

namespace A390864.P12461807123253495241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390863 (n + 1)

end

end A390864.P12461807123253495241

/-! ## A390864.P9023230595974018399

`n-A023443(A390863(n+1))`
-/

namespace A390864.P9023230595974018399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A390863 (n + 1)).toNat

end

end A390864.P9023230595974018399

/-! ## A390864.P7030297205770627908

`A004736(A000217(n)+1)%A390863(n+1)`
-/

namespace A390864.P7030297205770627908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (A000217 n + 1).toNat) (A390863 (n + 1))

end

end A390864.P7030297205770627908

/-! ## A390864.P4163560910989020331

`A095208(n+1)%A390863(n+1)`
-/

namespace A390864.P4163560910989020331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095208 (n + 1)) (A390863 (n + 1))

end

end A390864.P4163560910989020331

/-! ## A390864.P7667110622206423558

`lcm(A010892(A015904(n+1)), A055654(n+1))`
-/

namespace A390864.P7667110622206423558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010892 (A015904 (n + 1)).toNat) (A055654 (n + 1))

end

end A390864.P7667110622206423558

/-!
# A390865: The number of integers k from 1 to n such that gcd(n, k) is an exponential divisor of n.

The programs for A390865, there is no canonical definition to state claims against.
-/

/-! ## A390865.P13888901795884913008

`n+1-A390866(n+1)`
-/

namespace A390865.P13888901795884913008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390866 (n + 1)

end

end A390865.P13888901795884913008

/-! ## A390865.P13889275060614993822

`n-A023443(A390866(n+1))`
-/

namespace A390865.P13889275060614993822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A390866 (n + 1)).toNat

end

end A390865.P13889275060614993822

/-! ## A390865.P11026411615441767786

`A063787(A005196((n+1)/∏{p}[n+1, #]))`
-/

namespace A390865.P11026411615441767786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A005196 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A390865.P11026411615441767786

/-! ## A390865.P796925153088146036

`A321455(A034386((n+1)/∏{p}[n+1, #])²)`
-/

namespace A390865.P796925153088146036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (A034386 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2).toNat

end

end A390865.P796925153088146036

/-! ## A390865.P11851662910165523090

`A333529(A225199((n+1)/∏{p}[n+1, #]))+1`
-/

namespace A390865.P11851662910165523090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333529 (A225199 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat + 1

end

end A390865.P11851662910165523090

/-!
# A390866: The number of integers k from 1 to n such that gcd(n, k) is a nonexponential divisor of n.

The programs for A390866, there is no canonical definition to state claims against.
-/

/-! ## A390866.P6058805236336983470

`n+1-A390865(n+1)`
-/

namespace A390866.P6058805236336983470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390865 (n + 1)

end

end A390866.P6058805236336983470

/-! ## A390866.P14781925199312195633

`A070321(n+1)-A327020(floor(n/∏{p}[n+1, #]))`
-/

namespace A390866.P14781925199312195633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 1) - A327020 ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋.toNat

end

end A390866.P14781925199312195633

/-! ## A390866.P17151579823277770973

`n-A362423(A001597(A203025(n+1)))`
-/

namespace A390866.P17151579823277770973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A362423 (A001597 (A203025 (n + 1)).toNat).toNat

end

end A390866.P17151579823277770973

/-! ## A390866.P16651136166941939090

`A124755(A131577(n))-A380955(n+1)`
-/

namespace A390866.P16651136166941939090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124755 (A131577 n).toNat - A380955 (n + 1)

end

end A390866.P16651136166941939090

/-! ## A390866.P6459974057182021174

`A240328(A162567(n+1))+A010848(n+1)`
-/

namespace A390866.P6459974057182021174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A162567 (n + 1)).toNat + A010848 (n + 1)

end

end A390866.P6459974057182021174

/-!
# A390867: The number of integers k from 1 to n such that gcd(n, k) is a bi-unitary divisor of n.

The programs for A390867, there is no canonical definition to state claims against.
-/

/-! ## A390867.P14094535409152364448

`n+1-A390868(n+1)`
-/

namespace A390867.P14094535409152364448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390868 (n + 1)

end

end A390867.P14094535409152364448

/-!
# A390868: The number of integers k from 1 to n such that gcd(n, k) is a non-bi-unitary divisor of n.

The programs for A390868, there is no canonical definition to state claims against.
-/

/-! ## A390868.P8486675987782987217

`n+1-A390867(n+1)`
-/

namespace A390868.P8486675987782987217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A390867 (n + 1)

end

end A390868.P8486675987782987217

/-! ## A390868.P2754733239786658075

`A124260(n+1)%A390867(n+1)`
-/

namespace A390868.P2754733239786658075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124260 (n + 1)) (A390867 (n + 1))

end

end A390868.P2754733239786658075

/-! ## A390868.P9929877401450110256

`A060401(n+1)%A390867(n+1)`
-/

namespace A390868.P9929877401450110256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A390867 (n + 1))

end

end A390868.P9929877401450110256

/-! ## A390868.P10383355289458569104

`A095208(n+1)%A390867(n+1)`
-/

namespace A390868.P10383355289458569104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095208 (n + 1)) (A390867 (n + 1))

end

end A390868.P10383355289458569104

/-! ## A390868.P16056266197081628012

`A390864(n+1)%A106161(n+1)`
-/

namespace A390868.P16056266197081628012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390864 (n + 1)) (A106161 (n + 1))

end

end A390868.P16056266197081628012

/-!
# A390871: Numbers k >= 1 such that k^2 - r^2 = 2^m - 1 for some 0 <= m <= k and 0 <= r < k.

The programs for A390871, there is no canonical definition to state claims against.
-/

/-! ## A390871.P14602623560784146591

`∑[A001223(A374545(n))]`
-/

namespace A390871.P14602623560784146591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A374545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390871.P14602623560784146591

/-! ## A390871.P1927083163996093726

`∩[A158023(n+1), A354919(n+1)]`
-/

namespace A390871.P1927083163996093726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390871.P1927083163996093726

/-! ## A390871.P10723976615174648952

`A355911(A311552(n))`
-/

namespace A390871.P10723976615174648952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A311552 n).toNat

end

end A390871.P10723976615174648952

/-! ## A390871.P1429127061614345540

`A355911(A312001(n))`
-/

namespace A390871.P1429127061614345540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A312001 n).toNat

end

end A390871.P1429127061614345540

/-! ## A390871.P17187626908015960143

`A355911(A312389(n))`
-/

namespace A390871.P17187626908015960143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A312389 n).toNat

end

end A390871.P17187626908015960143

/-!
# A390872: a(n) is the number of positive integers k such that tau(k) + phi(k) = n.

The programs for A390872, there is no canonical definition to state claims against.
-/

/-! ## A390872.P14620372951654974349

`A027844(A374431(n))%A038548(3*(n+1))`
-/

namespace A390872.P14620372951654974349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027844 (A374431 n).toNat) (A038548 (3 * (n + 1)))

end

end A390872.P14620372951654974349

/-! ## A390872.P4506490322802992294

`and(A000384(2*n+1), A037828(A199342(n+2)))`
-/

namespace A390872.P4506490322802992294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000384 (2 * n + 1)) (A037828 (A199342 (n + 2)).toNat)

end

end A390872.P4506490322802992294

/-! ## A390872.P13838507278415674496

`A001650(A192165(n+5))%A000120(2*n+1)`
-/

namespace A390872.P13838507278415674496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001650 (A192165 (n + 5)).toNat) (A000120 (2 * n + 1))

end

end A390872.P13838507278415674496

/-! ## A390872.P4305039113551655683

`A376364(A017114(n))`
-/

namespace A390872.P4305039113551655683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376364 (A017114 n).toNat

end

end A390872.P4305039113551655683

/-! ## A390872.P16043496274090425619

`A324587(A000959(n+1))%(∑{e}[n+1, #]+1)`
-/

namespace A390872.P16043496274090425619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324587 (A000959 (n + 1)).toNat) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ)

end

end A390872.P16043496274090425619

/-!
# A390873: Primitive semiperfect numbers (A006036) that are not the product of an odd prime number and a power of 2.

The programs for A390873, there is no canonical definition to state claims against.
-/

/-! ## A390873.P5573526757130462438

`filter[A006036(n+1), A379958(#)]`
-/

namespace A390873.P5573526757130462438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A390873.P5573526757130462438

/-! ## A390873.P1905983169455911520

`∩[A006036(n+1), A289484(n+1)]`
-/

namespace A390873.P1905983169455911520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390873.P1905983169455911520

/-! ## A390873.P4037059508099742965

`∩[A006036(n+1), A320632(n+1)]`
-/

namespace A390873.P4037059508099742965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390873.P4037059508099742965

/-! ## A390873.P3158348853970590266

`∩[A006036(n+1), A376834(n+1)]`
-/

namespace A390873.P3158348853970590266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390873.P3158348853970590266

/-! ## A390873.P3005739047474755757

`∩[A000977(n+1), A006036(n+1)]`
-/

namespace A390873.P3005739047474755757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390873.P3005739047474755757

/-! ## A390873.P5550798657808246445

`∩[A006036(n+1), A035480(n+1)]`
-/

namespace A390873.P5550798657808246445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390873.P5550798657808246445

/-!
# A390874: Molecular topological index of the n-necklace graph.

The programs for A390874, the canonical program `A390874.P4517966652782976358` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390874 has offset 1).

The definition of A390874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390874.P4517966652782976358

`3*(n+1)*(13+(-1)^(n+1)+12*(n+1)²)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A390874

/-- `3*(n+1)*(13+(-1)^(n+1)+12*(n+1)²)` -/
def P4517966652782976358.Spec : Prop :=
  ∀ n, P4517966652782976358.a n = A390874 (n + 1)

theorem P4517966652782976358.correct : P4517966652782976358.Spec := by
  intro n
  simp only [A390874, Nat.add_sub_cancel]

end A390874

/-!
# A390877: Triangle read by rows: T(n,k) = A237271(k)*A000041(n-k), 1 <= k <= n.

The programs for A390877, there is no canonical definition to state claims against.
-/

/-! ## A390877.P598176850577073388

`gcd(A007053(A213704(n)), A155002(n+1))`
-/

namespace A390877.P598176850577073388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007053 (A213704 n).toNat) (A155002 (n + 1))

end

end A390877.P598176850577073388

/-! ## A390877.P13419140924095923911

`A007001(A385788(n+1)+A018818(n+1))`
-/

namespace A390877.P13419140924095923911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007001 (A385788 (n + 1) + A018818 (n + 1)).toNat

end

end A390877.P13419140924095923911

/-! ## A390877.P16277075763253507707

`A346307(A241828(n+1))`
-/

namespace A390877.P16277075763253507707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346307 (A241828 (n + 1)).toNat

end

end A390877.P16277075763253507707

/-! ## A390877.P9150711850341068292

`A280710(A048739(n))+A131333(n+1)`
-/

namespace A390877.P9150711850341068292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (A048739 n).toNat + A131333 (n + 1)

end

end A390877.P9150711850341068292

/-! ## A390877.P8459461407767607442

`A367404(n+2)+A163533(A287021(n))`
-/

namespace A390877.P8459461407767607442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367404 (n + 2) + A163533 (A287021 n).toNat

end

end A390877.P8459461407767607442

/-!
# A390878: Convolution of A000041 and A237271.

The programs for A390878, there is no canonical definition to state claims against.
-/

/-! ## A390878.P10354376492288628847

`A103128(A110295(n+1))-A000045(n)`
-/

namespace A390878.P10354376492288628847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A110295 (n + 1)).toNat - A000045 n

end

end A390878.P10354376492288628847

/-! ## A390878.P3112018932788596173

`A171238(n+1)-A324868(A001681(n))`
-/

namespace A390878.P3112018932788596173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171238 (n + 1) - A324868 (A001681 n).toNat

end

end A390878.P3112018932788596173

/-! ## A390878.P8609531956072422154

`A182276(n+1)+A135663(A000032(2*(n+1))+4)`
-/

namespace A390878.P8609531956072422154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + A135663 (A000032 (2 * (n + 1)) + 4).toNat

end

end A390878.P8609531956072422154

/-! ## A390878.P10374359767873247816

`A182276(n+1)+A033810(A000045(2*n+3))-A007095(n+1)`
-/

namespace A390878.P10374359767873247816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182276 (n + 1) + (A033810 (A000045 (2 * n + 3)).toNat - A007095 (n + 1))

end

end A390878.P10374359767873247816

/-!
# A390879: Triangle read by rows: T(n,k) = A237271(k)*(n-k+1), 1 <= k <= n.

The programs for A390879, there is no canonical definition to state claims against.
-/

/-! ## A390879.P15911615246893381901

`A375325(A182830(n+1))`
-/

namespace A390879.P15911615246893381901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375325 (A182830 (n + 1)).toNat

end

end A390879.P15911615246893381901

/-! ## A390879.P7893190820086892522

`A364259(A182946(n+1))`
-/

namespace A390879.P7893190820086892522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364259 (A182946 (n + 1)).toNat

end

end A390879.P7893190820086892522

/-! ## A390879.P13801896213450614557

`A303827(A383414(n))`
-/

namespace A390879.P13801896213450614557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (A383414 n).toNat

end

end A390879.P13801896213450614557

/-! ## A390879.P3415837605837237627

`A035176(A191702(n+1))`
-/

namespace A390879.P3415837605837237627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035176 (A191702 (n + 1)).toNat

end

end A390879.P3415837605837237627

/-! ## A390879.P14851005480586637272

`A367581(A246279(n+1))`
-/

namespace A390879.P14851005480586637272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367581 (A246279 (n + 1)).toNat

end

end A390879.P14851005480586637272

/-!
# A390880: Convolution of A000027 and A237271.

The programs for A390880, there is no canonical definition to state claims against.
-/

/-! ## A390880.P7051217685663705902

`∑[A237590(n+1)]`
-/

namespace A390880.P7051217685663705902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P7051217685663705902

/-! ## A390880.P16503368213915344052

`∑[∑[A237271(n+1)]]`
-/

namespace A390880.P16503368213915344052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P16503368213915344052

/-! ## A390880.P18171736517901044712

`A000196(A042984(n)+A014166(n))`
-/

namespace A390880.P18171736517901044712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A042984 n + A014166 n).toNat

end

end A390880.P18171736517901044712

/-! ## A390880.P8929744482279168077

`∑[∑[A329313(lcm(6, (n+1)²)/6)]]`
-/

namespace A390880.P8929744482279168077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 2) : ℚ) / 6)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P8929744482279168077

/-! ## A390880.P3433534566069287712

`A390502(A148323(n+1))`
-/

namespace A390880.P3433534566069287712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390502 (A148323 (n + 1)).toNat

end

end A390880.P3433534566069287712

/-!
# A390881: a(n) = gcd(A018804(n), A000203(n)).

The programs for A390881, the canonical program `A390881.P5264832364345799499` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390881 has offset 1).

The definition of A390881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390881.P5264832364345799499

`gcd(A000203(n+1), A018804(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390881

/-- `gcd(A000203(n+1), A018804(n+1))` -/
def P5264832364345799499.Spec : Prop :=
  ∀ n, (P5264832364345799499.a n : ℤ) = A390881 (n + 1)

theorem P5264832364345799499.correct : P5264832364345799499.Spec := by
  intro n
  simp only [A390881, Nat.add_sub_cancel]

end A390881

/-! ## A390881.P11889761739534636518

`gcd(A097012(n+1), A396514(n+1))`
-/

namespace A390881.P11889761739534636518
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097012 (n + 1)) (A396514 (n + 1))

end

end A390881.P11889761739534636518

namespace A390881

/-- `gcd(A097012(n+1), A396514(n+1))` -/
def P11889761739534636518.Spec : Prop :=
  ∀ n, (P11889761739534636518.a n : ℤ) = A390881 (n + 1)

end A390881

/-!
# A390884: a(n) is the permanent of the n X n matrix M(n) whose generic entry M(i, j, n) is F(2*n - (i + j)) with 1 <= i,j <= n and F = A000045.

The programs for A390884, there is no canonical definition to state claims against.
-/

/-! ## A390884.P6358846526899103695

`A216716(2*a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=8`
-/

namespace A390884.P6358846526899103695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 8] fun n a =>
  A216716 (2 * a (n - 1)).toNat

end

end A390884.P6358846526899103695

/-!
# A390885: Number of free polyaboloes without any two triangles sharing a hypotenuse.

The programs for A390885, there is no canonical definition to state claims against.
-/

/-! ## A390885.P2942208095886417712

`A391191(A025699(n))`
-/

namespace A390885.P2942208095886417712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391191 (A025699 n).toNat

end

end A390885.P2942208095886417712

/-! ## A390885.P5752893949919097542

`A391191(A087811(n+1))`
-/

namespace A390885.P5752893949919097542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391191 (A087811 (n + 1)).toNat

end

end A390885.P5752893949919097542

/-! ## A390885.P17399225681345949543

`A391191(A371972(n+1))`
-/

namespace A390885.P17399225681345949543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391191 (A371972 (n + 1)).toNat

end

end A390885.P17399225681345949543

/-! ## A390885.P4831913286184339664

`A391191(A076921(n+2))`
-/

namespace A390885.P4831913286184339664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391191 (A076921 (n + 2)).toNat

end

end A390885.P4831913286184339664

/-! ## A390885.P14800457255574285757

`A391191(∑[A004526(n)+1])`
-/

namespace A390885.P14800457255574285757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390885.P14800457255574285757

/-!
# A390887: a(n) = Sum_{k=0..n} 3^k * 2^(n-k) * Stirling2(n,k).

The programs for A390887, there is no canonical definition to state claims against.
-/

/-! ## A390887.P8423133582426535147

`A123722(A150028(n))`
-/

namespace A390887.P8423133582426535147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123722 (A150028 n).toNat

end

end A390887.P8423133582426535147

/-!
# A390888: a(n) = Sum_{k=0..n} 2^k * 3^(n-k) * Stirling2(n,k).

The programs for A390888, there is no canonical definition to state claims against.
-/

/-! ## A390888.P3862344244543795158

`∏{p}[Δ[A002050(n)]², #]`
-/

namespace A390888.P3862344244543795158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002050 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A390888.P3862344244543795158

/-!
# A390889: a(n) = Sum_{k=0..n} 2^k * 5^(n-k) * Stirling2(n,k).

The programs for A390889, there is no canonical definition to state claims against.
-/

/-! ## A390889.P3768433641446047500

`A336627(A378338(3*(n+1)))/2`
-/

namespace A390889.P3768433641446047500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336627 (A378338 (3 * (n + 1))).toNat : ℚ) / 2

end

end A390889.P3768433641446047500

/-!
# A390890: a(n) = Sum_{k>=0} (1/2)^(k+1) * Stirling2(n+k,k).

The programs for A390890, there is no canonical definition to state claims against.
-/

/-! ## A390890.P12634979474416428196

`2^n*A000311(n+1)`
-/

namespace A390890.P12634979474416428196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000311 (n + 1)

end

end A390890.P12634979474416428196

/-! ## A390890.P3402824397252509536

`A225170(n+1)/2`
-/

namespace A390890.P3402824397252509536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225170 (n + 1) : ℚ) / 2

end

end A390890.P3402824397252509536

/-! ## A390890.P4538010232002158444

`ceil(A005172(n+1)/2)`
-/

namespace A390890.P4538010232002158444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005172 (n + 1) : ℚ) / 2⌉

end

end A390890.P4538010232002158444

/-! ## A390890.P10038659708270875029

`record[A225171(n+1)/2]`
-/

namespace A390890.P10038659708270875029
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225171 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390890.P10038659708270875029

/-! ## A390890.P3719708815977903878

`Δ[floor(2^(n-1))]*A006351(n+1)`
-/

namespace A390890.P3719708815977903878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006351 (n + 1)

end

end A390890.P3719708815977903878

/-! ## A390890.P12109390964343869123

`A005172(n+1)/(1-A057428(n))`
-/

namespace A390890.P12109390964343869123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005172 (n + 1) : ℚ) / (1 - A057428 n : ℚ)

end

end A390890.P12109390964343869123

/-!
# A390891: a(n) = (1/3) * Sum_{k>=0} (2/3)^k * Stirling2(n+k,k).

The programs for A390891, there is no canonical definition to state claims against.
-/

/-! ## A390891.P1775531829317496617

`3^n*A201465(n+1)`
-/

namespace A390891.P1775531829317496617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A201465 (n + 1)

end

end A390891.P1775531829317496617

/-!
# A390892: a(n) = (1/4) * Sum_{k>=0} (3/4)^k * Stirling2(n+k,k).

The programs for A390892, there is no canonical definition to state claims against.
-/

/-! ## A390892.P4012681274619183588

`4^n*A201466(n+1)`
-/

namespace A390892.P4012681274619183588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A201466 (n + 1)

end

end A390892.P4012681274619183588

/-!
# A390894: Triangle read by rows: T(n,k) is the number of sets of noncrossing paths of size k that cover n nodes arranged in a circle with one node paths allowed, 0 <= k <= n.

The programs for A390894, there is no canonical definition to state claims against.
-/

/-! ## A390894.P5500969447231556385

`A003987(A084938(n)^3)`
-/

namespace A390894.P5500969447231556385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A084938 n ^ 3).toNat

end

end A390894.P5500969447231556385

/-! ## A390894.P7221140872207943974

`A097576(A360205(n))`
-/

namespace A390894.P7221140872207943974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 (A360205 n).toNat

end

end A390894.P7221140872207943974

/-! ## A390894.P9804479463473257873

`A341883(A322222(n))`
-/

namespace A390894.P9804479463473257873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341883 (A322222 n).toNat

end

end A390894.P9804479463473257873

/-! ## A390894.P2202694812916661371

`A372592(A394530(n))`
-/

namespace A390894.P2202694812916661371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372592 (A394530 n).toNat

end

end A390894.P2202694812916661371

/-! ## A390894.P13769496714942339517

`A107457(A256549(n+1))`
-/

namespace A390894.P13769496714942339517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107457 ((A256549 (n + 1)).toNat + 18)

end

end A390894.P13769496714942339517

/-!
# A390895: Expansion of e.g.f.: exp(x*(exp(2*x) + 3)/4).

The programs for A390895, there is no canonical definition to state claims against.
-/

/-! ## A390895.P15164165590912808565

`A001462(A006531(n))`
-/

namespace A390895.P15164165590912808565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A006531 n).toNat

end

end A390895.P15164165590912808565

/-! ## A390895.P1248377029696399810

`A241953(A097893(n))`
-/

namespace A390895.P1248377029696399810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241953 (A097893 n).toNat

end

end A390895.P1248377029696399810

/-!
# A390898: a(n) = Sum_{k>=0} (1/2)^(k+1) * |Stirling1(n+k,k)|.

The programs for A390898, there is no canonical definition to state claims against.
-/

/-! ## A390898.P306225332022771960

`2^n*A032188(n+1)`
-/

namespace A390898.P306225332022771960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A032188 (n + 1)

end

end A390898.P306225332022771960

/-! ## A390898.P15330562923683734881

`lcm(A000079(n), A032188(n+1))`
-/

namespace A390898.P15330562923683734881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A032188 (n + 1))

end

end A390898.P15330562923683734881

/-! ## A390898.P6835950665793880322

`A032188(n+1)*A156552(A000040(n+1))`
-/

namespace A390898.P6835950665793880322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032188 (n + 1) * A156552 (A000040 (n + 1)).toNat

end

end A390898.P6835950665793880322

/-! ## A390898.P12501469056948298246

`A000010(A000079(n))*A112487(n)`
-/

namespace A390898.P12501469056948298246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat * A112487 n

end

end A390898.P12501469056948298246

/-! ## A390898.P9885027322074982823

`A065361(A133494(n))*A112487(n)`
-/

namespace A390898.P9885027322074982823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A133494 n).toNat * A112487 n

end

end A390898.P9885027322074982823

/-!
# A390899: a(n) = (1/3) * Sum_{k>=0} (2/3)^k * |Stirling1(n+k,k)|.

The programs for A390899, there is no canonical definition to state claims against.
-/

/-! ## A390899.P17201594533666823803

`(3/2)^n*A390901(n+1)`
-/

namespace A390899.P17201594533666823803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 : ℚ) / 2) ^ n * (A390901 (n + 1) : ℚ)

end

end A390899.P17201594533666823803

