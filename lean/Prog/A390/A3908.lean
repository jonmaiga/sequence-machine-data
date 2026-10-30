import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
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
import SequenceMachineLib.Triangle

/-!
# A390800: The sum of the integers k from 1 to n such that gcd(n, k) is a power of a prime (A000961).

The programs for A390800, the canonical program `A390800.P11464708806357456531` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390800 has offset 1).

The definition of A390800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010055, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390800.P11464708806357456531

`(n+1+A010055(n+1))*A131233(n+1)/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A390800

/-- `(n+1+A010055(n+1))*A131233(n+1)/2` -/
def P11464708806357456531.Spec : Prop :=
  ∀ n, P11464708806357456531.a n = (A390800 (n + 1) : ℚ)

end A390800

/-! ## A390800.P3610026933505389975

`∑{#}[n, A010055(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390800.P3610026933505389975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010055 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390800.P3610026933505389975

namespace A390800

/-- `∑{#}[n, A010055(gcd(#+1, n+1))*(#+1)]` -/
def P3610026933505389975.Spec : Prop :=
  ∀ n, P3610026933505389975.a n = A390800 (n + 1)

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

/-! ## A390800.P166344252453897179

`A114999(A133263(n)-A001221(n+1))`
-/

namespace A390800.P166344252453897179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114999 (A133263 n - A001221 (n + 1)).toNat

end

end A390800.P166344252453897179

namespace A390800

/-- `A114999(A133263(n)-A001221(n+1))` -/
def P166344252453897179.Spec : Prop :=
  ∀ n, P166344252453897179.a n = A390800 (n + 1)

end A390800

/-!
# A390801: The sum of the integers k from 1 to n such that gcd(n, k) is prime.

The programs for A390801, the canonical program `A390801.P2099821867161505700` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390801 has offset 1).

The definition of A390801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390801.P2099821867161505700

`(A010051(n+1)+1)*(n+1)*A117494(n+1)/2`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A390801

/-- `(A010051(n+1)+1)*(n+1)*A117494(n+1)/2` -/
def P2099821867161505700.Spec : Prop :=
  ∀ n, P2099821867161505700.a n = (A390801 (n + 1) : ℚ)

end A390801

/-! ## A390801.P9531263004804784906

`∑{#}[n, A010051(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390801.P9531263004804784906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A010051 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390801.P9531263004804784906

namespace A390801

/-- `∑{#}[n, A010051(gcd(#+1, n+1))*(#+1)]` -/
def P9531263004804784906.Spec : Prop :=
  ∀ n, P9531263004804784906.a n = A390801 (n + 1)

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

The programs for A390802, the canonical program `A390802.P9720661957360167452` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390802 has offset 1).

The definition of A390802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390802.P12152502568265620364

`ogf((1+x+3x^2+x^3)/(1-3x^2+3x^4-x^6))`
-/

namespace A390802.P12152502568265620364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A390802.P12152502568265620364

namespace A390802

/-- `ogf((1+x+3x^2+x^3)/(1-3x^2+3x^4-x^6))` -/
def P12152502568265620364.Spec : Prop :=
  ∀ n, P12152502568265620364.a n = A390802 (n + 1)

end A390802

/-! ## A390802.P9720661957360167452

`(n+1)*(2-2*(-1)^(n+1)+3*(n+1)-(-1)^(n+1)*(n+1))/8`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390802

/-- `(n+1)*(2-2*(-1)^(n+1)+3*(n+1)-(-1)^(n+1)*(n+1))/8` -/
def P9720661957360167452.Spec : Prop :=
  ∀ n, P9720661957360167452.a n = (A390802 (n + 1) : ℚ)

end A390802

/-! ## A390802.P16835509975815276576

`∑{#}[n, A000035(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390802.P16835509975815276576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000035 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390802.P16835509975815276576

namespace A390802

/-- `∑{#}[n, A000035(gcd(#+1, n+1))*(#+1)]` -/
def P16835509975815276576.Spec : Prop :=
  ∀ n, P16835509975815276576.a n = A390802 (n + 1)

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

/-! ## A390802.P1371516859469278515

`A168059(n+1)-A056136(n+1)`
-/

namespace A390802.P1371516859469278515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168059 (n + 1) - A056136 (n + 1)

end

end A390802.P1371516859469278515

namespace A390802

/-- `A168059(n+1)-A056136(n+1)` -/
def P1371516859469278515.Spec : Prop :=
  ∀ n, P1371516859469278515.a n = A390802 (n + 1)

end A390802

/-!
# A390803: The sum of the integers k from 1 to n such that gcd(n, k) is a 5-rough number (A007310).

The programs for A390803, the canonical program `A390803.P15310609080008210001` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390803 has offset 1).

The definition of A390803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390803.P15310609080008210001

`(n+1+A354354(n+1))*A384042(n+1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390803

/-- `(n+1+A354354(n+1))*A384042(n+1)/2` -/
def P15310609080008210001.Spec : Prop :=
  ∀ n, P15310609080008210001.a n = (A390803 (n + 1) : ℚ)

end A390803

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

namespace A390803

/-- `∑{d}[n+1, A186099(#)*A331388((n+1)/#)]` -/
def P5098220673714228596.Spec : Prop :=
  ∀ n, P5098220673714228596.a n = A390803 (n + 1)

end A390803

/-!
# A390804: The sum of the integers k from 1 to n such that gcd(n, k) is a power of 2.

The programs for A390804, the canonical program `A390804.P18010543064015329428` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390804 has offset 1).

The definition of A390804 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390804.P18010543064015329428

`(A062570(n+1)+A209229(n+1))*(n+1)/2`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A390804

/-- `(A062570(n+1)+A209229(n+1))*(n+1)/2` -/
def P18010543064015329428.Spec : Prop :=
  ∀ n, P18010543064015329428.a n = (A390804 (n + 1) : ℚ)

end A390804

/-! ## A390804.P815978578521398412

`∑{#}[n, A209229(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390804.P815978578521398412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A209229 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390804.P815978578521398412

namespace A390804

/-- `∑{#}[n, A209229(gcd(#+1, n+1))*(#+1)]` -/
def P815978578521398412.Spec : Prop :=
  ∀ n, P815978578521398412.a n = A390804 (n + 1)

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

The programs for A390805, the canonical program `A390805.P3287936561210564327` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390805 has offset 1).

The definition of A390805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390805.P3287936561210564327

`(n+1+A065333(n+1))*A372671(n+1)/2`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A390805

/-- `(n+1+A065333(n+1))*A372671(n+1)/2` -/
def P3287936561210564327.Spec : Prop :=
  ∀ n, P3287936561210564327.a n = (A390805 (n + 1) : ℚ)

end A390805

/-! ## A390805.P17646197323007640117

`(n+1+A065333(n+1))*A000010(6*(n+1))/4`
-/

namespace A390805.P17646197323007640117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1 : ℤ) + A065333 (n + 1)) * A000010 (6 * (n + 1)) : ℚ) / 4

end

end A390805.P17646197323007640117

namespace A390805

/-- `(n+1+A065333(n+1))*A000010(6*(n+1))/4` -/
def P17646197323007640117.Spec : Prop :=
  ∀ n, P17646197323007640117.a n = (A390805 (n + 1) : ℚ)

