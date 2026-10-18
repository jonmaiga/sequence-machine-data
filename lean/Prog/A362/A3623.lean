import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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

/-!
# A362300: a(n) = n! * Sum_{k=0..floor(n/3)} (n/3)^k * binomial(n-2*k,k)/(n-2*k)!.

The programs for A362300, there is no canonical definition to state claims against.
-/

/-! ## A362300.P3694164411401780384

`A362043(A062725(n))`
-/

namespace A362300.P3694164411401780384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A062725 n).toNat

end

end A362300.P3694164411401780384

/-! ## A362300.P7297339052530958951

`A362043(A000217(3*n)+n)`
-/

namespace A362300.P7297339052530958951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A362300.P7297339052530958951

/-! ## A362300.P15360840365475789739

`A362043(A055998(n)+(2*n)²)`
-/

namespace A362300.P15360840365475789739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A055998 n + ((2 * n) ^ 2 : ℤ)).toNat

end

end A362300.P15360840365475789739

/-! ## A362300.P8977624366126237106

`A362043(A002943(n)+A000217(n))`
-/

namespace A362300.P8977624366126237106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362043 (A002943 n + A000217 n).toNat

end

end A362300.P8977624366126237106

/-!
# A362301: a(n) = n! * Sum_{k=0..floor(n/3)} n^k * binomial(n-2*k,k)/(n-2*k)!.

The programs for A362301, there is no canonical definition to state claims against.
-/

/-! ## A362301.P4705977780547196856

`A331425(A370212(n))`
-/

namespace A362301.P4705977780547196856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A370212 n).toNat

end

end A362301.P4705977780547196856

/-! ## A362301.P5394230023033750551

`A172237(A019458(n+1))`
-/

namespace A362301.P5394230023033750551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172237 (A019458 (n + 1)).toNat

end

end A362301.P5394230023033750551

/-!
# A362302: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = n! * Sum_{j=0..floor(n/3)} (-k/6)^j * binomial(n-2*j,j)/(n-2*j)!.

The programs for A362302, there is no canonical definition to state claims against.
-/

/-! ## A362302.P11794149269104428833

`1-A351831(A362043(n))`
-/

namespace A362302.P11794149269104428833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A351831 (A362043 n).toNat

end

end A362302.P11794149269104428833

/-! ## A362302.P1914612862961062614

`A030057(A085104(n+1))-A362043(n)`
-/

namespace A362302.P1914612862961062614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030057 (A085104 (n + 1)).toNat - A362043 n

end

end A362302.P1914612862961062614

/-! ## A362302.P12988707112798792110

`A048272(A142114(n+1))-A362043(n)`
-/

namespace A362302.P12988707112798792110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A142114 (n + 1)).toNat - A362043 n

end

end A362302.P12988707112798792110

/-! ## A362302.P2481960287920416755

`A287841(A085041(n+1))-A362043(n)`
-/

namespace A362302.P2481960287920416755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287841 (A085041 (n + 1)).toNat - A362043 n

end

end A362302.P2481960287920416755

/-! ## A362302.P4228321957844654525

`A130130(A353790(n+2))-A362043(n)`
-/

namespace A362302.P4228321957844654525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A353790 (n + 2)).toNat - A362043 n

end

end A362302.P4228321957844654525

/-!
# A362303: a(n) = n! * Sum_{k=0..floor(n/3)} (-n/6)^k * binomial(n-2*k,k)/(n-2*k)!.

The programs for A362303, there is no canonical definition to state claims against.
-/

/-! ## A362303.P9538649055125587021

`A362302(∑[4*n])`
-/

namespace A362303.P9538649055125587021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362303.P9538649055125587021

/-! ## A362303.P10717411579882801563

`A362302(A046092(n))%A246236(n+4)`
-/

namespace A362303.P10717411579882801563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362302 (A046092 n).toNat) (A246236 (n + 4))

end

end A362303.P10717411579882801563

/-! ## A362303.P16012984216579743167

`A362302(A046092(n))^A370240(2*n+5)`
-/

namespace A362303.P16012984216579743167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362302 (A046092 n).toNat : ℚ) ^ (A370240 (2 * n + 5) : ℤ)

end

end A362303.P16012984216579743167

/-!
# A362304: a(n) = n! * Sum_{k=0..floor(n/3)} (-n/3)^k * binomial(n-2*k,k)/(n-2*k)!.

The programs for A362304, there is no canonical definition to state claims against.
-/

/-! ## A362304.P8849808155238508851

`A362302(A062725(n))`
-/

namespace A362304.P8849808155238508851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A062725 n).toNat

end

end A362304.P8849808155238508851

/-! ## A362304.P3452349851274761534

`A362302(A000217(3*n)+n)`
-/

namespace A362304.P3452349851274761534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A000217 (3 * n) + (n : ℤ)).toNat

end

end A362304.P3452349851274761534

/-! ## A362304.P15205784624447194277

`A362302(A115067(3*n+1)/3)`
-/

namespace A362304.P15205784624447194277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (SequenceMachineLib.roundAway ((A115067 (3 * n + 1) : ℚ) / 3)).toNat

end

end A362304.P15205784624447194277

/-! ## A362304.P16502942092203713266

`A362302(A002943(n)+A000217(n))`
-/

namespace A362304.P16502942092203713266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A002943 n + A000217 n).toNat

end

end A362304.P16502942092203713266

/-! ## A362304.P157146096307774027

`A362302(A000124(3*n+1)-A005843(n+1))`
-/

namespace A362304.P157146096307774027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (A000124 (3 * n + 1) - A005843 (n + 1)).toNat

end

end A362304.P157146096307774027

/-!
# A362305: a(n) = n! * Sum_{k=0..floor(n/3)} (-n)^k * binomial(n-2*k,k)/(n-2*k)!.

The programs for A362305, there is no canonical definition to state claims against.
-/

/-! ## A362305.P4910484422783659971

`A022958(A362301(n))`
-/

namespace A362305.P4910484422783659971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A362301 n).toNat

end

end A362305.P4910484422783659971

/-! ## A362305.P1386569956800789154

`A024000(A362301(n)-1)`
-/

namespace A362305.P1386569956800789154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A362301 n - 1).toNat

end

end A362305.P1386569956800789154

/-!
# A362306: a(n) is the least squarefree semiprime > a(n-1) and coprime to a(n-1), with a(1) = 6.

The programs for A362306, there is no canonical definition to state claims against.
-/

/-! ## A362306.P130618078678012983

`A094548(a(n-1))` with `a(0)=6`
-/

namespace A362306.P130618078678012983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A094548 (a (n - 1)).toNat

end

end A362306.P130618078678012983

/-! ## A362306.P9845198584646677411

`A006881(A011531(n+1))%A273936(n+1)`
-/

namespace A362306.P9845198584646677411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006881 (A011531 (n + 1)).toNat) (A273936 (n + 1))

end

end A362306.P9845198584646677411

/-! ## A362306.P6625749585673951491

`A006881(A131835(n+1))%A242261(3*n+5)`
-/

namespace A362306.P6625749585673951491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006881 (A131835 (n + 1)).toNat) (A242261 (3 * n + 5))

end

end A362306.P6625749585673951491

/-! ## A362306.P8829040346418009877

`A006881(∑[A005169(2*(n+2))^(A037213(n)%2)])`
-/

namespace A362306.P8829040346418009877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005169 (2 * (n + 2)) : ℚ) ^ (Int.tmod (A037213 n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A362306.P8829040346418009877

/-!
# A362308: Triangle read by rows. Number of perfect matchings by number of connected components.

The programs for A362308, there is no canonical definition to state claims against.
-/

/-! ## A362308.P15502226983424401313

`A293881(n)+A002262(A083961(n+1))`
-/

namespace A362308.P15502226983424401313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 n + A002262 (A083961 (n + 1)).toNat

end

end A362308.P15502226983424401313

/-! ## A362308.P12429592332033109062

`A347635(A001987(n+1))+A293881(n)`
-/

namespace A362308.P12429592332033109062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347635 (A001987 (n + 1)).toNat + A293881 n

end

end A362308.P12429592332033109062

/-! ## A362308.P12872400395128323917

`A185285(n)-A185245(A255543(n+1))`
-/

namespace A362308.P12872400395128323917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185285 n - A185245 (A255543 (n + 1)).toNat

end

end A362308.P12872400395128323917

/-! ## A362308.P9766866595730800367

`A293881(n)+A161437(A161409(3*(n+1)))`
-/

namespace A362308.P9766866595730800367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 n + A161437 (A161409 (3 * (n + 1))).toNat

end

end A362308.P9766866595730800367

/-!
# A362309: Expansion of e.g.f. exp(x - x^3/3).

The programs for A362309, there is no canonical definition to state claims against.
-/

/-! ## A362309.P8790173605990830414

`A362302(∑[n+3])`
-/

namespace A362309.P8790173605990830414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362302 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362309.P8790173605990830414

/-!
# A362312: Sierpinski triangle read by rows and filled in the greedy way such that each row, each diagonal and each antidiagonal contains distinct nonnegative values.

The programs for A362312, there is no canonical definition to state claims against.
-/

/-! ## A362312.P3047786285682235837

`and(A100929(A312079(n)), A116619(n+1))`
-/

namespace A362312.P3047786285682235837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A100929 (A312079 n).toNat) (A116619 (n + 1))

end

end A362312.P3047786285682235837

/-!
# A362314: a(n) = n! * Sum_{k=0..floor(n/4)} (n/4)^k /(k! * (n-4*k)!).

The programs for A362314, there is no canonical definition to state claims against.
-/

/-! ## A362314.P2181703461625748903

`A002265(A362321(n))+1`
-/

namespace A362314.P2181703461625748903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A362321 n).toNat + 1

end

end A362314.P2181703461625748903

/-! ## A362314.P18055983103505931142

`A000265(A362321(n)+3)`
-/

namespace A362314.P18055983103505931142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A362321 n + 3).toNat

end

end A362314.P18055983103505931142

/-! ## A362314.P5169815902658995816

`A302044(A362321(n)+3)`
-/

namespace A362314.P5169815902658995816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A362321 n + 3).toNat

end

end A362314.P5169815902658995816

/-! ## A362314.P13584963136171403919

`A002265(or(4, A362321(n)))`
-/

namespace A362314.P13584963136171403919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lor 4 (A362321 n)).toNat

end

end A362314.P13584963136171403919

/-!
# A362315: a(n) = n! * Sum_{k=0..floor(n/4)} (-n/4)^k /(k! * (n-4*k)!).

The programs for A362315, there is no canonical definition to state claims against.
-/

/-! ## A362315.P12415500603589879903

`A022958(A362314(n))`
-/

namespace A362315.P12415500603589879903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022958 (A362314 n).toNat

end

end A362315.P12415500603589879903

/-! ## A362315.P11071351054693971956

`1-A002265(A362321(n))`
-/

namespace A362315.P11071351054693971956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002265 (A362321 n).toNat

end

end A362315.P11071351054693971956

/-! ## A362315.P2487355939603421004

`A024000(A362314(n)-1)`
-/

namespace A362315.P2487355939603421004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A362314 n - 1).toNat

end

end A362315.P2487355939603421004

/-! ## A362315.P6438009639381511849

`A022964(A362314(n)+6)`
-/

namespace A362315.P6438009639381511849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022964 (A362314 n + 6).toNat

end

end A362315.P6438009639381511849

/-!
# A362316: Expansion of e.g.f (exp(x)-1)*(exp(2*x)-1).

The programs for A362316, the canonical program `A362316.P6035728552831684486` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362316 has offset 0).

The definition of A362316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362316.P6035728552831684486

