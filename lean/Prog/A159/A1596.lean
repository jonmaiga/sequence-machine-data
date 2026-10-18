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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159600: E.g.f. C(x) satisfies: C(x) = (1 - 2*S(x)^2)^(1/4), where S'(x) = C(x)^3 and C'(x) = -S(x) with C(0)=1.

The programs for A159600, there is no canonical definition to state claims against.
-/

/-! ## A159600.P6571046106953626982

`(-1)^floor(n/2)*A193544(n)`
-/

namespace A159600.P6571046106953626982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A193544 n : ℚ)

end

end A159600.P6571046106953626982

/-! ## A159600.P4221041164289320056

`A087960(n)*A193541(n)`
-/

namespace A159600.P4221041164289320056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A193541 n

end

end A159600.P4221041164289320056

/-! ## A159600.P17258775265962193197

`A015895(n)*A286306(n)`
-/

namespace A159600.P17258775265962193197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015895 n * A286306 n

end

end A159600.P17258775265962193197

/-! ## A159600.P7745817730385378455

`A057077(n+1)*A193541(n)`
-/

namespace A159600.P7745817730385378455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A193541 n

end

end A159600.P7745817730385378455

/-! ## A159600.P18253065975173304220

`abs(A193541(n))/A087960(n²)`
-/

namespace A159600.P18253065975173304220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A193541 n| : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A159600.P18253065975173304220

/-!
# A159601: E.g.f. S(x) satisfies: S(x) = Integral [1 - 2*S(x)^2]^(3/4) dx with S(0)=0.

The programs for A159601, there is no canonical definition to state claims against.
-/

/-! ## A159601.P9463171337654546275

`-A159600(n+1)`
-/

namespace A159601.P9463171337654546275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A159600 (n + 1)

end

end A159601.P9463171337654546275

/-! ## A159601.P5874008029158076081

`A057077(n)*A193541(n+1)`
-/

namespace A159601.P5874008029158076081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A193541 (n + 1)

end

end A159601.P5874008029158076081

/-! ## A159601.P10750909595124469256

`A193541(n+1)*A193541(n)/A286306(n)`
-/

namespace A159601.P10750909595124469256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193541 (n + 1) * A193541 n : ℚ) / (A286306 n : ℚ)

end

end A159601.P10750909595124469256

/-! ## A159601.P10800378457663911330

`Δ[-∑[A159600(n)]]`
-/

namespace A159601.P10800378457663911330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159601.P10800378457663911330

/-! ## A159601.P8412842381536689608

`A243836(n)-A159600(n+1)`
-/

namespace A159601.P8412842381536689608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n - A159600 (n + 1)

end

end A159601.P8412842381536689608

/-!
# A159602: G.f.: A(x) = Sum_{n>=0} log(1 + x/(1-2^n*x))^n/n!.

The programs for A159602, there is no canonical definition to state claims against.
-/

/-! ## A159602.P2704217914464529278

`A205502(n)-A054908(A326489(n))`
-/

namespace A159602.P2704217914464529278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205502 n - A054908 (A326489 n).toNat

end

end A159602.P2704217914464529278

/-! ## A159602.P2186592389303754516

`A205502(n)-A325628(A335780(n+1))`
-/

namespace A159602.P2186592389303754516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205502 n - A325628 (A335780 (n + 1)).toNat

end

end A159602.P2186592389303754516

/-!
# A159603: G.f.: A(x) = Sum_{n>=0} log(1 + Sum_{k>=1} k^n*x^k )^n/n!.

The programs for A159603, there is no canonical definition to state claims against.
-/

/-! ## A159603.P11773075769638627304

`A079566(n+1)-A219558(A079566(n+1))`
-/

namespace A159603.P11773075769638627304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079566 (n + 1) - A219558 (A079566 (n + 1)).toNat

end

end A159603.P11773075769638627304

/-! ## A159603.P6277929877774049100

`A001462(A130721(n))`
-/

namespace A159603.P6277929877774049100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A130721 n).toNat

end

end A159603.P6277929877774049100

/-! ## A159603.P787436875263862891

`A147706(A138035(n))`
-/

namespace A159603.P787436875263862891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (A138035 n).toNat

end

end A159603.P787436875263862891

/-!
# A159604: G.f.: A(x) = exp( Sum_{n>=1} [ Sum_{k>=1} sigma(n,k)*x^k ]^n/n ).

The programs for A159604, there is no canonical definition to state claims against.
-/

/-! ## A159604.P1885992083649656620

`A060127(A216136(n))`
-/

namespace A159604.P1885992083649656620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060127 (A216136 n).toNat

end

end A159604.P1885992083649656620

/-!
# A159605: E.g.f: Sum_{n>=1} a(n)*x^(2n-1)/(2n-1)! = Series_Reversion of e.g.f. S(x) of A159601.

The programs for A159605, there is no canonical definition to state claims against.
-/

/-! ## A159605.P7366681762644750541

`record[∏[3-lcm(2, n+1)]]`
-/

namespace A159605.P7366681762644750541
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.lcm 2 (n + 1) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159605.P7366681762644750541

/-! ## A159605.P7752970216892399574

`∏[∑[a(n-1)+16]]` with `a(0)=1, a(1)=2`
-/

namespace A159605.P7752970216892399574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 1) + 16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159605.P7752970216892399574

/-! ## A159605.P11648257511402983194

`∏[n*(8*n-6)+1]`
-/

namespace A159605.P11648257511402983194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((8 * n : ℤ) - 6) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159605.P11648257511402983194

/-! ## A159605.P10228657526884722281

`(2*n-1)*(4*n-1)*a(n-1)` with `a(0)=1`
-/

namespace A159605.P10228657526884722281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * (((4 * n : ℤ) - 1) * a (n - 1))

end

end A159605.P10228657526884722281

/-! ## A159605.P1928403990595298365

`or(1, ∏[A033567(n)])`
-/

namespace A159605.P1928403990595298365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A159605.P1928403990595298365

/-!
# A159606: G.f. satisfies: A(x) = 1 + x*d/dx log(1 + x/A(x)).

The programs for A159606, there is no canonical definition to state claims against.
-/

/-! ## A159606.P18401324512739878916

`(A274616(3*n+1)-n)*A158884(n)`
-/

namespace A159606.P18401324512739878916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274616 (3 * n + 1) - (n : ℤ)) * A158884 n

end

end A159606.P18401324512739878916

/-! ## A159606.P7660779871233030316

`A065475(A028310(n))*A158884(n)`
-/

namespace A159606.P7660779871233030316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A028310 n).toNat * A158884 n

end

end A159606.P7660779871233030316

/-!
# A159607: G.f. A(x) satisfies A(x) = 1 + x*d/dx log(1 + x*A(x)^2).

The programs for A159607, there is no canonical definition to state claims against.
-/

/-! ## A159607.P5040875633829671333

`A248183((n+3)*(n+1)^(n-2))`
-/

namespace A159607.P5040875633829671333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (SequenceMachineLib.roundAway ((n + 3 : ℚ) * (n + 1 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A159607.P5040875633829671333

/-! ## A159607.P4826972657534725156

`A172264(A000165(n))+1`
-/

namespace A159607.P4826972657534725156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172264 (A000165 n).toNat + 1

end

end A159607.P4826972657534725156

/-!
# A159608: G.f. satisfies: A(x) = 1 + x*d/dx log(1 + x*A(x)^3).

The programs for A159608, there is no canonical definition to state claims against.
-/

/-! ## A159608.P16018965379927208838

`A033805(∑{digits}[n, 10^#]-n*gcd(2, n)²)`
-/

namespace A159608.P16018965379927208838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033805 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum - n * Nat.gcd 2 n ^ 2)

end

end A159608.P16018965379927208838

/-!
# A159609: G.f. satisfies: A(x) = 1 + Sum_{n>=1} x^n*A(x)^(2^n).

The programs for A159609, there is no canonical definition to state claims against.
-/

/-! ## A159609.P9996393872162525681

`A065033(A307678(n)+A002026(n))`
-/

namespace A159609.P9996393872162525681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A307678 n + A002026 n).toNat

end

end A159609.P9996393872162525681

/-! ## A159609.P447593440576054921

`A110654(A307678(n)+A002026(n))`
-/

namespace A159609.P447593440576054921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A307678 n + A002026 n).toNat

end

end A159609.P447593440576054921

/-! ## A159609.P5529313087373491303

`A004526(A284717(n+1))+A000142(n)`
-/

namespace A159609.P5529313087373491303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A284717 (n + 1)).toNat + A000142 n

end

end A159609.P5529313087373491303

/-!
# A159611: Indices of the Fermat primes in the sequence of primes.

The programs for A159611, there is no canonical definition to state claims against.
-/

/-! ## A159611.P15390243103718908919

`A000720(A019434(n+1))`
-/

namespace A159611.P15390243103718908919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A019434 (n + 1)).toNat

end

end A159611.P15390243103718908919

/-!
# A159612: INVERT transform of (1, 3, 1, 3, 1, ...).

The programs for A159612, the canonical program `A159612.P7866160520777280370` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159612 has offset 1).

The definition of A159612 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159612.P7866160520777280370

`a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159612

/-- `a(n-1)+4*a(n-2)` -/
def P7866160520777280370.Spec : Prop :=
  ∀ n, (P7866160520777280370.a n : ℤ) = A159612 (n + 1)

theorem P7866160520777280370.correct : P7866160520777280370.Spec := by
  intro n
  simp only [A159612, Nat.add_sub_cancel]

end A159612

/-! ## A159612.P13158238455241664581

`a(n-1)+a(n-2)/(1/2)²` with `a(0)=1, a(1)=4`
-/

namespace A159612.P13158238455241664581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A159612.P13158238455241664581

namespace A159612

/-- `a(n-1)+a(n-2)/(1/2)²` -/
def P13158238455241664581.Spec : Prop :=
  ∀ n, P13158238455241664581.a n = (A159612 (n + 1) : ℚ)

end A159612

/-! ## A159612.P12991194543493829797

`4-(4*(1-a(n-2))-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A159612.P12991194543493829797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 - (4 * (1 - a (n - 2)) - a (n - 1))

end

end A159612.P12991194543493829797

namespace A159612

/-- `4-(4*(1-a(n-2))-a(n-1))` -/
def P12991194543493829797.Spec : Prop :=
  ∀ n, P12991194543493829797.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P13952458569951313764

`a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A159612.P13952458569951313764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A159612.P13952458569951313764

namespace A159612

/-- `a(n-2)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P13952458569951313764.Spec : Prop :=
  ∀ n, (P13952458569951313764.a n : ℤ) = A159612 (n + 1)

end A159612

/-! ## A159612.P9798702181778181639

`4*(A026597(n)-a(n-1))` with `a(0)=1`
-/

namespace A159612.P9798702181778181639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (A026597 n - a (n - 1))

end

end A159612.P9798702181778181639

namespace A159612

/-- `4*(A026597(n)-a(n-1))` -/
def P9798702181778181639.Spec : Prop :=
  ∀ n, P9798702181778181639.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P5609916968481366952

`A183774(n)-A006131(n)`
-/

namespace A159612.P5609916968481366952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183774 n - A006131 n

end

end A159612.P5609916968481366952

namespace A159612

/-- `A183774(n)-A006131(n)` -/
def P5609916968481366952.Spec : Prop :=
  ∀ n, P5609916968481366952.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P4801478433205384339

`A052923(n+1)+A052923(n)`
-/

namespace A159612.P4801478433205384339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 (n + 1) + A052923 n

end

end A159612.P4801478433205384339

namespace A159612

/-- `A052923(n+1)+A052923(n)` -/
def P4801478433205384339.Spec : Prop :=
  ∀ n, P4801478433205384339.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P8746906082528575460

`2*A026597(n)-A052923(n)`
-/

namespace A159612.P8746906082528575460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026597 n - A052923 n

end

end A159612.P8746906082528575460

namespace A159612

/-- `2*A026597(n)-A052923(n)` -/
def P8746906082528575460.Spec : Prop :=
  ∀ n, P8746906082528575460.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P9952614502147446852

`A026597(n)+Δ[A006131(n)/2]`
-/

namespace A159612.P9952614502147446852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006131 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A159612.P9952614502147446852

namespace A159612

/-- `A026597(n)+Δ[A006131(n)/2]` -/
def P9952614502147446852.Spec : Prop :=
  ∀ n, P9952614502147446852.a n = (A159612 (n + 1) : ℚ)

end A159612

/-! ## A159612.P14034098486677881372

`A026581(n)+A026597(n)-A006131(n)`
-/

namespace A159612.P14034098486677881372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026581 n + (A026597 n - A006131 n)

end

end A159612.P14034098486677881372

namespace A159612

/-- `A026581(n)+A026597(n)-A006131(n)` -/
def P14034098486677881372.Spec : Prop :=
  ∀ n, P14034098486677881372.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P15527076665910682361

`A006131(n)-(A052923(n)-A026581(n))`
-/

namespace A159612.P15527076665910682361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n - (A052923 n - A026581 n)

end

end A159612.P15527076665910682361

namespace A159612

/-- `A006131(n)-(A052923(n)-A026581(n))` -/
def P15527076665910682361.Spec : Prop :=
  ∀ n, P15527076665910682361.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P6013827821937671597

`Δ[A026597(n)]`
-/

namespace A159612.P6013827821937671597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159612.P6013827821937671597

namespace A159612

/-- `Δ[A026597(n)]` -/
def P6013827821937671597.Spec : Prop :=
  ∀ n, P6013827821937671597.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P10728589080439980182

`Δ[abs(A122112(n))]`
-/

namespace A159612.P10728589080439980182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122112 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159612.P10728589080439980182

namespace A159612

/-- `Δ[abs(A122112(n))]` -/
def P10728589080439980182.Spec : Prop :=
  ∀ n, P10728589080439980182.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P16832108195736602828

`Δ[lcm(A087960(n), A122112(n))]`
-/

namespace A159612.P16832108195736602828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A122112 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A159612.P16832108195736602828

namespace A159612

/-- `Δ[lcm(A087960(n), A122112(n))]` -/
def P16832108195736602828.Spec : Prop :=
  ∀ n, P16832108195736602828.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P797677762899210846

`A026597(n+1)-A026597(n)`
-/

namespace A159612.P797677762899210846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 (n + 1) - A026597 n

end

end A159612.P797677762899210846

namespace A159612

/-- `A026597(n+1)-A026597(n)` -/
def P797677762899210846.Spec : Prop :=
  ∀ n, P797677762899210846.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P4724184096598369038

`2*A026581(n)-A026597(n)`
-/

namespace A159612.P4724184096598369038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026581 n - A026597 n

end

end A159612.P4724184096598369038

namespace A159612

/-- `2*A026581(n)-A026597(n)` -/
def P4724184096598369038.Spec : Prop :=
  ∀ n, P4724184096598369038.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P1425596883455749916

`abs(A122112(n+1)+A122112(n))`
-/

namespace A159612.P1425596883455749916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A122112 (n + 1) + A122112 n|

end

end A159612.P1425596883455749916

namespace A159612

/-- `abs(A122112(n+1)+A122112(n))` -/
def P1425596883455749916.Spec : Prop :=
  ∀ n, P1425596883455749916.a n = A159612 (n + 1)

end A159612

/-! ## A159612.P7049375728629328160

`Δ[A122112(n)/A087960(2*n)]`
-/

namespace A159612.P7049375728629328160
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122112 n : ℚ) / (A087960 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159612.P7049375728629328160

namespace A159612

/-- `Δ[A122112(n)/A087960(2*n)]` -/
def P7049375728629328160.Spec : Prop :=
  ∀ n, P7049375728629328160.a n = (A159612 (n + 1) : ℚ)

end A159612

/-! ## A159612.P14221540684770088159

`Δ[Δ[A026581(n)/2]]`
-/

namespace A159612.P14221540684770088159
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026581 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159612.P14221540684770088159

namespace A159612

/-- `Δ[Δ[A026581(n)/2]]` -/
def P14221540684770088159.Spec : Prop :=
  ∀ n, P14221540684770088159.a n = (A159612 (n + 1) : ℚ)

end A159612

/-!
# A159613: Palindromic primes with multiplicative persistence value 1.

The programs for A159613, there is no canonical definition to state claims against.
-/

/-! ## A159613.P7466699167706434490

`∩[A117055(n+1), A120533(n+1)]`
-/

namespace A159613.P7466699167706434490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159613.P7466699167706434490

/-! ## A159613.P7609613531054487527

`∩[A046501(n+1), Δ[A046489(n)]]`
-/

namespace A159613.P7609613531054487527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159613.P7609613531054487527

/-! ## A159613.P13624469361467055118

`∩[A002113(n+1), A046501(n+1)]`
-/

namespace A159613.P13624469361467055118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159613.P13624469361467055118

/-! ## A159613.P3719069759932463390

`∩[A002385(n+1), A046501(n+1)]`
-/

namespace A159613.P3719069759932463390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159613.P3719069759932463390

/-! ## A159613.P11300605096296351254

`∩[A046501(n+1), A061917(n+1)]`
-/

namespace A159613.P11300605096296351254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159613.P11300605096296351254

/-!
# A159614: Emirps with multiplicative persistence value 1.

The programs for A159614, there is no canonical definition to state claims against.
-/

/-! ## A159614.P13292900438616691090

`∩[A006567(n+1), A046501(n+1)]`
-/

namespace A159614.P13292900438616691090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P13292900438616691090

/-! ## A159614.P17454110176587867392

`∩[A046501(n+1), A068893(n+1)]`
-/

namespace A159614.P17454110176587867392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P17454110176587867392

/-! ## A159614.P8932085971090607164

`∩[A046501(n+1), A109019(n+1)]`
-/

namespace A159614.P8932085971090607164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P8932085971090607164

/-! ## A159614.P7975086161996054650

`∩[A046501(n+1), A350867(n+1)]`
-/

namespace A159614.P7975086161996054650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P7975086161996054650

/-! ## A159614.P1172315455938608779

`∩[A006567(n+1), A062997(n+1)]`
-/

namespace A159614.P1172315455938608779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P1172315455938608779

/-! ## A159614.P10955009144030375563

`∩[A006567(n+1), A046510(n+1)]`
-/

namespace A159614.P10955009144030375563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P10955009144030375563

/-! ## A159614.P6195560701865548189

`∩[A006567(n+1), A062996(n+1)]`
-/

namespace A159614.P6195560701865548189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159614.P6195560701865548189

/-!
# A159615: The slowest increasing sequence beginning with a(1)=2 such that a(n) and n are both odious or both not odious.

The programs for A159615, the canonical program `A159615.P119149432387887771` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159615 has offset 1).

The definition of A159615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159615.P119149432387887771

`∑[abs(a(floor((n-1)/2)))]` with `a(0)=2, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159615

/-- `∑[abs(a(floor((n-1)/2)))]` -/
def P119149432387887771.Spec : Prop :=
  ∀ n, (P119149432387887771.a n : ℤ) = A159615 (n + 1)

theorem P119149432387887771.correct : P119149432387887771.Spec := by
  intro n
  simp only [A159615, Nat.add_sub_cancel]

end A159615

/-! ## A159615.P11314303596674627013

`∑[floor(a(floor((n-1)/2)))]` with `a(0)=2, a(1)=2, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A159615.P11314303596674627013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159615.P11314303596674627013

namespace A159615

/-- `∑[floor(a(floor((n-1)/2)))]` -/
def P11314303596674627013.Spec : Prop :=
  ∀ n, (P11314303596674627013.a n : ℤ) = A159615 (n + 1)

theorem P11314303596674627013.correct : P11314303596674627013.Spec := by
  intro n
  simp only [A159615, Nat.add_sub_cancel, A159615.P11314303596674627013.f1, A159615.P11314303596674627013.a, A159615.P119149432387887771.f1, A159615.P119149432387887771.a, SequenceMachineLib.memo_apply]

end A159615

/-! ## A159615.P9330172898598339586