end A390805

/-! ## A390805.P5877690767225855542

`∑{#}[n, A065333(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390805.P5877690767225855542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A065333 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390805.P5877690767225855542

namespace A390805

/-- `∑{#}[n, A065333(gcd(#+1, n+1))*(#+1)]` -/
def P5877690767225855542.Spec : Prop :=
  ∀ n, P5877690767225855542.a n = A390805 (n + 1)

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

/-!
# A390806: The sum of the integers k from 1 to n such that gcd(n, k) is squarefree (A005117).

The programs for A390806, the canonical program `A390806.P17797365199190271958` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390806 has offset 1).

The definition of A390806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390806.P17797365199190271958

`(n+1+A008966(n+1))*A063659(n+1)/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390806

/-- `(n+1+A008966(n+1))*A063659(n+1)/2` -/
def P17797365199190271958.Spec : Prop :=
  ∀ n, P17797365199190271958.a n = (A390806 (n + 1) : ℚ)

end A390806

/-! ## A390806.P14817172647884231711

`∑{#}[n, A008966(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390806.P14817172647884231711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008966 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390806.P14817172647884231711

namespace A390806

/-- `∑{#}[n, A008966(gcd(#+1, n+1))*(#+1)]` -/
def P14817172647884231711.Spec : Prop :=
  ∀ n, P14817172647884231711.a n = A390806 (n + 1)

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

The programs for A390807, the canonical program `A390807.P12060733116500477193` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390807 has offset 1).

The definition of A390807 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A212793, A254926, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390807.P12060733116500477193

`(n+1+A212793(n+1))*A254926(n+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A390807

/-- `(n+1+A212793(n+1))*A254926(n+1)/2` -/
def P12060733116500477193.Spec : Prop :=
  ∀ n, P12060733116500477193.a n = (A390807 (n + 1) : ℚ)

end A390807

/-! ## A390807.P11616071485800661295

`∑{#}[n, A212793(gcd(#+1, n+1))*(#+1)]`
-/

namespace A390807.P11616071485800661295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A212793 (Nat.gcd (k + 1) (n + 1)) * (k + 1 : ℤ)

end

end A390807.P11616071485800661295

namespace A390807

/-- `∑{#}[n, A212793(gcd(#+1, n+1))*(#+1)]` -/
def P11616071485800661295.Spec : Prop :=
  ∀ n, P11616071485800661295.a n = A390807 (n + 1)

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

/-!
# A390808: The sum of the integers k from 1 to n such that gcd(n, k) is a square.

The programs for A390808, the canonical program `A390808.P12805373297401576617` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390808 has offset 1).

The definition of A390808 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390808.P12805373297401576617

`∑{#}[n, A010052(gcd(#+1, n+1))*(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390808

/-- `∑{#}[n, A010052(gcd(#+1, n+1))*(#+1)]` -/
def P12805373297401576617.Spec : Prop :=
  ∀ n, P12805373297401576617.a n = A390808 (n + 1)

theorem P12805373297401576617.correct : P12805373297401576617.Spec := by
  intro n
  simp only [A390808, Nat.add_sub_cancel]

end A390808

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
-/

namespace A390808.P15368856780448354872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A125287 d * A351600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390808.P15368856780448354872

namespace A390808

/-- `∑{d}[n+1, A125287(#)*A351600((n+1)/#)]` -/
def P15368856780448354872.Spec : Prop :=
  ∀ n, P15368856780448354872.a n = A390808 (n + 1)

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

The programs for A390809, the canonical program `A390809.P10476724763884040388` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390809 has offset 1).

The definition of A390809 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A019590, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390809.P10476724763884040388

`∑{#}[n, A019590(gcd(#+1, n+1))*(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390809

/-- `∑{#}[n, A019590(gcd(#+1, n+1))*(#+1)]` -/
def P10476724763884040388.Spec : Prop :=
  ∀ n, P10476724763884040388.a n = A390809 (n + 1)

theorem P10476724763884040388.correct : P10476724763884040388.Spec := by
  intro n
  simp only [A390809, Nat.add_sub_cancel]

end A390809

/-! ## A390809.P1718216856557359556

`∑{d}[n+1, A057661(#)*A086831((n+1)/#)]`
-/

namespace A390809.P1718216856557359556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A086831 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390809.P1718216856557359556

namespace A390809

/-- `∑{d}[n+1, A057661(#)*A086831((n+1)/#)]` -/
def P1718216856557359556.Spec : Prop :=
  ∀ n, P1718216856557359556.a n = A390809 (n + 1)

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

The programs for A390810, the canonical program `A390810.P10657059498706437836` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390810 has offset 0).

The definition of A390810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390810.P10657059498706437836

`∑{#}[n, (#+3)*C(4*n-3*#+3, n-#)/(4*n-3*#+3)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390810

/-- `∑{#}[n, (#+3)*C(4*n-3*#+3, n-#)/(4*n-3*#+3)]` -/
def P10657059498706437836.Spec : Prop :=
  ∀ n, P10657059498706437836.a n = (A390810 n : ℚ)

end A390810

/-! ## A390810.P13846998669181023715

`A338388(A383380(n))-A062968(n+1)`
-/

namespace A390810.P13846998669181023715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338388 (A383380 n).toNat - A062968 (n + 1)

end

end A390810.P13846998669181023715

namespace A390810

/-- `A338388(A383380(n))-A062968(n+1)` -/
def P13846998669181023715.Spec : Prop :=
  ∀ n, P13846998669181023715.a n = A390810 n

end A390810

/-!
# A390811: a(n) = Sum_{k=0..n} (2*k+3) * binomial(4*n-2*k+3,n-k)/(4*n-2*k+3).

The programs for A390811, the canonical program `A390811.P14773153479621071316` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390811 has offset 0).

The definition of A390811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390811.P14773153479621071316

`∑{#}[n, (2*#+3)*C(4*n-2*#+3, n-#)/(4*n-2*#+3)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390811

/-- `∑{#}[n, (2*#+3)*C(4*n-2*#+3, n-#)/(4*n-2*#+3)]` -/
def P14773153479621071316.Spec : Prop :=
  ∀ n, P14773153479621071316.a n = (A390811 n : ℚ)

end A390811

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

/-! ## A390814.P2043864879767946818

`A003056(A188587(n+2)+A096236(n+3))-(n+1)`
-/

namespace A390814.P2043864879767946818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A188587 (n + 2) + A096236 (n + 3)).toNat - (n + 1 : ℤ)

end

end A390814.P2043864879767946818

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

/-! ## A390815.P1483307190608933195

`A020639(∑{d}[A325436(n+1), #])`
-/

namespace A390815.P1483307190608933195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A390815.P1483307190608933195

/-! ## A390815.P6226526655833960064

`A355934(A325436(n+1))`
-/

namespace A390815.P6226526655833960064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355934 (A325436 (n + 1)).toNat

end

end A390815.P6226526655833960064

/-! ## A390815.P7888930468588764605

`A080398(A325436(n+1))`
-/

namespace A390815.P7888930468588764605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080398 (A325436 (n + 1)).toNat

end

end A390815.P7888930468588764605

/-! ## A390815.P9607378057185478376

`A057020(A325436(n+1))`
-/

