import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A397302: Number of ways to tile a strip of length n with three types of tiles.

The programs for A397302, the canonical program `A397302.P13928652229525492294` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397302 has offset 0).

The definition of A397302 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397302.P64837090122082069

`ogf((1-x)/(1-3x-4x^2-2x^3))`
-/

namespace A397302.P64837090122082069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -4, -2] n

end

end A397302.P64837090122082069

namespace A397302

/-- `ogf((1-x)/(1-3x-4x^2-2x^3))` -/
def P64837090122082069.Spec : Prop :=
  ∀ n, P64837090122082069.a n = A397302 n

end A397302

/-! ## A397302.P13928652229525492294

`3*a(n-1)+4*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=10`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397302

/-- `3*a(n-1)+4*a(n-2)+2*a(n-3)` -/
def P13928652229525492294.Spec : Prop :=
  ∀ n, (P13928652229525492294.a n : ℤ) = A397302 n

theorem P13928652229525492294.correct : P13928652229525492294.Spec := by
  intro n
  simp only [A397302]

end A397302

/-!
# A397303: Triangle read by rows: T(n,k) is the number of cyclic permutations of [n] whose longest ascending run is length k, n >= k >= 1.

The programs for A397303, there is no canonical definition to state claims against.
-/

/-! ## A397303.P3398893783093228042

`A106442(A111106(n))`
-/

namespace A397303.P3398893783093228042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (A111106 n).toNat

end

end A397303.P3398893783093228042

/-! ## A397303.P2455662264479919900

`A305383(A355282(n))`
-/

namespace A397303.P2455662264479919900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305383 (A355282 n).toNat

end

end A397303.P2455662264479919900

/-! ## A397303.P15333987766227322246

`A372592(A370419(n))`
-/

namespace A397303.P15333987766227322246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372592 (A370419 n).toNat

end

end A397303.P15333987766227322246

/-!
# A397305: Positive numbers m such that m - 2^k is composite for all k > 0 with 2^k < m.

The programs for A397305, there is no canonical definition to state claims against.
-/

/-! ## A397305.P3861291626163234501

`A373151(A078851(n+1))+A177712(n+1)`
-/

namespace A397305.P3861291626163234501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373151 (A078851 (n + 1)).toNat + A177712 (n + 1)

end

end A397305.P3861291626163234501

/-! ## A397305.P15784842695923198057

`A091247(A108373(n+1))*A398389(n+1)`
-/

namespace A397305.P15784842695923198057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A108373 (n + 1)).toNat * A398389 (n + 1)

end

end A397305.P15784842695923198057

/-! ## A397305.P11193092193871619174

`A398389(n+1)%A185210(n+1)²`
-/

namespace A397305.P11193092193871619174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398389 (n + 1)) (A185210 (n + 1) ^ 2)

end

end A397305.P11193092193871619174

/-! ## A397305.P7723200187147521894

`A336924(A001248(n+1))+A177712(n+1)`
-/

namespace A397305.P7723200187147521894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336924 (A001248 (n + 1)).toNat + A177712 (n + 1)

end

end A397305.P7723200187147521894

/-! ## A397305.P3621393458496923889

`A177712(n+1)+A040000(A308787(3*(n+1)))`
-/

namespace A397305.P3621393458496923889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1) + A040000 (A308787 (3 * (n + 1))).toNat

end

end A397305.P3621393458496923889

/-! ## A397305.P3200763341838062796

`A398389(n+1)%A185210(n+3)`
-/

namespace A397305.P3200763341838062796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398389 (n + 1)) (A185210 (n + 3))

end

end A397305.P3200763341838062796

/-!
# A397307: Number of primes of the form n - 2^k, where k >= 1.

The programs for A397307, there is no canonical definition to state claims against.
-/

/-! ## A397307.P3699079037536976175

`A109925(n+1)-char[A000040(n+1)]`
-/

namespace A397307.P3699079037536976175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A397307.P3699079037536976175

/-! ## A397307.P12676311363400735839

`A109925(n+1)-char[A267101(n+1)]`
-/

namespace A397307.P12676311363400735839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267101 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A397307.P12676311363400735839

/-! ## A397307.P17708694322277030597

`A109925(n+1)+A253238(n+1)-A196228(n+1)`
-/

namespace A397307.P17708694322277030597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (n + 1) + (A253238 (n + 1) - A196228 (n + 1))

end

end A397307.P17708694322277030597

/-! ## A397307.P14829212249614170066

`A341675(A279139(n+1))`
-/

namespace A397307.P14829212249614170066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341675 (A279139 (n + 1)).toNat

end

end A397307.P14829212249614170066

/-! ## A397307.P7355021513189686812

`A341685(A294811(n+1))`
-/

namespace A397307.P7355021513189686812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341685 (A294811 (n + 1)).toNat

end

end A397307.P7355021513189686812

/-!
# A397308: Positive numbers m such that m - 2^k is a prime for exactly two values of k > 0.

The programs for A397308, there is no canonical definition to state claims against.
-/

/-! ## A397308.P9039952582289724722

`lt[xor(A020639(n+2), A109925(n+1)), 1]+1`
-/

namespace A397308.P9039952582289724722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (n + 2)) (A109925 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A397308.P9039952582289724722

/-!
# A397311: a(1) = 0; for n > 1, a(n) is the least integer > a(n-1) such that distinct multisets of 10 terms from a(1),...,a(n) have distinct sums.

The programs for A397311, there is no canonical definition to state claims against.
-/

/-! ## A397311.P6297957141967760206

`A322047(A001444(n))`
-/

namespace A397311.P6297957141967760206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322047 (A001444 n).toNat

end

end A397311.P6297957141967760206

/-!
# A397312: Index of prime(n) in A397219.

The programs for A397312, there is no canonical definition to state claims against.
-/

/-! ## A397312.P13842862878391167726

`A397297(A000040(n+1))`
-/

namespace A397312.P13842862878391167726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A000040 (n + 1)).toNat

end

end A397312.P13842862878391167726

/-! ## A397312.P14540328076268809852

`A397297(A008578(n+2))`
-/

namespace A397312.P14540328076268809852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A008578 (n + 2)).toNat

end

end A397312.P14540328076268809852

/-! ## A397312.P8553284828320730991

`A397297(A182986(n+2))`
-/

namespace A397312.P8553284828320730991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A182986 (n + 2)).toNat

end

end A397312.P8553284828320730991

/-! ## A397312.P12326429426072288687

`A397297(A396013(A397314(n+1)))`
-/

