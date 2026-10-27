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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A080500: a(n) = (n-1)(n-4)(n-9)...(n-k^2) where k^2 < n <= (k+1)^2.

The programs for A080500, there is no canonical definition to state claims against.
-/

/-! ## A080500.P16828613787449651993

`A005361(A000079(n)*A065019(n))*A322856(n+4)`
-/

namespace A080500.P16828613787449651993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A000079 n * A065019 n).toNat * A322856 (n + 4)

end

end A080500.P16828613787449651993

/-! ## A080500.P231004098432668220

`A028310(n*A020753(A121433(n)))`
-/

namespace A080500.P231004098432668220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A020753 (A121433 n).toNat).toNat

end

end A080500.P231004098432668220

/-! ## A080500.P7685469719351148478

`A007661(n)/A000188(A072346(n))`
-/

namespace A080500.P7685469719351148478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007661 n : ℚ) / (A000188 (A072346 n).toNat : ℚ)

end

end A080500.P7685469719351148478

/-! ## A080500.P12481946577180606458

`gcd(n, A008574(n))*A020753(A121433(n))`
-/

namespace A080500.P12481946577180606458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A008574 n) : ℤ) * A020753 (A121433 n).toNat

end

end A080500.P12481946577180606458

/-! ## A080500.P4111256212398791302

`A129116(∑[n+2]-1)/A000188(A072346(n))`
-/

namespace A080500.P4111256212398791302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129116 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ) / (A000188 (A072346 n).toNat : ℚ)

end

end A080500.P4111256212398791302

/-!
# A080501: Let f(n) be the smallest multiple of n that can be obtained by inserting digits anywhere in n except that f(n) is not equal to 10*n; a(n) = f(n)/n.

The programs for A080501, there is no canonical definition to state claims against.
-/

/-! ## A080501.P7365128832429418347

`A113221(A309631(n+1)/(n+1))`
-/

namespace A080501.P7365128832429418347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113221 (SequenceMachineLib.roundAway ((A309631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A080501.P7365128832429418347

/-! ## A080501.P4065480989626732354

`A118759(A309631(n+1)/(n+1))`
-/

namespace A080501.P4065480989626732354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway ((A309631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A080501.P4065480989626732354

/-! ## A080501.P252733209016623724

`∑{e}[A107392(A309631(n+1)/(n+1))+1, #-1]`
-/

namespace A080501.P252733209016623724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107392 (SequenceMachineLib.roundAway ((A309631 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A080501.P252733209016623724

/-! ## A080501.P6526616006839503296

`A309631(n+1)%A006352(A007662(n))/(n+1)`
-/

namespace A080501.P6526616006839503296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A309631 (n + 1)) (A006352 (A007662 n).toNat) : ℚ) / (n + 1 : ℚ)

end

end A080501.P6526616006839503296

/-!
# A080502: a(1) = 1, a(n) = smallest multiple of n that can be obtained by inserting digits anywhere in a(n-1) if necessary.

The programs for A080502, there is no canonical definition to state claims against.
-/

/-! ## A080502.P823135383688167706

`(n+1)*A080503(n+1)`
-/

namespace A080502.P823135383688167706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A080503 (n + 1)

end

end A080502.P823135383688167706

/-!
# A080503: a(n) = A080502(n)/n.

The programs for A080503, there is no canonical definition to state claims against.
-/

/-! ## A080503.P11569372905863989315

`A080502(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080503.P11569372905863989315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080502 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A080503.P11569372905863989315

/-!
# A080504: Triangle whose n-th row contains the least set (ordered lexicographically) of n distinct positive integers whose arithmetic and geometric means are both integers.

The programs for A080504, there is no canonical definition to state claims against.
-/

/-! ## A080504.P2577905029553402991

`A089904(a(n-1))-1` with `a(0)=1, a(1)=1, a(2)=9, a(3)=1`
-/

namespace A080504.P2577905029553402991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9, 1] fun n a =>
  A089904 (a (n - 1)).toNat - 1

end

end A080504.P2577905029553402991

/-! ## A080504.P17989681732031903519

`A163911(6*a(n-2))` with `a(0)=1, a(1)=1, a(2)=9, a(3)=1, a(4)=2`
-/

namespace A080504.P17989681732031903519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9, 1, 2] fun n a =>
  A163911 (6 * a (n - 2)).toNat

end

end A080504.P17989681732031903519

/-!
# A080505: Last term in n-th row of A080504.

The programs for A080505, there is no canonical definition to state claims against.
-/

/-! ## A080505.P11774139029011076050

`A080504(∑[n+1])`
-/

namespace A080505.P11774139029011076050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080505.P11774139029011076050

/-! ## A080505.P11030931949688307104

`ceil(1/A007318(n))*A080504(A000217(n+1))`
-/

namespace A080505.P11030931949688307104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A080504 (A000217 (n + 1)).toNat

end

end A080505.P11030931949688307104

/-! ## A080505.P720491325592954025

`A000041(C(2, n+2))*A080504(A000217(n+1))`
-/

namespace A080505.P720491325592954025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A080504 (A000217 (n + 1)).toNat

end

end A080505.P720491325592954025

/-! ## A080505.P1523289904029711028

`A080504(A000217(n+1))/A007318(and(2, n-2))`
-/

namespace A080505.P1523289904029711028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080504 (A000217 (n + 1)).toNat : ℚ) / (A007318 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A080505.P1523289904029711028

/-! ## A080505.P12477518446322301297

`A008683(A005117(n+1))²*A080504(A000217(n+1))`
-/

namespace A080505.P12477518446322301297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A005117 (n + 1)).toNat ^ 2 * A080504 (A000217 (n + 1)).toNat

end

end A080505.P12477518446322301297

/-!
# A080506: Geometric mean of n-th row of A080504.

The programs for A080506, there is no canonical definition to state claims against.
-/

/-! ## A080506.P4781355794583137729

`A108951(n+1)+A049310(A376388(n))`
-/

namespace A080506.P4781355794583137729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108951 (n + 1) + A049310 (A376388 n).toNat

end

end A080506.P4781355794583137729

/-! ## A080506.P15404232893541209543

`A019555(A059171(n+1)*A265895(n+1))`
-/

namespace A080506.P15404232893541209543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A059171 (n + 1) * A265895 (n + 1)).toNat

end

end A080506.P15404232893541209543

/-! ## A080506.P8924250409303176221

`A329378(A104350(n+1)*A139445(n+1))`
-/

namespace A080506.P8924250409303176221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329378 (A104350 (n + 1) * A139445 (n + 1)).toNat

end

end A080506.P8924250409303176221

/-!
# A080508: Triangle whose n-th row contains the least set (ordered lexicographically) of n distinct positive integers whose geometric mean is an integer.

The programs for A080508, there is no canonical definition to state claims against.
-/

/-! ## A080508.P9143571995185672395

`A292477(n)^A279060(A323752(n+1))`
-/

namespace A080508.P9143571995185672395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292477 n : ℚ) ^ (A279060 (A323752 (n + 1)).toNat : ℤ)

end

end A080508.P9143571995185672395

/-!
# A080509: Last term in n-th row of A080508.

The programs for A080509, there is no canonical definition to state claims against.
-/

/-! ## A080509.P16399996957769646308

`A080508(∑[n+1])`
-/

namespace A080509.P16399996957769646308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080508 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080509.P16399996957769646308

/-! ## A080509.P12607002743331691035

`and(-1, A080508(A000217(n+1)))`
-/

namespace A080509.P12607002743331691035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A080508 (A000217 (n + 1)).toNat)

end

end A080509.P12607002743331691035

/-! ## A080509.P6721892777467070274

`lcm(A060632(n), A080508(A000217(n+1)))`
-/

namespace A080509.P6721892777467070274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060632 n) (A080508 (A000217 (n + 1)).toNat)

end

end A080509.P6721892777467070274

/-! ## A080509.P3769100341786207215

`lcm(A080508(A161680(n+2)), A098568(n))`
-/

namespace A080509.P3769100341786207215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A080508 (A161680 (n + 2)).toNat) (A098568 n)

end

end A080509.P3769100341786207215

/-!
# A080510: Triangle read by rows: T(n,k) gives the number of set partitions of {1,...,n} with maximum block length k.

The programs for A080510, there is no canonical definition to state claims against.
-/

/-! ## A080510.P16033955999140472173

`A229223(A014132(n+1))-A229223(A007401(n+1))`
-/

namespace A080510.P16033955999140472173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229223 (A014132 (n + 1)).toNat - A229223 (A007401 (n + 1)).toNat

end

end A080510.P16033955999140472173

/-! ## A080510.P4618569474873812859

`A097751(A378163(n+1))`
-/

namespace A080510.P4618569474873812859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097751 (A378163 (n + 1)).toNat

end

end A080510.P4618569474873812859

/-! ## A080510.P17149499706526147035

`A378163(A000005(2^n))`
-/

namespace A080510.P17149499706526147035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378163 (A000005 (2 ^ n)).toNat

end

end A080510.P17149499706526147035

/-! ## A080510.P2392416167869413574

`A019554(A378163(n+1)²)`
-/

namespace A080510.P2392416167869413574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A378163 (n + 1) ^ 2).toNat

end

end A080510.P2392416167869413574

/-! ## A080510.P6820435837943152205

`A000196(A378163(n+1)^2)`
-/

namespace A080510.P6820435837943152205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A378163 (n + 1) ^ 2).toNat

end

end A080510.P6820435837943152205

/-!
# A080511: Triangle whose n-th row contains the least set (ordered lexicographically) of n distinct positive integers whose arithmetic mean is an integer.

The programs for A080511, the canonical program `A080511.P12034931715052828904` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080511 has offset 1).

The definition of A080511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080511.P3438795789715002745

`A083173(n+1)/A005145(n+1)`
-/

namespace A080511.P3438795789715002745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083173 (n + 1) : ℚ) / (A005145 (n + 1) : ℚ)

end

end A080511.P3438795789715002745

namespace A080511

/-- `A083173(n+1)/A005145(n+1)` -/
def P3438795789715002745.Spec : Prop :=
  ∀ n, P3438795789715002745.a n = (A080511 (n + 1) : ℚ)

end A080511

/-! ## A080511.P12034931715052828904

`A002260(n+1)+(n+1)%A051340(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080511

/-- `A002260(n+1)+(n+1)%A051340(n)` -/
def P12034931715052828904.Spec : Prop :=
  ∀ n, P12034931715052828904.a n = A080511 (n + 1)

theorem P12034931715052828904.correct : P12034931715052828904.Spec := by
  intro n
  simp only [A080511, Nat.add_sub_cancel]

end A080511

/-! ## A080511.P7361611165748407000

`A158416(A051340(n))+A002262(n)`
-/

namespace A080511.P7361611165748407000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A051340 n).toNat + A002262 n

end

end A080511.P7361611165748407000

namespace A080511

/-- `A158416(A051340(n))+A002262(n)` -/
def P7361611165748407000.Spec : Prop :=
  ∀ n, P7361611165748407000.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P15238032108160554383

`A158416(A127648(n))+A002262(n)`
-/

namespace A080511.P15238032108160554383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A127648 n).toNat + A002262 n

end

end A080511.P15238032108160554383

namespace A080511

/-- `A158416(A127648(n))+A002262(n)` -/
def P15238032108160554383.Spec : Prop :=
  ∀ n, P15238032108160554383.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P17258354092953728992

`A152271(Δ[A061885(n)])+A002262(n)`
-/

namespace A080511.P17258354092953728992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (f1 (n + 1) - f1 n).toNat + A002262 n

end

end A080511.P17258354092953728992

namespace A080511

/-- `A152271(Δ[A061885(n)])+A002262(n)` -/
def P17258354092953728992.Spec : Prop :=
  ∀ n, P17258354092953728992.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P6208907815649747683

`A158416(Δ[A063656(n)])+A002262(n)`
-/

namespace A080511.P6208907815649747683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (f1 (n + 1) - f1 n).toNat + A002262 n

end

end A080511.P6208907815649747683

namespace A080511

/-- `A158416(Δ[A063656(n)])+A002262(n)` -/
def P6208907815649747683.Spec : Prop :=
  ∀ n, P6208907815649747683.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P14597892357292768924

`A142150(A051340(n))+A002260(n+1)`
-/

namespace A080511.P14597892357292768924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A051340 n).toNat + A002260 (n + 1)

end

end A080511.P14597892357292768924

namespace A080511

/-- `A142150(A051340(n))+A002260(n+1)` -/
def P14597892357292768924.Spec : Prop :=
  ∀ n, P14597892357292768924.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P16799832620678967536

`A142150(A127648(n))+A002260(n+1)`
-/

namespace A080511.P16799832620678967536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A127648 n).toNat + A002260 (n + 1)

end

end A080511.P16799832620678967536

namespace A080511

/-- `A142150(A127648(n))+A002260(n+1)` -/
def P16799832620678967536.Spec : Prop :=
  ∀ n, P16799832620678967536.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P18422353600313167271

`A142150(Δ[A063656(n)])+A002260(n+1)`
-/

namespace A080511.P18422353600313167271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (f1 (n + 1) - f1 n).toNat + A002260 (n + 1)

end

end A080511.P18422353600313167271

namespace A080511

/-- `A142150(Δ[A063656(n)])+A002260(n+1)` -/
def P18422353600313167271.Spec : Prop :=
  ∀ n, P18422353600313167271.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P16273651260378082739

`A002260(n+1)+A127773(n+1)%A002260(n+1)`
-/

namespace A080511.P16273651260378082739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + Int.tmod (A127773 (n + 1)) (A002260 (n + 1))

end

end A080511.P16273651260378082739

namespace A080511

/-- `A002260(n+1)+A127773(n+1)%A002260(n+1)` -/
def P16273651260378082739.Spec : Prop :=
  ∀ n, P16273651260378082739.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P3343494050737701604

`A002260(n+1)+(3*(n+1))%Δ[A004736(n+1)]`
-/

namespace A080511.P3343494050737701604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + Int.tmod (3 * (n + 1) : ℤ) (f1 (n + 1) - f1 n)

end

end A080511.P3343494050737701604

namespace A080511

/-- `A002260(n+1)+(3*(n+1))%Δ[A004736(n+1)]` -/
def P3343494050737701604.Spec : Prop :=
  ∀ n, P3343494050737701604.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P9574630063233684610

`A032742(A158405(n+1)+Δ[A004201(n+1)])`
-/

namespace A080511.P9574630063233684610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A158405 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A080511.P9574630063233684610

namespace A080511

/-- `A032742(A158405(n+1)+Δ[A004201(n+1)])` -/
def P9574630063233684610.Spec : Prop :=
  ∀ n, P9574630063233684610.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P5976366602798896797

`A158416(A278493(n))+A002262(n)`
-/

namespace A080511.P5976366602798896797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A278493 n).toNat + A002262 n

end

end A080511.P5976366602798896797

namespace A080511

/-- `A158416(A278493(n))+A002262(n)` -/
def P5976366602798896797.Spec : Prop :=
  ∀ n, P5976366602798896797.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P12918620312188646150

`A142150(A278493(n))+A002260(n+1)`
-/

namespace A080511.P12918620312188646150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A278493 n).toNat + A002260 (n + 1)

end

end A080511.P12918620312188646150

namespace A080511

/-- `A142150(A278493(n))+A002260(n+1)` -/
def P12918620312188646150.Spec : Prop :=
  ∀ n, P12918620312188646150.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P15638643056847978491

`A032742(Δ[A195437(n)]*A002260(n+1))`
-/

namespace A080511.P15638643056847978491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 ((f1 (n + 1) - f1 n) * A002260 (n + 1)).toNat

end

end A080511.P15638643056847978491

namespace A080511

/-- `A032742(Δ[A195437(n)]*A002260(n+1))` -/
def P15638643056847978491.Spec : Prop :=
  ∀ n, P15638643056847978491.a n = A080511 (n + 1)

end A080511

/-! ## A080511.P5849572837933221928

`gcd(A076743(n), A083173(n+1))`
-/

namespace A080511.P5849572837933221928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076743 n) (A083173 (n + 1))

end

end A080511.P5849572837933221928

namespace A080511

/-- `gcd(A076743(n), A083173(n+1))` -/
def P5849572837933221928.Spec : Prop :=
  ∀ n, (P5849572837933221928.a n : ℤ) = A080511 (n + 1)

end A080511

/-! ## A080511.P17476404451748789913

`A033676(A083173(n+1))`
-/

namespace A080511.P17476404451748789913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A083173 (n + 1)).toNat

end

end A080511.P17476404451748789913

namespace A080511

/-- `A033676(A083173(n+1))` -/
def P17476404451748789913.Spec : Prop :=
  ∀ n, P17476404451748789913.a n = A080511 (n + 1)

end A080511

/-!
# A080512: a(n) = n if n is odd, a(n) = 3*n/2 if n is even.

The programs for A080512, the canonical program `A080512.P14368604902377273702` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080512 has offset 1).

The definition of A080512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080512.P14368604902377273702

`(n+1)*(5+(-1)^(n+1))/4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080512

/-- `(n+1)*(5+(-1)^(n+1))/4` -/
def P14368604902377273702.Spec : Prop :=
  ∀ n, P14368604902377273702.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P7032091994839213837

`∑[2-Δ[lcm(2, n)/2]]`
-/

namespace A080512.P7032091994839213837
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080512.P7032091994839213837

namespace A080512

/-- `∑[2-Δ[lcm(2, n)/2]]` -/
def P7032091994839213837.Spec : Prop :=
  ∀ n, P7032091994839213837.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P15573341910576365734

`∑[2-Δ[n/gcd(2, n)]]`
-/

namespace A080512.P15573341910576365734
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 2 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080512.P15573341910576365734

namespace A080512

/-- `∑[2-Δ[n/gcd(2, n)]]` -/
def P15573341910576365734.Spec : Prop :=
  ∀ n, P15573341910576365734.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P6297302480359358967

`3/a(n-1)*∑[n]` with `a(0)=1`
-/

namespace A080512.P6297302480359358967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 / a (n - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A080512.P6297302480359358967

namespace A080512

/-- `3/a(n-1)*∑[n]` -/
def P6297302480359358967.Spec : Prop :=
  ∀ n, P6297302480359358967.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P2730385889130548381

`∑[n]%(n+1)+1+n`
-/

namespace A080512.P2730385889130548381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1 + n

end

end A080512.P2730385889130548381

namespace A080512

/-- `∑[n]%(n+1)+1+n` -/
def P2730385889130548381.Spec : Prop :=
  ∀ n, (P2730385889130548381.a n : ℤ) = A080512 (n + 1)

end A080512

/-! ## A080512.P6585623605050026348

`∑[∑[ogf((1+3x+x^2)/(1+2x+x^2))]]`
-/

namespace A080512.P6585623605050026348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080512.P6585623605050026348

namespace A080512

/-- `∑[∑[ogf((1+3x+x^2)/(1+2x+x^2))]]` -/
def P6585623605050026348.Spec : Prop :=
  ∀ n, P6585623605050026348.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P58491541858882156

`ogf((1+3x+x^2)/(1-2x^2+x^4))`
-/

namespace A080512.P58491541858882156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 1] [1, 0, -2, 0, 1] n

end

end A080512.P58491541858882156

namespace A080512

/-- `ogf((1+3x+x^2)/(1-2x^2+x^4))` -/
def P58491541858882156.Spec : Prop :=
  ∀ n, P58491541858882156.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P8196518990150501542

`(n+1)*(n%2/2+1)`
-/

namespace A080512.P8196518990150501542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (((n % 2 : ℕ) : ℚ) / 2 + 1)

end

end A080512.P8196518990150501542

namespace A080512

/-- `(n+1)*(n%2/2+1)` -/
def P8196518990150501542.Spec : Prop :=
  ∀ n, P8196518990150501542.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P16497290177140625998

`(and(1, n)/2+1)*(n+1)`
-/

namespace A080512.P16497290177140625998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℚ) / 2 + 1) * (n + 1 : ℚ)

end

end A080512.P16497290177140625998

namespace A080512

/-- `(and(1, n)/2+1)*(n+1)` -/
def P16497290177140625998.Spec : Prop :=
  ∀ n, P16497290177140625998.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P3722360339404566382

`∑[a(n-2)-(-1)^n]` with `a(0)=1, a(1)=2`
-/

namespace A080512.P3722360339404566382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080512.P3722360339404566382

namespace A080512

/-- `∑[a(n-2)-(-1)^n]` -/
def P3722360339404566382.Spec : Prop :=
  ∀ n, P3722360339404566382.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P12150582364966562674

`2*n-a(n-2)%n` with `a(0)=1, a(1)=3`
-/

namespace A080512.P12150582364966562674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 * n : ℤ) - Int.tmod (a (n - 2)) (n : ℤ)

end

end A080512.P12150582364966562674

namespace A080512

/-- `2*n-a(n-2)%n` -/
def P12150582364966562674.Spec : Prop :=
  ∀ n, P12150582364966562674.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P1898638096164518756

`∑[and(1, n)+2-a(n-1)]` with `a(0)=1`
-/

namespace A080512.P1898638096164518756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.land 1 n : ℤ) + (2 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080512.P1898638096164518756

namespace A080512

/-- `∑[and(1, n)+2-a(n-1)]` -/
def P1898638096164518756.Spec : Prop :=
  ∀ n, P1898638096164518756.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P9534592309408821638

`∑[and(1, n)-(a(n-1)-2)]` with `a(0)=1`
-/

namespace A080512.P9534592309408821638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.land 1 n : ℤ) - (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080512.P9534592309408821638

namespace A080512

/-- `∑[and(1, n)-(a(n-1)-2)]` -/
def P9534592309408821638.Spec : Prop :=
  ∀ n, P9534592309408821638.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P9841963195656959844

`gcd(n+3, ceil(n/2)+1)+n`
-/

namespace A080512.P9841963195656959844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (⌈(n : ℚ) / 2⌉ + 1) + n

end

end A080512.P9841963195656959844

namespace A080512

/-- `gcd(n+3, ceil(n/2)+1)+n` -/
def P9841963195656959844.Spec : Prop :=
  ∀ n, (P9841963195656959844.a n : ℤ) = A080512 (n + 1)

end A080512

/-! ## A080512.P15461468875732106485

`2*(n+1)-gcd(n+1, ∑[n])`
-/

namespace A080512.P15461468875732106485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A080512.P15461468875732106485

namespace A080512

/-- `2*(n+1)-gcd(n+1, ∑[n])` -/
def P15461468875732106485.Spec : Prop :=
  ∀ n, P15461468875732106485.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P8426122993713160040

`∑{d}[or(n+1, -2), (n+1)/#]`
-/

namespace A080512.P8426122993713160040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A080512.P8426122993713160040

namespace A080512

/-- `∑{d}[or(n+1, -2), (n+1)/#]` -/
def P8426122993713160040.Spec : Prop :=
  ∀ n, P8426122993713160040.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P16284485062980326896

`∑{d}[n+1, #*round(#/(n+1))]`
-/

namespace A080512.P16284485062980326896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * SequenceMachineLib.roundAway ((d : ℚ) / (n + 1 : ℚ))

end

end A080512.P16284485062980326896

namespace A080512

/-- `∑{d}[n+1, #*round(#/(n+1))]` -/
def P16284485062980326896.Spec : Prop :=
  ∀ n, P16284485062980326896.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P3169341695928665875

`3*C(n+1, 2)/a(n-1)` with `a(0)=1`
-/

namespace A080512.P3169341695928665875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((Nat.choose (n + 1) 2 : ℚ) / a (n - 1))

end

end A080512.P3169341695928665875

namespace A080512

/-- `3*C(n+1, 2)/a(n-1)` -/
def P3169341695928665875.Spec : Prop :=
  ∀ n, P3169341695928665875.a n = (A080512 (n + 1) : ℚ)

end A080512

/-! ## A080512.P16850362303902573275

`floor(3^(2/n)*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A080512.P16850362303902573275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  ⌊(3 : ℝ) ^ (2 / (n : ℚ) : ℝ) * (a (n - 2) : ℝ)⌋

end

end A080512.P16850362303902573275

namespace A080512

/-- `floor(3^(2/n)*a(n-2))` -/
def P16850362303902573275.Spec : Prop :=
  ∀ n, P16850362303902573275.a n = A080512 (n + 1)

end A080512

/-! ## A080512.P16661278347137523733

`C(n+1, 2)%(n+1)+n+1`
-/

namespace A080512.P16661278347137523733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 % (n + 1) + (n + 1)

end

end A080512.P16661278347137523733

namespace A080512

/-- `C(n+1, 2)%(n+1)+n+1` -/
def P16661278347137523733.Spec : Prop :=
  ∀ n, (P16661278347137523733.a n : ℤ) = A080512 (n + 1)

end A080512

/-!
# A080513: a(n) = round(n/2) + 1 = ceiling(n/2) + 1 = floor((n+1)/2) + 1.

The programs for A080513, the canonical program `A080513.P8782509386496499244` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080513 has offset 0).

The definition of A080513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/2)+1` (program `A080513.P8782509386496499244`, by `A080513.P8782509386496499244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A080513.P8782509386496499244

`ceil(n/2)+1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080513

/-- `ceil(n/2)+1` -/
def P8782509386496499244.Spec : Prop :=
  ∀ n, P8782509386496499244.a n = A080513 n

theorem P8782509386496499244.correct : P8782509386496499244.Spec := by
  intro n
  simp only [A080513]

end A080513

/-! ## A080513.P3196605763793091456

`round(n/2)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080513.P3196605763793091456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1

end

end A080513.P3196605763793091456

namespace A080513

/-- `round(n/2)+1` -/
def P3196605763793091456.Spec : Prop :=
  ∀ n, P3196605763793091456.a n = A080513 n

end A080513

/-! ## A080513.P7957657764036745252

`floor((n+1)/2)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A080513.P7957657764036745252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ + 1

end

end A080513.P7957657764036745252

namespace A080513

/-- `floor((n+1)/2)+1` -/
def P7957657764036745252.Spec : Prop :=
  ∀ n, P7957657764036745252.a n = A080513 n

end A080513

/-! ## A080513.P6137115790535217302

`A008619(n+1)`
-/

namespace A080513.P6137115790535217302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

end

end A080513.P6137115790535217302

namespace A080513

/-- `A008619(n+1)` -/
def P6137115790535217302.Spec : Prop :=
  ∀ n, P6137115790535217302.a n = A080513 n

end A080513

/-! ## A080513.P1431925364187015581

`A004526(n+3)`
-/

namespace A080513.P1431925364187015581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3)

end

end A080513.P1431925364187015581

namespace A080513

/-- `A004526(n+3)` -/
def P1431925364187015581.Spec : Prop :=
  ∀ n, P1431925364187015581.a n = A080513 n

end A080513

/-! ## A080513.P9131136498738979781

`A140106(n+5)`
-/

namespace A080513.P9131136498738979781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 5)

