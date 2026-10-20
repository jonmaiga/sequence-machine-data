import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A234300: Number of unit squares, aligned with a Cartesian grid, partially encircled along the edge of the first quadrant of a circle centered at the origin ordered by increasing radius.

The programs for A234300, there is no canonical definition to state claims against.
-/

/-! ## A234300.P1749579073647849088

`A235141(n)+a(n-1)` with `a(0)=0`
-/

namespace A234300.P1749579073647849088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A235141 n + a (n - 1)

end

end A234300.P1749579073647849088

/-! ## A234300.P1817793638497535524

`∑[A235141(abs(1-n)+1)]`
-/

namespace A234300.P1817793638497535524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234300.P1817793638497535524

/-! ## A234300.P8700005886882664197

`abs(∑[A235141(A000038(n)+n)])`
-/

namespace A234300.P8700005886882664197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A234300.P8700005886882664197

/-! ## A234300.P6024280437618598185

`∑[A235141(A000038(n)+n)%A000040(n+1)]`
-/

namespace A234300.P6024280437618598185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235141 (A000038 n + (n : ℤ)).toNat) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234300.P6024280437618598185

/-! ## A234300.P11397172317962443284

`∑[A235141(n+1)]-A235141(n+1)`
-/

namespace A234300.P11397172317962443284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A235141 (n + 1)

end

end A234300.P11397172317962443284

/-!
# A234301: E.g.f.: 1 + Integral (1 + Integral (1 + Integral (1 + Integral (1 + ...)^5 dx)^4 dx)^3 dx)^2 dx.

The programs for A234301, there is no canonical definition to state claims against.
-/

/-! ## A234301.P16588073791128133358

`A287354(∑[(n-1)^n])`
-/

namespace A234301.P16588073791128133358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287354 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234301.P16588073791128133358

/-! ## A234301.P3245387018849969565

`A329623(∏[a(n-1)+4])` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A234301.P3245387018849969565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 4] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329623 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A234301.P3245387018849969565

/-!
# A234302: E.g.f. satisfies: A(x) = Sum_{n>=0} Product_{k=1..n} Integral A(x)^k dx.

The programs for A234302, there is no canonical definition to state claims against.
-/

/-! ## A234302.P4156696383872721346

`and(-5, A321525(A101483(n)))`
-/

namespace A234302.P4156696383872721346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-5) (A321525 (A101483 n).toNat)

end

end A234302.P4156696383872721346

/-! ## A234302.P14224697002252253083

`A008620(∑[n*A331122(n)])`
-/

namespace A234302.P14224697002252253083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234302.P14224697002252253083

/-!
# A234303: E.g.f. satisfies: A(x) = Sum_{n>=0} Product_{k=1..n} Integral A(x)^(2*k-1) dx.

The programs for A234303, there is no canonical definition to state claims against.
-/

/-! ## A234303.P18437084881391098152

`xor(A054900(A258620(n+1)), A138213(n))`
-/

namespace A234303.P18437084881391098152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054900 (A258620 (n + 1)).toNat) (A138213 n)

end

end A234303.P18437084881391098152

/-!
# A234305: Irregular triangle read by rows. Theoretical distribution of electrons based on the Janet's sequence A167268.

The programs for A234305, there is no canonical definition to state claims against.
-/

/-! ## A234305.P18325516106921713617

`lcm(A161606(A161622(n+1)), A173642(n+1))`
-/

namespace A234305.P18325516106921713617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A161606 (A161622 (n + 1)).toNat) (A173642 (n + 1))

end

end A234305.P18325516106921713617

/-!
# A234306: a(n) = n + 1 - d(2n), where d(n) is the number of divisors of n.

The programs for A234306, the canonical program `A234306.P8708475813081284006` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234306 has offset 1).

The definition of A234306 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066660, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234306.P8708475813081284006

`n+1-A066660(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A234306

/-- `n+1-A066660(n+1)` -/
def P8708475813081284006.Spec : Prop :=
  ∀ n, P8708475813081284006.a n = A234306 (n + 1)

theorem P8708475813081284006.correct : P8708475813081284006.Spec := by
  intro n
  simp only [A234306, Nat.add_sub_cancel]

end A234306

/-! ## A234306.P9248342731599843434

`n+2-A000005(2*(n+1))`
-/

namespace A234306.P9248342731599843434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A000005 (2 * (n + 1))

end

end A234306.P9248342731599843434

namespace A234306

/-- `n+2-A000005(2*(n+1))` -/
def P9248342731599843434.Spec : Prop :=
  ∀ n, P9248342731599843434.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P8275768940686037591

`n+2-∏{e}[2*(n+1), #+1]`
-/

namespace A234306.P8275768940686037591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A234306.P8275768940686037591

namespace A234306

/-- `n+2-∏{e}[2*(n+1), #+1]` -/
def P8275768940686037591.Spec : Prop :=
  ∀ n, P8275768940686037591.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P15081593166713513687

`n-A069930(n+1)`
-/

namespace A234306.P15081593166713513687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A069930 (n + 1)

end

end A234306.P15081593166713513687

namespace A234306

/-- `n-A069930(n+1)` -/
def P15081593166713513687.Spec : Prop :=
  ∀ n, P15081593166713513687.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P17111251159909785578

`n+1-Δ[A113241(n)]`
-/

namespace A234306.P17111251159909785578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (f1 (n + 1) - f1 n)

end

end A234306.P17111251159909785578

namespace A234306

/-- `n+1-Δ[A113241(n)]` -/
def P17111251159909785578.Spec : Prop :=
  ∀ n, P17111251159909785578.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P9876074073428354807

`2-A099777(n+1)+n`
-/

namespace A234306.P9876074073428354807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099777 (n + 1) + (n : ℤ)

end

end A234306.P9876074073428354807

namespace A234306

/-- `2-A099777(n+1)+n` -/
def P9876074073428354807.Spec : Prop :=
  ∀ n, P9876074073428354807.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P11634559434935523266

`A378216(2*(n+1))+n`
-/

namespace A234306.P11634559434935523266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (2 * (n + 1)) + (n : ℤ)

end

end A234306.P11634559434935523266

namespace A234306

/-- `A378216(2*(n+1))+n` -/
def P11634559434935523266.Spec : Prop :=
  ∀ n, P11634559434935523266.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P16864366783413023246

`n+1-A111150(n+1)/2`
-/

namespace A234306.P16864366783413023246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A111150 (n + 1) : ℚ) / 2

end

end A234306.P16864366783413023246

namespace A234306

/-- `n+1-A111150(n+1)/2` -/
def P16864366783413023246.Spec : Prop :=
  ∀ n, P16864366783413023246.a n = (A234306 (n + 1) : ℚ)

end A234306

/-! ## A234306.P17997600650790592026

`n-A023444(A099777(n+1))`
-/

namespace A234306.P17997600650790592026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A099777 (n + 1)).toNat

end

end A234306.P17997600650790592026

namespace A234306

/-- `n-A023444(A099777(n+1))` -/
def P17997600650790592026.Spec : Prop :=
  ∀ n, P17997600650790592026.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P9695494777958958889

`n-A046667(A111150(n+1))`
-/

namespace A234306.P9695494777958958889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A046667 (A111150 (n + 1)).toNat

end

end A234306.P9695494777958958889

namespace A234306

/-- `n-A046667(A111150(n+1))` -/
def P9695494777958958889.Spec : Prop :=
  ∀ n, P9695494777958958889.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P1457704090817501244

`A062968(n+1)-A001227(n+1)`
-/

namespace A234306.P1457704090817501244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A001227 (n + 1)

end

end A234306.P1457704090817501244

namespace A234306

/-- `A062968(n+1)-A001227(n+1)` -/
def P1457704090817501244.Spec : Prop :=
  ∀ n, P1457704090817501244.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P9318855537449169180

`n-A023444(A000005(2*(n+1)))`
-/

namespace A234306.P9318855537449169180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A000005 (2 * (n + 1))).toNat

end

end A234306.P9318855537449169180

namespace A234306

/-- `n-A023444(A000005(2*(n+1)))` -/
def P9318855537449169180.Spec : Prop :=
  ∀ n, P9318855537449169180.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P8807348092886420598

`n-A049615(A066446(2*(n+1)))`
-/

namespace A234306.P8807348092886420598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A049615 (A066446 (2 * (n + 1))).toNat

end

end A234306.P8807348092886420598

namespace A234306

/-- `n-A049615(A066446(2*(n+1)))` -/
def P8807348092886420598.Spec : Prop :=
  ∀ n, P8807348092886420598.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P2168806925232718460

`n-A003056(A337363(2*(n+1)))`
-/

namespace A234306.P2168806925232718460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003056 (A337363 (2 * (n + 1))).toNat

end

end A234306.P2168806925232718460

namespace A234306

/-- `n-A003056(A337363(2*(n+1)))` -/
def P2168806925232718460.Spec : Prop :=
  ∀ n, P2168806925232718460.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P9991932332389058438

`n-A003056(A348665(2*(n+1)))`
-/

namespace A234306.P9991932332389058438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003056 (A348665 (2 * (n + 1))).toNat

end

end A234306.P9991932332389058438

namespace A234306

/-- `n-A003056(A348665(2*(n+1)))` -/
def P9991932332389058438.Spec : Prop :=
  ∀ n, P9991932332389058438.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P18059213160467023235

`n-A052146(A337362(2*(n+1)))`
-/