`∑[ceil(a(ceil(n/2)-1))]` with `a(0)=2, a(1)=2, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A159615.P9330172898598339586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  f1 (⌈(n : ℚ) / 2⌉ - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159615.P9330172898598339586

namespace A159615

/-- `∑[ceil(a(ceil(n/2)-1))]` -/
def P9330172898598339586.Spec : Prop :=
  ∀ n, (P9330172898598339586.a n : ℤ) = A159615 (n + 1)

end A159615

/-! ## A159615.P689470844261100885

`∑[gcd(2, A030109(n+1))]`
-/

namespace A159615.P689470844261100885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A030109 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159615.P689470844261100885

namespace A159615

/-- `∑[gcd(2, A030109(n+1))]` -/
def P689470844261100885.Spec : Prop :=
  ∀ n, (P689470844261100885.a n : ℤ) = A159615 (n + 1)

end A159615

/-! ## A159615.P6766812753792323546

`A078881(n+1)+1+n`
-/

namespace A159615.P6766812753792323546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078881 (n + 1) + 1 + (n : ℤ)

end

end A159615.P6766812753792323546

namespace A159615

/-- `A078881(n+1)+1+n` -/
def P6766812753792323546.Spec : Prop :=
  ∀ n, P6766812753792323546.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P3605335555883417251

`A279521(n+1)+2+n`
-/

namespace A159615.P3605335555883417251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279521 (n + 1) + 2 + (n : ℤ)

end

end A159615.P3605335555883417251

namespace A159615

/-- `A279521(n+1)+2+n` -/
def P3605335555883417251.Spec : Prop :=
  ∀ n, P3605335555883417251.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P1937028073254796359

`∑[2-char[A206332(n+1)]]`
-/

namespace A159615.P1937028073254796359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159615.P1937028073254796359

namespace A159615

/-- `∑[2-char[A206332(n+1)]]` -/
def P1937028073254796359.Spec : Prop :=
  ∀ n, P1937028073254796359.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P10802587533521511882

`2*(n+1)-A277267(n+1)`
-/

namespace A159615.P10802587533521511882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A277267 (n + 1)

end

end A159615.P10802587533521511882

namespace A159615

/-- `2*(n+1)-A277267(n+1)` -/
def P10802587533521511882.Spec : Prop :=
  ∀ n, P10802587533521511882.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P11866254522482102348

`3*(n+1)-A115836(n+1)`
-/

namespace A159615.P11866254522482102348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A115836 (n + 1)

end

end A159615.P11866254522482102348

namespace A159615

/-- `3*(n+1)-A115836(n+1)` -/
def P11866254522482102348.Spec : Prop :=
  ∀ n, P11866254522482102348.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P4358373163465844691

`∑[2-char[A081241(2*(n+1))]]`
-/

namespace A159615.P4358373163465844691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081241 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159615.P4358373163465844691

namespace A159615

/-- `∑[2-char[A081241(2*(n+1))]]` -/
def P4358373163465844691.Spec : Prop :=
  ∀ n, P4358373163465844691.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P12037800269773366203

`∑[2-char[A132196(2*n+1)]]`
-/

namespace A159615.P12037800269773366203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 (2 * n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159615.P12037800269773366203

namespace A159615

/-- `∑[2-char[A132196(2*n+1)]]` -/
def P12037800269773366203.Spec : Prop :=
  ∀ n, P12037800269773366203.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P11198086458489028975

`comp[A053644(n+1)+2*n]+2`
-/

namespace A159615.P11198086458489028975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A159615.P11198086458489028975

namespace A159615

/-- `comp[A053644(n+1)+2*n]+2` -/
def P11198086458489028975.Spec : Prop :=
  ∀ n, (P11198086458489028975.a n : ℤ) = A159615 (n + 1)

end A159615

/-! ## A159615.P13832687122992592625

`2*(n+2)-A080637(n+1)+n`
-/

namespace A159615.P13832687122992592625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A080637 (n + 1) + (n : ℤ)

end

end A159615.P13832687122992592625

namespace A159615

/-- `2*(n+2)-A080637(n+1)+n` -/
def P13832687122992592625.Spec : Prop :=
  ∀ n, P13832687122992592625.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P7463708506091859795

`A180486(n+1)-A007378(n+2)`
-/

namespace A159615.P7463708506091859795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1) - A007378 (n + 2)

end

end A159615.P7463708506091859795

namespace A159615

/-- `A180486(n+1)-A007378(n+2)` -/
def P7463708506091859795.Spec : Prop :=
  ∀ n, P7463708506091859795.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P9944879847146785864

`A294456(n+2)+1`
-/

namespace A159615.P9944879847146785864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 2) + 1

end

end A159615.P9944879847146785864

namespace A159615

/-- `A294456(n+2)+1` -/
def P9944879847146785864.Spec : Prop :=
  ∀ n, P9944879847146785864.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P8152527151615371024

`A275202(n+2)-1`
-/

namespace A159615.P8152527151615371024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275202 (n + 2) - 1

end

end A159615.P8152527151615371024

namespace A159615

/-- `A275202(n+2)-1` -/
def P8152527151615371024.Spec : Prop :=
  ∀ n, P8152527151615371024.a n = A159615 (n + 1)

end A159615

/-! ## A159615.P6663581181439898363

`(A214214(n+2)-1)/2`
-/

namespace A159615.P6663581181439898363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214214 (n + 2) - 1 : ℚ) / 2

end

end A159615.P6663581181439898363

namespace A159615

/-- `(A214214(n+2)-1)/2` -/
def P6663581181439898363.Spec : Prop :=
  ∀ n, P6663581181439898363.a n = (A159615 (n + 1) : ℚ)

end A159615

/-! ## A159615.P13669570332821190750

`A006165(n+2)+1+n`
-/

namespace A159615.P13669570332821190750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 2) + 1 + (n : ℤ)

end

end A159615.P13669570332821190750

namespace A159615

/-- `A006165(n+2)+1+n` -/
def P13669570332821190750.Spec : Prop :=
  ∀ n, P13669570332821190750.a n = A159615 (n + 1)

end A159615

/-!
# A159616: Expansion of (1-x)/(1-5*x-2*x^2+8*x^3).

The programs for A159616, the canonical program `A159616.P5885640055309484818` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159616 has offset 0).

The definition of A159616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159616.P5885640055309484818

`5*a(n-1)+2*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=22`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159616

/-- `5*a(n-1)+2*a(n-2)-8*a(n-3)` -/
def P5885640055309484818.Spec : Prop :=
  ∀ n, P5885640055309484818.a n = A159616 n

theorem P5885640055309484818.correct : P5885640055309484818.Spec := by
  intro n
  simp only [A159616]

end A159616

/-!
# A159617: G.f.: (1-x)/(1-8*x-8*x^2+8*x^3).

The programs for A159617, the canonical program `A159617.P8025375314088827828` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159617 has offset 0).

The definition of A159617 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159617.P8025375314088827828

`8*a(n-1)+8*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=7, a(2)=64`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159617

/-- `8*a(n-1)+8*a(n-2)-8*a(n-3)` -/
def P8025375314088827828.Spec : Prop :=
  ∀ n, P8025375314088827828.a n = A159617 n

theorem P8025375314088827828.correct : P8025375314088827828.Spec := by
  intro n
  simp only [A159617]

end A159617

/-! ## A159617.P6795851800372665939

`Δ[8*(a(n-1)+a(n-2)-a(n-3))]` with `a(0)=0, a(1)=1, a(2)=8`
-/

namespace A159617.P6795851800372665939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 8] fun n f1 =>
  8 * (f1 (n - 1) + f1 (n - 2) - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159617.P6795851800372665939

namespace A159617

/-- `Δ[8*(a(n-1)+a(n-2)-a(n-3))]` -/
def P6795851800372665939.Spec : Prop :=
  ∀ n, P6795851800372665939.a n = A159617 n

end A159617

/-!
# A159619: Slowest increasing sequence beginning with 4 such that n and a(n) are either both evil or both odious.

The programs for A159619, the canonical program `A159619.P11099611534126783064` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159619 has offset 1).

The definition of A159619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159619.P11099611534126783064

`xor(1, or(2*n, val(n+2, 2)²)+4)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159619

/-- `xor(1, or(2*n, val(n+2, 2)²)+4)` -/
def P11099611534126783064.Spec : Prop :=
  ∀ n, (P11099611534126783064.a n : ℤ) = A159619 (n + 1)

theorem P11099611534126783064.correct : P11099611534126783064.Spec := by
  intro n
  simp only [A159619, Nat.add_sub_cancel]

end A159619

/-! ## A159619.P17570122346699537223

`A035263(n+2)+2*(n+2)`
-/

namespace A159619.P17570122346699537223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2) + (2 * (n + 2) : ℤ)

end

end A159619.P17570122346699537223

namespace A159619

/-- `A035263(n+2)+2*(n+2)` -/
def P17570122346699537223.Spec : Prop :=
  ∀ n, P17570122346699537223.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P96679746768264334

`2*n+5-A096268(n+1)`
-/

namespace A159619.P96679746768264334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) - A096268 (n + 1)

end

end A159619.P96679746768264334

namespace A159619

/-- `2*n+5-A096268(n+1)` -/
def P96679746768264334.Spec : Prop :=
  ∀ n, P96679746768264334.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P9431633935961934007

`A005843(n+1)+A035263(n+2)+2`
-/

namespace A159619.P9431633935961934007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + (A035263 (n + 2) + 2)

end

end A159619.P9431633935961934007

namespace A159619

/-- `A005843(n+1)+A035263(n+2)+2` -/
def P9431633935961934007.Spec : Prop :=
  ∀ n, P9431633935961934007.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P7378547877894196570

`A026491(n+2)-1`
-/

namespace A159619.P7378547877894196570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (n + 2) - 1

end

end A159619.P7378547877894196570

namespace A159619

/-- `A026491(n+2)-1` -/
def P7378547877894196570.Spec : Prop :=
  ∀ n, P7378547877894196570.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P4792129285607642238

`2*(n+3)-A056832(n+2)`
-/

namespace A159619.P4792129285607642238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) - A056832 (n + 2)

end

end A159619.P4792129285607642238

namespace A159619

/-- `2*(n+3)-A056832(n+2)` -/
def P4792129285607642238.Spec : Prop :=
  ∀ n, P4792129285607642238.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P11017684536603819282

`∑[2-Δ[A056832(n+1)]]+3`
-/

namespace A159619.P11017684536603819282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A159619.P11017684536603819282

namespace A159619

/-- `∑[2-Δ[A056832(n+1)]]+3` -/
def P11017684536603819282.Spec : Prop :=
  ∀ n, P11017684536603819282.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P14251109785620768114

`Δ[(n+2)²-A123087(n+1)]`
-/

namespace A159619.P14251109785620768114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A123087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159619.P14251109785620768114

namespace A159619

/-- `Δ[(n+2)²-A123087(n+1)]` -/
def P14251109785620768114.Spec : Prop :=
  ∀ n, P14251109785620768114.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P16137639567624585094

`A003159(A050292(n+2))+n+3`
-/

namespace A159619.P16137639567624585094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (A050292 (n + 2)).toNat + (n + 3 : ℤ)

end

end A159619.P16137639567624585094

namespace A159619

/-- `A003159(A050292(n+2))+n+3` -/
def P16137639567624585094.Spec : Prop :=
  ∀ n, P16137639567624585094.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P11352765914883896045

`A056832(n+2)+A036554(A050292(n+2))`
-/

namespace A159619.P11352765914883896045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 2) + A036554 (A050292 (n + 2)).toNat

end

end A159619.P11352765914883896045

namespace A159619

/-- `A056832(n+2)+A036554(A050292(n+2))` -/
def P11352765914883896045.Spec : Prop :=
  ∀ n, P11352765914883896045.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P5809158563472679622

`A003157(n+2)+A035263(n+2)-A003156(n+2)`
-/

namespace A159619.P5809158563472679622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003157 (n + 2) + (A035263 (n + 2) - A003156 (n + 2))

end

end A159619.P5809158563472679622

namespace A159619

/-- `A003157(n+2)+A035263(n+2)-A003156(n+2)` -/
def P5809158563472679622.Spec : Prop :=
  ∀ n, P5809158563472679622.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P6026133288074998776

`A285383(n+3)+2*(n+2)`
-/

namespace A159619.P6026133288074998776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 3) + (2 * (n + 2) : ℤ)

end

end A159619.P6026133288074998776

namespace A159619

/-- `A285383(n+3)+2*(n+2)` -/
def P6026133288074998776.Spec : Prop :=
  ∀ n, P6026133288074998776.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P15143656085560717048

`A285384(n+3)+2*(n+2)`
-/

namespace A159619.P15143656085560717048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 3) + (2 * (n + 2) : ℤ)

end

end A159619.P15143656085560717048

namespace A159619

/-- `A285384(n+3)+2*(n+2)` -/
def P15143656085560717048.Spec : Prop :=
  ∀ n, P15143656085560717048.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P4792475067085476002

`2*n+5-A284948(n+3)`
-/

namespace A159619.P4792475067085476002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) - A284948 (n + 3)

end

end A159619.P4792475067085476002

namespace A159619

/-- `2*n+5-A284948(n+3)` -/
def P4792475067085476002.Spec : Prop :=
  ∀ n, P4792475067085476002.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P6902306366807515332

`2*n+5-A328979(n+3)`
-/

namespace A159619.P6902306366807515332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) - A328979 (n + 3)

end

end A159619.P6902306366807515332

namespace A159619

/-- `2*n+5-A328979(n+3)` -/
def P6902306366807515332.Spec : Prop :=
  ∀ n, P6902306366807515332.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P4254672773532047825

`Δ[A260479(n+2)+(n+1)²]`
-/

namespace A159619.P4254672773532047825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260479 (n + 2) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159619.P4254672773532047825

namespace A159619

/-- `Δ[A260479(n+2)+(n+1)²]` -/
def P4254672773532047825.Spec : Prop :=
  ∀ n, P4254672773532047825.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P15565839963576125382

`A005843(n+3)-A191254(2*(n+2))`
-/

namespace A159619.P15565839963576125382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 3) - A191254 (2 * (n + 2))

end

end A159619.P15565839963576125382

namespace A159619

/-- `A005843(n+3)-A191254(2*(n+2))` -/
def P15565839963576125382.Spec : Prop :=
  ∀ n, P15565839963576125382.a n = A159619 (n + 1)

end A159619

/-! ## A159619.P13952319478563379274

`∑[Δ[A010872(xor(n, n+1))]+2]+3`
-/

namespace A159619.P13952319478563379274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (Nat.xor n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A159619.P13952319478563379274

namespace A159619

/-- `∑[Δ[A010872(xor(n, n+1))]+2]+3` -/
def P13952319478563379274.Spec : Prop :=
  ∀ n, P13952319478563379274.a n = A159619 (n + 1)

end A159619

/-!
# A159623: Triangle read by rows: T(n, k) = n!*q^k/(n-k)! if floor(n/2) > k-1 otherwise n!*q^(n-k)/k!, with q = 1.

The programs for A159623, the canonical program `A159623.P17951004885206147475` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159623 has offset 0).

The definition of A159623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159623.P15472398457860948921

`A174376(n)/A144464(n)`
-/

namespace A159623.P15472398457860948921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n : ℚ) / (A144464 n : ℚ)

end

end A159623.P15472398457860948921

namespace A159623

/-- `A174376(n)/A144464(n)` -/
def P15472398457860948921.Spec : Prop :=
  ∀ n, P15472398457860948921.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P8872280941278464144

`A174377(n)/A152714(n)`
-/

namespace A159623.P8872280941278464144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174377 n : ℚ) / (A152714 n : ℚ)

end

end A159623.P8872280941278464144

namespace A159623

/-- `A174377(n)/A152714(n)` -/
def P8872280941278464144.Spec : Prop :=
  ∀ n, P8872280941278464144.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P9100737241987904014

`A174378(n)/A152716(n)`
-/

namespace A159623.P9100737241987904014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A152716 n : ℚ)

end

end A159623.P9100737241987904014

namespace A159623

/-- `A174378(n)/A152716(n)` -/
def P9100737241987904014.Spec : Prop :=
  ∀ n, P9100737241987904014.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P17951004885206147475

`gcd(A008279(n), A094587(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A159623

/-- `gcd(A008279(n), A094587(n))` -/
def P17951004885206147475.Spec : Prop :=
  ∀ n, (P17951004885206147475.a n : ℤ) = A159623 n

theorem P17951004885206147475.correct : P17951004885206147475.Spec := by
  intro n
  simp only [A159623]

end A159623

/-! ## A159623.P13204691685536225548

`gcd(A174376(n), A174377(n))`
-/

namespace A159623.P13204691685536225548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174376 n) (A174377 n)

end

end A159623.P13204691685536225548

namespace A159623

/-- `gcd(A174376(n), A174377(n))` -/
def P13204691685536225548.Spec : Prop :=
  ∀ n, (P13204691685536225548.a n : ℤ) = A159623 n

end A159623

/-! ## A159623.P7124823262938704888

`gcd(A177974(n), A306015(n))`
-/

namespace A159623.P7124823262938704888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A177974 n) (A306015 n)

end

end A159623.P7124823262938704888

namespace A159623

/-- `gcd(A177974(n), A306015(n))` -/
def P7124823262938704888.Spec : Prop :=
  ∀ n, (P7124823262938704888.a n : ℤ) = A159623 n

end A159623

/-! ## A159623.P12651268346766762307

`A174378(n)/A144464(n)²`
-/

namespace A159623.P12651268346766762307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A144464 n ^ 2 : ℚ)

end

end A159623.P12651268346766762307

namespace A159623

/-- `A174378(n)/A144464(n)²` -/
def P12651268346766762307.Spec : Prop :=
  ∀ n, P12651268346766762307.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P12640848632616318963

`A174376(n)²/A174378(n)`
-/

namespace A159623.P12640848632616318963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n ^ 2 : ℚ) / (A174378 n : ℚ)

end

end A159623.P12640848632616318963

namespace A159623

/-- `A174376(n)²/A174378(n)` -/
def P12640848632616318963.Spec : Prop :=
  ∀ n, P12640848632616318963.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P8412809453886816175

`A004197(n)!*A007318(n)`
-/

namespace A159623.P8412809453886816175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004197 n).toNat : ℤ) * A007318 n

end

end A159623.P8412809453886816175

namespace A159623

/-- `A004197(n)!*A007318(n)` -/
def P8412809453886816175.Spec : Prop :=
  ∀ n, P8412809453886816175.a n = A159623 n

end A159623

/-! ## A159623.P12123589788970886031

`A174376(n)/A000079(A004197(n))`
-/

namespace A159623.P12123589788970886031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n : ℚ) / (A000079 (A004197 n).toNat : ℚ)

end

end A159623.P12123589788970886031

namespace A159623

/-- `A174376(n)/A000079(A004197(n))` -/
def P12123589788970886031.Spec : Prop :=
  ∀ n, P12123589788970886031.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P1769580200325691313

`A174378(n)/A000079(A004197(n))²`
-/

namespace A159623.P1769580200325691313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A000079 (A004197 n).toNat ^ 2 : ℚ)

end

end A159623.P1769580200325691313

namespace A159623

/-- `A174378(n)/A000079(A004197(n))²` -/
def P1769580200325691313.Spec : Prop :=
  ∀ n, P1769580200325691313.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P3036070475385753863

`(A014473(n)+1)*A081123(A157458(n))`
-/

namespace A159623.P3036070475385753863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A081123 (A157458 n).toNat

end

end A159623.P3036070475385753863

namespace A159623

/-- `(A014473(n)+1)*A081123(A157458(n))` -/
def P3036070475385753863.Spec : Prop :=
  ∀ n, P3036070475385753863.a n = A159623 n

end A159623

/-! ## A159623.P7533334015785112384

`A174376(n)/A011782(A003983(n+1))`
-/

namespace A159623.P7533334015785112384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174376 n : ℚ) / (A011782 (A003983 (n + 1)).toNat : ℚ)

end

end A159623.P7533334015785112384

namespace A159623

/-- `A174376(n)/A011782(A003983(n+1))` -/
def P7533334015785112384.Spec : Prop :=
  ∀ n, P7533334015785112384.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P9485423337832480726

`A174378(n)/A000079(2*A004197(n))`
-/

namespace A159623.P9485423337832480726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A000079 (2 * A004197 n).toNat : ℚ)

end

end A159623.P9485423337832480726

namespace A159623

/-- `A174378(n)/A000079(2*A004197(n))` -/
def P9485423337832480726.Spec : Prop :=
  ∀ n, P9485423337832480726.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P1037923906393822653

`A174378(n)/A016116(A157454(n+1))²`
-/

namespace A159623.P1037923906393822653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174378 n : ℚ) / (A016116 (A157454 (n + 1)).toNat ^ 2 : ℚ)

end

end A159623.P1037923906393822653

namespace A159623

/-- `A174378(n)/A016116(A157454(n+1))²` -/
def P1037923906393822653.Spec : Prop :=
  ∀ n, P1037923906393822653.a n = (A159623 n : ℚ)

end A159623

/-! ## A159623.P18112261328030641746

`(A014473(n)+1)*A081123(A157454(n+1))`
-/

namespace A159623.P18112261328030641746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A081123 (A157454 (n + 1)).toNat

end

end A159623.P18112261328030641746

namespace A159623

/-- `(A014473(n)+1)*A081123(A157454(n+1))` -/
def P18112261328030641746.Spec : Prop :=
  ∀ n, P18112261328030641746.a n = A159623 n

end A159623

/-! ## A159623.P876547709945265483

`(A014473(n)+1)*A112624(A152714(n))`
-/

namespace A159623.P876547709945265483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A112624 (A152714 n).toNat

end

end A159623.P876547709945265483

namespace A159623

/-- `(A014473(n)+1)*A112624(A152714(n))` -/
def P876547709945265483.Spec : Prop :=
  ∀ n, P876547709945265483.a n = A159623 n

end A159623

/-!
# A159624: a(n)=A159619(2n)-A159615(2n).

The programs for A159624, the canonical program `A159624.P9845643586274726781` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159624 has offset 1).

The definition of A159624 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A159615, A159619, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159624.P9845643586274726781

`A159619(2*(n+1))-A159615(2*(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159624

/-- `A159619(2*(n+1))-A159615(2*(n+1))` -/
def P9845643586274726781.Spec : Prop :=
  ∀ n, P9845643586274726781.a n = A159624 (n + 1)

theorem P9845643586274726781.correct : P9845643586274726781.Spec := by
  intro n
  simp only [A159624, Nat.add_sub_cancel]

end A159624

/-! ## A159624.P16929953873299507422

`A166079(2*(n+2))+1`
-/

namespace A159624.P16929953873299507422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166079 (2 * (n + 2)) + 1

end

end A159624.P16929953873299507422

namespace A159624

/-- `A166079(2*(n+2))+1` -/
def P16929953873299507422.Spec : Prop :=
  ∀ n, P16929953873299507422.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P1107998327466081115

`A277267(2*(n+1))+3`
-/

namespace A159624.P1107998327466081115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277267 (2 * (n + 1)) + 3

end

end A159624.P1107998327466081115

namespace A159624

/-- `A277267(2*(n+1))+3` -/
def P1107998327466081115.Spec : Prop :=
  ∀ n, P1107998327466081115.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P3006516054790366109

`A352228(2*(n+2))+2`
-/

namespace A159624.P3006516054790366109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (2 * (n + 2)) + 2

end

end A159624.P3006516054790366109

namespace A159624

/-- `A352228(2*(n+2))+2` -/
def P3006516054790366109.Spec : Prop :=
  ∀ n, P3006516054790366109.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P6671143770129693628

`A060973(2*n+3)+2`
-/

namespace A159624.P6671143770129693628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (2 * n + 3) + 2

end

end A159624.P6671143770129693628

namespace A159624

/-- `A060973(2*n+3)+2` -/
def P6671143770129693628.Spec : Prop :=
  ∀ n, P6671143770129693628.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P10037889949804329466

`A079905(2*(n+1))-2*n`
-/

namespace A159624.P10037889949804329466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (2 * (n + 1)) - (2 * n : ℤ)

end

end A159624.P10037889949804329466

namespace A159624

/-- `A079905(2*(n+1))-2*n` -/
def P10037889949804329466.Spec : Prop :=
  ∀ n, P10037889949804329466.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P8478431759256154937

`A080637(2*(n+1))-2*n`
-/

namespace A159624.P8478431759256154937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 (2 * (n + 1)) - (2 * n : ℤ)

end

end A159624.P8478431759256154937

namespace A159624

/-- `A080637(2*(n+1))-2*n` -/
def P8478431759256154937.Spec : Prop :=
  ∀ n, P8478431759256154937.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P2113970819656351928

`A007378(2*n+3)-Δ[n²]`
-/

namespace A159624.P2113970819656351928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (2 * n + 3) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A159624.P2113970819656351928

namespace A159624

/-- `A007378(2*n+3)-Δ[n²]` -/
def P2113970819656351928.Spec : Prop :=
  ∀ n, P2113970819656351928.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P14382709175534760093

`2*n+5-A078881(2*(n+1))`
-/

namespace A159624.P14382709175534760093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℤ) - A078881 (2 * (n + 1))

end

end A159624.P14382709175534760093

namespace A159624

/-- `2*n+5-A078881(2*(n+1))` -/
def P14382709175534760093.Spec : Prop :=
  ∀ n, P14382709175534760093.a n = A159624 (n + 1)

end A159624

/-! ## A159624.P9959034828821285601

`A006165(A079905(n+1))+2`
-/

namespace A159624.P9959034828821285601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (A079905 (n + 1)).toNat + 2

end

end A159624.P9959034828821285601

namespace A159624

/-- `A006165(A079905(n+1))+2` -/
def P9959034828821285601.Spec : Prop :=
  ∀ n, P9959034828821285601.a n = A159624 (n + 1)

end A159624

/-!
# A159630: Dimension of space of modular forms for Gamma_0(4*n) of weight 3/2 and trivial character.

The programs for A159630, there is no canonical definition to state claims against.
-/

/-! ## A159630.P7100189579840730241

`A159634(n+1)-A159636(n+1)`
-/

namespace A159630.P7100189579840730241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (n + 1) - A159636 (n + 1)

end

end A159630.P7100189579840730241

/-! ## A159630.P4099286507655754188

`A157227(2*(n+1))-A159636(n+1)`
-/

namespace A159630.P4099286507655754188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157227 (2 * (n + 1)) - A159636 (n + 1)

end

end A159630.P4099286507655754188

/-! ## A159630.P13333654092663286050

`A001615(2*(n+1))/3-A159636(n+1)`
-/

namespace A159630.P13333654092663286050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (2 * (n + 1)) : ℚ) / 3 - (A159636 (n + 1) : ℚ)