end

end A080513.P9131136498738979781

namespace A080513

/-- `A140106(n+5)` -/
def P9131136498738979781.Spec : Prop :=
  ∀ n, P9131136498738979781.a n = A080513 n

end A080513

/-! ## A080513.P5873039712475044346

`∑[(n%2)^n]`
-/

namespace A080513.P5873039712475044346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080513.P5873039712475044346

namespace A080513

/-- `∑[(n%2)^n]` -/
def P5873039712475044346.Spec : Prop :=
  ∀ n, (P5873039712475044346.a n : ℤ) = A080513 n

end A080513

/-! ## A080513.P12871461016684186927

`∑[and(1, n)^n]`
-/

namespace A080513.P12871461016684186927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080513.P12871461016684186927

namespace A080513

/-- `∑[and(1, n)^n]` -/
def P12871461016684186927.Spec : Prop :=
  ∀ n, (P12871461016684186927.a n : ℤ) = A080513 n

end A080513

/-! ## A080513.P14152022493372996610

`∑[∏{d}[n, #%2]]`
-/

namespace A080513.P14152022493372996610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080513.P14152022493372996610

namespace A080513

/-- `∑[∏{d}[n, #%2]]` -/
def P14152022493372996610.Spec : Prop :=
  ∀ n, (P14152022493372996610.a n : ℤ) = A080513 n

end A080513

/-! ## A080513.P5178707242437642214

`ceil(cosh(log(n+1)))`
-/

namespace A080513.P5178707242437642214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (n + 1 : ℝ))⌉

end

end A080513.P5178707242437642214

namespace A080513

/-- `ceil(cosh(log(n+1)))` -/
def P5178707242437642214.Spec : Prop :=
  ∀ n, P5178707242437642214.a n = A080513 n

end A080513

/-! ## A080513.P16299976568054681202

`∑[∏{p}[n, #]%2]`
-/

namespace A080513.P16299976568054681202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f2 n), p) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080513.P16299976568054681202

namespace A080513

/-- `∑[∏{p}[n, #]%2]` -/
def P16299976568054681202.Spec : Prop :=
  ∀ n, (P16299976568054681202.a n : ℤ) = A080513 n

end A080513

/-! ## A080513.P10183918952027133703

`floor(cosh(log(n+3)))`
-/

namespace A080513.P10183918952027133703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (n + 3 : ℝ))⌋

end

end A080513.P10183918952027133703

namespace A080513

/-- `floor(cosh(log(n+3)))` -/
def P10183918952027133703.Spec : Prop :=
  ∀ n, P10183918952027133703.a n = A080513 n

end A080513

/-! ## A080513.P16266336968174332962

`round(cosh(log(n+2)))`
-/

namespace A080513.P16266336968174332962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (n + 2 : ℝ)))

end

end A080513.P16266336968174332962

namespace A080513

/-- `round(cosh(log(n+2)))` -/
def P16266336968174332962.Spec : Prop :=
  ∀ n, P16266336968174332962.a n = A080513 n

end A080513

/-! ## A080513.P3933851138478867540

`ceil(sinh(log(n+2)))`
-/

namespace A080513.P3933851138478867540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (n + 2 : ℝ))⌉

end

end A080513.P3933851138478867540

namespace A080513

/-- `ceil(sinh(log(n+2)))` -/
def P3933851138478867540.Spec : Prop :=
  ∀ n, P3933851138478867540.a n = A080513 n

end A080513

/-! ## A080513.P16026490916336120000

`∑[∏{d}[n, and(1, #)]]`
-/

namespace A080513.P16026490916336120000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080513.P16026490916336120000

namespace A080513

/-- `∑[∏{d}[n, and(1, #)]]` -/
def P16026490916336120000.Spec : Prop :=
  ∀ n, (P16026490916336120000.a n : ℤ) = A080513 n

end A080513

/-! ## A080513.P1174954510408303250

`floor(sinh(log(n+4)))`
-/

namespace A080513.P1174954510408303250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (n + 4 : ℝ))⌋

end

end A080513.P1174954510408303250

namespace A080513

/-- `floor(sinh(log(n+4)))` -/
def P1174954510408303250.Spec : Prop :=
  ∀ n, P1174954510408303250.a n = A080513 n

end A080513

/-! ## A080513.P17420019594383130167

`round(sinh(log(n+3)))`
-/

namespace A080513.P17420019594383130167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (n + 3 : ℝ)))

end

end A080513.P17420019594383130167

namespace A080513

/-- `round(sinh(log(n+3)))` -/
def P17420019594383130167.Spec : Prop :=
  ∀ n, P17420019594383130167.a n = A080513 n

end A080513

/-! ## A080513.P7980142544884005603

`∑[and(1, ∏{p}[n, #])]`
-/

namespace A080513.P7980142544884005603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080513.P7980142544884005603

namespace A080513

/-- `∑[and(1, ∏{p}[n, #])]` -/
def P7980142544884005603.Spec : Prop :=
  ∀ n, (P7980142544884005603.a n : ℤ) = A080513 n

end A080513

/-! ## A080513.P17355715706629826648

`floor(tan(1)+n/2)`
-/

namespace A080513.P17355715706629826648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (1 : ℝ) + ((n : ℚ) / 2 : ℝ)⌋

end

end A080513.P17355715706629826648

namespace A080513

/-- `floor(tan(1)+n/2)` -/
def P17355715706629826648.Spec : Prop :=
  ∀ n, P17355715706629826648.a n = A080513 n

end A080513

/-! ## A080513.P14846834642163638182

`abs(a(n-1)+2*a(n-2)-n)` with `a(0)=1, a(1)=2`
-/

namespace A080513.P14846834642163638182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  |a (n - 1) + 2 * a (n - 2) - (n : ℤ)|

end

end A080513.P14846834642163638182

namespace A080513

/-- `abs(a(n-1)+2*a(n-2)-n)` -/
def P14846834642163638182.Spec : Prop :=
  ∀ n, P14846834642163638182.a n = A080513 n

end A080513

/-!
# A080515: a(1) = 2, a(n) = smallest n-th power obtained by inserting digits anywhere in a(n-1).

The programs for A080515, there is no canonical definition to state claims against.
-/

/-! ## A080515.P9870708251640075452

`A080516(n+1)-3*A080796(n)`
-/

namespace A080515.P9870708251640075452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080516 (n + 1) - 3 * A080796 n

end

end A080515.P9870708251640075452

/-!
# A080516: a(1) = 5, a(n) = smallest n-th power obtained by inserting digits anywhere in a(n-1).

The programs for A080516, there is no canonical definition to state claims against.
-/

/-! ## A080516.P11064874516115729146

`A080515(n+1)+3*A080796(n)`
-/

namespace A080516.P11064874516115729146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080515 (n + 1) + 3 * A080796 n

end

end A080516.P11064874516115729146

/-!
# A080517: T is the first, third, eighth, ninth, fifteenth, nineteenth, ... consonant in this sentence.

The programs for A080517, there is no canonical definition to state claims against.
-/

/-! ## A080517.P8835439274748815659

`lt[A096863(3*n+4), A151694(A007814(n+1))]`
-/

namespace A080517.P8835439274748815659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096863 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151694 (A007814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080517.P8835439274748815659

/-!
# A080518: The third, sixth, tenth, fifteenth, ... letters in this sentence are vowels (ignoring spaces and commas).

The programs for A080518, there is no canonical definition to state claims against.
-/

/-! ## A080518.P12872173779367154909

`xor(A313831(n)-n, A348406(A152807(n)))`
-/

namespace A080518.P12872173779367154909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313831 n - (n : ℤ)) (A348406 (A152807 n).toNat)

end

end A080518.P12872173779367154909

/-! ## A080518.P7897276144140572926

`A256241(n+1)-A256232(A000108(n+1))`
-/

namespace A080518.P7897276144140572926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256241 (n + 1) - A256232 (A000108 (n + 1)).toNat

end

end A080518.P7897276144140572926

/-! ## A080518.P11671175890101401238

`A359908(3*n+1)+A165100(A000110(n))`
-/

namespace A080518.P11671175890101401238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (3 * n + 1) + A165100 (A000110 n).toNat

end

end A080518.P11671175890101401238

/-!
# A080521: Triangle read by rows; n-th row contains the lexicographically first set of n distinct positive integers whose sum is 2^n.

The programs for A080521, the canonical program `A080521.P3420280436256100116` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080521 has offset 1).

The definition of A080521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080521.P3420280436256100116

`Δ[A140513(n)+A112367(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080521

/-- `Δ[A140513(n)+A112367(n)]` -/
def P3420280436256100116.Spec : Prop :=
  ∀ n, P3420280436256100116.a n = A080521 (n + 1)

theorem P3420280436256100116.correct : P3420280436256100116.Spec := by
  intro n
  simp only [A080521, Nat.add_sub_cancel]

end A080521

/-! ## A080521.P10656703251066217846

`Δ[A140513(n)+A000124(A002262(n))]`
-/

namespace A080521.P10656703251066217846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A000124 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P10656703251066217846

namespace A080521

/-- `Δ[A140513(n)+A000124(A002262(n))]` -/
def P10656703251066217846.Spec : Prop :=
  ∀ n, P10656703251066217846.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P10735025015413690819

`Δ[A161680(A002260(n+1))+A140513(n)]`
-/

namespace A080521.P10735025015413690819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002260 (n + 1)).toNat + A140513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P10735025015413690819

namespace A080521

/-- `Δ[A161680(A002260(n+1))+A140513(n)]` -/
def P10735025015413690819.Spec : Prop :=
  ∀ n, P10735025015413690819.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P12537802619352696009

`Δ[A140513(n)+A000217(n-A057944(n))]`
-/

namespace A080521.P12537802619352696009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A000217 ((n : ℤ) - A057944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P12537802619352696009

namespace A080521

/-- `Δ[A140513(n)+A000217(n-A057944(n))]` -/
def P12537802619352696009.Spec : Prop :=
  ∀ n, P12537802619352696009.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P14286688852773407819

`Δ[A161680(A002260(n+1))+2*A137688(n)]`
-/

namespace A080521.P14286688852773407819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002260 (n + 1)).toNat + 2 * A137688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P14286688852773407819

namespace A080521

/-- `Δ[A161680(A002260(n+1))+2*A137688(n)]` -/
def P14286688852773407819.Spec : Prop :=
  ∀ n, P14286688852773407819.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P7246176568124058254

`Δ[A161680(A002262(n))+A127330(n)]`
-/

namespace A080521.P7246176568124058254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A002262 n).toNat + A127330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P7246176568124058254

namespace A080521

/-- `Δ[A161680(A002262(n))+A127330(n)]` -/
def P7246176568124058254.Spec : Prop :=
  ∀ n, P7246176568124058254.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P18000547024616379830

`Δ[A112367(n)+A000203(A137688(n))]`
-/

namespace A080521.P18000547024616379830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + A000203 (A137688 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P18000547024616379830

namespace A080521

/-- `Δ[A112367(n)+A000203(A137688(n))]` -/
def P18000547024616379830.Spec : Prop :=
  ∀ n, P18000547024616379830.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P17097500517971694960

`Δ[A347129(A059268(n))+A140513(n)]`
-/

namespace A080521.P17097500517971694960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347129 (A059268 n).toNat + A140513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P17097500517971694960

namespace A080521

/-- `Δ[A347129(A059268(n))+A140513(n)]` -/
def P17097500517971694960.Spec : Prop :=
  ∀ n, P17097500517971694960.a n = A080521 (n + 1)

end A080521

/-! ## A080521.P9954583247244918385

`Δ[A140513(n)+A124757(A099627(n))]`
-/

namespace A080521.P9954583247244918385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140513 n + A124757 (A099627 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080521.P9954583247244918385

namespace A080521

/-- `Δ[A140513(n)+A124757(A099627(n))]` -/
def P9954583247244918385.Spec : Prop :=
  ∀ n, P9954583247244918385.a n = A080521 (n + 1)

end A080521

/-!
# A080522: Leading diagonal of triangle in A080521.

The programs for A080522, the canonical program `A080522.P8175323926790393655` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080522 has offset 1).

The definition of A080522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080522.P8175323926790393655

`5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=10, a(4)=22`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080522

/-- `5*a(n-1)-9*a(n-2)+7*a(n-3)-2*a(n-4)` -/
def P8175323926790393655.Spec : Prop :=
  ∀ n, P8175323926790393655.a n = A080522 (n + 1)

theorem P8175323926790393655.correct : P8175323926790393655.Spec := by
  intro n
  simp only [A080522, Nat.add_sub_cancel]

end A080522

/-! ## A080522.P4918692576079631722

`2^n+a(n-1)-n` with `a(0)=1, a(1)=3`
-/

namespace A080522.P4918692576079631722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ n : ℤ) + (a (n - 1) - (n : ℤ))

end

end A080522.P4918692576079631722

namespace A080522

/-- `2^n+a(n-1)-n` -/
def P4918692576079631722.Spec : Prop :=
  ∀ n, P4918692576079631722.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P11832837636424858938

`2^n-(n-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A080522.P11832837636424858938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (2 ^ n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A080522.P11832837636424858938

namespace A080522

/-- `2^n-(n-a(n-1))` -/
def P11832837636424858938.Spec : Prop :=
  ∀ n, P11832837636424858938.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P15778861010458894824

`ceil(atan(n+1))^(n+1)-∑[n]`
-/

namespace A080522.P15778861010458894824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (n + 1 : ℝ)⌉ ^ (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P15778861010458894824

namespace A080522

/-- `ceil(atan(n+1))^(n+1)-∑[n]` -/
def P15778861010458894824.Spec : Prop :=
  ∀ n, P15778861010458894824.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P7045093497230078918

`∑[2*a(n-1)]-∑[n]` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A080522.P7045093497230078918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 4] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A080522.P7045093497230078918

namespace A080522

/-- `∑[2*a(n-1)]-∑[n]` -/
def P7045093497230078918.Spec : Prop :=
  ∀ n, P7045093497230078918.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P12337494352096473768

`C(n, 2)+2*a(n-1)-n` with `a(0)=1, a(1)=3`
-/

namespace A080522.P12337494352096473768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Nat.choose n 2 : ℤ) + 2 * a (n - 1) - (n : ℤ)

end

end A080522.P12337494352096473768

namespace A080522

/-- `C(n, 2)+2*a(n-1)-n` -/
def P12337494352096473768.Spec : Prop :=
  ∀ n, P12337494352096473768.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P908058305444081101

`2^(n+1)-C(n+1, abs(1-n))`
-/

namespace A080522.P908058305444081101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat : ℤ)

end

end A080522.P908058305444081101

namespace A080522

/-- `2^(n+1)-C(n+1, abs(1-n))` -/
def P908058305444081101.Spec : Prop :=
  ∀ n, P908058305444081101.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P3355947226677783254

`2^((n+1)%(2*n+1))-∑[n]`
-/

namespace A080522.P3355947226677783254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((n + 1) % (2 * n + 1)) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P3355947226677783254

namespace A080522

/-- `2^((n+1)%(2*n+1))-∑[n]` -/
def P3355947226677783254.Spec : Prop :=
  ∀ n, P3355947226677783254.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P2705176454677476508

`∑[a(n-1)+a(n-1)+n-2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A080522.P2705176454677476508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080522.P2705176454677476508

namespace A080522

/-- `∑[a(n-1)+a(n-1)+n-2]` -/
def P2705176454677476508.Spec : Prop :=
  ∀ n, P2705176454677476508.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P16819722199433772336

`∑[A130103(n)+1]`
-/

namespace A080522.P16819722199433772336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130103 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080522.P16819722199433772336

namespace A080522

/-- `∑[A130103(n)+1]` -/
def P16819722199433772336.Spec : Prop :=
  ∀ n, P16819722199433772336.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P8358226759022768230

`A130104(n)+1+n`
-/

namespace A080522.P8358226759022768230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130104 n + 1 + (n : ℤ)

end

end A080522.P8358226759022768230

namespace A080522

/-- `A130104(n)+1+n` -/
def P8358226759022768230.Spec : Prop :=
  ∀ n, P8358226759022768230.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P15984855470547407508

`A151821(n+1)-∑[n]`
-/

namespace A080522.P15984855470547407508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P15984855470547407508

namespace A080522

/-- `A151821(n+1)-∑[n]` -/
def P15984855470547407508.Spec : Prop :=
  ∀ n, P15984855470547407508.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P11155126099290622994

`A029746(2*n)-∑[n]`
-/

namespace A080522.P11155126099290622994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029746 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P11155126099290622994

namespace A080522

/-- `A029746(2*n)-∑[n]` -/
def P11155126099290622994.Spec : Prop :=
  ∀ n, P11155126099290622994.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P18187178961172313189

`A063759(2*n)-∑[n]`
-/

namespace A080522.P18187178961172313189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P18187178961172313189

namespace A080522

/-- `A063759(2*n)-∑[n]` -/
def P18187178961172313189.Spec : Prop :=
  ∀ n, P18187178961172313189.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P11971170253813555623

`A029748(3*n)-∑[n]`
-/

namespace A080522.P11971170253813555623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (3 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P11971170253813555623

namespace A080522

/-- `A029748(3*n)-∑[n]` -/
def P11971170253813555623.Spec : Prop :=
  ∀ n, P11971170253813555623.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P5708920884237423175

`record[A135530(n+1)]-∑[n]`
-/

namespace A080522.P5708920884237423175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A080522.P5708920884237423175

namespace A080522

/-- `record[A135530(n+1)]-∑[n]` -/
def P5708920884237423175.Spec : Prop :=
  ∀ n, P5708920884237423175.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P1313371347722096858

`A000325(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A080522.P1313371347722096858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000325 n + a (n - 1)

end

end A080522.P1313371347722096858

namespace A080522

/-- `A000325(n)+a(n-1)` -/
def P1313371347722096858.Spec : Prop :=
  ∀ n, P1313371347722096858.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P5102692997781104631

`A076878(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A080522.P5102692997781104631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A076878 n + a (n - 1)

end

end A080522.P5102692997781104631

namespace A080522

/-- `A076878(n)+a(n-1)` -/
def P5102692997781104631.Spec : Prop :=
  ∀ n, P5102692997781104631.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P10590517221966368935

`A076878(n+1)+∑[1-n]`
-/

namespace A080522.P10590517221966368935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076878 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080522.P10590517221966368935

namespace A080522

/-- `A076878(n+1)+∑[1-n]` -/
def P10590517221966368935.Spec : Prop :=
  ∀ n, P10590517221966368935.a n = A080522 (n + 1)

end A080522

/-! ## A080522.P11545673566194462811

`A094958(2*n+1)-∑[n]`
-/

namespace A080522.P11545673566194462811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (2 * n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A080522.P11545673566194462811

namespace A080522

/-- `A094958(2*n+1)-∑[n]` -/
def P11545673566194462811.Spec : Prop :=
  ∀ n, P11545673566194462811.a n = A080522 (n + 1)

end A080522

/-!
# A080523: a(n) = n^n - n(n-1)/2.

The programs for A080523, the canonical program `A080523.P16034710957370318419` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080523 has offset 1).

The definition of A080523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080523.P16034710957370318419

`(n+1)^(n+1)-(n+1)*n/2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080523

/-- `(n+1)^(n+1)-(n+1)*n/2` -/
def P16034710957370318419.Spec : Prop :=
  ∀ n, P16034710957370318419.a n = (A080523 (n + 1) : ℚ)

end A080523

/-! ## A080523.P12469505658480724336

`∑[or(1, Δ[n^n])-n]`
-/

namespace A080523.P12469505658480724336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080523.P12469505658480724336

namespace A080523

/-- `∑[or(1, Δ[n^n])-n]` -/
def P12469505658480724336.Spec : Prop :=
  ∀ n, P12469505658480724336.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P14764238236915075024

`∑[Δ[lcm(n, (-n)^n)]-n]`
-/

namespace A080523.P14764238236915075024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((-(n : ℤ)) ^ n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080523.P14764238236915075024

namespace A080523

/-- `∑[Δ[lcm(n, (-n)^n)]-n]` -/
def P14764238236915075024.Spec : Prop :=
  ∀ n, P14764238236915075024.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P5616442215487556438

`∑[Δ[(n^n)%(61^n)]-n]`
-/

namespace A080523.P5616442215487556438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n % 61 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080523.P5616442215487556438

namespace A080523

/-- `∑[Δ[(n^n)%(61^n)]-n]` -/
def P5616442215487556438.Spec : Prop :=
  ∀ n, P5616442215487556438.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P15959447089594814338

`∑[Δ[n^n-floor(acot(n))]-n]`
-/

namespace A080523.P15959447089594814338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080523.P15959447089594814338

namespace A080523

/-- `∑[Δ[n^n-floor(acot(n))]-n]` -/
def P15959447089594814338.Spec : Prop :=
  ∀ n, P15959447089594814338.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P8881129506067163697

`abs(C(n+1, 2)-(n+1)^(n+1))`
-/

namespace A080523.P8881129506067163697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 1) 2 : ℤ) - ((n + 1) ^ (n + 1) : ℤ)|

end

end A080523.P8881129506067163697

namespace A080523

/-- `abs(C(n+1, 2)-(n+1)^(n+1))` -/
def P8881129506067163697.Spec : Prop :=
  ∀ n, P8881129506067163697.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P17268667883289723122

`∑[A007781(n)-n]`
-/

namespace A080523.P17268667883289723122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007781 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080523.P17268667883289723122

namespace A080523

/-- `∑[A007781(n)-n]` -/
def P17268667883289723122.Spec : Prop :=
  ∀ n, P17268667883289723122.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P4099111137502530532

`record[A095887(n+1)-n]`
-/

namespace A080523.P4099111137502530532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095887 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080523.P4099111137502530532

namespace A080523

/-- `record[A095887(n+1)-n]` -/
def P4099111137502530532.Spec : Prop :=
  ∀ n, P4099111137502530532.a n = A080523 (n + 1)

end A080523

/-! ## A080523.P11188554309271222347

`record[A095891(n+1)-n]`
-/

namespace A080523.P11188554309271222347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095891 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080523.P11188554309271222347

namespace A080523

/-- `record[A095891(n+1)-n]` -/
def P11188554309271222347.Spec : Prop :=
  ∀ n, P11188554309271222347.a n = A080523 (n + 1)

end A080523

/-!
# A080525: First column of triangle in A080524.

The programs for A080525, there is no canonical definition to state claims against.
-/

/-! ## A080525.P13270947556925082421

`(n+1)^n-gcd(n, ∑[n])`
-/

namespace A080525.P13270947556925082421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A080525.P13270947556925082421

/-! ## A080525.P15348912131893613955

`(n+1)^n-lcm(2, n)/2`
-/

namespace A080525.P15348912131893613955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) - (Nat.lcm 2 n : ℚ) / 2

end

end A080525.P15348912131893613955

/-! ## A080525.P17709706495721817440

`(n+1)^n-n/(2-n%2)`
-/

namespace A080525.P17709706495721817440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) - (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A080525.P17709706495721817440

/-! ## A080525.P16510497860637029204

`(n+1)^n-n/(2-and(1, n))`
-/

namespace A080525.P16510497860637029204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) - (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A080525.P16510497860637029204

/-! ## A080525.P10872196397529717126

`A080524(∑[n]+1)`
-/

namespace A080525.P10872196397529717126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080524 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A080525.P10872196397529717126

/-! ## A080525.P13379597318176148771

`(n+1)^n-A026741(n)`
-/

namespace A080525.P13379597318176148771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℤ) - A026741 n

end

end A080525.P13379597318176148771

/-!
# A080526: Final entry in n-th row of triangle in A080524.

The programs for A080526, the canonical program `A080526.P10171359421687789395` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080526 has offset 1).

The definition of A080526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080526.P10171359421687789395