namespace A234306.P18059213160467023235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A052146 (A337362 (2 * (n + 1))).toNat

end

end A234306.P18059213160467023235

namespace A234306

/-- `n-A052146(A337362(2*(n+1)))` -/
def P18059213160467023235.Spec : Prop :=
  ∀ n, P18059213160467023235.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P12384010488432022055

`n-A289207(A000005(2*n+2))`
-/

namespace A234306.P12384010488432022055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A289207 (A000005 (2 * n + 2)).toNat

end

end A234306.P12384010488432022055

namespace A234306

/-- `n-A289207(A000005(2*n+2))` -/
def P12384010488432022055.Spec : Prop :=
  ∀ n, P12384010488432022055.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P2213179308835950557

`A001227(n+1)+n-A302707(n)`
-/

namespace A234306.P2213179308835950557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + ((n : ℤ) - A302707 n)

end

end A234306.P2213179308835950557

namespace A234306

/-- `A001227(n+1)+n-A302707(n)` -/
def P2213179308835950557.Spec : Prop :=
  ∀ n, P2213179308835950557.a n = A234306 (n + 1)

end A234306

/-! ## A234306.P2227382885234404096

`A006218(n)-(A069283(n+1)+A002541(n+1))`
-/

namespace A234306.P2227382885234404096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n - (A069283 (n + 1) + A002541 (n + 1))

end

end A234306.P2227382885234404096

namespace A234306

/-- `A006218(n)-(A069283(n+1)+A002541(n+1))` -/
def P2227382885234404096.Spec : Prop :=
  ∀ n, P2227382885234404096.a n = A234306 (n + 1)

end A234306

/-!
# A234307: a(n) = Sum_{i=1..n} gcd(2*n-i, i).

The programs for A234307, the canonical program `A234307.P17695317593474618557` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234307 has offset 1).

The definition of A234307 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234307.P17695317593474618557

`(A018804(2*(n+1))-(n+1))/2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A234307

/-- `(A018804(2*(n+1))-(n+1))/2` -/
def P17695317593474618557.Spec : Prop :=
  ∀ n, P17695317593474618557.a n = (A234307 (n + 1) : ℚ)

end A234307

/-! ## A234307.P9825165135576058059

`∑{d}[n+1, A062570(#)*A123684((n+1)/#)]`
-/

namespace A234307.P9825165135576058059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A123684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A234307.P9825165135576058059

namespace A234307

/-- `∑{d}[n+1, A062570(#)*A123684((n+1)/#)]` -/
def P9825165135576058059.Spec : Prop :=
  ∀ n, P9825165135576058059.a n = A234307 (n + 1)

end A234307

/-! ## A234307.P14140306843869381179

`A060992(2*(n+1))`
-/

namespace A234307.P14140306843869381179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060992 (2 * (n + 1))

end

end A234307.P14140306843869381179

namespace A234307

/-- `A060992(2*(n+1))` -/
def P14140306843869381179.Spec : Prop :=
  ∀ n, P14140306843869381179.a n = A234307 (n + 1)

end A234307

/-! ## A234307.P971627306708271035

`A344598(2*(n+1))/4`
-/

namespace A234307.P971627306708271035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344598 (2 * (n + 1)) : ℚ) / 4

end

end A234307.P971627306708271035

namespace A234307

/-- `A344598(2*(n+1))/4` -/
def P971627306708271035.Spec : Prop :=
  ∀ n, P971627306708271035.a n = (A234307 (n + 1) : ℚ)

end A234307

/-! ## A234307.P2758083117837177456

`(A006579(2*(n+1))+n+1)/2`
-/

namespace A234307.P2758083117837177456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006579 (2 * (n + 1)) + (n + 1 : ℤ) : ℚ) / 2

end

end A234307.P2758083117837177456

namespace A234307

/-- `(A006579(2*(n+1))+n+1)/2` -/
def P2758083117837177456.Spec : Prop :=
  ∀ n, P2758083117837177456.a n = (A234307 (n + 1) : ℚ)

end A234307

/-! ## A234307.P4335623063950903178

`A004526(A018804(2*(n+1))-n)`
-/

namespace A234307.P4335623063950903178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A018804 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A234307.P4335623063950903178

namespace A234307

/-- `A004526(A018804(2*(n+1))-n)` -/
def P4335623063950903178.Spec : Prop :=
  ∀ n, P4335623063950903178.a n = A234307 (n + 1)

end A234307

/-! ## A234307.P3751026367508000626

`A008619(A018804(2*(n+1)))-A008619(n+1)`
-/

namespace A234307.P3751026367508000626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A018804 (2 * (n + 1))).toNat - A008619 (n + 1)

end

end A234307.P3751026367508000626

namespace A234307

/-- `A008619(A018804(2*(n+1)))-A008619(n+1)` -/
def P3751026367508000626.Spec : Prop :=
  ∀ n, P3751026367508000626.a n = A234307 (n + 1)

end A234307

/-! ## A234307.P3440698317349301947

`A065033(A018804(2*(n+1)))-A065033(n+1)`
-/

namespace A234307.P3440698317349301947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A018804 (2 * (n + 1))).toNat - A065033 (n + 1)

end

end A234307.P3440698317349301947

namespace A234307

/-- `A065033(A018804(2*(n+1)))-A065033(n+1)` -/
def P3440698317349301947.Spec : Prop :=
  ∀ n, P3440698317349301947.a n = A234307 (n + 1)

end A234307

/-! ## A234307.P8368082689820691481

`A327029(A096376(n+1))`
-/

namespace A234307.P8368082689820691481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327029 (A096376 (n + 1)).toNat

end

end A234307.P8368082689820691481

namespace A234307

/-- `A327029(A096376(n+1))` -/
def P8368082689820691481.Spec : Prop :=
  ∀ n, P8368082689820691481.a n = A234307 (n + 1)

end A234307

/-!
# A234308: a(n) = |{0 < k <= n/2: phi(k^2)*phi(n-k) - 1 is a Sophie Germain prime}|, where phi(.) is Euler's totient function.

The programs for A234308, there is no canonical definition to state claims against.
-/

/-! ## A234308.P8383128762487454307

`A088205(A020085(n)%A257942(n))`
-/

namespace A234308.P8383128762487454307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088205 (Int.tmod (A020085 n) (A257942 n)).toNat

end

end A234308.P8383128762487454307

/-!
# A234310: Primes of the form 4^k + 4^m - 1, where k and m are positive integers.

The programs for A234310, there is no canonical definition to state claims against.
-/

/-! ## A234310.P7003459258899136392

`p?[A055236(n)-1]`
-/

namespace A234310.P7003459258899136392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055236 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234310.P7003459258899136392

/-! ## A234310.P6817946461765075766

`p?[3*A023746(n+1)+1]`
-/

namespace A234310.P6817946461765075766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023746 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234310.P6817946461765075766

/-! ## A234310.P13016305432570570323

`p?[A099627((round(sqrt(2*(n+1)))+1)²+2*n+1)]`
-/

namespace A234310.P13016305432570570323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234310.P13016305432570570323

/-! ## A234310.P10940926928909296743

`p?[A209492(A185870(n+1))]`
-/

namespace A234310.P10940926928909296743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 (A185870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234310.P10940926928909296743

/-! ## A234310.P2960378986731709958

`p?[A057428(n+1)+A055236(n)]`
-/

namespace A234310.P2960378986731709958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A055236 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234310.P2960378986731709958

/-!
# A234312: Number of tilings of a 5 X n rectangle using n pentominoes of shapes L, X.

The programs for A234312, the canonical program `A234312.P9543954268648629567` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234312 has offset 0).

The definition of A234312 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A234312.P9543954268648629567