`3^n-or(1, 2^n)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362316

/-- `3^n-or(1, 2^n)` -/
def P6035728552831684486.Spec : Prop :=
  ∀ n, P6035728552831684486.a n = A362316 n

theorem P6035728552831684486.correct : P6035728552831684486.Spec := by
  intro n
  simp only [A362316]

end A362316

/-! ## A362316.P294522880856104276

`and(3^n-2^n, -2)`
-/

namespace A362316.P294522880856104276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (-2)

end

end A362316.P294522880856104276

namespace A362316

/-- `and(3^n-2^n, -2)` -/
def P294522880856104276.Spec : Prop :=
  ∀ n, P294522880856104276.a n = A362316 n

end A362316

/-! ## A362316.P1111412623019248189

`floor((sqrt(3)^n)²)-2^n`
-/

namespace A362316.P1111412623019248189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.sqrt (3 : ℝ) ^ n) ^ 2⌋ - (2 ^ n : ℤ)

end

end A362316.P1111412623019248189

namespace A362316

/-- `floor((sqrt(3)^n)²)-2^n` -/
def P1111412623019248189.Spec : Prop :=
  ∀ n, P1111412623019248189.a n = A362316 n

end A362316

/-! ## A362316.P7917851376239929857

`abs(3^n-2^n-ceil(abs(sin(n))))`
-/

namespace A362316.P7917851376239929857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((3 ^ n : ℤ) - (2 ^ n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉)|

end

end A362316.P7917851376239929857

namespace A362316

/-- `abs(3^n-2^n-ceil(abs(sin(n))))` -/
def P7917851376239929857.Spec : Prop :=
  ∀ n, P7917851376239929857.a n = A362316 n

end A362316

/-! ## A362316.P16456226327423091636

`A062157(n)*A083321(n)`
-/

namespace A362316.P16456226327423091636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A083321 n

end

end A362316.P16456226327423091636

namespace A362316

/-- `A062157(n)*A083321(n)` -/
def P16456226327423091636.Spec : Prop :=
  ∀ n, P16456226327423091636.a n = A362316 n

end A362316

/-! ## A362316.P5231669204681124894

`xor(A001047(n), A057427(n))`
-/

namespace A362316.P5231669204681124894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001047 n) (A057427 n)

end

end A362316.P5231669204681124894

namespace A362316

/-- `xor(A001047(n), A057427(n))` -/
def P5231669204681124894.Spec : Prop :=
  ∀ n, P5231669204681124894.a n = A362316 n

end A362316

/-! ## A362316.P16539813836502395759

`2*(A003462(n)-A131577(n))`
-/

namespace A362316.P16539813836502395759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003462 n - A131577 n)

end

end A362316.P16539813836502395759

namespace A362316

/-- `2*(A003462(n)-A131577(n))` -/
def P16539813836502395759.Spec : Prop :=
  ∀ n, P16539813836502395759.a n = A362316 n

end A362316

/-! ## A362316.P3746941966196732458

`Δ[A000392(n+1)-A289207(n+1)]`
-/

namespace A362316.P3746941966196732458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 1) - A289207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362316.P3746941966196732458

namespace A362316

/-- `Δ[A000392(n+1)-A289207(n+1)]` -/
def P3746941966196732458.Spec : Prop :=
  ∀ n, P3746941966196732458.a n = A362316 n

end A362316

/-! ## A362316.P5100094832820008896

`A100774(n)%A005056(n)`
-/

namespace A362316.P5100094832820008896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100774 n) (A005056 n)

end

end A362316.P5100094832820008896

namespace A362316

/-- `A100774(n)%A005056(n)` -/
def P5100094832820008896.Spec : Prop :=
  ∀ n, P5100094832820008896.a n = A362316 n

end A362316

/-! ## A362316.P1334971365675471789

`A027649(n)%A103457(n)`
-/

namespace A362316.P1334971365675471789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027649 n) (A103457 n)

end

end A362316.P1334971365675471789

namespace A362316

/-- `A027649(n)%A103457(n)` -/
def P1334971365675471789.Spec : Prop :=
  ∀ n, P1334971365675471789.a n = A362316 n

end A362316

/-! ## A362316.P7923475225106433703

`A056182(n)%A083323(n)`
-/

namespace A362316.P7923475225106433703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056182 n) (A083323 n)

end

end A362316.P7923475225106433703

namespace A362316

/-- `A056182(n)%A083323(n)` -/
def P7923475225106433703.Spec : Prop :=
  ∀ n, P7923475225106433703.a n = A362316 n

end A362316

/-! ## A362316.P2709510714575152999

`A210448(n)%A002783(n)`
-/

namespace A362316.P2709510714575152999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A210448 n) (A002783 n)

end

end A362316.P2709510714575152999

namespace A362316

/-- `A210448(n)%A002783(n)` -/
def P2709510714575152999.Spec : Prop :=
  ∀ n, P2709510714575152999.a n = A362316 n

end A362316

/-! ## A362316.P16796825975586639201

`A002783(n)%A240506(n)`
-/

namespace A362316.P16796825975586639201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002783 n) (A240506 n)

end

end A362316.P16796825975586639201

namespace A362316

/-- `A002783(n)%A240506(n)` -/
def P16796825975586639201.Spec : Prop :=
  ∀ n, P16796825975586639201.a n = A362316 n

end A362316

/-! ## A362316.P11994086625603418712

`A110593(n+1)%A001550(n)`
-/

namespace A362316.P11994086625603418712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110593 (n + 1)) (A001550 n)

end

end A362316.P11994086625603418712

namespace A362316

/-- `A110593(n+1)%A001550(n)` -/
def P11994086625603418712.Spec : Prop :=
  ∀ n, P11994086625603418712.a n = A362316 n

end A362316

/-! ## A362316.P11943716006993086509

`A166060(n)%A053156(n+1)`
-/

namespace A362316.P11943716006993086509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166060 n) (A053156 (n + 1))

end

end A362316.P11943716006993086509

namespace A362316

/-- `A166060(n)%A053156(n+1)` -/
def P11943716006993086509.Spec : Prop :=
  ∀ n, P11943716006993086509.a n = A362316 n

end A362316

/-! ## A362316.P5585019885373207819

`A168583(n+3)%A083323(n)`
-/

namespace A362316.P5585019885373207819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168583 (n + 3)) (A083323 n)

end

end A362316.P5585019885373207819

namespace A362316

/-- `A168583(n+3)%A083323(n)` -/
def P5585019885373207819.Spec : Prop :=
  ∀ n, P5585019885373207819.a n = A362316 n

end A362316

/-! ## A362316.P8315312632866255744

`A145563(n)%A168583(n+3)`
-/

namespace A362316.P8315312632866255744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145563 n) (A168583 (n + 3))

end

end A362316.P8315312632866255744

namespace A362316

/-- `A145563(n)%A168583(n+3)` -/
def P8315312632866255744.Spec : Prop :=
  ∀ n, P8315312632866255744.a n = A362316 n

end A362316

/-! ## A362316.P16175630944824975864

`A152692(n)/A028310(n)`
-/

namespace A362316.P16175630944824975864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152692 n : ℚ) / (A028310 n : ℚ)

end

end A362316.P16175630944824975864

namespace A362316

/-- `A152692(n)/A028310(n)` -/
def P16175630944824975864.Spec : Prop :=
  ∀ n, P16175630944824975864.a n = (A362316 n : ℚ)

end A362316

/-! ## A362316.P17543548505421027683

`A152692(n)/A233583(n+1)`
-/

namespace A362316.P17543548505421027683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152692 n : ℚ) / (A233583 (n + 1) : ℚ)

end

end A362316.P17543548505421027683

namespace A362316

/-- `A152692(n)/A233583(n+1)` -/
def P17543548505421027683.Spec : Prop :=
  ∀ n, P17543548505421027683.a n = (A362316 n : ℚ)

end A362316

/-!
# A362318: Number of odd semiprimes between 2^(n-1) and 2^n.

The programs for A362318, there is no canonical definition to state claims against.
-/

/-! ## A362318.P17648532915310929277

`Δ[A362042(abs(1-n))]`
-/

namespace A362318.P17648532915310929277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362042 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362318.P17648532915310929277

/-! ## A362318.P6521323061883034404

`Δ[A144740(Δ[floor(2^(n-1))])]`
-/

namespace A362318.P6521323061883034404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144740 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362318.P6521323061883034404

/-! ## A362318.P13968479620178254224

`A162200(or(1, A004111(n)))`
-/

namespace A362318.P13968479620178254224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162200 (Int.lor 1 (A004111 n)).toNat

end

end A362318.P13968479620178254224

/-! ## A362318.P2790025761521992028

`A059966(n+1)-A195109(A000045(n+1))`
-/

namespace A362318.P2790025761521992028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 1) - A195109 (A000045 (n + 1)).toNat

end

end A362318.P2790025761521992028

/-! ## A362318.P398518360824901806

`xor(A231239(A000055(n)), A345206(3*(n+4)))`
-/

namespace A362318.P398518360824901806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A231239 (A000055 n).toNat) (A345206 (3 * (n + 4)))

end

end A362318.P398518360824901806

/-!
# A362319: a(n) = n! * Sum_{k=0..floor(n/5)} (n/5)^k / (k! * (n-5*k)!).

The programs for A362319, there is no canonical definition to state claims against.
-/

/-! ## A362319.P4975999997993953562

`2-A362320(A306593(n))`
-/

namespace A362319.P4975999997993953562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362320 (A306593 n).toNat

end

end A362319.P4975999997993953562

/-! ## A362319.P234955743004409252

`2-A362320(A023052(n+1))`
-/

namespace A362319.P234955743004409252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362320 (A023052 (n + 1)).toNat

end

end A362319.P234955743004409252

/-! ## A362319.P13147113343717671320

`2-A362320(A050783(n+1))`
-/

namespace A362319.P13147113343717671320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362320 (A050783 (n + 1)).toNat

end

end A362319.P13147113343717671320

/-! ## A362319.P5556422957489294995

`2-A362320(A135385(n+1))`
-/

namespace A362319.P5556422957489294995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362320 (A135385 (n + 1)).toNat

end

end A362319.P5556422957489294995

/-! ## A362319.P1067292300124112818

`2-A362320(A218556(n+1))`
-/

namespace A362319.P1067292300124112818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362320 (A218556 (n + 1)).toNat

end

end A362319.P1067292300124112818

/-!
# A362320: a(n) = n! * Sum_{k=0..floor(n/5)} (-n/5)^k / (k! * (n-5*k)!).

The programs for A362320, there is no canonical definition to state claims against.
-/

/-! ## A362320.P1462383272709711405

`2-A000027(A362319(n))`
-/

namespace A362320.P1462383272709711405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000027 (A362319 n).toNat

end

end A362320.P1462383272709711405

/-! ## A362320.P14089959170996429413

`2-A362319(A039723(n))`
-/

namespace A362320.P14089959170996429413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362319 (A039723 n).toNat

end

end A362320.P14089959170996429413

/-! ## A362320.P3927456181121899907

`2-A362319(A023052(n+1))`
-/

namespace A362320.P3927456181121899907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362319 (A023052 (n + 1)).toNat

end

end A362320.P3927456181121899907

/-! ## A362320.P6758885822062895698

`2-A362319(A029966(n+1))`
-/

namespace A362320.P6758885822062895698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362319 (A029966 (n + 1)).toNat

end

end A362320.P6758885822062895698

/-! ## A362320.P9728895134368096115

`2-A362319(A228326(n+1))`
-/

namespace A362320.P9728895134368096115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362319 (A228326 (n + 1)).toNat

end

end A362320.P9728895134368096115

/-!
# A362321: a(n) = n! * Sum_{k=0..floor(n/4)} n^k /(k! * (n-4*k)!).

The programs for A362321, there is no canonical definition to state claims against.
-/

/-! ## A362321.P10238303434207419503

`A004442(n*24*C(n, 4))`
-/

namespace A362321.P10238303434207419503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (n * (24 * Nat.choose n 4))

end

end A362321.P10238303434207419503

/-! ## A362321.P9350171282718129728

`A110560(n*24*C(n, 4))`
-/

namespace A362321.P9350171282718129728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (n * (24 * Nat.choose n 4))

end

end A362321.P9350171282718129728

/-! ## A362321.P11024127152439795561

`A117571(n*24*C(n, 4))`
-/

namespace A362321.P11024127152439795561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (n * (24 * Nat.choose n 4))

end

end A362321.P11024127152439795561

/-! ## A362321.P8168710151982699997

`A028233(n*24*C(n, 4)+1)`
-/

namespace A362321.P8168710151982699997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n * (24 * Nat.choose n 4) + 1)

end

end A362321.P8168710151982699997

/-!
# A362322: a(n) = n! * Sum_{k=0..floor(n/4)} (-n)^k / (k! * (n-4*k)!).

The programs for A362322, there is no canonical definition to state claims against.
-/

/-! ## A362322.P12048778389570339613

`A024000(n*24*C(n, 4))`
-/

namespace A362322.P12048778389570339613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n * (24 * Nat.choose n 4))

end

end A362322.P12048778389570339613

/-! ## A362322.P1827930545555355225

`2-A004442(n*24*C(n, 4))`
-/

namespace A362322.P1827930545555355225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A004442 (n * (24 * Nat.choose n 4))

end

end A362322.P1827930545555355225

/-! ## A362322.P14751922619824255480

`2-A110560(n*24*C(n, 4))`
-/

namespace A362322.P14751922619824255480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A110560 (n * (24 * Nat.choose n 4))

end

end A362322.P14751922619824255480

/-! ## A362322.P15251809153971717737

`A024000(n*(n-1)*n*lcm(n-2, n-3))`
-/

namespace A362322.P15251809153971717737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 ((n : ℤ) * (((n : ℤ) - 1) * (n * Int.lcm ((n : ℤ) - 2) ((n : ℤ) - 3) : ℤ))).toNat

end

end A362322.P15251809153971717737

/-!
# A362323: a(n) = n! * Sum_{k=0..floor(n/5)} n^k / (k! * (n-5*k)!).

The programs for A362323, there is no canonical definition to state claims against.
-/

/-! ## A362323.P2761625316524594325

`∏{p}[2-A362324(n), #]`
-/

namespace A362323.P2761625316524594325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362324 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A362323.P2761625316524594325

/-! ## A362323.P1651315752813027583

`A362367(A001470(n))-A362324(n)`
-/

namespace A362323.P1651315752813027583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362367 (A001470 n).toNat - A362324 n

end

end A362323.P1651315752813027583

/-! ## A362323.P4523266144113216170

`A125747(A125738(n+1))-A362324(n)`
-/

namespace A362323.P4523266144113216170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125747 (A125738 (n + 1)).toNat - A362324 n

end

end A362323.P4523266144113216170

/-!
# A362324: a(n) = n! * Sum_{k=0..floor(n/5)} (-n)^k / (k! * (n-5*k)!).

The programs for A362324, there is no canonical definition to state claims against.
-/

/-! ## A362324.P9706548375295876977

`2-A000027(A362323(n))`
-/

namespace A362324.P9706548375295876977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000027 (A362323 n).toNat

end

end A362324.P9706548375295876977

/-! ## A362324.P6943025587172211030

`2-A362323(A218556(n+1))`
-/

namespace A362324.P6943025587172211030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362323 (A218556 (n + 1)).toNat

end

end A362324.P6943025587172211030

/-! ## A362324.P15049395833104051561

`2-A362323(A228326(n+1))`
-/

namespace A362324.P15049395833104051561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362323 (A228326 (n + 1)).toNat

end

end A362324.P15049395833104051561

/-! ## A362324.P2496699469212042506

`2-A362323(A302499(n+1))`
-/

namespace A362324.P2496699469212042506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362323 (A302499 (n + 1)).toNat

end

end A362324.P2496699469212042506

/-!
# A362325: Table read by antidiagonals: T(n,k) = number of numbers <= n that can be fully factored using the first k prime numbers.

The programs for A362325, there is no canonical definition to state claims against.
-/

/-! ## A362325.P3398370292601241245

`A070939(A131251(n))%A119715(n+5)`
-/

namespace A362325.P3398370292601241245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 (A131251 n).toNat) (A119715 (n + 5))

end

end A362325.P3398370292601241245

/-! ## A362325.P18175508800564188024

`A070939(and(A131251(n), A183075(n+1)))`
-/

namespace A362325.P18175508800564188024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.land (A131251 n) (A183075 (n + 1))).toNat

end

end A362325.P18175508800564188024