`(n+1)^n+n/(1+(n+1)%2)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080526

/-- `(n+1)^n+n/(1+(n+1)%2)` -/
def P10171359421687789395.Spec : Prop :=
  ∀ n, P10171359421687789395.a n = (A080526 (n + 1) : ℚ)

end A080526

/-! ## A080526.P8659518089500636799

`gcd(n, ∑[n])+(n+1)^n`
-/

namespace A080526.P8659518089500636799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1) ^ n

end

end A080526.P8659518089500636799

namespace A080526

/-- `gcd(n, ∑[n])+(n+1)^n` -/
def P8659518089500636799.Spec : Prop :=
  ∀ n, (P8659518089500636799.a n : ℤ) = A080526 (n + 1)

end A080526

/-! ## A080526.P8347955406264672873

`(n+1)^n+lcm(2, n)/2`
-/

namespace A080526.P8347955406264672873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) + (Nat.lcm 2 n : ℚ) / 2

end

end A080526.P8347955406264672873

namespace A080526

/-- `(n+1)^n+lcm(2, n)/2` -/
def P8347955406264672873.Spec : Prop :=
  ∀ n, P8347955406264672873.a n = (A080526 (n + 1) : ℚ)

end A080526

/-! ## A080526.P6351140797458355200

`(n+1)^n+n/(2-and(1, n))`
-/

namespace A080526.P6351140797458355200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ n : ℚ) + (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

end

end A080526.P6351140797458355200

namespace A080526

/-- `(n+1)^n+n/(2-and(1, n))` -/
def P6351140797458355200.Spec : Prop :=
  ∀ n, P6351140797458355200.a n = (A080526 (n + 1) : ℚ)

end A080526

/-! ## A080526.P11907295700961680740

`A080524(∑[n+1])`
-/

namespace A080526.P11907295700961680740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080524 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080526.P11907295700961680740

namespace A080526

/-- `A080524(∑[n+1])` -/
def P11907295700961680740.Spec : Prop :=
  ∀ n, P11907295700961680740.a n = A080526 (n + 1)

end A080526

/-! ## A080526.P6004017182546409828

`A026741(n)+(n+1)^n`
-/

namespace A080526.P6004017182546409828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + ((n + 1) ^ n : ℤ)

end

end A080526.P6004017182546409828

namespace A080526

/-- `A026741(n)+(n+1)^n` -/
def P6004017182546409828.Spec : Prop :=
  ∀ n, P6004017182546409828.a n = A080526 (n + 1)

end A080526

/-!
# A080528: Sum of multinomials of (-1 + number of runs) in the partitions of n.

The programs for A080528, there is no canonical definition to state claims against.
-/

/-! ## A080528.P16410679539868682851

`A341026(A038196(n))+A048816(n+1)`
-/

namespace A080528.P16410679539868682851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((A038196 n).toNat + 165) + A048816 (n + 1)

end

end A080528.P16410679539868682851

/-! ## A080528.P12415042194660252200

`A124769(A174617(n+2))+A048816(n+1)`
-/

namespace A080528.P12415042194660252200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A174617 (n + 2)).toNat + A048816 (n + 1)

end

end A080528.P12415042194660252200

/-! ## A080528.P7566872755705406404

`A245152(n+1)-A185284(ceil(n*sqrt(11)))`
-/

namespace A080528.P7566872755705406404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245152 (n + 1) - A185284 ⌈(n : ℝ) * Real.sqrt (11 : ℝ)⌉.toNat

end

end A080528.P7566872755705406404

/-! ## A080528.P14774521672755170542

`A245152(n+1)-∑[A185284(3*n+2)]`
-/

namespace A080528.P14774521672755170542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245152 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080528.P14774521672755170542

/-! ## A080528.P18280557408074567608

`A085982(A001333(n))+A048816(n+1)`
-/

namespace A080528.P18280557408074567608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A001333 n).toNat + A048816 (n + 1)

end

end A080528.P18280557408074567608

/-!
# A080529: Number of nucleons in longest known radioactive decay series ending with Lead 206 ("uranium series"), reversed.

The programs for A080529, there is no canonical definition to state claims against.
-/

/-! ## A080529.P2955732386892057561

`A080533(n)+A080537(n)`
-/

namespace A080529.P2955732386892057561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080533 n + A080537 n

end

end A080529.P2955732386892057561

/-! ## A080529.P5980176277038813717

`A080533(n)+A080538(A032766(n))-A109613(n)`
-/

namespace A080529.P5980176277038813717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080533 n + (A080538 (A032766 n).toNat - A109613 n)

end

end A080529.P5980176277038813717

/-! ## A080529.P649541821479330606

`A080533(n)+record[A080538(n)-A305429(n+1)]`
-/

namespace A080529.P649541821479330606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080538 n - A305429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080533 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080529.P649541821479330606

/-! ## A080529.P51359828453522178

`A080530(n)-A080393(A080404(n+1))`
-/

namespace A080529.P51359828453522178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080530 n - A080393 (A080404 (n + 1)).toNat

end

end A080529.P51359828453522178

/-!
# A080530: Number of nucleons in longest known radioactive decay series ending with Lead 207 ("actinium series"), reversed.

The programs for A080530, there is no canonical definition to state claims against.
-/

/-! ## A080530.P4272526228390047456

`A080534(n)+A080538(n)`
-/

namespace A080530.P4272526228390047456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080534 n + A080538 n

end

end A080530.P4272526228390047456

/-! ## A080530.P2388407733769802054

`or(3, A080538(n)+A080533(n))`
-/

namespace A080530.P2388407733769802054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A080538 n + A080533 n)

end

end A080530.P2388407733769802054

/-! ## A080530.P740291788126150486

`A080534(n)+A080539(n)-A112624(A353017(n))`
-/

namespace A080530.P740291788126150486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080534 n + (A080539 n - A112624 (A353017 n).toNat)

end

end A080530.P740291788126150486

/-! ## A080530.P9552465213480949078

`A080534(n)+A080537(n+1)+A014669(A008528(n))`
-/

namespace A080530.P9552465213480949078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080534 n + (A080537 (n + 1) + A014669 (A008528 n).toNat)

end

end A080530.P9552465213480949078

/-! ## A080530.P8112767665114602647

`A080534(n)+A080537(n+1)-A102683(A080524(2*(n+1)))`
-/

namespace A080530.P8112767665114602647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080534 n + (A080537 (n + 1) - A102683 (A080524 (2 * (n + 1))).toNat)

end

end A080530.P8112767665114602647

/-!
# A080531: Number of nucleons in longest known radioactive decay series ending with Lead 208 ("thorium series"), reversed.

The programs for A080531, there is no canonical definition to state claims against.
-/

/-! ## A080531.P15465309048861943105

`A080535(n)+A080539(n)`
-/

namespace A080531.P15465309048861943105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 n + A080539 n

end

end A080531.P15465309048861943105

/-! ## A080531.P2817312253327489721

`A080535(n)-(char[A080533(n)]-A080539(n))`
-/

namespace A080531.P2817312253327489721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080533 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A080539 n)

end

end A080531.P2817312253327489721

/-! ## A080531.P5184856678841619371

`A080535(n)-(char[A080534(n)]-A080539(n))`
-/

namespace A080531.P5184856678841619371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080534 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A080539 n)

end

end A080531.P5184856678841619371

/-! ## A080531.P17923433680321777102

`A080535(n)-(char[A080536(n)]-A080539(n))`
-/

namespace A080531.P17923433680321777102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080536 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A080539 n)

end

end A080531.P17923433680321777102

/-! ## A080531.P13692799805901638631

`A080535(n)+A112624(A353017(n))+A080538(n)`
-/

namespace A080531.P13692799805901638631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080535 n + (A112624 (A353017 n).toNat + A080538 n)

end

end A080531.P13692799805901638631

/-!
# A080532: Number of nucleons in longest known radioactive decay series ending with Lead 209, reversed.

The programs for A080532, there is no canonical definition to state claims against.
-/

/-! ## A080532.P7292292364148160176

`A080536(n)+A080540(n)`
-/

namespace A080532.P7292292364148160176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080536 n + A080540 n

end

end A080532.P7292292364148160176

/-! ## A080532.P10760205444869222840

`A080536(n)+A080539(n)-A010815(A000041(3*n+2))`
-/

namespace A080532.P10760205444869222840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080536 n + (A080539 n - A010815 (A000041 (3 * n + 2)).toNat)

end

end A080532.P10760205444869222840

/-! ## A080532.P12558559700780178439

`A080536(n)+A121373(A046982(n))+A080539(n)`
-/

namespace A080532.P12558559700780178439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080536 n + (A121373 (A046982 n).toNat + A080539 n)

end

end A080532.P12558559700780178439

/-! ## A080532.P11053005340618704845

`A080536(n)+A085639(A225826(n))+A080539(n)`
-/

namespace A080532.P11053005340618704845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080536 n + (A085639 (A225826 n).toNat + A080539 n)

end

end A080532.P11053005340618704845

/-!
# A080533: Number of protons in longest known radioactive decay series ending with Lead 206 ("uranium series"), reversed.

The programs for A080533, there is no canonical definition to state claims against.
-/

/-! ## A080533.P10972300294331583013

`A080529(n)-A080537(n)`
-/

namespace A080533.P10972300294331583013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080529 n - A080537 n

end

end A080533.P10972300294331583013

/-! ## A080533.P3654814268108828370

`A080529(round(acot(n)+n))%A080537(n)`
-/

namespace A080533.P3654814268108828370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080529 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A080537 n)

end

end A080533.P3654814268108828370

/-! ## A080533.P7539925324794664227

`A000027(A080529(n)%A080537(n))`
-/

namespace A080533.P7539925324794664227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A080529 n) (A080537 n)).toNat

end

end A080533.P7539925324794664227

/-! ## A080533.P6014979048463715639

`A080529(A028310(n))%A080537(n)`
-/

namespace A080533.P6014979048463715639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080529 (A028310 n).toNat) (A080537 n)

end

end A080533.P6014979048463715639

/-! ## A080533.P497602549136103237

`A080529(n)-(A080538(A032766(n))-A109613(n))`
-/

namespace A080533.P497602549136103237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080529 n - (A080538 (A032766 n).toNat - A109613 n)

end

end A080533.P497602549136103237

/-!
# A080534: Number of protons in longest known radioactive decay series ending with Lead 207 ("actinium series"), reversed.

The programs for A080534, there is no canonical definition to state claims against.
-/

/-! ## A080534.P7241364012229882726

`A080530(n)-A080538(n)`
-/

namespace A080534.P7241364012229882726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080530 n - A080538 n

end

end A080534.P7241364012229882726

/-! ## A080534.P15535056281289108330

`A000027(A080530(n)%A080538(n))`
-/

namespace A080534.P15535056281289108330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A080530 n) (A080538 n)).toNat

end

end A080534.P15535056281289108330

/-! ## A080534.P13192401584021763487

`A080530(A028310(n))%A080538(n)`
-/

namespace A080534.P13192401584021763487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080530 (A028310 n).toNat) (A080538 n)

end

end A080534.P13192401584021763487

/-! ## A080534.P3743187356157041910

`A080530(A118759(n))%A080538(n)`
-/

namespace A080534.P3743187356157041910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080530 (A118759 n).toNat) (A080538 n)

end

end A080534.P3743187356157041910

/-! ## A080534.P11852211430072302031

`or(3, A080538(n)+A080533(n))%A080538(n)`
-/

namespace A080534.P11852211430072302031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 3 (A080538 n + A080533 n)) (A080538 n)

end

end A080534.P11852211430072302031

/-!
# A080535: Number of protons in longest known radioactive decay series ending with Lead 208 ("thorium series"), reversed.

The programs for A080535, there is no canonical definition to state claims against.
-/

/-! ## A080535.P6642646816858565167

`A080531(n)-A080539(n)`
-/

namespace A080535.P6642646816858565167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080531 n - A080539 n

end

end A080535.P6642646816858565167

/-! ## A080535.P7181484954059583436

`A000027(A080531(n)%A080539(n))`
-/

namespace A080535.P7181484954059583436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A080531 n) (A080539 n)).toNat

end

end A080535.P7181484954059583436

/-! ## A080535.P7899608723890761589

`A080531(A028310(n))%A080539(n)`
-/

namespace A080535.P7899608723890761589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080531 (A028310 n).toNat) (A080539 n)

end

end A080535.P7899608723890761589

/-! ## A080535.P2867960150649661267

`A080531(A118759(n))%A080539(n)`
-/

namespace A080535.P2867960150649661267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080531 (A118759 n).toNat) (A080539 n)

end

end A080535.P2867960150649661267

/-! ## A080535.P10790593753553676880

`A080531(n)-(A112624(A353017(n))+A080538(n))`
-/

namespace A080535.P10790593753553676880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080531 n - (A112624 (A353017 n).toNat + A080538 n)

end

end A080535.P10790593753553676880

/-!
# A080536: Number of protons in longest known radioactive decay series ending with Lead 209, reversed.

The programs for A080536, there is no canonical definition to state claims against.
-/

/-! ## A080536.P6483767315064460813

`A080532(n)-A080540(n)`
-/

namespace A080536.P6483767315064460813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080532 n - A080540 n

end

end A080536.P6483767315064460813

/-! ## A080536.P2790255275758791278

`A080532(round(acot(n)+n))%A080540(n)`
-/

namespace A080536.P2790255275758791278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080532 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A080540 n)

end

end A080536.P2790255275758791278

/-! ## A080536.P18184149094106257158

`A080532(round(sqrt(n²+1)))%A080540(n)`
-/

namespace A080536.P18184149094106257158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080532 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A080540 n)

end

end A080536.P18184149094106257158

/-! ## A080536.P15564439974131408090

`A000027(A080532(n)%A080540(n))`
-/

namespace A080536.P15564439974131408090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A080532 n) (A080540 n)).toNat

end

end A080536.P15564439974131408090

/-!
# A080537: Number of neutrons in longest known radioactive decay series ending with Lead 206 ("uranium series"), reversed.

The programs for A080537, there is no canonical definition to state claims against.
-/

/-! ## A080537.P10507040055314226258

`A080529(n)-A080533(n)`
-/

namespace A080537.P10507040055314226258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080529 n - A080533 n

end

end A080537.P10507040055314226258

/-! ## A080537.P7110390974688637572

`A080538(A032766(n))-A109613(n)`
-/

namespace A080537.P7110390974688637572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080538 (A032766 n).toNat - A109613 n

end

end A080537.P7110390974688637572

/-! ## A080537.P335995796288794774

`record[A080538(n)-A305429(n+1)]`
-/

namespace A080537.P335995796288794774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080538 n - A305429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080537.P335995796288794774

/-! ## A080537.P12286100907546681808

`∑[gcd(A035026(n+1), A273586(2*(n+4)))]`
-/

namespace A080537.P12286100907546681808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035026 (n + 1)) (A273586 (2 * (n + 4)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080537.P12286100907546681808

/-!
# A080538: Number of neutrons in longest known radioactive decay series ending with Lead 207 ("actinium series"), reversed.

The programs for A080538, there is no canonical definition to state claims against.
-/

/-! ## A080538.P16349545238681411231

`A080530(n)-A080534(n)`
-/

namespace A080538.P16349545238681411231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080530 n - A080534 n

end

end A080538.P16349545238681411231

/-! ## A080538.P18090871302471312625

`A080539(n)-A061704(A333647(n))`
-/

namespace A080538.P18090871302471312625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080539 n - A061704 (A333647 n).toNat

end

end A080538.P18090871302471312625

/-! ## A080538.P10133065277000957584

`A080539(n)-A003842(A000225(n+2))`
-/

namespace A080538.P10133065277000957584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080539 n - A003842 (A000225 (n + 2)).toNat

end

end A080538.P10133065277000957584

/-! ## A080538.P9411569017934524812

`A080539(n)-A112624(A353017(n))`
-/

namespace A080538.P9411569017934524812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080539 n - A112624 (A353017 n).toNat

end

end A080538.P9411569017934524812

/-! ## A080538.P2220687850721827836

`A080537(A032563(n+1))`
-/

namespace A080538.P2220687850721827836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080537 (A032563 (n + 1)).toNat

end

end A080538.P2220687850721827836

/-!
# A080539: Number of neutrons in longest known radioactive decay series ending with Lead 208 ("thorium series"), reversed.

The programs for A080539, there is no canonical definition to state claims against.
-/

/-! ## A080539.P15334209289473301983

`A080531(n)-A080535(n)`
-/

namespace A080539.P15334209289473301983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080531 n - A080535 n

end

end A080539.P15334209289473301983

/-! ## A080539.P570610741279284654

`A165022(A000602(n))+A080538(n)`
-/

namespace A080539.P570610741279284654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165022 (A000602 n).toNat + A080538 n

end

end A080539.P570610741279284654

/-! ## A080539.P3387302601798056387

`A112624(A353017(n))+A080538(n)`
-/

namespace A080539.P3387302601798056387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A353017 n).toNat + A080538 n

end

end A080539.P3387302601798056387

/-! ## A080539.P15186423134547965196

`A112624(A353017(n))+A080530(n)-A080534(n)`
-/

namespace A080539.P15186423134547965196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (A353017 n).toNat + (A080530 n - A080534 n)

end

end A080539.P15186423134547965196

/-! ## A080539.P10543247767303421760

`xor(A080540(n), A123594(A282825(n)))`
-/

namespace A080539.P10543247767303421760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080540 n) (A123594 (A282825 n).toNat)

end

end A080539.P10543247767303421760

/-!
# A080540: Number of neutrons in longest known radioactive decay series ending with Lead 209, reversed.

The programs for A080540, there is no canonical definition to state claims against.
-/

/-! ## A080540.P17641264113225908933

`A080532(n)-A080536(n)`
-/

namespace A080540.P17641264113225908933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080532 n - A080536 n

end

end A080540.P17641264113225908933

/-! ## A080540.P9944472000780054869

`A080539(n)-A010815(A000041(3*n+2))`
-/

namespace A080540.P9944472000780054869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080539 n - A010815 (A000041 (3 * n + 2)).toNat

end

end A080540.P9944472000780054869

/-! ## A080540.P12065921561912382545

`xor(A080539(n), A123594(A282825(n)))`
-/

namespace A080540.P12065921561912382545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080539 n) (A123594 (A282825 n).toNat)

end

end A080540.P12065921561912382545

/-! ## A080540.P10948836423910400719

`xor(A080539(n), A278045(A271852(2*n+1)))`
-/

namespace A080540.P10948836423910400719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080539 n) (A278045 (A271852 (2 * n + 1)).toNat)

end

end A080540.P10948836423910400719

/-!
# A080541: In binary representation: keep the first digit and left-rotate the others.

The programs for A080541, the canonical program `A080541.P6940438194727065998` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080541 has offset 1).

The definition of A080541 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A080542, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080541.P6940438194727065998

`A059893(A080542(A059893(n+1)))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080541

/-- `A059893(A080542(A059893(n+1)))` -/
def P6940438194727065998.Spec : Prop :=
  ∀ n, P6940438194727065998.a n = A080541 (n + 1)

theorem P6940438194727065998.correct : P6940438194727065998.Spec := by
  intro n
  simp only [A080541, Nat.add_sub_cancel]

end A080541

/-! ## A080541.P6173098724342064382

`A080543(A080542(n+1))`
-/

namespace A080541.P6173098724342064382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080543 (A080542 (n + 1)).toNat

end

end A080541.P6173098724342064382

namespace A080541

/-- `A080543(A080542(n+1))` -/
def P6173098724342064382.Spec : Prop :=
  ∀ n, P6173098724342064382.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P10414451433008856343

`A163807(A059893(n+1))`
-/

namespace A080541.P10414451433008856343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A059893 (n + 1)).toNat

end

end A080541.P10414451433008856343

namespace A080541

/-- `A163807(A059893(n+1))` -/
def P10414451433008856343.Spec : Prop :=
  ∀ n, P10414451433008856343.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P3096454194454821279

`A163807(A145342(n+2)-1)`
-/

namespace A080541.P3096454194454821279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A145342 (n + 2) - 1).toNat

end

end A080541.P3096454194454821279

namespace A080541

/-- `A163807(A145342(n+2)-1)` -/
def P3096454194454821279.Spec : Prop :=
  ∀ n, P3096454194454821279.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P3782257102536086801

`A163807((A145341(n+2)-1)/2)`
-/

namespace A080541.P3782257102536086801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (SequenceMachineLib.roundAway ((A145341 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A080541.P3782257102536086801

namespace A080541

/-- `A163807((A145341(n+2)-1)/2)` -/
def P3782257102536086801.Spec : Prop :=
  ∀ n, P3782257102536086801.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P14658806530600491479

`A163807(A080542(A163807(n+1)))`
-/

namespace A080541.P14658806530600491479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A080542 (A163807 (n + 1)).toNat).toNat

end

end A080541.P14658806530600491479

namespace A080541

/-- `A163807(A080542(A163807(n+1)))` -/
def P14658806530600491479.Spec : Prop :=
  ∀ n, P14658806530600491479.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P4482400947705513481

`A163807(A053644(n+1)+A030109(n+1))`
-/

namespace A080541.P4482400947705513481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A053644 (n + 1) + A030109 (n + 1)).toNat

end

end A080541.P4482400947705513481

namespace A080541

/-- `A163807(A053644(n+1)+A030109(n+1))` -/
def P4482400947705513481.Spec : Prop :=
  ∀ n, P4482400947705513481.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P11325037788381850524

`A163807(floor(A057889(2*n+3)/2))`
-/

namespace A080541.P11325037788381850524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 ⌊(A057889 (2 * n + 3) : ℚ) / 2⌋.toNat

end

end A080541.P11325037788381850524

namespace A080541

/-- `A163807(floor(A057889(2*n+3)/2))` -/
def P11325037788381850524.Spec : Prop :=
  ∀ n, P11325037788381850524.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P16788049301939673225

`A163807(floor(xor(2*n+3, A175919(2*n+3))/2))`
-/

namespace A080541.P16788049301939673225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 ⌊(Int.xor (2 * n + 3 : ℤ) (A175919 (2 * n + 3)) : ℚ) / 2⌋.toNat

end

end A080541.P16788049301939673225

namespace A080541

/-- `A163807(floor(xor(2*n+3, A175919(2*n+3))/2))` -/
def P16788049301939673225.Spec : Prop :=
  ∀ n, P16788049301939673225.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P3733174913370519765

`A162751(A346301(n+2))`
-/

namespace A080541.P3733174913370519765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162751 (A346301 (n + 2)).toNat

end

end A080541.P3733174913370519765

namespace A080541

/-- `A162751(A346301(n+2))` -/
def P3733174913370519765.Spec : Prop :=
  ∀ n, P3733174913370519765.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P6709112726815169041

`A163807(A163807(2*(n+1))/2)`
-/

namespace A080541.P6709112726815169041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (SequenceMachineLib.roundAway ((A163807 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A080541.P6709112726815169041

namespace A080541

/-- `A163807(A163807(2*(n+1))/2)` -/
def P6709112726815169041.Spec : Prop :=
  ∀ n, P6709112726815169041.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P17318914202275891982

`A163807(A030109(2*n+3))`
-/

namespace A080541.P17318914202275891982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163807 (A030109 (2 * n + 3)).toNat

end

end A080541.P17318914202275891982

namespace A080541

/-- `A163807(A030109(2*n+3))` -/
def P17318914202275891982.Spec : Prop :=
  ∀ n, P17318914202275891982.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P2290483812465105706

`A060973(or(A006165(2*(n+1)), A171781(n+2)))`
-/

namespace A080541.P2290483812465105706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (Int.lor (A006165 (2 * (n + 1))) (A171781 (n + 2))).toNat

end

end A080541.P2290483812465105706

namespace A080541

/-- `A060973(or(A006165(2*(n+1)), A171781(n+2)))` -/
def P2290483812465105706.Spec : Prop :=
  ∀ n, P2290483812465105706.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P13850471781313610863

`A060973(or(A060973(2*(n+1)), A171781(n+2)))`
-/

namespace A080541.P13850471781313610863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (Int.lor (A060973 (2 * (n + 1))) (A171781 (n + 2))).toNat

end

end A080541.P13850471781313610863

namespace A080541

/-- `A060973(or(A060973(2*(n+1)), A171781(n+2)))` -/
def P13850471781313610863.Spec : Prop :=
  ∀ n, P13850471781313610863.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P14976716678310743989

`A048679(A056018(A048680(n+1)))`
-/

namespace A080541.P14976716678310743989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A056018 (A048680 (n + 1)).toNat).toNat

end

end A080541.P14976716678310743989

namespace A080541

/-- `A048679(A056018(A048680(n+1)))` -/
def P14976716678310743989.Spec : Prop :=
  ∀ n, P14976716678310743989.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P6855513316618881606

`A289831(A125292(2*(n+1))-1)`
-/

namespace A080541.P6855513316618881606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A125292 (2 * (n + 1)) - 1).toNat

end

end A080541.P6855513316618881606

namespace A080541

/-- `A289831(A125292(2*(n+1))-1)` -/
def P6855513316618881606.Spec : Prop :=
  ∀ n, P6855513316618881606.a n = A080541 (n + 1)

end A080541

/-! ## A080541.P12625680322135565989

`A309952(A032937(2*(n+1))-1)`
-/

namespace A080541.P12625680322135565989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A032937 (2 * (n + 1)) - 1).toNat

end

end A080541.P12625680322135565989

namespace A080541

/-- `A309952(A032937(2*(n+1))-1)` -/
def P12625680322135565989.Spec : Prop :=
  ∀ n, P12625680322135565989.a n = A080541 (n + 1)

end A080541

/-!
# A080542: In binary representation: keep the first digit and rotate right the others.

The programs for A080542, the canonical program `A080542.P9634742044237708567` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080542 has offset 1).

The definition of A080542 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080542.P38775778243037152

`A059893(A080541(A059893(n+1)))`
-/

namespace A080542.P38775778243037152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080541 (A059893 (n + 1)).toNat).toNat

end

end A080542.P38775778243037152

namespace A080542

/-- `A059893(A080541(A059893(n+1)))` -/
def P38775778243037152.Spec : Prop :=
  ∀ n, P38775778243037152.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P9043122201838796351

`xor(n+1, A392521(n+1))`
-/

namespace A080542.P9043122201838796351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A392521 (n + 1))

end

end A080542.P9043122201838796351

namespace A080542

/-- `xor(n+1, A392521(n+1))` -/
def P9043122201838796351.Spec : Prop :=
  ∀ n, P9043122201838796351.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P9634742044237708567