end

end A159630.P13333654092663286050

/-! ## A159630.P13630742629668075601

`A070732(2*(n+1))/(3*(n+1))-A159636(n+1)`
-/

namespace A159630.P13630742629668075601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070732 (2 * (n + 1)) : ℚ) / (3 * (n + 1) : ℚ) - (A159636 (n + 1) : ℚ)

end

end A159630.P13630742629668075601

/-! ## A159630.P15412462063549747209

`A000082(2*(n+1))/(6*(n+1))-A159636(n+1)`
-/

namespace A159630.P15412462063549747209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (2 * (n + 1)) : ℚ) / (6 * (n + 1) : ℚ) - (A159636 (n + 1) : ℚ)

end

end A159630.P15412462063549747209

/-! ## A159630.P11316056159012181628

`A159632(n+1)+A159633(n+1)-A046951(n+1)`
-/

namespace A159630.P11316056159012181628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159632 (n + 1) + (A159633 (n + 1) - A046951 (n + 1))

end

end A159630.P11316056159012181628

/-! ## A159630.P2168169915049701339

`A159632(n+1)+A159633(n+1)-A159631(n+1)`
-/

namespace A159630.P2168169915049701339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159632 (n + 1) + (A159633 (n + 1) - A159631 (n + 1))

end

end A159630.P2168169915049701339

/-! ## A159630.P12927280969139749920

`A159633(n+1)+A159634(n+1)-A159635(n+1)`
-/

namespace A159630.P12927280969139749920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159633 (n + 1) + (A159634 (n + 1) - A159635 (n + 1))

end

end A159630.P12927280969139749920

/-!
# A159632: Dimension of space of cusp forms of weight 3/2, level 4*n and trivial character.

The programs for A159632, there is no canonical definition to state claims against.
-/

/-! ## A159632.P3264000048182500295

`A046951(n+1)+A159630(n+1)-A159633(n+1)`
-/

namespace A159632.P3264000048182500295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A159630 (n + 1) - A159633 (n + 1))

end

end A159632.P3264000048182500295

/-! ## A159632.P2308599922773119365

`A159630(n+1)+A159631(n+1)-A159633(n+1)`
-/

namespace A159632.P2308599922773119365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159630 (n + 1) + (A159631 (n + 1) - A159633 (n + 1))

end

end A159632.P2308599922773119365

/-! ## A159632.P10696729399659477622

`A046951(n+1)+A159634(n+1)-A159635(n+1)`
-/

namespace A159632.P10696729399659477622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A159634 (n + 1) - A159635 (n + 1))

end

end A159632.P10696729399659477622

/-! ## A159632.P6923364339048369462

`A159631(n+1)+A159634(n+1)-A159635(n+1)`
-/

namespace A159632.P6923364339048369462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (n + 1) + (A159634 (n + 1) - A159635 (n + 1))

end

end A159632.P6923364339048369462

/-! ## A159632.P10531060177046318456

`A037819(floor(A036378(n)/A046951(n+1)))`
-/

namespace A159632.P10531060177046318456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 ⌊(A036378 n : ℚ) / (A046951 (n + 1) : ℚ)⌋.toNat

end

end A159632.P10531060177046318456

/-!
# A159633: Dimension of Eisenstein subspace of the space of modular forms of weight k/2, level 4*n and trivial character, where k>=5 is odd.

The programs for A159633, there is no canonical definition to state claims against.
-/

/-! ## A159633.P13885055146841510805

`A001616((n+1)*A135376(n+1))`
-/

namespace A159633.P13885055146841510805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((n + 1 : ℤ) * A135376 (n + 1)).toNat

end

end A159633.P13885055146841510805

/-! ## A159633.P14906385557823272691

`A001616(2*(n+1)*A177704(n))`
-/

namespace A159633.P14906385557823272691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 ((2 * (n + 1) : ℤ) * A177704 n).toNat

end

end A159633.P14906385557823272691

/-! ## A159633.P14976904335306433597

`A001616((n+1)/gcd(2*(n-1), A086112(n+1)))+A001616(n+1)`
-/

namespace A159633.P14976904335306433597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001616 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (2 * ((n : ℤ) - 1)) (A086112 (n + 1)) : ℚ))).toNat + A001616 (n + 1)

end

end A159633.P14976904335306433597

/-! ## A159633.P16921265743895396709

`A046951(n+1)+A159634(n+1)-A159632(n+1)-A159636(n+1)`
-/

namespace A159633.P16921265743895396709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A159634 (n + 1) - A159632 (n + 1)) - A159636 (n + 1)

end

end A159633.P16921265743895396709

/-! ## A159633.P10613010881882692987

`A159631(n+1)+A159634(n+1)-A159632(n+1)-A159636(n+1)`
-/

namespace A159633.P10613010881882692987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (n + 1) + (A159634 (n + 1) - A159632 (n + 1)) - A159636 (n + 1)

end

end A159633.P10613010881882692987

/-! ## A159633.P14724770749083959669

`A046951(n+1)+A159630(n+1)-A159632(n+1)`
-/

namespace A159633.P14724770749083959669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A159630 (n + 1) - A159632 (n + 1))

end

end A159633.P14724770749083959669

/-! ## A159633.P8497382970103902145

`A159630(n+1)+A159631(n+1)-A159632(n+1)`
-/

namespace A159633.P8497382970103902145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159630 (n + 1) + (A159631 (n + 1) - A159632 (n + 1))

end

end A159633.P8497382970103902145

/-! ## A159633.P11850746467395517575

`A159635(n+1)-A159636(n+1)`
-/

namespace A159633.P11850746467395517575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159635 (n + 1) - A159636 (n + 1)

end

end A159633.P11850746467395517575

/-! ## A159633.P754556786887664252

`A159635(n+1)+A057428(n)*A159636(n+1)`
-/

namespace A159633.P754556786887664252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159635 (n + 1) + A057428 n * A159636 (n + 1)

end

end A159633.P754556786887664252

/-! ## A159633.P13633985227005020083

`A159630(n+1)+A159635(n+1)-A159634(n+1)`
-/

namespace A159633.P13633985227005020083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159630 (n + 1) + (A159635 (n + 1) - A159634 (n + 1))

end

end A159633.P13633985227005020083

/-!
# A159634: Coefficient for dimensions of spaces of modular & cusp forms of weight k/2, level 4*n and trivial character, where k>=5 is odd.

The programs for A159634, the canonical program `A159634.P11967709027105384687` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159634 has offset 1).

The definition of A159634 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000082, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159634.P11967709027105384687

`A000082(n+1)/A080512(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A159634

/-- `A000082(n+1)/A080512(n+1)` -/
def P11967709027105384687.Spec : Prop :=
  ∀ n, P11967709027105384687.a n = (A159634 (n + 1) : ℚ)

end A159634

/-! ## A159634.P12315303427309654162

`A001615(2*(n+1))/3`
-/

namespace A159634.P12315303427309654162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (2 * (n + 1)) : ℚ) / 3

end

end A159634.P12315303427309654162

namespace A159634

/-- `A001615(2*(n+1))/3` -/
def P12315303427309654162.Spec : Prop :=
  ∀ n, P12315303427309654162.a n = (A159634 (n + 1) : ℚ)

end A159634

/-! ## A159634.P8481641755001944791

`A159636(n+1)+A159630(n+1)`
-/

namespace A159634.P8481641755001944791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159636 (n + 1) + A159630 (n + 1)

end

end A159634.P8481641755001944791

namespace A159634

/-- `A159636(n+1)+A159630(n+1)` -/
def P8481641755001944791.Spec : Prop :=
  ∀ n, P8481641755001944791.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P13516940286940350320

`2^val(n+1, 2)*A347385(n+1)`
-/

namespace A159634.P13516940286940350320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A347385 (n + 1)

end

end A159634.P13516940286940350320

namespace A159634

/-- `2^val(n+1, 2)*A347385(n+1)` -/
def P13516940286940350320.Spec : Prop :=
  ∀ n, P13516940286940350320.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P519346318651458242

`∑{d}[n+1, #*A323239((n+1)/#)]`
-/

namespace A159634.P519346318651458242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A323239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P519346318651458242

namespace A159634

/-- `∑{d}[n+1, #*A323239((n+1)/#)]` -/
def P519346318651458242.Spec : Prop :=
  ∀ n, P519346318651458242.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P13146203375489162927

`A000034(n)*A253629(n+1)`
-/

namespace A159634.P13146203375489162927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A253629 (n + 1)

end

end A159634.P13146203375489162927

namespace A159634

/-- `A000034(n)*A253629(n+1)` -/
def P13146203375489162927.Spec : Prop :=
  ∀ n, P13146203375489162927.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P14114347878252095045

`A006519(n+1)*A347385(n+1)`
-/

namespace A159634.P14114347878252095045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A347385 (n + 1)

end

end A159634.P14114347878252095045

namespace A159634

/-- `A006519(n+1)*A347385(n+1)` -/
def P14114347878252095045.Spec : Prop :=
  ∀ n, P14114347878252095045.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P13958707798836204524

`A206787(n+1)*A357689(n+1)`
-/

namespace A159634.P13958707798836204524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206787 (n + 1) * A357689 (n + 1)

end

end A159634.P13958707798836204524

namespace A159634

/-- `A206787(n+1)*A357689(n+1)` -/
def P13958707798836204524.Spec : Prop :=
  ∀ n, P13958707798836204524.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P14933122458106672067

`∑{d}[n+1, A000010(#)*A068068((n+1)/#)]`
-/

namespace A159634.P14933122458106672067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A068068 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P14933122458106672067

namespace A159634

/-- `∑{d}[n+1, A000010(#)*A068068((n+1)/#)]` -/
def P14933122458106672067.Spec : Prop :=
  ∀ n, P14933122458106672067.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P18287644377496351100

`∑{d}[n+1, A007431(#)*A078644((n+1)/#)]`
-/

namespace A159634.P18287644377496351100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A078644 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P18287644377496351100

namespace A159634

/-- `∑{d}[n+1, A007431(#)*A078644((n+1)/#)]` -/
def P18287644377496351100.Spec : Prop :=
  ∀ n, P18287644377496351100.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P9530251129513538836

`∑{d}[n+1, A035263(#)*A063659((n+1)/#)]`
-/

namespace A159634.P9530251129513538836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035263 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P9530251129513538836

namespace A159634

/-- `∑{d}[n+1, A035263(#)*A063659((n+1)/#)]` -/
def P9530251129513538836.Spec : Prop :=
  ∀ n, P9530251129513538836.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P3036537850200025849

`∑{d}[n+1, A091400(#)*A204617((n+1)/#)]`
-/

namespace A159634.P3036537850200025849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091400 d * A204617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P3036537850200025849

namespace A159634

/-- `∑{d}[n+1, A091400(#)*A204617((n+1)/#)]` -/
def P3036537850200025849.Spec : Prop :=
  ∀ n, P3036537850200025849.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P12962575352860066715

`∑{d}[n+1, A130107(#)*A174273((n+1)/#)]`
-/

namespace A159634.P12962575352860066715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P12962575352860066715

namespace A159634

/-- `∑{d}[n+1, A130107(#)*A174273((n+1)/#)]` -/
def P12962575352860066715.Spec : Prop :=
  ∀ n, P12962575352860066715.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P5598205494179642585

`∑{d}[n+1, A008966(#)*A335115((n+1)/#)]`
-/

namespace A159634.P5598205494179642585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A335115 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P5598205494179642585

namespace A159634

/-- `∑{d}[n+1, A008966(#)*A335115((n+1)/#)]` -/
def P5598205494179642585.Spec : Prop :=
  ∀ n, P5598205494179642585.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P15167385357364348930

`∑{d}[n+1, A000203(#)*A359548((n+1)/#)]`
-/

namespace A159634.P15167385357364348930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A359548 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P15167385357364348930

namespace A159634

/-- `∑{d}[n+1, A000203(#)*A359548((n+1)/#)]` -/
def P15167385357364348930.Spec : Prop :=
  ∀ n, P15167385357364348930.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P5843247092103292659

`∑{d}[n+1, A229297(#)*A254503((n+1)/#)]`
-/

namespace A159634.P5843247092103292659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A229297 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P5843247092103292659

namespace A159634

/-- `∑{d}[n+1, A229297(#)*A254503((n+1)/#)]` -/
def P5843247092103292659.Spec : Prop :=
  ∀ n, P5843247092103292659.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P763112559834169148

`∑{d}[n+1, A326305(#)*A365207((n+1)/#)]`
-/

namespace A159634.P763112559834169148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A365207 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P763112559834169148

namespace A159634

/-- `∑{d}[n+1, A326305(#)*A365207((n+1)/#)]` -/
def P763112559834169148.Spec : Prop :=
  ∀ n, P763112559834169148.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P8794998500309988512

`∑{d}[n+1, A350872(#)*A395768((n+1)/#)]`
-/

namespace A159634.P8794998500309988512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A350872 d * A395768 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P8794998500309988512

namespace A159634

/-- `∑{d}[n+1, A350872(#)*A395768((n+1)/#)]` -/
def P8794998500309988512.Spec : Prop :=
  ∀ n, P8794998500309988512.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P9321690150262275675

`∑{d}[n+1, A035109(#-1)*A067856((n+1)/#)]`
-/

namespace A159634.P9321690150262275675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035109 (d - 1) * A067856 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P9321690150262275675

namespace A159634

/-- `∑{d}[n+1, A035109(#-1)*A067856((n+1)/#)]` -/
def P9321690150262275675.Spec : Prop :=
  ∀ n, P9321690150262275675.a n = A159634 (n + 1)

end A159634

/-! ## A159634.P2039705314427791066

`∑{d}[n+1, A036987(#-1)*A253629((n+1)/#)]`
-/

namespace A159634.P2039705314427791066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A253629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A159634.P2039705314427791066

namespace A159634

/-- `∑{d}[n+1, A036987(#-1)*A253629((n+1)/#)]` -/
def P2039705314427791066.Spec : Prop :=
  ∀ n, P2039705314427791066.a n = A159634 (n + 1)

end A159634

/-!
# A159635: Dimension of space of modular forms of weight 5/2, level 4*n and trivial character.

The programs for A159635, there is no canonical definition to state claims against.
-/

/-! ## A159635.P1954885740124963816

`A159636(n+1)+A159633(n+1)`
-/

namespace A159635.P1954885740124963816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159636 (n + 1) + A159633 (n + 1)

end

end A159635.P1954885740124963816

/-! ## A159635.P10578422346048850436

`A046951(n+1)+A159634(n+1)-A159632(n+1)`
-/

namespace A159635.P10578422346048850436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A159634 (n + 1) - A159632 (n + 1))

end

end A159635.P10578422346048850436

/-! ## A159635.P960657402059267954

`A159631(n+1)+A159634(n+1)-A159632(n+1)`
-/

namespace A159635.P960657402059267954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (n + 1) + (A159634 (n + 1) - A159632 (n + 1))

end

end A159635.P960657402059267954

/-! ## A159635.P15696124086713646959

`A159633(n+1)+A159634(n+1)-A159630(n+1)`
-/

namespace A159635.P15696124086713646959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159633 (n + 1) + (A159634 (n + 1) - A159630 (n + 1))

end

end A159635.P15696124086713646959

/-! ## A159635.P11493314155433627581

`A159636(n+1)+A001616((n+1)*A135376(n+1))`
-/

namespace A159635.P11493314155433627581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159636 (n + 1) + A001616 ((n + 1 : ℤ) * A135376 (n + 1)).toNat

end

end A159635.P11493314155433627581

/-! ## A159635.P12692677572928676131

`A159633(n+1)+A000082(2*(n+1))/(6*(n+1))-A159630(n+1)`
-/

namespace A159635.P12692677572928676131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159633 (n + 1) : ℚ) + ((A000082 (2 * (n + 1)) : ℚ) / (6 * (n + 1) : ℚ) - (A159630 (n + 1) : ℚ))

end

end A159635.P12692677572928676131

/-! ## A159635.P2575525496111528499

`A159636(n+1)+A046951(n+1)+A159630(n+1)-A159632(n+1)`
-/

namespace A159635.P2575525496111528499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159636 (n + 1) + (A046951 (n + 1) + (A159630 (n + 1) - A159632 (n + 1)))

end

end A159635.P2575525496111528499

/-!
# A159636: Dimension of space of cusp forms of weight 5/2, level 4*n and trivial character.

The programs for A159636, there is no canonical definition to state claims against.
-/

/-! ## A159636.P15934108790237448410

`A046951(n+1)+A159634(n+1)-A159632(n+1)-A159633(n+1)`
-/

namespace A159636.P15934108790237448410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A159634 (n + 1) - A159632 (n + 1)) - A159633 (n + 1)

end

end A159636.P15934108790237448410

/-! ## A159636.P16441497448326945731

`A159631(n+1)+A159634(n+1)-A159632(n+1)-A159633(n+1)`
-/

namespace A159636.P16441497448326945731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (n + 1) + (A159634 (n + 1) - A159632 (n + 1)) - A159633 (n + 1)

end

end A159636.P16441497448326945731

/-! ## A159636.P14670296165747359563

`A001615(2*(n+1))/3-(A159632(n+1)+A159633(n+1)-A046951(n+1))`
-/

namespace A159636.P14670296165747359563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (2 * (n + 1)) : ℚ) / 3 - (A159632 (n + 1) + (A159633 (n + 1) - A046951 (n + 1)) : ℚ)

end

end A159636.P14670296165747359563

/-! ## A159636.P4427068221727604036

`A001615(2*(n+1))/3-(A159632(n+1)+A159633(n+1)-A159631(n+1))`
-/

namespace A159636.P4427068221727604036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (2 * (n + 1)) : ℚ) / 3 - (A159632 (n + 1) + (A159633 (n + 1) - A159631 (n + 1)) : ℚ)

end

end A159636.P4427068221727604036

/-! ## A159636.P472491484764560104

`A070732(2*(n+1))/(3*(n+1))-(A159632(n+1)+A159633(n+1)-A046951(n+1))`
-/

namespace A159636.P472491484764560104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070732 (2 * (n + 1)) : ℚ) / (3 * (n + 1) : ℚ) - (A159632 (n + 1) + (A159633 (n + 1) - A046951 (n + 1)) : ℚ)

end

end A159636.P472491484764560104

/-! ## A159636.P18091681017855027150

`A070732(2*(n+1))/(3*(n+1))-(A159632(n+1)+A159633(n+1)-A159631(n+1))`
-/

namespace A159636.P18091681017855027150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070732 (2 * (n + 1)) : ℚ) / (3 * (n + 1) : ℚ) - (A159632 (n + 1) + (A159633 (n + 1) - A159631 (n + 1)) : ℚ)

end

end A159636.P18091681017855027150

/-! ## A159636.P9375223925491231633

`A000082(2*(n+1))/(6*(n+1))-(A159632(n+1)+A159633(n+1)-A046951(n+1))`
-/

namespace A159636.P9375223925491231633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (2 * (n + 1)) : ℚ) / (6 * (n + 1) : ℚ) - (A159632 (n + 1) + (A159633 (n + 1) - A046951 (n + 1)) : ℚ)

end

end A159636.P9375223925491231633

/-! ## A159636.P14000300484942948416

`A000082(2*(n+1))/(6*(n+1))-(A159632(n+1)+A159633(n+1)-A159631(n+1))`
-/

namespace A159636.P14000300484942948416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (2 * (n + 1)) : ℚ) / (6 * (n + 1) : ℚ) - (A159632 (n + 1) + (A159633 (n + 1) - A159631 (n + 1)) : ℚ)

end

end A159636.P14000300484942948416

/-! ## A159636.P17342517136160715011

`A159634(n+1)-A159630(n+1)`
-/

namespace A159636.P17342517136160715011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159634 (n + 1) - A159630 (n + 1)

end

end A159636.P17342517136160715011

/-! ## A159636.P18161288760836956666

`A000082(2*(n+1))/(6*(n+1))-A159630(n+1)`
-/