/-! ## A362325.P14832406335791938364

`A070939(A131251(n)%A029494(2*(n+1)))`
-/

namespace A362325.P14832406335791938364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A131251 n) (A029494 (2 * (n + 1)))).toNat

end

end A362325.P14832406335791938364

/-! ## A362325.P5933780965192225715

`A008619(A329501(n+2)%A333220(2*(n+2)))`
-/

namespace A362325.P5933780965192225715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A329501 (n + 2)) (A333220 (2 * (n + 2)))).toNat

end

end A362325.P5933780965192225715

/-! ## A362325.P10145489646536614304

`A390256(A035607(n+1))`
-/

namespace A362325.P10145489646536614304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390256 (A035607 (n + 1)).toNat

end

end A362325.P10145489646536614304

/-!
# A362326: Pairs (i, j) of nonnegative integers whose ternary expansions have no common digit 1 sorted first by i + j then by i.

The programs for A362326, there is no canonical definition to state claims against.
-/

/-! ## A362326.P11216563523197722282

`A352909(n+1)%A010704(A326080(n))`
-/

namespace A362326.P11216563523197722282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352909 (n + 1)) (A010704 (A326080 n).toNat)

end

end A362326.P11216563523197722282

/-!
# A362327: The i-values of pairs (i, j) listed in A362326.

The programs for A362327, there is no canonical definition to state claims against.
-/

/-! ## A362327.P15500930644522347076

`A002262(lt[0, A153490(n+1)])`
-/

namespace A362327.P15500930644522347076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A362327.P15500930644522347076

/-! ## A362327.P14842591801513250704

`A002262(eq[1, A153490(n+1)])`
-/

namespace A362327.P14842591801513250704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362327.P14842591801513250704

/-! ## A362327.P10326954698300591658

`A362326(Δ[n²])`
-/

namespace A362327.P10326954698300591658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362326 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362327.P10326954698300591658

/-! ## A362327.P12256974514446592243

`dr(A362326(2*n+1))`
-/

namespace A362327.P12256974514446592243
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A362326 (2 * n + 1))

end

end A362327.P12256974514446592243

/-! ## A362327.P15914061015615370488

`A023443(A362326(2*n+1)+1)`
-/

namespace A362327.P15914061015615370488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A362326 (2 * n + 1) + 1).toNat

end

end A362327.P15914061015615370488

/-!
# A362328: The j-values of pairs (i, j) listed in A362326.

The programs for A362328, there is no canonical definition to state claims against.
-/

/-! ## A362328.P5136541611393403512

`A025581(lt[0, A153490(n+1)])`
-/

namespace A362328.P5136541611393403512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A362328.P5136541611393403512

/-! ## A362328.P10767033620016394175

`A025581(eq[1, A153490(n+1)])`
-/

namespace A362328.P10767033620016394175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362328.P10767033620016394175

/-! ## A362328.P10941358514208132227

`A362326(2*(n+1))`
-/

namespace A362328.P10941358514208132227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362326 (2 * (n + 1))

end

end A362328.P10941358514208132227

/-! ## A362328.P17389844905306206803

`A025581(lt[A234931(n), A034057(n)])`
-/

namespace A362328.P17389844905306206803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362328.P17389844905306206803

/-!
# A362330: The i-values of pairs (i, j) listed in A362329.

The programs for A362330, there is no canonical definition to state claims against.
-/

/-! ## A362330.P4481595145038476662

`A362329(Δ[n²])`
-/

namespace A362330.P4481595145038476662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362329 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362330.P4481595145038476662

/-! ## A362330.P2714188366353275816

`A362329(2*n+1)%24`
-/

namespace A362330.P2714188366353275816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362329 (2 * n + 1)) 24

end

end A362330.P2714188366353275816

/-! ## A362330.P17798367729191398751

`A000027(A362329(2*n+1))`
-/

namespace A362330.P17798367729191398751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A362329 (2 * n + 1)).toNat

end

end A362330.P17798367729191398751

/-! ## A362330.P17507730731199103607

`A026741(2*A362329(2*n+1))`
-/

namespace A362330.P17507730731199103607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A362329 (2 * n + 1)).toNat

end

end A362330.P17507730731199103607

/-! ## A362330.P4777507185187661772

`A289440(2*A362329(2*n+1))`
-/

namespace A362330.P4777507185187661772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289440 (2 * A362329 (2 * n + 1)).toNat

end

end A362330.P4777507185187661772

/-!
# A362331: The j-values of pairs (i, j) listed in A362329.

The programs for A362331, there is no canonical definition to state claims against.
-/

/-! ## A362331.P14609479215286939011

`A362329(2*(n+1))`
-/

namespace A362331.P14609479215286939011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362329 (2 * (n + 1))

end

end A362331.P14609479215286939011

/-! ## A362331.P274320314116588523

`A025581(eq[0, A153490(n+1)])`
-/

namespace A362331.P274320314116588523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362331.P274320314116588523

/-! ## A362331.P3555893710858854769

`A025581(lt[A153490(n+1), 1])`
-/

namespace A362331.P3555893710858854769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153490 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362331.P3555893710858854769

/-!
# A362332: For n > 1, if n appears in the sequence then a(n) = lastindex(n), where lastindex(n) is the index of the last appearance of n. Otherwise a(n+1) = a(n)/(n+1) if (n+1)|a(n), otherwise a(n)*(n+1), a(1) = 1 and a(2) = 1*2.

The programs for A362332, there is no canonical definition to state claims against.
-/

/-! ## A362332.P4067449693919573120

`((n+1)*a(n-1))%A019276(3*n+1)` with `a(0)=1`
-/

namespace A362332.P4067449693919573120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod ((n + 1 : ℤ) * a (n - 1)) (A019276 (3 * n + 1))

end

end A362332.P4067449693919573120

/-! ## A362332.P17152533073867385141

`A000142(n+1)%A027891(A118960(n+3))`
-/

namespace A362332.P17152533073867385141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000142 (n + 1)) (A027891 (A118960 (n + 3)).toNat)

end

end A362332.P17152533073867385141

/-! ## A362332.P13112142150816468910

`A248779(∑[n+2]+4)/A318360(A248765(n+1)^4)`
-/

namespace A362332.P13112142150816468910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248779 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / (A318360 (A248765 (n + 1) ^ 4).toNat : ℚ)

end

end A362332.P13112142150816468910

/-!
# A362333: Least nonnegative integer k such that (gpf(n)!)^k is divisible by n, where gpf(n) is the greatest prime factor of n.

The programs for A362333, there is no canonical definition to state claims against.
-/

/-! ## A362333.P995545522514877330

`A071178(A385216(n+1))`
-/

namespace A362333.P995545522514877330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A385216 (n + 1)).toNat

end

end A362333.P995545522514877330

/-! ## A362333.P9092542265217499256

`gcd(A062845(A022559(n+2)), A088388(n+1))`
-/

namespace A362333.P9092542265217499256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A062845 (A022559 (n + 2)).toNat) (A088388 (n + 1))

end

end A362333.P9092542265217499256

/-! ## A362333.P18102152906906321225

`A341644(A225004(n+1))`
-/

namespace A362333.P18102152906906321225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341644 (A225004 (n + 1)).toNat

end

end A362333.P18102152906906321225

/-! ## A362333.P11189188078438419322

`A067029(A225004(n+1)/(n+1))`
-/

namespace A362333.P11189188078438419322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (SequenceMachineLib.roundAway ((A225004 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A362333.P11189188078438419322

/-! ## A362333.P715461125519261931

`A088388(n+1)%A166597(A246318(n+2))`
-/

namespace A362333.P715461125519261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088388 (n + 1)) (A166597 (A246318 (n + 2)).toNat)

end

end A362333.P715461125519261931

/-!
# A362334: a(n) = A000010(n) + A000010(n+2), where A000010 is the Euler phi-function.

The programs for A362334, the canonical program `A362334.P13106116435762041529` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362334 has offset 1).

The definition of A362334 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362334.P13106116435762041529

`A000010(n+1)+A000010(n+3)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A362334

/-- `A000010(n+1)+A000010(n+3)` -/
def P13106116435762041529.Spec : Prop :=
  ∀ n, P13106116435762041529.a n = A362334 (n + 1)

theorem P13106116435762041529.correct : P13106116435762041529.Spec := by
  intro n
  simp only [A362334, Nat.add_sub_cancel]

end A362334

/-! ## A362334.P197905757126592811

`Δ[A002088(n+2)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A362334.P197905757126592811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A362334.P197905757126592811

namespace A362334

/-- `Δ[A002088(n+2)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P197905757126592811.Spec : Prop :=
  ∀ n, P197905757126592811.a n = (A362334 (n + 1) : ℚ)

end A362334

/-! ## A362334.P9760866160744905767

`Δ[A005728(n+2)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A362334.P9760866160744905767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A362334.P9760866160744905767

namespace A362334

/-- `Δ[A005728(n+2)]+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P9760866160744905767.Spec : Prop :=
  ∀ n, P9760866160744905767.a n = (A362334 (n + 1) : ℚ)

end A362334

/-! ## A362334.P453289032418197928

`A065387(n+1)-A078119(n+1)`
-/

namespace A362334.P453289032418197928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A078119 (n + 1)

end

end A362334.P453289032418197928

namespace A362334

/-- `A065387(n+1)-A078119(n+1)` -/
def P453289032418197928.Spec : Prop :=
  ∀ n, P453289032418197928.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P3810804952023155727

`A092404(n+1)+A057000(n+2)`
-/

namespace A362334.P3810804952023155727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092404 (n + 1) + A057000 (n + 2)

end

end A362334.P3810804952023155727

namespace A362334

/-- `A092404(n+1)+A057000(n+2)` -/
def P3810804952023155727.Spec : Prop :=
  ∀ n, P3810804952023155727.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P7612425178166376243

`sqrt(A127473(n+3))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A362334.P7612425178166376243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 3) : ℝ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ)

end

end A362334.P7612425178166376243

namespace A362334

/-- `sqrt(A127473(n+3))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P7612425178166376243.Spec : Prop :=
  ∀ n, P7612425178166376243.a n = (A362334 (n + 1) : ℝ)

end A362334

/-! ## A362334.P3566848171920131068

`A349137(2*n+5)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A362334.P3566848171920131068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 (2 * n + 5) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A362334.P3566848171920131068

namespace A362334

/-- `A349137(2*n+5)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P3566848171920131068.Spec : Prop :=
  ∀ n, P3566848171920131068.a n = (A362334 (n + 1) : ℚ)

end A362334

/-! ## A362334.P3527959840677383778

`A109606(n+1)+A039649(n+3)`
-/

namespace A362334.P3527959840677383778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A039649 (n + 3)

end

end A362334.P3527959840677383778

namespace A362334

/-- `A109606(n+1)+A039649(n+3)` -/
def P3527959840677383778.Spec : Prop :=
  ∀ n, P3527959840677383778.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P7053693690424468899

`Δ[A018805(n+1)+Δ[A039649(n+1)]]`
-/

namespace A362334.P7053693690424468899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362334.P7053693690424468899

namespace A362334

/-- `Δ[A018805(n+1)+Δ[A039649(n+1)]]` -/
def P7053693690424468899.Spec : Prop :=
  ∀ n, P7053693690424468899.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P1560328375934170920

`Δ[A018805(n+1)+Δ[A109606(n+1)]]`
-/

namespace A362334.P1560328375934170920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362334.P1560328375934170920

namespace A362334

/-- `Δ[A018805(n+1)+Δ[A109606(n+1)]]` -/
def P1560328375934170920.Spec : Prop :=
  ∀ n, P1560328375934170920.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P11510503360981831388

`Δ[or(A049634(n), A266514(n))]`
-/

namespace A362334.P11510503360981831388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049634 n) (A266514 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362334.P11510503360981831388

namespace A362334

/-- `Δ[or(A049634(n), A266514(n))]` -/
def P11510503360981831388.Spec : Prop :=
  ∀ n, P11510503360981831388.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P9616370425052005576

`Δ[A049698(n)]`
-/

namespace A362334.P9616370425052005576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362334.P9616370425052005576

namespace A362334

/-- `Δ[A049698(n)]` -/
def P9616370425052005576.Spec : Prop :=
  ∀ n, P9616370425052005576.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P12045640754180774290

`A049698(n+1)-A049698(n)`
-/

namespace A362334.P12045640754180774290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049698 (n + 1) - A049698 n

end

end A362334.P12045640754180774290

namespace A362334

/-- `A049698(n+1)-A049698(n)` -/
def P12045640754180774290.Spec : Prop :=
  ∀ n, P12045640754180774290.a n = A362334 (n + 1)

end A362334

/-! ## A362334.P17634921345474521472

`A225530(n+3)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A362334.P17634921345474521472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225530 (n + 3) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)

end

end A362334.P17634921345474521472

namespace A362334

/-- `A225530(n+3)+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P17634921345474521472.Spec : Prop :=
  ∀ n, P17634921345474521472.a n = (A362334 (n + 1) : ℚ)

end A362334

/-!
# A362335: Lexicographically earliest sequence of distinct nonnegative terms wherein every digit of a(n) is the absolute difference of two adjacent digits in a(n+1).

The programs for A362335, there is no canonical definition to state claims against.
-/

/-! ## A362335.P15937143253391642953

`A104326(n+1)-A054533(A005054(n))`
-/

namespace A362335.P15937143253391642953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104326 (n + 1) - A054533 (A005054 n).toNat

end

end A362335.P15937143253391642953

/-! ## A362335.P4915335570947357712

`A231922(A016116(2*n)-A008833(n+1))`
-/

namespace A362335.P4915335570947357712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231922 (A016116 (2 * n) - A008833 (n + 1)).toNat

end

end A362335.P4915335570947357712

/-!
# A362336: a(n) = n! * Sum_{k=0..floor(n/5)} (n/120)^k /(k! * (n-5*k)!).

The programs for A362336, there is no canonical definition to state claims against.
-/

/-! ## A362336.P6934257811649995623

`A335472(∑{e}[n!+1, #])+n*C(n, 5)+1`
-/

namespace A362336.P6934257811649995623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335472 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + (n * Nat.choose n 5 : ℤ) + 1

end

end A362336.P6934257811649995623

/-! ## A362336.P12636240700938162062

`2-A362346(A023052(n+1))`
-/

namespace A362336.P12636240700938162062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362346 (A023052 (n + 1)).toNat

end

end A362336.P12636240700938162062

/-! ## A362336.P2314176790552738269

`A054977(A002805(n+1))+n*C(n, 5)`
-/

namespace A362336.P2314176790552738269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A002805 (n + 1)).toNat + (n * Nat.choose n 5 : ℤ)

end

end A362336.P2314176790552738269

/-! ## A362336.P5202622209599650910

`(n*C(n, 5))%A001132(A015219(n))+1`
-/

namespace A362336.P5202622209599650910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n * Nat.choose n 5 : ℤ) (A001132 (A015219 n).toNat) + 1