namespace A397312.P12326429426072288687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A396013 (A397314 (n + 1)).toNat).toNat

end

end A397312.P12326429426072288687

/-! ## A397312.P8632661186899452540

`A397297(A182231(n+1))`
-/

namespace A397312.P8632661186899452540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397297 (A182231 (n + 1)).toNat

end

end A397312.P8632661186899452540

/-!
# A397314: Index of prime(n) in A396013.

The programs for A397314, there is no canonical definition to state claims against.
-/

/-! ## A397314.P17063679300157960535

`A397313(A000040(n+1))`
-/

namespace A397314.P17063679300157960535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A000040 (n + 1)).toNat

end

end A397314.P17063679300157960535

/-! ## A397314.P12981702633596325991

`A397313(A216886(1+n))`
-/

namespace A397314.P12981702633596325991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A216886 (1 + n)).toNat

end

end A397314.P12981702633596325991

/-! ## A397314.P4411987681194591365

`A397313(A008578(n+2))`
-/

namespace A397314.P4411987681194591365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A008578 (n + 2)).toNat

end

end A397314.P4411987681194591365

/-! ## A397314.P8807989734308801969

`A397313(A182986(n+2))`
-/

namespace A397314.P8807989734308801969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A182986 (n + 2)).toNat

end

end A397314.P8807989734308801969

/-! ## A397314.P14852824210880569566

`A397313(A324050(n+2))`
-/

namespace A397314.P14852824210880569566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A324050 (n + 2)).toNat

end

end A397314.P14852824210880569566

/-! ## A397314.P7587850751394664159

`A397313(A238853(n+1))`
-/

namespace A397314.P7587850751394664159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397313 (A238853 (n + 1)).toNat

end

end A397314.P7587850751394664159

/-!
# A397317: Index of prime(n) in A397218.

The programs for A397317, there is no canonical definition to state claims against.
-/

/-! ## A397317.P15817743365441183606

`A397316(A000040(n+1))`
-/

namespace A397317.P15817743365441183606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A000040 (n + 1)).toNat

end

end A397317.P15817743365441183606

/-! ## A397317.P15030818559903969856

`A397316(A008578(n+2))`
-/

namespace A397317.P15030818559903969856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A008578 (n + 2)).toNat

end

end A397317.P15030818559903969856

/-! ## A397317.P861779039518945616

`A397316(A182986(n+2))`
-/

namespace A397317.P861779039518945616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A182986 (n + 2)).toNat

end

end A397317.P861779039518945616

/-! ## A397317.P8309840072449281581

`A397316(A397219(A397312(n+1)))`
-/

namespace A397317.P8309840072449281581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A397219 (A397312 (n + 1)).toNat).toNat

end

end A397317.P8309840072449281581

/-! ## A397317.P10318584414845055056

`A397316(A396013(A397314(n+1)))`
-/

namespace A397317.P10318584414845055056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397316 (A396013 (A397314 (n + 1)).toNat).toNat

end

end A397317.P10318584414845055056

/-!
# A397318: a(n) is the number of positive integers that are less than or equal to and relatively prime to exactly two divisors of n.

The programs for A397318, there is no canonical definition to state claims against.
-/

/-! ## A397318.P11609704449728522822

`A397786(A350102(n+1))`
-/

namespace A397318.P11609704449728522822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397786 (A350102 (n + 1)).toNat

end

end A397318.P11609704449728522822

/-! ## A397318.P4320076554369023513

`A067850(A281145(n+1))%A302037(3*(n+1))`
-/

namespace A397318.P4320076554369023513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067850 (A281145 (n + 1)).toNat) (A302037 (3 * (n + 1)))

end

end A397318.P4320076554369023513

/-!
# A397321: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x^4) - 1)) ).

The programs for A397321, there is no canonical definition to state claims against.
-/

/-! ## A397321.P4171246947575570784

`A392793(n)/A117546(A033835(n+1))`
-/

namespace A397321.P4171246947575570784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392793 n : ℚ) / (A117546 (A033835 (n + 1)).toNat : ℚ)

end

end A397321.P4171246947575570784

/-! ## A397321.P9230980154056626222

`A397322(n)+A010815(A071159(2*(n+1)))`
-/

namespace A397321.P9230980154056626222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397322 n + A010815 (A071159 (2 * (n + 1))).toNat

end

end A397321.P9230980154056626222

/-!
# A397324: a(n) = Sum_{j=0..n} Stirling1(n, j) * binomial(n + j, n) * n^j.

The programs for A397324, there is no canonical definition to state claims against.
-/

/-! ## A397324.P12336499476576795026

`A397400(∑[4*n])`
-/

namespace A397324.P12336499476576795026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397400 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397324.P12336499476576795026

/-! ## A397324.P13471671319538897423

`A397420(∑[4*n])`
-/

namespace A397324.P13471671319538897423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397324.P13471671319538897423

/-! ## A397324.P8713700733957839605

`record[A003982(n)*A397420(n)]`
-/

namespace A397324.P8713700733957839605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A397420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397324.P8713700733957839605

/-! ## A397324.P4909671289482174621

`A397420(A046092(n))+A025469(n)`
-/

namespace A397324.P4909671289482174621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (A046092 n).toNat + A025469 n

end

end A397324.P4909671289482174621

/-! ## A397324.P14217318661275320630

`A397420(A046092(n))+A000007(n+4)`
-/

namespace A397324.P14217318661275320630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397420 (A046092 n).toNat + A000007 (n + 4)

end

end A397324.P14217318661275320630

/-!
# A397326: a(n) = Sum_{j=0..n} (-1)^j*binomial(n, j) * A001006(2*n - j)^2.

The programs for A397326, the canonical program `A397326.P3276265740757930615` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397326 has offset 0).

The definition of A397326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397326.P165729684686657942

`A396585(C(2*n+1, 2)+n)`
-/

namespace A397326.P165729684686657942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396585 (Nat.choose (2 * n + 1) 2 + n)

end

end A397326.P165729684686657942

namespace A397326

/-- `A396585(C(2*n+1, 2)+n)` -/
def P165729684686657942.Spec : Prop :=
  ∀ n, P165729684686657942.a n = A397326 n

end A397326

/-! ## A397326.P3276265740757930615