namespace A159636.P18161288760836956666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (2 * (n + 1)) : ℚ) / (6 * (n + 1) : ℚ) - (A159630 (n + 1) : ℚ)

end

end A159636.P18161288760836956666

/-!
# A159637: Start with [0], repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

The programs for A159637, the canonical program `A159637.P12559117183087142693` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159637 has offset 0).

The definition of A159637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159637.P5389115506259126639

`1-A159638(n)`
-/

namespace A159637.P5389115506259126639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A159638 n

end

end A159637.P5389115506259126639

namespace A159637

/-- `1-A159638(n)` -/
def P5389115506259126639.Spec : Prop :=
  ∀ n, P5389115506259126639.a n = A159637 n

end A159637

/-! ## A159637.P6054516007722918753

`A077070(n)%2`
-/

namespace A159637.P6054516007722918753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077070 n) 2

end

end A159637.P6054516007722918753

namespace A159637

/-- `A077070(n)%2` -/
def P6054516007722918753.Spec : Prop :=
  ∀ n, P6054516007722918753.a n = A159637 n

end A159637

/-! ## A159637.P12559117183087142693

`A101080(n)%2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A159637

/-- `A101080(n)%2` -/
def P12559117183087142693.Spec : Prop :=
  ∀ n, P12559117183087142693.a n = A159637 n

theorem P12559117183087142693.correct : P12559117183087142693.Spec := by
  intro n
  simp only [A159637]

end A159637

/-! ## A159637.P14792312829003589929

`A268714(n)%2`
-/

namespace A159637.P14792312829003589929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268714 n) 2

end

end A159637.P14792312829003589929

namespace A159637

/-- `A268714(n)%2` -/
def P14792312829003589929.Spec : Prop :=
  ∀ n, P14792312829003589929.a n = A159637 n

end A159637

/-! ## A159637.P17545206414629361770

`A365618(n)%2`
-/

namespace A159637.P17545206414629361770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365618 n) 2

end

end A159637.P17545206414629361770

namespace A159637

/-- `A365618(n)%2` -/
def P17545206414629361770.Spec : Prop :=
  ∀ n, P17545206414629361770.a n = A159637 n

end A159637

/-! ## A159637.P12138795825881836296

`log2(A144816(n))%2`
-/

namespace A159637.P12138795825881836296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A144816 n : ℝ))) 2

end

end A159637.P12138795825881836296

namespace A159637

/-- `log2(A144816(n))%2` -/
def P12138795825881836296.Spec : Prop :=
  ∀ n, P12138795825881836296.a n = A159637 n

end A159637

/-! ## A159637.P5334793849343172700

`and(1, val(A067804(n), 2))`
-/

namespace A159637.P5334793849343172700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.valuation (A067804 n).toNat 2)

end

end A159637.P5334793849343172700

namespace A159637

/-- `and(1, val(A067804(n), 2))` -/
def P5334793849343172700.Spec : Prop :=
  ∀ n, (P5334793849343172700.a n : ℤ) = A159637 n

end A159637

/-! ## A159637.P1278298652011599469

`and(1, A077070(2*n-n))`
-/

namespace A159637.P1278298652011599469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A077070 (2 * n - n))

end

end A159637.P1278298652011599469

namespace A159637

/-- `and(1, A077070(2*n-n))` -/
def P1278298652011599469.Spec : Prop :=
  ∀ n, P1278298652011599469.a n = A159637 n

end A159637

/-! ## A159637.P15287449504393493556

`A010060(A003987(n))`
-/

namespace A159637.P15287449504393493556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003987 n).toNat

end

end A159637.P15287449504393493556

namespace A159637

/-- `A010060(A003987(n))` -/
def P15287449504393493556.Spec : Prop :=
  ∀ n, P15287449504393493556.a n = A159637 n

end A159637

/-! ## A159637.P2887273179987974878

`A000035(A077070(n))`
-/

namespace A159637.P2887273179987974878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077070 n).toNat

end

end A159637.P2887273179987974878

namespace A159637

/-- `A000035(A077070(n))` -/
def P2887273179987974878.Spec : Prop :=
  ∀ n, P2887273179987974878.a n = A159637 n

end A159637

/-! ## A159637.P11591436500993804965

`A010060(A085207(n))`
-/

namespace A159637.P11591436500993804965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A085207 n).toNat

end

end A159637.P11591436500993804965

namespace A159637

/-- `A010060(A085207(n))` -/
def P11591436500993804965.Spec : Prop :=
  ∀ n, P11591436500993804965.a n = A159637 n

end A159637

/-! ## A159637.P17682099230792756671

`A010060(A085208(n))`
-/

namespace A159637.P17682099230792756671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A085208 n).toNat

end

end A159637.P17682099230792756671

namespace A159637

/-- `A010060(A085208(n))` -/
def P17682099230792756671.Spec : Prop :=
  ∀ n, P17682099230792756671.a n = A159637 n

end A159637

/-! ## A159637.P5987416104109935885

`A010060(A085211(n))`
-/

namespace A159637.P5987416104109935885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A085211 n).toNat

end

end A159637.P5987416104109935885

namespace A159637

/-- `A010060(A085211(n))` -/
def P5987416104109935885.Spec : Prop :=
  ∀ n, P5987416104109935885.a n = A159637 n

end A159637

/-! ## A159637.P12984954060393327222

`A010060(A085212(n))`
-/

namespace A159637.P12984954060393327222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A085212 n).toNat

end

end A159637.P12984954060393327222

namespace A159637

/-- `A010060(A085212(n))` -/
def P12984954060393327222.Spec : Prop :=
  ∀ n, P12984954060393327222.a n = A159637 n

end A159637

/-! ## A159637.P8491889010906696711

`A000035(A268714(n))`
-/

namespace A159637.P8491889010906696711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A268714 n).toNat

end

end A159637.P8491889010906696711

namespace A159637

/-- `A000035(A268714(n))` -/
def P8491889010906696711.Spec : Prop :=
  ∀ n, P8491889010906696711.a n = A159637 n

end A159637

/-! ## A159637.P7289022054042231417

`A010060(A268715(n))`
-/

namespace A159637.P7289022054042231417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A268715 n).toNat

end

end A159637.P7289022054042231417

namespace A159637

/-- `A010060(A268715(n))` -/
def P7289022054042231417.Spec : Prop :=
  ∀ n, P7289022054042231417.a n = A159637 n

end A159637

/-! ## A159637.P12129025196497627277

`A010060(A341520(n))`
-/

namespace A159637.P12129025196497627277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A341520 n).toNat

end

end A159637.P12129025196497627277

namespace A159637

/-- `A010060(A341520(n))` -/
def P12129025196497627277.Spec : Prop :=
  ∀ n, P12129025196497627277.a n = A159637 n

end A159637

/-! ## A159637.P8112622540829147633

`A010060(A344836(n))`
-/

namespace A159637.P8112622540829147633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A344836 n).toNat

end

end A159637.P8112622540829147633

namespace A159637

/-- `A010060(A344836(n))` -/
def P8112622540829147633.Spec : Prop :=
  ∀ n, P8112622540829147633.a n = A159637 n

end A159637

/-! ## A159637.P12248899004518615837

`A000035(A365618(n))`
-/

namespace A159637.P12248899004518615837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A365618 n).toNat

end

end A159637.P12248899004518615837

namespace A159637

/-- `A000035(A365618(n))` -/
def P12248899004518615837.Spec : Prop :=
  ∀ n, P12248899004518615837.a n = A159637 n

end A159637

/-! ## A159637.P7098769014306856173

`and(A001535(n), A101080(n))`
-/

namespace A159637.P7098769014306856173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001535 n) (A101080 n)

end

end A159637.P7098769014306856173

namespace A159637

/-- `and(A001535(n), A101080(n))` -/
def P7098769014306856173.Spec : Prop :=
  ∀ n, P7098769014306856173.a n = A159637 n

end A159637

/-!
# A159638: Start with [1] and repeatedly apply the map 0 -> [01/10], 1 -> [10/01].

The programs for A159638, the canonical program `A159638.P8621361562681332473` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159638 has offset 0).

The definition of A159638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159638.P8621361562681332473

`1-A159637(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A159638

/-- `1-A159637(n)` -/
def P8621361562681332473.Spec : Prop :=
  ∀ n, P8621361562681332473.a n = A159638 n

theorem P8621361562681332473.correct : P8621361562681332473.Spec := by
  intro n
  simp only [A159638]

end A159638

/-! ## A159638.P13406982489690530840

`log2(gcd(2, A077070(n)))`
-/

namespace A159638.P13406982489690530840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A077070 n) : ℝ)

end

end A159638.P13406982489690530840

namespace A159638

/-- `log2(gcd(2, A077070(n)))` -/
def P13406982489690530840.Spec : Prop :=
  ∀ n, P13406982489690530840.a n = (A159638 n : ℝ)

end A159638

/-! ## A159638.P6473544411323040100

`(A101080(n)+1)%2`
-/

namespace A159638.P6473544411323040100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101080 n + 1) 2

end

end A159638.P6473544411323040100

namespace A159638

/-- `(A101080(n)+1)%2` -/
def P6473544411323040100.Spec : Prop :=
  ∀ n, P6473544411323040100.a n = A159638 n

end A159638

/-! ## A159638.P10701698048342461036

`(A268714(n)+1)%2`
-/

namespace A159638.P10701698048342461036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268714 n + 1) 2

end

end A159638.P10701698048342461036

namespace A159638

/-- `(A268714(n)+1)%2` -/
def P10701698048342461036.Spec : Prop :=
  ∀ n, P10701698048342461036.a n = A159638 n

end A159638

/-! ## A159638.P9600845280963873824

`A010059(A003987(n))`
-/

namespace A159638.P9600845280963873824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A003987 n).toNat

end

end A159638.P9600845280963873824

namespace A159638

/-- `A010059(A003987(n))` -/
def P9600845280963873824.Spec : Prop :=
  ∀ n, P9600845280963873824.a n = A159638 n

end A159638

/-! ## A159638.P6318714951058533969

`A010059(A085207(n))`
-/

namespace A159638.P6318714951058533969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A085207 n).toNat

end

end A159638.P6318714951058533969

namespace A159638

/-- `A010059(A085207(n))` -/
def P6318714951058533969.Spec : Prop :=
  ∀ n, P6318714951058533969.a n = A159638 n

end A159638

/-! ## A159638.P6149456233659363583

`A010059(A085208(n))`
-/

namespace A159638.P6149456233659363583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A085208 n).toNat

end

end A159638.P6149456233659363583

namespace A159638

/-- `A010059(A085208(n))` -/
def P6149456233659363583.Spec : Prop :=
  ∀ n, P6149456233659363583.a n = A159638 n

end A159638

/-! ## A159638.P5318006104388279637

`A059841(A077070(n))`
-/

namespace A159638.P5318006104388279637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A077070 n).toNat

end

end A159638.P5318006104388279637

namespace A159638

/-- `A059841(A077070(n))` -/
def P5318006104388279637.Spec : Prop :=
  ∀ n, P5318006104388279637.a n = A159638 n

end A159638

/-! ## A159638.P2381624681341649326

`A010059(A268715(n))`
-/

namespace A159638.P2381624681341649326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A268715 n).toNat

end

end A159638.P2381624681341649326

namespace A159638

/-- `A010059(A268715(n))` -/
def P2381624681341649326.Spec : Prop :=
  ∀ n, P2381624681341649326.a n = A159638 n

end A159638

/-! ## A159638.P9916987180762454333

`A059841(A268714(n))`
-/

namespace A159638.P9916987180762454333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A268714 n).toNat

end

end A159638.P9916987180762454333

namespace A159638

/-- `A059841(A268714(n))` -/
def P9916987180762454333.Spec : Prop :=
  ∀ n, P9916987180762454333.a n = A159638 n

end A159638

/-! ## A159638.P11915082517463327488

`A010059(A341520(n))`
-/

namespace A159638.P11915082517463327488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A341520 n).toNat

end

end A159638.P11915082517463327488

namespace A159638

/-- `A010059(A341520(n))` -/
def P11915082517463327488.Spec : Prop :=
  ∀ n, P11915082517463327488.a n = A159638 n

end A159638

/-! ## A159638.P4723120612679576097

`A010059(A344836(n))`
-/

namespace A159638.P4723120612679576097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A344836 n).toNat

end

end A159638.P4723120612679576097

namespace A159638

/-- `A010059(A344836(n))` -/
def P4723120612679576097.Spec : Prop :=
  ∀ n, P4723120612679576097.a n = A159638 n

end A159638

/-! ## A159638.P18013396809033569496

`A000035(A077070(n)+1)`
-/

namespace A159638.P18013396809033569496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A077070 n + 1).toNat

end

end A159638.P18013396809033569496

namespace A159638

/-- `A000035(A077070(n)+1)` -/
def P18013396809033569496.Spec : Prop :=
  ∀ n, P18013396809033569496.a n = A159638 n

end A159638

/-! ## A159638.P17562370888497170330

`A000035(A268714(n)+1)`
-/

namespace A159638.P17562370888497170330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A268714 n + 1).toNat

end

end A159638.P17562370888497170330

namespace A159638

/-- `A000035(A268714(n)+1)` -/
def P17562370888497170330.Spec : Prop :=
  ∀ n, P17562370888497170330.a n = A159638 n

end A159638

/-! ## A159638.P1763281034915501494

`A010060(2*A003987(n)+1)`
-/

namespace A159638.P1763281034915501494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * A003987 n + 1).toNat

end

end A159638.P1763281034915501494

namespace A159638

/-- `A010060(2*A003987(n)+1)` -/
def P1763281034915501494.Spec : Prop :=
  ∀ n, P1763281034915501494.a n = A159638 n

end A159638

/-! ## A159638.P15215209565807486379

`1-A036581(2*A003987(n))`
-/

namespace A159638.P15215209565807486379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036581 (2 * A003987 n).toNat

end

end A159638.P15215209565807486379

namespace A159638

/-- `1-A036581(2*A003987(n))` -/
def P15215209565807486379.Spec : Prop :=
  ∀ n, P15215209565807486379.a n = A159638 n

end A159638

/-! ## A159638.P14029288275473823036

`A000045(and(1, 1-A077070(n)))`
-/

namespace A159638.P14029288275473823036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 1 (1 - A077070 n)).toNat

end

end A159638.P14029288275473823036

namespace A159638

/-- `A000045(and(1, 1-A077070(n)))` -/
def P14029288275473823036.Spec : Prop :=
  ∀ n, P14029288275473823036.a n = A159638 n

end A159638

/-! ## A159638.P17857714420631399544

`A007664(and(1, A077070(n)-1))`
-/

namespace A159638.P17857714420631399544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 (Int.land 1 (A077070 n - 1)).toNat

end

end A159638.P17857714420631399544

namespace A159638

/-- `A007664(and(1, A077070(n)-1))` -/
def P17857714420631399544.Spec : Prop :=
  ∀ n, P17857714420631399544.a n = A159638 n

end A159638

/-! ## A159638.P4535408242901459196

`A077070(and(1, 1-A077070(n)))`
-/

namespace A159638.P4535408242901459196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (Int.land 1 (1 - A077070 n)).toNat

end

end A159638.P4535408242901459196

namespace A159638

/-- `A077070(and(1, 1-A077070(n)))` -/
def P4535408242901459196.Spec : Prop :=
  ∀ n, P4535408242901459196.a n = A159638 n

end A159638

/-! ## A159638.P11154615470813027344

`(or(3, A016957(n))-A268714(n))%2`
-/

namespace A159638.P11154615470813027344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 3 (A016957 n) - A268714 n) 2

end

end A159638.P11154615470813027344

namespace A159638

/-- `(or(3, A016957(n))-A268714(n))%2` -/
def P11154615470813027344.Spec : Prop :=
  ∀ n, P11154615470813027344.a n = A159638 n

end A159638

/-!
# A159640: a(1) = a(2) = 1; for n > 2, a(n) = (a(1), a(2), a(3), ...) dot (P(1), P(2), P(3), ...); P = A000129.

The programs for A159640, there is no canonical definition to state claims against.
-/

/-! ## A159640.P6346796437881344910

`∏[A000129(n-char[1])+1]`
-/

namespace A159640.P6346796437881344910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n - (if ∃ j, f2 j = n then 1 else 0)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A159640.P6346796437881344910

/-! ## A159640.P18367064857638868522

`a(n-1)*A174191(n)` with `a(0)=1, a(1)=1`
-/

namespace A159640.P18367064857638868522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A174191 n

end

end A159640.P18367064857638868522

/-! ## A159640.P5585721910747978689

`(A000129(n)+1)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A159640.P5585721910747978689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A000129 n + 1) * a (n - 1)

end

end A159640.P5585721910747978689

/-! ## A159640.P6800051382583900122

`a(n-1)*A052937(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A159640.P6800051382583900122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) * A052937 (n - 1)

end

end A159640.P6800051382583900122

/-! ## A159640.P10607227685473368175

`∏[Δ[A171842(n)+char[1]+n]]/2`
-/

namespace A159640.P10607227685473368175
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n + (((if ∃ j, f3 j = n then 1 else 0) + n : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A159640.P10607227685473368175

/-!
# A159661: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 11*n(j) + 1 = a(j)*a(j) and 13*n(j) + 1 = b(j)*b(j) with positive integer elements. the solutions of the 2 equations problem: 11*n(j) + 1 = a(j)*a(j); 13*n(j) + 1 = b(j)*b(j); with integer numbers.

The programs for A159661, the canonical program `A159661.P11446234147144634186` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159661 has offset 1).

The definition of A159661 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159661.P11446234147144634186

`24*a(n-1)-a(n-2)` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159661

/-- `24*a(n-1)-a(n-2)` -/
def P11446234147144634186.Spec : Prop :=
  ∀ n, P11446234147144634186.a n = A159661 (n + 1)

theorem P11446234147144634186.correct : P11446234147144634186.Spec := by
  intro n
  simp only [A159661, Nat.add_sub_cancel]

end A159661

/-! ## A159661.P9865267600005132875

`∑[A090732(n)]-1`
-/

namespace A159661.P9865267600005132875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159661.P9865267600005132875

namespace A159661

/-- `∑[A090732(n)]-1` -/
def P9865267600005132875.Spec : Prop :=
  ∀ n, P9865267600005132875.a n = A159661 (n + 1)

end A159661

/-! ## A159661.P11068098114193915681

`∑[xor(A000038(n), A090732(n))]+1`
-/

namespace A159661.P11068098114193915681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 n) (A090732 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A159661.P11068098114193915681

namespace A159661

/-- `∑[xor(A000038(n), A090732(n))]+1` -/
def P11068098114193915681.Spec : Prop :=
  ∀ n, P11068098114193915681.a n = A159661 (n + 1)

end A159661

/-! ## A159661.P16221700441370400785

`A090732(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A159661.P16221700441370400785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090732 n + a (A004273 n - (n : ℤ)).toNat

end

end A159661.P16221700441370400785

namespace A159661

/-- `A090732(n)+a(A004273(n)-n)` -/
def P16221700441370400785.Spec : Prop :=
  ∀ n, P16221700441370400785.a n = A159661 (n + 1)

end A159661

/-! ## A159661.P8228867241344189666

`∑[2*A159664(n+1)]-A159664(n+1)`
-/

namespace A159661.P8228867241344189666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159664 (n + 1)

end

end A159661.P8228867241344189666

namespace A159661

/-- `∑[2*A159664(n+1)]-A159664(n+1)` -/
def P8228867241344189666.Spec : Prop :=
  ∀ n, P8228867241344189666.a n = A159661 (n + 1)

end A159661

/-! ## A159661.P9497512326370074022

`2*A041263(2*n+1)-A041263(2*n)`
-/

namespace A159661.P9497512326370074022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041263 (2 * n + 1) - A041263 (2 * n)

end

end A159661.P9497512326370074022

namespace A159661

/-- `2*A041263(2*n+1)-A041263(2*n)` -/
def P9497512326370074022.Spec : Prop :=
  ∀ n, P9497512326370074022.a n = A159661 (n + 1)

end A159661

/-! ## A159661.P492583449587573428

`A041262(2*n)/11`
-/

namespace A159661.P492583449587573428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041262 (2 * n) : ℚ) / 11

end

end A159661.P492583449587573428

namespace A159661

/-- `A041262(2*n)/11` -/
def P492583449587573428.Spec : Prop :=
  ∀ n, P492583449587573428.a n = (A159661 (n + 1) : ℚ)

end A159661

/-! ## A159661.P14549996210700483161

`A077423(n+1)+A077423(n)-A090732(n+1)`
-/

namespace A159661.P14549996210700483161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077423 (n + 1) + (A077423 n - A090732 (n + 1))

end

end A159661.P14549996210700483161

namespace A159661

/-- `A077423(n+1)+A077423(n)-A090732(n+1)` -/
def P14549996210700483161.Spec : Prop :=
  ∀ n, P14549996210700483161.a n = A159661 (n + 1)

end A159661

/-!
# A159662: Any number of necklaces made from n distinct colored beads then linearly arranged in a display case.

The programs for A159662, there is no canonical definition to state claims against.
-/

/-! ## A159662.P13770542839042273282

`A285507(A294221(n)+1)`
-/

namespace A159662.P13770542839042273282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285507 (A294221 n + 1).toNat

end

end A159662.P13770542839042273282

/-!
# A159664: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 11*n(j) + 1 = a(j)*a(j) and 13*n(j) + 1 = b(j)*b(j), with positive integer numbers.

The programs for A159664, there is no canonical definition to state claims against.
-/

/-! ## A159664.P12981093647385309625

`24*a(n-1)-a(n-2)` with `a(0)=1, a(1)=23`
-/

namespace A159664.P12981093647385309625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 23] fun n a =>
  24 * a (n - 1) - a (n - 2)

end

end A159664.P12981093647385309625

/-! ## A159664.P4413624733294912126

`A041263(2*n)`
-/

namespace A159664.P4413624733294912126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 (2 * n)

end

end A159664.P4413624733294912126

/-! ## A159664.P16531457138954603615

`A090732(n)-a(n-1)` with `a(0)=1`
-/

namespace A159664.P16531457138954603615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090732 n - a (n - 1)

end

end A159664.P16531457138954603615

/-! ## A159664.P876801736004198077

`record[A041263(n)/2^val(n+1, 2)]`
-/

namespace A159664.P876801736004198077
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041263 n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159664.P876801736004198077

/-! ## A159664.P2623476005347761781

`record[A041263(A014681(n))]`
-/

namespace A159664.P2623476005347761781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159664.P2623476005347761781

/-! ## A159664.P13468455585892666665

`record[A041263(lcm(n, A056594(n)))]`
-/

namespace A159664.P13468455585892666665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159664.P13468455585892666665

/-! ## A159664.P3691165514104778902

`record[A041263(n-A183063(n+1))]`
-/

namespace A159664.P3691165514104778902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 ((n : ℤ) - A183063 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159664.P3691165514104778902

/-! ## A159664.P13180653759356802507

`record[A041263(gcd(n, A183063(n+1)))]`
-/

namespace A159664.P13180653759356802507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041263 (Int.gcd (n : ℤ) (A183063 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159664.P13180653759356802507

/-! ## A159664.P1003637646068602151

`2*A077423(n)-A159661(n+1)`
-/

namespace A159664.P1003637646068602151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077423 n - A159661 (n + 1)

end

end A159664.P1003637646068602151

/-!
# A159665: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 11*n(j) + 1 = a(j)*a(j) and 13*n(j) + 1 = b(j)*b(j); with positive integer numbers.

The programs for A159665, there is no canonical definition to state claims against.
-/

/-! ## A159665.P12372487583809363673

`∑[A159661(2*n+1)-A159664(2*n+1)]`
-/

namespace A159665.P12372487583809363673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159661 (2 * n + 1) - A159664 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159665.P12372487583809363673

/-!
# A159666: a(n) = Sum_{k=1..n} binomial(n,k) * gcd(n,k) * a(k-1), with a(0) = 1.

The programs for A159666, there is no canonical definition to state claims against.
-/

/-! ## A159666.P9149286009763998421

`A028310(n)*A159667(A028310(n))`
-/

namespace A159666.P9149286009763998421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A159667 (A028310 n).toNat

end

end A159666.P9149286009763998421

/-! ## A159666.P9128546589870045224

`(A000007(n)+n)*A159667(A000007(n)+n)`
-/

namespace A159666.P9128546589870045224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A159667 (A000007 n + (n : ℤ)).toNat

end

end A159666.P9128546589870045224

/-!
# A159667: For n >= 1, a(n) = A159666(n)/n.

The programs for A159667, there is no canonical definition to state claims against.
-/

/-! ## A159667.P17919020289751073529

`A159666(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159667.P17919020289751073529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159666 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A159667.P17919020289751073529

/-!
# A159668: Expansion of (1 - x)/(1 - 28*x + x^2).

The programs for A159668, the canonical program `A159668.P16623205432943929510` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159668 has offset 0).

The definition of A159668 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159668.P16623205432943929510

`28*a(n-1)-a(n-2)` with `a(0)=1, a(1)=27`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159668

/-- `28*a(n-1)-a(n-2)` -/
def P16623205432943929510.Spec : Prop :=
  ∀ n, P16623205432943929510.a n = A159668 n

theorem P16623205432943929510.correct : P16623205432943929510.Spec := by
  intro n
  simp only [A159668]

end A159668

/-! ## A159668.P1551355689681192223

`1/30*(15-sqrt(195))*(1+(14+sqrt(195))^(2*n+1))/(14+sqrt(195))^n`
-/

namespace A159668.P1551355689681192223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 30 : ℝ) * ((15 - Real.sqrt (195 : ℝ)) * ((1 + (14 + Real.sqrt (195 : ℝ)) ^ (2 * n + 1)) / (14 + Real.sqrt (195 : ℝ)) ^ n))