end

end A362336.P5202622209599650910

/-!
# A362339: a(n) = n! * Sum_{k=0..floor(n/4)} (-k)^k / (k! * (n-4*k)!).

The programs for A362339, there is no canonical definition to state claims against.
-/

/-! ## A362339.P671086084516267717

`A362349(n)-A005843(A052762(n))`
-/

namespace A362339.P671086084516267717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362349 n - A005843 (A052762 n).toNat

end

end A362339.P671086084516267717

/-!
# A362342: a(n) = n! * Sum_{k=0..floor(n/4)} (-k/24)^k / (k! * (n-4*k)!).

The programs for A362342, there is no canonical definition to state claims against.
-/

/-! ## A362342.P8455479491422979807

`A000332(n)*A057077(A186902(3*n+2))+1`
-/

namespace A362342.P8455479491422979807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A057077 (A186902 (3 * n + 2)).toNat + 1

end

end A362342.P8455479491422979807

/-!
# A362343: Sequence that alternately doubles and squares the previous number; a(0) = 1.

The programs for A362343, there is no canonical definition to state claims against.
-/

/-! ## A362343.P205242805523762161

`2^lt[and(n, n+2), 2]`
-/

namespace A362343.P205242805523762161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362343.P205242805523762161

/-! ## A362343.P5680768163992034555

`2^lt[n, xor(n, n+2)]`
-/

namespace A362343.P5680768163992034555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362343.P5680768163992034555

/-! ## A362343.P12813079040300291426

`2^lt[2*n, or(n, n+2)]`
-/

namespace A362343.P12813079040300291426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362343.P12813079040300291426

/-! ## A362343.P11121906362621807229

`a(n-2)²*2*gcd(2, n)` with `a(0)=1, a(1)=2`
-/

namespace A362343.P11121906362621807229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) ^ 2 * (2 * Nat.gcd 2 n)

end

end A362343.P11121906362621807229

/-! ## A362343.P18244349255510451678

`a(gcd(1-n, n%2))*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A362343.P18244349255510451678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (Int.gcd (1 - (n : ℤ)) ((n % 2 : ℕ) : ℤ)) * a (n - 1)

end

end A362343.P18244349255510451678

/-!
# A362344: Maximum number of distinct real roots of degree-n polynomial with coefficients 0,1.

The programs for A362344, there is no canonical definition to state claims against.
-/

/-! ## A362344.P6285211051205721163

`∑[char[a(n-1)+a(floor(n/2))]]` with `a(0)=1, a(1)=6, a(2)=0, a(3)=9`
-/

namespace A362344.P6285211051205721163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 0, 9] fun n f2 =>
  f2 (n - 1) + f2 ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362344.P6285211051205721163

/-! ## A362344.P3990675398039776569

`∑[char[A066002(n)]]+1`
-/

namespace A362344.P3990675398039776569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066002 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A362344.P3990675398039776569

/-! ## A362344.P16790900733614904979

`∑[char[A216216(3*n)]]`
-/

namespace A362344.P16790900733614904979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216216 (3 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362344.P16790900733614904979

/-! ## A362344.P18350119197518637959

`∑[char[A078741(n+1)]]+1`
-/

namespace A362344.P18350119197518637959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078741 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A362344.P18350119197518637959

/-!
# A362345: a(n) = n! * Sum_{k=0..floor(n/4)} (-n/24)^k /(k! * (n-4*k)!).

The programs for A362345, there is no canonical definition to state claims against.
-/

/-! ## A362345.P8957454122069902665

`4/2-(C(n, 4)*A051903(5^n)+1)`
-/

namespace A362345.P8957454122069902665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 2 - ((Nat.choose n 4 : ℤ) * A051903 (5 ^ n) + 1 : ℚ)

end

end A362345.P8957454122069902665

/-! ## A362345.P1596072502259978736

`2-(A037835(3^(n+1))+n*C(n, 4))`
-/

namespace A362345.P1596072502259978736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A037835 (3 ^ (n + 1)) + (n * Nat.choose n 4 : ℤ))

end

end A362345.P1596072502259978736

/-! ## A362345.P1846866441659857379

`1-A008615(A362314(n))`
-/

namespace A362345.P1846866441659857379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008615 (A362314 n).toNat

end

end A362345.P1846866441659857379

/-! ## A362345.P6022917877815940004

`2-A007947(A350406(n)²)`
-/

namespace A362345.P6022917877815940004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007947 (A350406 n ^ 2).toNat

end

end A362345.P6022917877815940004

/-!
# A362346: a(n) = n! * Sum_{k=0..floor(n/5)} (-n/120)^k /(k! * (n-5*k)!).

The programs for A362346, there is no canonical definition to state claims against.
-/

/-! ## A362346.P17673753162779696753

`1-A023443(A362336(n))`
-/

namespace A362346.P17673753162779696753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023443 (A362336 n).toNat

end

end A362346.P17673753162779696753

/-! ## A362346.P9055678673008688875

`2-A362336(A051022(n))`
-/

namespace A362346.P9055678673008688875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A362336 (A051022 n).toNat

end

end A362346.P9055678673008688875

/-! ## A362346.P3767393136214518363

`1-A023443(A335472(∑{e}[n!+1, #])+n*C(n, 5)+1)`
-/

namespace A362346.P3767393136214518363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A023443 (A335472 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + (n * Nat.choose n 5 : ℤ) + 1).toNat

end

end A362346.P3767393136214518363

/-! ## A362346.P15640028554682233233

`A362367(n)-(A335472(∑{e}[n!+1, #])+n*C(n, 5)+1)`
-/

namespace A362346.P15640028554682233233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362367 n - (A335472 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + (n * Nat.choose n 5 : ℤ) + 1)

end

end A362346.P15640028554682233233

/-!
# A362347: a(n) = n! * Sum_{k=0..floor(n/2)} k^k / (k! * (n-2*k)!).

The programs for A362347, there is no canonical definition to state claims against.
-/

/-! ## A362347.P5087442711992657361

`A008621(A293720(n))`
-/

namespace A362347.P5087442711992657361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A293720 n).toNat

end

end A362347.P5087442711992657361

/-! ## A362347.P7503705071080166574

`A328024(A026733(n))`
-/

namespace A362347.P7503705071080166574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328024 (A026733 n).toNat

end

end A362347.P7503705071080166574

/-!
# A362348: a(n) = n! * Sum_{k=0..floor(n/3)} k^k / (k! * (n-3*k)!).

The programs for A362348, there is no canonical definition to state claims against.
-/

/-! ## A362348.P9300001201545855756

`A193375(n)+A001281(A053625(n))`
-/

namespace A362348.P9300001201545855756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193375 n + A001281 (A053625 n).toNat

end

end A362348.P9300001201545855756

/-! ## A362348.P4744459934227772703

`A362523(n)+A001281(A053625(n))`
-/

namespace A362348.P4744459934227772703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362523 n + A001281 (A053625 n).toNat

end

end A362348.P4744459934227772703

/-! ## A362348.P12061477836956909330

`A109613(A371046(n))`
-/

namespace A362348.P12061477836956909330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A371046 n).toNat

end

end A362348.P12061477836956909330

/-!
# A362349: a(n) = n! * Sum_{k=0..floor(n/4)} k^k / (k! * (n-4*k)!).

The programs for A362349, there is no canonical definition to state claims against.
-/

/-! ## A362349.P2229459249421536796

`A362339(n)+A005843(A052762(n))`
-/

namespace A362349.P2229459249421536796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362339 n + A005843 (A052762 n).toNat

end

end A362349.P2229459249421536796

/-!
# A362352: a(n) = n! * Sum_{k=0..floor(n/4)} (k/24)^k / (k! * (n-4*k)!).

The programs for A362352, there is no canonical definition to state claims against.
-/

/-! ## A362352.P3157361325167531925

`C(A079208(A002113(3*n+5))+n, 4)+1`
-/

namespace A362352.P3157361325167531925
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079208 (A002113 (3 * n + 5)).toNat + (n : ℤ)).toNat 4 + 1

end

end A362352.P3157361325167531925

/-! ## A362352.P10343181066488401721

`A351971(n)+A169908(A174645(n+1))`
-/

namespace A362352.P10343181066488401721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351971 n + A169908 (A174645 (n + 1)).toNat

end

end A362352.P10343181066488401721

/-! ## A362352.P6256899354550161451

`A000332(n)*A348037(A087214(n)+1)+1`
-/

namespace A362352.P6256899354550161451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n * A348037 (A087214 n + 1).toNat + 1

end

end A362352.P6256899354550161451

/-! ## A362352.P8097568810679662886

`A348289(C(A160766(n+1), A326538(n+2)))`
-/

namespace A362352.P8097568810679662886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348289 (Nat.choose (A160766 (n + 1)).toNat (A326538 (n + 2)).toNat)

end

end A362352.P8097568810679662886

/-! ## A362352.P15846288471389722245

`A158388(A014602(n+1))+A000332(A007094(n))`
-/

namespace A362352.P15846288471389722245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A014602 (n + 1)).toNat + A000332 (A007094 n).toNat

end

end A362352.P15846288471389722245

/-!
# A362354: a(n) = 3*(n+3)^(n-1).

The programs for A362354, the canonical program `A362354.P17109913677295693850` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362354 has offset 0).

The definition of A362354 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362354.P17109913677295693850

`3*(n+3)^(n-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362354

/-- `3*(n+3)^(n-1)` -/
def P17109913677295693850.Spec : Prop :=
  ∀ n, P17109913677295693850.a n = (A362354 n : ℚ)

end A362354

/-! ## A362354.P15478698455937169635

`(n+3)^(n-1)/tan(acot(3))`
-/

namespace A362354.P15478698455937169635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (3 : ℝ))

end

end A362354.P15478698455937169635

namespace A362354

/-- `(n+3)^(n-1)/tan(acot(3))` -/
def P15478698455937169635.Spec : Prop :=
  ∀ n, P15478698455937169635.a n = (A362354 n : ℝ)

end A362354

/-! ## A362354.P17482617529449057918

`(n+3)^(n-1)/cot(atan(3))`
-/

namespace A362354.P17482617529449057918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.cot (Real.arctan (3 : ℝ))

end

end A362354.P17482617529449057918

namespace A362354

/-- `(n+3)^(n-1)/cot(atan(3))` -/
def P17482617529449057918.Spec : Prop :=
  ∀ n, P17482617529449057918.a n = (A362354 n : ℝ)

end A362354

/-! ## A362354.P15901195946053296927

`A058127(A034856(n+2))`
-/

namespace A362354.P15901195946053296927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A034856 (n + 2)).toNat

end

end A362354.P15901195946053296927

namespace A362354

/-- `A058127(A034856(n+2))` -/
def P15901195946053296927.Spec : Prop :=
  ∀ n, P15901195946053296927.a n = A362354 n

end A362354

/-! ## A362354.P10505562634460002694

`A232006(A167614(n+2))`
-/

namespace A362354.P10505562634460002694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (A167614 (n + 2)).toNat

end

end A362354.P10505562634460002694

namespace A362354

/-- `A232006(A167614(n+2))` -/
def P10505562634460002694.Spec : Prop :=
  ∀ n, P10505562634460002694.a n = A362354 n

end A362354

/-! ## A362354.P15698290686347479152

`A053507(n+3)/A000292(n+1)`
-/

namespace A362354.P15698290686347479152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053507 (n + 3) : ℚ) / (A000292 (n + 1) : ℚ)

end

end A362354.P15698290686347479152

namespace A362354

/-- `A053507(n+3)/A000292(n+1)` -/
def P15698290686347479152.Spec : Prop :=
  ∀ n, P15698290686347479152.a n = (A362354 n : ℚ)

end A362354

/-! ## A362354.P3779663702687038949

`A089463(∑[n])`
-/

namespace A362354.P3779663702687038949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089463 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362354.P3779663702687038949

namespace A362354

/-- `A089463(∑[n])` -/
def P3779663702687038949.Spec : Prop :=
  ∀ n, P3779663702687038949.a n = A362354 n

end A362354

/-! ## A362354.P12238714287774381758

`record[A089463(n)]`
-/

namespace A362354.P12238714287774381758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362354.P12238714287774381758

namespace A362354

/-- `record[A089463(n)]` -/
def P12238714287774381758.Spec : Prop :=
  ∀ n, P12238714287774381758.a n = A362354 n

end A362354

/-!
# A362355: a(n) = 4*(n+4)^(n-1).

The programs for A362355, the canonical program `A362355.P17304355573090640097` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362355 has offset 0).

The definition of A362355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362355.P17304355573090640097

`4*(n+4)^(n-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362355

/-- `4*(n+4)^(n-1)` -/
def P17304355573090640097.Spec : Prop :=
  ∀ n, P17304355573090640097.a n = (A362355 n : ℚ)

end A362355

/-! ## A362355.P9458267461054787563

`A058127(A000217(n+4)-3)`
-/

namespace A362355.P9458267461054787563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A000217 (n + 4) - 3).toNat

end

end A362355.P9458267461054787563

namespace A362355

/-- `A058127(A000217(n+4)-3)` -/
def P9458267461054787563.Spec : Prop :=
  ∀ n, P9458267461054787563.a n = A362355 n