`∑{#}[n, (-1)^#*C(n, #)*A001006(2*n-#)²]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A397326

/-- `∑{#}[n, (-1)^#*C(n, #)*A001006(2*n-#)²]` -/
def P3276265740757930615.Spec : Prop :=
  ∀ n, P3276265740757930615.a n = A397326 n

theorem P3276265740757930615.correct : P3276265740757930615.Spec := by
  intro n
  simp only [A397326]

end A397326

/-! ## A397326.P13971541093527613811

`A396585(∑[4*n])`
-/

namespace A397326.P13971541093527613811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396585 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397326.P13971541093527613811

namespace A397326

/-- `A396585(∑[4*n])` -/
def P13971541093527613811.Spec : Prop :=
  ∀ n, P13971541093527613811.a n = A397326 n

end A397326

/-!
# A397330: Row sums of A397331.

The programs for A397330, there is no canonical definition to state claims against.
-/

/-! ## A397330.P13359943930814101474

`A363429(A004273(n))`
-/

namespace A397330.P13359943930814101474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 (A004273 n).toNat

end

end A397330.P13359943930814101474

/-! ## A397330.P5749979327931868640

`filter[A363429(n), A057211(#)]`
-/

namespace A397330.P5749979327931868640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057211 (f1 j).toNat = 1) n)

end

end A397330.P5749979327931868640

/-!
# A397331: Triangle read by rows: T(n, k) = P(n, k, -1) where P(n, k, x) = (1/k!) * Sum_{j=0..k}((-1)^(k - j) * binomial(k, j) * (n + x + j)^n).

The programs for A397331, the canonical program `A397331.P14098152171182667396` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397331 has offset 0).

The definition of A397331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397331.P14098152171182667396

`T(n-1,k-1)+(row(n)+2*col(n)-1)*T(n-1,k)+(row(n)+col(n)-1)*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397331

/-- `T(n-1,k-1)+(row(n)+2*col(n)-1)*T(n-1,k)+(row(n)+col(n)-1)*(col(n)+1)*T(n-1,k+1)` -/
def P14098152171182667396.Spec : Prop :=
  ∀ n, P14098152171182667396.a n = A397331 n

theorem P14098152171182667396.correct : P14098152171182667396.Spec := by
  intro n
  simp only [A397331]

end A397331

/-!
# A397332: Row sums of A397333.

The programs for A397332, there is no canonical definition to state claims against.
-/

/-! ## A397332.P1655105558961235824

`A395288(n+1)/(n+1)`
-/

namespace A397332.P1655105558961235824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395288 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A397332.P1655105558961235824

/-! ## A397332.P12036560689573093691

`A363430(Δ[n²])`
-/

namespace A397332.P12036560689573093691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397332.P12036560689573093691

/-! ## A397332.P8816952877256873648

`record[A363430(A000188(2*n+3))]`
-/

namespace A397332.P8816952877256873648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363430 (A000188 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397332.P8816952877256873648

/-! ## A397332.P4069742054570714543

`A108087(2*(n+1)²)`
-/

namespace A397332.P4069742054570714543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (2 * (n + 1) ^ 2)

end

end A397332.P4069742054570714543

/-!
# A397333: Triangle read by rows: T(n, k) = P(n, k, 1) where P(n, k, x) = (1/k!) * Sum_{j=0..k}((-1)^(k - j) * binomial(k, j) * (n + x + j)^n).

The programs for A397333, the canonical program `A397333.P1220039132598529868` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397333 has offset 0).

The definition of A397333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397333.P1220039132598529868

`T(n-1,k-1)+(row(n)+2*col(n)+1)*T(n-1,k)+(row(n)+col(n)+1)*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397333

/-- `T(n-1,k-1)+(row(n)+2*col(n)+1)*T(n-1,k)+(row(n)+col(n)+1)*(col(n)+1)*T(n-1,k+1)` -/
def P1220039132598529868.Spec : Prop :=
  ∀ n, (P1220039132598529868.a n : ℤ) = A397333 n

theorem P1220039132598529868.correct : P1220039132598529868.Spec := by
  intro n
  simp only [A397333]

end A397333

/-! ## A397333.P11500704318773140420

`T(n-1,k-1)+(row(n)+1+2*col(n))*T(n-1,k)+(row(n)+1+col(n))*(col(n)+1)*T(n-1,k+1)` with `a(0)=1`
-/