end

end A159668.P1551355689681192223

namespace A159668

/-- `1/30*(15-sqrt(195))*(1+(14+sqrt(195))^(2*n+1))/(14+sqrt(195))^n` -/
def P1551355689681192223.Spec : Prop :=
  ∀ n, P1551355689681192223.a n = (A159668 n : ℝ)

end A159668

/-! ## A159668.P12970577357218745718

`A041363(2*n)`
-/

namespace A159668.P12970577357218745718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (2 * n)

end

end A159668.P12970577357218745718

namespace A159668

/-- `A041363(2*n)` -/
def P12970577357218745718.Spec : Prop :=
  ∀ n, P12970577357218745718.a n = A159668 n

end A159668

/-! ## A159668.P10484764971577728501

`A090249(n)-a(n-1)` with `a(0)=1`
-/

namespace A159668.P10484764971577728501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090249 n - a (n - 1)

end

end A159668.P10484764971577728501

namespace A159668

/-- `A090249(n)-a(n-1)` -/
def P10484764971577728501.Spec : Prop :=
  ∀ n, P10484764971577728501.a n = A159668 n

end A159668

/-! ## A159668.P1753819529474185939

`record[A041363(A014681(n))]`
-/

namespace A159668.P1753819529474185939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159668.P1753819529474185939

namespace A159668

/-- `record[A041363(A014681(n))]` -/
def P1753819529474185939.Spec : Prop :=
  ∀ n, P1753819529474185939.a n = A159668 n

end A159668

/-! ## A159668.P7303387083696706279

`or(1, A041363(A004277(n)))`
-/

namespace A159668.P7303387083696706279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041363 (A004277 n).toNat)

end

end A159668.P7303387083696706279

namespace A159668

/-- `or(1, A041363(A004277(n)))` -/
def P7303387083696706279.Spec : Prop :=
  ∀ n, P7303387083696706279.a n = A159668 n

end A159668

/-! ## A159668.P4049817961692999834

`or(1, A041363(A005843(n)))`
-/

namespace A159668.P4049817961692999834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041363 (A005843 n).toNat)

end

end A159668.P4049817961692999834

namespace A159668

/-- `or(1, A041363(A005843(n)))` -/
def P4049817961692999834.Spec : Prop :=
  ∀ n, P4049817961692999834.a n = A159668 n

end A159668

/-!
# A159669: Expansion of x*(1 + x)/(1 - 28*x + x^2).

The programs for A159669, there is no canonical definition to state claims against.
-/

/-! ## A159669.P10630312631993469954

`28*a(n-1)-a(n-2)` with `a(0)=1, a(1)=29`
-/

namespace A159669.P10630312631993469954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 29] fun n a =>
  28 * a (n - 1) - a (n - 2)

end

end A159669.P10630312631993469954

/-! ## A159669.P641734124011060931

`∑[A090249(n)]-1`
-/

namespace A159669.P641734124011060931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090249 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159669.P641734124011060931

/-! ## A159669.P17005463056587605705

`∑[2*A097310(n)]-1`
-/

namespace A159669.P17005463056587605705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159669.P17005463056587605705

/-! ## A159669.P12290643256600301325

`A041363(2*n+1)+A041363(2*n+1)-A041363(2*n)`
-/

namespace A159669.P12290643256600301325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041363 (2 * n + 1) + (A041363 (2 * n + 1) - A041363 (2 * n))

end

end A159669.P12290643256600301325

/-! ## A159669.P10680876447643960378

`Δ[A097310(n)/13]`
-/

namespace A159669.P10680876447643960378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097310 n : ℚ) / 13

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159669.P10680876447643960378

/-! ## A159669.P615121959090226932

`A041362(2*n)/13`
-/

namespace A159669.P615121959090226932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041362 (2 * n) : ℚ) / 13

end

end A159669.P615121959090226932

/-! ## A159669.P3958039726772722913

`∑[2*A159668(n)]-A159668(n)`
-/

namespace A159669.P3958039726772722913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159668 n

end

end A159669.P3958039726772722913

/-!
# A159673: Expansion of 56*x^2/(1 - 783*x + 783*x^2 - x^3).

The programs for A159673, there is no canonical definition to state claims against.
-/

/-! ## A159673.P2733981162794065707

`∑[A159669(2*n+1)-A159668(2*n)]`
-/

namespace A159673.P2733981162794065707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159669 (2 * n + 1) - A159668 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159673.P2733981162794065707

/-!
# A159674: Expansion of (1 - x)/(1 - 32*x + x^2).

The programs for A159674, the canonical program `A159674.P8887768560103213640` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159674 has offset 0).

The definition of A159674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159674.P8887768560103213640

`1/34*(17-sqrt(255))*(1+(16+sqrt(255))^(2*n+1))/(16+sqrt(255))^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159674

/-- `1/34*(17-sqrt(255))*(1+(16+sqrt(255))^(2*n+1))/(16+sqrt(255))^n` -/
def P8887768560103213640.Spec : Prop :=
  ∀ n, P8887768560103213640.a n = (A159674 n : ℝ)

end A159674

/-! ## A159674.P11926340461105335526

`32*a(n-1)-a(n-2)` with `a(0)=1, a(1)=31`
-/

namespace A159674.P11926340461105335526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 31] fun n a =>
  32 * a (n - 1) - a (n - 2)

end

end A159674.P11926340461105335526

namespace A159674

/-- `32*a(n-1)-a(n-2)` -/
def P11926340461105335526.Spec : Prop :=
  ∀ n, P11926340461105335526.a n = A159674 n

end A159674

/-! ## A159674.P10387597604654598203

`A041479(2*n)`
-/

namespace A159674.P10387597604654598203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 (2 * n)

end

end A159674.P10387597604654598203

namespace A159674

/-- `A041479(2*n)` -/
def P10387597604654598203.Spec : Prop :=
  ∀ n, P10387597604654598203.a n = A159674 n

end A159674

/-! ## A159674.P1679033354457198857

`record[A041479(A014681(n))]`
-/

namespace A159674.P1679033354457198857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159674.P1679033354457198857

namespace A159674

/-- `record[A041479(A014681(n))]` -/
def P1679033354457198857.Spec : Prop :=
  ∀ n, P1679033354457198857.a n = A159674 n

end A159674

/-! ## A159674.P8770662717882473890

`or(1, A041479(A005843(n)))`
-/

namespace A159674.P8770662717882473890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A041479 (A005843 n).toNat)

end

end A159674.P8770662717882473890

namespace A159674

/-- `or(1, A041479(A005843(n)))` -/
def P8770662717882473890.Spec : Prop :=
  ∀ n, P8770662717882473890.a n = A159674 n

end A159674

/-! ## A159674.P12158792521666467315

`record[A041479(A006369(n)+1)]`
-/

namespace A159674.P12158792521666467315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041479 (A006369 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159674.P12158792521666467315

namespace A159674

/-- `record[A041479(A006369(n)+1)]` -/
def P12158792521666467315.Spec : Prop :=
  ∀ n, P12158792521666467315.a n = A159674 n

end A159674

/-! ## A159674.P2146941847154727386

`record[A041479(n)/A000034(n)]`
-/

namespace A159674.P2146941847154727386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041479 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159674.P2146941847154727386

namespace A159674

/-- `record[A041479(n)/A000034(n)]` -/
def P2146941847154727386.Spec : Prop :=
  ∀ n, P2146941847154727386.a n = (A159674 n : ℚ)

end A159674

/-! ## A159674.P7960632166170815482

`record[A041479(n)/A033999(n)]`
-/

namespace A159674.P7960632166170815482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041479 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159674.P7960632166170815482

namespace A159674

/-- `record[A041479(n)/A033999(n)]` -/
def P7960632166170815482.Spec : Prop :=
  ∀ n, P7960632166170815482.a n = (A159674 n : ℚ)

end A159674

/-! ## A159674.P2097115685526688462

`record[A041479(n)/A001511(n+1)]`
-/

namespace A159674.P2097115685526688462
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041479 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159674.P2097115685526688462

namespace A159674

/-- `record[A041479(n)/A001511(n+1)]` -/
def P2097115685526688462.Spec : Prop :=
  ∀ n, P2097115685526688462.a n = (A159674 n : ℚ)

end A159674

/-! ## A159674.P8089581361002127888

`record[A041479(n)/A006519(n+1)]`
-/

namespace A159674.P8089581361002127888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041479 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159674.P8089581361002127888

namespace A159674

/-- `record[A041479(n)/A006519(n+1)]` -/
def P8089581361002127888.Spec : Prop :=
  ∀ n, P8089581361002127888.a n = (A159674 n : ℚ)

end A159674

/-!
# A159675: Expansion of x*(1 + x)/(1 - 32*x + x^2).

The programs for A159675, there is no canonical definition to state claims against.
-/

/-! ## A159675.P8589993774781778992

`32*a(n-1)-a(n-2)` with `a(0)=1, a(1)=33`
-/

namespace A159675.P8589993774781778992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 33] fun n a =>
  32 * a (n - 1) - a (n - 2)

end

end A159675.P8589993774781778992

/-! ## A159675.P1085847098491685517

`∑[2*A322888(n)]-1`
-/

namespace A159675.P1085847098491685517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159675.P1085847098491685517

/-! ## A159675.P12271254960729175634

`∑[2*A159674(n)]-A159674(n)`
-/

namespace A159675.P12271254960729175634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159674 n

end

end A159675.P12271254960729175634

/-! ## A159675.P17902272178253486241

`2*A041479(2*n+1)-A041479(2*n)`
-/

namespace A159675.P17902272178253486241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A041479 (2 * n + 1) - A041479 (2 * n)

end

end A159675.P17902272178253486241

/-! ## A159675.P2110111351905622522

`Δ[A322888(n)/15]`
-/

namespace A159675.P2110111351905622522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322888 n : ℚ) / 15

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159675.P2110111351905622522

/-! ## A159675.P5689403096363555499

`A041478(2*n)/A041478(A077957(2*n+1))`
-/

namespace A159675.P5689403096363555499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041478 (2 * n) : ℚ) / (A041478 (A077957 (2 * n + 1)).toNat : ℚ)

end

end A159675.P5689403096363555499

/-!
# A159678: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2-equation problem 7*n(j) + 1 = a(j)*a(j) and 9*n(j) + 1 = b(j)*b(j) with positive integer numbers.

The programs for A159678, the canonical program `A159678.P4994080254151396250` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159678 has offset 1).

The definition of A159678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159678.P4994080254151396250

`16*a(n-1)-a(n-2)` with `a(0)=1, a(1)=17`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159678

/-- `16*a(n-1)-a(n-2)` -/
def P4994080254151396250.Spec : Prop :=
  ∀ n, P4994080254151396250.a n = A159678 (n + 1)

theorem P4994080254151396250.correct : P4994080254151396250.Spec := by
  intro n
  simp only [A159678, Nat.add_sub_cancel]

end A159678

/-! ## A159678.P14861338551697351960

`((3-sqrt(7))*(8+3*sqrt(7))^(n+1)-(3+sqrt(7))*(8-3*sqrt(7))^(n+1))/(2*sqrt(7))`
-/

namespace A159678.P14861338551697351960
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 - Real.sqrt (7 : ℝ)) * (8 + 3 * Real.sqrt (7 : ℝ)) ^ (n + 1) - (3 + Real.sqrt (7 : ℝ)) * (8 - 3 * Real.sqrt (7 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (7 : ℝ))

end

end A159678.P14861338551697351960

namespace A159678

/-- `((3-sqrt(7))*(8+3*sqrt(7))^(n+1)-(3+sqrt(7))*(8-3*sqrt(7))^(n+1))/(2*sqrt(7))` -/
def P14861338551697351960.Spec : Prop :=
  ∀ n, P14861338551697351960.a n = (A159678 (n + 1) : ℝ)

end A159678

/-! ## A159678.P1170068802098537265

`a(n-1)/(1/4)²-a(n-2)` with `a(0)=1, a(1)=17`
-/

namespace A159678.P1170068802098537265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 2)

end

end A159678.P1170068802098537265

namespace A159678

/-- `a(n-1)/(1/4)²-a(n-2)` -/
def P1170068802098537265.Spec : Prop :=
  ∀ n, P1170068802098537265.a n = (A159678 (n + 1) : ℚ)

end A159678

/-! ## A159678.P13801773439472220222

`Δ[A098303(n)]`
-/

namespace A159678.P13801773439472220222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159678.P13801773439472220222

namespace A159678

/-- `Δ[A098303(n)]` -/
def P13801773439472220222.Spec : Prop :=
  ∀ n, P13801773439472220222.a n = A159678 (n + 1)

end A159678

/-! ## A159678.P8318102807619427237

`A259596(4*n)`
-/

namespace A159678.P8318102807619427237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259596 (4 * n)

end

end A159678.P8318102807619427237

namespace A159678

/-- `A259596(4*n)` -/
def P8318102807619427237.Spec : Prop :=
  ∀ n, P8318102807619427237.a n = A159678 (n + 1)

end A159678

/-! ## A159678.P9830958531943959432

`A084069(Δ[n²])`
-/

namespace A159678.P9830958531943959432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084069 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A159678.P9830958531943959432

namespace A159678

/-- `A084069(Δ[n²])` -/
def P9830958531943959432.Spec : Prop :=
  ∀ n, P9830958531943959432.a n = A159678 (n + 1)

end A159678

/-! ## A159678.P15608144318228655101

`∑[A090727(n)]-1`
-/

namespace A159678.P15608144318228655101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159678.P15608144318228655101

namespace A159678

/-- `∑[A090727(n)]-1` -/
def P15608144318228655101.Spec : Prop :=
  ∀ n, P15608144318228655101.a n = A159678 (n + 1)

end A159678

/-! ## A159678.P13740491590400828474

`A041009(4*n+1)`
-/

namespace A159678.P13740491590400828474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041009 (4 * n + 1)

end

end A159678.P13740491590400828474

namespace A159678

/-- `A041009(4*n+1)` -/
def P13740491590400828474.Spec : Prop :=
  ∀ n, P13740491590400828474.a n = A159678 (n + 1)

end A159678

/-! ## A159678.P18347557827695881492

`∑[2*A001081(n)]-1`
-/

namespace A159678.P18347557827695881492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A159678.P18347557827695881492

namespace A159678

/-- `∑[2*A001081(n)]-1` -/
def P18347557827695881492.Spec : Prop :=
  ∀ n, P18347557827695881492.a n = A159678 (n + 1)

end A159678

/-!
# A159679: a(n) are solutions of the 2 equations: 7*a(n) +1 = c(n)^2 and 9*a(n) + 1 = b(n)^2.

The programs for A159679, there is no canonical definition to state claims against.
-/

/-! ## A159679.P9455962533066584235

`round(A157456(n+1)²/7)`
-/

namespace A159679.P9455962533066584235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157456 (n + 1) ^ 2 : ℚ) / 7)

end

end A159679.P9455962533066584235

/-! ## A159679.P16171242874685284684

`∑[A154021(2*n+1)/2]`
-/

namespace A159679.P16171242874685284684
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154021 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159679.P16171242874685284684

/-! ## A159679.P18147798079865048521

`∑[A001081(n)*A154021(n+1)]`
-/

namespace A159679.P18147798079865048521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001081 n * A154021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159679.P18147798079865048521

/-! ## A159679.P3092403065831502267

`A154021(n+1)/2*A077412(n)`
-/

namespace A159679.P3092403065831502267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154021 (n + 1) : ℚ) / 2 * (A077412 n : ℚ)

end

end A159679.P3092403065831502267

/-! ## A159679.P9496484761355296645

`A154021(n+2)²-A077412(2*n+1)`
-/

namespace A159679.P9496484761355296645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154021 (n + 2) ^ 2 - A077412 (2 * n + 1)

end

end A159679.P9496484761355296645

/-!
# A159680: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 9*n(j) + 1 = a(j)*a(j) and 11*n(j) + 1 = b(j)*b(j) with positive integer numbers.

The programs for A159680, there is no canonical definition to state claims against.
-/

/-! ## A159680.P894242151062493607

`∑[2*A075843(2*n)]`
-/

namespace A159680.P894242151062493607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075843 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159680.P894242151062493607

/-! ## A159680.P3765367756851095563

`∑[A075844(2*n)/3]`
-/

namespace A159680.P3765367756851095563
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075844 (2 * n) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159680.P3765367756851095563

/-! ## A159680.P3421290984440121174

`floor((A075839(n+1)/3)²)`
-/

namespace A159680.P3421290984440121174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A075839 (n + 1) : ℚ) / 3) ^ 2⌋

end

end A159680.P3421290984440121174

/-! ## A159680.P14161015613037674640

`floor(A099276(2*n+1)/9)`
-/

namespace A159680.P14161015613037674640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099276 (2 * n + 1) : ℚ) / 9⌋

end

end A159680.P14161015613037674640

/-! ## A159680.P2339117425017246817

`2*A075843(n)*A075843(n+1)`
-/

namespace A159680.P2339117425017246817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A075843 n * A075843 (n + 1)

end

end A159680.P2339117425017246817

/-!
# A159681: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 5*n(j)+1 = a(j)*a(j) and 7*n(j)+1 = b(j)*b(j) with positive integer numbers.

The programs for A159681, there is no canonical definition to state claims against.
-/

/-! ## A159681.P17293642911953965041

`floor(A077417(n)²/5)`
-/

namespace A159681.P17293642911953965041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077417 n ^ 2 : ℚ) / 5⌋

end

end A159681.P17293642911953965041

/-! ## A159681.P7305035014748475682

`(A077416(n)-A004191(n))*A065101(n)`
-/

namespace A159681.P7305035014748475682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077416 n - A004191 n) * A065101 n

end

end A159681.P7305035014748475682

/-! ## A159681.P16480727590788623873

`(A077416(n)-A077417(n))*A004191(n)`
-/

namespace A159681.P16480727590788623873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077416 n - A077417 n) * A004191 n

end

end A159681.P16480727590788623873

/-! ## A159681.P219736556035675390

`ceil(A077417(n)²/5-A014963(A050705(n+1)))`
-/

namespace A159681.P219736556035675390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077417 n ^ 2 : ℚ) / 5 - (A014963 (A050705 (n + 1)).toNat : ℚ)⌉

end

end A159681.P219736556035675390

/-! ## A159681.P3118482696287453447

`(A164826(2*(n+1))-A041059(2*n))*A041059(2*n+1)`
-/

namespace A159681.P3118482696287453447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A164826 (2 * (n + 1)) - A041059 (2 * n)) * A041059 (2 * n + 1)

end

end A159681.P3118482696287453447

/-!
# A159683: The general form of the recurrences are the a(j), b(j) and n(j) solutions of the 2 equations problem: 3*n(j) + 1 = a(j)*a(j) and 5*n(j) + 1 = b(j)*b(j) with positive integer numbers.

The programs for A159683, the canonical program `A159683.P11121208865461669295` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159683 has offset 1).

The definition of A159683 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159683.P11121208865461669295

`16*A180926(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159683

/-- `16*A180926(n+1)` -/
def P11121208865461669295.Spec : Prop :=
  ∀ n, P11121208865461669295.a n = A159683 (n + 1)

theorem P11121208865461669295.correct : P11121208865461669295.Spec := by
  intro n
  simp only [A159683, Nat.add_sub_cancel]

end A159683

/-! ## A159683.P7735441520371335557

`∑[2*A001090(2*n)]`
-/

namespace A159683.P7735441520371335557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159683.P7735441520371335557

namespace A159683

/-- `∑[2*A001090(2*n)]` -/
def P7735441520371335557.Spec : Prop :=
  ∀ n, P7735441520371335557.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P9752662568962507373

`∑[A001091(n)*A273053(n+1)]`
-/

namespace A159683.P9752662568962507373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001091 n * A273053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159683.P9752662568962507373

namespace A159683

/-- `∑[A001091(n)*A273053(n+1)]` -/
def P9752662568962507373.Spec : Prop :=
  ∀ n, P9752662568962507373.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P14958354020613575162

`∑[A273053(n+1)]*A182432(n)`
-/

namespace A159683.P14958354020613575162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A182432 n

end

end A159683.P14958354020613575162

namespace A159683

/-- `∑[A273053(n+1)]*A182432(n)` -/
def P14958354020613575162.Spec : Prop :=
  ∀ n, P14958354020613575162.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P14191313729772235532

`2*A001090(n+1)*A001090(n)`
-/

namespace A159683.P14191313729772235532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001090 (n + 1) * A001090 n)