end A362355

/-! ## A362355.P13721120246766558071

`A058127(eq[2, A066633(n+1)])`
-/

namespace A362355.P13721120246766558071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362355.P13721120246766558071

namespace A362355

/-- `A058127(eq[2, A066633(n+1)])` -/
def P13721120246766558071.Spec : Prop :=
  ∀ n, P13721120246766558071.a n = A362355 n

end A362355

/-! ## A362355.P5006925742410609765

`A232006(eq[4, A002262(n)])`
-/

namespace A362355.P5006925742410609765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362355.P5006925742410609765

namespace A362355

/-- `A232006(eq[4, A002262(n)])` -/
def P5006925742410609765.Spec : Prop :=
  ∀ n, P5006925742410609765.a n = A362355 n

end A362355

/-! ## A362355.P11505396760637866249

`A301270(n+4)/(n+4)`
-/

namespace A362355.P11505396760637866249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301270 (n + 4) : ℚ) / (n + 4 : ℚ)

end

end A362355.P11505396760637866249

namespace A362355

/-- `A301270(n+4)/(n+4)` -/
def P11505396760637866249.Spec : Prop :=
  ∀ n, P11505396760637866249.a n = (A362355 n : ℚ)

end A362355

/-!
# A362356: a(n) = 5*(n + 5)^(n-1).

The programs for A362356, the canonical program `A362356.P13436729005755047429` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362356 has offset 0).

The definition of A362356 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362356.P13436729005755047429

`5*(n+5)^(n-1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362356

/-- `5*(n+5)^(n-1)` -/
def P13436729005755047429.Spec : Prop :=
  ∀ n, P13436729005755047429.a n = (A362356 n : ℚ)

end A362356

/-! ## A362356.P3291946492510468920

`A058127(Δ[A023545(n+1)])`
-/

namespace A362356.P3291946492510468920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (f1 (n + 1) - f1 n).toNat

end

end A362356.P3291946492510468920

namespace A362356

/-- `A058127(Δ[A023545(n+1)])` -/
def P3291946492510468920.Spec : Prop :=
  ∀ n, P3291946492510468920.a n = A362356 n

end A362356

/-! ## A362356.P1725629200872627291

`A058127(A000124(n+5)-5)`
-/

namespace A362356.P1725629200872627291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A000124 (n + 5) - 5).toNat

end

end A362356.P1725629200872627291

namespace A362356

/-- `A058127(A000124(n+5)-5)` -/
def P1725629200872627291.Spec : Prop :=
  ∀ n, P1725629200872627291.a n = A362356 n

end A362356

/-! ## A362356.P16318446306445975769

`A058127(A000217(n+4)+1+n)`
-/

namespace A362356.P16318446306445975769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058127 (A000217 (n + 4) + 1 + (n : ℤ)).toNat

end

end A362356.P16318446306445975769

namespace A362356

/-- `A058127(A000217(n+4)+1+n)` -/
def P16318446306445975769.Spec : Prop :=
  ∀ n, P16318446306445975769.a n = A362356 n

end A362356

/-! ## A362356.P16886228077108379038

`A232006(eq[5, A002262(n)])`
-/

namespace A362356.P16886228077108379038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362356.P16886228077108379038

namespace A362356

/-- `A232006(eq[5, A002262(n)])` -/
def P16886228077108379038.Spec : Prop :=
  ∀ n, P16886228077108379038.a n = A362356 n

end A362356

/-!
# A362357: Bisection of Chebyshev {S(n, 5)}_{n>=0}; the even part.

The programs for A362357, the canonical program `A362357.P14046036007180536138` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362357 has offset 0).

The definition of A362357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362357.P14046036007180536138

`23*a(n-1)-a(n-2)` with `a(0)=1, a(1)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362357

/-- `23*a(n-1)-a(n-2)` -/
def P14046036007180536138.Spec : Prop :=
  ∀ n, P14046036007180536138.a n = A362357 n

theorem P14046036007180536138.correct : P14046036007180536138.Spec := by
  intro n
  simp only [A362357]

end A362357

/-! ## A362357.P14287293267039745508

`A004254(Δ[n²])`
-/

namespace A362357.P14287293267039745508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362357.P14287293267039745508

namespace A362357

/-- `A004254(Δ[n²])` -/
def P14287293267039745508.Spec : Prop :=
  ∀ n, P14287293267039745508.a n = A362357 n

end A362357

/-! ## A362357.P13694430501339183880

`∑[A090731(n)]-1`
-/

namespace A362357.P13694430501339183880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A362357.P13694430501339183880

namespace A362357

/-- `∑[A090731(n)]-1` -/
def P13694430501339183880.Spec : Prop :=
  ∀ n, P13694430501339183880.a n = A362357 n

end A362357

/-! ## A362357.P11350321596486496682

`Δ[A004254(n)^2]`
-/

namespace A362357.P11350321596486496682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362357.P11350321596486496682

namespace A362357

/-- `Δ[A004254(n)^2]` -/
def P11350321596486496682.Spec : Prop :=
  ∀ n, P11350321596486496682.a n = A362357 n

end A362357

/-! ## A362357.P16094651396683938085

`record[A004254(xor(1, n))]`
-/

namespace A362357.P16094651396683938085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362357.P16094651396683938085

namespace A362357

/-- `record[A004254(xor(1, n))]` -/
def P16094651396683938085.Spec : Prop :=
  ∀ n, P16094651396683938085.a n = A362357 n

end A362357

/-! ## A362357.P17536419892386938994

`A290902(2*n)/3`
-/

namespace A362357.P17536419892386938994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290902 (2 * n) : ℚ) / 3

end

end A362357.P17536419892386938994

namespace A362357

/-- `A290902(2*n)/3` -/
def P17536419892386938994.Spec : Prop :=
  ∀ n, P17536419892386938994.a n = (A362357 n : ℚ)

end A362357

/-! ## A362357.P7440388575311307236

`∑[A003501(2*n)]-1`
-/

namespace A362357.P7440388575311307236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A362357.P7440388575311307236

namespace A362357

/-- `∑[A003501(2*n)]-1` -/
def P7440388575311307236.Spec : Prop :=
  ∀ n, P7440388575311307236.a n = A362357 n

end A362357

/-! ## A362357.P9188291821543312873

`A136211(4*(n-1)+5)`
-/

namespace A362357.P9188291821543312873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136211 (4 * ((n : ℤ) - 1) + 5).toNat

end

end A362357.P9188291821543312873

namespace A362357

/-- `A136211(4*(n-1)+5)` -/
def P9188291821543312873.Spec : Prop :=
  ∀ n, P9188291821543312873.a n = A362357 n

end A362357

/-! ## A362357.P6767377355075892699

`record[A004254(and(n, n-1)+1)]`
-/

namespace A362357.P6767377355075892699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 (Int.land (n : ℤ) ((n : ℤ) - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362357.P6767377355075892699

namespace A362357

/-- `record[A004254(and(n, n-1)+1)]` -/
def P6767377355075892699.Spec : Prop :=
  ∀ n, P6767377355075892699.a n = A362357 n

end A362357

/-!
# A362358: Alternating sum of digits of the Fibonacci numbers, with a plus sign for the last digit.

The programs for A362358, the canonical program `A362358.P8778076653575427930` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362358 has offset 0).

The definition of A362358 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362358.P8778076653575427930

`A055017(A000045(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A362358

/-- `A055017(A000045(n))` -/
def P8778076653575427930.Spec : Prop :=
  ∀ n, P8778076653575427930.a n = A362358 n

theorem P8778076653575427930.correct : P8778076653575427930.Spec := by
  intro n
  simp only [A362358]

end A362358

/-! ## A362358.P11079605362128063659

`A055017(2-(∑[a(n-1)-(1-a(n-2))]-n))` with `a(0)=2, a(1)=0`
-/

namespace A362358.P11079605362128063659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (2 - (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))).toNat

end

end A362358.P11079605362128063659

namespace A362358

/-- `A055017(2-(∑[a(n-1)-(1-a(n-2))]-n))` -/
def P11079605362128063659.Spec : Prop :=
  ∀ n, P11079605362128063659.a n = A362358 n

end A362358

/-! ## A362358.P8279910668390560010

`A055017(sqrt(A007598(n)))`
-/

namespace A362358.P8279910668390560010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat

end

end A362358.P8279910668390560010

namespace A362358

/-- `A055017(sqrt(A007598(n)))` -/
def P8279910668390560010.Spec : Prop :=
  ∀ n, P8279910668390560010.a n = A362358 n

end A362358

/-! ## A362358.P6244178263039599938

`A055017(A050610(∑[n]))`
-/

namespace A362358.P6244178263039599938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 (A050610 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A362358.P6244178263039599938

namespace A362358

/-- `A055017(A050610(∑[n]))` -/
def P6244178263039599938.Spec : Prop :=
  ∀ n, P6244178263039599938.a n = A362358 n

end A362358

/-!
# A362360: a(n) = 81*n - 2.

The programs for A362360, the canonical program `A362360.P3423445274838925230` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362360 has offset 1).

The definition of A362360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*(n+1)-2` (program `A362360.P3423445274838925230`, by `A362360.P3423445274838925230.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362360.P3423445274838925230

`81*(n+1)-2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362360

/-- `81*(n+1)-2` -/
def P3423445274838925230.Spec : Prop :=
  ∀ n, P3423445274838925230.a n = A362360 (n + 1)

theorem P3423445274838925230.correct : P3423445274838925230.Spec := by
  intro n
  simp only [A362360, Nat.add_sub_cancel]

end A362360

/-!
# A362361: a(n) = n*2^10 - 3.

The programs for A362361, the canonical program `A362361.P7872441656084525677` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362361 has offset 1).

The definition of A362361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362361.P7872441656084525677

`(n+1)/(1/4)^5-3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362361

/-- `(n+1)/(1/4)^5-3` -/
def P7872441656084525677.Spec : Prop :=
  ∀ n, P7872441656084525677.a n = (A362361 (n + 1) : ℚ)

end A362361

/-!
# A362362: Number of permutations of [n] such that each cycle contains its length as an element.

The programs for A362362, there is no canonical definition to state claims against.
-/

/-! ## A362362.P16733737820233953003

`A134431(∑[∑[n]])`
-/

namespace A362362.P16733737820233953003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134431 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362362.P16733737820233953003

/-! ## A362362.P13673117500581483818

`A105515(∑[floor(5^n/9)]+1)+1`
-/

namespace A362362.P13673117500581483818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + 1

end

end A362362.P13673117500581483818

/-! ## A362362.P9680325281857801035

`A357306(A165799(n))`
-/

namespace A362362.P9680325281857801035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357306 (A165799 n).toNat

end

end A362362.P9680325281857801035

/-!
# A362363: Arm number of the base spiral in A362249 which visits large spiral point n there.

The programs for A362363, there is no canonical definition to state claims against.
-/

/-! ## A362363.P1018893294732779075

`A136699(n+4)%A136699(A229223(3*(n+1)))`
-/

namespace A362363.P1018893294732779075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136699 (n + 4)) (A136699 (A229223 (3 * (n + 1))).toNat)

end

end A362363.P1018893294732779075

/-! ## A362363.P6055709914014915129

`and(A374054(A056004(n+3)), A374054(n))`
-/

namespace A362363.P6055709914014915129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A374054 (A056004 (n + 3)).toNat) (A374054 n)

end

end A362363.P6055709914014915129

/-! ## A362363.P12182188541960609814

`A069850(A360350(n+2)-A118821(n+1))`
-/

namespace A362363.P12182188541960609814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069850 (A360350 (n + 2) - A118821 (n + 1)).toNat

end

end A362363.P12182188541960609814

/-! ## A362363.P3520621279216056147

`A091888(A121040(n+1)*A323238(n+3))`
-/

namespace A362363.P3520621279216056147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091888 (A121040 (n + 1) * A323238 (n + 3)).toNat

end

end A362363.P3520621279216056147

/-! ## A362363.P10340104962798525395

`A347966(2*n+1)%A334502(A284538(n))`
-/

namespace A362363.P10340104962798525395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347966 (2 * n + 1)) (A334502 (A284538 n).toNat)

end

end A362363.P10340104962798525395

/-!
# A362364: a(n) is the product of the first n primes that are coprime to a(n-1); a(0) = 1.

The programs for A362364, there is no canonical definition to state claims against.
-/

/-! ## A362364.P3942761112803993457

`A002110(2*n-1)/a(n-1)` with `a(0)=1`
-/

namespace A362364.P3942761112803993457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A002110 (2 * n - 1) : ℚ) / a (n - 1)

end

end A362364.P3942761112803993457

/-! ## A362364.P12530772240308463829

`A019565(A037481(n))`
-/

namespace A362364.P12530772240308463829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A037481 n).toNat

end

end A362364.P12530772240308463829

/-! ## A362364.P10564315494789031838

`A284003(∑[floor(2^(n-1))²])`
-/

namespace A362364.P10564315494789031838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362364.P10564315494789031838

/-! ## A362364.P18029549360501610085

`A019565(floor(or(1, 2*4^n)/5))`
-/

namespace A362364.P18029549360501610085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ⌊(Nat.lor 1 (2 * 4 ^ n) : ℚ) / 5⌋.toNat

end

end A362364.P18029549360501610085

/-!
# A362365: The sum of the coefficients of x^k in the expansion of (x + x^2 + x^3 + x^4 + x^5 + x^6)^n with k divisible by 4.

The programs for A362365, the canonical program `A362365.P14345963127246732391` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362365 has offset 1).

The definition of A362365 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362365.P14345963127246732391

`4*a(n-1)+10*a(n-2)+12*a(n-3)` with `a(0)=1, a(1)=9, a(2)=55`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362365

/-- `4*a(n-1)+10*a(n-2)+12*a(n-3)` -/
def P14345963127246732391.Spec : Prop :=
  ∀ n, (P14345963127246732391.a n : ℤ) = A362365 (n + 1)

theorem P14345963127246732391.correct : P14345963127246732391.Spec := by
  intro n
  simp only [A362365, Nat.add_sub_cancel]

end A362365

/-! ## A362365.P8148054254627693844

`1/4*6^(n+1)+2^((n+1)/2-1)*cos(3*π*(n+1)/4)`
-/

namespace A362365.P8148054254627693844
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 4 * (6 ^ (n + 1) : ℚ) : ℝ) + (2 : ℝ) ^ ((n + 1 : ℚ) / 2 - 1 : ℝ) * Real.cos (3 * (Real.pi * ((n + 1 : ℚ) / 4 : ℝ)))

end

end A362365.P8148054254627693844

namespace A362365

/-- `1/4*6^(n+1)+2^((n+1)/2-1)*cos(3*π*(n+1)/4)` -/
def P8148054254627693844.Spec : Prop :=
  ∀ n, P8148054254627693844.a n = (A362365 (n + 1) : ℝ)

end A362365

/-! ## A362365.P17754971570987282440

`1/4*(A000400(n+1)+2*A009116(n+1))`
-/

namespace A362365.P17754971570987282440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000400 (n + 1) + 2 * A009116 (n + 1) : ℚ)

end

end A362365.P17754971570987282440

namespace A362365

/-- `1/4*(A000400(n+1)+2*A009116(n+1))` -/
def P17754971570987282440.Spec : Prop :=
  ∀ n, P17754971570987282440.a n = (A362365 (n + 1) : ℚ)

end A362365

/-!
# A362366: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) is the least base >= 2 where the sum n + k can be computed without carry.

The programs for A362366, there is no canonical definition to state claims against.
-/

/-! ## A362366.P7779793399848072826

`A007978(A007318(n)^A051903(n+4))`
-/

namespace A362366.P7779793399848072826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A051903 (n + 4) : ℤ))).toNat

end

end A362366.P7779793399848072826

/-! ## A362366.P12479412823514269279

`A337686(A007318(n)*A157694(n))`
-/

namespace A362366.P12479412823514269279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337686 (A007318 n * A157694 n).toNat

end

end A362366.P12479412823514269279

/-! ## A362366.P4167658282767133812

`A007978(A055235(n)+A007318(n))`
-/

namespace A362366.P4167658282767133812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A055235 n + A007318 n).toNat

end

end A362366.P4167658282767133812

/-! ## A362366.P6341678622020182260

`A007978(A007318(n)^A004198(n))`
-/

namespace A362366.P6341678622020182260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A004198 n : ℤ))).toNat

end

end A362366.P6341678622020182260

/-! ## A362366.P2973407959281297506

`A007978(A131830(n)^A004198(n))`
-/

namespace A362366.P2973407959281297506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (SequenceMachineLib.roundAway ((A131830 n : ℚ) ^ (A004198 n : ℤ))).toNat

end

end A362366.P2973407959281297506

/-!
# A362367: Square array A(n, k), n, k >= 0, read by antidiagonals; A(n, k) is the least base >= 2 where the product n * k can be computed without carry.

The programs for A362367, there is no canonical definition to state claims against.
-/

/-! ## A362367.P5906338758553855034

`A276862(C(A001670(n+1), A061858(n)))`
-/

namespace A362367.P5906338758553855034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (Nat.choose (A001670 (n + 1)).toNat (A061858 n).toNat)

end

end A362367.P5906338758553855034

/-! ## A362367.P1933737979897878237

`A284562(A001263(∏{p}[n+1, #]))+A284562(n+3)`
-/

namespace A362367.P1933737979897878237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A001263 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat + A284562 (n + 3)

end

end A362367.P1933737979897878237

/-! ## A362367.P5071764754630180999

`A108775(A304676(n+1))+1`
-/

namespace A362367.P5071764754630180999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108775 (A304676 (n + 1)).toNat + 1

end

end A362367.P5071764754630180999

/-! ## A362367.P6589647371025331539

`A284562(A001263(n+1))+A284562(n+3)`
-/

namespace A362367.P6589647371025331539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284562 (A001263 (n + 1)).toNat + A284562 (n + 3)

end

end A362367.P6589647371025331539

/-! ## A362367.P9942690063821053427

`A164886(2^A061858(n))`
-/

namespace A362367.P9942690063821053427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A061858 n : ℤ))).toNat

end

end A362367.P9942690063821053427

/-! ## A362367.P5097435431801261270

`A195844(2^A061858(n))`
-/

namespace A362367.P5097435431801261270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195844 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A061858 n : ℤ))).toNat