namespace A397333.P11500704318773140420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n + 1 + 2 * SequenceMachineLib.triCol n) * SequenceMachineLib.triUp a n + (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n) * (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triUpRight a n

end

end A397333.P11500704318773140420

namespace A397333

/-- `T(n-1,k-1)+(row(n)+1+2*col(n))*T(n-1,k)+(row(n)+1+col(n))*(col(n)+1)*T(n-1,k+1)` -/
def P11500704318773140420.Spec : Prop :=
  ∀ n, (P11500704318773140420.a n : ℤ) = A397333 n

theorem P11500704318773140420.correct : P11500704318773140420.Spec := by
  intro n
  simp only [A397333, Nat.add_sub_cancel, A397333.P11500704318773140420.a, A397333.P1220039132598529868.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A397333

/-!
# A397335: Number of distinct final products of the prefix-constrained binary words counted by A394165.

The programs for A397335, there is no canonical definition to state claims against.
-/

/-! ## A397335.P13868797431290031915

`A122313(A048817(n+1))`
-/

namespace A397335.P13868797431290031915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122313 (A048817 (n + 1)).toNat

end

end A397335.P13868797431290031915

/-! ## A397335.P4373457252720839113

`∑[∑[A090048(A027457(n+1))]]`
-/

namespace A397335.P4373457252720839113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090048 (A027457 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397335.P4373457252720839113

/-! ## A397335.P15333810379236254067

`∑[A159632((n+1)²)+1]`
-/

namespace A397335.P15333810379236254067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159632 ((n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397335.P15333810379236254067

/-! ## A397335.P5754975201763823650

`A113321(A028445(n))`
-/

namespace A397335.P5754975201763823650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (A028445 n).toNat

end

end A397335.P5754975201763823650

/-! ## A397335.P15511102004515549087

`A131138(A233759(n+1))`
-/

namespace A397335.P15511102004515549087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A233759 (n + 1)).toNat

end

end A397335.P15511102004515549087

/-!
# A397339: Number of distinct triples (i,p,f) arising from a simple graph with n edges, where i, p and f count the edges having 0, 1, and 2 endpoints of degree greater than 1, respectively.

The programs for A397339, the canonical program `A397339.P368990297149327062` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397339 has offset 1).

The definition of A397339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397339.P368990297149327062

`ogf((1-x+2x^2-x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397339

/-- `ogf((1-x+2x^2-x^4)/(1-3x+3x^2-x^3))` -/
def P368990297149327062.Spec : Prop :=
  ∀ n, P368990297149327062.a n = A397339 (n + 1)

theorem P368990297149327062.correct : P368990297149327062.Spec := by
  intro n
  simp only [A397339, Nat.add_sub_cancel]

end A397339

/-! ## A397339.P3847760237968797072

`a(n-1)+n+1+1` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A397339.P3847760237968797072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (n + 1) + 1

end

end A397339.P3847760237968797072

namespace A397339

/-- `a(n-1)+n+1+1` -/
def P3847760237968797072.Spec : Prop :=
  ∀ n, (P3847760237968797072.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P2865916836967309939

`∑[2-C(2, n)+n]`
-/

namespace A397339.P2865916836967309939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.choose 2 n : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P2865916836967309939

namespace A397339

/-- `∑[2-C(2, n)+n]` -/
def P2865916836967309939.Spec : Prop :=
  ∀ n, P2865916836967309939.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P5245078922307584820

`∑[xor(1, 3%(n+1))+n]`
-/

namespace A397339.P5245078922307584820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 % (n + 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P5245078922307584820

namespace A397339

/-- `∑[xor(1, 3%(n+1))+n]` -/
def P5245078922307584820.Spec : Prop :=
  ∀ n, (P5245078922307584820.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P12630558809970207643

`∑[xor(n+1, C(2, n))+1]`
-/

namespace A397339.P12630558809970207643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.choose 2 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P12630558809970207643

namespace A397339

/-- `∑[xor(n+1, C(2, n))+1]` -/
def P12630558809970207643.Spec : Prop :=
  ∀ n, (P12630558809970207643.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P3228208520485031818

`∑[a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397339.P3228208520485031818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P3228208520485031818

namespace A397339

/-- `∑[a(n-1)+1]` -/
def P3228208520485031818.Spec : Prop :=
  ∀ n, (P3228208520485031818.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P14135761489011884807

`a(n-1)+n+2` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A397339.P14135761489011884807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (n + 2)

end

end A397339.P14135761489011884807

namespace A397339

/-- `a(n-1)+n+2` -/
def P14135761489011884807.Spec : Prop :=
  ∀ n, (P14135761489011884807.a n : ℤ) = A397339 (n + 1)

end A397339

/-! ## A397339.P789469491172406545

`∑[2*a(n-1)-n]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397339.P789469491172406545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  2 * f1 (n - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P789469491172406545

namespace A397339

/-- `∑[2*a(n-1)-n]` -/
def P789469491172406545.Spec : Prop :=
  ∀ n, P789469491172406545.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P2343408767620138822

`∑[floor(a(n-1)²/n)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A397339.P2343408767620138822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  ⌊(f1 (n - 1) ^ 2 : ℚ) / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P2343408767620138822

namespace A397339

/-- `∑[floor(a(n-1)²/n)]` -/
def P2343408767620138822.Spec : Prop :=
  ∀ n, P2343408767620138822.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P9424904542439405045

`4-∑[floor(a(n-1)-4/n)]` with `a(0)=3`
-/

namespace A397339.P9424904542439405045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) - 4 / (n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P9424904542439405045

namespace A397339

/-- `4-∑[floor(a(n-1)-4/n)]` -/
def P9424904542439405045.Spec : Prop :=
  ∀ n, P9424904542439405045.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P18353336519351717552

`2-floor(floor(2/n-n)-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A397339.P18353336519351717552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (⌊2 / (n : ℚ) - (n : ℚ)⌋ - a (n - 1))

end

end A397339.P18353336519351717552

namespace A397339

/-- `2-floor(floor(2/n-n)-a(n-1))` -/
def P18353336519351717552.Spec : Prop :=
  ∀ n, P18353336519351717552.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P531474505625705032

`∑[n+2-floor((n+1)/∑[(n-1)²])]`
-/

namespace A397339.P531474505625705032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - ⌊(n + 1 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A397339.P531474505625705032

namespace A397339

/-- `∑[n+2-floor((n+1)/∑[(n-1)²])]` -/
def P531474505625705032.Spec : Prop :=
  ∀ n, P531474505625705032.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P14949017895780929645

`A212342(n)+A004273(n)`
-/

namespace A397339.P14949017895780929645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 n + A004273 n

end

end A397339.P14949017895780929645

namespace A397339

/-- `A212342(n)+A004273(n)` -/
def P14949017895780929645.Spec : Prop :=
  ∀ n, P14949017895780929645.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P15284745776481647372

`A027379(n)-A130130(n)`
-/

namespace A397339.P15284745776481647372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027379 n - A130130 n

end

end A397339.P15284745776481647372

namespace A397339

/-- `A027379(n)-A130130(n)` -/
def P15284745776481647372.Spec : Prop :=
  ∀ n, P15284745776481647372.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P12087370449744002238

`A267874(n)-A161680(n)`
-/

namespace A397339.P12087370449744002238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267874 n - A161680 n

end

end A397339.P12087370449744002238

namespace A397339

/-- `A267874(n)-A161680(n)` -/
def P12087370449744002238.Spec : Prop :=
  ∀ n, P12087370449744002238.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P11725129999952751572

`A265284(n)-A267530(n)`
-/

namespace A397339.P11725129999952751572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265284 n - A267530 n

end

end A397339.P11725129999952751572

namespace A397339

/-- `A265284(n)-A267530(n)` -/
def P11725129999952751572.Spec : Prop :=
  ∀ n, P11725129999952751572.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P12482456229402234322

`A179865(n+1)+A004275(n)`
-/

namespace A397339.P12482456229402234322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) + A004275 n

end

end A397339.P12482456229402234322

namespace A397339

/-- `A179865(n+1)+A004275(n)` -/
def P12482456229402234322.Spec : Prop :=
  ∀ n, P12482456229402234322.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P9438547013447795648

`A161680(n)+A033627(n+1)`
-/

namespace A397339.P9438547013447795648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A033627 (n + 1)

end

end A397339.P9438547013447795648

namespace A397339

/-- `A161680(n)+A033627(n+1)` -/
def P9438547013447795648.Spec : Prop :=
  ∀ n, P9438547013447795648.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P10898093545456250052

`A186783(n+1)+A092535(n)`
-/

namespace A397339.P10898093545456250052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1) + A092535 n

end

end A397339.P10898093545456250052

namespace A397339

/-- `A186783(n+1)+A092535(n)` -/
def P10898093545456250052.Spec : Prop :=
  ∀ n, P10898093545456250052.a n = A397339 (n + 1)

end A397339

/-! ## A397339.P17450478859204286383

`A014206(n)-A016028(n+1)`
-/

namespace A397339.P17450478859204286383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n - A016028 (n + 1)

end

end A397339.P17450478859204286383

namespace A397339

/-- `A014206(n)-A016028(n+1)` -/
def P17450478859204286383.Spec : Prop :=
  ∀ n, P17450478859204286383.a n = A397339 (n + 1)

end A397339

/-!
# A397341: a(1) = 1; for n > 1, a(n) is the concatenation of a(n-1) and the smallest prime p such that the concatenation a(n-1) | p is prime.

The programs for A397341, there is no canonical definition to state claims against.
-/

/-! ## A397341.P12082848265943523112

`A089777(a(n-1))` with `a(0)=1`
-/

namespace A397341.P12082848265943523112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A089777 (a (n - 1)).toNat

end

end A397341.P12082848265943523112

/-!
# A397344: a(n) is the first prime p such that A091633(n) is the concatenation of the last digits of consecutive primes starting with p.

The programs for A397344, there is no canonical definition to state claims against.
-/

/-! ## A397344.P10007569966260336227

`A397425(∑[n+1])`
-/

namespace A397344.P10007569966260336227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397425 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397344.P10007569966260336227

/-!
# A397346: O.g.f. satisfies A(x) = exp( x + Sum_{n>=2} (2*n^2-1) * a(n)*x^n / (2*n^2) ).

The programs for A397346, there is no canonical definition to state claims against.
-/

/-! ## A397346.P1673445807635129261

`A000010(A251577(n)+A005043(n))`
-/

namespace A397346.P1673445807635129261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A251577 n + A005043 n).toNat

end

end A397346.P1673445807635129261

/-!
# A397351: Central terms of triangle A397350.

The programs for A397351, there is no canonical definition to state claims against.
-/

/-! ## A397351.P3356063096406125083

`A397350((n+1)²+n²)`
-/

namespace A397351.P3356063096406125083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397350 ((n + 1) ^ 2 + n ^ 2)

end

end A397351.P3356063096406125083

/-!
# A397352: E.g.f. A(x) satisfies Sum_{n>=0} 2^n * (A(x)^n - x)^n / n! = 1.

The programs for A397352, there is no canonical definition to state claims against.
-/

/-! ## A397352.P2777304155023015837

`∑{#}[n, 2^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397352.P2777304155023015837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397352.P2777304155023015837

/-!
# A397353: E.g.f. A(x) satisfies Sum_{n>=0} 3^n * (A(x)^n - x)^n / n! = 1.

The programs for A397353, there is no canonical definition to state claims against.
-/

/-! ## A397353.P13227128854174122863

`∑{#}[n, 3^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397353.P13227128854174122863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397353.P13227128854174122863

/-!
# A397354: E.g.f. A(x) satisfies Sum_{n>=0} 4^n * (A(x)^n - x)^n / n! = 1.

The programs for A397354, there is no canonical definition to state claims against.
-/

/-! ## A397354.P2336510548650215097

`∑{#}[n, 4^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397354.P2336510548650215097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (4 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397354.P2336510548650215097

/-!
# A397355: E.g.f. A(x) satisfies Sum_{n>=0} 5^n * (A(x)^n - x)^n / n! = 1.

The programs for A397355, there is no canonical definition to state claims against.
-/

/-! ## A397355.P11989142913677952607

`∑{#}[n, 5^#*A397350(C(n+1, 2)+#+1)]`
-/

namespace A397355.P11989142913677952607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (5 ^ k : ℤ) * A397350 (Nat.choose (n + 1) 2 + k + 1)

end

end A397355.P11989142913677952607

/-!
# A397357: Number of permutations p of [n] such that |p(i)-i| >= 8 for all i in [n].

The programs for A397357, there is no canonical definition to state claims against.
-/

/-! ## A397357.P12186960741229248379

`A088155(n)^floor((A037276(n+2)-col(n))/2)`
-/

namespace A397357.P12186960741229248379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088155 n : ℚ) ^ (⌊(A037276 (n + 2) - (SequenceMachineLib.triCol n : ℤ) : ℚ) / 2⌋ : ℤ)

end

end A397357.P12186960741229248379

/-! ## A397357.P1800921786325006200

`A088155(n)^A000069(A110333(n))`
-/

namespace A397357.P1800921786325006200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088155 n : ℚ) ^ (A000069 (A110333 n).toNat : ℤ)

end

end A397357.P1800921786325006200

/-! ## A397357.P9839689937564476621

`A088155(n)^A027907(A211267(n+1))`
-/

namespace A397357.P9839689937564476621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088155 n : ℚ) ^ (A027907 (A211267 (n + 1)).toNat : ℤ)

end

end A397357.P9839689937564476621

/-! ## A397357.P8389879903122094777

`A026741(A088155(n)^A336926(n+2))`
-/

namespace A397357.P8389879903122094777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A088155 n : ℚ) ^ (A336926 (n + 2) : ℤ))).toNat

end

end A397357.P8389879903122094777

/-! ## A397357.P1364888761900010458

`A110654(A065685(n+2)^A006666(3*n+1))`
-/

namespace A397357.P1364888761900010458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A065685 (n + 2) : ℚ) ^ (A006666 (3 * n + 1) : ℤ))).toNat