end

end A159683.P14191313729772235532

namespace A159683

/-- `2*A001090(n+1)*A001090(n)` -/
def P14191313729772235532.Spec : Prop :=
  ∀ n, P14191313729772235532.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P11953728952156095203

`(A070997(n)+A057080(n))*A001090(n)`
-/

namespace A159683.P11953728952156095203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070997 n + A057080 n) * A001090 n

end

end A159683.P11953728952156095203

namespace A159683

/-- `(A070997(n)+A057080(n))*A001090(n)` -/
def P11953728952156095203.Spec : Prop :=
  ∀ n, P11953728952156095203.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P27033981650868805

`(A077243(n)-A001090(n))*A001090(n)`
-/

namespace A159683.P27033981650868805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077243 n - A001090 n) * A001090 n

end

end A159683.P27033981650868805

namespace A159683

/-- `(A077243(n)-A001090(n))*A001090(n)` -/
def P27033981650868805.Spec : Prop :=
  ∀ n, P27033981650868805.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P2759343222135077881

`∑[A080871(A005843(n))*A273053(n+1)]`
-/

namespace A159683.P2759343222135077881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080871 (A005843 n).toNat * A273053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159683.P2759343222135077881

namespace A159683

/-- `∑[A080871(A005843(n))*A273053(n+1)]` -/
def P2759343222135077881.Spec : Prop :=
  ∀ n, P2759343222135077881.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P4618438126621246870

`(A041023(2*n)-A199336(2*n+1))*A041023(2*n+1)`
-/

namespace A159683.P4618438126621246870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041023 (2 * n) - A199336 (2 * n + 1)) * A041023 (2 * n + 1)

end

end A159683.P4618438126621246870

namespace A159683

/-- `(A041023(2*n)-A199336(2*n+1))*A041023(2*n+1)` -/
def P4618438126621246870.Spec : Prop :=
  ∀ n, P4618438126621246870.a n = A159683 (n + 1)

end A159683

/-! ## A159683.P10714637972003109789

`(A041023(2*n+1)-A237262(2*n+1))*A041023(2*n+1)`
-/

namespace A159683.P10714637972003109789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A041023 (2 * n + 1) - A237262 (2 * n + 1)) * A041023 (2 * n + 1)

end

end A159683.P10714637972003109789

namespace A159683

/-- `(A041023(2*n+1)-A237262(2*n+1))*A041023(2*n+1)` -/
def P10714637972003109789.Spec : Prop :=
  ∀ n, P10714637972003109789.a n = A159683 (n + 1)

end A159683

/-!
# A159684: Sturmian word: limit S(infinity) where S(0) = 0, S(1) = 0,1 and for n>=1, S(n+1) = S(n)S(n)S(n-1).

The programs for A159684, the canonical program `A159684.P4509022653142584471` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159684 has offset 0).

The definition of A159684 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159684.P4509022653142584471

`floor((n+2)*(sqrt(2)-1))-floor((n+1)*(sqrt(2)-1))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159684

/-- `floor((n+2)*(sqrt(2)-1))-floor((n+1)*(sqrt(2)-1))` -/
def P4509022653142584471.Spec : Prop :=
  ∀ n, P4509022653142584471.a n = A159684 n

theorem P4509022653142584471.correct : P4509022653142584471.Spec := by
  intro n
  simp only [A159684]

end A159684

/-! ## A159684.P613276549083392995

`3%Δ[floor((n+1)*sqrt(2))]`
-/

namespace A159684.P613276549083392995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A159684.P613276549083392995

namespace A159684

/-- `3%Δ[floor((n+1)*sqrt(2))]` -/
def P613276549083392995.Spec : Prop :=
  ∀ n, P613276549083392995.a n = A159684 n

end A159684

/-! ## A159684.P7487873407997252300

`val(Δ[floor((n+1)*sqrt(2))], 2)`
-/

namespace A159684.P7487873407997252300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A159684.P7487873407997252300

namespace A159684

/-- `val(Δ[floor((n+1)*sqrt(2))], 2)` -/
def P7487873407997252300.Spec : Prop :=
  ∀ n, (P7487873407997252300.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P2356158186128461960

`C(Δ[floor((n+1)*sqrt(2))], 2)`
-/

namespace A159684.P2356158186128461960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A159684.P2356158186128461960

namespace A159684

/-- `C(Δ[floor((n+1)*sqrt(2))], 2)` -/
def P2356158186128461960.Spec : Prop :=
  ∀ n, (P2356158186128461960.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P4125975695363765927

`and(1, Δ[floor((n+1)*sqrt(2))]+1)`
-/

namespace A159684.P4125975695363765927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n + 1)

end

end A159684.P4125975695363765927

namespace A159684

/-- `and(1, Δ[floor((n+1)*sqrt(2))]+1)` -/
def P4125975695363765927.Spec : Prop :=
  ∀ n, P4125975695363765927.a n = A159684 n

end A159684

/-! ## A159684.P5742795757877221906

`log2(A006337(n+1))`
-/

namespace A159684.P5742795757877221906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006337 (n + 1) : ℝ)

end

end A159684.P5742795757877221906

namespace A159684

/-- `log2(A006337(n+1))` -/
def P5742795757877221906.Spec : Prop :=
  ∀ n, P5742795757877221906.a n = (A159684 n : ℝ)

end A159684

/-! ## A159684.P3505636093698458196

`char[A286666(n+1)]`
-/

namespace A159684.P3505636093698458196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A159684.P3505636093698458196

namespace A159684

/-- `char[A286666(n+1)]` -/
def P3505636093698458196.Spec : Prop :=
  ∀ n, (P3505636093698458196.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P17727661518232475158

`a(1-A286665(n))` with `a(0)=0, a(1)=1`
-/

namespace A159684.P17727661518232475158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (1 - A286665 n).toNat

end

end A159684.P17727661518232475158

namespace A159684

/-- `a(1-A286665(n))` -/
def P17727661518232475158.Spec : Prop :=
  ∀ n, (P17727661518232475158.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P8328125349690864255

`char[A003151(n+1)-1]`
-/

namespace A159684.P8328125349690864255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A159684.P8328125349690864255

namespace A159684

/-- `char[A003151(n+1)-1]` -/
def P8328125349690864255.Spec : Prop :=
  ∀ n, (P8328125349690864255.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P3446185128648864094

`char[A187968(2*n+1)]`
-/

namespace A159684.P3446185128648864094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187968 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A159684.P3446185128648864094

namespace A159684

/-- `char[A187968(2*n+1)]` -/
def P3446185128648864094.Spec : Prop :=
  ∀ n, (P3446185128648864094.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P10345059637232480361

`char[A001951(n)-1+n]`
-/

namespace A159684.P10345059637232480361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A159684.P10345059637232480361

namespace A159684

/-- `char[A001951(n)-1+n]` -/
def P10345059637232480361.Spec : Prop :=
  ∀ n, (P10345059637232480361.a n : ℤ) = A159684 n

end A159684

/-! ## A159684.P14352812413240128022

`A001221(Δ[floor((n+1)*sqrt(2))])`
-/

namespace A159684.P14352812413240128022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A159684.P14352812413240128022

namespace A159684

/-- `A001221(Δ[floor((n+1)*sqrt(2))])` -/
def P14352812413240128022.Spec : Prop :=
  ∀ n, P14352812413240128022.a n = A159684 n

end A159684

/-! ## A159684.P4736654984239776919

`A001222(Δ[floor((n+1)*sqrt(2))])`
-/

namespace A159684.P4736654984239776919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A159684.P4736654984239776919

namespace A159684

/-- `A001222(Δ[floor((n+1)*sqrt(2))])` -/
def P4736654984239776919.Spec : Prop :=
  ∀ n, P4736654984239776919.a n = A159684 n

end A159684

/-! ## A159684.P17262324760973075944

`A144611(n)*A286665(n+1)`
-/

namespace A159684.P17262324760973075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n * A286665 (n + 1)

end

end A159684.P17262324760973075944

namespace A159684

/-- `A144611(n)*A286665(n+1)` -/
def P17262324760973075944.Spec : Prop :=
  ∀ n, P17262324760973075944.a n = A159684 n

end A159684

/-! ## A159684.P3867149145797927379

`A144611((n+2)*A144611(n))`
-/

namespace A159684.P3867149145797927379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 ((n + 2 : ℤ) * A144611 n).toNat

end

end A159684.P3867149145797927379

namespace A159684

/-- `A144611((n+2)*A144611(n))` -/
def P3867149145797927379.Spec : Prop :=
  ∀ n, P3867149145797927379.a n = A159684 n

end A159684

/-! ## A159684.P6530426334369434538

`A187967(n+1)*A286665(n+1)`
-/

namespace A159684.P6530426334369434538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187967 (n + 1) * A286665 (n + 1)

end

end A159684.P6530426334369434538

namespace A159684

/-- `A187967(n+1)*A286665(n+1)` -/
def P6530426334369434538.Spec : Prop :=
  ∀ n, P6530426334369434538.a n = A159684 n

end A159684

/-! ## A159684.P1997584374121250765

`A187972(n+1)*A286665(n+1)`
-/

namespace A159684.P1997584374121250765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187972 (n + 1) * A286665 (n + 1)

end

end A159684.P1997584374121250765

namespace A159684

/-- `A187972(n+1)*A286665(n+1)` -/
def P1997584374121250765.Spec : Prop :=
  ∀ n, P1997584374121250765.a n = A159684 n

end A159684

/-! ## A159684.P10496627651902109430

`A188037(n+2)`
-/

namespace A159684.P10496627651902109430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 2)

end

end A159684.P10496627651902109430

namespace A159684

/-- `A188037(n+2)` -/
def P10496627651902109430.Spec : Prop :=
  ∀ n, P10496627651902109430.a n = A159684 n

end A159684

/-! ## A159684.P1925293929404479020

`Δ[A054071(n+1)]`
-/

namespace A159684.P1925293929404479020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159684.P1925293929404479020

namespace A159684

/-- `Δ[A054071(n+1)]` -/
def P1925293929404479020.Spec : Prop :=
  ∀ n, P1925293929404479020.a n = A159684 n

end A159684

/-!
# A159685: Maximal product of distinct primes whose sum is <= n.

The programs for A159685, there is no canonical definition to state claims against.
-/

/-! ## A159685.P7024155409755439864

`A390532(A355573(n+5))`
-/

namespace A159685.P7024155409755439864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A355573 (n + 5)).toNat

end

end A159685.P7024155409755439864

/-! ## A159685.P7965377738014476915

`A355573(n+5)/A020639(A000079(n+1))`
-/

namespace A159685.P7965377738014476915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355573 (n + 5) : ℚ) / (A020639 (A000079 (n + 1)).toNat : ℚ)

end

end A159685.P7965377738014476915

/-! ## A159685.P8559093184313732711

`A355573(n+5)/A000005(A060357(n))`
-/

namespace A159685.P8559093184313732711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355573 (n + 5) : ℚ) / (A000005 (A060357 n).toNat : ℚ)

end

end A159685.P8559093184313732711

/-! ## A159685.P14397769756482479717

`A355573(n+5)/A153130(A001248(2*n+3))`
-/

namespace A159685.P14397769756482479717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355573 (n + 5) : ℚ) / (A153130 (A001248 (2 * n + 3)).toNat : ℚ)

end

end A159685.P14397769756482479717

/-!
# A159688: Triangle read by rows, denominators of Jakob Bernoulli's "Sums of Powers" triangle.

The programs for A159688, there is no canonical definition to state claims against.
-/

/-! ## A159688.P13342505381215501225

`A001222(A140431(n)+A103546(n))`
-/

namespace A159688.P13342505381215501225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A140431 n + A103546 (n + 1)).toNat

end

end A159688.P13342505381215501225

/-! ## A159688.P16258676357041094666

`A001222(A067541(n+1)+A005675(n+1))`
-/

namespace A159688.P16258676357041094666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A067541 (n + 1) + A005675 (n + 1)).toNat

end

end A159688.P16258676357041094666

/-!
# A159689: Fixed point of the morphism 0 -> 0,1,0; 1 -> 1,1; starting from a(0)=0.

The programs for A159689, the canonical program `A159689.P13390921477611222557` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159689 has offset 0).

The definition of A159689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159689.P13390921477611222557

`char[comp[∑[and(n, -n)]+n]]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159689

/-- `char[comp[∑[and(n, -n)]+n]]` -/
def P13390921477611222557.Spec : Prop :=
  ∀ n, (P13390921477611222557.a n : ℤ) = A159689 n

theorem P13390921477611222557.correct : P13390921477611222557.Spec := by
  intro n
  simp only [A159689]

end A159689

/-! ## A159689.P1034618904148011043

`1-char[∑[and(n, -n)]+n]`
-/

namespace A159689.P1034618904148011043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A159689.P1034618904148011043

namespace A159689

/-- `1-char[∑[and(n, -n)]+n]` -/
def P1034618904148011043.Spec : Prop :=
  ∀ n, P1034618904148011043.a n = A159689 n

end A159689

/-! ## A159689.P2911766268438894642

`xor(1, char[∑[and(n, -n)]+n])`
-/

namespace A159689.P2911766268438894642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A159689.P2911766268438894642

namespace A159689

/-- `xor(1, char[∑[and(n, -n)]+n])` -/
def P2911766268438894642.Spec : Prop :=
  ∀ n, (P2911766268438894642.a n : ℤ) = A159689 n

end A159689

/-! ## A159689.P1552010314587048608

`char[A340619(n+1)+n]`
-/

namespace A159689.P1552010314587048608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340619 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A159689.P1552010314587048608

namespace A159689

/-- `char[A340619(n+1)+n]` -/
def P1552010314587048608.Spec : Prop :=
  ∀ n, (P1552010314587048608.a n : ℤ) = A159689 n

end A159689

/-! ## A159689.P17450621511881307432

`3-p?[4-A290091(n)]`
-/

namespace A159689.P17450621511881307432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A290091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159689.P17450621511881307432

namespace A159689

/-- `3-p?[4-A290091(n)]` -/
def P17450621511881307432.Spec : Prop :=
  ∀ n, P17450621511881307432.a n = A159689 n

end A159689

/-! ## A159689.P8160224675554062482

`p?[A006047(A006047(n))]-2`
-/

namespace A159689.P8160224675554062482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A159689.P8160224675554062482

namespace A159689

/-- `p?[A006047(A006047(n))]-2` -/
def P8160224675554062482.Spec : Prop :=
  ∀ n, P8160224675554062482.a n = A159689 n

end A159689

/-! ## A159689.P7259680095746637884

`A291684(p?[4-A290091(n)])`
-/

namespace A159689.P7259680095746637884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A290091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291684 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A159689.P7259680095746637884

namespace A159689

/-- `A291684(p?[4-A290091(n)])` -/
def P7259680095746637884.Spec : Prop :=
  ∀ n, P7259680095746637884.a n = A159689 n

end A159689

/-! ## A159689.P16885965277937368387

`A000035(p?[A006047(A006047(n))])`
-/

namespace A159689.P16885965277937368387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A159689.P16885965277937368387

namespace A159689

/-- `A000035(p?[A006047(A006047(n))])` -/
def P16885965277937368387.Spec : Prop :=
  ∀ n, P16885965277937368387.a n = A159689 n

end A159689

/-! ## A159689.P4433911116317706099

`A014577(A340619(2*(2*n+1)))`
-/

namespace A159689.P4433911116317706099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A340619 (2 * (2 * n + 1))).toNat

end

end A159689.P4433911116317706099

namespace A159689

/-- `A014577(A340619(2*(2*n+1)))` -/
def P4433911116317706099.Spec : Prop :=
  ∀ n, P4433911116317706099.a n = A159689 n

end A159689

/-! ## A159689.P7086008698229753441

`eq[1, A205565(n)]%2`
-/

namespace A159689.P7086008698229753441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A159689.P7086008698229753441

namespace A159689

/-- `eq[1, A205565(n)]%2` -/
def P7086008698229753441.Spec : Prop :=
  ∀ n, (P7086008698229753441.a n : ℤ) = A159689 n

end A159689

/-! ## A159689.P7041972197065592578

`A000035(eq[1, A205565(n)])`
-/

namespace A159689.P7041972197065592578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159689.P7041972197065592578

namespace A159689

/-- `A000035(eq[1, A205565(n)])` -/
def P7041972197065592578.Spec : Prop :=
  ∀ n, P7041972197065592578.a n = A159689 n

end A159689

/-! ## A159689.P9167581346177793044

`A062756(eq[1, A205565(n)])`
-/

namespace A159689.P9167581346177793044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159689.P9167581346177793044

namespace A159689

/-- `A062756(eq[1, A205565(n)])` -/
def P9167581346177793044.Spec : Prop :=
  ∀ n, P9167581346177793044.a n = A159689 n

end A159689

/-! ## A159689.P11956010218293889389

`A316829(eq[1, A205565(n)])`
-/

namespace A159689.P11956010218293889389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159689.P11956010218293889389

namespace A159689

/-- `A316829(eq[1, A205565(n)])` -/
def P11956010218293889389.Spec : Prop :=
  ∀ n, P11956010218293889389.a n = A159689 n

end A159689

/-! ## A159689.P15735420812229574001

`A062756(lt[A062756(n), 2])`
-/

namespace A159689.P15735420812229574001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A159689.P15735420812229574001

namespace A159689

/-- `A062756(lt[A062756(n), 2])` -/
def P15735420812229574001.Spec : Prop :=
  ∀ n, P15735420812229574001.a n = A159689 n

end A159689

/-! ## A159689.P10583282589552764759

`A062756(eq[n%2, A062756(n)])`
-/

namespace A159689.P10583282589552764759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A159689.P10583282589552764759

namespace A159689

/-- `A062756(eq[n%2, A062756(n)])` -/
def P10583282589552764759.Spec : Prop :=
  ∀ n, P10583282589552764759.a n = A159689 n

end A159689

/-! ## A159689.P1723352696169975022

`A000035(eq[A000035(n), A062756(n)])`
-/

namespace A159689.P1723352696169975022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A159689.P1723352696169975022

namespace A159689

/-- `A000035(eq[A000035(n), A062756(n)])` -/
def P1723352696169975022.Spec : Prop :=
  ∀ n, P1723352696169975022.a n = A159689 n

end A159689

/-! ## A159689.P2644674142726648440

`A062756(eq[A105220(n), A120880(n)])`
-/

namespace A159689.P2644674142726648440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A159689.P2644674142726648440

namespace A159689

/-- `A062756(eq[A105220(n), A120880(n)])` -/
def P2644674142726648440.Spec : Prop :=
  ∀ n, P2644674142726648440.a n = A159689 n

end A159689

/-! ## A159689.P6329064639069892613

`A062756(eq[A062756(n), A316829(n)])`
-/

namespace A159689.P6329064639069892613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A159689.P6329064639069892613

namespace A159689

/-- `A062756(eq[A062756(n), A316829(n)])` -/
def P6329064639069892613.Spec : Prop :=
  ∀ n, P6329064639069892613.a n = A159689 n

end A159689

/-! ## A159689.P931539730442814861

`A062756(eq[A120880(n), A317952(n)])`
-/

namespace A159689.P931539730442814861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A159689.P931539730442814861

namespace A159689

/-- `A062756(eq[A120880(n), A317952(n)])` -/
def P931539730442814861.Spec : Prop :=
  ∀ n, P931539730442814861.a n = A159689 n

end A159689

/-!
# A159693: Partial sums of A000463.

The programs for A159693, the canonical program `A159693.P7442736019078327502` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159693 has offset 1).

The definition of A159693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159693.P7442736019078327502

`∑[gcd(∑[n+1]², ∑[∑[n%2]])]`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159693

/-- `∑[gcd(∑[n+1]², ∑[∑[n%2]])]` -/
def P7442736019078327502.Spec : Prop :=
  ∀ n, (P7442736019078327502.a n : ℤ) = A159693 (n + 1)

theorem P7442736019078327502.correct : P7442736019078327502.Spec := by
  intro n
  simp only [A159693, Nat.add_sub_cancel]

end A159693

/-! ## A159693.P5046450967585075962

`∑[ceil(((n+1)/2)^gcd(2, n+1))]`
-/