end

end A362367.P5097435431801261270

/-! ## A362367.P8110613480836550772

`A108128((A061858(n)+1)²)`
-/

namespace A362367.P8110613480836550772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108128 ((A061858 n + 1) ^ 2).toNat

end

end A362367.P8110613480836550772

/-! ## A362367.P4079175288242541469

`A225332((1-A061858(n))²)`
-/

namespace A362367.P4079175288242541469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225332 ((1 - A061858 n) ^ 2).toNat

end

end A362367.P4079175288242541469

/-! ## A362367.P13309115171466016560

`A342707(A061858(n)²)+2`
-/

namespace A362367.P13309115171466016560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342707 (A061858 n ^ 2).toNat + 2

end

end A362367.P13309115171466016560

/-!
# A362368: Number of binary strings of length n which are losing configurations in the palindrome game.

The programs for A362368, there is no canonical definition to state claims against.
-/

/-! ## A362368.P10606241956400596151

`and(A000326(2*n), A010101(n+1))`
-/

namespace A362368.P10606241956400596151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000326 (2 * n)) (A010101 (n + 1))

end

end A362368.P10606241956400596151

/-! ## A362368.P1966148724913746055

`and(A005206(A001787(n)), A010101(n+1))`
-/

namespace A362368.P1966148724913746055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005206 (A001787 n).toNat) (A010101 (n + 1))

end

end A362368.P1966148724913746055

/-! ## A362368.P16856462447779543530

`A001030(A067063(n+2))*A035102(n+2)`
-/

namespace A362368.P16856462447779543530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (A067063 (n + 2)).toNat * A035102 (n + 2)

end

end A362368.P16856462447779543530

/-! ## A362368.P6165763679157359478

`A001950(A199201(2*n+1))%A258018(n+5)`
-/

namespace A362368.P6165763679157359478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001950 (A199201 (2 * n + 1)).toNat) (A258018 (n + 5))

end

end A362368.P6165763679157359478

/-! ## A362368.P7853924845235674601

`A000027(A001769(3*n+1))%A183202(3*n)`
-/

namespace A362368.P7853924845235674601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A001769 (3 * n + 1)).toNat) (A183202 (3 * n))

end

end A362368.P7853924845235674601

/-!
# A362369: Triangle read by rows, T(n, k) = binomial(n, k) * k! * Stirling2(n-k, k), for n >= 0 and 0 <= k <= n//2, where '//' denotes integer division.

The programs for A362369, there is no canonical definition to state claims against.
-/

/-! ## A362369.P6938911718569745737

`A034868(n)*A344392(n)`
-/

namespace A362369.P6938911718569745737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 n * A344392 n

end

end A362369.P6938911718569745737

/-! ## A362369.P4112891691850312919

`A368584(A091018(n))`
-/

namespace A362369.P4112891691850312919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368584 (A091018 n).toNat

end

end A362369.P4112891691850312919

/-! ## A362369.P13678671938865317121

`A368584(A056536(n+1)-1)`
-/

namespace A362369.P13678671938865317121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368584 (A056536 (n + 1) - 1).toNat

end

end A362369.P13678671938865317121

/-!
# A362370: Triangle read by rows. T(n, k) = ([x^k] P(n, x)) // k! where P(n, x) = Sum_{k=1..n} P(n - k, x) * x if n >= 1 and P(0, x) = 1. The notation 's // t' means integer division and is a shortcut for 'floor(s/t)'.

The programs for A362370, there is no canonical definition to state claims against.
-/

/-! ## A362370.P12772711100604433584

`gcd(A284757(n+1), A387880(n))`
-/

namespace A362370.P12772711100604433584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284757 (n + 1)) (A387880 n)

end

end A362370.P12772711100604433584

/-! ## A362370.P10177902552110608182

`A269939(n)%A090369(A355403(n+8))`
-/

namespace A362370.P10177902552110608182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269939 n) (A090369 (A355403 (n + 8)).toNat)

end

end A362370.P10177902552110608182

/-! ## A362370.P15111326751865319116

`A353849(C(A333755(n), A353835(n+5)))`
-/

namespace A362370.P15111326751865319116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353849 (Nat.choose (A333755 n).toNat (A353835 (n + 5)).toNat)

end

end A362370.P15111326751865319116

/-! ## A362370.P6253466446821279751

`ceil(A387880(n)/A295935(3*n+2))`
-/

namespace A362370.P6253466446821279751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A387880 n : ℚ) / (A295935 (3 * n + 2) : ℚ)⌉

end

end A362370.P6253466446821279751

/-!
# A362372: Inventory of powers. Initialize the sequence with '1'. Then record the number of powers of 1 thus far, then do the same for powers of 2 (2, 4, 8, ...), powers of 3, etc. When the count is zero, do not record a zero; rather start the inventory again with the powers of 1.

The programs for A362372, there is no canonical definition to state claims against.
-/

/-! ## A362372.P6823200368554528362

`A201199(lt[A099510(n), 3])`
-/

namespace A362372.P6823200368554528362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099510 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201199 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A362372.P6823200368554528362

/-! ## A362372.P8532437352929515889

`filter[A232535(n), A393067(#)]`
-/

namespace A362372.P8532437352929515889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232535 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A393067 (f1 j).toNat = 1) n)

end

end A362372.P8532437352929515889

/-! ## A362372.P3835059952448255687

`filter[A137896(2*n), A010055(#)]`
-/

namespace A362372.P3835059952448255687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A362372.P3835059952448255687

/-! ## A362372.P14784940075017830358

`filter[A159623(2*n), A010055(#)]`
-/

namespace A362372.P14784940075017830358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A362372.P14784940075017830358

/-! ## A362372.P1951084530714234642

`filter[A137896(2*n), A117198(#)]`
-/

namespace A362372.P1951084530714234642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137896 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A117198 (f1 j).toNat = 1) n)

end

end A362372.P1951084530714234642

/-!
# A362373: a(0) = 0; for n > 0, if n appears in the sequence then a(n) is the sum of the indices of all previous appearances of n. Otherwise a(n) = a(n-1) - n if nonnegative and not already in the sequence, otherwise a(n) = a(n-1) + n.

The programs for A362373, there is no canonical definition to state claims against.
-/

/-! ## A362373.P13178524199590435820

`A340612(A263273(n)%A075029(n+1))`
-/

namespace A362373.P13178524199590435820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340612 (Int.tmod (A263273 n) (A075029 (n + 1))).toNat

end

end A362373.P13178524199590435820

/-!
# A362374: Number of solutions of y^2 + y = x^3 + x where x and y are in GF(2^n).

The programs for A362374, the canonical program `A362374.P1336041189902333353` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362374 has offset 1).

The definition of A362374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362374.P1336041189902333353

`4*A038518(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A362374

/-- `4*A038518(n+1)` -/
def P1336041189902333353.Spec : Prop :=
  ∀ n, P1336041189902333353.a n = A362374 (n + 1)

theorem P1336041189902333353.correct : P1336041189902333353.Spec := by
  intro n
  simp only [A362374, Nat.add_sub_cancel]

end A362374

/-! ## A362374.P15488659436929350720

`2*(a(n-2)+2*a(n-3))` with `a(0)=4, a(1)=4, a(2)=4`
-/

namespace A362374.P15488659436929350720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4, 4] fun n a =>
  2 * (a (n - 2) + 2 * a (n - 3))

end

end A362374.P15488659436929350720

namespace A362374

/-- `2*(a(n-2)+2*a(n-3))` -/
def P15488659436929350720.Spec : Prop :=
  ∀ n, (P15488659436929350720.a n : ℤ) = A362374 (n + 1)

end A362374

/-! ## A362374.P2230699505284233688

`∑[4*Δ[A038518(n)]]`
-/

namespace A362374.P2230699505284233688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362374.P2230699505284233688

namespace A362374

/-- `∑[4*Δ[A038518(n)]]` -/
def P2230699505284233688.Spec : Prop :=
  ∀ n, P2230699505284233688.a n = A362374 (n + 1)

end A362374

/-! ## A362374.P1223635712349715474

`4*(A275016(n+1)+1)`
-/

namespace A362374.P1223635712349715474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A275016 (n + 1) + 1)

end

end A362374.P1223635712349715474

namespace A362374

/-- `4*(A275016(n+1)+1)` -/
def P1223635712349715474.Spec : Prop :=
  ∀ n, P1223635712349715474.a n = A362374 (n + 1)

end A362374

/-! ## A362374.P17432166653196619444

`2*(A090132(n)+A000079(n))`
-/

namespace A362374.P17432166653196619444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090132 n + A000079 n)

end

end A362374.P17432166653196619444

namespace A362374

/-- `2*(A090132(n)+A000079(n))` -/
def P17432166653196619444.Spec : Prop :=
  ∀ n, P17432166653196619444.a n = A362374 (n + 1)

end A362374

/-! ## A362374.P1011083056006321954

`A108520(n+2)+A000079(n+1)`
-/

namespace A362374.P1011083056006321954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108520 (n + 2) + A000079 (n + 1)

end

end A362374.P1011083056006321954

namespace A362374

/-- `A108520(n+2)+A000079(n+1)` -/
def P1011083056006321954.Spec : Prop :=
  ∀ n, P1011083056006321954.a n = A362374 (n + 1)

end A362374

/-! ## A362374.P2002020582892499362

`A000079(n+1)-A084102(n+2)`
-/

namespace A362374.P2002020582892499362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A084102 (n + 2)

end

end A362374.P2002020582892499362

namespace A362374

/-- `A000079(n+1)-A084102(n+2)` -/
def P2002020582892499362.Spec : Prop :=
  ∀ n, P2002020582892499362.a n = A362374 (n + 1)

end A362374

/-! ## A362374.P15363505727453681182

`A000079(n+1)+A090132(n)+A090132(n)`
-/

namespace A362374.P15363505727453681182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A090132 n + A090132 n)

end

end A362374.P15363505727453681182

namespace A362374

/-- `A000079(n+1)+A090132(n)+A090132(n)` -/
def P15363505727453681182.Spec : Prop :=
  ∀ n, P15363505727453681182.a n = A362374 (n + 1)

end A362374

/-! ## A362374.P11429519831025748171

`A000079(n+1)-(A009116(n+1)+A009116(n+1))`
-/

namespace A362374.P11429519831025748171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - (A009116 (n + 1) + A009116 (n + 1))

end

end A362374.P11429519831025748171

namespace A362374

/-- `A000079(n+1)-(A009116(n+1)+A009116(n+1))` -/
def P11429519831025748171.Spec : Prop :=
  ∀ n, P11429519831025748171.a n = A362374 (n + 1)

end A362374

/-!
# A362375: a(n) = rad((2n-1)!/(n-1)!).

The programs for A362375, the canonical program `A362375.P18320752346947795211` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362375 has offset 1).

The definition of A362375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362375.P18320752346947795211

`A007947(A000407(n))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A362375