end

end A397357.P1364888761900010458

/-!
# A397359: Number of permutations p of [n] such that min_{i=1..n} |p(i)-i| = 2.

The programs for A397359, there is no canonical definition to state claims against.
-/

/-! ## A397359.P6138343741058259004

`A001883(n)-A075851(n)`
-/

namespace A397359.P6138343741058259004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001883 n - A075851 n

end

end A397359.P6138343741058259004

/-! ## A397359.P14067294118566427897

`A068106(∑[n])-A296050(n)-A075851(n)`
-/

namespace A397359.P14067294118566427897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (∑ j ∈ Finset.range (n + 1), f1 j) - A296050 n - A075851 n

end

end A397359.P14067294118566427897

/-! ## A397359.P7320241271213003266

`A060475(A000096(n))-A296050(n)-A075851(n)`
-/

namespace A397359.P7320241271213003266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 (A000096 n).toNat - A296050 n - A075851 n

end

end A397359.P7320241271213003266

/-! ## A397359.P9786375606644085997

`A323671(A000217(n))-A075851(n)`
-/

namespace A397359.P9786375606644085997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323671 (A000217 n).toNat - A075851 n

end

end A397359.P9786375606644085997

/-!
# A397360: Number of permutations p of [n] such that min_{i=1..n} |p(i)-i| = 3.