namespace A390815.P9607378057185478376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057020 (A325436 (n + 1)).toNat

end

end A390815.P9607378057185478376

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

/-! ## A390816.P5763550428848583825

`A075680(A000079(n))%A000244(n)`
-/

namespace A390816.P5763550428848583825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075680 (A000079 n).toNat) (A000244 n)

end

end A390816.P5763550428848583825

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

/-! ## A390821.P4611109859308996212

`A059841(n)-A033921(A380035(n))`
-/

namespace A390821.P4611109859308996212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n - A033921 (A380035 n).toNat

end

end A390821.P4611109859308996212

/-! ## A390821.P8779580500400098918

`A316825(n)-A072376(A213100(n))`
-/

namespace A390821.P8779580500400098918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316825 n - A072376 (A213100 n).toNat

end

end A390821.P8779580500400098918

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

/-! ## A390823.P7548021562786924049

`∪[A387254(n+1), A390905(n+1)]`
-/

namespace A390823.P7548021562786924049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390823.P7548021562786924049

/-! ## A390823.P1857830683473903591

`A260739(2*A131605(n+2))`
-/

namespace A390823.P1857830683473903591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (2 * A131605 (n + 2)).toNat

end

end A390823.P1857830683473903591

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

/-!
# A390824: a(n) = Sum_{k=0..n} binomial(n+k+2,n-k) * Fibonacci(k+1).

The programs for A390824, the canonical program `A390824.P7964230445960175717` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390824 has offset 0).

The definition of A390824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+#+2, n-#)*A000045(#+1)]` (program `A390824.P7964230445960175717`, by `A390824.P7964230445960175717.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390824.P6046331688358971596

`ogf((1-x)/(1-5x+7x^2-5x^3+x^4))`
-/

namespace A390824.P6046331688358971596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 7, -5, 1] n

end

end A390824.P6046331688358971596

namespace A390824

/-- `ogf((1-x)/(1-5x+7x^2-5x^3+x^4))` -/
def P6046331688358971596.Spec : Prop :=
  ∀ n, P6046331688358971596.a n = A390824 n

end A390824

/-! ## A390824.P6579202378889722452

`5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=13, a(3)=42`
-/

namespace A390824.P6579202378889722452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 13, 42] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A390824.P6579202378889722452

namespace A390824

/-- `5*a(n-1)-7*a(n-2)+5*a(n-3)-a(n-4)` -/
def P6579202378889722452.Spec : Prop :=
  ∀ n, P6579202378889722452.a n = A390824 n

end A390824

/-! ## A390824.P7964230445960175717

`∑{#}[n, C(n+#+2, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390824

/-- `∑{#}[n, C(n+#+2, n-#)*A000045(#+1)]` -/
def P7964230445960175717.Spec : Prop :=
  ∀ n, P7964230445960175717.a n = A390824 n

theorem P7964230445960175717.correct : P7964230445960175717.Spec := by
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

The programs for A390825, the canonical program `A390825.P1550147434703536620` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390825 has offset 0).

The definition of A390825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#, n-#)*A000045(#+1)]` (program `A390825.P1550147434703536620`, by `A390825.P1550147434703536620.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390825.P5701859064515610654

`ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))`
-/

namespace A390825.P5701859064515610654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10, -10, 5, -1] [1, -7, 17, -23, 16, -6, 1] n

end

end A390825.P5701859064515610654

namespace A390825

/-- `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))` -/
def P5701859064515610654.Spec : Prop :=
  ∀ n, P5701859064515610654.a n = A390825 n

end A390825

/-! ## A390825.P1550147434703536620

`∑{#}[n, C(n+2*#, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390825

/-- `∑{#}[n, C(n+2*#, n-#)*A000045(#+1)]` -/
def P1550147434703536620.Spec : Prop :=
  ∀ n, P1550147434703536620.a n = A390825 n

theorem P1550147434703536620.correct : P1550147434703536620.Spec := by
  intro n
  simp only [A390825]

end A390825

/-! ## A390825.P7828118778084331045

`A390826(n+1)-(A390826(n)+A289797(n))`
-/

namespace A390825.P7828118778084331045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390826 (n + 1) - (A390826 n + A289797 n)

end

end A390825.P7828118778084331045

namespace A390825

/-- `A390826(n+1)-(A390826(n)+A289797(n))` -/
def P7828118778084331045.Spec : Prop :=
  ∀ n, P7828118778084331045.a n = A390825 n

end A390825

/-!
# A390826: a(n) = Sum_{k=0..n} binomial(n+2*k+1,n-k) * Fibonacci(k+1).

The programs for A390826, the canonical program `A390826.P2573223189263826108` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390826 has offset 0).

The definition of A390826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+1, n-#)*A000045(#+1)]` (program `A390826.P2573223189263826108`, by `A390826.P2573223189263826108.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390826.P17594148338447059136

`ogf((1-4x+6x^2-4x^3+x^4)/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))`
-/

namespace A390826.P17594148338447059136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -7, 17, -23, 16, -6, 1] n

end

end A390826.P17594148338447059136

namespace A390826

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))` -/
def P17594148338447059136.Spec : Prop :=
  ∀ n, P17594148338447059136.a n = A390826 n

end A390826

/-! ## A390826.P2573223189263826108

`∑{#}[n, C(n+2*#+1, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390826

/-- `∑{#}[n, C(n+2*#+1, n-#)*A000045(#+1)]` -/
def P2573223189263826108.Spec : Prop :=
  ∀ n, P2573223189263826108.a n = A390826 n

theorem P2573223189263826108.correct : P2573223189263826108.Spec := by
  intro n
  simp only [A390826]

end A390826

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

namespace A390826

/-- `∑[A390825(n)]` -/
def P2566015170578212765.Spec : Prop :=
  ∀ n, P2566015170578212765.a n = A390826 n

end A390826

/-! ## A390826.P4740466077852953380

`A390827(n+1)-(A390827(n)+A390825(n+1))`
-/

namespace A390826.P4740466077852953380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390827 (n + 1) - (A390827 n + A390825 (n + 1))

end

end A390826.P4740466077852953380

namespace A390826

/-- `A390827(n+1)-(A390827(n)+A390825(n+1))` -/
def P4740466077852953380.Spec : Prop :=
  ∀ n, P4740466077852953380.a n = A390826 n

end A390826

/-!
# A390827: a(n) = Sum_{k=0..n} binomial(n+2*k+2,n-k) * Fibonacci(k+1).

The programs for A390827, the canonical program `A390827.P10484664339331997533` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390827 has offset 0).

The definition of A390827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+2, n-#)*A000045(#+1)]` (program `A390827.P10484664339331997533`, by `A390827.P10484664339331997533.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390827.P4898243337826911840

`ogf((1-3x+3x^2-x^3)/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))`
-/

namespace A390827.P4898243337826911840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -7, 17, -23, 16, -6, 1] n

end

end A390827.P4898243337826911840

namespace A390827

/-- `ogf((1-3x+3x^2-x^3)/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))` -/
def P4898243337826911840.Spec : Prop :=
  ∀ n, P4898243337826911840.a n = A390827 n

end A390827

/-! ## A390827.P10484664339331997533