`A038572(A038572(n+2)+A004526(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080542

/-- `A038572(A038572(n+2)+A004526(n+1))` -/
def P9634742044237708567.Spec : Prop :=
  ∀ n, P9634742044237708567.a n = A080542 (n + 1)

theorem P9634742044237708567.correct : P9634742044237708567.Spec := by
  intro n
  simp only [A080542, Nat.add_sub_cancel]

end A080542

/-! ## A080542.P5675757580537343421

`A080544(A080541(n+1))`
-/

namespace A080542.P5675757580537343421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (A080541 (n + 1)).toNat

end

end A080542.P5675757580537343421

namespace A080542

/-- `A080544(A080541(n+1))` -/
def P5675757580537343421.Spec : Prop :=
  ∀ n, P5675757580537343421.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P13903495674799590803

`A059893(A163807(n+1))`
-/

namespace A080542.P13903495674799590803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A163807 (n + 1)).toNat

end

end A080542.P13903495674799590803

namespace A080542

/-- `A059893(A163807(n+1))` -/
def P13903495674799590803.Spec : Prop :=
  ∀ n, P13903495674799590803.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P3392531912399111181

`A145342(A163807(n+1)+1)-1`
-/

namespace A080542.P3392531912399111181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (A163807 (n + 1) + 1).toNat - 1

end

end A080542.P3392531912399111181

namespace A080542

/-- `A145342(A163807(n+1)+1)-1` -/
def P3392531912399111181.Spec : Prop :=
  ∀ n, P3392531912399111181.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P2397869282688583003

`A053644(n+1)+A030109(A163807(n+1))`
-/

namespace A080542.P2397869282688583003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A030109 (A163807 (n + 1)).toNat

end

end A080542.P2397869282688583003

namespace A080542

/-- `A053644(n+1)+A030109(A163807(n+1))` -/
def P2397869282688583003.Spec : Prop :=
  ∀ n, P2397869282688583003.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P5696870958522080872

`A053645(A038572(n+1))+A053644(n+1)`
-/

namespace A080542.P5696870958522080872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A038572 (n + 1)).toNat + A053644 (n + 1)

end

end A080542.P5696870958522080872

namespace A080542

/-- `A053645(A038572(n+1))+A053644(n+1)` -/
def P5696870958522080872.Spec : Prop :=
  ∀ n, P5696870958522080872.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P6800961860931152772

`A059894(A080541(A059894(n+1)))`
-/

namespace A080542.P6800961860931152772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A080541 (A059894 (n + 1)).toNat).toNat

end

end A080542.P6800961860931152772

namespace A080542

/-- `A059894(A080541(A059894(n+1)))` -/
def P6800961860931152772.Spec : Prop :=
  ∀ n, P6800961860931152772.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P2197405330086541168

`A132196(or(1, n+1)+n)/2`
-/

namespace A080542.P2197405330086541168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132196 (Nat.lor 1 (n + 1) + n) : ℚ) / 2

end

end A080542.P2197405330086541168

namespace A080542

/-- `A132196(or(1, n+1)+n)/2` -/
def P2197405330086541168.Spec : Prop :=
  ∀ n, P2197405330086541168.a n = (A080542 (n + 1) : ℚ)

end A080542

/-! ## A080542.P6036326865130612923

`A030109(2*A163807(n+1)+1)`
-/

namespace A080542.P6036326865130612923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (2 * A163807 (n + 1) + 1).toNat

end

end A080542.P6036326865130612923

namespace A080542

/-- `A030109(2*A163807(n+1)+1)` -/
def P6036326865130612923.Spec : Prop :=
  ∀ n, P6036326865130612923.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P13304980584954707820

`A163807(2*A163807(n+1))/2`
-/

namespace A080542.P13304980584954707820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163807 (2 * A163807 (n + 1)).toNat : ℚ) / 2

end

end A080542.P13304980584954707820

namespace A080542

/-- `A163807(2*A163807(n+1))/2` -/
def P13304980584954707820.Spec : Prop :=
  ∀ n, P13304980584954707820.a n = (A080542 (n + 1) : ℚ)

end A080542

/-! ## A080542.P12432112771077501203

`A030109(A163807(n+1)+A163807(n+1)+1)`
-/

namespace A080542.P12432112771077501203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030109 (A163807 (n + 1) + (A163807 (n + 1) + 1)).toNat

end

end A080542.P12432112771077501203

namespace A080542

/-- `A030109(A163807(n+1)+A163807(n+1)+1)` -/
def P12432112771077501203.Spec : Prop :=
  ∀ n, P12432112771077501203.a n = A080542 (n + 1)

end A080542

/-! ## A080542.P9523754060134338687

`A048679(A056017(A048680(n+1)))`
-/

namespace A080542.P9523754060134338687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A056017 (A048680 (n + 1)).toNat).toNat

end

end A080542.P9523754060134338687

namespace A080542

/-- `A048679(A056017(A048680(n+1)))` -/
def P9523754060134338687.Spec : Prop :=
  ∀ n, P9523754060134338687.a n = A080542 (n + 1)

end A080542

/-!
# A080543: In binary representation: keep the first digit and rotate left the others twice.

The programs for A080543, the canonical program `A080543.P9661818931796331892` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080543 has offset 1).

The definition of A080543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080543.P9661818931796331892

`A080541(A080541(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080543

/-- `A080541(A080541(n+1))` -/
def P9661818931796331892.Spec : Prop :=
  ∀ n, P9661818931796331892.a n = A080543 (n + 1)

theorem P9661818931796331892.correct : P9661818931796331892.Spec := by
  intro n
  simp only [A080543, Nat.add_sub_cancel]

end A080543

/-! ## A080543.P12385326670335376123

`A059893(A080544(A059893(n+1)))`
-/

namespace A080543.P12385326670335376123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080544 (A059893 (n + 1)).toNat).toNat

end

end A080543.P12385326670335376123

namespace A080543

/-- `A059893(A080544(A059893(n+1)))` -/
def P12385326670335376123.Spec : Prop :=
  ∀ n, P12385326670335376123.a n = A080543 (n + 1)

end A080543

/-! ## A080543.P9734735738966404006

`A059894(A080544(A059894(n+1)))`
-/

namespace A080543.P9734735738966404006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A080544 (A059894 (n + 1)).toNat).toNat

end

end A080543.P9734735738966404006

namespace A080543

/-- `A059894(A080544(A059894(n+1)))` -/
def P9734735738966404006.Spec : Prop :=
  ∀ n, P9734735738966404006.a n = A080543 (n + 1)

end A080543

/-! ## A080543.P14587218860910347461

`A048679(A056018(A056018(A048680(n+1))))`
-/

namespace A080543.P14587218860910347461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A056018 (A056018 (A048680 (n + 1)).toNat).toNat).toNat

end

end A080543.P14587218860910347461

namespace A080543

/-- `A048679(A056018(A056018(A048680(n+1))))` -/
def P14587218860910347461.Spec : Prop :=
  ∀ n, P14587218860910347461.a n = A080543 (n + 1)

end A080543

/-!
# A080544: In binary representation: keep the first digit and rotate right the others twice.

The programs for A080544, the canonical program `A080544.P11312193905064054092` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080544 has offset 1).

The definition of A080544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080544.P11312193905064054092

`A080542(A080542(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A080544

/-- `A080542(A080542(n+1))` -/
def P11312193905064054092.Spec : Prop :=
  ∀ n, P11312193905064054092.a n = A080544 (n + 1)

theorem P11312193905064054092.correct : P11312193905064054092.Spec := by
  intro n
  simp only [A080544, Nat.add_sub_cancel]

end A080544

/-! ## A080544.P16958391163256225899

`A059893(A080543(A059893(n+1)))`
-/

namespace A080544.P16958391163256225899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080543 (A059893 (n + 1)).toNat).toNat

end

end A080544.P16958391163256225899

namespace A080544

/-- `A059893(A080543(A059893(n+1)))` -/
def P16958391163256225899.Spec : Prop :=
  ∀ n, P16958391163256225899.a n = A080544 (n + 1)

end A080544

/-! ## A080544.P17805585364629352484

`A059894(A080541(A080541(A059894(n+1))))`
-/

namespace A080544.P17805585364629352484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A080541 (A080541 (A059894 (n + 1)).toNat).toNat).toNat

end

end A080544.P17805585364629352484

namespace A080544

/-- `A059894(A080541(A080541(A059894(n+1))))` -/
def P17805585364629352484.Spec : Prop :=
  ∀ n, P17805585364629352484.a n = A080544 (n + 1)

end A080544

/-! ## A080544.P6148617555718709510

`A048679(A056017(A056017(A048680(n+1))))`
-/

namespace A080544.P6148617555718709510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 (A056017 (A056017 (A048680 (n + 1)).toNat).toNat).toNat

end

end A080544.P6148617555718709510

namespace A080544

/-- `A048679(A056017(A056017(A048680(n+1))))` -/
def P6148617555718709510.Spec : Prop :=
  ∀ n, P6148617555718709510.a n = A080544 (n + 1)

end A080544

/-!
# A080545: Characteristic function of {1} union {odd primes}: 1 if n is 1 or an odd prime, else 0.

The programs for A080545, the canonical program `A080545.P16635914501708034177` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080545 has offset 1).

The definition of A080545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080545.P16635914501708034177

`∏{p}[n+1, C(#, n)%2]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080545

/-- `∏{p}[n+1, C(#, n)%2]` -/
def P16635914501708034177.Spec : Prop :=
  ∀ n, (P16635914501708034177.a n : ℤ) = A080545 (n + 1)

theorem P16635914501708034177.correct : P16635914501708034177.Spec := by
  intro n
  simp only [A080545, Nat.add_sub_cancel]

end A080545

/-! ## A080545.P18297021814559284593

`∏{p}[n+1, (#%n)%#]`
-/

namespace A080545.P18297021814559284593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p % n % p

end

end A080545.P18297021814559284593

namespace A080545

/-- `∏{p}[n+1, (#%n)%#]` -/
def P18297021814559284593.Spec : Prop :=
  ∀ n, (P18297021814559284593.a n : ℤ) = A080545 (n + 1)

end A080545

/-! ## A080545.P7418219654014722075

`∏{p}[n+1, round((#-2)/n)]`
-/

namespace A080545.P7418219654014722075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.roundAway (((p : ℤ) - 2 : ℚ) / (n : ℚ))

end

end A080545.P7418219654014722075

namespace A080545

/-- `∏{p}[n+1, round((#-2)/n)]` -/
def P7418219654014722075.Spec : Prop :=
  ∀ n, P7418219654014722075.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P16297392492983543798

`C(n+3, ∑{d}[n+1, #])%2`
-/

namespace A080545.P16297392492983543798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) (∑ d ∈ Nat.divisors (f1 n), d) % 2

end

end A080545.P16297392492983543798

namespace A080545

/-- `C(n+3, ∑{d}[n+1, #])%2` -/
def P16297392492983543798.Spec : Prop :=
  ∀ n, (P16297392492983543798.a n : ℤ) = A080545 (n + 1)

end A080545

/-! ## A080545.P8665822397498352898

`C((n+1)%2, ∑{e}[n+1, #])`
-/

namespace A080545.P8665822397498352898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) % 2) (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A080545.P8665822397498352898

namespace A080545

/-- `C((n+1)%2, ∑{e}[n+1, #])` -/
def P8665822397498352898.Spec : Prop :=
  ∀ n, (P8665822397498352898.a n : ℤ) = A080545 (n + 1)

end A080545

/-! ## A080545.P4039923138614227095

`round(∏{p}[n+1, (#/(n+2))²])`
-/

namespace A080545.P4039923138614227095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) / (n + 2 : ℚ)) ^ 2)

end

end A080545.P4039923138614227095

namespace A080545

/-- `round(∏{p}[n+1, (#/(n+2))²])` -/
def P4039923138614227095.Spec : Prop :=
  ∀ n, P4039923138614227095.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P11941517964859191096

`floor(∑{p}[2*(n+1), #/(n+2)])`
-/

namespace A080545.P11941517964859191096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (n + 2 : ℚ)⌋

end

end A080545.P11941517964859191096

namespace A080545

/-- `floor(∑{p}[2*(n+1), #/(n+2)])` -/
def P11941517964859191096.Spec : Prop :=
  ∀ n, P11941517964859191096.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P15803121003658624267

`and(1, (n+1)*∑{e}[n+1, #]!)`
-/

namespace A080545.P15803121003658624267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((n + 1) * Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p))

end

end A080545.P15803121003658624267

namespace A080545

/-- `and(1, (n+1)*∑{e}[n+1, #]!)` -/
def P15803121003658624267.Spec : Prop :=
  ∀ n, (P15803121003658624267.a n : ℤ) = A080545 (n + 1)

end A080545

/-! ## A080545.P8719385648824709237

`floor(∑{p}[n+2+n, #]/(n+2))`
-/

namespace A080545.P8719385648824709237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / (n + 2 : ℚ)⌋

end

end A080545.P8719385648824709237

namespace A080545

/-- `floor(∑{p}[n+2+n, #]/(n+2))` -/
def P8719385648824709237.Spec : Prop :=
  ∀ n, P8719385648824709237.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P10134677998461431064

`round((n+1)*∏{d}[n+1, #/(n+2)])`
-/

namespace A080545.P10134677998461431064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ d ∈ Nat.divisors (f1 n), (d : ℚ) / (n + 2 : ℚ)))

end

end A080545.P10134677998461431064

namespace A080545

/-- `round((n+1)*∏{d}[n+1, #/(n+2)])` -/
def P10134677998461431064.Spec : Prop :=
  ∀ n, P10134677998461431064.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P4277629701627033896

`round((2*n+1)/∑{d}[n+1, n+1+#])`
-/

namespace A080545.P4277629701627033896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), (n + 1 + d) : ℕ) : ℚ))

end

end A080545.P4277629701627033896

namespace A080545

/-- `round((2*n+1)/∑{d}[n+1, n+1+#])` -/
def P4277629701627033896.Spec : Prop :=
  ∀ n, P4277629701627033896.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P15707058359030187527

`floor((2*n+1)/∏{e}[n+1, #*(n+3)])`
-/

namespace A080545.P15707058359030187527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (n + 3) : ℕ) : ℚ)⌋

end

end A080545.P15707058359030187527

namespace A080545

/-- `floor((2*n+1)/∏{e}[n+1, #*(n+3)])` -/
def P15707058359030187527.Spec : Prop :=
  ∀ n, P15707058359030187527.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P12628787081741129820

`floor((2*n+1)/(n+3)^∑{e}[n+1, #])`
-/

namespace A080545.P12628787081741129820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) / ((n + 3) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)⌋

end

end A080545.P12628787081741129820

namespace A080545

/-- `floor((2*n+1)/(n+3)^∑{e}[n+1, #])` -/
def P12628787081741129820.Spec : Prop :=
  ∀ n, P12628787081741129820.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P18054885418267463666

`char[A121206(n+1)]`
-/

namespace A080545.P18054885418267463666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A080545.P18054885418267463666

namespace A080545

/-- `char[A121206(n+1)]` -/
def P18054885418267463666.Spec : Prop :=
  ∀ n, (P18054885418267463666.a n : ℤ) = A080545 (n + 1)

end A080545

/-! ## A080545.P13619037538275072731

`A353471(2*(n+1))`
-/

namespace A080545.P13619037538275072731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353471 (2 * (n + 1))

end

end A080545.P13619037538275072731

namespace A080545

/-- `A353471(2*(n+1))` -/
def P13619037538275072731.Spec : Prop :=
  ∀ n, P13619037538275072731.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P12929631688306763771

`A359828(8*(n+1))`
-/

namespace A080545.P12929631688306763771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359828 (8 * (n + 1))

end

end A080545.P12929631688306763771

namespace A080545

/-- `A359828(8*(n+1))` -/
def P12929631688306763771.Spec : Prop :=
  ∀ n, P12929631688306763771.a n = A080545 (n + 1)

end A080545

/-! ## A080545.P5192441181188999124

`A066759(n+1)%2`
-/

namespace A080545.P5192441181188999124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066759 (n + 1)) 2

end

end A080545.P5192441181188999124

namespace A080545

/-- `A066759(n+1)%2` -/
def P5192441181188999124.Spec : Prop :=
  ∀ n, P5192441181188999124.a n = A080545 (n + 1)

end A080545

/-!
# A080546: Number of positions that are exactly n moves from the starting position in the Luminations Level 1 puzzle.

The programs for A080546, there is no canonical definition to state claims against.
-/

/-! ## A080546.P4945337942810075404

`A080554(n)%p?[or(1, ∑[2^n]-n)]`
-/

namespace A080546.P4945337942810075404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080554 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A080546.P4945337942810075404

/-! ## A080546.P6406812227658854281

`A080554(A024651(n))`
-/

namespace A080546.P6406812227658854281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080554 (A024651 n).toNat

end

end A080546.P6406812227658854281

/-! ## A080546.P306372025331936607

`A080554(A024652(n))`
-/

namespace A080546.P306372025331936607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080554 (A024652 n).toNat

end

end A080546.P306372025331936607

/-! ## A080546.P9487123212889125114

`A080554(A024653(n))`
-/

namespace A080546.P9487123212889125114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080554 (A024653 n).toNat

end

end A080546.P9487123212889125114

/-! ## A080546.P5184507833952351144

`A080554(A024654(n))`
-/

namespace A080546.P5184507833952351144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080554 (A024654 n).toNat

end

end A080546.P5184507833952351144

/-!
# A080554: Number of positions that are exactly n moves from the starting position in the Luminations Level 4 puzzle.

The programs for A080554, there is no canonical definition to state claims against.
-/

/-! ## A080554.P12746816438159892419

`∑[A029931(A282417(n))]`
-/

namespace A080554.P12746816438159892419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A282417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080554.P12746816438159892419

/-! ## A080554.P17459816127270524792

`∑[A029931(A283216(n))]`
-/

namespace A080554.P17459816127270524792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A283216 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080554.P17459816127270524792

/-! ## A080554.P17399805185392712690

`A262689(∑[A245467(n+2)]²)`
-/

namespace A080554.P17399805185392712690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A080554.P17399805185392712690

/-! ## A080554.P10694466077515164046

`∑[A245467(n+2)]%A245518(3*n+8)`
-/

namespace A080554.P10694466077515164046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A245518 (3 * n + 8))

end

end A080554.P10694466077515164046

/-! ## A080554.P4402115423638618818

`∑[A245467(n+2)%A064592(n+1)]`
-/

namespace A080554.P4402115423638618818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245467 (n + 2)) (A064592 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080554.P4402115423638618818

/-!
# A080555: Number of positions that are exactly n moves from the starting position in the Luminations Level 4 puzzle.

The programs for A080555, there is no canonical definition to state claims against.
-/

/-! ## A080555.P5342188120664032957

`A237271(A095996(n+1))+A161680(n)`
-/

namespace A080555.P5342188120664032957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (A095996 (n + 1)).toNat + A161680 n

end

end A080555.P5342188120664032957

/-! ## A080555.P11765597358843029055

`A039997(A269303(3*n+2))+A007380(2*n+3)`
-/

namespace A080555.P11765597358843029055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039997 (A269303 (3 * n + 2)).toNat + A007380 (2 * n + 3)

end

end A080555.P11765597358843029055

/-!
# A080556: Number of positions that are exactly n moves from the starting position in the Luminations Level 4 puzzle.

The programs for A080556, there is no canonical definition to state claims against.
-/

/-! ## A080556.P11011098059077595040

`∑[A007814(A096421(n+1))]+1`
-/

namespace A080556.P11011098059077595040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A096421 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A080556.P11011098059077595040

/-! ## A080556.P8695091649378014935

`A002024(A322111(n))+floor((n/2)²)`
-/

namespace A080556.P8695091649378014935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A322111 n).toNat + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A080556.P8695091649378014935

/-! ## A080556.P12915623652735176217

`A056556(A003114(3*n+2)*A325676(n))`
-/

namespace A080556.P12915623652735176217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A003114 (3 * n + 2) * A325676 n).toNat

end

end A080556.P12915623652735176217

/-!
# A080557: Number of positions that are exactly n moves from the starting position in the Luminations Level 5 puzzle.

The programs for A080557, there is no canonical definition to state claims against.
-/

/-! ## A080557.P13793125647434702764

`A124136(A000041(2*n))+A082230(n+1)`
-/

namespace A080557.P13793125647434702764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124136 (A000041 (2 * n)).toNat + A082230 (n + 1)

end

end A080557.P13793125647434702764

/-!
# A080558: Number of positions that are exactly n moves from the starting position in the Luminations Level 5 puzzle.

The programs for A080558, there is no canonical definition to state claims against.
-/

/-! ## A080558.P1954948582845191397

`A291954(A053141(n))+A001872(n)`
-/

namespace A080558.P1954948582845191397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291954 (A053141 n).toNat + A001872 n

end

end A080558.P1954948582845191397

/-!
# A080560: Number of positions that are exactly n moves from the starting position in the Orbix Type 1 puzzle.

The programs for A080560, there is no canonical definition to state claims against.
-/

/-! ## A080560.P5180217158650553046

`A295554(n+1)+xor(1, A080561(n))`
-/

namespace A080560.P5180217158650553046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295554 (n + 1) + Int.xor 1 (A080561 n)

end

end A080560.P5180217158650553046

/-! ## A080560.P3575767886682590867

`xor(A080561(n), A295554(A080561(n)))+1`
-/

namespace A080560.P3575767886682590867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080561 n) (A295554 (A080561 n).toNat) + 1

end

end A080560.P3575767886682590867

/-!
# A080561: Number of positions that are exactly n moves from the starting position in the Orbix Type 1 puzzle.

The programs for A080561, there is no canonical definition to state claims against.
-/

/-! ## A080561.P8304745790144048607

`A082287(A080560(n))`
-/

namespace A080561.P8304745790144048607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082287 (A080560 n).toNat

end

end A080561.P8304745790144048607

/-!
# A080562: Number of positions that are exactly n moves from the starting position in the Orbix Type 2 puzzle.

The programs for A080562, there is no canonical definition to state claims against.
-/

/-! ## A080562.P4895782727946200427

`A111338(A225286(n+1)+1)`
-/

namespace A080562.P4895782727946200427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (A225286 (n + 1) + 1).toNat

end

end A080562.P4895782727946200427

/-!
# A080563: Number of positions that are exactly n moves from the starting position in the Orbix Type 3 puzzle.

The programs for A080563, there is no canonical definition to state claims against.
-/

/-! ## A080563.P16690131582638383771

`A209936(A000217(2*(n+1)))%A263194(2*(n+1))`
-/

namespace A080563.P16690131582638383771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209936 (A000217 (2 * (n + 1))).toNat) (A263194 (2 * (n + 1)))

end

end A080563.P16690131582638383771

/-!
# A080564: Number of positions that are exactly n moves from the starting position in the Orbix Type 4 puzzle.

The programs for A080564, there is no canonical definition to state claims against.
-/

/-! ## A080564.P18424971827694110755

`A119840(a(n-1))` with `a(0)=1, a(1)=24, a(2)=30, a(3)=12`
-/

namespace A080564.P18424971827694110755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 24, 30, 12] fun n a =>
  A119840 (a (n - 1)).toNat

end

end A080564.P18424971827694110755

/-!
# A080565: Binary expansion of n has form 11**...*1.

The programs for A080565, the canonical program `A080565.P15160693230581553155` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080565 has offset 1).

The definition of A080565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080565.P15160693230581553155

`or(2*n, a(n-1)+2)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080565

/-- `or(2*n, a(n-1)+2)` -/
def P15160693230581553155.Spec : Prop :=
  ∀ n, (P15160693230581553155.a n : ℤ) = A080565 (n + 1)

theorem P15160693230581553155.correct : P15160693230581553155.Spec := by
  intro n
  simp only [A080565, Nat.add_sub_cancel]

end A080565

/-! ## A080565.P2136734612549658216

`record[or(n, a(n-2)+2)]` with `a(0)=3, a(1)=0`
-/

namespace A080565.P2136734612549658216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  Nat.lor n (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080565.P2136734612549658216

namespace A080565

/-- `record[or(n, a(n-2)+2)]` -/
def P2136734612549658216.Spec : Prop :=
  ∀ n, (P2136734612549658216.a n : ℤ) = A080565 (n + 1)

end A080565

/-! ## A080565.P10045529389788044192

`or(a(n-1)+2, n+n)` with `a(0)=3`
-/

namespace A080565.P10045529389788044192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor (a (n - 1) + 2) (n + n)

end

end A080565.P10045529389788044192

namespace A080565

/-- `or(a(n-1)+2, n+n)` -/
def P10045529389788044192.Spec : Prop :=
  ∀ n, (P10045529389788044192.a n : ℤ) = A080565 (n + 1)

end A080565

/-! ## A080565.P15901068459817495744

`record[or(n, n-a(n-1))]` with `a(0)=3, a(1)=3`
-/

namespace A080565.P15901068459817495744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  Int.lor (n : ℤ) ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080565.P15901068459817495744

namespace A080565

/-- `record[or(n, n-a(n-1))]` -/
def P15901068459817495744.Spec : Prop :=
  ∀ n, P15901068459817495744.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P10679967891335962602

`2*a(floor(n/2))-(-1)^n` with `a(0)=3`
-/

namespace A080565.P10679967891335962602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

end

end A080565.P10679967891335962602

namespace A080565

/-- `2*a(floor(n/2))-(-1)^n` -/
def P10679967891335962602.Spec : Prop :=
  ∀ n, P10679967891335962602.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P1832204394917143324

`2*(2^ceil(log2(n+1))+n)+1`
-/

namespace A080565.P1832204394917143324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ)) + 1

end

end A080565.P1832204394917143324

namespace A080565

/-- `2*(2^ceil(log2(n+1))+n)+1` -/
def P1832204394917143324.Spec : Prop :=
  ∀ n, P1832204394917143324.a n = (A080565 (n + 1) : ℚ)

end A080565

/-! ## A080565.P14802598154664535853

`or(2-floor(-a(n-1)), 2*n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A080565.P14802598154664535853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (2 - (-a (n - 1))) (2 * n : ℤ)

end

end A080565.P14802598154664535853

namespace A080565

/-- `or(2-floor(-a(n-1)), 2*n)` -/
def P14802598154664535853.Spec : Prop :=
  ∀ n, P14802598154664535853.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P5042628821965284858

`or(3-or(2, 1-a(n-1)), 2*n)` with `a(0)=3`
-/

namespace A080565.P5042628821965284858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (3 - Int.lor 2 (1 - a (n - 1))) (2 * n : ℤ)

end

end A080565.P5042628821965284858

namespace A080565

/-- `or(3-or(2, 1-a(n-1)), 2*n)` -/
def P5042628821965284858.Spec : Prop :=
  ∀ n, P5042628821965284858.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P3224685264577540147

`or(2*n+1, A171757(n+1))`
-/

namespace A080565.P3224685264577540147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A171757 (n + 1))