The programs for A397360, there is no canonical definition to state claims against.
-/

/-! ## A397360.P11733824586461258914

`A075851(n)-A075852(n)`
-/

namespace A397360.P11733824586461258914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075851 n - A075852 n

end

end A397360.P11733824586461258914

/-! ## A397360.P13863750926806242440

`A241062(A130581(n))`
-/

namespace A397360.P13863750926806242440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241062 (A130581 n).toNat

end

end A397360.P13863750926806242440

/-! ## A397360.P7583733942499987133

`A036861(A373080(n))`
-/

namespace A397360.P7583733942499987133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036861 (A373080 n).toNat

end

end A397360.P7583733942499987133

/-! ## A397360.P11594294087083605521

`A352493(A178964(n))`
-/

namespace A397360.P11594294087083605521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A178964 n).toNat

end

end A397360.P11594294087083605521

/-! ## A397360.P13347017779513651744

`A241062(A320964(n))`
-/

namespace A397360.P13347017779513651744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241062 (A320964 n).toNat

end

end A397360.P13347017779513651744

/-!
# A397361: Number of compositions of n^2 into n parts such that every initial segment has an integer average.

The programs for A397361, there is no canonical definition to state claims against.
-/

/-! ## A397361.P17414516629271928040

`A192740(A108555(n))`
-/

namespace A397361.P17414516629271928040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192740 (A108555 n).toNat

end

end A397361.P17414516629271928040

/-!
# A397362: Triangle read by rows: T(n,k) is the number of words of length n over an infinite alphabet with c(1) = k, such that all prefixes satisfy c(i) >= c(j) if f(i) < f(j) where c(i) is the number of occurrences of the letter i and f(i) = floor(sqrt(2*i) + 1/2).

The programs for A397362, there is no canonical definition to state claims against.
-/

/-! ## A397362.P5292667088874238877

`A055205(A000005(n+2)^A084938(n))`
-/

namespace A397362.P5292667088874238877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055205 (SequenceMachineLib.roundAway ((A000005 (n + 2) : ℚ) ^ (A084938 n : ℤ))).toNat

end

end A397362.P5292667088874238877

/-! ## A397362.P222068675636463828

`A084938(n)*A262618(A005126(n))`
-/

namespace A397362.P222068675636463828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A262618 (A005126 n).toNat

end

end A397362.P222068675636463828

/-! ## A397362.P3657525347305361800

`A084938(n)*A294336(A124419(n))`
-/

namespace A397362.P3657525347305361800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n * A294336 (A124419 n).toNat

end

end A397362.P3657525347305361800

/-! ## A397362.P5280810657623276237

`A000034(A110775(n+1))*A084938(n)`
-/

namespace A397362.P5280810657623276237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A110775 (n + 1)).toNat * A084938 n

end

end A397362.P5280810657623276237

/-! ## A397362.P15581419989041870158

`A001876(A114043(n+1))*A084938(n)`
-/

namespace A397362.P15581419989041870158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A114043 (n + 1)).toNat * A084938 n

end

end A397362.P15581419989041870158

/-!
# A397371: a(n) = n times the square root of the smallest square number greater than n.

The programs for A397371, the canonical program `A397371.P7818601092111456214` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397371 has offset 0).

The definition of A397371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397371.P7818601092111456214