`∑{#}[n, C(n+2*#+2, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390827

/-- `∑{#}[n, C(n+2*#+2, n-#)*A000045(#+1)]` -/
def P10484664339331997533.Spec : Prop :=
  ∀ n, P10484664339331997533.a n = A390827 n

theorem P10484664339331997533.correct : P10484664339331997533.Spec := by
  intro n
  simp only [A390827]

end A390827

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

namespace A390827

/-- `∑[A390826(n)]` -/
def P6915144021779119559.Spec : Prop :=
  ∀ n, P6915144021779119559.a n = A390827 n

end A390827

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

namespace A390827

/-- `∑[∑[A390825(n)]]` -/
def P12450184260934410208.Spec : Prop :=
  ∀ n, P12450184260934410208.a n = A390827 n

end A390827

/-! ## A390827.P6034425189622967613

`A390826(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A390827.P6034425189622967613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390826 n + a (A000027 (n + 1) - 2).toNat

end

end A390827.P6034425189622967613

namespace A390827

/-- `A390826(n)+a(A000027(n+1)-2)` -/
def P6034425189622967613.Spec : Prop :=
  ∀ n, P6034425189622967613.a n = A390827 n

end A390827

/-!
# A390828: a(n) = Sum_{k=0..n} binomial(n+2*k+5,n-k) * Fibonacci(k+1).

The programs for A390828, the canonical program `A390828.P3197216079405645133` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390828 has offset 0).

The definition of A390828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+2*#+5, n-#)*A000045(#+1)]` (program `A390828.P3197216079405645133`, by `A390828.P3197216079405645133.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390828.P3197216079405645133

`∑{#}[n, C(n+2*#+5, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390828

/-- `∑{#}[n, C(n+2*#+5, n-#)*A000045(#+1)]` -/
def P3197216079405645133.Spec : Prop :=
  ∀ n, P3197216079405645133.a n = A390828 n

theorem P3197216079405645133.correct : P3197216079405645133.Spec := by
  intro n
  simp only [A390828]

end A390828

/-! ## A390828.P4624652902662944802

`ogf(1/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))`
-/

namespace A390828.P4624652902662944802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 17, -23, 16, -6, 1] n

end

end A390828.P4624652902662944802

namespace A390828

/-- `ogf(1/(1-7x+17x^2-23x^3+16x^4-6x^5+x^6))` -/
def P4624652902662944802.Spec : Prop :=
  ∀ n, P4624652902662944802.a n = A390828 n

end A390828

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

namespace A390828

/-- `∑[∑[∑[A390827(n)]]]` -/
def P2309487144522992746.Spec : Prop :=
  ∀ n, P2309487144522992746.a n = A390828 n

end A390828

/-! ## A390828.P1780630894465177031

`A289797(n+1)-A390827(n+1)`
-/

namespace A390828.P1780630894465177031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289797 (n + 1) - A390827 (n + 1)

end

end A390828.P1780630894465177031

namespace A390828

/-- `A289797(n+1)-A390827(n+1)` -/
def P1780630894465177031.Spec : Prop :=
  ∀ n, P1780630894465177031.a n = A390828 n

end A390828

/-!
# A390830: a(n) = Sum_{k=0..floor(n/4)} 2^k * 3^(n-3*k) * binomial(n-2*k,k) * binomial(n-3*k,k).

The programs for A390830, the canonical program `A390830.P3397939968715044357` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390830 has offset 0).

The definition of A390830 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390830.P3397939968715044357

`∑{#}[floor(n/4), 2^#*3^(n-3*#)*C(n-2*#, #)*C(n-3*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390830

/-- `∑{#}[floor(n/4), 2^#*3^(n-3*#)*C(n-2*#, #)*C(n-3*#, #)]` -/
def P3397939968715044357.Spec : Prop :=
  ∀ n, P3397939968715044357.a n = (A390830 n : ℚ)

end A390830

/-! ## A390830.P3995480109761113934

`A003051(4^n)`
-/

namespace A390830.P3995480109761113934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (4 ^ n)

end

end A390830.P3995480109761113934

namespace A390830

/-- `A003051(4^n)` -/
def P3995480109761113934.Spec : Prop :=
  ∀ n, P3995480109761113934.a n = A390830 n

end A390830

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

namespace A390830

/-- `∑[A003050(4^n)]` -/
def P11536196527821189439.Spec : Prop :=
  ∀ n, P11536196527821189439.a n = A390830 n

end A390830

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
# A390837: G.f. A(x) satisfies: A(x) = 1 + x * A(2*x/(1 - x)^2) / (1 - x).

The programs for A390837, there is no canonical definition to state claims against.
-/

/-! ## A390837.P14968939957195455526

`A200505(A198056(n+1))+A198046(n)`
-/

namespace A390837.P14968939957195455526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200505 (A198056 (n + 1)).toNat + A198046 n

end

end A390837.P14968939957195455526

/-!
# A390839: a(n) = Product_{k=1..n} (prime(k) + 1)/A001223(k), where A001223 lists the prime gaps, rounded to the nearest integer if necessary.

The programs for A390839, the canonical program `A390839.P4208086319752327611` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390839 has offset 0).

The definition of A390839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390839.P4208086319752327611

`a(n-1)*(1+A000040(n))/(A000040(n+1)-A000040(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390839

/-- `a(n-1)*(1+A000040(n))/(A000040(n+1)-A000040(n))` -/
def P4208086319752327611.Spec : Prop :=
  ∀ n, P4208086319752327611.a n = (A390839 n : ℚ)

end A390839

/-! ## A390839.P3649092029087749602

`A317623(A057766(n+2))`
-/

namespace A390839.P3649092029087749602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317623 (A057766 (n + 2)).toNat

end

end A390839.P3649092029087749602

namespace A390839

/-- `A317623(A057766(n+2))` -/
def P3649092029087749602.Spec : Prop :=
  ∀ n, P3649092029087749602.a n = A390839 n

end A390839

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
# A390843: 5-valuation of Product_{1 <= k <= n} (prime(k) + 1) / (prime(k+1) - prime(k)).

The programs for A390843, there is no canonical definition to state claims against.
-/

/-! ## A390843.P12498181628268778222

`A185715(A008578(n+1))%A335126(2*(n+1))`
-/

namespace A390843.P12498181628268778222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185715 (A008578 (n + 1)).toNat) (A335126 (2 * (n + 1)))

end

end A390843.P12498181628268778222

/-!
# A390845: Expansion of e.g.f. exp( x^3/6 + x^4/24 ).

The programs for A390845, there is no canonical definition to state claims against.
-/

/-! ## A390845.P6657539444847603131

`∑{#}[n, (-1)^(n-#)*C(n, #)*A190729(#)]`
-/

namespace A390845.P6657539444847603131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A190729 k : ℚ)

end

end A390845.P6657539444847603131

/-!
# A390846: Expansion of e.g.f. exp( x^2/2 + x^3/6 + x^4/24 ).

The programs for A390846, there is no canonical definition to state claims against.
-/

/-! ## A390846.P10483714611037513958

`∑{#}[n, (-1)^(n-#)*C(n, #)*A001681(#)]`
-/

namespace A390846.P10483714611037513958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A001681 k : ℚ)

end

end A390846.P10483714611037513958

/-!
# A390849: a(n) = Sum_{k=0..n} (k+1) * 2^k * 3^(n-k) * binomial(2*k,2*(n-k)).