end

end A080565.P3224685264577540147

namespace A080565

/-- `or(2*n+1, A171757(n+1))` -/
def P3224685264577540147.Spec : Prop :=
  ∀ n, P3224685264577540147.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P9049646190000470259

`or(2*n+1, A265026(2*n+1))`
-/

namespace A080565.P9049646190000470259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A265026 (2 * n + 1))

end

end A080565.P9049646190000470259

namespace A080565

/-- `or(2*n+1, A265026(2*n+1))` -/
def P9049646190000470259.Spec : Prop :=
  ∀ n, P9049646190000470259.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P16177218226256972536

`or(2*n, A346303(n+2))`
-/

namespace A080565.P16177218226256972536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A346303 (n + 2))

end

end A080565.P16177218226256972536

namespace A080565

/-- `or(2*n, A346303(n+2))` -/
def P16177218226256972536.Spec : Prop :=
  ∀ n, P16177218226256972536.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P1362995296273182125

`lt[xor(n, 2*n), lcm(2, n)]`
-/

namespace A080565.P1362995296273182125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080565.P1362995296273182125

namespace A080565

/-- `lt[xor(n, 2*n), lcm(2, n)]` -/
def P1362995296273182125.Spec : Prop :=
  ∀ n, (P1362995296273182125.a n : ℤ) = A080565 (n + 1)

end A080565

/-! ## A080565.P6188104124892073783

`lt[xor(n, gcd(1-n, floor(n/2))), n]`
-/

namespace A080565.P6188104124892073783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080565.P6188104124892073783

namespace A080565

/-- `lt[xor(n, gcd(1-n, floor(n/2))), n]` -/
def P6188104124892073783.Spec : Prop :=
  ∀ n, (P6188104124892073783.a n : ℤ) = A080565 (n + 1)

end A080565

/-! ## A080565.P15465801939460359871

`lt[xor(n*gcd(2, n), floor(n/2)), n]`
-/

namespace A080565.P15465801939460359871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n * Nat.gcd 2 n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080565.P15465801939460359871

namespace A080565

/-- `lt[xor(n*gcd(2, n), floor(n/2)), n]` -/
def P15465801939460359871.Spec : Prop :=
  ∀ n, (P15465801939460359871.a n : ℤ) = A080565 (n + 1)

end A080565

/-! ## A080565.P7298227457194196493

`lt[n/(n%2+1), and(n, 2*n)]`
-/

namespace A080565.P7298227457194196493
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A080565.P7298227457194196493

namespace A080565

/-- `lt[n/(n%2+1), and(n, 2*n)]` -/
def P7298227457194196493.Spec : Prop :=
  ∀ n, (P7298227457194196493.a n : ℤ) = A080565 (n + 1)

end A080565

/-! ## A080565.P15794280826167904936

`A004755(Δ[n²])`
-/

namespace A080565.P15794280826167904936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A080565.P15794280826167904936

namespace A080565

/-- `A004755(Δ[n²])` -/
def P15794280826167904936.Spec : Prop :=
  ∀ n, P15794280826167904936.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P13121187173183250919

`or(1, A004755(2*n+1))`
-/

namespace A080565.P13121187173183250919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004755 (2 * n + 1))

end

end A080565.P13121187173183250919

namespace A080565

/-- `or(1, A004755(2*n+1))` -/
def P13121187173183250919.Spec : Prop :=
  ∀ n, P13121187173183250919.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P16777718773556240542

`or(2*n+1, A365624(n+1))`
-/

namespace A080565.P16777718773556240542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A365624 (n + 1))

end

end A080565.P16777718773556240542

namespace A080565

/-- `or(2*n+1, A365624(n+1))` -/
def P16777718773556240542.Spec : Prop :=
  ∀ n, P16777718773556240542.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P10609008087438501889

`∑[A099894(A341916(n))+2]`
-/

namespace A080565.P10609008087438501889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A341916 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080565.P10609008087438501889

namespace A080565

/-- `∑[A099894(A341916(n))+2]` -/
def P10609008087438501889.Spec : Prop :=
  ∀ n, P10609008087438501889.a n = A080565 (n + 1)

end A080565

/-! ## A080565.P16126062682288843760

`A145341(A145341(n+1)+1)`
-/

namespace A080565.P16126062682288843760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A145341 (n + 1) + 1).toNat

end

end A080565.P16126062682288843760

namespace A080565

/-- `A145341(A145341(n+1)+1)` -/
def P16126062682288843760.Spec : Prop :=
  ∀ n, P16126062682288843760.a n = A080565 (n + 1)

end A080565

/-!
# A080566: Partial sums of A079000.

The programs for A080566, the canonical program `A080566.P4000903305215095310` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080566 has offset 1).

The definition of A080566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080566.P5993007880618945289

`∑[A079000(n+1)]`
-/

namespace A080566.P5993007880618945289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P5993007880618945289

namespace A080566

/-- `∑[A079000(n+1)]` -/
def P5993007880618945289.Spec : Prop :=
  ∀ n, P5993007880618945289.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P1003103322849241365

`∑[A079253(n)+1]`
-/

namespace A080566.P1003103322849241365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P1003103322849241365

namespace A080566

/-- `∑[A079253(n)+1]` -/
def P1003103322849241365.Spec : Prop :=
  ∀ n, P1003103322849241365.a n = A080566 (n + 1)

theorem P1003103322849241365.correct : P1003103322849241365.Spec := by
  intro n
  simp only [A080566, Nat.add_sub_cancel, A080566.P1003103322849241365.f1, A080566.P1003103322849241365.a, A080566.P4000903305215095310.f1, A080566.P4000903305215095310.a, A079253, A079253.P13462614389333212130.a, A079948, A079948.P13030321842741128819.a, A079000, A079000.P1314353409810898066.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080566

/-! ## A080566.P4000903305215095310

`∑[A079948(n)+a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080566

/-- `∑[A079948(n)+a(n-1)]` -/
def P4000903305215095310.Spec : Prop :=
  ∀ n, P4000903305215095310.a n = A080566 (n + 1)

theorem P4000903305215095310.correct : P4000903305215095310.Spec := by
  intro n
  simp only [A080566, Nat.add_sub_cancel]

end A080566

/-! ## A080566.P14106734246143614646

`∑[comp[A079251(n+1)-1]+1]`
-/

namespace A080566.P14106734246143614646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079251 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P14106734246143614646

namespace A080566

/-- `∑[comp[A079251(n+1)-1]+1]` -/
def P14106734246143614646.Spec : Prop :=
  ∀ n, (P14106734246143614646.a n : ℤ) = A080566 (n + 1)

end A080566

/-! ## A080566.P8182566132627859482

`or(∑[A079000(ϕ²-(ϕ-n))], char[1])`
-/

namespace A080566.P8182566132627859482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080566.P8182566132627859482

namespace A080566

/-- `or(∑[A079000(ϕ²-(ϕ-n))], char[1])` -/
def P8182566132627859482.Spec : Prop :=
  ∀ n, P8182566132627859482.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P5087560143192014039

`∑[∑[A079948(n+1)]+1-A079948(n+1)]`
-/

namespace A080566.P5087560143192014039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A079948 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P5087560143192014039

namespace A080566

/-- `∑[∑[A079948(n+1)]+1-A079948(n+1)]` -/
def P5087560143192014039.Spec : Prop :=
  ∀ n, P5087560143192014039.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P16882556380212712815

`a(n-1)+A079000(n+1)+1-A007318(C(n, n²))` with `a(0)=1`
-/

namespace A080566.P16882556380212712815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A079000 (n + 1) + 1 - A007318 (Nat.choose n (n ^ 2)))

end

end A080566.P16882556380212712815

namespace A080566

/-- `a(n-1)+A079000(n+1)+1-A007318(C(n, n²))` -/
def P16882556380212712815.Spec : Prop :=
  ∀ n, P16882556380212712815.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P16479882231472634149

`∑[A080639(n+2)-1]`
-/

namespace A080566.P16479882231472634149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P16479882231472634149

namespace A080566

/-- `∑[A080639(n+2)-1]` -/
def P16479882231472634149.Spec : Prop :=
  ∀ n, P16479882231472634149.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P9948973025799818261

`∑[A023443(A080639(n+2))]`
-/

namespace A080566.P9948973025799818261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P9948973025799818261

namespace A080566

/-- `∑[A023443(A080639(n+2))]` -/
def P9948973025799818261.Spec : Prop :=
  ∀ n, P9948973025799818261.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P5422410947040579553

`∑[∑[A080586(2*n+1)]]+n`
-/

namespace A080566.P5422410947040579553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080586 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A080566.P5422410947040579553

namespace A080566

/-- `∑[∑[A080586(2*n+1)]]+n` -/
def P5422410947040579553.Spec : Prop :=
  ∀ n, P5422410947040579553.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P14423658604558137833

`∑[record[A079000(A117910(n))]]`
-/

namespace A080566.P14423658604558137833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P14423658604558137833

namespace A080566

/-- `∑[record[A079000(A117910(n))]]` -/
def P14423658604558137833.Spec : Prop :=
  ∀ n, P14423658604558137833.a n = A080566 (n + 1)

end A080566

/-! ## A080566.P6634755738571644314

`∑[record[A079000(A065648(n))]]`
-/

namespace A080566.P6634755738571644314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080566.P6634755738571644314

namespace A080566

/-- `∑[record[A079000(A065648(n))]]` -/
def P6634755738571644314.Spec : Prop :=
  ∀ n, P6634755738571644314.a n = A080566 (n + 1)

end A080566

/-!
# A080567: 1 + Sum_{k=2..n} 2^((prime(k)-1)/2).

The programs for A080567, the canonical program `A080567.P12314212706506024721` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080567 has offset 1).

The definition of A080567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080567.P17469133057977227012

`∑[record[A016017(n+1)]]`
-/

namespace A080567.P17469133057977227012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016017 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080567.P17469133057977227012

namespace A080567

/-- `∑[record[A016017(n+1)]]` -/
def P17469133057977227012.Spec : Prop :=
  ∀ n, P17469133057977227012.a n = A080567 (n + 1)

end A080567

/-! ## A080567.P11042971854951581417

`∑[2^A102781(n+1)]`
-/

namespace A080567.P11042971854951581417
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A102781 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080567.P11042971854951581417

namespace A080567

/-- `∑[2^A102781(n+1)]` -/
def P11042971854951581417.Spec : Prop :=
  ∀ n, P11042971854951581417.a n = (A080567 (n + 1) : ℚ)

end A080567

/-! ## A080567.P3590308154817827277

`or(a(n-1), A133155(n))` with `a(0)=1`
-/

namespace A080567.P3590308154817827277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A133155 n)

end

end A080567.P3590308154817827277

namespace A080567

/-- `or(a(n-1), A133155(n))` -/
def P3590308154817827277.Spec : Prop :=
  ∀ n, P3590308154817827277.a n = A080567 (n + 1)

end A080567

/-! ## A080567.P14408854731225845310

`∑[2^(A111333(n+1)-1)]`
-/

namespace A080567.P14408854731225845310
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A111333 (n + 1) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080567.P14408854731225845310

namespace A080567

/-- `∑[2^(A111333(n+1)-1)]` -/
def P14408854731225845310.Spec : Prop :=
  ∀ n, P14408854731225845310.a n = (A080567 (n + 1) : ℚ)

end A080567

/-! ## A080567.P1016567957697192073

`∑[2^lt[A000005(Δ[n²]), 3]]`
-/

namespace A080567.P1016567957697192073
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080567.P1016567957697192073

namespace A080567

/-- `∑[2^lt[A000005(Δ[n²]), 3]]` -/
def P1016567957697192073.Spec : Prop :=
  ∀ n, (P1016567957697192073.a n : ℤ) = A080567 (n + 1)

end A080567

/-! ## A080567.P12314212706506024721

`A061285(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A080567

/-- `A061285(n+1)+a(n-1)` -/
def P12314212706506024721.Spec : Prop :=
  ∀ n, P12314212706506024721.a n = A080567 (n + 1)

theorem P12314212706506024721.correct : P12314212706506024721.Spec := by
  intro n
  simp only [A080567, Nat.add_sub_cancel]

end A080567

/-!
# A080568: Sum of the Fibonacci numbers A000045 and the factorials A000142.

The programs for A080568, the canonical program `A080568.P15359011263165993740` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080568 has offset 0).

The definition of A080568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080568.P15359011263165993740

`n!+A000045(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080568

/-- `n!+A000045(n)` -/
def P15359011263165993740.Spec : Prop :=
  ∀ n, P15359011263165993740.a n = A080568 n

theorem P15359011263165993740.correct : P15359011263165993740.Spec := by
  intro n
  simp only [A080568]

end A080568

/-! ## A080568.P15077889163135616874

`n!+abs(A236191(n))`
-/

namespace A080568.P15077889163135616874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + |A236191 n|

end

end A080568.P15077889163135616874

namespace A080568

/-- `n!+abs(A236191(n))` -/
def P15077889163135616874.Spec : Prop :=
  ∀ n, P15077889163135616874.a n = A080568 n

end A080568

/-! ## A080568.P9459517369667498326

`n!+sqrt(A007598(n))`
-/

namespace A080568.P9459517369667498326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) + Real.sqrt (A007598 n : ℝ)

end

end A080568.P9459517369667498326

namespace A080568

/-- `n!+sqrt(A007598(n))` -/
def P9459517369667498326.Spec : Prop :=
  ∀ n, P9459517369667498326.a n = (A080568 n : ℝ)

end A080568

/-! ## A080568.P11417918507909445854

`A212804(n+1)+n!`
-/

namespace A080568.P11417918507909445854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (Nat.factorial n : ℤ)

end

end A080568.P11417918507909445854

namespace A080568

/-- `A212804(n+1)+n!` -/
def P11417918507909445854.Spec : Prop :=
  ∀ n, P11417918507909445854.a n = A080568 n

end A080568

/-! ## A080568.P1353413914215842821

`A000142(n)+A000045(n)`
-/

namespace A080568.P1353413914215842821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + A000045 n

end

end A080568.P1353413914215842821

namespace A080568

/-- `A000142(n)+A000045(n)` -/
def P1353413914215842821.Spec : Prop :=
  ∀ n, P1353413914215842821.a n = A080568 n

end A080568

/-! ## A080568.P12514713575572575152

`A000045(n)+abs(A133942(n))`
-/

namespace A080568.P12514713575572575152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + |A133942 n|

end

end A080568.P12514713575572575152

namespace A080568

/-- `A000045(n)+abs(A133942(n))` -/
def P12514713575572575152.Spec : Prop :=
  ∀ n, P12514713575572575152.a n = A080568 n

end A080568

/-! ## A080568.P6983192317787564166

`A000045(n)+Δ[A003422(n)]`
-/

namespace A080568.P6983192317787564166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (f1 (n + 1) - f1 n)

end

end A080568.P6983192317787564166

namespace A080568

/-- `A000045(n)+Δ[A003422(n)]` -/
def P6983192317787564166.Spec : Prop :=
  ∀ n, P6983192317787564166.a n = A080568 n

end A080568

/-!
# A080569: a(n) is the first number in the first run of at least n successive numbers, all having exactly 3 distinct prime factors.

The programs for A080569, there is no canonical definition to state claims against.
-/

/-! ## A080569.P2344528777790236658

`A185032(or(A011760(n+1), A185035(n)))`
-/

namespace A080569.P2344528777790236658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185032 (Int.lor (A011760 (n + 1)) (A185035 n)).toNat

end

end A080569.P2344528777790236658

/-! ## A080569.P12890082574612156362

`A185032(or(1, A185035(n))+n)`
-/

namespace A080569.P12890082574612156362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185032 (Int.lor 1 (A185035 n) + (n : ℤ)).toNat

end

end A080569.P12890082574612156362

/-! ## A080569.P13857098103695433263

`A000027(A185032(n+1))`
-/

namespace A080569.P13857098103695433263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A185032 (n + 1)).toNat

end

end A080569.P13857098103695433263

/-! ## A080569.P6151860026130713512

`A185032(A000005(3^n))`
-/

namespace A080569.P6151860026130713512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185032 (A000005 (3 ^ n)).toNat

end

end A080569.P6151860026130713512

/-! ## A080569.P15805407809674825853

`A185032(A308540(n+1)+1)`
-/

namespace A080569.P15805407809674825853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185032 (A308540 (n + 1) + 1).toNat

end

end A080569.P15805407809674825853

/-!
# A080570: Number of 1's in partition of n-th Ulam number into sum of two distinct Ulam numbers.

The programs for A080570, there is no canonical definition to state claims against.
-/

/-! ## A080570.P4994633972792388048

`A002858(n+1)-2*A080571(n+1)`
-/

namespace A080570.P4994633972792388048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) - 2 * A080571 (n + 1)

end

end A080570.P4994633972792388048

/-! ## A080570.P16832654226921937441

`A048951(n+1)/2-2*A080571(n+1)`
-/

namespace A080570.P16832654226921937441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048951 (n + 1) : ℚ) / 2 - (2 * A080571 (n + 1) : ℚ)

end

end A080570.P16832654226921937441

/-! ## A080570.P5154544412672413597

`∑[A072832(n+1)]+1-A072832(n+1)-2*A080571(n+1)`
-/

namespace A080570.P5154544412672413597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072832 (n + 1)) - 2 * A080571 (n + 1)

end

end A080570.P5154544412672413597

/-! ## A080570.P10688946986404654168

`A002858(n+1)-A005843(A080571(n+1))`
-/

namespace A080570.P10688946986404654168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (n + 1) - A005843 (A080571 (n + 1)).toNat

end

end A080570.P10688946986404654168

/-! ## A080570.P18178955300634265461

`A001281(A048951(n+1))-2*A080571(n+1)`
-/

namespace A080570.P18178955300634265461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048951 (n + 1)).toNat - 2 * A080571 (n + 1)

end

end A080570.P18178955300634265461

/-! ## A080570.P7314453594144899638

`A110654(A048951(n+1)-1)-2*A080571(n+1)`
-/

namespace A080570.P7314453594144899638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A048951 (n + 1) - 1).toNat - 2 * A080571 (n + 1)

end

end A080570.P7314453594144899638

/-! ## A080570.P3892266365627595794

`A115384(A048951(n+1)-1)-2*A080571(n+1)`
-/

namespace A080570.P3892266365627595794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A048951 (n + 1) - 1).toNat - 2 * A080571 (n + 1)

end

end A080570.P3892266365627595794

/-! ## A080570.P16240900762540277015

`A001281(A048951(n+1))-A005843(A080571(n+1))`
-/

namespace A080570.P16240900762540277015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048951 (n + 1)).toNat - A005843 (A080571 (n + 1)).toNat

end

end A080570.P16240900762540277015

/-! ## A080570.P3941315224637683402

`A183534(∑[n+1])-2*A080571(n+1)`
-/

namespace A080570.P3941315224637683402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f1 j) - 2 * A080571 (n + 1)

end

end A080570.P3941315224637683402

/-! ## A080570.P15637097553132388933

`A183534(∑[n+1])-A005843(A080571(n+1))`
-/

namespace A080570.P15637097553132388933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183534 (∑ j ∈ Finset.range (n + 1), f1 j) - A005843 (A080571 (n + 1)).toNat

end

end A080570.P15637097553132388933

/-!
# A080571: Number of 2's in partition of n-th Ulam number into sum of two distinct Ulam numbers.

The programs for A080571, there is no canonical definition to state claims against.
-/

/-! ## A080571.P4998560089807028685

`(A002858(n+1)-A080570(n+1))/2`
-/

namespace A080571.P4998560089807028685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002858 (n + 1) - A080570 (n + 1) : ℚ) / 2

end

end A080571.P4998560089807028685

/-! ## A080571.P6018341128059939984

`(A048951(n+1)/2-A080570(n+1))/2`
-/

namespace A080571.P6018341128059939984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A048951 (n + 1) : ℚ) / 2 - (A080570 (n + 1) : ℚ)) / 2

end

end A080571.P6018341128059939984

/-! ## A080571.P2657704264606972019

`A014682(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P2657704264606972019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P2657704264606972019

/-! ## A080571.P121178310286129940

`A004525(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P121178310286129940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P121178310286129940

/-! ## A080571.P3996069008281566974

`A025480(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P3996069008281566974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P3996069008281566974

/-! ## A080571.P14403780897475549906

`A026741(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P14403780897475549906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P14403780897475549906

/-! ## A080571.P2692512463565717122

`A029578(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P2692512463565717122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P2692512463565717122

/-! ## A080571.P9086077021303180068

`A001281(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P9086077021303180068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P9086077021303180068

/-! ## A080571.P17744281804617738197

`A004526(A002858(n+1)-A080570(n+1))`
-/

namespace A080571.P17744281804617738197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002858 (n + 1) - A080570 (n + 1)).toNat

end

end A080571.P17744281804617738197

/-! ## A080571.P14719956829906564824

`(A183534(∑[n+1])-A080570(n+1))/2`
-/

namespace A080571.P14719956829906564824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183534 (∑ j ∈ Finset.range (n + 1), f1 j) - A080570 (n + 1) : ℚ) / 2

end

end A080571.P14719956829906564824

/-!
# A080572: Number of ordered pairs (i,j), 0 <= i,j < n, for which (i & j) is nonzero, where & is the bitwise AND operator.

The programs for A080572, the canonical program `A080572.P8137143480693309159` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080572 has offset 0).

The definition of A080572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080572.P10465396196563996036

`n²+A267584(n)-∑[A267584(n)]`
-/

namespace A080572.P10465396196563996036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A267584 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080572.P10465396196563996036

namespace A080572

/-- `n²+A267584(n)-∑[A267584(n)]` -/
def P10465396196563996036.Spec : Prop :=
  ∀ n, P10465396196563996036.a n = A080572 n

end A080572

/-! ## A080572.P14392257606228506131

`n²+A267584(n)-A064194(n+1)`
-/

namespace A080572.P14392257606228506131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A267584 n - A064194 (n + 1))

end

end A080572.P14392257606228506131

namespace A080572

/-- `n²+A267584(n)-A064194(n+1)` -/
def P14392257606228506131.Spec : Prop :=
  ∀ n, P14392257606228506131.a n = A080572 n

end A080572

/-! ## A080572.P8137143480693309159

`A028310(n)²-A064194(A028310(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080572

/-- `A028310(n)²-A064194(A028310(n))` -/
def P8137143480693309159.Spec : Prop :=
  ∀ n, P8137143480693309159.a n = A080572 n

theorem P8137143480693309159.correct : P8137143480693309159.Spec := by
  intro n
  simp only [A080572]

end A080572

/-! ## A080572.P8777741582502022201

`∑[A004275(n)-A000225(A008687(n))]`
-/

namespace A080572.P8777741582502022201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n - A000225 (A008687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080572.P8777741582502022201

namespace A080572

/-- `∑[A004275(n)-A000225(A008687(n))]` -/
def P8777741582502022201.Spec : Prop :=
  ∀ n, P8777741582502022201.a n = A080572 n

end A080572

/-! ## A080572.P8828440840211715589

`A010000(n)-∑[A000079(A008687(n))]`
-/

namespace A080572.P8828440840211715589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A008687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080572.P8828440840211715589

namespace A080572

/-- `A010000(n)-∑[A000079(A008687(n))]` -/
def P8828440840211715589.Spec : Prop :=
  ∀ n, P8828440840211715589.a n = A080572 n

end A080572

/-! ## A080572.P14427584131592371935

`∑[A004280(n+1)-A267584(A004273(n))]`
-/

namespace A080572.P14427584131592371935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1) - A267584 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080572.P14427584131592371935

namespace A080572

/-- `∑[A004280(n+1)-A267584(A004273(n))]` -/
def P14427584131592371935.Spec : Prop :=
  ∀ n, P14427584131592371935.a n = A080572 n

end A080572

/-! ## A080572.P5882243425567313936

`A267584(n)+∑[A004273(n)-A267584(n)]`
-/

namespace A080572.P5882243425567313936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - A267584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080572.P5882243425567313936

namespace A080572

/-- `A267584(n)+∑[A004273(n)-A267584(n)]` -/
def P5882243425567313936.Spec : Prop :=
  ∀ n, P5882243425567313936.a n = A080572 n

end A080572

/-! ## A080572.P5338090926186015379

`∑[A353292(2*n)]-A353292(2*n)`
-/

namespace A080572.P5338090926186015379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A353292 (2 * n)

end

end A080572.P5338090926186015379

namespace A080572

/-- `∑[A353292(2*n)]-A353292(2*n)` -/
def P5338090926186015379.Spec : Prop :=
  ∀ n, P5338090926186015379.a n = A080572 n

end A080572

/-!
# A080573: Number of ways writing n as a sum of two distinct Ulam numbers.

The programs for A080573, there is no canonical definition to state claims against.
-/

/-! ## A080573.P3457560289686969210

`A004526(A285884(n+1))`
-/

namespace A080573.P3457560289686969210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A285884 (n + 1)).toNat

end

end A080573.P3457560289686969210

/-! ## A080573.P11572278273262668701

`A002265(2*A285884(n+1))`
-/

namespace A080573.P11572278273262668701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A285884 (n + 1)).toNat

end

end A080573.P11572278273262668701

/-! ## A080573.P10266628072046829241

`A124072(2*A285884(n+1))`
-/

namespace A080573.P10266628072046829241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (2 * A285884 (n + 1)).toNat

end

end A080573.P10266628072046829241

/-! ## A080573.P6336925019730574708

`A008615(3*A285884(n+1))`
-/

namespace A080573.P6336925019730574708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A285884 (n + 1)).toNat

end

end A080573.P6336925019730574708

/-! ## A080573.P13806300917426959222

`A057979(or(1, A285884(n+1)))`
-/

namespace A080573.P13806300917426959222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.lor 1 (A285884 (n + 1))).toNat

end

end A080573.P13806300917426959222

/-! ## A080573.P18028157579355493589

`A213633(or(1, A285884(n+1)))`
-/

namespace A080573.P18028157579355493589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (Int.lor 1 (A285884 (n + 1))).toNat

end

end A080573.P18028157579355493589

/-! ## A080573.P1277095903989271116

`A002265(A285884(n+1)+A285884(n+1)+1)`
-/

namespace A080573.P1277095903989271116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A285884 (n + 1) + (A285884 (n + 1) + 1)).toNat

end

end A080573.P1277095903989271116

/-!
# A080574: a(1)=1, a(n)=a(n-1)+1 if n is odd and already in the sequence, a(n)=a(n-1)+2 if n is even and already in the sequence, a(n)=a(n-1)+3 otherwise.

The programs for A080574, there is no canonical definition to state claims against.
-/

/-! ## A080574.P15158086359294461996

`∑[A260451(A260451(n+1)+A168574(n))]`
-/

namespace A080574.P15158086359294461996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (A260451 (n + 1) + A168574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080574.P15158086359294461996

/-! ## A080574.P11815692475737691924

`∑[A260449(A187829(n+1))+n%2]`
-/

namespace A080574.P11815692475737691924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A187829 (n + 1)).toNat + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080574.P11815692475737691924

/-! ## A080574.P11688388856471668436

`∑[A260449(A187829(n+1))+A000035(n)]`
-/

namespace A080574.P11688388856471668436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A187829 (n + 1)).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080574.P11688388856471668436