namespace A159693.P5046450967585075962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1 : ℚ) / 2) ^ Nat.gcd 2 (n + 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P5046450967585075962

namespace A159693

/-- `∑[ceil(((n+1)/2)^gcd(2, n+1))]` -/
def P5046450967585075962.Spec : Prop :=
  ∀ n, P5046450967585075962.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P16376662810918140912

`∑[a(n-2)+C(n, and(1, n))]` with `a(0)=1, a(1)=1`
-/

namespace A159693.P16376662810918140912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + Nat.choose n (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P16376662810918140912

namespace A159693

/-- `∑[a(n-2)+C(n, and(1, n))]` -/
def P16376662810918140912.Spec : Prop :=
  ∀ n, (P16376662810918140912.a n : ℤ) = A159693 (n + 1)

end A159693

/-! ## A159693.P17741901183593354507

`∑[or(1, a(n-2))+n]-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A159693.P17741901183593354507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lor 1 (f1 (n - 2)) + n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A159693.P17741901183593354507

namespace A159693

/-- `∑[or(1, a(n-2))+n]-a(n-1)` -/
def P17741901183593354507.Spec : Prop :=
  ∀ n, P17741901183593354507.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P2494758629845364475

`∑[A000463(n+1)]`
-/

namespace A159693.P2494758629845364475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P2494758629845364475

namespace A159693

/-- `∑[A000463(n+1)]` -/
def P2494758629845364475.Spec : Prop :=
  ∀ n, P2494758629845364475.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P6345863862395390779

`∑[A008619(n)*A152271(n)]`
-/

namespace A159693.P6345863862395390779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P6345863862395390779

namespace A159693

/-- `∑[A008619(n)*A152271(n)]` -/
def P6345863862395390779.Spec : Prop :=
  ∀ n, P6345863862395390779.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P2323740525535192099

`∑[A008619(n)^A000034(n)]`
-/

namespace A159693.P2323740525535192099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) ^ (A000034 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P2323740525535192099

namespace A159693

/-- `∑[A008619(n)^A000034(n)]` -/
def P2323740525535192099.Spec : Prop :=
  ∀ n, P2323740525535192099.a n = (A159693 (n + 1) : ℚ)

end A159693

/-! ## A159693.P13448497665976970586

`∑[gcd(A212760(n), A212765(n))]`
-/

namespace A159693.P13448497665976970586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212760 n) (A212765 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P13448497665976970586

namespace A159693

/-- `∑[gcd(A212760(n), A212765(n))]` -/
def P13448497665976970586.Spec : Prop :=
  ∀ n, (P13448497665976970586.a n : ℤ) = A159693 (n + 1)

end A159693

/-! ## A159693.P6521433083533168445

`A054974(n+2)-A131174(n)`
-/

namespace A159693.P6521433083533168445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2) - A131174 n

end

end A159693.P6521433083533168445

namespace A159693

/-- `A054974(n+2)-A131174(n)` -/
def P6521433083533168445.Spec : Prop :=
  ∀ n, P6521433083533168445.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P16456198335600275320

`∑[A142150(n)+A152271(n)²]`
-/

namespace A159693.P16456198335600275320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A152271 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P16456198335600275320

namespace A159693

/-- `∑[A142150(n)+A152271(n)²]` -/
def P16456198335600275320.Spec : Prop :=
  ∀ n, P16456198335600275320.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P7732229591836458082

`∑[A152271(n)²*A158416(n)]`
-/

namespace A159693.P7732229591836458082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n ^ 2 * A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P7732229591836458082

namespace A159693

/-- `∑[A152271(n)²*A158416(n)]` -/
def P7732229591836458082.Spec : Prop :=
  ∀ n, P7732229591836458082.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P17246958118659328652

`2*A058187(n)-A027656(n)²`
-/

namespace A159693.P17246958118659328652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058187 n - A027656 n ^ 2

end

end A159693.P17246958118659328652

namespace A159693

/-- `2*A058187(n)-A027656(n)²` -/
def P17246958118659328652.Spec : Prop :=
  ∀ n, P17246958118659328652.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P11055193170893196388

`∑[A008619(n)/2*A133265(n)]`
-/

namespace A159693.P11055193170893196388
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / 2 * (A133265 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P11055193170893196388

namespace A159693

/-- `∑[A008619(n)/2*A133265(n)]` -/
def P11055193170893196388.Spec : Prop :=
  ∀ n, P11055193170893196388.a n = (A159693 (n + 1) : ℚ)

end A159693

/-! ## A159693.P14841298530740709624

`∑[A026741(n)+A079097(n)-n]`
-/

namespace A159693.P14841298530740709624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (A079097 n - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P14841298530740709624

namespace A159693

/-- `∑[A026741(n)+A079097(n)-n]` -/
def P14841298530740709624.Spec : Prop :=
  ∀ n, P14841298530740709624.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P9133350891685400562

`∑[A027656(n)+∑[A001057(n)]²]`
-/

namespace A159693.P9133350891685400562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P9133350891685400562

namespace A159693

/-- `∑[A027656(n)+∑[A001057(n)]²]` -/
def P9133350891685400562.Spec : Prop :=
  ∀ n, P9133350891685400562.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P12300510082325751089

`∑[A008619(n)*A008619(A093178(n))]`
-/

namespace A159693.P12300510082325751089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A008619 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P12300510082325751089

namespace A159693

/-- `∑[A008619(n)*A008619(A093178(n))]` -/
def P12300510082325751089.Spec : Prop :=
  ∀ n, P12300510082325751089.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P5986880091819884651

`∑[A152271(A109613(n))*A152271(n)]`
-/

namespace A159693.P5986880091819884651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A109613 n).toNat * A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P5986880091819884651

namespace A159693

/-- `∑[A152271(A109613(n))*A152271(n)]` -/
def P5986880091819884651.Spec : Prop :=
  ∀ n, P5986880091819884651.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P13221413285057590445

`∑[(A008619(n)-A142150(n))*A008619(n)]`
-/

namespace A159693.P13221413285057590445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - A142150 n) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P13221413285057590445

namespace A159693

/-- `∑[(A008619(n)-A142150(n))*A008619(n)]` -/
def P13221413285057590445.Spec : Prop :=
  ∀ n, P13221413285057590445.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P4532030622848980664

`∑[A109594(∑[A000034(n)])]`
-/

namespace A159693.P4532030622848980664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109594 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P4532030622848980664

namespace A159693

/-- `∑[A109594(∑[A000034(n)])]` -/
def P4532030622848980664.Spec : Prop :=
  ∀ n, P4532030622848980664.a n = A159693 (n + 1)

end A159693

/-! ## A159693.P7060201546772208528

`∑[A110003(2*n+1)]`
-/

namespace A159693.P7060201546772208528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110003 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159693.P7060201546772208528

namespace A159693

/-- `∑[A110003(2*n+1)]` -/
def P7060201546772208528.Spec : Prop :=
  ∀ n, P7060201546772208528.a n = A159693 (n + 1)

end A159693

/-!
# A159694: a(n) = 2*a(n-1) + 2^(n-1), for n > 0, with a(0)=6.

The programs for A159694, the canonical program `A159694.P5152513348539967893` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159694 has offset 0).

The definition of A159694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159694.P5152513348539967893

`(6+n/2)*2^n`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159694

/-- `(6+n/2)*2^n` -/
def P5152513348539967893.Spec : Prop :=
  ∀ n, P5152513348539967893.a n = (A159694 n : ℚ)

end A159694

/-! ## A159694.P1504859959339399556

`2*a(n-1)+2^(n-1)` with `a(0)=6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159694.P1504859959339399556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A159694.P1504859959339399556

namespace A159694

/-- `2*a(n-1)+2^(n-1)` -/
def P1504859959339399556.Spec : Prop :=
  ∀ n, P1504859959339399556.a n = (A159694 n : ℚ)

end A159694

/-! ## A159694.P1481444692455701309

`A048467(n)+5`
-/

namespace A159694.P1481444692455701309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048467 n + 5

end

end A159694.P1481444692455701309

namespace A159694

/-- `A048467(n)+5` -/
def P1481444692455701309.Spec : Prop :=
  ∀ n, P1481444692455701309.a n = A159694 n

end A159694

/-! ## A159694.P12419558696918842892

`A159695(n)-2^n`
-/

namespace A159694.P12419558696918842892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159695 n - (2 ^ n : ℤ)

end

end A159694.P12419558696918842892

namespace A159694

/-- `A159695(n)-2^n` -/
def P12419558696918842892.Spec : Prop :=
  ∀ n, P12419558696918842892.a n = A159694 n

end A159694

/-! ## A159694.P8397937611303931850

`A111297(n+2)+2^n`
-/

namespace A159694.P8397937611303931850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 2) + (2 ^ n : ℤ)

end

end A159694.P8397937611303931850

namespace A159694

/-- `A111297(n+2)+2^n` -/
def P8397937611303931850.Spec : Prop :=
  ∀ n, P8397937611303931850.a n = A159694 n

end A159694

/-! ## A159694.P11767172515800265398

`A159696(n)-2^(n+1)`
-/

namespace A159694.P11767172515800265398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159696 n - (2 ^ (n + 1) : ℤ)

end

end A159694.P11767172515800265398

namespace A159694

/-- `A159696(n)-2^(n+1)` -/
def P11767172515800265398.Spec : Prop :=
  ∀ n, P11767172515800265398.a n = A159694 n

end A159694

/-! ## A159694.P6640868892862756103

`A001792(n)+5*2^n`
-/

namespace A159694.P6640868892862756103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (5 * 2 ^ n : ℤ)

end

end A159694.P6640868892862756103

namespace A159694

/-- `A001792(n)+5*2^n` -/
def P6640868892862756103.Spec : Prop :=
  ∀ n, P6640868892862756103.a n = A159694 n

end A159694

/-! ## A159694.P17791901739801634919

`A001787(n)+6*2^n`
-/

namespace A159694.P17791901739801634919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (6 * 2 ^ n : ℤ)

end

end A159694.P17791901739801634919

namespace A159694

/-- `A001787(n)+6*2^n` -/
def P17791901739801634919.Spec : Prop :=
  ∀ n, P17791901739801634919.a n = A159694 n

end A159694

/-! ## A159694.P14698029314021368515

`A045623(n+1)+2^(n+2)`
-/

namespace A159694.P14698029314021368515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) + (2 ^ (n + 2) : ℤ)

end

end A159694.P14698029314021368515

namespace A159694

/-- `A045623(n+1)+2^(n+2)` -/
def P14698029314021368515.Spec : Prop :=
  ∀ n, P14698029314021368515.a n = A159694 n

end A159694

/-! ## A159694.P15537507454598723393

`A109975(n+2)+2^(n+1)`
-/

namespace A159694.P15537507454598723393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A159694.P15537507454598723393

namespace A159694

/-- `A109975(n+2)+2^(n+1)` -/
def P15537507454598723393.Spec : Prop :=
  ∀ n, P15537507454598723393.a n = A159694 n

end A159694

/-! ## A159694.P14322787968228984798

`A034007(n+3)+2^(n+1)`
-/

namespace A159694.P14322787968228984798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 3) + (2 ^ (n + 1) : ℤ)

end

end A159694.P14322787968228984798

namespace A159694

/-- `A034007(n+3)+2^(n+1)` -/
def P14322787968228984798.Spec : Prop :=
  ∀ n, P14322787968228984798.a n = A159694 n

end A159694

/-! ## A159694.P4794643710618523830

`2^(n+3)-A172160(n+1)`
-/

namespace A159694.P4794643710618523830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A172160 (n + 1)

end

end A159694.P4794643710618523830

namespace A159694

/-- `2^(n+3)-A172160(n+1)` -/
def P4794643710618523830.Spec : Prop :=
  ∀ n, P4794643710618523830.a n = A159694 n

end A159694

/-! ## A159694.P6817642938849808418

`A131577(n)+2*a(n-1)` with `a(0)=6`
-/

namespace A159694.P6817642938849808418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A131577 n + 2 * a (n - 1)

end

end A159694.P6817642938849808418

namespace A159694

/-- `A131577(n)+2*a(n-1)` -/
def P6817642938849808418.Spec : Prop :=
  ∀ n, P6817642938849808418.a n = A159694 n

end A159694

/-! ## A159694.P12906898502477718321

`A020714(n)+A001792(n)`
-/

namespace A159694.P12906898502477718321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n + A001792 n

end

end A159694.P12906898502477718321

namespace A159694

/-- `A020714(n)+A001792(n)` -/
def P12906898502477718321.Spec : Prop :=
  ∀ n, P12906898502477718321.a n = A159694 n

end A159694

/-! ## A159694.P13084234014540978564

`A047859(n)+A020737(n)`
-/

namespace A159694.P13084234014540978564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047859 n + A020737 n

end

end A159694.P13084234014540978564

namespace A159694

/-- `A047859(n)+A020737(n)` -/
def P13084234014540978564.Spec : Prop :=
  ∀ n, P13084234014540978564.a n = A159694 n

end A159694

/-! ## A159694.P15729058215896810156

`A140504(n)+A047862(n)`
-/

namespace A159694.P15729058215896810156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 n + A047862 n

end

end A159694.P15729058215896810156

namespace A159694

/-- `A140504(n)+A047862(n)` -/
def P15729058215896810156.Spec : Prop :=
  ∀ n, P15729058215896810156.a n = A159694 n

end A159694

/-! ## A159694.P438598765047360610

`A164094(n)+A047860(n)`
-/

namespace A159694.P438598765047360610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n + A047860 n

end

end A159694.P438598765047360610

namespace A159694

/-- `A164094(n)+A047860(n)` -/
def P438598765047360610.Spec : Prop :=
  ∀ n, P438598765047360610.a n = A159694 n

end A159694

/-! ## A159694.P101292863255886596

`A153893(n)+A115618(n)`
-/

namespace A159694.P101292863255886596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n + A115618 n

end

end A159694.P101292863255886596

namespace A159694

/-- `A153893(n)+A115618(n)` -/
def P101292863255886596.Spec : Prop :=
  ∀ n, P101292863255886596.a n = A159694 n

end A159694

/-! ## A159694.P9790586822148001853

`A159697(n)-A007283(n)`
-/

namespace A159694.P9790586822148001853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 n - A007283 n

end

end A159694.P9790586822148001853

namespace A159694

/-- `A159697(n)-A007283(n)` -/
def P9790586822148001853.Spec : Prop :=
  ∀ n, P9790586822148001853.a n = A159694 n

end A159694

/-!
# A159695: a(0)=7, a(n) = 2*a(n-1) + 2^(n-1) for n > 0.

The programs for A159695, the canonical program `A159695.P238025676933653893` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159695 has offset 0).

The definition of A159695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159695.P238025676933653893

`(14+n)*2^(n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159695

/-- `(14+n)*2^(n-1)` -/
def P238025676933653893.Spec : Prop :=
  ∀ n, P238025676933653893.a n = (A159695 n : ℚ)

end A159695

/-! ## A159695.P13589665350240943072

`2*a(n-1)+2^(n-1)` with `a(0)=7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159695.P13589665350240943072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [7] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A159695.P13589665350240943072

namespace A159695

/-- `2*a(n-1)+2^(n-1)` -/
def P13589665350240943072.Spec : Prop :=
  ∀ n, P13589665350240943072.a n = (A159695 n : ℚ)

end A159695

/-! ## A159695.P7506164831460275654

`A048468(n)+6`
-/

namespace A159695.P7506164831460275654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048468 n + 6

end

end A159695.P7506164831460275654

namespace A159695

/-- `A048468(n)+6` -/
def P7506164831460275654.Spec : Prop :=
  ∀ n, P7506164831460275654.a n = A159695 n

end A159695

/-! ## A159695.P8540055900727697588

`A159694(n)+2^n`
-/

namespace A159695.P8540055900727697588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n + (2 ^ n : ℤ)

end

end A159695.P8540055900727697588

namespace A159695

/-- `A159694(n)+2^n` -/
def P8540055900727697588.Spec : Prop :=
  ∀ n, P8540055900727697588.a n = A159695 n

end A159695

/-! ## A159695.P8153802743036619955

`A159696(n)-2^n`
-/

namespace A159695.P8153802743036619955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159696 n - (2 ^ n : ℤ)

end

end A159695.P8153802743036619955

namespace A159695

/-- `A159696(n)-2^n` -/
def P8153802743036619955.Spec : Prop :=
  ∀ n, P8153802743036619955.a n = A159695 n

end A159695

/-! ## A159695.P17806099231684216573

`A159697(n)-2^(n+1)`
-/

namespace A159695.P17806099231684216573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 n - (2 ^ (n + 1) : ℤ)

end

end A159695.P17806099231684216573

namespace A159695

/-- `A159697(n)-2^(n+1)` -/
def P17806099231684216573.Spec : Prop :=
  ∀ n, P17806099231684216573.a n = A159695 n

end A159695

/-! ## A159695.P9517948081538413235

`A111297(n+2)+2^(n+1)`
-/

namespace A159695.P9517948081538413235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 2) + (2 ^ (n + 1) : ℤ)

end

end A159695.P9517948081538413235

namespace A159695

/-- `A111297(n+2)+2^(n+1)` -/
def P9517948081538413235.Spec : Prop :=
  ∀ n, P9517948081538413235.a n = A159695 n

end A159695

/-! ## A159695.P352202611207459152

`A045891(n+2)+2^(n+2)`
-/

namespace A159695.P352202611207459152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A159695.P352202611207459152

namespace A159695

/-- `A045891(n+2)+2^(n+2)` -/
def P352202611207459152.Spec : Prop :=
  ∀ n, P352202611207459152.a n = A159695 n

end A159695

/-! ## A159695.P2612472054132244239

`A131577(n)+2*a(n-1)` with `a(0)=7`
-/

namespace A159695.P2612472054132244239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A131577 n + 2 * a (n - 1)

end

end A159695.P2612472054132244239

namespace A159695

/-- `A131577(n)+2*a(n-1)` -/
def P2612472054132244239.Spec : Prop :=
  ∀ n, P2612472054132244239.a n = A159695 n

end A159695

/-! ## A159695.P16594022917447051928

`A005009(n)+A001787(n)`
-/

namespace A159695.P16594022917447051928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n + A001787 n

end

end A159695.P16594022917447051928

namespace A159695

/-- `A005009(n)+A001787(n)` -/
def P16594022917447051928.Spec : Prop :=
  ∀ n, P16594022917447051928.a n = A159695 n

end A159695

/-! ## A159695.P8091401072747766867

`A086224(n)+A005183(n)`
-/

namespace A159695.P8091401072747766867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086224 n + A005183 n

end

end A159695.P8091401072747766867

namespace A159695

/-- `A086224(n)+A005183(n)` -/
def P8091401072747766867.Spec : Prop :=
  ∀ n, P8091401072747766867.a n = A159695 n

end A159695

/-! ## A159695.P13676921496653798532

`A083575(n)+A047859(n)`
-/

namespace A159695.P13676921496653798532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083575 n + A047859 n

end

end A159695.P13676921496653798532

namespace A159695

/-- `A083575(n)+A047859(n)` -/
def P13676921496653798532.Spec : Prop :=
  ∀ n, P13676921496653798532.a n = A159695 n

end A159695

/-! ## A159695.P17007105745159298372

`A168614(n)+A048467(n)`
-/

namespace A159695.P17007105745159298372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 n + A048467 n

end

end A159695.P17007105745159298372

namespace A159695

/-- `A168614(n)+A048467(n)` -/
def P17007105745159298372.Spec : Prop :=
  ∀ n, P17007105745159298372.a n = A159695 n

end A159695

/-! ## A159695.P16057233581799658888

`abs(A000079(n)-A159696(n))`
-/

namespace A159695.P16057233581799658888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A159696 n|

end

end A159695.P16057233581799658888

namespace A159695

/-- `abs(A000079(n)-A159696(n))` -/
def P16057233581799658888.Spec : Prop :=
  ∀ n, P16057233581799658888.a n = A159695 n

end A159695

/-! ## A159695.P16861874602350720843

`A091629(n+1)+A001792(n)`
-/

namespace A159695.P16861874602350720843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091629 (n + 1) + A001792 n

end

end A159695.P16861874602350720843

namespace A159695

/-- `A091629(n+1)+A001792(n)` -/
def P16861874602350720843.Spec : Prop :=
  ∀ n, P16861874602350720843.a n = A159695 n

end A159695

/-! ## A159695.P16434599081746924311

`A000225(n)+A159694(n)+1`
-/

namespace A159695.P16434599081746924311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A159694 n + 1)

end

end A159695.P16434599081746924311

namespace A159695

/-- `A000225(n)+A159694(n)+1` -/
def P16434599081746924311.Spec : Prop :=
  ∀ n, P16434599081746924311.a n = A159695 n

end A159695

/-! ## A159695.P5278997670098722476

`A140504(n+1)+A047862(n)`
-/

namespace A159695.P5278997670098722476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 (n + 1) + A047862 n

end

end A159695.P5278997670098722476

namespace A159695

/-- `A140504(n+1)+A047862(n)` -/
def P5278997670098722476.Spec : Prop :=
  ∀ n, P5278997670098722476.a n = A159695 n

end A159695

/-! ## A159695.P360444674738505179

`A003945(n+2)+A001792(n)`
-/

namespace A159695.P360444674738505179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 2) + A001792 n

end

end A159695.P360444674738505179

namespace A159695

/-- `A003945(n+2)+A001792(n)` -/
def P360444674738505179.Spec : Prop :=
  ∀ n, P360444674738505179.a n = A159695 n

end A159695

/-! ## A159695.P6989446111013657251

`A133546(n+1)+A006127(n+2)`
-/

namespace A159695.P6989446111013657251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133546 (n + 1) + A006127 (n + 2)

end

end A159695.P6989446111013657251

namespace A159695

/-- `A133546(n+1)+A006127(n+2)` -/
def P6989446111013657251.Spec : Prop :=
  ∀ n, P6989446111013657251.a n = A159695 n

end A159695

/-!
# A159696: a(0)=8, a(n) = 2*a(n-1) + 2^(n-1) for n > 0.

The programs for A159696, the canonical program `A159696.P18112143721143048237` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159696 has offset 0).

The definition of A159696 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159696.P18112143721143048237