/-- `A007947(A000407(n))` -/
def P18320752346947795211.Spec : Prop :=
  ∀ n, P18320752346947795211.a n = A362375 (n + 1)

theorem P18320752346947795211.correct : P18320752346947795211.Spec := by
  intro n
  simp only [A362375, Nat.add_sub_cancel]

end A362375

/-! ## A362375.P2078662698822801734

`A034386(Δ[n²])`
-/

namespace A362375.P2078662698822801734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362375.P2078662698822801734

namespace A362375

/-- `A034386(Δ[n²])` -/
def P2078662698822801734.Spec : Prop :=
  ∀ n, P2078662698822801734.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P18120826604856581090

`A080506(Δ[n²])`
-/

namespace A362375.P18120826604856581090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080506 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A362375.P18120826604856581090

namespace A362375

/-- `A080506(Δ[n²])` -/
def P18120826604856581090.Spec : Prop :=
  ∀ n, P18120826604856581090.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P7735034025299943038

`A300951(4*n+2)`
-/

namespace A362375.P7735034025299943038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (4 * n + 2)

end

end A362375.P7735034025299943038

namespace A362375

/-- `A300951(4*n+2)` -/
def P7735034025299943038.Spec : Prop :=
  ∀ n, P7735034025299943038.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P10951485794490105342

`lcm(A034386(n), A163640(n))`
-/

namespace A362375.P10951485794490105342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034386 n) (A163640 n)

end

end A362375.P10951485794490105342

namespace A362375

/-- `lcm(A034386(n), A163640(n))` -/
def P10951485794490105342.Spec : Prop :=
  ∀ n, (P10951485794490105342.a n : ℤ) = A362375 (n + 1)

end A362375

/-! ## A362375.P469571350665618609

`A002110(A000720(2*n+1))`
-/

namespace A362375.P469571350665618609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000720 (2 * n + 1)).toNat

end

end A362375.P469571350665618609

namespace A362375

/-- `A002110(A000720(2*n+1))` -/
def P469571350665618609.Spec : Prop :=
  ∀ n, P469571350665618609.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P18181391769587485630

`A002110(A036234(2*n+1)-1)`
-/

namespace A362375.P18181391769587485630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A036234 (2 * n + 1) - 1).toNat

end

end A362375.P18181391769587485630

namespace A362375

/-- `A002110(A036234(2*n+1)-1)` -/
def P18181391769587485630.Spec : Prop :=
  ∀ n, P18181391769587485630.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P12262548944992907339

`A002110(A056172(2*(2*n+1)))`
-/

namespace A362375.P12262548944992907339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A056172 (2 * (2 * n + 1))).toNat

end

end A362375.P12262548944992907339

namespace A362375

/-- `A002110(A056172(2*(2*n+1)))` -/
def P12262548944992907339.Spec : Prop :=
  ∀ n, P12262548944992907339.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P2640055380081111660

`A003418(2*n+1)-A068510(2*n+1)`
-/

namespace A362375.P2640055380081111660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (2 * n + 1) - A068510 (2 * n + 1)

end

end A362375.P2640055380081111660

namespace A362375

/-- `A003418(2*n+1)-A068510(2*n+1)` -/
def P2640055380081111660.Spec : Prop :=
  ∀ n, P2640055380081111660.a n = A362375 (n + 1)

end A362375

/-! ## A362375.P5158455065452467307

`A003418(2*n+1)/A045948(2*n+1)`
-/

namespace A362375.P5158455065452467307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (2 * n + 1) : ℚ) / (A045948 (2 * n + 1) : ℚ)

end

end A362375.P5158455065452467307

namespace A362375

/-- `A003418(2*n+1)/A045948(2*n+1)` -/
def P5158455065452467307.Spec : Prop :=
  ∀ n, P5158455065452467307.a n = (A362375 (n + 1) : ℚ)

end A362375

/-!
# A362379: Convolution triangle of A052547(n).

The programs for A362379, there is no canonical definition to state claims against.
-/

/-! ## A362379.P13178411883998610991

`abs(Δ[A357623(A094587(n+2))])`
-/

namespace A362379.P13178411883998610991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357623 (A094587 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A362379.P13178411883998610991

/-! ## A362379.P1618759550791976824

`A122283(A244688(n+1)+A004906(n+1))`
-/

namespace A362379.P1618759550791976824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122283 (A244688 (n + 1) + A004906 (n + 1)).toNat

end

end A362379.P1618759550791976824

/-!
# A362380: E.g.f. satisfies A(x) = exp(x + 3*x^2/2 * A(x)).

The programs for A362380, there is no canonical definition to state claims against.
-/

/-! ## A362380.P15053949612864852982

`A362377(3*n+5+∑[n+1])`
-/

namespace A362380.P15053949612864852982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362377 (3 * n + 5 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362380.P15053949612864852982

/-! ## A362380.P17123383469374670718

`A276952(A001246(n)+∑[A316101(n)])`
-/

namespace A362380.P17123383469374670718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A001246 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362380.P17123383469374670718

/-!
# A362381: E.g.f. satisfies A(x) = exp(x + x^3/6 * A(x)).

The programs for A362381, there is no canonical definition to state claims against.
-/

/-! ## A362381.P483422608085201335

`A362378(∑[n+2]-1)`
-/

namespace A362381.P483422608085201335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A362381.P483422608085201335

/-! ## A362381.P16004521231233602337

`lcm(A114523(n), A362378(A034856(n+1)))`
-/

namespace A362381.P16004521231233602337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A114523 n) (A362378 (A034856 (n + 1)).toNat)

end

end A362381.P16004521231233602337

/-! ## A362381.P7380990581513400879

`A362378(A034856(n+1))+A019590(n+3)`
-/

namespace A362381.P7380990581513400879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A034856 (n + 1)).toNat + A019590 (n + 3)

end

end A362381.P7380990581513400879

/-! ## A362381.P13952891256171128226

`A362378(A034856(n+1))+A059841(2*n+1)`
-/

namespace A362381.P13952891256171128226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A034856 (n + 1)).toNat + A059841 (2 * n + 1)

end

end A362381.P13952891256171128226

/-! ## A362381.P5101699207096957429

`A362378(A034856(n+1))+A056594(A069605(n+1))`
-/

namespace A362381.P5101699207096957429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A034856 (n + 1)).toNat + A056594 (A069605 (n + 1)).toNat

end

end A362381.P5101699207096957429

/-! ## A362381.P16354056145362918950

`A362378(A034856(n+1))+A056594(A329110(n+1))`
-/

namespace A362381.P16354056145362918950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A034856 (n + 1)).toNat + A056594 (A329110 (n + 1)).toNat

end

end A362381.P16354056145362918950

/-! ## A362381.P6110177543592167718

`A362378(A034856(n+1))+A056594(A353748(3*n+4))`
-/

namespace A362381.P6110177543592167718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A034856 (n + 1)).toNat + A056594 (A353748 (3 * n + 4)).toNat

end

end A362381.P6110177543592167718

/-!
# A362382: Number of nonisomorphic right involutory magmas with n elements.

The programs for A362382, there is no canonical definition to state claims against.
-/

/-! ## A362382.P9782794624733778096