The programs for A390849, the canonical program `A390849.P3936681060271167988` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390849 has offset 0).

The definition of A390849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390849.P3936681060271167988

`∑{#}[n, (#+1)*2^#*3^(n-#)*C(2*#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390849

/-- `∑{#}[n, (#+1)*2^#*3^(n-#)*C(2*#, 2*(n-#))]` -/
def P3936681060271167988.Spec : Prop :=
  ∀ n, P3936681060271167988.a n = (A390849 n : ℚ)

end A390849

/-!
# A390850: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k-1,n-k) * Fibonacci(k+1).

The programs for A390850, the canonical program `A390850.P6831772031228693775` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390850 has offset 0).

The definition of A390850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390850.P420489261872189627

`ogf((1-4x+6x^2-4x^3+x^4)/(1-3x+3x^2-3x^3+x^4))`
-/

namespace A390850.P420489261872189627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -3, 3, -3, 1] n

end

end A390850.P420489261872189627

namespace A390850

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-3x+3x^2-3x^3+x^4))` -/
def P420489261872189627.Spec : Prop :=
  ∀ n, P420489261872189627.a n = A390850 n

end A390850

/-! ## A390850.P6831772031228693775

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=-1, a(2)=0, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A390851, the canonical program `A390851.P14024675243365140069` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390851 has offset 0).

The definition of A390851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#, n-#)*A000045(#+1)]` (program `A390851.P14024675243365140069`, by `A390851.P14024675243365140069.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390851.P10747192409783962388

`ogf((1-3x+3x^2-x^3)/(1-3x+3x^2-3x^3+x^4))`
-/

namespace A390851.P10747192409783962388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -3, 3, -3, 1] n

end

end A390851.P10747192409783962388

namespace A390851

/-- `ogf((1-3x+3x^2-x^3)/(1-3x+3x^2-3x^3+x^4))` -/
def P10747192409783962388.Spec : Prop :=
  ∀ n, P10747192409783962388.a n = A390851 n

end A390851

/-! ## A390851.P11490575218915877126

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A390851.P11490575218915877126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390851.P11490575218915877126

namespace A390851

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P11490575218915877126.Spec : Prop :=
  ∀ n, P11490575218915877126.a n = A390851 n

end A390851

/-! ## A390851.P14024675243365140069

`∑{#}[n, (-1)^#*C(n+#, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390851

/-- `∑{#}[n, (-1)^#*C(n+#, n-#)*A000045(#+1)]` -/
def P14024675243365140069.Spec : Prop :=
  ∀ n, P14024675243365140069.a n = A390851 n

theorem P14024675243365140069.correct : P14024675243365140069.Spec := by
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

The programs for A390852, the canonical program `A390852.P16766028605328524078` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390852 has offset 0).

The definition of A390852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+1, n-#)*A000045(#+1)]` (program `A390852.P16766028605328524078`, by `A390852.P16766028605328524078.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390852.P7636477219487883504

`ogf((1-2x+x^2)/(1-3x+3x^2-3x^3+x^4))`
-/

namespace A390852.P7636477219487883504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 3, -3, 1] n

end

end A390852.P7636477219487883504

namespace A390852

/-- `ogf((1-2x+x^2)/(1-3x+3x^2-3x^3+x^4))` -/
def P7636477219487883504.Spec : Prop :=
  ∀ n, P7636477219487883504.a n = A390852 n

end A390852

/-! ## A390852.P15029824279990138756

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A390852.P15029824279990138756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390852.P15029824279990138756

namespace A390852

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P15029824279990138756.Spec : Prop :=
  ∀ n, P15029824279990138756.a n = A390852 n

end A390852

/-! ## A390852.P16766028605328524078

`∑{#}[n, (-1)^#*C(n+#+1, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390852

/-- `∑{#}[n, (-1)^#*C(n+#+1, n-#)*A000045(#+1)]` -/
def P16766028605328524078.Spec : Prop :=
  ∀ n, P16766028605328524078.a n = A390852 n

theorem P16766028605328524078.correct : P16766028605328524078.Spec := by
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

The programs for A390853, the canonical program `A390853.P6696008130369478609` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390853 has offset 0).

The definition of A390853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+2, n-#)*A000045(#+1)]` (program `A390853.P6696008130369478609`, by `A390853.P6696008130369478609.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390853.P3129540437028193887

`ogf((1-x)/(1-3x+3x^2-3x^3+x^4))`
-/

namespace A390853.P3129540437028193887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 3, -3, 1] n

end

end A390853.P3129540437028193887

namespace A390853

/-- `ogf((1-x)/(1-3x+3x^2-3x^3+x^4))` -/
def P3129540437028193887.Spec : Prop :=
  ∀ n, P3129540437028193887.a n = A390853 n

end A390853

/-! ## A390853.P17703927995086192055

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A390853.P17703927995086192055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 6] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390853.P17703927995086192055

namespace A390853

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P17703927995086192055.Spec : Prop :=
  ∀ n, P17703927995086192055.a n = A390853 n

end A390853

/-! ## A390853.P6696008130369478609

`∑{#}[n, (-1)^#*C(n+#+2, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390853

/-- `∑{#}[n, (-1)^#*C(n+#+2, n-#)*A000045(#+1)]` -/
def P6696008130369478609.Spec : Prop :=
  ∀ n, P6696008130369478609.a n = A390853 n

theorem P6696008130369478609.correct : P6696008130369478609.Spec := by
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

The programs for A390854, the canonical program `A390854.P2762800136237312816` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390854 has offset 0).

The definition of A390854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390854.P2762800136237312816

`ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390854

/-- `ogf((1-6x+15x^2-20x^3+15x^4-6x^5+x^6)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))` -/
def P2762800136237312816.Spec : Prop :=
  ∀ n, P2762800136237312816.a n = A390854 n

theorem P2762800136237312816.correct : P2762800136237312816.Spec := by
  intro n
  simp only [A390854]

end A390854

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

namespace A390854

/-- `Δ[A390855(abs(1-n))]` -/
def P17222996091821890359.Spec : Prop :=
  ∀ n, P17222996091821890359.a n = A390854 n

end A390854

/-!
# A390855: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k,n-k) * Fibonacci(k+1).

The programs for A390855, the canonical program `A390855.P16326501226326567991` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390855 has offset 0).

The definition of A390855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#, n-#)*A000045(#+1)]` (program `A390855.P16326501226326567991`, by `A390855.P16326501226326567991.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390855.P10720832287129906026

`ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))`
-/

namespace A390855.P10720832287129906026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 10, -10, 5, -1] [1, -5, 11, -17, 14, -6, 1] n

end

end A390855.P10720832287129906026

namespace A390855

/-- `ogf((1-5x+10x^2-10x^3+5x^4-x^5)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))` -/
def P10720832287129906026.Spec : Prop :=
  ∀ n, P10720832287129906026.a n = A390855 n

end A390855

/-! ## A390855.P16326501226326567991

`∑{#}[n, (-1)^#*C(n+2*#, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390855

/-- `∑{#}[n, (-1)^#*C(n+2*#, n-#)*A000045(#+1)]` -/
def P16326501226326567991.Spec : Prop :=
  ∀ n, P16326501226326567991.a n = A390855 n

theorem P16326501226326567991.correct : P16326501226326567991.Spec := by
  intro n
  simp only [A390855]

end A390855

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

namespace A390855

/-- `∑[A390854(n)]` -/
def P12463765164781444059.Spec : Prop :=
  ∀ n, P12463765164781444059.a n = A390855 n

end A390855

/-! ## A390855.P15239323753668682792

`A390856(n+1)-(A390856(n)+A390854(n+1))`
-/

namespace A390855.P15239323753668682792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390856 (n + 1) - (A390856 n + A390854 (n + 1))

end

end A390855.P15239323753668682792

namespace A390855

/-- `A390856(n+1)-(A390856(n)+A390854(n+1))` -/
def P15239323753668682792.Spec : Prop :=
  ∀ n, P15239323753668682792.a n = A390855 n

end A390855

/-! ## A390855.P9173260088831777143

`A048575(n)-A390858(n)`
-/

namespace A390855.P9173260088831777143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A390858 n

end

end A390855.P9173260088831777143

namespace A390855

/-- `A048575(n)-A390858(n)` -/
def P9173260088831777143.Spec : Prop :=
  ∀ n, P9173260088831777143.a n = A390855 n

end A390855

/-!
# A390856: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+1,n-k) * Fibonacci(k+1).

The programs for A390856, the canonical program `A390856.P9819855747936350637` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390856 has offset 0).