/-! ## A080574.P11423287758783615330

`A110654(n)+∑[A260449(A187829(n+1))]`
-/

namespace A080574.P11423287758783615330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260449 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080574.P11423287758783615330

/-! ## A080574.P16209835537459306348

`∑[A260451(A260451(n+1)+A158632(n))]`
-/

namespace A080574.P16209835537459306348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260451 (A260451 (n + 1) + A158632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080574.P16209835537459306348

/-!
# A080575: Triangle of multinomial coefficients, read by rows (version 2).

The programs for A080575, there is no canonical definition to state claims against.
-/

/-! ## A080575.P5936716869575075251

`A124794(A129129(n+1))`
-/

namespace A080575.P5936716869575075251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A129129 (n + 1)).toNat

end

end A080575.P5936716869575075251

/-! ## A080575.P11054069301813179921

`A078760(n+1)/A333144(n+1)`
-/

namespace A080575.P11054069301813179921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078760 (n + 1) : ℚ) / (A333144 (n + 1) : ℚ)

end

end A080575.P11054069301813179921

/-! ## A080575.P10145472566314166227

`A036040(lt[A343379(n), A355636(n+1)])`
-/

namespace A080575.P10145472566314166227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080575.P10145472566314166227

/-!
# A080576: Triangle in which n-th row lists all partitions of n, in graded reflected lexicographic order.

The programs for A080576, there is no canonical definition to state claims against.
-/

/-! ## A080576.P3767589301827322729

`A026791(A194975(n+1))-A005089(A152763(n))`
-/

namespace A080576.P3767589301827322729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A194975 (n + 1)).toNat - A005089 (A152763 n).toNat

end

end A080576.P3767589301827322729

/-! ## A080576.P14934496062491317972

`A026791(A194975(n+1))-A002266(A034461(n+1)!)`
-/

namespace A080576.P14934496062491317972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026791 (A194975 (n + 1)).toNat - A002266 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A080576.P14934496062491317972

/-! ## A080576.P4689987324121307814

`A026791(A194975(n+1))^(n^A025443(n))²`
-/

namespace A080576.P4689987324121307814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A026791 (A194975 (n + 1)).toNat : ℝ) ^ (((n : ℚ) ^ (A025443 n : ℤ)) ^ 2 : ℝ)

end

end A080576.P4689987324121307814

/-! ## A080576.P3263931851084905187

`A001221(A000043(n+1))*A026791(A194975(n+1))`
-/

namespace A080576.P3263931851084905187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1)).toNat * A026791 (A194975 (n + 1)).toNat

end

end A080576.P3263931851084905187

/-!
# A080577: Triangle in which n-th row lists all partitions of n, in graded reverse lexicographic ordering.

The programs for A080577, there is no canonical definition to state claims against.
-/

/-! ## A080577.P13349066065829811208

`A330371(or(1, A151810(n))+n)`
-/

namespace A080577.P13349066065829811208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330371 (Int.lor 1 (A151810 n) + (n : ℤ)).toNat

end

end A080577.P13349066065829811208

/-! ## A080577.P9669200859070761505

`A330371(n+1)^exp(A151810(n))`
-/

namespace A080577.P9669200859070761505
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A330371 (n + 1) : ℝ) ^ (Real.exp (A151810 n : ℝ))

end

end A080577.P9669200859070761505

/-! ## A080577.P16472272986407828303

`gcd(A151878(2*n), A330371(n+1))`
-/

namespace A080577.P16472272986407828303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 (2 * n)) (A330371 (n + 1))

end

end A080577.P16472272986407828303

/-! ## A080577.P18350472350553202789

`A330371(n+1)+C(2, A119877(n))`
-/

namespace A080577.P18350472350553202789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330371 (n + 1) + (Nat.choose 2 (A119877 n).toNat : ℤ)

end

end A080577.P18350472350553202789

/-! ## A080577.P11645613259051541235

`A330371(n+1)+A000007(A119877(n))`
-/

namespace A080577.P11645613259051541235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330371 (n + 1) + A000007 (A119877 n).toNat

end

end A080577.P11645613259051541235

/-! ## A080577.P18106059530803292592

`A330371(n+1)^A001221(A144816(n))`
-/

namespace A080577.P18106059530803292592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330371 (n + 1) : ℚ) ^ (A001221 (A144816 n).toNat : ℤ)

end

end A080577.P18106059530803292592

/-! ## A080577.P11563507981673846939

`A001222(A119570(n+1))*A330371(n+1)`
-/

namespace A080577.P11563507981673846939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A119570 (n + 1)).toNat * A330371 (n + 1)

end

end A080577.P11563507981673846939

/-! ## A080577.P6651930132794721410

`and(A045535(n), A330371(n+1))`
-/

namespace A080577.P6651930132794721410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045535 n) (A330371 (n + 1))

end

end A080577.P6651930132794721410

/-!
# A080578: a(1)=1; for n > 1, a(n) = a(n-1) + 1 if n is already in the sequence, a(n) = a(n-1) + 3 otherwise.

The programs for A080578, the canonical program `A080578.P12551959427107631853` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080578 has offset 1).

The definition of A080578 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080578.P12551959427107631853

`a(n+1-2^floor(log(n+1)/log(2)))+2*2^floor(log(n+1)/log(2))-1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080578

/-- `a(n+1-2^floor(log(n+1)/log(2)))+2*2^floor(log(n+1)/log(2))-1` -/
def P12551959427107631853.Spec : Prop :=
  ∀ n, P12551959427107631853.a n = (A080578 (n + 1) : ℚ)

end A080578

/-! ## A080578.P6576831372997164009

`comp[a(n-1)+val(n, 2)]` with `a(0)=0, a(1)=2`
-/

namespace A080578.P6576831372997164009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A080578.P6576831372997164009

namespace A080578

/-- `comp[a(n-1)+val(n, 2)]` -/
def P6576831372997164009.Spec : Prop :=
  ∀ n, (P6576831372997164009.a n : ℤ) = A080578 (n + 1)

end A080578

/-! ## A080578.P2841562651941135458

`comp[a(floor(n/2))+n]+1` with `a(0)=1`
-/

namespace A080578.P2841562651941135458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A080578.P2841562651941135458

namespace A080578

/-- `comp[a(floor(n/2))+n]+1` -/
def P2841562651941135458.Spec : Prop :=
  ∀ n, (P2841562651941135458.a n : ℤ) = A080578 (n + 1)

end A080578

/-! ## A080578.P3000657493130054467

`or(1, A007843(n))+n`
-/

namespace A080578.P3000657493130054467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007843 n) + (n : ℤ)

end

end A080578.P3000657493130054467

namespace A080578

/-- `or(1, A007843(n))+n` -/
def P3000657493130054467.Spec : Prop :=
  ∀ n, P3000657493130054467.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P14206687865709936326

`comp[A005187(n)+1]+1`
-/

namespace A080578.P14206687865709936326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080578.P14206687865709936326

namespace A080578

/-- `comp[A005187(n)+1]+1` -/
def P14206687865709936326.Spec : Prop :=
  ∀ n, (P14206687865709936326.a n : ℤ) = A080578 (n + 1)

end A080578

/-! ## A080578.P11751394884192406285

`2*A288934(n+1)-(n+1)`
-/

namespace A080578.P11751394884192406285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288934 (n + 1) - (n + 1 : ℤ)

end

end A080578.P11751394884192406285

namespace A080578

/-- `2*A288934(n+1)-(n+1)` -/
def P11751394884192406285.Spec : Prop :=
  ∀ n, P11751394884192406285.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P12934935803733206973

`2*A046699(n+1)%(n+1)+n+1`
-/

namespace A080578.P12934935803733206973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (A046699 (n + 1)) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A080578.P12934935803733206973

namespace A080578

/-- `2*A046699(n+1)%(n+1)+n+1` -/
def P12934935803733206973.Spec : Prop :=
  ∀ n, P12934935803733206973.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P7195551693146577490

`A087156(n+1)+A007843(n)`
-/

namespace A080578.P7195551693146577490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A007843 n

end

end A080578.P7195551693146577490

namespace A080578

/-- `A087156(n+1)+A007843(n)` -/
def P7195551693146577490.Spec : Prop :=
  ∀ n, P7195551693146577490.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P13008108724296379206

`A007843(n)+n-A057428(n)`
-/

namespace A080578.P13008108724296379206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n + ((n : ℤ) - A057428 n)

end

end A080578.P13008108724296379206

namespace A080578

/-- `A007843(n)+n-A057428(n)` -/
def P13008108724296379206.Spec : Prop :=
  ∀ n, P13008108724296379206.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P2621051267753785439

`A005408(floor(A007843(n)/2))+n`
-/

namespace A080578.P2621051267753785439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊(A007843 n : ℚ) / 2⌋.toNat + (n : ℤ)

end

end A080578.P2621051267753785439

namespace A080578

/-- `A005408(floor(A007843(n)/2))+n` -/
def P2621051267753785439.Spec : Prop :=
  ∀ n, P2621051267753785439.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P1500227557806882263

`A055938(n+1)+A308187(n+1)-A079559(n)`
-/

namespace A080578.P1500227557806882263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1) + (A308187 (n + 1) - A079559 n)

end

end A080578.P1500227557806882263

namespace A080578

/-- `A055938(n+1)+A308187(n+1)-A079559(n)` -/
def P1500227557806882263.Spec : Prop :=
  ∀ n, P1500227557806882263.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P2465579873493331164

`A046699(A046699(a(n-1)+1)+n+1)+n+1` with `a(0)=1`
-/

namespace A080578.P2465579873493331164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046699 (A046699 (a (n - 1) + 1).toNat + (n : ℤ) + 1).toNat + (n + 1 : ℤ)

end

end A080578.P2465579873493331164

namespace A080578

/-- `A046699(A046699(a(n-1)+1)+n+1)+n+1` -/
def P2465579873493331164.Spec : Prop :=
  ∀ n, P2465579873493331164.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P3001508404131994416

`A065190(A007843(n))+n`
-/

namespace A080578.P3001508404131994416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (A007843 n).toNat + (n : ℤ)

end

end A080578.P3001508404131994416

namespace A080578

/-- `A065190(A007843(n))+n` -/
def P3001508404131994416.Spec : Prop :=
  ∀ n, P3001508404131994416.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P11174290974953821891

`record[(n+1)*A308187(n+1)+1]`
-/

namespace A080578.P11174290974953821891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308187 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080578.P11174290974953821891

namespace A080578

/-- `record[(n+1)*A308187(n+1)+1]` -/
def P11174290974953821891.Spec : Prop :=
  ∀ n, P11174290974953821891.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P10221763696085931656

`lt[1, A308188(n-A000005(a(n-1)+1)+1)]` with `a(0)=1, a(1)=2`
-/

namespace A080578.P10221763696085931656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A308188 ((n : ℤ) - A000005 (f2 (n - 1) + 1).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A080578.P10221763696085931656

namespace A080578

/-- `lt[1, A308188(n-A000005(a(n-1)+1)+1)]` -/
def P10221763696085931656.Spec : Prop :=
  ∀ n, (P10221763696085931656.a n : ℤ) = A080578 (n + 1)

end A080578

/-! ## A080578.P177372883650809231

`A080468(A055938(n+1))+2*n+1`
-/

namespace A080578.P177372883650809231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080468 (A055938 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A080578.P177372883650809231

namespace A080578

/-- `A080468(A055938(n+1))+2*n+1` -/
def P177372883650809231.Spec : Prop :=
  ∀ n, P177372883650809231.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P12934631695508107654

`A087156(A087156(n+1)+A046699(n+1))+A046699(n+1)`
-/

namespace A080578.P12934631695508107654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A087156 (n + 1) + A046699 (n + 1)).toNat + A046699 (n + 1)

end

end A080578.P12934631695508107654

namespace A080578

/-- `A087156(A087156(n+1)+A046699(n+1))+A046699(n+1)` -/
def P12934631695508107654.Spec : Prop :=
  ∀ n, P12934631695508107654.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P5769392601157007028

`A288934(n+1)+A087156(A288934(n+1))-A087156(n+1)`
-/

namespace A080578.P5769392601157007028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288934 (n + 1) + (A087156 (A288934 (n + 1)).toNat - A087156 (n + 1))

end

end A080578.P5769392601157007028

namespace A080578

/-- `A288934(n+1)+A087156(A288934(n+1))-A087156(n+1)` -/
def P5769392601157007028.Spec : Prop :=
  ∀ n, P5769392601157007028.a n = A080578 (n + 1)

end A080578

/-! ## A080578.P10476924383696553700

`∑[2-A033999(A151861(n))]`
-/

namespace A080578.P10476924383696553700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 (A151861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080578.P10476924383696553700

namespace A080578

/-- `∑[2-A033999(A151861(n))]` -/
def P10476924383696553700.Spec : Prop :=
  ∀ n, P10476924383696553700.a n = A080578 (n + 1)

end A080578

/-!
# A080579: a(1)=1; for n>1, a(n)=a(n-1)+1 if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A080579, the canonical program `A080579.P146202060757229160` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080579 has offset 1).

The definition of A080579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080579.P146202060757229160

`comp[a(n-1)+val(n, 3)]` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080579

/-- `comp[a(n-1)+val(n, 3)]` -/
def P146202060757229160.Spec : Prop :=
  ∀ n, (P146202060757229160.a n : ℤ) = A080579 (n + 1)

theorem P146202060757229160.correct : P146202060757229160.Spec := by
  intro n
  simp only [A080579, Nat.add_sub_cancel]

end A080579

/-! ## A080579.P9426144425875898660

`∑[(char[A054861(n)+n+1]+1)²]`
-/

namespace A080579.P9426144425875898660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n + (n : ℤ) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080579.P9426144425875898660

namespace A080579

/-- `∑[(char[A054861(n)+n+1]+1)²]` -/
def P9426144425875898660.Spec : Prop :=
  ∀ n, (P9426144425875898660.a n : ℤ) = A080579 (n + 1)

end A080579

/-! ## A080579.P6203730712911050568

`A087156(n+1)+A007844(n)`
-/

namespace A080579.P6203730712911050568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A007844 n

end

end A080579.P6203730712911050568

namespace A080579

/-- `A087156(n+1)+A007844(n)` -/
def P6203730712911050568.Spec : Prop :=
  ∀ n, P6203730712911050568.a n = A080579 (n + 1)

theorem P6203730712911050568.correct : P6203730712911050568.Spec := by
  intro n
  simp only [A080579, Nat.add_sub_cancel, A080579.P6203730712911050568.a, A080579.P146202060757229160.f1, A080579.P146202060757229160.a, A007844, A007844.P17370799922270474338.a, A087156, A087156.P7013495329997093940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A080579

/-! ## A080579.P10236002401032358658

`A007844(n)+A057427(n)+n`
-/

namespace A080579.P10236002401032358658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n + (A057427 n + (n : ℤ))

end

end A080579.P10236002401032358658

namespace A080579

/-- `A007844(n)+A057427(n)+n` -/
def P10236002401032358658.Spec : Prop :=
  ∀ n, P10236002401032358658.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P2068734526223183540

`A007844(n)+n-A057428(n)`
-/

namespace A080579.P2068734526223183540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n + ((n : ℤ) - A057428 n)

end

end A080579.P2068734526223183540

namespace A080579

/-- `A007844(n)+n-A057428(n)` -/
def P2068734526223183540.Spec : Prop :=
  ∀ n, P2068734526223183540.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P4506213699428864387

`A007844(n)+1-A000007(n)+n`
-/

namespace A080579.P4506213699428864387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n + (1 - A000007 n + (n : ℤ))

end

end A080579.P4506213699428864387

namespace A080579

/-- `A007844(n)+1-A000007(n)+n` -/
def P4506213699428864387.Spec : Prop :=
  ∀ n, P4506213699428864387.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P14913405460854492528

`A007844(n)+(n+1)%A007845(n)`
-/

namespace A080579.P14913405460854492528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n + Int.tmod (n + 1 : ℤ) (A007845 n)

end

end A080579.P14913405460854492528

namespace A080579

/-- `A007844(n)+(n+1)%A007845(n)` -/
def P14913405460854492528.Spec : Prop :=
  ∀ n, P14913405460854492528.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P16893319764981382626

`A007844(n)%A008430(n)+n+1`
-/

namespace A080579.P16893319764981382626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007844 n) (A008430 n) + (n + 1 : ℤ)

end

end A080579.P16893319764981382626

namespace A080579

/-- `A007844(n)%A008430(n)+n+1` -/
def P16893319764981382626.Spec : Prop :=
  ∀ n, P16893319764981382626.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P4986611235963808334

`A344617(A027748(n+1))+A007844(n)+n`
-/

namespace A080579.P4986611235963808334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344617 (A027748 (n + 1)).toNat + (A007844 n + (n : ℤ))

end

end A080579.P4986611235963808334

namespace A080579

/-- `A344617(A027748(n+1))+A007844(n)+n` -/
def P4986611235963808334.Spec : Prop :=
  ∀ n, P4986611235963808334.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P1832181240037889121

`n+1-(A007814(A007843(n)+1)-A007844(n))`
-/

namespace A080579.P1832181240037889121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A007814 (A007843 n + 1).toNat - A007844 n)

end

end A080579.P1832181240037889121

namespace A080579

/-- `n+1-(A007814(A007843(n)+1)-A007844(n))` -/
def P1832181240037889121.Spec : Prop :=
  ∀ n, P1832181240037889121.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P7174167332104665987

`A143097(A007844(n))+n`
-/

namespace A080579.P7174167332104665987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143097 (A007844 n).toNat + (n : ℤ)

end

end A080579.P7174167332104665987

namespace A080579

/-- `A143097(A007844(n))+n` -/
def P7174167332104665987.Spec : Prop :=
  ∀ n, P7174167332104665987.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P12641486155268427774

`A010764(A016969(n))+A007844(n)`
-/

namespace A080579.P12641486155268427774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (A016969 n).toNat + A007844 n

end

end A080579.P12641486155268427774

namespace A080579

/-- `A010764(A016969(n))+A007844(n)` -/
def P12641486155268427774.Spec : Prop :=
  ∀ n, P12641486155268427774.a n = A080579 (n + 1)

end A080579

/-! ## A080579.P5032125146161309131

`A007844(n)+A002262(A027379(n)+2)`
-/

namespace A080579.P5032125146161309131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007844 n + A002262 (A027379 n + 2).toNat

end

end A080579.P5032125146161309131

namespace A080579

/-- `A007844(n)+A002262(A027379(n)+2)` -/
def P5032125146161309131.Spec : Prop :=
  ∀ n, P5032125146161309131.a n = A080579 (n + 1)

end A080579

/-!
# A080580: a(1)=1; for n>1, a(n)=a(n-1)+2 if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A080580, there is no canonical definition to state claims against.
-/

/-! ## A080580.P4013299533740841988

`n+1+A005843(∑[A284939(n+1)])+n`
-/

namespace A080580.P4013299533740841988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ))

end

end A080580.P4013299533740841988

/-! ## A080580.P17422156673765114279

`A080037(and(a(n-1), A284939(n+1)))+a(n-1)` with `a(0)=1`
-/

namespace A080580.P17422156673765114279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A080037 (Int.land (a (n - 1)) (A284939 (n + 1))).toNat + a (n - 1)

end

end A080580.P17422156673765114279

/-! ## A080580.P5593115112727340354

`record[C(A285375(n+2), A284941(n+1))]`
-/

namespace A080580.P5593115112727340354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A285375 (n + 2)).toNat (A284941 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080580.P5593115112727340354

/-! ## A080580.P17211658185376302012

`lt[A284939(n+1), 1]+1`
-/

namespace A080580.P17211658185376302012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A080580.P17211658185376302012

/-! ## A080580.P9688614724628562206

`lt[n*char[A284941(n+1)], n]`
-/

namespace A080580.P9688614724628562206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A080580.P9688614724628562206

/-! ## A080580.P9850318941543947614

`lt[n*A284939(A028310(n)), n]`
-/

namespace A080580.P9850318941543947614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A284939 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080580.P9850318941543947614

/-! ## A080580.P5823516032426006289

`lt[char[A284941(n+1)], A284893(n+1)]`
-/

namespace A080580.P5823516032426006289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A080580.P5823516032426006289

/-! ## A080580.P1164955619320212406

`record[(n+1)*A000007(n*A284939(n+1))]`
-/

namespace A080580.P1164955619320212406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000007 ((n : ℤ) * A284939 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080580.P1164955619320212406

/-! ## A080580.P6171640003406420703

`eq[1, A284939(n+1)*A342446(a(n-1))]` with `a(0)=2`
-/

namespace A080580.P6171640003406420703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A284939 (n + 1) * A342446 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A080580.P6171640003406420703

/-! ## A080580.P15668792022318526547

`lt[A284939(A028310(n)), A057427(n)]`
-/

namespace A080580.P15668792022318526547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A080580.P15668792022318526547

/-! ## A080580.P9923603095984355881

`eq[A000007(n), A284939(A000007(n)+n)]`
-/

namespace A080580.P9923603095984355881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080580.P9923603095984355881

/-! ## A080580.P11980957288825783285

`eq[A000038(n), A284939(A000038(n)+n)]`
-/

namespace A080580.P11980957288825783285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A080580.P11980957288825783285

/-! ## A080580.P10452163810850791042

`A049084(p?[A284939(n+1)+A000040(n+1)])`
-/

namespace A080580.P10452163810850791042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284939 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A080580.P10452163810850791042

/-!
# A080581: Ratios of successive terms of A079269.

The programs for A080581, there is no canonical definition to state claims against.
-/

/-! ## A080581.P1223948305407534589

`A080582(n+1)+A079278(n+1)`
-/

namespace A080581.P1223948305407534589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080582 (n + 1) + A079278 (n + 1)

end

end A080581.P1223948305407534589

/-! ## A080581.P14131561173929075492

`A079269(n+1)+2*A079278(n+1)`
-/

namespace A080581.P14131561173929075492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079269 (n + 1) + 2 * A079278 (n + 1)

end

end A080581.P14131561173929075492

/-! ## A080581.P16262698472791071009

`ratio[A079269(n+1)]`
-/

namespace A080581.P16262698472791071009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079269 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A080581.P16262698472791071009

/-!
# A080582: Ratios of successive terms of A079278.

The programs for A080582, there is no canonical definition to state claims against.
-/

/-! ## A080582.P15893137898833622325

`ratio[A079278(n+1)]`
-/

namespace A080582.P15893137898833622325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079278 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A080582.P15893137898833622325

/-! ## A080582.P15726497046671835679

`A079278(n+1)+A079269(n+1)`
-/

namespace A080582.P15726497046671835679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079278 (n + 1) + A079269 (n + 1)

end

end A080582.P15726497046671835679

/-! ## A080582.P15600272513575669351

`A080581(n+1)-A079278(n+1)`
-/

namespace A080582.P15600272513575669351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080581 (n + 1) - A079278 (n + 1)

end

end A080582.P15600272513575669351

/-!
# A080583: Number of positions that the 3 X 3 X 3 Rubik cube puzzle can be in after exactly n moves.

The programs for A080583, there is no canonical definition to state claims against.
-/

/-! ## A080583.P7812577586992991421

`∑[A080601(n)]-char[1]`
-/

namespace A080583.P7812577586992991421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080601 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A080583.P7812577586992991421

/-! ## A080583.P14639828328991069324

`A159075(n)+∑[A080601(n)]`
-/

namespace A080583.P14639828328991069324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080583.P14639828328991069324

/-! ## A080583.P11955563625528101691

`xor(∑[A080601(n)], A063524(n))`
-/

namespace A080583.P11955563625528101691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A063524 n)

end

end A080583.P11955563625528101691

/-! ## A080583.P4364282239439075635

`xor(∑[A080601(n)], A326168(n))`
-/

namespace A080583.P4364282239439075635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A326168 n)

end

end A080583.P4364282239439075635

/-!
# A080584: A run of 3*2^n 0's followed by a run of 3*2^n 1's, for n=0, 1, 2, ...

The programs for A080584, the canonical program `A080584.P17484479246964496310` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080584 has offset 0).

The definition of A080584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080584.P17484479246964496310

`A079944(A002264(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080584

/-- `A079944(A002264(n))` -/
def P17484479246964496310.Spec : Prop :=
  ∀ n, P17484479246964496310.a n = A080584 n

theorem P17484479246964496310.correct : P17484479246964496310.Spec := by
  intro n
  simp only [A080584]

end A080584

/-! ## A080584.P3113406457764129274

`a(floor(n/2)-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A080584.P3113406457764129274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 1, 1] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 3).toNat

end

end A080584.P3113406457764129274

namespace A080584

/-- `a(floor(n/2)-3)` -/
def P3113406457764129274.Spec : Prop :=
  ∀ n, (P3113406457764129274.a n : ℤ) = A080584 n

end A080584

/-! ## A080584.P6276405548935448584

`∑[char[∑[2*a(n-2)]]]%2` with `a(0)=3, a(1)=3`
-/

namespace A080584.P6276405548935448584
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f3 =>
  2 * f3 (n - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A080584.P6276405548935448584

namespace A080584

/-- `∑[char[∑[2*a(n-2)]]]%2` -/
def P6276405548935448584.Spec : Prop :=
  ∀ n, (P6276405548935448584.a n : ℤ) = A080584 n

end A080584

/-! ## A080584.P7621045588327541753

`log2(A080586(n))`
-/

namespace A080584.P7621045588327541753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080586 n : ℝ)

end

end A080584.P7621045588327541753

namespace A080584

/-- `log2(A080586(n))` -/
def P7621045588327541753.Spec : Prop :=
  ∀ n, P7621045588327541753.a n = (A080584 n : ℝ)

end A080584

/-! ## A080584.P5246388664549826720

`Δ[A080585(abs(1-n))]`
-/

namespace A080584.P5246388664549826720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080585 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080584.P5246388664549826720

namespace A080584

/-- `Δ[A080585(abs(1-n))]` -/
def P5246388664549826720.Spec : Prop :=
  ∀ n, P5246388664549826720.a n = A080584 n

end A080584

/-! ## A080584.P11722696729515897238

`log2(A079882(floor(n/3)))`
-/

namespace A080584.P11722696729515897238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A079882 ⌊(n : ℚ) / 3⌋.toNat : ℝ)

end

end A080584.P11722696729515897238

namespace A080584

/-- `log2(A079882(floor(n/3)))` -/
def P11722696729515897238.Spec : Prop :=
  ∀ n, P11722696729515897238.a n = (A080584 n : ℝ)

end A080584

/-! ## A080584.P8643436636221783623

`A321083(A103694(n+1))`
-/

namespace A080584.P8643436636221783623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321083 (A103694 (n + 1)).toNat

end

end A080584.P8643436636221783623

namespace A080584

/-- `A321083(A103694(n+1))` -/
def P8643436636221783623.Spec : Prop :=
  ∀ n, P8643436636221783623.a n = A080584 n

end A080584

/-! ## A080584.P11558831018781250887

`A079944(A008620(n)-1)`
-/

namespace A080584.P11558831018781250887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A008620 n - 1).toNat

end

end A080584.P11558831018781250887

namespace A080584

/-- `A079944(A008620(n)-1)` -/
def P11558831018781250887.Spec : Prop :=
  ∀ n, P11558831018781250887.a n = A080584 n

theorem P11558831018781250887.correct : P11558831018781250887.Spec := by
  intro n
  simp only [A080584, Nat.add_sub_cancel, A080584.P11558831018781250887.a, A080584.P17484479246964496310.a, A002264, A002264.P5647656940077635922.a, A008620, A008620.P16090772857505074278.a, A079944, A079944.P122616085984779513.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080584

/-! ## A080584.P1657455464065243754

`A079944(A066481(n+3))`
-/

namespace A080584.P1657455464065243754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A066481 (n + 3)).toNat

end

end A080584.P1657455464065243754

namespace A080584

/-- `A079944(A066481(n+3))` -/
def P1657455464065243754.Spec : Prop :=
  ∀ n, P1657455464065243754.a n = A080584 n

end A080584

/-! ## A080584.P17569445284926098044

`A079944(2*A008620(n))`
-/

namespace A080584.P17569445284926098044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (2 * A008620 n).toNat

end

end A080584.P17569445284926098044

namespace A080584

/-- `A079944(2*A008620(n))` -/
def P17569445284926098044.Spec : Prop :=
  ∀ n, P17569445284926098044.a n = A080584 n

end A080584

/-! ## A080584.P14942949929723122276

`A000328(n)%A080586(n)`
-/

namespace A080584.P14942949929723122276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A080586 n)

end

end A080584.P14942949929723122276

namespace A080584

/-- `A000328(n)%A080586(n)` -/
def P14942949929723122276.Spec : Prop :=
  ∀ n, P14942949929723122276.a n = A080584 n

end A080584

/-! ## A080584.P17745663365202168459

`A000466(n)%A080586(n)`
-/

namespace A080584.P17745663365202168459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A080586 n)

end

end A080584.P17745663365202168459

namespace A080584

/-- `A000466(n)%A080586(n)` -/
def P17745663365202168459.Spec : Prop :=
  ∀ n, P17745663365202168459.a n = A080584 n

end A080584

/-! ## A080584.P652653030326117253

`A000605(n)%A080586(n)`
-/

namespace A080584.P652653030326117253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A080586 n)

end

end A080584.P652653030326117253

namespace A080584

/-- `A000605(n)%A080586(n)` -/
def P652653030326117253.Spec : Prop :=
  ∀ n, P652653030326117253.a n = A080584 n

end A080584

/-! ## A080584.P14015733802881421533

`A001148(n)%A080586(n)`
-/

namespace A080584.P14015733802881421533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A080586 n)

end

end A080584.P14015733802881421533

namespace A080584

/-- `A001148(n)%A080586(n)` -/
def P14015733802881421533.Spec : Prop :=
  ∀ n, P14015733802881421533.a n = A080584 n

end A080584

/-! ## A080584.P13569644034347388761

`A001218(n)%A080586(n)`
-/

namespace A080584.P13569644034347388761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A080586 n)

end

end A080584.P13569644034347388761

namespace A080584

/-- `A001218(n)%A080586(n)` -/
def P13569644034347388761.Spec : Prop :=
  ∀ n, P13569644034347388761.a n = A080584 n

end A080584

/-! ## A080584.P12890270627897657082

`A001513(n)%A080586(n)`
-/

namespace A080584.P12890270627897657082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A080586 n)

end

end A080584.P12890270627897657082

namespace A080584

/-- `A001513(n)%A080586(n)` -/
def P12890270627897657082.Spec : Prop :=
  ∀ n, P12890270627897657082.a n = A080584 n

end A080584

/-! ## A080584.P17486212453034235243

`A001520(n)%A080586(n)`
-/

namespace A080584.P17486212453034235243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001520 n) (A080586 n)

end

end A080584.P17486212453034235243

namespace A080584

/-- `A001520(n)%A080586(n)` -/
def P17486212453034235243.Spec : Prop :=
  ∀ n, P17486212453034235243.a n = A080584 n

end A080584

/-! ## A080584.P5787498825965097087

`A001533(n)%A080586(n)`
-/

namespace A080584.P5787498825965097087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A080586 n)

end

end A080584.P5787498825965097087

namespace A080584

/-- `A001533(n)%A080586(n)` -/
def P5787498825965097087.Spec : Prop :=
  ∀ n, P5787498825965097087.a n = A080584 n

end A080584

/-! ## A080584.P12267677956419085786

`A001535(n)%A080586(n)`
-/

namespace A080584.P12267677956419085786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001535 n) (A080586 n)

end

end A080584.P12267677956419085786

namespace A080584

/-- `A001535(n)%A080586(n)` -/
def P12267677956419085786.Spec : Prop :=
  ∀ n, P12267677956419085786.a n = A080584 n

end A080584

/-!
# A080585: Partial sums of A080584.

The programs for A080585, the canonical program `A080585.P5466522810854479551` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080585 has offset 0).

The definition of A080585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080585.P1806962785967021362

`∑[A080584(n)]`
-/

namespace A080585.P1806962785967021362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P1806962785967021362

namespace A080585

/-- `∑[A080584(n)]` -/
def P1806962785967021362.Spec : Prop :=
  ∀ n, P1806962785967021362.a n = A080585 n

end A080585

/-! ## A080585.P17249518194640272252

`∑[log2(A080586(n))]`
-/

namespace A080585.P17249518194640272252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080586 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P17249518194640272252

namespace A080585

/-- `∑[log2(A080586(n))]` -/
def P17249518194640272252.Spec : Prop :=
  ∀ n, P17249518194640272252.a n = (A080585 n : ℝ)

end A080585

/-! ## A080585.P5466522810854479551

`A080587(n)-(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A080585

/-- `A080587(n)-(n+1)` -/
def P5466522810854479551.Spec : Prop :=
  ∀ n, P5466522810854479551.a n = A080585 n

theorem P5466522810854479551.correct : P5466522810854479551.Spec := by
  intro n
  simp only [A080585]

end A080585

/-! ## A080585.P13611320704925806877

`∑[A079944(floor(n/3))]`
-/

namespace A080585.P13611320704925806877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P13611320704925806877

namespace A080585

/-- `∑[A079944(floor(n/3))]` -/
def P13611320704925806877.Spec : Prop :=
  ∀ n, P13611320704925806877.a n = A080585 n

end A080585

/-! ## A080585.P10140984661762025838

`∑[log2(A079882(floor(n/3)))]`
-/

namespace A080585.P10140984661762025838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A079882 ⌊(n : ℚ) / 3⌋.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P10140984661762025838

namespace A080585

/-- `∑[log2(A079882(floor(n/3)))]` -/
def P10140984661762025838.Spec : Prop :=
  ∀ n, P10140984661762025838.a n = (A080585 n : ℝ)

end A080585

/-! ## A080585.P7152647010814829298

`A023443(A080587(n)-n)`
-/

namespace A080585.P7152647010814829298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080587 n - (n : ℤ)).toNat

end

end A080585.P7152647010814829298

namespace A080585

/-- `A023443(A080587(n)-n)` -/
def P7152647010814829298.Spec : Prop :=
  ∀ n, P7152647010814829298.a n = A080585 n

end A080585

/-! ## A080585.P141214222664667802

`∑[A000466(n)%A080586(n)]`
-/

namespace A080585.P141214222664667802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000466 n) (A080586 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P141214222664667802

namespace A080585

/-- `∑[A000466(n)%A080586(n)]` -/
def P141214222664667802.Spec : Prop :=
  ∀ n, P141214222664667802.a n = A080585 n

end A080585

/-! ## A080585.P11086981896301904374

`∑[A001218(n)%A080586(n)]`
-/

namespace A080585.P11086981896301904374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A080586 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P11086981896301904374

namespace A080585

/-- `∑[A001218(n)%A080586(n)]` -/
def P11086981896301904374.Spec : Prop :=
  ∀ n, P11086981896301904374.a n = A080585 n

end A080585

/-! ## A080585.P10555081259642715367

`∑[A001533(n)%A080586(n)]`
-/

namespace A080585.P10555081259642715367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A080586 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P10555081259642715367

namespace A080585

/-- `∑[A001533(n)%A080586(n)]` -/
def P10555081259642715367.Spec : Prop :=
  ∀ n, P10555081259642715367.a n = A080585 n

end A080585

/-! ## A080585.P7983859806289123102

`A080587(n)%A000027(n+1)`
-/

namespace A080585.P7983859806289123102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080587 n) (A000027 (n + 1))

end

end A080585.P7983859806289123102

namespace A080585

/-- `A080587(n)%A000027(n+1)` -/
def P7983859806289123102.Spec : Prop :=
  ∀ n, P7983859806289123102.a n = A080585 n

end A080585

/-! ## A080585.P1415416396302852272

`∑[log2(A079948(n+3))]`
-/

namespace A080585.P1415416396302852272
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A079948 (n + 3) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P1415416396302852272

namespace A080585

/-- `∑[log2(A079948(n+3))]` -/
def P1415416396302852272.Spec : Prop :=
  ∀ n, P1415416396302852272.a n = (A080585 n : ℝ)

end A080585

/-! ## A080585.P10682114484221943044

`∑[log2(Δ[A079000(n+3)])]`
-/

namespace A080585.P10682114484221943044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f2 (n + 1) - f2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P10682114484221943044

namespace A080585

/-- `∑[log2(Δ[A079000(n+3)])]` -/
def P10682114484221943044.Spec : Prop :=
  ∀ n, P10682114484221943044.a n = (A080585 n : ℝ)

end A080585

/-! ## A080585.P17390941413428090576

`A079000(n+4)-(n+7)`
-/

namespace A080585.P17390941413428090576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 4) - (n + 7 : ℤ)