`(16+n)*2^(n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159696

/-- `(16+n)*2^(n-1)` -/
def P18112143721143048237.Spec : Prop :=
  ∀ n, P18112143721143048237.a n = (A159696 n : ℚ)

end A159696

/-! ## A159696.P4942676170014587737

`2*a(n-1)+2^(n-1)` with `a(0)=8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159696.P4942676170014587737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [8] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A159696.P4942676170014587737

namespace A159696

/-- `2*a(n-1)+2^(n-1)` -/
def P4942676170014587737.Spec : Prop :=
  ∀ n, P4942676170014587737.a n = (A159696 n : ℚ)

end A159696

/-! ## A159696.P13426370003275664129

`A048469(n)+7`
-/

namespace A159696.P13426370003275664129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048469 n + 7

end

end A159696.P13426370003275664129

namespace A159696

/-- `A048469(n)+7` -/
def P13426370003275664129.Spec : Prop :=
  ∀ n, P13426370003275664129.a n = A159696 n

end A159696

/-! ## A159696.P1988428532672434641

`A159697(n)-2^n`
-/

namespace A159696.P1988428532672434641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159697 n - (2 ^ n : ℤ)

end

end A159696.P1988428532672434641

namespace A159696

/-- `A159697(n)-2^n` -/
def P1988428532672434641.Spec : Prop :=
  ∀ n, P1988428532672434641.a n = A159696 n

end A159696

/-! ## A159696.P2126796984034178994

`A159694(n)+2^(n+1)`
-/

namespace A159696.P2126796984034178994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n + (2 ^ (n + 1) : ℤ)

end

end A159696.P2126796984034178994

namespace A159696

/-- `A159694(n)+2^(n+1)` -/
def P2126796984034178994.Spec : Prop :=
  ∀ n, P2126796984034178994.a n = A159696 n

end A159696

/-! ## A159696.P16681218963416926172

`A001787(n)+2^(n+3)`
-/

namespace A159696.P16681218963416926172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n + (2 ^ (n + 3) : ℤ)

end

end A159696.P16681218963416926172

namespace A159696

/-- `A001787(n)+2^(n+3)` -/
def P16681218963416926172.Spec : Prop :=
  ∀ n, P16681218963416926172.a n = A159696 n

end A159696

/-! ## A159696.P11038955865403859165

`A097067(n+1)+2^(n+3)`
-/

namespace A159696.P11038955865403859165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1) + (2 ^ (n + 3) : ℤ)

end

end A159696.P11038955865403859165

namespace A159696

/-- `A097067(n+1)+2^(n+3)` -/
def P11038955865403859165.Spec : Prop :=
  ∀ n, P11038955865403859165.a n = A159696 n

end A159696

/-! ## A159696.P4857000095092788862

`A109975(n+2)+2^(n+2)`
-/

namespace A159696.P4857000095092788862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A159696.P4857000095092788862

namespace A159696

/-- `A109975(n+2)+2^(n+2)` -/
def P4857000095092788862.Spec : Prop :=
  ∀ n, P4857000095092788862.a n = A159696 n

end A159696

/-! ## A159696.P4723038629592784519

`A139756(n+1)+2^(n+3)`
-/

namespace A159696.P4723038629592784519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + (2 ^ (n + 3) : ℤ)

end

end A159696.P4723038629592784519

namespace A159696

/-- `A139756(n+1)+2^(n+3)` -/
def P4723038629592784519.Spec : Prop :=
  ∀ n, P4723038629592784519.a n = A159696 n

end A159696

/-! ## A159696.P6047841997457204

`A034007(n+3)+2^(n+2)`
-/

namespace A159696.P6047841997457204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 3) + (2 ^ (n + 2) : ℤ)

end

end A159696.P6047841997457204

namespace A159696

/-- `A034007(n+3)+2^(n+2)` -/
def P6047841997457204.Spec : Prop :=
  ∀ n, P6047841997457204.a n = A159696 n

end A159696

/-! ## A159696.P4168856052885527050

`A011782(n)+2*a(n-1)` with `a(0)=8`
-/

namespace A159696.P4168856052885527050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A011782 n + 2 * a (n - 1)

end

end A159696.P4168856052885527050

namespace A159696

/-- `A011782(n)+2*a(n-1)` -/
def P4168856052885527050.Spec : Prop :=
  ∀ n, P4168856052885527050.a n = A159696 n

end A159696

/-! ## A159696.P14385954121053465598

`A131577(n)+2*a(n-1)` with `a(0)=8`
-/

namespace A159696.P14385954121053465598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A131577 n + 2 * a (n - 1)

end

end A159696.P14385954121053465598

namespace A159696

/-- `A131577(n)+2*a(n-1)` -/
def P14385954121053465598.Spec : Prop :=
  ∀ n, P14385954121053465598.a n = A159696 n

end A159696

/-! ## A159696.P4698520970998447751

`A005009(n)+A001792(n)`
-/

namespace A159696.P4698520970998447751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005009 n + A001792 n

end

end A159696.P4698520970998447751

namespace A159696

/-- `A005009(n)+A001792(n)` -/
def P4698520970998447751.Spec : Prop :=
  ∀ n, P4698520970998447751.a n = A159696 n

end A159696

/-! ## A159696.P2741083647138095752

`A159695(n)+A000079(n)`
-/

namespace A159696.P2741083647138095752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159695 n + A000079 n

end

end A159696.P2741083647138095752

namespace A159696

/-- `A159695(n)+A000079(n)` -/
def P2741083647138095752.Spec : Prop :=
  ∀ n, P2741083647138095752.a n = A159696 n

end A159696

/-! ## A159696.P1701644815102992985

`A153972(n)+A048468(n)`
-/

namespace A159696.P1701644815102992985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n + A048468 n

end

end A159696.P1701644815102992985

namespace A159696

/-- `A153972(n)+A048468(n)` -/
def P1701644815102992985.Spec : Prop :=
  ∀ n, P1701644815102992985.a n = A159696 n

end A159696

/-! ## A159696.P3984997859671195984

`A153894(n)+A115618(n)`
-/

namespace A159696.P3984997859671195984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153894 n + A115618 n

end

end A159696.P3984997859671195984

namespace A159696

/-- `A153894(n)+A115618(n)` -/
def P3984997859671195984.Spec : Prop :=
  ∀ n, P3984997859671195984.a n = A159696 n

end A159696

/-! ## A159696.P16004721855397188393

`A146541(n+1)+A001787(n)`
-/

namespace A159696.P16004721855397188393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146541 (n + 1) + A001787 n

end

end A159696.P16004721855397188393

namespace A159696

/-- `A146541(n+1)+A001787(n)` -/
def P16004721855397188393.Spec : Prop :=
  ∀ n, P16004721855397188393.a n = A159696 n

end A159696

/-! ## A159696.P14392019401014681948

`A171497(n+1)+A001787(n)`
-/

namespace A159696.P14392019401014681948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171497 (n + 1) + A001787 n

end

end A159696.P14392019401014681948

namespace A159696

/-- `A171497(n+1)+A001787(n)` -/
def P14392019401014681948.Spec : Prop :=
  ∀ n, P14392019401014681948.a n = A159696 n

end A159696

/-! ## A159696.P5617708468055119732

`A168614(n+1)+A048467(n)`
-/

namespace A159696.P5617708468055119732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 (n + 1) + A048467 n

end

end A159696.P5617708468055119732

namespace A159696

/-- `A168614(n+1)+A048467(n)` -/
def P5617708468055119732.Spec : Prop :=
  ∀ n, P5617708468055119732.a n = A159696 n

end A159696

/-!
# A159697: a(0) = 9, a(n) = 2*a(n-1) + 2^(n-1) for n > 0.

The programs for A159697, the canonical program `A159697.P3617110425862254121` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159697 has offset 0).

The definition of A159697 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159697.P3617110425862254121

`(18+n)*2^(n-1)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A159697

/-- `(18+n)*2^(n-1)` -/
def P3617110425862254121.Spec : Prop :=
  ∀ n, P3617110425862254121.a n = (A159697 n : ℚ)

end A159697

/-! ## A159697.P14136187288223976151

`2*a(n-1)+2^(n-1)` with `a(0)=9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159697.P14136187288223976151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  2 * a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A159697.P14136187288223976151

namespace A159697

/-- `2*a(n-1)+2^(n-1)` -/
def P14136187288223976151.Spec : Prop :=
  ∀ n, P14136187288223976151.a n = (A159697 n : ℚ)

end A159697

/-! ## A159697.P4428925515436894709

`A195857(n)+8`
-/

namespace A159697.P4428925515436894709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195857 n + 8

end

end A159697.P4428925515436894709

namespace A159697

/-- `A195857(n)+8` -/
def P4428925515436894709.Spec : Prop :=
  ∀ n, P4428925515436894709.a n = A159697 n

end A159697

/-! ## A159697.P16849407931885592227

`A159696(n)+2^n`
-/

namespace A159697.P16849407931885592227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159696 n + (2 ^ n : ℤ)

end

end A159697.P16849407931885592227

namespace A159697

/-- `A159696(n)+2^n` -/
def P16849407931885592227.Spec : Prop :=
  ∀ n, P16849407931885592227.a n = A159697 n

end A159697

/-! ## A159697.P5311030179027993934

`A159695(n)+2^(n+1)`
-/

namespace A159697.P5311030179027993934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159695 n + (2 ^ (n + 1) : ℤ)

end

end A159697.P5311030179027993934

namespace A159697

/-- `A159695(n)+2^(n+1)` -/
def P5311030179027993934.Spec : Prop :=
  ∀ n, P5311030179027993934.a n = A159697 n

end A159697

/-! ## A159697.P1648959006525017256

`A001792(n)+2^(n+3)`
-/

namespace A159697.P1648959006525017256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n + (2 ^ (n + 3) : ℤ)

end

end A159697.P1648959006525017256

namespace A159697

/-- `A001792(n)+2^(n+3)` -/
def P1648959006525017256.Spec : Prop :=
  ∀ n, P1648959006525017256.a n = A159697 n

end A159697

/-! ## A159697.P10030459599743583241

`A111297(n+2)+2^(n+2)`
-/

namespace A159697.P10030459599743583241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 (n + 2) + (2 ^ (n + 2) : ℤ)

end

end A159697.P10030459599743583241

namespace A159697

/-- `A111297(n+2)+2^(n+2)` -/
def P10030459599743583241.Spec : Prop :=
  ∀ n, P10030459599743583241.a n = A159697 n

end A159697

/-! ## A159697.P14744156083956622690

`A049610(n+2)+2^(n+3)`
-/

namespace A159697.P14744156083956622690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2) + (2 ^ (n + 3) : ℤ)

end

end A159697.P14744156083956622690

namespace A159697

/-- `A049610(n+2)+2^(n+3)` -/
def P14744156083956622690.Spec : Prop :=
  ∀ n, P14744156083956622690.a n = A159697 n

end A159697

/-! ## A159697.P12830637810464761659

`A005010(n)+A001787(n)`
-/

namespace A159697.P12830637810464761659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n + A001787 n

end

end A159697.P12830637810464761659

namespace A159697

/-- `A005010(n)+A001787(n)` -/
def P12830637810464761659.Spec : Prop :=
  ∀ n, P12830637810464761659.a n = A159697 n

end A159697

/-! ## A159697.P4895479237610805352

`A083686(n)+A047859(n)`
-/

namespace A159697.P4895479237610805352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083686 n + A047859 n

end

end A159697.P4895479237610805352

namespace A159697

/-- `A083686(n)+A047859(n)` -/
def P4895479237610805352.Spec : Prop :=
  ∀ n, P4895479237610805352.a n = A159697 n

end A159697

/-! ## A159697.P16443106007399460902

`A159694(n)+A007283(n)`
-/

namespace A159697.P16443106007399460902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159694 n + A007283 n

end

end A159697.P16443106007399460902

namespace A159697

/-- `A159694(n)+A007283(n)` -/
def P16443106007399460902.Spec : Prop :=
  ∀ n, P16443106007399460902.a n = A159697 n

end A159697

/-! ## A159697.P6890495835358469472

`A168415(n)+A048469(n)`
-/

namespace A159697.P6890495835358469472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168415 n + A048469 n

end

end A159697.P6890495835358469472

namespace A159697

/-- `A168415(n)+A048469(n)` -/
def P6890495835358469472.Spec : Prop :=
  ∀ n, P6890495835358469472.a n = A159697 n

end A159697

/-! ## A159697.P18390733867117686582

`A195858(n)-A185346(n)`
-/

namespace A159697.P18390733867117686582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195858 n - A185346 n

end

end A159697.P18390733867117686582

namespace A159697

/-- `A195858(n)-A185346(n)` -/
def P18390733867117686582.Spec : Prop :=
  ∀ n, P18390733867117686582.a n = A159697 n

end A159697

/-! ## A159697.P18100792456683250561

`A045623(n+1)+A005009(n)`
-/

namespace A159697.P18100792456683250561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1) + A005009 n

end

end A159697.P18100792456683250561

namespace A159697

/-- `A045623(n+1)+A005009(n)` -/
def P18100792456683250561.Spec : Prop :=
  ∀ n, P18100792456683250561.a n = A159697 n

end A159697

/-! ## A159697.P17744602278227031776

`A153972(n+1)+A048468(n)`
-/

namespace A159697.P17744602278227031776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 (n + 1) + A048468 n

end

end A159697.P17744602278227031776

namespace A159697

/-- `A153972(n+1)+A048468(n)` -/
def P17744602278227031776.Spec : Prop :=
  ∀ n, P17744602278227031776.a n = A159697 n

end A159697

/-! ## A159697.P1800086833163919131

`A164094(n+1)+A047860(n)`
-/

namespace A159697.P1800086833163919131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 (n + 1) + A047860 n

end

end A159697.P1800086833163919131

namespace A159697

/-- `A164094(n+1)+A047860(n)` -/
def P1800086833163919131.Spec : Prop :=
  ∀ n, P1800086833163919131.a n = A159697 n

end A159697

/-! ## A159697.P14837140655641044874

`A153893(n+1)+A115618(n)`
-/

namespace A159697.P14837140655641044874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 (n + 1) + A115618 n

end

end A159697.P14837140655641044874

namespace A159697

/-- `A153893(n+1)+A115618(n)` -/
def P14837140655641044874.Spec : Prop :=
  ∀ n, P14837140655641044874.a n = A159697 n

end A159697

/-! ## A159697.P3563294178894478697

`A153893(n)+A159694(n)+1`
-/

namespace A159697.P3563294178894478697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n + (A159694 n + 1)

end

end A159697.P3563294178894478697

namespace A159697

/-- `A153893(n)+A159694(n)+1` -/
def P3563294178894478697.Spec : Prop :=
  ∀ n, P3563294178894478697.a n = A159697 n

end A159697

/-! ## A159697.P2004950889892738515

`A140504(n+2)+A047862(n)`
-/

namespace A159697.P2004950889892738515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140504 (n + 2) + A047862 n

end

end A159697.P2004950889892738515

namespace A159697

/-- `A140504(n+2)+A047862(n)` -/
def P2004950889892738515.Spec : Prop :=
  ∀ n, P2004950889892738515.a n = A159697 n

end A159697

/-!
# A159699: Replace 2^k in binary expansion of n with A045623(k+1).

The programs for A159699, the canonical program `A159699.P10776547008237270048` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159699 has offset 0).

The definition of A159699 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159699.P10776547008237270048

`A136013(n)+2*n`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A159699

/-- `A136013(n)+2*n` -/
def P10776547008237270048.Spec : Prop :=
  ∀ n, P10776547008237270048.a n = A159699 n

theorem P10776547008237270048.correct : P10776547008237270048.Spec := by
  intro n
  simp only [A159699]

end A159699

/-! ## A159699.P15888735917227366532

`∑[and(n, -n)]+n`
-/

namespace A159699.P15888735917227366532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159699.P15888735917227366532

namespace A159699

/-- `∑[and(n, -n)]+n` -/
def P15888735917227366532.Spec : Prop :=
  ∀ n, P15888735917227366532.a n = A159699 n

end A159699

/-! ## A159699.P8297051413725908354

`n-∑[or(n, -n)]`
-/

namespace A159699.P8297051413725908354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159699.P8297051413725908354

namespace A159699

/-- `n-∑[or(n, -n)]` -/
def P8297051413725908354.Spec : Prop :=
  ∀ n, P8297051413725908354.a n = A159699 n

end A159699

/-! ## A159699.P9186335862017640621

`∑[abs(or(n, -n))]+n`
-/

namespace A159699.P9186335862017640621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159699.P9186335862017640621

namespace A159699

/-- `∑[abs(or(n, -n))]+n` -/
def P9186335862017640621.Spec : Prop :=
  ∀ n, P9186335862017640621.a n = A159699 n

end A159699

/-! ## A159699.P11493031286838041218

`∑[-or(n, -n)]+n`
-/

namespace A159699.P11493031286838041218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159699.P11493031286838041218

namespace A159699

/-- `∑[-or(n, -n)]+n` -/
def P11493031286838041218.Spec : Prop :=
  ∀ n, P11493031286838041218.a n = A159699 n

end A159699

/-! ## A159699.P17502630302857110558

`∑[n-and(n, n-1)]+n`
-/

namespace A159699.P17502630302857110558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159699.P17502630302857110558

namespace A159699

/-- `∑[n-and(n, n-1)]+n` -/
def P17502630302857110558.Spec : Prop :=
  ∀ n, P17502630302857110558.a n = A159699 n

end A159699

/-! ## A159699.P15586860265309737012

`n-∑[and(n, n-1)-n]`
-/

namespace A159699.P15586860265309737012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159699.P15586860265309737012

namespace A159699

/-- `n-∑[and(n, n-1)-n]` -/
def P15586860265309737012.Spec : Prop :=
  ∀ n, P15586860265309737012.a n = A159699 n

end A159699

/-! ## A159699.P4868121031515203177

`∑[round(xor(n, n-1)/2)+1]`
-/

namespace A159699.P4868121031515203177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ) / 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159699.P4868121031515203177

namespace A159699

/-- `∑[round(xor(n, n-1)/2)+1]` -/
def P4868121031515203177.Spec : Prop :=
  ∀ n, P4868121031515203177.a n = A159699 n

end A159699

/-! ## A159699.P1992719700347486102

`abs(∑[or(n, n-2*n)]-n)`
-/

namespace A159699.P1992719700347486102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A159699.P1992719700347486102

namespace A159699

/-- `abs(∑[or(n, n-2*n)]-n)` -/
def P1992719700347486102.Spec : Prop :=
  ∀ n, P1992719700347486102.a n = A159699 n

end A159699

/-! ## A159699.P8117299719331478678

`∑[or(n, n-1)-(n-1)]+n`
-/

namespace A159699.P8117299719331478678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159699.P8117299719331478678

namespace A159699

/-- `∑[or(n, n-1)-(n-1)]+n` -/
def P8117299719331478678.Spec : Prop :=
  ∀ n, P8117299719331478678.a n = A159699 n

end A159699

/-! ## A159699.P6402775053565631322

`n-∑[n-1-or(n, n-1)]`
-/

namespace A159699.P6402775053565631322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.lor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159699.P6402775053565631322

namespace A159699

/-- `n-∑[n-1-or(n, n-1)]` -/
def P6402775053565631322.Spec : Prop :=
  ∀ n, P6402775053565631322.a n = A159699 n

end A159699

/-! ## A159699.P3854588100620146194

`a(n-1)-or(n-1, -(n+1))` with `a(0)=0`
-/

namespace A159699.P3854588100620146194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - Int.lor ((n : ℤ) - 1) (-(n + 1 : ℤ))

end

end A159699.P3854588100620146194

namespace A159699

/-- `a(n-1)-or(n-1, -(n+1))` -/
def P3854588100620146194.Spec : Prop :=
  ∀ n, P3854588100620146194.a n = A159699 n

end A159699

/-! ## A159699.P17754277689503372017

`a(n-1)+n+1-and(n, n-1)` with `a(0)=0`
-/

namespace A159699.P17754277689503372017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1 : ℤ) - Int.land (n : ℤ) ((n : ℤ) - 1))

end

end A159699.P17754277689503372017

namespace A159699

/-- `a(n-1)+n+1-and(n, n-1)` -/
def P17754277689503372017.Spec : Prop :=
  ∀ n, P17754277689503372017.a n = A159699 n

end A159699

/-! ## A159699.P1531559212617123920

`A228366(n)-A011371(n)`
-/

namespace A159699.P1531559212617123920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228366 n - A011371 n

end

end A159699.P1531559212617123920

namespace A159699

/-- `A228366(n)-A011371(n)` -/
def P1531559212617123920.Spec : Prop :=
  ∀ n, P1531559212617123920.a n = A159699 n

end A159699

/-! ## A159699.P12795165973346301585

`eq[0, A159689(n)]`
-/

namespace A159699.P12795165973346301585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159689 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A159699.P12795165973346301585

namespace A159699

/-- `eq[0, A159689(n)]` -/
def P12795165973346301585.Spec : Prop :=
  ∀ n, (P12795165973346301585.a n : ℤ) = A159699 n

end A159699

/-! ## A159699.P9509581470494794382

`A002265(A080277(2*n+1))+n`
-/

namespace A159699.P9509581470494794382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A080277 (2 * n + 1)).toNat + (n : ℤ)

end

end A159699.P9509581470494794382

namespace A159699

/-- `A002265(A080277(2*n+1))+n` -/
def P9509581470494794382.Spec : Prop :=
  ∀ n, P9509581470494794382.a n = A159699 n

end A159699

/-! ## A159699.P13136594548880822321

`∑[gcd(n, 2^n)]+n-1`
-/

namespace A159699.P13136594548880822321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 1)

end

end A159699.P13136594548880822321

namespace A159699

/-- `∑[gcd(n, 2^n)]+n-1` -/
def P13136594548880822321.Spec : Prop :=
  ∀ n, P13136594548880822321.a n = A159699 n

end A159699

/-! ## A159699.P10957584883941144758

`∑[A308896(n²)]+n`
-/

namespace A159699.P10957584883941144758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308896 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A159699.P10957584883941144758

namespace A159699

/-- `∑[A308896(n²)]+n` -/
def P10957584883941144758.Spec : Prop :=
  ∀ n, P10957584883941144758.a n = A159699 n

end A159699