`A187347(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A362382.P9782794624733778096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A187347 (a (n - 1) ^ 2).toNat

end

end A362382.P9782794624733778096

/-!
# A362383: Number of labeled right involutory magmas with n elements.

The programs for A362383, the canonical program `A362383.P16107489141346088252` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362383 has offset 0).

The definition of A362383 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362383.P16107489141346088252

`A000085(n)^n`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A362383

/-- `A000085(n)^n` -/
def P16107489141346088252.Spec : Prop :=
  ∀ n, P16107489141346088252.a n = A362383 n

theorem P16107489141346088252.correct : P16107489141346088252.Spec := by
  intro n
  simp only [A362383]

end A362383

/-! ## A362383.P1244871285013245394

`∏[(n-1)/a(n-1)+1]^n` with `a(0)=1`
-/

namespace A362383.P1244871285013245394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A362383.P1244871285013245394

namespace A362383

/-- `∏[(n-1)/a(n-1)+1]^n` -/
def P1244871285013245394.Spec : Prop :=
  ∀ n, P1244871285013245394.a n = (A362383 n : ℚ)

end A362383

/-! ## A362383.P2751473524516156556

`∏[abs(1-a(n-1)-n)/a(n-1)]^n` with `a(0)=1`
-/

namespace A362383.P2751473524516156556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  |1 - f1 (n - 1) - (n : ℚ)| / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A362383.P2751473524516156556

namespace A362383

/-- `∏[abs(1-a(n-1)-n)/a(n-1)]^n` -/
def P2751473524516156556.Spec : Prop :=
  ∀ n, P2751473524516156556.a n = (A362383 n : ℚ)

end A362383

/-! ## A362383.P17980496923858100486

`A070895(∑[n])^n`
-/

namespace A362383.P17980496923858100486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070895 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A362383.P17980496923858100486

namespace A362383

/-- `A070895(∑[n])^n` -/
def P17980496923858100486.Spec : Prop :=
  ∀ n, P17980496923858100486.a n = A362383 n

end A362383

/-! ## A362383.P16078481472470104817

`A099020(∑[n])^n`
-/

namespace A362383.P16078481472470104817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099020 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A362383.P16078481472470104817

namespace A362383

/-- `A099020(∑[n])^n` -/
def P16078481472470104817.Spec : Prop :=
  ∀ n, P16078481472470104817.a n = A362383 n

end A362383

/-!
# A362385: Number of nonisomorphic magmas with n elements satisfying the equation x(yz) = xy.

The programs for A362385, there is no canonical definition to state claims against.
-/

/-! ## A362385.P6506087194583593966

`A156061(7^n+1)`
-/

namespace A362385.P6506087194583593966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (7 ^ n + 1)

end

end A362385.P6506087194583593966

/-!
# A362386: Number of labeled magmas with n elements satisfying the equation x(yz) = xy.

The programs for A362386, there is no canonical definition to state claims against.
-/

/-! ## A362386.P18157761777547639910

`A034886(A096313(n)+1)`
-/

namespace A362386.P18157761777547639910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 (A096313 n + 1).toNat

end

end A362386.P18157761777547639910

/-!
# A362387: Number of directed multigraphs including self-loops on n vertices and n edges.

The programs for A362387, there is no canonical definition to state claims against.
-/

/-! ## A362387.P2240197708029348313

`A138107(∑[4*n])`
-/

namespace A362387.P2240197708029348313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362387.P2240197708029348313

/-! ## A362387.P14738079963894534214

`and(-1, A138107(A046092(n)))`
-/

namespace A362387.P14738079963894534214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A138107 (A046092 n).toNat)

end

end A362387.P14738079963894534214

/-! ## A362387.P4747004263207419479

`A138107(A106232(n+1))+A000007(n+4)`
-/

namespace A362387.P4747004263207419479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A106232 (n + 1)).toNat + A000007 (n + 4)

end

end A362387.P4747004263207419479

/-! ## A362387.P5919991996056623728

`A138107(A046092(n))%A196265(3*n+2)`
-/

namespace A362387.P5919991996056623728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138107 (A046092 n).toNat) (A196265 (3 * n + 2))

end

end A362387.P5919991996056623728

/-! ## A362387.P285852943293721631

`A138107(A106232(n+1))*A178489(3*n+2)`
-/

namespace A362387.P285852943293721631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A106232 (n + 1)).toNat * A178489 (3 * n + 2)

end

end A362387.P285852943293721631

/-!
# A362388: a(n) = a(n-1) + a(n-3) + a(n-4), where a(0) = 1, a(1) = 2, a(2) = 5, a(3) = 7.

The programs for A362388, the canonical program `A362388.P1464284249956426775` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362388 has offset 0).

The definition of A362388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A362388.P1464284249956426775`, by `A362388.P1464284249956426775.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362388.P1464284249956426775

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A362388

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P1464284249956426775.Spec : Prop :=
  ∀ n, (P1464284249956426775.a n : ℤ) = A362388 n

theorem P1464284249956426775.correct : P1464284249956426775.Spec := by
  intro n
  simp only [A362388]

end A362388

/-! ## A362388.P12182549628650762381

`A195971(n)+A000045(n+1)`
-/

namespace A362388.P12182549628650762381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 n + A000045 (n + 1)

end

end A362388.P12182549628650762381

namespace A362388

/-- `A195971(n)+A000045(n+1)` -/
def P12182549628650762381.Spec : Prop :=
  ∀ n, P12182549628650762381.a n = A362388 n

end A362388

/-! ## A362388.P15981292112433952825

`A111573(n)+A074677(n+2)`
-/

namespace A362388.P15981292112433952825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111573 n + A074677 (n + 2)

end

end A362388.P15981292112433952825

namespace A362388

/-- `A111573(n)+A074677(n+2)` -/
def P15981292112433952825.Spec : Prop :=
  ∀ n, P15981292112433952825.a n = A362388 n

end A362388

/-! ## A362388.P5804534749222642997

`A074662(n+2)-A074677(n)`
-/

namespace A362388.P5804534749222642997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074662 (n + 2) - A074677 n

end

end A362388.P5804534749222642997

namespace A362388

/-- `A074662(n+2)-A074677(n)` -/
def P5804534749222642997.Spec : Prop :=
  ∀ n, P5804534749222642997.a n = A362388 n

end A362388

/-! ## A362388.P3740323220789468432

`A295678(n+2)-A000045(n)`
-/

namespace A362388.P3740323220789468432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295678 (n + 2) - A000045 n

end

end A362388.P3740323220789468432

namespace A362388

/-- `A295678(n+2)-A000045(n)` -/
def P3740323220789468432.Spec : Prop :=
  ∀ n, P3740323220789468432.a n = A362388 n

end A362388

/-! ## A362388.P16181954804740107772

`A295680(n+1)+A000045(n+2)`
-/

namespace A362388.P16181954804740107772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295680 (n + 1) + A000045 (n + 2)

end

end A362388.P16181954804740107772

namespace A362388

/-- `A295680(n+1)+A000045(n+2)` -/
def P16181954804740107772.Spec : Prop :=
  ∀ n, P16181954804740107772.a n = A362388 n

end A362388

/-! ## A362388.P15731286275913631076

`A295681(n+1)+A295681(n+2)`
-/

namespace A362388.P15731286275913631076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (n + 1) + A295681 (n + 2)

end

end A362388.P15731286275913631076

namespace A362388

/-- `A295681(n+1)+A295681(n+2)` -/
def P15731286275913631076.Spec : Prop :=
  ∀ n, P15731286275913631076.a n = A362388 n

end A362388

/-! ## A362388.P9265539261875669585

`A000045(n+1)+A006498(n+1)-A056594(n)`
-/

namespace A362388.P9265539261875669585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A006498 (n + 1) - A056594 n)

end

end A362388.P9265539261875669585

namespace A362388

/-- `A000045(n+1)+A006498(n+1)-A056594(n)` -/
def P9265539261875669585.Spec : Prop :=
  ∀ n, P9265539261875669585.a n = A362388 n

end A362388

/-! ## A362388.P16375800331601464744

`A006498(n+1)+A115008(n+1)-A000045(n)`
-/

namespace A362388.P16375800331601464744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 1) + (A115008 (n + 1) - A000045 n)

end

end A362388.P16375800331601464744

namespace A362388

/-- `A006498(n+1)+A115008(n+1)-A000045(n)` -/
def P16375800331601464744.Spec : Prop :=
  ∀ n, P16375800331601464744.a n = A362388 n

end A362388

/-! ## A362388.P4408053280483441305

`A000045(n+1)+A053602(n)*A123231(n+2)`
-/

namespace A362388.P4408053280483441305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + A053602 n * A123231 (n + 2)

end

end A362388.P4408053280483441305

namespace A362388

/-- `A000045(n+1)+A053602(n)*A123231(n+2)` -/
def P4408053280483441305.Spec : Prop :=
  ∀ n, P4408053280483441305.a n = A362388 n

end A362388

/-! ## A362388.P6517794390079886022

`A302506(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A362388.P6517794390079886022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A302506 (n + 1) - a (n - 1)

end

end A362388.P6517794390079886022

namespace A362388

/-- `A302506(n+1)-a(n-1)` -/
def P6517794390079886022.Spec : Prop :=
  ∀ n, P6517794390079886022.a n = A362388 n

end A362388

/-! ## A362388.P13303647837546855840

`∪[A014742(n), A069921(n)]`
-/

namespace A362388.P13303647837546855840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069921 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A362388.P13303647837546855840

namespace A362388

/-- `∪[A014742(n), A069921(n)]` -/
def P13303647837546855840.Spec : Prop :=
  ∀ n, (P13303647837546855840.a n : ℤ) = A362388 n

end A362388

/-! ## A362388.P17530261688281311193

`A070550(n+2)-A126116(n+1)`
-/

namespace A362388.P17530261688281311193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (n + 2) - A126116 (n + 1)

end

end A362388.P17530261688281311193

namespace A362388

/-- `A070550(n+2)-A126116(n+1)` -/
def P17530261688281311193.Spec : Prop :=
  ∀ n, P17530261688281311193.a n = A362388 n

end A362388

/-! ## A362388.P5993869820330213631

`A000045(n+1)+Δ[A070550(n+1)]`
-/

namespace A362388.P5993869820330213631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (f1 (n + 1) - f1 n)

end

end A362388.P5993869820330213631

namespace A362388

/-- `A000045(n+1)+Δ[A070550(n+1)]` -/
def P5993869820330213631.Spec : Prop :=
  ∀ n, P5993869820330213631.a n = A362388 n

end A362388

/-! ## A362388.P13488213757867094712

`record[Δ[A295681(n)]]`
-/

namespace A362388.P13488213757867094712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362388.P13488213757867094712

namespace A362388

/-- `record[Δ[A295681(n)]]` -/
def P13488213757867094712.Spec : Prop :=
  ∀ n, P13488213757867094712.a n = A362388 n

end A362388

/-! ## A362388.P10854155287002259852

`Δ[A295681(n+4)]`
-/

namespace A362388.P10854155287002259852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295681 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362388.P10854155287002259852

namespace A362388

/-- `Δ[A295681(n+4)]` -/
def P10854155287002259852.Spec : Prop :=
  ∀ n, P10854155287002259852.a n = A362388 n

end A362388

/-!
# A362389: G.f. satisfies A(x) = exp( Sum_{k>=1} (2^k + A(x^k)) * x^k/k ).

The programs for A362389, there is no canonical definition to state claims against.
-/

/-! ## A362389.P17547471163613045277

`A363545(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A362389.P17547471163613045277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A363545 n + 2 * a (n - 1)

end

end A362389.P17547471163613045277

/-! ## A362389.P15428220891847910646

`A127757(A180147(n))`
-/

namespace A362389.P15428220891847910646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A180147 n).toNat

end

end A362389.P15428220891847910646

/-!
# A362390: E.g.f. satisfies A(x) = exp(x + x^3/3 * A(x)).

The programs for A362390, there is no canonical definition to state claims against.
-/

/-! ## A362390.P12494056706699902869

`A362378(∑[n+3])`
-/

namespace A362390.P12494056706699902869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362390.P12494056706699902869

/-! ## A362390.P6388820676819874965

`A132278(A206301(n))`
-/

namespace A362390.P6388820676819874965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132278 (A206301 n).toNat

end

end A362390.P6388820676819874965

/-! ## A362390.P14101620330804140440

`A132278(A347011(n))`
-/

namespace A362390.P14101620330804140440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132278 (A347011 n).toNat

end

end A362390.P14101620330804140440

/-!
# A362391: E.g.f. satisfies A(x) = exp(x + x^3/2 * A(x)).

The programs for A362391, there is no canonical definition to state claims against.
-/

/-! ## A362391.P8958202292249378482

`A362378(A046691(n+2))`
-/

namespace A362391.P8958202292249378482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A046691 (n + 2)).toNat

end

end A362391.P8958202292249378482

/-! ## A362391.P486202217120996165

`A362378(A055999(n+1)+2)`
-/

namespace A362391.P486202217120996165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A055999 (n + 1) + 2).toNat

end

end A362391.P486202217120996165

/-! ## A362391.P10571073301044951720

`A362378(A000217(n+4)-4)`
-/

namespace A362391.P10571073301044951720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A000217 (n + 4) - 4).toNat

end

end A362391.P10571073301044951720

/-! ## A362391.P2702740610895437975

`A362378(lt[A103406(n+4), A003056(n)])`
-/

namespace A362391.P2702740610895437975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362391.P2702740610895437975

/-! ## A362391.P7263776079128573000

`A362378(lt[A103406(n+4), A025581(n)])`
-/

namespace A362391.P7263776079128573000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362391.P7263776079128573000

/-! ## A362391.P11139314883532772512

`A362378(lt[A103406(n+4), A092543(n+1)])`
-/

namespace A362391.P11139314883532772512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A362391.P11139314883532772512

/-!
# A362392: E.g.f. satisfies A(x) = exp(x + x^3 * A(x)).

The programs for A362392, there is no canonical definition to state claims against.
-/

/-! ## A362392.P2044944917618234362

`A362378(eq[6, A025581(n)])`
-/

namespace A362392.P2044944917618234362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362392.P2044944917618234362

/-! ## A362392.P13220546245411963712

`A362378(A055999(n+4)-1)`
-/

namespace A362392.P13220546245411963712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A055999 (n + 4) - 1).toNat

end

end A362392.P13220546245411963712

/-! ## A362392.P6922797708942846066

`A362378(A000027(2*n+1)+A000096(n+4)+6)`
-/

namespace A362392.P6922797708942846066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362378 (A000027 (2 * n + 1) + (A000096 (n + 4) + 6)).toNat

end

end A362392.P6922797708942846066

/-!
# A362393: E.g.f. satisfies A(x) = exp(x + x^4 * A(x)).

The programs for A362393, there is no canonical definition to state claims against.
-/

/-! ## A362393.P5755155786546606593

`A098180((n-3)*(n-2)*(n-1)*n*2^(n-4))`
-/

namespace A362393.P5755155786546606593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat

end

end A362393.P5755155786546606593

/-! ## A362393.P13892409887909080782

`A028310((n-3)*(n-2)*(n-1)*n*2^(n-4)+1)`
-/

namespace A362393.P13892409887909080782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))) + 1)).toNat

end

end A362393.P13892409887909080782

/-! ## A362393.P18239873725937279432

`A094757((n-3)*(n-2)*(n-1)*n*2^(n-4)+1)`
-/

namespace A362393.P18239873725937279432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094757 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))) + 1)).toNat

end

end A362393.P18239873725937279432

/-! ## A362393.P216292426843488431

`abs((-1)^n*A004442((n-3)*(n-2)*(n-1)*n*2^(n-4)))`
-/

namespace A362393.P216292426843488431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * A004442 (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) * (((n : ℤ) - 2 : ℚ) * (((n : ℤ) - 1 : ℚ) * ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 4 : ℤ)))))).toNat|

end

end A362393.P216292426843488431

/-!
# A362395: E.g.f. satisfies A(x) = exp(x - x^2/2 * A(x)).

The programs for A362395, there is no canonical definition to state claims against.
-/

/-! ## A362395.P13209270878903373453

`A362394(∑[n+2]-1)`
-/

namespace A362395.P13209270878903373453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A362395.P13209270878903373453

/-! ## A362395.P13436929152928767969

`A362394(A034856(n+1))%A002720(n+3)`
-/

namespace A362395.P13436929152928767969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362394 (A034856 (n + 1)).toNat) (A002720 (n + 3))

end

end A362395.P13436929152928767969

/-! ## A362395.P11072630554296345921

`A362394(A034856(n+1))+A007814(2*n+3)`
-/

namespace A362395.P11072630554296345921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (A034856 (n + 1)).toNat + A007814 (2 * n + 3)

end

end A362395.P11072630554296345921

/-! ## A362395.P14753070133051125547

`A362394(A034856(n+1))+A010054(3*n+2)`
-/

namespace A362395.P14753070133051125547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (A034856 (n + 1)).toNat + A010054 (3 * n + 2)

end

end A362395.P14753070133051125547

/-! ## A362395.P7112352639939896797

`A102283(3*n+2)+A362394(A034856(n+1))+1`
-/

namespace A362395.P7112352639939896797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (3 * n + 2) + (A362394 (A034856 (n + 1)).toNat + 1)

end

end A362395.P7112352639939896797

/-!
# A362396: E.g.f. satisfies A(x) = exp(x - x^2 * A(x)).

The programs for A362396, there is no canonical definition to state claims against.
-/

/-! ## A362396.P8992750315218166201

`A362394(∑[n+3])`
-/

namespace A362396.P8992750315218166201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362396.P8992750315218166201

/-!
# A362397: E.g.f. satisfies A(x) = exp(x - 3*x^2/2 * A(x)).

The programs for A362397, there is no canonical definition to state claims against.
-/

/-! ## A362397.P4759625538541974928

`A362394(eq[3, A025581(n)])`
-/

namespace A362397.P4759625538541974928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362397.P4759625538541974928

/-! ## A362397.P13504731089132537920

`A362394(A000217(n+4)-4)`
-/

namespace A362397.P13504731089132537920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (A000217 (n + 4) - 4).toNat

end

end A362397.P13504731089132537920

/-! ## A362397.P6690138905922122372

`A362394(eq[4, 1-∑[A167407(n)]])`
-/

namespace A362397.P6690138905922122372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362397.P6690138905922122372

/-! ## A362397.P11974177563112353264

`A362394(eq[4, val(A118586(n+1), 2)])`
-/

namespace A362397.P11974177563112353264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A362397.P11974177563112353264

/-! ## A362397.P4504727318324838353

`A362394(A034856(n+2)+n+2)`
-/

namespace A362397.P4504727318324838353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362394 (A034856 (n + 2) + (n + 2 : ℤ)).toNat

end

end A362397.P4504727318324838353

/-!
# A362398: Records in A336830.

The programs for A362398, there is no canonical definition to state claims against.
-/

/-! ## A362398.P7742020988455646147

`record[A336830(n)]`
-/

namespace A362398.P7742020988455646147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362398.P7742020988455646147

/-! ## A362398.P6926765183675377794

`A336830(A362399(n+1))`
-/

namespace A362398.P6926765183675377794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336830 (A362399 (n + 1)).toNat

end

end A362398.P6926765183675377794

/-!
# A362399: Positions of records in A336830.

The programs for A362399, there is no canonical definition to state claims against.
-/

/-! ## A362399.P13280422184852225597

`eq[A049710(A200997(n+2)), A220413(n+1)]`
-/

namespace A362399.P13280422184852225597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049710 (A200997 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362399.P13280422184852225597

/-! ## A362399.P12909418930134116241

`eq[A220413(A095791(2*n+3)), A220413(n+1)]`
-/

namespace A362399.P12909418930134116241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (A095791 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220413 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A362399.P12909418930134116241