end

end A080585.P17390941413428090576

namespace A080585

/-- `A079000(n+4)-(n+7)` -/
def P17390941413428090576.Spec : Prop :=
  ∀ n, P17390941413428090576.a n = A080585 n

end A080585

/-! ## A080585.P5834301496638048856

`∑[A001221(Δ[A079000(n+3)])]`
-/

namespace A080585.P5834301496638048856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P5834301496638048856

namespace A080585

/-- `∑[A001221(Δ[A079000(n+3)])]` -/
def P5834301496638048856.Spec : Prop :=
  ∀ n, P5834301496638048856.a n = A080585 n

end A080585

/-! ## A080585.P2844131284951610443

`∑[A001222(Δ[A079000(n+3)])]`
-/

namespace A080585.P2844131284951610443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080585.P2844131284951610443

namespace A080585

/-- `∑[A001222(Δ[A079000(n+3)])]` -/
def P2844131284951610443.Spec : Prop :=
  ∀ n, P2844131284951610443.a n = A080585 n

end A080585

/-!
# A080586: A run of 3*2^n 1's followed by a run of 3*2^n 2's, for n=0, 1, 2, ...

The programs for A080586, the canonical program `A080586.P1986153064841671641` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080586 has offset 0).

The definition of A080586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079944, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080586.P1986153064841671641

`1+A079944(A002264(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A080586

/-- `1+A079944(A002264(n))` -/
def P1986153064841671641.Spec : Prop :=
  ∀ n, P1986153064841671641.a n = A080586 n

theorem P1986153064841671641.correct : P1986153064841671641.Spec := by
  intro n
  simp only [A080586]

end A080586

/-! ## A080586.P18437037148987976606

`a(floor(n/2)-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=2, a(5)=2`
-/

namespace A080586.P18437037148987976606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 2, 2] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 3).toNat

end

end A080586.P18437037148987976606

namespace A080586

/-- `a(floor(n/2)-3)` -/
def P18437037148987976606.Spec : Prop :=
  ∀ n, (P18437037148987976606.a n : ℤ) = A080586 n

end A080586

/-! ## A080586.P14958300201764715471

`A080584(n)+1`
-/

namespace A080586.P14958300201764715471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 n + 1

end

end A080586.P14958300201764715471

namespace A080586

/-- `A080584(n)+1` -/
def P14958300201764715471.Spec : Prop :=
  ∀ n, P14958300201764715471.a n = A080586 n

theorem P14958300201764715471.correct : P14958300201764715471.Spec := by
  intro n
  simp only [A080586, Nat.add_sub_cancel, A080586.P14958300201764715471.a, A080586.P1986153064841671641.a, A002264, A002264.P5647656940077635922.a, A079944, A079944.P122616085984779513.a, A080584, A080584.P17484479246964496310.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080586

/-! ## A080586.P10341551414942358156

`A079882(floor(n/3))`
-/

namespace A080586.P10341551414942358156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 ⌊(n : ℚ) / 3⌋.toNat

end

end A080586.P10341551414942358156

namespace A080586

/-- `A079882(floor(n/3))` -/
def P10341551414942358156.Spec : Prop :=
  ∀ n, P10341551414942358156.a n = A080586 n

end A080586

/-! ## A080586.P14882889496190076964

`A079944(floor(n/3))+1`
-/

namespace A080586.P14882889496190076964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 ⌊(n : ℚ) / 3⌋.toNat + 1

end

end A080586.P14882889496190076964

namespace A080586

/-- `A079944(floor(n/3))+1` -/
def P14882889496190076964.Spec : Prop :=
  ∀ n, P14882889496190076964.a n = A080586 n

theorem P14882889496190076964.correct : P14882889496190076964.Spec := by
  intro n
  simp only [A080586, Nat.add_sub_cancel, A080586.P14882889496190076964.a, A080586.P1986153064841671641.a, A002264, A002264.P5647656940077635922.a, A079944, A079944.P122616085984779513.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A038572, A038572.P9289042872142352092.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A080586

/-! ## A080586.P17565610891510518212

`abs(Δ[A080587(abs(1-n))])`
-/

namespace A080586.P17565610891510518212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080587 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A080586.P17565610891510518212

namespace A080586

/-- `abs(Δ[A080587(abs(1-n))])` -/
def P17565610891510518212.Spec : Prop :=
  ∀ n, P17565610891510518212.a n = A080586 n

end A080586

/-! ## A080586.P3792823006275488315

`A079882(A002264(n))!`
-/

namespace A080586.P3792823006275488315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A079882 (A002264 n).toNat).toNat

end

end A080586.P3792823006275488315

namespace A080586

/-- `A079882(A002264(n))!` -/
def P3792823006275488315.Spec : Prop :=
  ∀ n, (P3792823006275488315.a n : ℤ) = A080586 n

end A080586

/-! ## A080586.P11233636693336044933

`A079882(A066481(n+3))!`
-/

namespace A080586.P11233636693336044933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A079882 (A066481 (n + 3)).toNat).toNat

end

end A080586.P11233636693336044933

namespace A080586

/-- `A079882(A066481(n+3))!` -/
def P11233636693336044933.Spec : Prop :=
  ∀ n, (P11233636693336044933.a n : ℤ) = A080586 n

end A080586

/-! ## A080586.P11279595546013079759

`A321083(A103694(n+1))+1`
-/

namespace A080586.P11279595546013079759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321083 (A103694 (n + 1)).toNat + 1

end

end A080586.P11279595546013079759

namespace A080586

/-- `A321083(A103694(n+1))+1` -/
def P11279595546013079759.Spec : Prop :=
  ∀ n, P11279595546013079759.a n = A080586 n

end A080586

/-! ## A080586.P14385974859230218350

`A079948(A092200(n+1))`
-/

namespace A080586.P14385974859230218350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (A092200 (n + 1)).toNat

end

end A080586.P14385974859230218350

namespace A080586

/-- `A079948(A092200(n+1))` -/
def P14385974859230218350.Spec : Prop :=
  ∀ n, P14385974859230218350.a n = A080586 n

end A080586

/-! ## A080586.P1006655477806590887

`A079882(A257063(n+2))!`
-/

namespace A080586.P1006655477806590887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A079882 (A257063 (n + 2)).toNat).toNat

end

end A080586.P1006655477806590887

namespace A080586

/-- `A079882(A257063(n+2))!` -/
def P1006655477806590887.Spec : Prop :=
  ∀ n, (P1006655477806590887.a n : ℤ) = A080586 n

end A080586

/-! ## A080586.P10665945268545295976

`A079948(n+3)`
-/

namespace A080586.P10665945268545295976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (n + 3)

end

end A080586.P10665945268545295976

namespace A080586

/-- `A079948(n+3)` -/
def P10665945268545295976.Spec : Prop :=
  ∀ n, P10665945268545295976.a n = A080586 n

end A080586

/-! ## A080586.P4646239297791454609

`Δ[A079253(n+2)]`
-/

namespace A080586.P4646239297791454609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080586.P4646239297791454609

namespace A080586

/-- `Δ[A079253(n+2)]` -/
def P4646239297791454609.Spec : Prop :=
  ∀ n, P4646239297791454609.a n = A080586 n

end A080586

/-! ## A080586.P2133345043768018350

`Δ[A079000(n+3)]`
-/

namespace A080586.P2133345043768018350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080586.P2133345043768018350

namespace A080586

/-- `Δ[A079000(n+3)]` -/
def P2133345043768018350.Spec : Prop :=
  ∀ n, P2133345043768018350.a n = A080586 n

end A080586

/-! ## A080586.P15223360625668538430

`Δ[Δ[A080566(n+2)]]`
-/

namespace A080586.P15223360625668538430
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080566 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080586.P15223360625668538430

namespace A080586

/-- `Δ[Δ[A080566(n+2)]]` -/
def P15223360625668538430.Spec : Prop :=
  ∀ n, P15223360625668538430.a n = A080586 n

end A080586

/-! ## A080586.P9789162144926275316

`Δ[A080639(n+4)]`
-/

namespace A080586.P9789162144926275316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080586.P9789162144926275316

namespace A080586

/-- `Δ[A080639(n+4)]` -/
def P9789162144926275316.Spec : Prop :=
  ∀ n, P9789162144926275316.a n = A080586 n

end A080586

/-! ## A080586.P7755259362436727619

`A000034(2*n-A080584(n))`
-/

namespace A080586.P7755259362436727619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((2 * n : ℤ) - A080584 n).toNat

end

end A080586.P7755259362436727619

namespace A080586

/-- `A000034(2*n-A080584(n))` -/
def P7755259362436727619.Spec : Prop :=
  ∀ n, P7755259362436727619.a n = A080586 n

end A080586

/-! ## A080586.P16794242464336458707

`A000034(n-(A080584(n)-n))`
-/

namespace A080586.P16794242464336458707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 ((n : ℤ) - (A080584 n - (n : ℤ))).toNat

end

end A080586.P16794242464336458707

namespace A080586

/-- `A000034(n-(A080584(n)-n))` -/
def P16794242464336458707.Spec : Prop :=
  ∀ n, P16794242464336458707.a n = A080586 n

end A080586

/-! ## A080586.P17908302584108244492

`A000034(xor(2*n, A080584(n)))`
-/

namespace A080586.P17908302584108244492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.xor (2 * n : ℤ) (A080584 n)).toNat

end

end A080586.P17908302584108244492

namespace A080586

/-- `A000034(xor(2*n, A080584(n)))` -/
def P17908302584108244492.Spec : Prop :=
  ∀ n, P17908302584108244492.a n = A080586 n

end A080586

/-! ## A080586.P2832586796762325935

`gcd(2, A062178(A008620(n)))`
-/

namespace A080586.P2832586796762325935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A062178 (A008620 n).toNat)

end

end A080586.P2832586796762325935

namespace A080586

/-- `gcd(2, A062178(A008620(n)))` -/
def P2832586796762325935.Spec : Prop :=
  ∀ n, (P2832586796762325935.a n : ℤ) = A080586 n

end A080586

/-!
# A080587: Partial sums of A080586.

The programs for A080587, the canonical program `A080587.P4353599123797453831` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080587 has offset 0).

The definition of A080587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080586, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A080587.P4353599123797453831

`3*2^(A000523(A002264(n+6))-1)*(4-3*A080586(n))+A080586(n)*(n+7)-9`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A080587

/-- `3*2^(A000523(A002264(n+6))-1)*(4-3*A080586(n))+A080586(n)*(n+7)-9` -/
def P4353599123797453831.Spec : Prop :=
  ∀ n, P4353599123797453831.a n = (A080587 n : ℚ)

end A080587

/-! ## A080587.P9749464086392930993

`∑[A080586(n)]`
-/

namespace A080587.P9749464086392930993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P9749464086392930993

namespace A080587

/-- `∑[A080586(n)]` -/
def P9749464086392930993.Spec : Prop :=
  ∀ n, P9749464086392930993.a n = A080587 n

end A080587

/-! ## A080587.P13610979344117067102

`∑[A080584(n)+1]`
-/

namespace A080587.P13610979344117067102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080584 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P13610979344117067102

namespace A080587

/-- `∑[A080584(n)+1]` -/
def P13610979344117067102.Spec : Prop :=
  ∀ n, P13610979344117067102.a n = A080587 n

end A080587

/-! ## A080587.P5394842505322646857

`A080585(n)+1+n`
-/

namespace A080587.P5394842505322646857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080585 n + 1 + (n : ℤ)

end

end A080587.P5394842505322646857

namespace A080587

/-- `A080585(n)+1+n` -/
def P5394842505322646857.Spec : Prop :=
  ∀ n, P5394842505322646857.a n = A080587 n

end A080587

/-! ## A080587.P7143752791802740174

`∑[A079882(floor(n/3))]`
-/

namespace A080587.P7143752791802740174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079882 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P7143752791802740174

namespace A080587

/-- `∑[A079882(floor(n/3))]` -/
def P7143752791802740174.Spec : Prop :=
  ∀ n, P7143752791802740174.a n = A080587 n

end A080587

/-! ## A080587.P161904796326747736

`∑[gcd(2, A130320(n+7)/2)]`
-/

namespace A080587.P161904796326747736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (SequenceMachineLib.roundAway ((A130320 (n + 7) : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P161904796326747736

namespace A080587

/-- `∑[gcd(2, A130320(n+7)/2)]` -/
def P161904796326747736.Spec : Prop :=
  ∀ n, (P161904796326747736.a n : ℤ) = A080587 n

end A080587

/-! ## A080587.P8548877063364261873

`∑[A079948(n+3)]`
-/

namespace A080587.P8548877063364261873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079948 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P8548877063364261873

namespace A080587

/-- `∑[A079948(n+3)]` -/
def P8548877063364261873.Spec : Prop :=
  ∀ n, P8548877063364261873.a n = A080587 n

end A080587

/-! ## A080587.P5701400772262290776

`A079253(n+3)-5`
-/

namespace A080587.P5701400772262290776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079253 (n + 3) - 5

end

end A080587.P5701400772262290776

namespace A080587

/-- `A079253(n+3)-5` -/
def P5701400772262290776.Spec : Prop :=
  ∀ n, P5701400772262290776.a n = A080587 n

end A080587

/-! ## A080587.P10130924422841897899

`A079000(n+4)-6`
-/

namespace A080587.P10130924422841897899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 4) - 6

end

end A080587.P10130924422841897899

namespace A080587

/-- `A079000(n+4)-6` -/
def P10130924422841897899.Spec : Prop :=
  ∀ n, P10130924422841897899.a n = A080587 n

end A080587

/-! ## A080587.P14227162399300505080

`∑[abs(Δ[A079000(n+3)])]`
-/

namespace A080587.P14227162399300505080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P14227162399300505080

namespace A080587

/-- `∑[abs(Δ[A079000(n+3)])]` -/
def P14227162399300505080.Spec : Prop :=
  ∀ n, P14227162399300505080.a n = A080587 n

end A080587

/-! ## A080587.P14290828570852819995

`∑[A000002(Δ[A079000(n+3)])]`
-/

namespace A080587.P14290828570852819995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P14290828570852819995

namespace A080587

/-- `∑[A000002(Δ[A079000(n+3)])]` -/
def P14290828570852819995.Spec : Prop :=
  ∀ n, P14290828570852819995.a n = A080587 n

end A080587

/-! ## A080587.P13391755580894788627

`∑[A000005(Δ[A079000(n+3)])]`
-/

namespace A080587.P13391755580894788627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P13391755580894788627

namespace A080587

/-- `∑[A000005(Δ[A079000(n+3)])]` -/
def P13391755580894788627.Spec : Prop :=
  ∀ n, P13391755580894788627.a n = A080587 n

end A080587

/-! ## A080587.P13566366620229499714

`∑[A000041(Δ[A079000(n+3)])]`
-/

namespace A080587.P13566366620229499714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P13566366620229499714

namespace A080587

/-- `∑[A000041(Δ[A079000(n+3)])]` -/
def P13566366620229499714.Spec : Prop :=
  ∀ n, P13566366620229499714.a n = A080587 n

end A080587

/-! ## A080587.P13677940441160881644

`∑[A000108(Δ[A079000(n+3)])]`
-/

namespace A080587.P13677940441160881644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P13677940441160881644

namespace A080587

/-- `∑[A000108(Δ[A079000(n+3)])]` -/
def P13677940441160881644.Spec : Prop :=
  ∀ n, P13677940441160881644.a n = A080587 n

end A080587

/-! ## A080587.P3955956195601587882

`∑[A005117(Δ[A079000(n+3)])]`
-/

namespace A080587.P3955956195601587882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P3955956195601587882

namespace A080587

/-- `∑[A005117(Δ[A079000(n+3)])]` -/
def P3955956195601587882.Spec : Prop :=
  ∀ n, P3955956195601587882.a n = A080587 n

end A080587

/-! ## A080587.P5860975313844006803

`∑[A006530(Δ[A079000(n+3)])]`
-/

namespace A080587.P5860975313844006803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P5860975313844006803

namespace A080587

/-- `∑[A006530(Δ[A079000(n+3)])]` -/
def P5860975313844006803.Spec : Prop :=
  ∀ n, P5860975313844006803.a n = A080587 n

end A080587

/-! ## A080587.P6290402854919435725

`∑[A020639(Δ[A079000(n+3)])]`
-/

namespace A080587.P6290402854919435725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079000 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080587.P6290402854919435725

namespace A080587

/-- `∑[A020639(Δ[A079000(n+3)])]` -/
def P6290402854919435725.Spec : Prop :=
  ∀ n, P6290402854919435725.a n = A080587 n

end A080587

/-! ## A080587.P7884315658249971682

`A080639(n+5)-7`
-/

namespace A080587.P7884315658249971682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080639 (n + 5) - 7

end

end A080587.P7884315658249971682

namespace A080587

/-- `A080639(n+5)-7` -/
def P7884315658249971682.Spec : Prop :=
  ∀ n, P7884315658249971682.a n = A080587 n

end A080587

/-!
# A080588: a(n) is the smallest nonnegative integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 4n.

The programs for A080588, there is no canonical definition to state claims against.
-/

/-! ## A080588.P6778963860477387160

`∪[A046092(n), A080591(n)+1]`
-/

namespace A080588.P6778963860477387160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080591 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080588.P6778963860477387160

/-! ## A080588.P10788464563218716883

`∪[A080591(n)+1, A194045(n)]`
-/

namespace A080588.P10788464563218716883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080591 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194045 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A080588.P10788464563218716883

/-! ## A080588.P13935079554036955808

`comp[comp[A080591(n)]+1]`
-/

namespace A080588.P13935079554036955808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080591 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A080588.P13935079554036955808

/-! ## A080588.P1056810064140730753

`lt[∑[A293597(n+1)], A293578(3*n+4)]`
-/

namespace A080588.P1056810064140730753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293597 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293578 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A080588.P1056810064140730753

/-!
# A080590: a(1)=1; for n>1, a(n)=a(n-1)+3 if n is already in the sequence, a(n)=a(n-1)+4 otherwise.

The programs for A080590, the canonical program `A080590.P4218931927192004559` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080590 has offset 1).

The definition of A080590 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080590.P4218931927192004559

`Δ[n²]+ceil(n*sqrt(3))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080590

/-- `Δ[n²]+ceil(n*sqrt(3))` -/
def P4218931927192004559.Spec : Prop :=
  ∀ n, P4218931927192004559.a n = A080590 (n + 1)

theorem P4218931927192004559.correct : P4218931927192004559.Spec := by
  intro n
  simp only [A080590, Nat.add_sub_cancel]

end A080590

/-! ## A080590.P4801410359621058711

`A188072(A103517(n))`
-/

namespace A080590.P4801410359621058711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188072 (A103517 n).toNat

end

end A080590.P4801410359621058711

namespace A080590

/-- `A188072(A103517(n))` -/
def P4801410359621058711.Spec : Prop :=
  ∀ n, P4801410359621058711.a n = A080590 (n + 1)

end A080590

/-! ## A080590.P8921640228321347850

`A003511(A198081(n)+1+n)`
-/

namespace A080590.P8921640228321347850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003511 (A198081 n + 1 + (n : ℤ)).toNat

end

end A080590.P8921640228321347850

namespace A080590

/-- `A003511(A198081(n)+1+n)` -/
def P8921640228321347850.Spec : Prop :=
  ∀ n, P8921640228321347850.a n = A080590 (n + 1)

end A080590

/-! ## A080590.P14579980394511736794

`A000027(A198081(n)+record[A110091(n)])`
-/

namespace A080590.P14579980394511736794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A198081 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A080590.P14579980394511736794

namespace A080590

/-- `A000027(A198081(n)+record[A110091(n)])` -/
def P14579980394511736794.Spec : Prop :=
  ∀ n, P14579980394511736794.a n = A080590 (n + 1)

end A080590

/-! ## A080590.P8866153371287665673

`A065475(A188069(n+1))`
-/

namespace A080590.P8866153371287665673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A188069 (n + 1)).toNat