The definition of A390856 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+1, n-#)*A000045(#+1)]` (program `A390856.P9819855747936350637`, by `A390856.P9819855747936350637.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390856.P17621858751620941787

`ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))`
-/

namespace A390856.P17621858751620941787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 6, -4, 1] [1, -5, 11, -17, 14, -6, 1] n

end

end A390856.P17621858751620941787

namespace A390856

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))` -/
def P17621858751620941787.Spec : Prop :=
  ∀ n, P17621858751620941787.a n = A390856 n

end A390856

/-! ## A390856.P9819855747936350637

`∑{#}[n, (-1)^#*C(n+2*#+1, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390856

/-- `∑{#}[n, (-1)^#*C(n+2*#+1, n-#)*A000045(#+1)]` -/
def P9819855747936350637.Spec : Prop :=
  ∀ n, P9819855747936350637.a n = A390856 n

theorem P9819855747936350637.correct : P9819855747936350637.Spec := by
  intro n
  simp only [A390856]

end A390856

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

namespace A390856

/-- `∑[A390855(n)]` -/
def P7442129258504957990.Spec : Prop :=
  ∀ n, P7442129258504957990.a n = A390856 n

end A390856

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

namespace A390856

/-- `∑[∑[A390854(n)]]` -/
def P6962140288968006618.Spec : Prop :=
  ∀ n, P6962140288968006618.a n = A390856 n

end A390856

/-! ## A390856.P6934414359271961201

`A390857(n+1)-(A390857(n)+A390855(n+1))`
-/

namespace A390856.P6934414359271961201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390857 (n + 1) - (A390857 n + A390855 (n + 1))

end

end A390856.P6934414359271961201

namespace A390856

/-- `A390857(n+1)-(A390857(n)+A390855(n+1))` -/
def P6934414359271961201.Spec : Prop :=
  ∀ n, P6934414359271961201.a n = A390856 n

end A390856

/-!
# A390857: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+2,n-k) * Fibonacci(k+1).

The programs for A390857, the canonical program `A390857.P13803681639856530329` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390857 has offset 0).

The definition of A390857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+2, n-#)*A000045(#+1)]` (program `A390857.P13803681639856530329`, by `A390857.P13803681639856530329.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390857.P16830453737173863597

`ogf((1-3x+3x^2-x^3)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))`
-/

namespace A390857.P16830453737173863597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -5, 11, -17, 14, -6, 1] n

end

end A390857.P16830453737173863597

namespace A390857

/-- `ogf((1-3x+3x^2-x^3)/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))` -/
def P16830453737173863597.Spec : Prop :=
  ∀ n, P16830453737173863597.a n = A390857 n

end A390857

/-! ## A390857.P13803681639856530329

`∑{#}[n, (-1)^#*C(n+2*#+2, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390857

/-- `∑{#}[n, (-1)^#*C(n+2*#+2, n-#)*A000045(#+1)]` -/
def P13803681639856530329.Spec : Prop :=
  ∀ n, P13803681639856530329.a n = A390857 n

theorem P13803681639856530329.correct : P13803681639856530329.Spec := by
  intro n
  simp only [A390857]

end A390857

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

namespace A390857

/-- `∑[A390856(n)]` -/
def P16864736857526354600.Spec : Prop :=
  ∀ n, P16864736857526354600.a n = A390857 n

end A390857

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

namespace A390857

/-- `∑[∑[A390855(n)]]` -/
def P6622047118564174942.Spec : Prop :=
  ∀ n, P6622047118564174942.a n = A390857 n

end A390857

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

namespace A390857

/-- `∑[∑[∑[A390854(n)]]]` -/
def P11370149906823621082.Spec : Prop :=
  ∀ n, P11370149906823621082.a n = A390857 n

end A390857

/-!
# A390858: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+2*k+5,n-k) * Fibonacci(k+1).

The programs for A390858, the canonical program `A390858.P2111169645003646975` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390858 has offset 0).

The definition of A390858 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+2*#+5, n-#)*A000045(#+1)]` (program `A390858.P2111169645003646975`, by `A390858.P2111169645003646975.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390858.P9939800564027489652

`ogf(1/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))`
-/

namespace A390858.P9939800564027489652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -5, 11, -17, 14, -6, 1] n

end

end A390858.P9939800564027489652

namespace A390858

/-- `ogf(1/(1-5x+11x^2-17x^3+14x^4-6x^5+x^6))` -/
def P9939800564027489652.Spec : Prop :=
  ∀ n, P9939800564027489652.a n = A390858 n

end A390858

/-! ## A390858.P2111169645003646975

`∑{#}[n, (-1)^#*C(n+2*#+5, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390858

/-- `∑{#}[n, (-1)^#*C(n+2*#+5, n-#)*A000045(#+1)]` -/
def P2111169645003646975.Spec : Prop :=
  ∀ n, P2111169645003646975.a n = A390858 n

theorem P2111169645003646975.correct : P2111169645003646975.Spec := by
  intro n
  simp only [A390858]

end A390858

/-! ## A390858.P1032345828113171618

`∑[∑[∑[A390857(n)]]]`
-/

namespace A390858.P1032345828113171618
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390857 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390858.P1032345828113171618

namespace A390858

/-- `∑[∑[∑[A390857(n)]]]` -/
def P1032345828113171618.Spec : Prop :=
  ∀ n, P1032345828113171618.a n = A390858 n

end A390858

/-! ## A390858.P13564630230370693681

`A048575(n)-A390855(n)`
-/

namespace A390858.P13564630230370693681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - A390855 n

end

end A390858.P13564630230370693681

namespace A390858

/-- `A048575(n)-A390855(n)` -/
def P13564630230370693681.Spec : Prop :=
  ∀ n, P13564630230370693681.a n = A390858 n

end A390858

/-! ## A390858.P7273307598044169403

`A390857(n+1)+A390854(n+2)`
-/

namespace A390858.P7273307598044169403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390857 (n + 1) + A390854 (n + 2)

end

end A390858.P7273307598044169403

namespace A390858

/-- `A390857(n+1)+A390854(n+2)` -/
def P7273307598044169403.Spec : Prop :=
  ∀ n, P7273307598044169403.a n = A390858 n

end A390858

/-!
# A390859: a(n) = Sum_{k=0..n} (-1)^k * binomial(n+k+3,n-k) * Fibonacci(k+1).

The programs for A390859, the canonical program `A390859.P12509367206188868359` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390859 has offset 0).