`2*(a(n-2)+a(n-5))` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=4`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A234312

/-- `2*(a(n-2)+a(n-5))` -/
def P9543954268648629567.Spec : Prop :=
  ∀ n, (P9543954268648629567.a n : ℤ) = A234312 n

theorem P9543954268648629567.correct : P9543954268648629567.Spec := by
  intro n
  simp only [A234312]

end A234312

/-! ## A234312.P6228788174071807450

`ogf(1/(1-2x^2-2x^5))`
-/

namespace A234312.P6228788174071807450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -2, 0, 0, -2] n

end

end A234312.P6228788174071807450

namespace A234312

/-- `ogf(1/(1-2x^2-2x^5))` -/
def P6228788174071807450.Spec : Prop :=
  ∀ n, P6228788174071807450.a n = A234312 n

end A234312

/-!
# A234313: E.g.f. satisfies: A'(x) = A(x)^5 * A(-x) with A(0) = 1.

The programs for A234313, there is no canonical definition to state claims against.
-/

/-! ## A234313.P16883287963574129691

`A030108(A000307(n)*A131129(n))`
-/

namespace A234313.P16883287963574129691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A000307 n * A131129 n).toNat

end

end A234313.P16883287963574129691

/-!
# A234314: Let x(0)x(1)x(2)... x(q) denote the decimal expansion of n. Sequence lists the numbers n such that the suffix of decimal expansion x(1)x(2)... x(q) is the x(0)-th divisor of n.

The programs for A234314, there is no canonical definition to state claims against.
-/

/-! ## A234314.P1863754886080364044

`A193945(n+1)+A001031(A193945(n+5))`
-/

namespace A234314.P1863754886080364044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193945 (n + 1) + A001031 (A193945 (n + 5)).toNat

end

end A234314.P1863754886080364044

/-!
# A234316: Irregular triangle T, read by rows, such that row n lists the larger parts of the Goldbach partitions of 2n (in decreasing order).

The programs for A234316, there is no canonical definition to state claims against.
-/

/-! ## A234316.P1320739965152039242

`A006530(A350455(n+2))`
-/

namespace A234316.P1320739965152039242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A350455 (n + 2)).toNat

end

end A234316.P1320739965152039242

/-! ## A234316.P53808582253595329

`A338295(A350455(n+2)-1)`
-/

namespace A234316.P53808582253595329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338295 (A350455 (n + 2) - 1).toNat

end

end A234316.P53808582253595329

/-! ## A234316.P10329362920040484252

`A054576(2*A350455(n+2))`
-/

namespace A234316.P10329362920040484252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (2 * A350455 (n + 2)).toNat

end

end A234316.P10329362920040484252

/-! ## A234316.P14268569169403170149

`A085392(2*A350455(n+2))`
-/

namespace A234316.P14268569169403170149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (2 * A350455 (n + 2)).toNat

end

end A234316.P14268569169403170149

/-! ## A234316.P4984760747532317481

`A088387(2*A350455(n+2))`
-/

namespace A234316.P4984760747532317481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (2 * A350455 (n + 2)).toNat

end

end A234316.P4984760747532317481

/-! ## A234316.P5238250645690981738

`A117358(4*A350455(n+2))`
-/

namespace A234316.P5238250645690981738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (4 * A350455 (n + 2)).toNat

end

end A234316.P5238250645690981738

/-! ## A234316.P8641925979169255200

`A088387(lcm(2, A350455(n+2)))`
-/

namespace A234316.P8641925979169255200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088387 (Int.lcm 2 (A350455 (n + 2)))

end

end A234316.P8641925979169255200

/-! ## A234316.P9108327538768059649

`∏{d}[A350455(n+2), A014673(#)]`
-/

namespace A234316.P9108327538768059649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014673 d

end

end A234316.P9108327538768059649

/-! ## A234316.P833648370337278057

`∏{d}[A350455(n+2), A032742(#)]`
-/

namespace A234316.P833648370337278057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A032742 d

end

end A234316.P833648370337278057

/-! ## A234316.P16906414511728655360

`A033677(∏{p}[A350455(n+2), #])`
-/

namespace A234316.P16906414511728655360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350455 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A234316.P16906414511728655360

/-!
# A234317: Number of primes <= R_n where R_n is 11...111 with n 1's.

The programs for A234317, the canonical program `A234317.P7470704803388070308` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234317 has offset 1).

The definition of A234317 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A234317.P7470704803388070308

`A000720(A002275(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A234317

/-- `A000720(A002275(n+1))` -/
def P7470704803388070308.Spec : Prop :=
  ∀ n, P7470704803388070308.a n = A234317 (n + 1)

theorem P7470704803388070308.correct : P7470704803388070308.Spec := by
  intro n
  simp only [A234317, Nat.add_sub_cancel]

end A234317

/-!
# A234319: Smallest sum of n-th powers of k+1 consecutive positive integers that equals the sum of n-th powers of the next k consecutive integers, or -n if none.

The programs for A234319, there is no canonical definition to state claims against.
-/

/-! ## A234319.P11688171690058050381

`A054411(n+1)*A171386(n+1)-n`
-/

namespace A234319.P11688171690058050381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054411 (n + 1) * A171386 (n + 1) - (n : ℤ)

end

end A234319.P11688171690058050381

/-!
# A234323: Number of nontrivial zeros of the Riemann zeta function in the interval 1/2 + i[n,n+1).

The programs for A234323, there is no canonical definition to state claims against.
-/

/-! ## A234323.P13289729447157903379

`Δ[A135297(n+1)]`
-/

namespace A234323.P13289729447157903379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234323.P13289729447157903379

/-! ## A234323.P18033469295056032048

`A135297(n+2)-A135297(n+1)`
-/

namespace A234323.P18033469295056032048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135297 (n + 2) - A135297 (n + 1)

end

end A234323.P18033469295056032048

/-! ## A234323.P1572973722908522033

`∑[A290531(round(acot(n)+n))]`
-/

namespace A234323.P1572973722908522033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234323.P1572973722908522033

/-! ## A234323.P5409285542294317876

`A290531(n)+a(n-1)` with `a(0)=0`
-/

namespace A234323.P5409285542294317876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A290531 n + a (n - 1)

end

end A234323.P5409285542294317876

/-! ## A234323.P5810815613878906668

`∑[A290531(abs(1-n)+1)]`
-/

namespace A234323.P5810815613878906668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234323.P5810815613878906668

/-! ## A234323.P7305773356670485386

`∑[A290531(n+1)]-A290531(n+1)`
-/

namespace A234323.P7305773356670485386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A290531 (n + 1)

end

end A234323.P7305773356670485386

/-! ## A234323.P6090425332465186336

`Δ[A286707(n+1)]`
-/

namespace A234323.P6090425332465186336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A234323.P6090425332465186336

/-! ## A234323.P4190219964192915362

`A286707(n+2)-A286707(n+1)`
-/

namespace A234323.P4190219964192915362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286707 (n + 2) - A286707 (n + 1)

end

end A234323.P4190219964192915362

/-!
# A234324: Central terms of the triangle of central factorial numbers (A008955).

The programs for A234324, there is no canonical definition to state claims against.
-/

/-! ## A234324.P12058156726860645546

`A008955(∑[4*n])`
-/

namespace A234324.P12058156726860645546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234324.P12058156726860645546

/-! ## A234324.P3942551485635666499

`or(1, A008955(A046092(n)))`
-/

namespace A234324.P3942551485635666499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008955 (A046092 n).toNat)

end

end A234324.P3942551485635666499

/-! ## A234324.P10268826253161587622

`record[A008955(gcd(n, A114327(n)))]`
-/

namespace A234324.P10268826253161587622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008955 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234324.P10268826253161587622

/-! ## A234324.P14494997256479176508

`gcd(A000038(n), A008955(A046092(n)))`
-/

namespace A234324.P14494997256479176508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A008955 (A046092 n).toNat)

end

end A234324.P14494997256479176508

/-! ## A234324.P15139658963934680821

`A269944(2*(n+1)²)`
-/

namespace A234324.P15139658963934680821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269944 (2 * (n + 1) ^ 2)

end

end A234324.P15139658963934680821

/-!
# A234325: Number of (n+1) X (n+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234325, there is no canonical definition to state claims against.
-/

/-! ## A234325.P6418217572934067514

`A234333((n+1)²+n²)`
-/

namespace A234325.P6418217572934067514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 ((n + 1) ^ 2 + n ^ 2)

end

end A234325.P6418217572934067514

/-!
# A234326: Number of (n+1) X (1+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234326, there is no canonical definition to state claims against.
-/

/-! ## A234326.P14312428494393995808

`A234333(∑[n]+1)`
-/

namespace A234326.P14312428494393995808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234326.P14312428494393995808

/-! ## A234326.P5040247720916240335

`lcm(2, A234333(A000124(n)))`
-/

namespace A234326.P5040247720916240335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234333 (A000124 n).toNat)

end

end A234326.P5040247720916240335

/-! ## A234326.P12266308980431133760

`record[gcd(A002262(n), A234333(n+1))]`
-/

namespace A234326.P12266308980431133760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234333 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234326.P12266308980431133760

/-! ## A234326.P1630608192504011358

`record[root(A234333(n+1), A002260(n+1))]`
-/

namespace A234326.P1630608192504011358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234333 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234326.P1630608192504011358

/-! ## A234326.P17500596418218357187

`record[root(A234333(n+1), A052310(n))]`
-/

namespace A234326.P17500596418218357187
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234333 (n + 1) : ℝ) ^ (1 / (A052310 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234326.P17500596418218357187

/-!
# A234327: Number of (n+1) X (2+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234327, there is no canonical definition to state claims against.
-/

/-! ## A234327.P4742915643458545424

`A234333(∑[n+1]+2)`
-/

namespace A234327.P4742915643458545424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234327.P4742915643458545424

/-! ## A234327.P13378857751121220781

`lcm(2, A234333(A133263(n+1)))`
-/

namespace A234327.P13378857751121220781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234333 (A133263 (n + 1)).toNat)

end

end A234327.P13378857751121220781

/-! ## A234327.P11582786076419372058

`record[gcd(A002262(n), A234333(n+2))]`
-/

namespace A234327.P11582786076419372058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234333 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234327.P11582786076419372058

/-! ## A234327.P17601641569305205400

`record[root(A234333(n+2), A002260(n+1))]`
-/

namespace A234327.P17601641569305205400
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234333 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234327.P17601641569305205400

/-! ## A234327.P2932847859003585708

`record[A234333(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A234327.P2932847859003585708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234327.P2932847859003585708

/-!
# A234328: Number of (n+1) X (3+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234328, there is no canonical definition to state claims against.
-/

/-! ## A234328.P12293085862365054065

`A234333(∑[n+2]+4)`
-/

namespace A234328.P12293085862365054065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234328.P12293085862365054065

/-! ## A234328.P16687109836342096087

`lcm(2, A234333(A167614(n+1)))`
-/

namespace A234328.P16687109836342096087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234333 (A167614 (n + 1)).toNat)

end

end A234328.P16687109836342096087

/-! ## A234328.P9140269783381793325

`A234333(A167614(n+1))+A000035(2*n)`
-/

namespace A234328.P9140269783381793325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A234328.P9140269783381793325

/-! ## A234328.P10816262583020557148

`A234333(A167614(n+1))%A234329(n+1)`
-/

namespace A234328.P10816262583020557148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234333 (A167614 (n + 1)).toNat) (A234329 (n + 1))

end

end A234328.P10816262583020557148

/-! ## A234328.P1159742620141008798

`record[A234333(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A234328.P1159742620141008798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234328.P1159742620141008798

/-!
# A234329: Number of (n+1) X (4+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234329, there is no canonical definition to state claims against.
-/

/-! ## A234329.P9154055343174107914

`A234333(A374004(n+1))`
-/

namespace A234329.P9154055343174107914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A374004 (n + 1)).toNat

end

end A234329.P9154055343174107914

/-! ## A234329.P9974227513654924319

`A234333(A052905(n)+9)`
-/

namespace A234329.P9974227513654924319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A052905 n + 9).toNat

end

end A234329.P9974227513654924319

/-! ## A234329.P11039047974106764042

`A234333(A055999(n)+10)`
-/

namespace A234329.P11039047974106764042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A055999 n + 10).toNat

end

end A234329.P11039047974106764042

/-! ## A234329.P17238602072463001006

`A234333(A167614(n+2)+1)`
-/

namespace A234329.P17238602072463001006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A167614 (n + 2) + 1).toNat

end

end A234329.P17238602072463001006

/-! ## A234329.P1051979705098730503

`A234333(Δ[A264443(n)-n²])`
-/

namespace A234329.P1051979705098730503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (f1 (n + 1) - f1 n).toNat

end

end A234329.P1051979705098730503

/-!
# A234330: Number of (n+1) X (5+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234330, there is no canonical definition to state claims against.
-/

/-! ## A234330.P16556498076223582498

`A234333(A374005(n+1))`
-/

namespace A234330.P16556498076223582498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A374005 (n + 1)).toNat

end

end A234330.P16556498076223582498

/-! ## A234330.P7739898050415289447

`A234333(A056000(n)+15)`
-/

namespace A234330.P7739898050415289447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A056000 n + 15).toNat

end

end A234330.P7739898050415289447

/-! ## A234330.P17435031448540333945

`A234333(Δ[A264443(n)])`
-/

namespace A234330.P17435031448540333945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (f1 (n + 1) - f1 n).toNat

end

end A234330.P17435031448540333945

/-! ## A234330.P11672648270029302933

`A234333(A056115(n)+11)`
-/

namespace A234330.P11672648270029302933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A056115 n + 11).toNat

end

end A234330.P11672648270029302933

/-! ## A234330.P5590200562840871929

`A234333(Δ[A023545(n+1)])`
-/

namespace A234330.P5590200562840871929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (f1 (n + 1) - f1 n).toNat

end

end A234330.P5590200562840871929

/-!
# A234331: Number of (n+1) X (6+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234331, there is no canonical definition to state claims against.
-/

/-! ## A234331.P8944071724711758088

`A234333(A374007(n+1))`
-/

namespace A234331.P8944071724711758088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A374007 (n + 1)).toNat

end

end A234331.P8944071724711758088

/-! ## A234331.P11115963488802029376

`A234333(Δ[A264443(n)]+10)`
-/

namespace A234331.P11115963488802029376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (f1 (n + 1) - f1 n + 10).toNat

end

end A234331.P11115963488802029376

/-! ## A234331.P879193978998760692

`A234333(A000124(n+5)+5)`
-/

namespace A234331.P879193978998760692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A000124 (n + 5) + 5).toNat

end

end A234331.P879193978998760692

/-! ## A234331.P17285293772240770567

`A234333(eq[7, A131818(n+1)])`
-/

namespace A234331.P17285293772240770567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234331.P17285293772240770567

/-! ## A234331.P9263702178606371871

`A234333(A034111(n+1)-A055999(n))`
-/

namespace A234331.P9263702178606371871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A034111 (n + 1) - A055999 n).toNat

end

end A234331.P9263702178606371871

/-!
# A234332: Number of (n+1) X (7+1) 0..3 arrays with every 2 X 2 subblock having its diagonal sum differing from its antidiagonal sum by 1 (constant-stress 1 X 1 tilings).

The programs for A234332, there is no canonical definition to state claims against.
-/

/-! ## A234332.P4128693595472158010

`A234333(A374008(n+1))`
-/

namespace A234332.P4128693595472158010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A374008 (n + 1)).toNat

end

end A234332.P4128693595472158010

/-! ## A234332.P839100958344973277

`A234333(eq[8, A131818(n+1)])`
-/

namespace A234332.P839100958344973277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234332.P839100958344973277

/-! ## A234332.P6746993928279519952

`A234333(A055999(n+4))`
-/

namespace A234332.P6746993928279519952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (A055999 (n + 4)).toNat

end

end A234332.P6746993928279519952

/-! ## A234332.P17807274764052229777

`A234333(eq[2, A219347(n)-2])`
-/

namespace A234332.P17807274764052229777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A234332.P17807274764052229777

/-!
# A234335: Numbers k such that distances from k to three nearest squares are three perfect squares.

The programs for A234335, there is no canonical definition to state claims against.
-/

/-! ## A234335.P15880930341179972238

`∪[A211412(n+1), A206715(A271740(n))-10]`
-/

namespace A234335.P15880930341179972238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206715 (A271740 n).toNat - 10

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A234335.P15880930341179972238

/-!
# A234336: Triangular numbers t such that both distances from t to two nearest squares are perfect squares.

The programs for A234336, there is no canonical definition to state claims against.
-/

/-! ## A234336.P10447796924991283308

`∩[A234334(n+1), ∑[n]]`
-/

namespace A234336.P10447796924991283308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A234336.P10447796924991283308

/-! ## A234336.P11763595234257146190

`∩[A000217(n), A234334(n+1)]`
-/

namespace A234336.P11763595234257146190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234336.P11763595234257146190

/-! ## A234336.P2853389375774438194

`∩[A026741(n)*A026741(n+1), A234334(n+1)]`
-/

namespace A234336.P2853389375774438194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n * A026741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234334 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A234336.P2853389375774438194

/-!
# A234338: Number of (n+1)X(1+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14.

The programs for A234338, there is no canonical definition to state claims against.
-/

/-! ## A234338.P13630195402990789129

`A234343(∑[n]+1)`
-/

namespace A234338.P13630195402990789129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234343 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234338.P13630195402990789129

/-! ## A234338.P10512111466287148370

`lcm(2, A234343(A000124(n)))`
-/

namespace A234338.P10512111466287148370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234343 (A000124 n).toNat)

end

end A234338.P10512111466287148370

/-! ## A234338.P4515753222527971776

`record[root(A234343(n+1), A009766(n))]`
-/

namespace A234338.P4515753222527971776
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234343 (n + 1) : ℝ) ^ (1 / (A009766 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234338.P4515753222527971776

/-! ## A234338.P2595220088514632883

`record[root(A234343(n+1), A176080(n))]`
-/

namespace A234338.P2595220088514632883
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234343 (n + 1) : ℝ) ^ (1 / (A176080 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234338.P2595220088514632883

/-! ## A234338.P3178898794397713821

`record[gcd(A234343(n+1), A238010(n))]`
-/

namespace A234338.P3178898794397713821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234343 (n + 1)) (A238010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234338.P3178898794397713821

/-!
# A234339: Number of (n+1)X(2+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14.

The programs for A234339, there is no canonical definition to state claims against.
-/

/-! ## A234339.P1647327622038602671

`A234343(∑[n+1]+2)`
-/

namespace A234339.P1647327622038602671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234343 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234339.P1647327622038602671

/-! ## A234339.P16550370955847046024

`record[root(A234343(n+2), A176080(n))]`
-/

namespace A234339.P16550370955847046024
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234343 (n + 2) : ℝ) ^ (1 / (A176080 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234339.P16550370955847046024

/-! ## A234339.P1495888226036719511

`record[gcd(A234343(n+2), A238010(n))]`
-/

namespace A234339.P1495888226036719511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A234343 (n + 2)) (A238010 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234339.P1495888226036719511

/-! ## A234339.P3003960832344543235

`A151878(n)!*A234343(A000096(n+1))`
-/

namespace A234339.P3003960832344543235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A151878 n).toNat : ℤ) * A234343 (A000096 (n + 1)).toNat

end

end A234339.P3003960832344543235

/-! ## A234339.P656600604703843230

`A326682(n)+A234343(A101881(2*n+1))`
-/

namespace A234339.P656600604703843230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A234343 (A101881 (2 * n + 1)).toNat

end

end A234339.P656600604703843230

/-!
# A234340: Number of (n+1)X(3+1) 0..7 arrays with every 2X2 subblock having the sum of the absolute values of the edge differences equal to 14.

The programs for A234340, there is no canonical definition to state claims against.
-/

/-! ## A234340.P11302671584833981868

`A234343(∑[n+2]+4)`
-/

namespace A234340.P11302671584833981868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234343 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234340.P11302671584833981868

/-!
# A234341: 

The programs for A234341, there is no canonical definition to state claims against.
-/

/-! ## A234341.P16856279179098462423

`A234343(A055998(n+2))`
-/

namespace A234341.P16856279179098462423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234343 (A055998 (n + 2)).toNat

end

end A234341.P16856279179098462423

/-! ## A234341.P9172071352940374977

`A234343(A056000(n)+7)`
-/

namespace A234341.P9172071352940374977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234343 (A056000 n + 7).toNat

end

end A234341.P9172071352940374977

/-! ## A234341.P12211964583668438909

`A234343(eq[3, A025581(n)]+1)`
-/

namespace A234341.P12211964583668438909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A234341.P12211964583668438909

/-!
# A234345: Smallest q such that n <= q < 2n with p, q both prime, p+q = 2n, and p <= q.

The programs for A234345, there is no canonical definition to state claims against.
-/

/-! ## A234345.P5993498197275947081

`2*(n+2)-A112823(n+2)`
-/

namespace A234345.P5993498197275947081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A112823 (n + 2)

end

end A234345.P5993498197275947081

/-! ## A234345.P13683195588996854383

`A047160(n+2)+2+n`
-/

namespace A234345.P13683195588996854383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2) + 2 + (n : ℤ)

end

end A234345.P13683195588996854383

/-! ## A234345.P8474663871556354679

`A066285(n+2)/2+2+n`
-/

namespace A234345.P8474663871556354679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066285 (n + 2) : ℚ) / 2 + 2 + (n : ℚ)

end

end A234345.P8474663871556354679

/-! ## A234345.P5409039030282513382

`A001281(A066285(n+2))+2+n`
-/

namespace A234345.P5409039030282513382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A066285 (n + 2)).toNat + 2 + (n : ℤ)

end

end A234345.P5409039030282513382

/-! ## A234345.P3355135073971431367

`A112823(n+2)+A066285(n+2)`
-/

namespace A234345.P3355135073971431367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (n + 2) + A066285 (n + 2)

end

end A234345.P3355135073971431367

/-! ## A234345.P13164900270331257336

`A020482(n+2)-A112824(n+2)`
-/

namespace A234345.P13164900270331257336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (n + 2) - A112824 (n + 2)

end

end A234345.P13164900270331257336

/-! ## A234345.P3778532747278342679

`A020481(n+2)+A020482(n+2)-A112823(n+2)`
-/

namespace A234345.P3778532747278342679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020481 (n + 2) + (A020482 (n + 2) - A112823 (n + 2))

end

end A234345.P3778532747278342679

/-! ## A234345.P13529815246380236363

`p?[A325142(n)+n]`
-/

namespace A234345.P13529815246380236363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234345.P13529815246380236363

/-! ## A234345.P11008025102703697736

`A325142(n+2)+2+n`
-/

namespace A234345.P11008025102703697736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (n + 2) + 2 + (n : ℤ)

end

end A234345.P11008025102703697736

/-! ## A234345.P9680388024906024493

`A102084(n+2)/A112823(n+2)`
-/

namespace A234345.P9680388024906024493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102084 (n + 2) : ℚ) / (A112823 (n + 2) : ℚ)

end

end A234345.P9680388024906024493

/-! ## A234345.P11910306071716954056

`A112823(A020725(n+1)+A020725(n+1)-A112823(n+2))`
-/

namespace A234345.P11910306071716954056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 (A020725 (n + 1) + (A020725 (n + 1) - A112823 (n + 2))).toNat

end

end A234345.P11910306071716954056

/-! ## A234345.P11726886364210325261

`2*(n+2)-A331634(2*(n+2))`
-/

namespace A234345.P11726886364210325261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A331634 (2 * (n + 2))

end

end A234345.P11726886364210325261

/-! ## A234345.P14604085343118337702

`A164023(2*(n+3))`
-/

namespace A234345.P14604085343118337702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (2 * (n + 3))

end

end A234345.P14604085343118337702

/-! ## A234345.P18074062361814036356

`p?[A164023(A020742(n)-1)]`
-/

namespace A234345.P18074062361814036356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A020742 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234345.P18074062361814036356

/-! ## A234345.P5001647359001815151

`A006530(A102084(n+2))`
-/

namespace A234345.P5001647359001815151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102084 (n + 2)).toNat

end

end A234345.P5001647359001815151

/-!
# A234346: Primes of the form 3^k + 3^m - 1, where k and m are positive integers.

The programs for A234346, there is no canonical definition to state claims against.
-/

/-! ## A234346.P7285334895051908907

`p?[A055235(n+2)-1]`
-/

namespace A234346.P7285334895051908907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234346.P7285334895051908907

/-! ## A234346.P491921115731368770

`p?[3*A055235(n)-1]`
-/

namespace A234346.P491921115731368770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A055235 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234346.P491921115731368770

/-! ## A234346.P18125986389192199215

`p?[A191110(A209492(n))]`
-/

namespace A234346.P18125986389192199215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (A209492 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234346.P18125986389192199215

/-! ## A234346.P11053422770746424753

`p?[A191110(A099627(n+2))]`
-/

namespace A234346.P11053422770746424753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191110 (A099627 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234346.P11053422770746424753

/-! ## A234346.P3741955397017442429

`p?[abs(1-A055378(A167614(n+4)))]`
-/

namespace A234346.P3741955397017442429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A055378 (A167614 (n + 4)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234346.P3741955397017442429

/-!
# A234349: Maximal number of points that can be placed on a triangular grid of side n so that no three points are collinear.

The programs for A234349, there is no canonical definition to state claims against.
-/

/-! ## A234349.P14398855507167061856

`floor(∑[C(∏{p}[n, #], n)]/2)+n+1`
-/

namespace A234349.P14398855507167061856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋ + (n + 1 : ℤ)

end

end A234349.P14398855507167061856

/-! ## A234349.P5550877814479536121

`∑[2-A213061(n)]`
-/

namespace A234349.P5550877814479536121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A213061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234349.P5550877814479536121

/-! ## A234349.P9081324597969752651

`comp[A301672(n)]+1`
-/

namespace A234349.P9081324597969752651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A234349.P9081324597969752651

/-! ## A234349.P10878156093784530402

`comp[A311768(n)]+1`
-/

namespace A234349.P10878156093784530402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311768 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A234349.P10878156093784530402

/-! ## A234349.P16437178575519740782

`comp[A311769(n)]+1`
-/

namespace A234349.P16437178575519740782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A234349.P16437178575519740782

/-!
# A234351: Number of non-equivalent (mod D_3) ways to arrange 3 indistinguishable points on a triangular grid of side n so that no three points are collinear.

The programs for A234351, there is no canonical definition to state claims against.
-/

/-! ## A234351.P7488037169300324878

`A234350(∑[A234349(n+1)]+3)`
-/

namespace A234351.P7488037169300324878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234350 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A234351.P7488037169300324878

/-!
# A234353: Number of non-equivalent (mod D_3) ways to arrange 5 indistinguishable points on a triangular grid of side n so that no three points are collinear.

The programs for A234353, there is no canonical definition to state claims against.
-/

/-! ## A234353.P336862725908292454

`A234350(A299114(n+1)+A000217(n+4))`
-/

namespace A234353.P336862725908292454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234350 (A299114 (n + 1) + A000217 (n + 4)).toNat

end

end A234353.P336862725908292454

/-!
# A234357: Array A(n,k) by ascending antidiagonals: A(n,k) = n^k * Fibonacci(k + 1) for n, k >= 1.

The programs for A234357, the canonical program `A234357.P1545735927363493511` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A234357 has offset 1).

The definition of A234357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A234357.P1545735927363493511

`A051128(n+1)*A193588(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A234357

/-- `A051128(n+1)*A193588(n)` -/
def P1545735927363493511.Spec : Prop :=
  ∀ n, P1545735927363493511.a n = A234357 (n + 1)

theorem P1545735927363493511.correct : P1545735927363493511.Spec := by
  intro n
  simp only [A234357, Nat.add_sub_cancel]

end A234357

/-! ## A234357.P15049517313144927874

`A009999(A014132(n+1))*A193588(n)`
-/

namespace A234357.P15049517313144927874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 (A014132 (n + 1)).toNat * A193588 n

end

end A234357.P15049517313144927874

namespace A234357

/-- `A009999(A014132(n+1))*A193588(n)` -/
def P15049517313144927874.Spec : Prop :=
  ∀ n, P15049517313144927874.a n = A234357 (n + 1)

end A234357

/-! ## A234357.P1154456300066917880

`A051129(A038722(n+1))*A193588(n)`
-/

namespace A234357.P1154456300066917880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (A038722 (n + 1)).toNat * A193588 n

end

end A234357.P1154456300066917880

namespace A234357

/-- `A051129(A038722(n+1))*A193588(n)` -/
def P1154456300066917880.Spec : Prop :=
  ∀ n, P1154456300066917880.a n = A234357 (n + 1)

end A234357

/-! ## A234357.P5035131253243944103

`A000045(A002262(n)+2)*A051128(n+1)`
-/

namespace A234357.P5035131253243944103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002262 n + 2).toNat * A051128 (n + 1)

end

end A234357.P5035131253243944103

namespace A234357

/-- `A000045(A002262(n)+2)*A051128(n+1)` -/
def P5035131253243944103.Spec : Prop :=
  ∀ n, P5035131253243944103.a n = A234357 (n + 1)

end A234357

/-! ## A234357.P3144337812402929222

`A000045(A131818(n+2))*A051128(n+1)`
-/

namespace A234357.P3144337812402929222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A131818 (n + 2)).toNat * A051128 (n + 1)

end

end A234357.P3144337812402929222

namespace A234357

/-- `A000045(A131818(n+2))*A051128(n+1)` -/
def P3144337812402929222.Spec : Prop :=
  ∀ n, P3144337812402929222.a n = A234357 (n + 1)

end A234357

/-! ## A234357.P16167425567494379145

`A000045(A002260(n+1)+1)*A051128(n+1)`
-/

namespace A234357.P16167425567494379145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1) + 1).toNat * A051128 (n + 1)

end

end A234357.P16167425567494379145

namespace A234357

/-- `A000045(A002260(n+1)+1)*A051128(n+1)` -/
def P16167425567494379145.Spec : Prop :=
  ∀ n, P16167425567494379145.a n = A234357 (n + 1)

end A234357

/-! ## A234357.P8546743527017084189

`A009999(n)*A119457(n+1)`
-/

namespace A234357.P8546743527017084189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009999 n * A119457 (n + 1)

end

end A234357.P8546743527017084189

namespace A234357

/-- `A009999(n)*A119457(n+1)` -/
def P8546743527017084189.Spec : Prop :=
  ∀ n, P8546743527017084189.a n = A234357 (n + 1)

end A234357

/-! ## A234357.P10240903937525176992

`A022290(A059268(n))*A051128(n+1)`
-/

namespace A234357.P10240903937525176992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (A059268 n).toNat * A051128 (n + 1)

end

end A234357.P10240903937525176992

namespace A234357

/-- `A022290(A059268(n))*A051128(n+1)` -/
def P10240903937525176992.Spec : Prop :=
  ∀ n, P10240903937525176992.a n = A234357 (n + 1)

end A234357

/-!
# A234359: a(n) = |{2 < k < n-2: 5^{phi(k)} + 5^{phi(n-k)/2} - 1 is prime}|, where phi(.) is Euler's totient function.

The programs for A234359, there is no canonical definition to state claims against.
-/

/-! ## A234359.P4179229064901116406

`A156549(n+1)-A059841(A125141(n+1))`
-/

namespace A234359.P4179229064901116406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156549 (n + 1) - A059841 (A125141 (n + 1)).toNat

end

end A234359.P4179229064901116406

/-! ## A234359.P4514063844219722395

`A081389(∑[A231655(2*n)^A072911(n+1)])`
-/

namespace A234359.P4514063844219722395
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231655 (2 * n) : ℚ) ^ (A072911 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081389 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234359.P4514063844219722395

/-!
# A234362: Floor(AGM(n^2, n^3)), where AGM denotes the arithmetic-geometric mean.

The programs for A234362, there is no canonical definition to state claims against.
-/

/-! ## A234362.P10096271061033252428

`∑[∑[A073933(A050930(n)+n)-1]]`
-/

namespace A234362.P10096271061033252428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073933 (A050930 n + (n : ℤ)).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234362.P10096271061033252428

/-! ## A234362.P14354396469052347112

`∑[n²]+C(n, 2)-A188297(A047032(n))`
-/

namespace A234362.P14354396469052347112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 2 : ℕ) : ℤ) - A188297 (A047032 n).toNat

end

end A234362.P14354396469052347112

/-! ## A234362.P7948009169858600251

`A084990(n)-A188297(A047032(n))`
-/

namespace A234362.P7948009169858600251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n - A188297 (A047032 n).toNat

end

end A234362.P7948009169858600251

/-! ## A234362.P4644424150311525751

`A084990(n)-A170956(A032239(n+1))`
-/

namespace A234362.P4644424150311525751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n - A170956 (A032239 (n + 1)).toNat

end

end A234362.P4644424150311525751

/-! ## A234362.P7681860969833700565

`A084990(n)-A215480(A180224(n+1))`
-/

namespace A234362.P7681860969833700565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 n - A215480 (A180224 (n + 1)).toNat

end

end A234362.P7681860969833700565

/-!
# A234363: a(n) = floor(agm(n, triangular(n))), where agm denotes the arithmetic-geometric mean.

The programs for A234363, there is no canonical definition to state claims against.
-/

/-! ## A234363.P9232777834088643255

`A183138(∑[A120835(A016789(n))])`
-/

namespace A234363.P9232777834088643255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234363.P9232777834088643255

/-! ## A234363.P9216117139663538378

`A000196(∑[n*A166070(n+1)])`
-/

namespace A234363.P9216117139663538378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A166070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234363.P9216117139663538378

/-! ## A234363.P7701538721295689175

`A259361(∑[A002620(A132106(n))])`
-/

namespace A234363.P7701538721295689175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A132106 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234363.P7701538721295689175

/-! ## A234363.P7851795078013047239

`∑[∑[A000035(A242549(2*n+1))]]`
-/

namespace A234363.P7851795078013047239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A242549 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A234363.P7851795078013047239

/-!
# A234364: Primes which are the arithmetic mean of the squares of four consecutive primes.

The programs for A234364, there is no canonical definition to state claims against.
-/

/-! ## A234364.P8353528251945863892

`p?[A075894(n+2)]`
-/

namespace A234364.P8353528251945863892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075894 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234364.P8353528251945863892

/-!
# A234365: Number of directed Hamiltonian cycles in the complete tripartite graph K_{n,n,n}.

The programs for A234365, there is no canonical definition to state claims against.
-/

/-! ## A234365.P1465067176763156767

`2*A307924(n+1)`
-/

namespace A234365.P1465067176763156767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307924 (n + 1)

end

end A234365.P1465067176763156767

/-! ## A234365.P16649965560723596650

`(n+1)!²*n!*A141147(n+1)`
-/

namespace A234365.P16649965560723596650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) ^ 2 * Nat.factorial n : ℤ) * A141147 (n + 1)

end

end A234365.P16649965560723596650

/-! ## A234365.P12627109360737535861

`(n+1)!²*n!*(A000172(n)+A000172(n+1))*2/3`
-/

namespace A234365.P12627109360737535861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) ^ 2 * Nat.factorial n : ℤ) * (A000172 n + A000172 (n + 1)) * 2 : ℚ) / 3

end

end A234365.P12627109360737535861

/-! ## A234365.P9662694509819513091

`A307924(n+1)+lcm(A307907(n+2), A307924(n+1))`
-/

namespace A234365.P9662694509819513091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307924 (n + 1) + (Int.lcm (A307907 (n + 2)) (A307924 (n + 1)) : ℤ)

end

end A234365.P9662694509819513091

/-! ## A234365.P16034009168204843833

`A307924(n+1)+A326597(A334857(n+1))+A307924(n+1)`
-/

namespace A234365.P16034009168204843833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307924 (n + 1) + (A326597 (A334857 (n + 1)).toNat + A307924 (n + 1))

end

end A234365.P16034009168204843833

/-!
# A234366: Primes of the form q(p) + 1, where p is a prime and q(.) is the strict partition function (A000009).

The programs for A234366, there is no canonical definition to state claims against.
-/

/-! ## A234366.P9506280010170080480

`A000009(A234530(n+1))+1`
-/

namespace A234366.P9506280010170080480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (A234530 (n + 1)).toNat + 1

end

end A234366.P9506280010170080480

/-! ## A234366.P6038002297096365497

`A047966(A234530(n+1))`
-/

namespace A234366.P6038002297096365497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (A234530 (n + 1)).toNat

end

end A234366.P6038002297096365497

/-! ## A234366.P11259675486198509849

`A052839(p?[A234530(n+1)])`
-/

namespace A234366.P11259675486198509849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234366.P11259675486198509849

/-! ## A234366.P8756586895964056502

`A167932(p?[A234530(n+1)])`
-/

namespace A234366.P8756586895964056502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234366.P8756586895964056502

/-! ## A234366.P16508486310828015514

`A167932(∑{p}[A234530(n+1), #])`
-/

namespace A234366.P16508486310828015514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A234366.P16508486310828015514

/-! ## A234366.P12393325852572098938

`A282892(A234530(n+1))+A054977(n)`
-/

namespace A234366.P12393325852572098938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 (A234530 (n + 1)).toNat + A054977 n

end

end A234366.P12393325852572098938

/-! ## A234366.P11985754981051797386

`A167932(lcm(A020985(n), A234530(n+1)))`
-/

namespace A234366.P11985754981051797386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (Int.lcm (A020985 n) (A234530 (n + 1)))

end

end A234366.P11985754981051797386

/-! ## A234366.P4816216724709519875

`A167932(or(A000038(n), A234530(n+1)))`
-/

namespace A234366.P4816216724709519875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (Int.lor (A000038 n) (A234530 (n + 1))).toNat

end

end A234366.P4816216724709519875

/-! ## A234366.P2572123046469486019

`A167932(or(A057427(n), A234530(n+1)))`
-/

namespace A234366.P2572123046469486019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (Int.lor (A057427 n) (A234530 (n + 1))).toNat

end

end A234366.P2572123046469486019

/-! ## A234366.P11431517976687556074

`A167932(A020985(n)²*A234530(n+1))`
-/

namespace A234366.P11431517976687556074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167932 (A020985 n ^ 2 * A234530 (n + 1)).toNat

end

end A234366.P11431517976687556074

/-!
# A234367: Numbers such that gcd(sigma(n), n) != 1 and numerator(sigma(n)/n) > n.

The programs for A234367, there is no canonical definition to state claims against.
-/

/-! ## A234367.P7924790290791687447

`A338316(A324517(n+1))+A330946(n+2)`
-/

namespace A234367.P7924790290791687447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338316 (A324517 (n + 1)).toNat + A330946 (n + 2)

end

end A234367.P7924790290791687447

/-!
# A234368: Floor(AGM(1, Fibonacci(n))), where AGM denotes the arithmetic-geometric mean.

The programs for A234368, there is no canonical definition to state claims against.
-/

/-! ## A234368.P4168774234283232375

`A127757(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A234368.P4168774234283232375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (f1 (n + 1) - f1 n).toNat

end

end A234368.P4168774234283232375

/-! ## A234368.P10407878991041070414

`A127757(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A234368.P10407878991041070414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234368.P10407878991041070414

/-! ## A234368.P1821747922649104261

`A127757(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A234368.P1821747922649104261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234368.P1821747922649104261

/-! ## A234368.P15914290687120138255

`A127757(A036355(∑[n]))`
-/

namespace A234368.P15914290687120138255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A036355 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234368.P15914290687120138255

/-! ## A234368.P4969364510473711848

`A127757(A000045(n+1))`
-/

namespace A234368.P4969364510473711848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A000045 (n + 1)).toNat

end

end A234368.P4969364510473711848

/-!
# A234369: Floor(AGM(1, triangular(n))), where AGM denotes the arithmetic-geometric mean.

The programs for A234369, there is no canonical definition to state claims against.
-/

/-! ## A234369.P1820477658785151971

`A127757(A179865(n+1))%(n+1)²`
-/

namespace A234369.P1820477658785151971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127757 (A179865 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A234369.P1820477658785151971

/-! ## A234369.P7276246345274542203

`A127757(A179865(n+1))-A000007(n)`
-/

namespace A234369.P7276246345274542203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat - A000007 n

end

end A234369.P7276246345274542203

/-! ## A234369.P15946529418023238614

`A057427(n)*A127757(A179865(n+1))`
-/

namespace A234369.P15946529418023238614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A127757 (A179865 (n + 1)).toNat

end

end A234369.P15946529418023238614

/-! ## A234369.P5957791990707133027

`and(A057428(n), A127757(A179865(n+1)))`
-/

namespace A234369.P5957791990707133027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A127757 (A179865 (n + 1)).toNat)

end

end A234369.P5957791990707133027

/-! ## A234369.P39910911287095210

`A127757(A179865(n+1))-A088917(n²)`
-/

namespace A234369.P39910911287095210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat - A088917 (n ^ 2)

end

end A234369.P39910911287095210

/-! ## A234369.P783045396535463091

`A127757(A179865(n+1))-A063524(n+1)`
-/

namespace A234369.P783045396535463091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat - A063524 (n + 1)

end

end A234369.P783045396535463091

/-! ## A234369.P11952183022805566240

`A127757(A179865(n+1))-∏{d}[n, A001222(#)]`
-/

namespace A234369.P11952183022805566240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001222 d

end

end A234369.P11952183022805566240

/-! ## A234369.P758162559500221762

`A127757(A179865(n+1))-A000010(n+2)%2`
-/

namespace A234369.P758162559500221762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat - Int.tmod (A000010 (n + 2)) 2

end

end A234369.P758162559500221762

/-! ## A234369.P14340648362287892421

`A000040(n+1)%2*A127757(A179865(n+1))`
-/

namespace A234369.P14340648362287892421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A127757 (A179865 (n + 1)).toNat

end

end A234369.P14340648362287892421

/-! ## A234369.P2838828706082331106

`A127757(A179865(n+1))+A008683(2*(n+1)²)`
-/

namespace A234369.P2838828706082331106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A234369.P2838828706082331106

/-! ## A234369.P9062999492929459530

`A127757(A179865(n+1))*A162642(A020639(n+1))`
-/

namespace A234369.P9062999492929459530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A179865 (n + 1)).toNat * A162642 (A020639 (n + 1)).toNat

end

end A234369.P9062999492929459530

/-!
# A234372: Second smallest prime congruent to 1 modulo n-th prime.

The programs for A234372, there is no canonical definition to state claims against.
-/

/-! ## A234372.P12790867353434111101

`A000040(A132949(A100484(n+1)))`
-/

namespace A234372.P12790867353434111101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A132949 (A100484 (n + 1)).toNat).toNat

end

end A234372.P12790867353434111101

/-! ## A234372.P12102983033163874763

`A008578(A132949(A100484(n+1))+1)`
-/

namespace A234372.P12102983033163874763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A132949 (A100484 (n + 1)).toNat + 1).toNat

end

end A234372.P12102983033163874763

/-! ## A234372.P12076799752812509405

`A000040(A132949(2*A000040(n+1)))`
-/

namespace A234372.P12076799752812509405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A132949 (2 * A000040 (n + 1)).toNat).toNat

end

end A234372.P12076799752812509405

/-! ## A234372.P2050908440132389872

`A000040(A132949(A000040(n+1)+A000040(n+1)))`
-/

namespace A234372.P2050908440132389872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A132949 (A000040 (n + 1) + A000040 (n + 1)).toNat).toNat

end

end A234372.P2050908440132389872

/-! ## A234372.P13983558778178845099

`A139317(2*p?[abs(xor(n, -2))])`
-/

namespace A234372.P13983558778178845099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A234372.P13983558778178845099

/-! ## A234372.P17054798167457436010

`A139317(A100484(n+1))`
-/

namespace A234372.P17054798167457436010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (A100484 (n + 1)).toNat

end

end A234372.P17054798167457436010

/-! ## A234372.P17582709928193631874

`A139317(A001747(n+2))`
-/

namespace A234372.P17582709928193631874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (A001747 (n + 2)).toNat

end

end A234372.P17582709928193631874

/-! ## A234372.P14414762642964251195

`A139317(2*A000040(n+1))`
-/

namespace A234372.P14414762642964251195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (2 * A000040 (n + 1)).toNat

end

end A234372.P14414762642964251195

/-! ## A234372.P263173356242810217

`A139317(record[2*A006530(n+2)])`
-/

namespace A234372.P263173356242810217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234372.P263173356242810217

/-! ## A234372.P14459137888794782841

`A139317(record[2*A014963(n+2)])`
-/

namespace A234372.P14459137888794782841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139317 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A234372.P14459137888794782841

/-!
# A234374: Number of (n+2) X (1+2) 0..2 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234374, there is no canonical definition to state claims against.
-/

/-! ## A234374.P14147305338429546234

`A234380(∑[n+1])`
-/

namespace A234374.P14147305338429546234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234374.P14147305338429546234

/-! ## A234374.P5968229196547502535

`record[root(A234380(n+1), A038622(n))]`
-/

namespace A234374.P5968229196547502535
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234380 (n + 1) : ℝ) ^ (1 / (A038622 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234374.P5968229196547502535

/-! ## A234374.P8019310663247517384

`record[root(A234380(n+1), A135227(n))]`
-/

namespace A234374.P8019310663247517384
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234380 (n + 1) : ℝ) ^ (1 / (A135227 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234374.P8019310663247517384

/-! ## A234374.P8687766236800621448

`record[gcd(A025581(n), A234380(n+1))]`
-/

namespace A234374.P8687766236800621448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234374.P8687766236800621448

/-! ## A234374.P6530498541693682885

`record[root(A234380(n+1), A004736(n+1))]`
-/

namespace A234374.P6530498541693682885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234380 (n + 1) : ℝ) ^ (1 / (A004736 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234374.P6530498541693682885

/-!
# A234375: Number of (n+2) X (2+2) 0..2 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234375, there is no canonical definition to state claims against.
-/

/-! ## A234375.P615098692901986732

`A234380(∑[n+2])`
-/

namespace A234375.P615098692901986732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234375.P615098692901986732

/-!
# A234376: Number of (n+2) X (3+2) 0..2 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234376, there is no canonical definition to state claims against.
-/

/-! ## A234376.P11669263334392348715

`A234380(∑[round(1/acot(n))+3])`
-/

namespace A234376.P11669263334392348715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A234376.P11669263334392348715

/-! ## A234376.P17228209725212849245

`A234380(A014132(∑[n+2]))`
-/

namespace A234376.P17228209725212849245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (A014132 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A234376.P17228209725212849245

/-!
# A234379: 

The programs for A234379, there is no canonical definition to state claims against.
-/

/-! ## A234379.P115609982095503688

`A234380(A000096(n+5)-4)`
-/

namespace A234379.P115609982095503688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (A000096 (n + 5) - 4).toNat

end

end A234379.P115609982095503688

/-!
# A234381: Number of (1+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234381, there is no canonical definition to state claims against.
-/

/-! ## A234381.P15176043090899617214

`A234380(∑[n]+1)`
-/

namespace A234381.P15176043090899617214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234381.P15176043090899617214

/-! ## A234381.P12788641995136400371

`lcm(2, A234380(A000124(n)))`
-/

namespace A234381.P12788641995136400371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234380 (A000124 n).toNat)

end

end A234381.P12788641995136400371

/-! ## A234381.P12892465022499187709

`record[root(A234380(n+1), A007318(n))]`
-/

namespace A234381.P12892465022499187709
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234380 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234381.P12892465022499187709

/-! ## A234381.P7675872640235905172

`record[gcd(A002262(n), A234380(n+1))]`
-/

namespace A234381.P7675872640235905172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234380 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234381.P7675872640235905172

/-! ## A234381.P8299347574673380279

`record[root(A234380(n+1), A208760(n+1))]`
-/

namespace A234381.P8299347574673380279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234380 (n + 1) : ℝ) ^ (1 / (A208760 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234381.P8299347574673380279

/-!
# A234382: Number of (2+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234382, there is no canonical definition to state claims against.
-/

/-! ## A234382.P7170991441339603855

`A234380(∑[n+1]+2)`
-/

namespace A234382.P7170991441339603855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234382.P7170991441339603855

/-!
# A234383: Number of (3+2) X (n+2) 0..2 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234383, there is no canonical definition to state claims against.
-/

/-! ## A234383.P12442598701213000001

`A234380(∑[n+2]+4)`
-/

namespace A234383.P12442598701213000001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234380 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234383.P12442598701213000001

/-!
# A234387: a(n) = n-th smallest prime congruent to 1 modulo prime(n).

The programs for A234387, there is no canonical definition to state claims against.
-/

/-! ## A234387.P11396716845347164280

`A077316(A008837(n+1)+1+n)`
-/

namespace A234387.P11396716845347164280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077316 (A008837 (n + 1) + 1 + (n : ℤ)).toNat

end

end A234387.P11396716845347164280

/-!
# A234388: Primes of the form 2^k*(2^{phi(m)} - 1) + 1, where k and m are positive integers, and phi(.) is Euler's totient function.

The programs for A234388, there is no canonical definition to state claims against.
-/

/-! ## A234388.P16948375134835180418

`p?[record[A341915(A107750(n))]]`
-/

namespace A234388.P16948375134835180418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A107750 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234388.P16948375134835180418

/-! ## A234388.P8290680704947662413

`p?[record[A341915(A088948(n+1))]]`
-/

namespace A234388.P8290680704947662413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 (A088948 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234388.P8290680704947662413

/-! ## A234388.P5070151747211996230

`p?[record[A105222(A043569(n+1))]]`
-/

namespace A234388.P5070151747211996230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105222 (A043569 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234388.P5070151747211996230

/-! ## A234388.P5816685200860714469

`p?[abs(A275638(A175332(n+1)))]`
-/

namespace A234388.P5816685200860714469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A275638 (A175332 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234388.P5816685200860714469

/-! ## A234388.P4084206952951349287

`p?[A123087(A016789(A023758(n+1)))]`
-/

namespace A234388.P4084206952951349287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 (A016789 (A023758 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A234388.P4084206952951349287

/-!
# A234389: Number of (n+2) X (1+2) 0..3 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234389, there is no canonical definition to state claims against.
-/

/-! ## A234389.P5647314162031947478

`A234393(∑[n+1])`
-/

namespace A234389.P5647314162031947478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234389.P5647314162031947478

/-! ## A234389.P647225631426682638

`record[A023531(n)*A234393(n+1)]`
-/

namespace A234389.P647225631426682638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A234393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234389.P647225631426682638

/-! ## A234389.P5012751869081551395

`record[A103452(n)*A234393(n+1)]`
-/

namespace A234389.P5012751869081551395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A234393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234389.P5012751869081551395

/-! ## A234389.P13208950684405040148

`record[A115359(n)*A234393(n+1)]`
-/

namespace A234389.P13208950684405040148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A234393 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234389.P13208950684405040148

/-! ## A234389.P13300999108899858206

`record[gcd(A025581(n), A234393(n+1))]`
-/

namespace A234389.P13300999108899858206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A234393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234389.P13300999108899858206

/-!
# A234390: Number of (n+2) X (2+2) 0..3 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234390, there is no canonical definition to state claims against.
-/

/-! ## A234390.P7344017166101060049

`A234393(∑[n+2])`
-/

namespace A234390.P7344017166101060049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A234390.P7344017166101060049

/-!
# A234391: 

The programs for A234391, there is no canonical definition to state claims against.
-/

/-! ## A234391.P17276078700006652226

`A234393(A141214(n)+1)`
-/

namespace A234391.P17276078700006652226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A141214 n + 1).toNat

end

end A234391.P17276078700006652226

/-! ## A234391.P8060682662214025489

`A234393(A167614(n+1)-(2-n))`
-/

namespace A234391.P8060682662214025489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A167614 (n + 1) - (2 - (n : ℤ))).toNat

end

end A234391.P8060682662214025489

/-! ## A234391.P5765003705622825733

`A234393(A166136(n+1)-(5-n))`
-/

namespace A234391.P5765003705622825733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A166136 (n + 1) - (5 - (n : ℤ))).toNat

end

end A234391.P5765003705622825733

/-!
# A234392: 

The programs for A234392, there is no canonical definition to state claims against.
-/

/-! ## A234392.P16891009182983140298

`A234393(A141214(n+1))`
-/

namespace A234392.P16891009182983140298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A141214 (n + 1)).toNat

end

end A234392.P16891009182983140298

/-! ## A234392.P10674580019085211041

`A234393(A167614(n+1)+A005408(n))`
-/

namespace A234392.P10674580019085211041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A167614 (n + 1) + A005408 n).toNat

end

end A234392.P10674580019085211041

/-!
# A234394: Number of (1+2) X (n+2) 0..3 arrays with no increasing sequence of length 3 vertically, diagonally downwards or antidiagonally downwards.

The programs for A234394, there is no canonical definition to state claims against.
-/

/-! ## A234394.P18128628020752153734

`A234393(∑[n]+1)`
-/

namespace A234394.P18128628020752153734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A234394.P18128628020752153734

/-! ## A234394.P4890757930382834274

`lcm(2, A234393(A000124(n)))`
-/

namespace A234394.P4890757930382834274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A234393 (A000124 n).toNat)

end

end A234394.P4890757930382834274

/-! ## A234394.P9018057663097158057

`record[root(A234393(n+1), A157177(n))]`
-/

namespace A234394.P9018057663097158057
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A234393 (n + 1) : ℝ) ^ (1 / (A157177 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234394.P9018057663097158057

/-! ## A234394.P16776530727963612977

`record[gcd(A002262(n), A234393(n+1))]`
-/

namespace A234394.P16776530727963612977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A234393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A234394.P16776530727963612977

/-! ## A234394.P7459330070100342913

`A234393(A000124(n))+A210632(n)`
-/

namespace A234394.P7459330070100342913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A000124 n).toNat + A210632 n

end

end A234394.P7459330070100342913

/-!
# A234395: 

The programs for A234395, there is no canonical definition to state claims against.
-/

/-! ## A234395.P16663393837999541237

`A234393(∑[n+1]+2)`
-/

namespace A234395.P16663393837999541237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A234395.P16663393837999541237

/-!
# A234396: 

The programs for A234396, there is no canonical definition to state claims against.
-/

/-! ## A234396.P688295422680977657

`A234393(∑[n+2]+4)`
-/

namespace A234396.P688295422680977657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A234396.P688295422680977657

/-!
# A234397: 

The programs for A234397, there is no canonical definition to state claims against.
-/

/-! ## A234397.P18203840751607518362

`A234393(A052905(n)+9)`
-/

namespace A234397.P18203840751607518362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234393 (A052905 n + 9).toNat

end

end A234397.P18203840751607518362

/-!
# A234398: Irregular table read by rows: T(n, m) = min(4*m+2, n - 2*m^2), included only when positive; n >= 1, m >= 0.

The programs for A234398, there is no canonical definition to state claims against.
-/

/-! ## A234398.P3915101592549555054

`Δ[eq[1, A000925(A002262(n))]]`
-/

namespace A234398.P3915101592549555054
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (A002262 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A234398.P3915101592549555054

/-! ## A234398.P12679447743484291417

`Δ[eq[1, A169782(A158405(n+1))]]`
-/

namespace A234398.P12679447743484291417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (A158405 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A234398.P12679447743484291417

/-! ## A234398.P7927182894333247214

`Δ[eq[1, A258709(A104765(n+1))]]`
-/

namespace A234398.P7927182894333247214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 (A104765 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A234398.P7927182894333247214

/-! ## A234398.P6082120163255967811

`Δ[eq[1, A290092(A059268(n))]]`
-/

namespace A234398.P6082120163255967811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290092 (A059268 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A234398.P6082120163255967811

/-! ## A234398.P191803728134572548

`A168208(n+1)-A335453(A027336(n))`
-/

namespace A234398.P191803728134572548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168208 (n + 1) - A335453 (A027336 n).toNat

end

end A234398.P191803728134572548

/-!
# A234399: a(n) = |{0 < k < n: 2^k*(2^phi(n-k) - 1) + 1 is prime}|, where phi(.) is Euler's totient function.

The programs for A234399, there is no canonical definition to state claims against.
-/

/-! ## A234399.P4544873624817730370

`A213911(A011371(n)+A276076(n)²)`
-/

namespace A234399.P4544873624817730370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 (A011371 n + A276076 n ^ 2).toNat

end

end A234399.P4544873624817730370

/-! ## A234399.P16701971081595652617

`A001221(lcm(A189375(n), A295147(n)))`
-/

namespace A234399.P16701971081595652617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A189375 n) (A295147 n))

end

end A234399.P16701971081595652617

/-! ## A234399.P15212819440419077886

`A023508(A298622(n+1)+A265264(n))`
-/

namespace A234399.P15212819440419077886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023508 (A298622 (n + 1) + A265264 n).toNat

end

end A234399.P15212819440419077886

/-! ## A234399.P11726052745098496243

`A323014(A304818(n+1)+A003418(n))`
-/

namespace A234399.P11726052745098496243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323014 (A304818 (n + 1) + A003418 n).toNat

end

end A234399.P11726052745098496243

/-! ## A234399.P14993077271555980367

`A275024(A122785(n+1)-A057164(n))`
-/

namespace A234399.P14993077271555980367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275024 (A122785 (n + 1) - A057164 n).toNat

end

end A234399.P14993077271555980367