end

end A080590.P8866153371287665673

namespace A080590

/-- `A065475(A188069(n+1))` -/
def P8866153371287665673.Spec : Prop :=
  ∀ n, P8866153371287665673.a n = A080590 (n + 1)

end A080590

/-! ## A080590.P4989852861973509180

`A270059(A188069(2*n+1))`
-/

namespace A080590.P4989852861973509180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (A188069 (2 * n + 1)).toNat

end

end A080590.P4989852861973509180

namespace A080590

/-- `A270059(A188069(2*n+1))` -/
def P4989852861973509180.Spec : Prop :=
  ∀ n, P4989852861973509180.a n = A080590 (n + 1)

end A080590

/-! ## A080590.P13648760575927135084

`A008619(A198081(2*n)+4*n+1)`
-/

namespace A080590.P13648760575927135084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A198081 (2 * n) + (4 * n + 1 : ℤ)).toNat

end

end A080590.P13648760575927135084

namespace A080590

/-- `A008619(A198081(2*n)+4*n+1)` -/
def P13648760575927135084.Spec : Prop :=
  ∀ n, P13648760575927135084.a n = A080590 (n + 1)

end A080590

/-! ## A080590.P12818531368679739525

`A270059(A188069(n+1)+A188069(n+1)-1)`
-/

namespace A080590.P12818531368679739525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270059 (A188069 (n + 1) + (A188069 (n + 1) - 1)).toNat

end

end A080590.P12818531368679739525

namespace A080590

/-- `A270059(A188069(n+1)+A188069(n+1)-1)` -/
def P12818531368679739525.Spec : Prop :=
  ∀ n, P12818531368679739525.a n = A080590 (n + 1)

end A080590

/-!
# A080591: a(n) is taken to be the smallest positive integer greater than a(n-1) which is consistent with the condition "n is a member of the sequence if and only if a(n) is congruent to 3 mod 4".

The programs for A080591, there is no canonical definition to state claims against.
-/

/-! ## A080591.P6176681893067551205

`A080588(n+1)-1`
-/

namespace A080591.P6176681893067551205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080588 (n + 1) - 1

end

end A080591.P6176681893067551205

/-! ## A080591.P11373403989394204822

`∑[Δ[A080588(n)]-A000007(n)]`
-/

namespace A080591.P11373403989394204822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080591.P11373403989394204822

/-! ## A080591.P8541777409333086840

`A213917(A007318(C(2, n)))+A080588(n+1)`
-/

namespace A080591.P8541777409333086840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (A007318 (Nat.choose 2 n)).toNat + A080588 (n + 1)

end

end A080591.P8541777409333086840

/-! ## A080591.P2907916774626275389

`Δ[∑[A080588(n)]-n]`
-/

namespace A080591.P2907916774626275389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080588 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A080591.P2907916774626275389

/-! ## A080591.P12357845713517185643

`record[A260196(n)+A080588(n)]`
-/

namespace A080591.P12357845713517185643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A080588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080591.P12357845713517185643

/-! ## A080591.P10586301422049272144

`A023443(A080588(n+1))`
-/

namespace A080591.P10586301422049272144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A080588 (n + 1)).toNat

end

end A080591.P10586301422049272144

/-! ## A080591.P7032964257845614096

`A260196(A080588(2*n+1))+A080588(n+1)`
-/

namespace A080591.P7032964257845614096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A080588 (2 * n + 1)).toNat + A080588 (n + 1)

end

end A080591.P7032964257845614096

/-! ## A080591.P14298615960611308208

`A260196(A080588(n+1)²)+A080588(n+1)`
-/

namespace A080591.P14298615960611308208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A080588 (n + 1) ^ 2).toNat + A080588 (n + 1)

end

end A080591.P14298615960611308208

/-!
# A080593: Consider the standard game of Nim with 3 heaps and make a list of the losing positions (x,y,z) with x <= y <= z in reverse lexicographic order; sequence gives x values.

The programs for A080593, there is no canonical definition to state claims against.
-/

/-! ## A080593.P13809285297748354107

`xor(A080594(n), A080595(n))`
-/

namespace A080593.P13809285297748354107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080594 n) (A080595 n)

end

end A080593.P13809285297748354107

/-! ## A080593.P13879252155231813889

`xor(∑[char[∑[1-A053644(n)+n]]], A080594(n))`
-/

namespace A080593.P13879252155231813889
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053644 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080594 n)

end

end A080593.P13879252155231813889

/-! ## A080593.P2652160540938760868

`A051933(lt[A051933(n), A128227(n)])`
-/

namespace A080593.P2652160540938760868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080593.P2652160540938760868

/-! ## A080593.P16014972080975615010

`A051933(lt[A051933(n), A193738(n)])`
-/

namespace A080593.P16014972080975615010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080593.P16014972080975615010

/-! ## A080593.P4484010784762359550

`A051933(lt[A051933(n), A002260(n+1)])`
-/

namespace A080593.P4484010784762359550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080593.P4484010784762359550

/-! ## A080593.P3296629786345740245

`A051933(lt[A051933(n), A002262(n)+1])`
-/

namespace A080593.P3296629786345740245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080593.P3296629786345740245

/-! ## A080593.P15741825309288466087

`A051933(lt[A051933(n)-1, A002262(n)])`
-/

namespace A080593.P15741825309288466087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080593.P15741825309288466087

/-!
# A080594: Consider the standard game of Nim with 3 heaps and make a list of the losing positions (x,y,z) with x <= y <= z in reverse lexicographic order; sequence gives y values.

The programs for A080594, there is no canonical definition to state claims against.
-/

/-! ## A080594.P10850583841186625350

`xor(A080593(n), A080595(n))`
-/

namespace A080594.P10850583841186625350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080593 n) (A080595 n)

end

end A080594.P10850583841186625350

/-! ## A080594.P18054000335130369507

`xor(∑[char[∑[1-A053644(n)+n]]], A080593(n))`
-/

namespace A080594.P18054000335130369507
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053644 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A080593 n)

end

end A080594.P18054000335130369507

/-! ## A080594.P10475161442600696343

`A002262(lt[A051933(n), A128227(n)])`
-/

namespace A080594.P10475161442600696343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080594.P10475161442600696343

/-! ## A080594.P6716421479215526164

`A002262(lt[A051933(n), A193738(n)])`
-/

namespace A080594.P6716421479215526164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080594.P6716421479215526164

/-! ## A080594.P13199940326631412332

`A002262(lt[A051933(n), A002260(n+1)])`
-/

namespace A080594.P13199940326631412332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080594.P13199940326631412332

/-! ## A080594.P17287208638584872598

`A002262(lt[A051933(n), A002262(n)+1])`
-/

namespace A080594.P17287208638584872598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080594.P17287208638584872598

/-! ## A080594.P15545011012992496303

`A002262(lt[A051933(n)-1, A002262(n)])`
-/

namespace A080594.P15545011012992496303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A080594.P15545011012992496303

/-! ## A080594.P8314087837364243040

`xor(A051933(lt[A051933(n), A128227(n)]), A080595(n))`
-/

namespace A080594.P8314087837364243040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051933 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) (A080595 n)

end

end A080594.P8314087837364243040

/-!
# A080595: Consider the standard game of Nim with 3 heaps and make a list of the losing positions (x,y,z) with x <= y <= z in reverse lexicographic order; sequence gives z values.

The programs for A080595, the canonical program `A080595.P7776638680913142891` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080595 has offset 0).

The definition of A080595 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080595.P7776638680913142891

`∑[char[∑[n%(n-a(n-1))+1]]]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A080595

/-- `∑[char[∑[n%(n-a(n-1))+1]]]` -/
def P7776638680913142891.Spec : Prop :=
  ∀ n, (P7776638680913142891.a n : ℤ) = A080595 n

theorem P7776638680913142891.correct : P7776638680913142891.Spec := by
  intro n
  simp only [A080595]

end A080595

/-! ## A080595.P2969589805700858697

`∑[char[∑[1-A053644(n)+n]]]`
-/

namespace A080595.P2969589805700858697
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A053644 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080595.P2969589805700858697

namespace A080595

/-- `∑[char[∑[1-A053644(n)+n]]]` -/
def P2969589805700858697.Spec : Prop :=
  ∀ n, (P2969589805700858697.a n : ℤ) = A080595 n

end A080595

/-! ## A080595.P16412226238297749095

`∑[char[∑[A164089(2*n+1)+1]]]`
-/

namespace A080595.P16412226238297749095
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080595.P16412226238297749095

namespace A080595

/-- `∑[char[∑[A164089(2*n+1)+1]]]` -/
def P16412226238297749095.Spec : Prop :=
  ∀ n, (P16412226238297749095.a n : ℤ) = A080595 n

end A080595

/-! ## A080595.P7546759657282756988

`comp[∑[n+2-A053644(or(1, n))]]-n`
-/

namespace A080595.P7546759657282756988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A053644 (Nat.lor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A080595.P7546759657282756988

namespace A080595

/-- `comp[∑[n+2-A053644(or(1, n))]]-n` -/
def P7546759657282756988.Spec : Prop :=
  ∀ n, P7546759657282756988.a n = A080595 n

end A080595

/-! ## A080595.P1286986484672028323

`∑[A209229(A080594(n))]`
-/

namespace A080595.P1286986484672028323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A080594 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A080595.P1286986484672028323

namespace A080595

/-- `∑[A209229(A080594(n))]` -/
def P1286986484672028323.Spec : Prop :=
  ∀ n, P1286986484672028323.a n = A080595 n

end A080595

/-! ## A080595.P15973873526827230809

`xor(A080593(n), A080594(n))`
-/

namespace A080595.P15973873526827230809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080593 n) (A080594 n)

end

end A080595.P15973873526827230809

namespace A080595

/-- `xor(A080593(n), A080594(n))` -/
def P15973873526827230809.Spec : Prop :=
  ∀ n, P15973873526827230809.a n = A080595 n

end A080595

/-!
# A080596: a(1)=1; for n >= 2, a(n) is smallest positive integer which is consistent with sequence being monotonically increasing and satisfying a(a(n)) = 2n+3.

The programs for A080596, the canonical program `A080596.P10243355995937490864` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080596 has offset 1).

The definition of A080596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A080596.P5532845490196392537

`A079945(ceil(sqrt(∑[2*n])))`
-/

namespace A080596.P5532845490196392537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉.toNat

end

end A080596.P5532845490196392537

namespace A080596

/-- `A079945(ceil(sqrt(∑[2*n])))` -/
def P5532845490196392537.Spec : Prop :=
  ∀ n, P5532845490196392537.a n = A080596 (n + 1)

end A080596

/-! ## A080596.P10243355995937490864

`record[A079945(n)%(n²+2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080596

/-- `record[A079945(n)%(n²+2)]` -/
def P10243355995937490864.Spec : Prop :=
  ∀ n, P10243355995937490864.a n = A080596 (n + 1)

theorem P10243355995937490864.correct : P10243355995937490864.Spec := by
  intro n
  simp only [A080596, Nat.add_sub_cancel]

end A080596

/-! ## A080596.P5963186662090904777

`gcd(floor(acot(n)), A079945(n+1))`
-/

namespace A080596.P5963186662090904777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A079945 (n + 1))

end

end A080596.P5963186662090904777

namespace A080596

/-- `gcd(floor(acot(n)), A079945(n+1))` -/
def P5963186662090904777.Spec : Prop :=
  ∀ n, (P5963186662090904777.a n : ℤ) = A080596 (n + 1)

end A080596

/-! ## A080596.P3687782213891861030

`lt[A063946(n+2), lcm(2, n)+1]`
-/

namespace A080596.P3687782213891861030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A080596.P3687782213891861030

namespace A080596

/-- `lt[A063946(n+2), lcm(2, n)+1]` -/
def P3687782213891861030.Spec : Prop :=
  ∀ n, (P3687782213891861030.a n : ℤ) = A080596 (n + 1)

end A080596

/-! ## A080596.P15236899317562682557

`∪[A079945(n+2), (4*n)²+1]`
-/

namespace A080596.P15236899317562682557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n) ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A080596.P15236899317562682557

namespace A080596

/-- `∪[A079945(n+2), (4*n)²+1]` -/
def P15236899317562682557.Spec : Prop :=
  ∀ n, (P15236899317562682557.a n : ℤ) = A080596 (n + 1)

end A080596

/-! ## A080596.P2979221693677622470

`comp[abs(2-4*n)-A006257(n)]+1`
-/

namespace A080596.P2979221693677622470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (4 * n : ℤ)| - A006257 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A080596.P2979221693677622470

namespace A080596

/-- `comp[abs(2-4*n)-A006257(n)]+1` -/
def P2979221693677622470.Spec : Prop :=
  ∀ n, (P2979221693677622470.a n : ℤ) = A080596 (n + 1)

end A080596

/-! ## A080596.P5962123056848397410

`record[A079882(n-1)+a(n-1)]` with `a(0)=1, a(1)=4, a(2)=3`
-/

namespace A080596.P5962123056848397410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 3] fun n f1 =>
  A079882 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080596.P5962123056848397410

namespace A080596

/-- `record[A079882(n-1)+a(n-1)]` -/
def P5962123056848397410.Spec : Prop :=
  ∀ n, P5962123056848397410.a n = A080596 (n + 1)

end A080596

/-! ## A080596.P18088148532765904869

`record[A060576(n)*A079945(n)]`
-/

namespace A080596.P18088148532765904869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A079945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A080596.P18088148532765904869

namespace A080596

/-- `record[A060576(n)*A079945(n)]` -/
def P18088148532765904869.Spec : Prop :=
  ∀ n, P18088148532765904869.a n = A080596 (n + 1)

end A080596

/-! ## A080596.P16657868062454990265

`A171526(A079945(n+1))`
-/

namespace A080596.P16657868062454990265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171526 (A079945 (n + 1)).toNat

end

end A080596.P16657868062454990265

namespace A080596

/-- `A171526(A079945(n+1))` -/
def P16657868062454990265.Spec : Prop :=
  ∀ n, P16657868062454990265.a n = A080596 (n + 1)

end A080596

/-!
# A080597: Minimum number of initial terms from the decimal expansion of Pi (A000796) to include every combination of n digits as a substring.

The programs for A080597, there is no canonical definition to state claims against.
-/

/-! ## A080597.P4566404963131365673

`A036903(n+1)+1`
-/

namespace A080597.P4566404963131365673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036903 (n + 1) + 1

end

end A080597.P4566404963131365673

/-! ## A080597.P8766038354969923752

`A332262(n+1)+1+n`
-/

namespace A080597.P8766038354969923752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332262 (n + 1) + 1 + (n : ℤ)

end

end A080597.P8766038354969923752

/-! ## A080597.P1087963608638177371

`A332262(n+1)+A077168(n)`
-/

namespace A080597.P1087963608638177371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332262 (n + 1) + A077168 n

end

end A080597.P1087963608638177371

/-! ## A080597.P2222773194328435019

`A332262(n+1)+A331300(n)`
-/

namespace A080597.P2222773194328435019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332262 (n + 1) + A331300 n

end

end A080597.P2222773194328435019

/-! ## A080597.P10421178819435371586

`A348553(n)+A332262(n+1)`
-/

namespace A080597.P10421178819435371586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 n + A332262 (n + 1)

end

end A080597.P10421178819435371586

/-!
# A080599: Expansion of e.g.f.: 2/(2-2*x-x^2).

The programs for A080599, the canonical program `A080599.P2500914518203076305` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A080599 has offset 0).

The definition of A080599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A080599.P2101735610664620474

`n*a(n-1)+n*(n-1)/2*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A080599.P2101735610664620474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * a (n - 1) + ((n : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 * a (n - 2)

end

end A080599.P2101735610664620474

namespace A080599

/-- `n*a(n-1)+n*(n-1)/2*a(n-2)` -/
def P2101735610664620474.Spec : Prop :=
  ∀ n, P2101735610664620474.a n = (A080599 n : ℚ)

end A080599

/-! ## A080599.P2500914518203076305

`A090932(n)*A002530(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A080599

/-- `A090932(n)*A002530(n+1)` -/
def P2500914518203076305.Spec : Prop :=
  ∀ n, P2500914518203076305.a n = A080599 n

theorem P2500914518203076305.correct : P2500914518203076305.Spec := by
  intro n
  simp only [A080599]

end A080599

/-! ## A080599.P14640003560106926314

`n!*((1+sqrt(3))^(n+1)-(1-sqrt(3))^(n+1))/(2^(n+1)*sqrt(3))`
-/

namespace A080599.P14640003560106926314
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℝ) * ((1 + Real.sqrt (3 : ℝ)) ^ (n + 1) - (1 - Real.sqrt (3 : ℝ)) ^ (n + 1)) / ((2 ^ (n + 1) : ℝ) * Real.sqrt (3 : ℝ))

end

end A080599.P14640003560106926314

namespace A080599

/-- `n!*((1+sqrt(3))^(n+1)-(1-sqrt(3))^(n+1))/(2^(n+1)*sqrt(3))` -/
def P14640003560106926314.Spec : Prop :=
  ∀ n, P14640003560106926314.a n = (A080599 n : ℝ)

end A080599

/-! ## A080599.P14042265622647348264

`n*(a(n-1)+(n-1)*a(n-2)/2)` with `a(0)=1, a(1)=1`
-/

namespace A080599.P14042265622647348264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℚ) * (a (n - 1) + ((n : ℤ) - 1 : ℚ) * (a (n - 2) / 2))

end

end A080599.P14042265622647348264

namespace A080599

/-- `n*(a(n-1)+(n-1)*a(n-2)/2)` -/
def P14042265622647348264.Spec : Prop :=
  ∀ n, P14042265622647348264.a n = (A080599 n : ℚ)

end A080599

/-! ## A080599.P4273887375123058521

`A276921(∑[n+3])`
-/

namespace A080599.P4273887375123058521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A080599.P4273887375123058521

namespace A080599

/-- `A276921(∑[n+3])` -/
def P4273887375123058521.Spec : Prop :=
  ∀ n, P4273887375123058521.a n = A080599 n

end A080599

/-! ## A080599.P16924711967101691709

`A155020(n)/A011782(n)*n!`
-/

namespace A080599.P16924711967101691709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155020 n : ℚ) / (A011782 n : ℚ) * (Nat.factorial n : ℚ)

end

end A080599.P16924711967101691709

namespace A080599

/-- `A155020(n)/A011782(n)*n!` -/
def P16924711967101691709.Spec : Prop :=
  ∀ n, P16924711967101691709.a n = (A080599 n : ℚ)

end A080599

/-! ## A080599.P16054445903920398416

`∑[A026150(n)]/A000079(n)*n!`
-/

namespace A080599.P16054445903920398416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A000079 n : ℚ) * (Nat.factorial n : ℚ)

end

end A080599.P16054445903920398416

namespace A080599

/-- `∑[A026150(n)]/A000079(n)*n!` -/
def P16054445903920398416.Spec : Prop :=
  ∀ n, P16054445903920398416.a n = (A080599 n : ℚ)

end A080599

/-! ## A080599.P17471405804976379144

`A000142(n)/A000079(n)*∑[A026150(n)]`
-/

namespace A080599.P17471405804976379144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A000079 n : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A080599.P17471405804976379144

namespace A080599

/-- `A000142(n)/A000079(n)*∑[A026150(n)]` -/
def P17471405804976379144.Spec : Prop :=
  ∀ n, P17471405804976379144.a n = (A080599 n : ℚ)

end A080599

/-! ## A080599.P11026980609270888055

`A000670(n)-A335508(n)`
-/

namespace A080599.P11026980609270888055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A335508 n

end

end A080599.P11026980609270888055

namespace A080599

/-- `A000670(n)-A335508(n)` -/
def P11026980609270888055.Spec : Prop :=
  ∀ n, P11026980609270888055.a n = A080599 n

end A080599