The definition of A390859 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^#*C(n+#+3, n-#)*A000045(#+1)]` (program `A390859.P12509367206188868359`, by `A390859.P12509367206188868359.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390859.P12622430239548021043

`ogf(1/(1-3x+3x^2-3x^3+x^4))`
-/

namespace A390859.P12622430239548021043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 3, -3, 1] n

end

end A390859.P12622430239548021043

namespace A390859

/-- `ogf(1/(1-3x+3x^2-3x^3+x^4))` -/
def P12622430239548021043.Spec : Prop :=
  ∀ n, P12622430239548021043.a n = A390859 n

end A390859

/-! ## A390859.P13761249216073063088

`3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12`
-/

namespace A390859.P13761249216073063088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6, 12] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + 3 * a (n - 3) - a (n - 4)

end

end A390859.P13761249216073063088

namespace A390859

/-- `3*a(n-1)-3*a(n-2)+3*a(n-3)-a(n-4)` -/
def P13761249216073063088.Spec : Prop :=
  ∀ n, P13761249216073063088.a n = A390859 n

end A390859

/-! ## A390859.P12509367206188868359

`∑{#}[n, (-1)^#*C(n+#+3, n-#)*A000045(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390859

/-- `∑{#}[n, (-1)^#*C(n+#+3, n-#)*A000045(#+1)]` -/
def P12509367206188868359.Spec : Prop :=
  ∀ n, P12509367206188868359.a n = A390859 n

theorem P12509367206188868359.correct : P12509367206188868359.Spec := by
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

/-! ## A390861.P16027545318252505889

`A071681(A001931(n+1))+1`
-/

namespace A390861.P16027545318252505889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071681 (A001931 (n + 1)).toNat + 1

end

end A390861.P16027545318252505889

/-! ## A390861.P1451878755551721405

`A268571(n+4)+A079205(2*(n+2))`
-/

namespace A390861.P1451878755551721405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268571 (n + 4) + A079205 (2 * (n + 2))

end

end A390861.P1451878755551721405

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

/-! ## A390863.P15198331769819957006

`A390867(n+1)%Δ[A359692(n+1)]`
-/

namespace A390863.P15198331769819957006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390867 (n + 1)) (f1 (n + 1) - f1 n)

end

end A390863.P15198331769819957006

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

/-! ## A390864.P14180472979353745156

`A055654(n+1)%A034295(A056192(n+1))`
-/

namespace A390864.P14180472979353745156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055654 (n + 1)) (A034295 (A056192 (n + 1)).toNat)

end

end A390864.P14180472979353745156

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

/-! ## A390865.P4879314729237709840

`A174847(10*(n+1)/∏{p}[n+1, #])`
-/

namespace A390865.P4879314729237709840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174847 (SequenceMachineLib.roundAway (10 * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A390865.P4879314729237709840

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

/-! ## A390865.P11349708821048694156

`A006530(A276841((n+1)/∏{p}[n+1, #]))`
-/

namespace A390865.P11349708821048694156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A390865.P11349708821048694156

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

/-! ## A390866.P15174967081322710664

`1-A390865(n+1)+n`
-/

namespace A390866.P15174967081322710664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A390865 (n + 1) + (n : ℤ)

end

end A390866.P15174967081322710664

/-! ## A390866.P12266405574845492434

`n+1-A142960(A400000(3*(n+1)))`
-/

namespace A390866.P12266405574845492434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A142960 (A400000 (3 * (n + 1))).toNat

end

end A390866.P12266405574845492434

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

/-! ## A390867.P11255276725861786136

`A024000(A390868(n+1))+n`
-/

namespace A390867.P11255276725861786136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A390868 (n + 1)).toNat + (n : ℤ)

end

end A390867.P11255276725861786136

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

/-! ## A390868.P13225967773764520101

`(A000578(n)*A390867(n+1))%(n+1)`
-/

namespace A390868.P13225967773764520101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n * A390867 (n + 1)) (n + 1 : ℤ)

end

end A390868.P13225967773764520101

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

/-! ## A390868.P10387553061202304460

`A390864(n+1)%A217320(A004736(n+5))`
-/

namespace A390868.P10387553061202304460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390864 (n + 1)) (A217320 (A004736 (n + 5)).toNat)

end

end A390868.P10387553061202304460

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

/-! ## A390871.P18235239144125089575

`A355911(A312397(n))`
-/

namespace A390871.P18235239144125089575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355911 (A312397 n).toNat

end

end A390871.P18235239144125089575

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

/-! ## A390872.P16996813119448453363

`C(∑{e}[n+1, #], A321649(A295781(n+4)))`
-/

namespace A390872.P16996813119448453363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) (A321649 (A295781 (n + 4)).toNat).toNat

end

end A390872.P16996813119448453363

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

The programs for A390874, the canonical program `A390874.P15443486363157548305` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390874 has offset 1).

The definition of A390874 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390874.P4143614916836942867