`n+n*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397371

/-- `n+n*floor(sqrt(n))` -/
def P7818601092111456214.Spec : Prop :=
  ∀ n, (P7818601092111456214.a n : ℤ) = A397371 n

theorem P7818601092111456214.correct : P7818601092111456214.Spec := by
  intro n
  simp only [A397371]

end A397371

/-! ## A397371.P428656627210374540

`n*∑[char[col(n)²]]`
-/

namespace A397371.P428656627210374540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P428656627210374540

namespace A397371

/-- `n*∑[char[col(n)²]]` -/
def P428656627210374540.Spec : Prop :=
  ∀ n, (P428656627210374540.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P15970026211629965520

`n*∑[and(1, char[n²])]`
-/

namespace A397371.P15970026211629965520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P15970026211629965520

namespace A397371

/-- `n*∑[and(1, char[n²])]` -/
def P15970026211629965520.Spec : Prop :=
  ∀ n, (P15970026211629965520.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P13140124806812716118

`∑[char[xor(1, n)²]]*n`
-/

namespace A397371.P13140124806812716118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * n

end

end A397371.P13140124806812716118

namespace A397371

/-- `∑[char[xor(1, n)²]]*n` -/
def P13140124806812716118.Spec : Prop :=
  ∀ n, (P13140124806812716118.a n : ℤ) = A397371 n

end A397371

/-! ## A397371.P3627580504681668101

`ceil(sqrt(C(n+1, n)))*n`
-/

namespace A397371.P3627580504681668101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.choose (n + 1) n : ℝ)⌉ * (n : ℤ)

end

end A397371.P3627580504681668101

namespace A397371

/-- `ceil(sqrt(C(n+1, n)))*n` -/
def P3627580504681668101.Spec : Prop :=
  ∀ n, P3627580504681668101.a n = A397371 n

end A397371

/-! ## A397371.P9455578873347543711

`n*∑[A010052(n)]`
-/

namespace A397371.P9455578873347543711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397371.P9455578873347543711

namespace A397371

/-- `n*∑[A010052(n)]` -/
def P9455578873347543711.Spec : Prop :=
  ∀ n, P9455578873347543711.a n = A397371 n

end A397371

/-! ## A397371.P618543011528707117

`n*Δ[A327672(n)]`
-/

namespace A397371.P618543011528707117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A397371.P618543011528707117

namespace A397371

/-- `n*Δ[A327672(n)]` -/
def P618543011528707117.Spec : Prop :=
  ∀ n, P618543011528707117.a n = A397371 n

end A397371

/-! ## A397371.P15771830898800996428

`n*(A000196(n)+1)`
-/

namespace A397371.P15771830898800996428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000196 n + 1)

end

end A397371.P15771830898800996428

namespace A397371

/-- `n*(A000196(n)+1)` -/
def P15771830898800996428.Spec : Prop :=
  ∀ n, P15771830898800996428.a n = A397371 n

theorem P15771830898800996428.correct : P15771830898800996428.Spec := by
  intro n
  simp only [A397371, Nat.add_sub_cancel, A397371.P15771830898800996428.a, A397371.P7818601092111456214.a, A000196, A000196.P15434771586934192083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397371

/-! ## A397371.P7564555942261012794

`n*A003059(1+n)`
-/

namespace A397371.P7564555942261012794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003059 (1 + n)

end

end A397371.P7564555942261012794

namespace A397371

/-- `n*A003059(1+n)` -/
def P7564555942261012794.Spec : Prop :=
  ∀ n, P7564555942261012794.a n = A397371 n

end A397371

/-! ## A397371.P12314399874488906994

`n*sqrt(A048761(n+1))`
-/

namespace A397371.P12314399874488906994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A048761 (n + 1) : ℝ)

end

end A397371.P12314399874488906994

namespace A397371

/-- `n*sqrt(A048761(n+1))` -/
def P12314399874488906994.Spec : Prop :=
  ∀ n, P12314399874488906994.a n = (A397371 n : ℝ)

end A397371

/-! ## A397371.P1185423732692468654

`n/2*A130819(n+1)`
-/

namespace A397371.P1185423732692468654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A130819 (n + 1) : ℚ)

end

end A397371.P1185423732692468654

namespace A397371

/-- `n/2*A130819(n+1)` -/
def P1185423732692468654.Spec : Prop :=
  ∀ n, P1185423732692468654.a n = (A397371 n : ℚ)

theorem P1185423732692468654.correct : P1185423732692468654.Spec := by
  intro n
  simp only [A397371, Nat.add_sub_cancel, A397371.P1185423732692468654.a, A397371.P7818601092111456214.a, A130819, A130819.P5334675930455341645.a, A001650, A001650.P4146515097473183330.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397371

/-! ## A397371.P6246705155843084068

`n*(n+1-A028391(n))`
-/

namespace A397371.P6246705155843084068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n + 1 : ℤ) - A028391 n)

end

end A397371.P6246705155843084068

namespace A397371

/-- `n*(n+1-A028391(n))` -/
def P6246705155843084068.Spec : Prop :=
  ∀ n, P6246705155843084068.a n = A397371 n

theorem P6246705155843084068.correct : P6246705155843084068.Spec := by
  intro n
  simp only [A397371, Nat.add_sub_cancel, A397371.P6246705155843084068.a, A397371.P7818601092111456214.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A397371

/-! ## A397371.P13388509449700799636

`n*(A078358(n+1)-n)`
-/

namespace A397371.P13388509449700799636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A078358 (n + 1) - (n : ℤ))

end

end A397371.P13388509449700799636

namespace A397371

/-- `n*(A078358(n+1)-n)` -/
def P13388509449700799636.Spec : Prop :=
  ∀ n, P13388509449700799636.a n = A397371 n

end A397371

/-! ## A397371.P17285739894899796053

`n*(A135668(n+1)-(n+1))`
-/

namespace A397371.P17285739894899796053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A135668 (n + 1) - (n + 1 : ℤ))

end

end A397371.P17285739894899796053

namespace A397371

/-- `n*(A135668(n+1)-(n+1))` -/
def P17285739894899796053.Spec : Prop :=
  ∀ n, P17285739894899796053.a n = A397371 n

end A397371

/-! ## A397371.P8336056732377649506

`n*A008619(A000267(n))`
-/

namespace A397371.P8336056732377649506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008619 (A000267 n).toNat

end

end A397371.P8336056732377649506

namespace A397371

/-- `n*A008619(A000267(n))` -/
def P8336056732377649506.Spec : Prop :=
  ∀ n, P8336056732377649506.a n = A397371 n

end A397371

/-! ## A397371.P1688727791089718991

`n*A004526(A307136(n+1))`
-/

namespace A397371.P1688727791089718991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004526 (A307136 (n + 1)).toNat

end

end A397371.P1688727791089718991

namespace A397371

/-- `n*A004526(A307136(n+1))` -/
def P1688727791089718991.Spec : Prop :=
  ∀ n, P1688727791089718991.a n = A397371 n

end A397371

/-! ## A397371.P10223660797555021422

`n*A135034(n+1)`
-/

namespace A397371.P10223660797555021422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A135034 (n + 1)

end

end A397371.P10223660797555021422

namespace A397371

/-- `n*A135034(n+1)` -/
def P10223660797555021422.Spec : Prop :=
  ∀ n, P10223660797555021422.a n = A397371 n

end A397371

/-! ## A397371.P15095794421241453160

`n*A000194(A000037(n+1))`
-/

namespace A397371.P15095794421241453160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000194 (A000037 (n + 1)).toNat

end

end A397371.P15095794421241453160

namespace A397371

/-- `n*A000194(A000037(n+1))` -/
def P15095794421241453160.Spec : Prop :=
  ∀ n, P15095794421241453160.a n = A397371 n

end A397371

/-! ## A397371.P6345950026187511235

`n*A000194(A028392(n+1))`
-/

namespace A397371.P6345950026187511235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000194 (A028392 (n + 1)).toNat

end

end A397371.P6345950026187511235

namespace A397371

/-- `n*A000194(A028392(n+1))` -/
def P6345950026187511235.Spec : Prop :=
  ∀ n, P6345950026187511235.a n = A397371 n

end A397371

/-! ## A397371.P10426759151357911481

`n*A000194(A135668(n+1))`
-/

namespace A397371.P10426759151357911481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000194 (A135668 (n + 1)).toNat

end

end A397371.P10426759151357911481

namespace A397371

/-- `n*A000194(A135668(n+1))` -/
def P10426759151357911481.Spec : Prop :=
  ∀ n, P10426759151357911481.a n = A397371 n

end A397371

/-!
# A397379: Number of compositions (c_1,...,c_k) of n such that gcd(c_i,i)=1 for all i.

The programs for A397379, there is no canonical definition to state claims against.
-/

/-! ## A397379.P557704341160869482

`A101776(A167910(n))`
-/

namespace A397379.P557704341160869482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (A167910 n).toNat

end

end A397379.P557704341160869482

/-! ## A397379.P5329233460306112741

`A166018(A374746(n))`
-/

namespace A397379.P5329233460306112741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166018 (A374746 n).toNat

end

end A397379.P5329233460306112741

/-! ## A397379.P14910926037103964941

`A295866(A083844(n+1))`
-/

namespace A397379.P14910926037103964941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A083844 (n + 1)).toNat

end

end A397379.P14910926037103964941

/-! ## A397379.P11518334366337954615

`A358849(A343161(n+2))`
-/

namespace A397379.P11518334366337954615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358849 (A343161 (n + 2)).toNat

end

end A397379.P11518334366337954615

/-! ## A397379.P18207925982712246169

`A341023(A073776(n))+A073776(n)`
-/

namespace A397379.P18207925982712246169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341023 ((A073776 n).toNat + 56) + A073776 n

end

end A397379.P18207925982712246169

/-!
# A397380: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * (binomial(n+2*k,k) + binomial(n+2*k,k-1)).

The programs for A397380, there is no canonical definition to state claims against.
-/

/-! ## A397380.P3500654932573034132

`A243116(n)+A397383(n)`
-/

namespace A397380.P3500654932573034132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243116 n + A397383 n

end

end A397380.P3500654932573034132

/-!
# A397381: a(n) = Sum_{k=0..n} binomial(n+2*k,3*k) * (binomial(n+3*k,k) + binomial(n+3*k,k-1)).

The programs for A397381, there is no canonical definition to state claims against.
-/

/-! ## A397381.P6518720427031428030

`A378402(n)+A397384(n)`
-/

namespace A397381.P6518720427031428030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378402 n + A397384 n

end

end A397381.P6518720427031428030

/-!
# A397382: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * (binomial(n+4*k,k) + binomial(n+4*k,k-1)).

The programs for A397382, there is no canonical definition to state claims against.
-/

/-! ## A397382.P11712692821197948964

`A397386(n)+A397385(n)`
-/

namespace A397382.P11712692821197948964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397386 n + A397385 n

end

end A397382.P11712692821197948964

/-!
# A397383: a(n) = Sum_{k=0..n} binomial(n+k,2*k) * binomial(n+2*k,k-1).

The programs for A397383, there is no canonical definition to state claims against.
-/

/-! ## A397383.P13808507802503357425

`A051220(A149857(n))`
-/

namespace A397383.P13808507802503357425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051220 (A149857 n).toNat

end

end A397383.P13808507802503357425

/-!
# A397384: a(n) = Sum_{k=0..n} binomial(n+2*k,3*k) * binomial(n+3*k,k-1).

The programs for A397384, there is no canonical definition to state claims against.
-/

/-! ## A397384.P14364369720857332236

`A397381(n)-A378402(n)`
-/

namespace A397384.P14364369720857332236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397381 n - A378402 n

end

end A397384.P14364369720857332236

/-!
# A397385: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * binomial(n+4*k,k-1).

The programs for A397385, there is no canonical definition to state claims against.
-/

/-! ## A397385.P8415071436777612602

`A397382(n)-A397386(n)`
-/

namespace A397385.P8415071436777612602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397382 n - A397386 n

end

end A397385.P8415071436777612602

/-!
# A397386: a(n) = Sum_{k=0..n} binomial(n+3*k,4*k) * binomial(n+4*k,k).

The programs for A397386, the canonical program `A397386.P7285958036870640858` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397386 has offset 0).

The definition of A397386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]` (program `A397386.P7285958036870640858`, by `A397386.P7285958036870640858.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A397386.P7285958036870640858

`∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A397386

/-- `∑{#}[n, C(n+3*#, 4*#)*C(n+4*#, #)]` -/
def P7285958036870640858.Spec : Prop :=
  ∀ n, (P7285958036870640858.a n : ℤ) = A397386 n

theorem P7285958036870640858.correct : P7285958036870640858.Spec := by
  intro n
  simp only [A397386]

end A397386

/-! ## A397386.P16964936943660944577

`A397385(n)+A396286(n)`
-/

namespace A397386.P16964936943660944577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397385 n + A396286 n

end

end A397386.P16964936943660944577

namespace A397386

/-- `A397385(n)+A396286(n)` -/
def P16964936943660944577.Spec : Prop :=
  ∀ n, P16964936943660944577.a n = A397386 n

end A397386

/-!
# A397387: Sophie Germain cyclic numbers: numbers k such that k and 2*k+1 are both cyclic numbers (A003277).

The programs for A397387, there is no canonical definition to state claims against.
-/

/-! ## A397387.P15693558162220358477

`record[A195637(n+1)%A195637(2*n+3)]`
-/

namespace A397387.P15693558162220358477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195637 (n + 1)) (A195637 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A397387.P15693558162220358477

/-! ## A397387.P14705493197680438357

`eq[A000001(n), A002061(A000001(2*n+1))]`
-/

namespace A397387.P14705493197680438357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000001 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P14705493197680438357

/-! ## A397387.P12284927068996626745

`eq[A000001(n), A000032(A000001(2*n+1))]`
-/

namespace A397387.P12284927068996626745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A000001 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P12284927068996626745

/-! ## A397387.P9902676392066906377

`eq[A000001(n), A001694(A297420(2*n+1))]`
-/

namespace A397387.P9902676392066906377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A297420 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P9902676392066906377

/-! ## A397387.P9509288100424230984

`eq[A000005(A297420(2*n+1)), A297420(n)]`
-/

namespace A397387.P9509288100424230984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A297420 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P9509288100424230984

/-! ## A397387.P8079035443137233372

`eq[A000001(n), A000217(A000001(2*n+1)²)]`
-/

namespace A397387.P8079035443137233372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000001 (2 * n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A397387.P8079035443137233372

/-!
# A397389: a(n) is the y-coordinate of a knight after moving n steps according to the rules defined in A397388.

The programs for A397389, there is no canonical definition to state claims against.
-/

/-! ## A397389.P6192791340554075741

`A074286(A024365(3*(n+1)))%A179104(n+1)`
-/

namespace A397389.P6192791340554075741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074286 (A024365 (3 * (n + 1))).toNat) (A179104 (n + 1))

end

end A397389.P6192791340554075741

/-!
# A397397: a(n) is the y-coordinate of a knight after moving n steps according to the rules defined in A397396.

The programs for A397397, there is no canonical definition to state claims against.
-/

/-! ## A397397.P9810555531501805514

`A397395(n)-A278085(A090989(n+1))`
-/

namespace A397397.P9810555531501805514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397395 n - A278085 (A090989 (n + 1)).toNat

end

end A397397.P9810555531501805514

/-!
# A397398: a(n) is the x-coordinate of a knight after moving n steps according to the rules defined in A397392, with the last tiebreaking rule modified so that the colexicographically least point is chosen instead of the lexicographically largest point.

The programs for A397398, there is no canonical definition to state claims against.
-/

/-! ## A397398.P12345476757223969700

`A010815(A008631(2*n+3))-A397392(n)`
-/

namespace A397398.P12345476757223969700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A008631 (2 * n + 3)).toNat - A397392 n

end

end A397398.P12345476757223969700