`ogf((72+228x+264x^2+228x^3+72x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A390874.P4143614916836942867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [72, 228, 264, 228, 72] [1, -2, -1, 4, -1, -2, 1] n

end

end A390874.P4143614916836942867

namespace A390874

/-- `ogf((72+228x+264x^2+228x^3+72x^4)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P4143614916836942867.Spec : Prop :=
  ∀ n, P4143614916836942867.a n = A390874 (n + 1)

end A390874

/-! ## A390874.P15443486363157548305

`3*(n+1)*(13+(-1)^(n+1)+12*(n+1)²)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A390874

/-- `3*(n+1)*(13+(-1)^(n+1)+12*(n+1)²)` -/
def P15443486363157548305.Spec : Prop :=
  ∀ n, P15443486363157548305.a n = A390874 (n + 1)

theorem P15443486363157548305.correct : P15443486363157548305.Spec := by
  intro n
  simp only [A390874, Nat.add_sub_cancel]

end A390874

/-!
# A390877: Triangle read by rows: T(n,k) = A237271(k)*A000041(n-k), 1 <= k <= n.

The programs for A390877, there is no canonical definition to state claims against.
-/

/-! ## A390877.P18320354020694523835

`A237271(col(n)+1)*A000041(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390877.P18320354020694523835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.triCol n + 1) * A000041 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A390877.P18320354020694523835

/-! ## A390877.P12355651371656300550

`A237271(col(n)+1)*A000041(row(n)+1-(col(n)+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390877.P12355651371656300550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.triCol n + 1) * A000041 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1))

end

end A390877.P12355651371656300550

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

/-! ## A390879.P10207845564990468948

`A237271(col(n)+1)*(row(n)+1-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390879.P10207845564990468948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.triCol n + 1) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A390879.P10207845564990468948

/-! ## A390879.P9529164010869219354

`A237271(col(n)+1)*(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390879.P9529164010869219354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.triCol n + 1) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1)

end

end A390879.P9529164010869219354

/-! ## A390879.P14748723970863657657

`A237271(col(n)+1)*(row(n)+1-(col(n)+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390879.P14748723970863657657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (SequenceMachineLib.triCol n + 1) * ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1)

end

end A390879.P14748723970863657657

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

/-!
# A390880: Convolution of A000027 and A237271.

The programs for A390880, there is no canonical definition to state claims against.
-/

/-! ## A390880.P17353855115533063425

`∑[A237590(1+n)]`
-/

namespace A390880.P17353855115533063425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237590 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P17353855115533063425

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

/-! ## A390880.P3223877216057384925

`∑[∑[A000005(n+1)-A243982(n+1)]]`
-/

namespace A390880.P3223877216057384925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A243982 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P3223877216057384925

/-! ## A390880.P17841414558082760915

`∑[∑[A008624(A244971(n+1)+2)]]`
-/

namespace A390880.P17841414558082760915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A244971 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P17841414558082760915

/-! ## A390880.P5990794297657415243

`∑[∑[A110622(A244971(n+1)+2)]]`
-/

namespace A390880.P5990794297657415243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110622 (A244971 (n + 1) + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P5990794297657415243

/-! ## A390880.P5965014937717192288

`∑[∑[A390879(∑[n+1])]]`
-/

namespace A390880.P5965014937717192288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390879 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390880.P5965014937717192288

/-!
# A390881: a(n) = gcd(A018804(n), A000203(n)).

The programs for A390881, the canonical program `A390881.P7996395185274850031` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390881 has offset 1).

The definition of A390881 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A018804(n+1), A000203(n+1))` (program `A390881.P7996395185274850031`, by `A390881.P7996395185274850031.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390881.P7996395185274850031

`gcd(A018804(n+1), A000203(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390881

/-- `gcd(A018804(n+1), A000203(n+1))` -/
def P7996395185274850031.Spec : Prop :=
  ∀ n, (P7996395185274850031.a n : ℤ) = A390881 (n + 1)

theorem P7996395185274850031.correct : P7996395185274850031.Spec := by
  intro n
  simp only [A390881, Nat.add_sub_cancel]

end A390881

/-! ## A390881.P13653844936013956494

`gcd(∑{d}[n+1, #], A018804(n+1))`
-/

namespace A390881.P13653844936013956494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A018804 (n + 1))

end

end A390881.P13653844936013956494

namespace A390881

/-- `gcd(∑{d}[n+1, #], A018804(n+1))` -/
def P13653844936013956494.Spec : Prop :=
  ∀ n, (P13653844936013956494.a n : ℤ) = A390881 (n + 1)

end A390881

/-! ## A390881.P5264832364345799499

`gcd(A000203(n+1), A018804(n+1))`
-/

namespace A390881.P5264832364345799499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A018804 (n + 1))

end

end A390881.P5264832364345799499

namespace A390881

/-- `gcd(A000203(n+1), A018804(n+1))` -/
def P5264832364345799499.Spec : Prop :=
  ∀ n, (P5264832364345799499.a n : ℤ) = A390881 (n + 1)

end A390881

/-! ## A390881.P14483606335540668100

`gcd(∑{d}[n+1, #], ∑{#}[n, gcd(#+1, n+1)])`
-/

namespace A390881.P14483606335540668100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ d ∈ Nat.divisors (f1 n), d) (∑ k ∈ Finset.range (f2 n + 1), Nat.gcd (k + 1) (n + 1))

end

end A390881.P14483606335540668100

namespace A390881

/-- `gcd(∑{d}[n+1, #], ∑{#}[n, gcd(#+1, n+1)])` -/
def P14483606335540668100.Spec : Prop :=
  ∀ n, (P14483606335540668100.a n : ℤ) = A390881 (n + 1)

end A390881

/-! ## A390881.P12377286809075369990

`gcd(∑{#}[n, gcd(#+1, n+1)], A000203(n+1))`
-/

namespace A390881.P12377286809075369990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ k ∈ Finset.range (f1 n + 1), Nat.gcd (k + 1) (n + 1) : ℕ) : ℤ) (A000203 (n + 1))

end

end A390881.P12377286809075369990

namespace A390881

/-- `gcd(∑{#}[n, gcd(#+1, n+1)], A000203(n+1))` -/
def P12377286809075369990.Spec : Prop :=
  ∀ n, (P12377286809075369990.a n : ℤ) = A390881 (n + 1)

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

/-! ## A390885.P9908406137636694113

`A391191(∑[A008619(n)])`
-/

namespace A390885.P9908406137636694113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390885.P9908406137636694113

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

/-! ## A390890.P16838285123128747416

`ceil(A224766(n+1)/4)`
-/

namespace A390890.P16838285123128747416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A224766 (n + 1) : ℚ) / 4⌉

end

end A390890.P16838285123128747416

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

/-! ## A390894.P14099987712424072635

`A390909(n)+A288670(A282773(n+1))`
-/

namespace A390894.P14099987712424072635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390909 n + A288670 (A282773 (n + 1)).toNat

end

end A390894.P14099987712424072635

/-! ## A390894.P2862832757160324873

`or(A000007(A390893(2*n+1)), A390909(n))`
-/

namespace A390894.P2862832757160324873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A390893 (2 * n + 1)).toNat) (A390909 n)

end

end A390894.P2862832757160324873

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

/-!
# A390895: Expansion of e.g.f.: exp(x*(exp(2*x) + 3)/4).

The programs for A390895, there is no canonical definition to state claims against.
-/

/-! ## A390895.P3040700956303995484

`∑{#}[n, C(n, #)*A354323(#)]`
-/

namespace A390895.P3040700956303995484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A354323 k

end

end A390895.P3040700956303995484

/-! ## A390895.P13039211148251400297

`A088004(A399999(n+1)+2*n)`
-/

namespace A390895.P13039211148251400297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A399999 (n + 1) + (2 * n : ℤ)).toNat

end

end A390895.P13039211148251400297

/-! ## A390895.P8171445061184158991

`A381021(n)+A336834(A065440(n))`
-/

namespace A390895.P8171445061184158991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381021 n + A336834 (A065440 n).toNat

end

end A390895.P8171445061184158991

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

/-! ## A390898.P3693026514152005225

`A011782(n)*A112487(n)`
-/

namespace A390898.P3693026514152005225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A112487 n

end

end A390898.P3693026514152005225

/-! ## A390898.P15330562923683734881

`lcm(A000079(n), A032188(n+1))`
-/

namespace A390898.P15330562923683734881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A032188 (n + 1))

end

end A390898.P15330562923683734881

/-! ## A390898.P14053817943224204876

`A032188(n+1)*A059343(n+floor((n/2)²))`
-/

namespace A390898.P14053817943224204876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032188 (n + 1) * A059343 ((n : ℤ) + ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A390898.P14053817943224204876

/-! ## A390898.P13371337526898064871

`A032188(n+1)*A067410(A000217(n))`
-/

namespace A390898.P13371337526898064871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032188 (n + 1) * A067410 (A000217 n).toNat

end

end A390898.P13371337526898064871

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

