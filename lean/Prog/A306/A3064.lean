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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A306401: The smallest integer k | 2^k + 1 such that omega(k) = n.

The programs for A306401, there is no canonical definition to state claims against.
-/

/-! ## A306401.P16398641304369536812

`A006521(A349089(n+1)+A186768(n))`
-/

namespace A306401.P16398641304369536812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006521 (A349089 (n + 1) + A186768 n).toNat

end

end A306401.P16398641304369536812

/-!
# A306402: Number of coalescent histories for a matching completely symmetric gene tree and completely symmetric species tree with 2^n leaves.

The programs for A306402, there is no canonical definition to state claims against.
-/

/-! ## A306402.P9743498956914211686

`A240209(A026150(n))²`
-/

namespace A306402.P9743498956914211686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240209 (A026150 n).toNat ^ 2

end

end A306402.P9743498956914211686

/-!
# A306403: The number of distinct products that can be formed by multiplying the parts of a partition of n into 3 positive parts.

The programs for A306403, there is no canonical definition to state claims against.
-/

/-! ## A306403.P5968805501882382208

`A306435(n)+A060277(A028310(n))`
-/

namespace A306403.P5968805501882382208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306435 n + A060277 (A028310 n).toNat

end

end A306403.P5968805501882382208

/-! ## A306403.P14367546724613506506

`A306435(n)+A060277(A000007(n)+n)`
-/

namespace A306403.P14367546724613506506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306435 n + A060277 (A000007 n + (n : ℤ)).toNat

end

end A306403.P14367546724613506506

/-! ## A306403.P1571588399411347474

`A306435(n)+A060277(A000038(n)+n)`
-/

namespace A306403.P1571588399411347474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306435 n + A060277 (A000038 n + (n : ℤ)).toNat

end

end A306403.P1571588399411347474

/-! ## A306403.P9727895506738651850

`A306435(n)+A060277(A233583(n+1))`
-/

namespace A306403.P9727895506738651850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306435 n + A060277 (A233583 (n + 1)).toNat

end

end A306403.P9727895506738651850

/-! ## A306403.P16131872898406750427

`A000194(A069905(n)*A306435(n))`
-/

namespace A306403.P16131872898406750427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A069905 n * A306435 n).toNat

end

end A306403.P16131872898406750427

/-!
# A306404: E.g.f. A(x) satisfies: A(x) = (1 + Integral A(x) dx) * (1 + Integral A(x)^3 dx).

The programs for A306404, there is no canonical definition to state claims against.
-/

/-! ## A306404.P2121818036756432019

`A341721(A078532(n))`
-/

namespace A306404.P2121818036756432019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A078532 n).toNat

end

end A306404.P2121818036756432019

/-!
# A306405: T(n,k) = k*Sum_{i=0..(n-k)/2} C(k,2*k+2*i-n)*C(k+2*i-1,i)/(k+i), triangle read by rows for n >= 1 and 1 <= k <= n.

The programs for A306405, there is no canonical definition to state claims against.
-/

/-! ## A306405.P14800916164112764161

`A124761(A008290(n))+A007318(n)`
-/

namespace A306405.P14800916164112764161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A008290 n).toNat + A007318 n

end

end A306405.P14800916164112764161

/-! ## A306405.P2489446873212836796

`A124761(A008290(n))+A034932(n)`
-/

namespace A306405.P2489446873212836796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A008290 n).toNat + A034932 n

end

end A306405.P2489446873212836796

/-! ## A306405.P9126418801697955700

`A277145(A028303(n))+A051137(n)`
-/

namespace A306405.P9126418801697955700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277145 (A028303 n).toNat + A051137 n

end

end A306405.P9126418801697955700

/-! ## A306405.P14974958039078843414

`A124761(A008290(n))+Δ[A102363(n)]`
-/

namespace A306405.P14974958039078843414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A008290 n).toNat + (f1 (n + 1) - f1 n)

end

end A306405.P14974958039078843414

/-!
# A306408: a(n) = Sum_{d|n} (-1)^omega(n/d) * d.

The programs for A306408, the canonical program `A306408.P7370464103915550099` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306408 has offset 1).

The definition of A306408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306408.P7370464103915550099

`∑{d}[n+1, A058026(#)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A306408

/-- `∑{d}[n+1, A058026(#)]` -/
def P7370464103915550099.Spec : Prop :=
  ∀ n, P7370464103915550099.a n = A306408 (n + 1)

theorem P7370464103915550099.correct : P7370464103915550099.Spec := by
  intro n
  simp only [A306408, Nat.add_sub_cancel]

end A306408

/-! ## A306408.P10203869247536732416

`A344223(n+1)%(n+2)`
-/

namespace A306408.P10203869247536732416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344223 (n + 1)) (n + 2 : ℤ)

end

end A306408.P10203869247536732416

namespace A306408

/-- `A344223(n+1)%(n+2)` -/
def P10203869247536732416.Spec : Prop :=
  ∀ n, P10203869247536732416.a n = A306408 (n + 1)

end A306408

/-! ## A306408.P8233253504497112173

`((n+1)*A344226(n+1))%(n+2)`
-/

namespace A306408.P8233253504497112173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A344226 (n + 1)) (n + 2 : ℤ)

end

end A306408.P8233253504497112173

namespace A306408

/-- `((n+1)*A344226(n+1))%(n+2)` -/
def P8233253504497112173.Spec : Prop :=
  ∀ n, P8233253504497112173.a n = A306408 (n + 1)

end A306408

/-! ## A306408.P15699981799267511975

`∑{d}[n+1, #*A076479((n+1)/#)]`
-/

namespace A306408.P15699981799267511975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A076479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306408.P15699981799267511975

namespace A306408

/-- `∑{d}[n+1, #*A076479((n+1)/#)]` -/
def P15699981799267511975.Spec : Prop :=
  ∀ n, P15699981799267511975.a n = A306408 (n + 1)

end A306408

/-! ## A306408.P1063564638501219346

`∑{d}[n+1, A002472(#)*A088705((n+1)/#)]`
-/

namespace A306408.P1063564638501219346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002472 d * A088705 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306408.P1063564638501219346

namespace A306408

/-- `∑{d}[n+1, A002472(#)*A088705((n+1)/#)]` -/
def P1063564638501219346.Spec : Prop :=
  ∀ n, P1063564638501219346.a n = A306408 (n + 1)

end A306408

/-! ## A306408.P18253460147721043515

`∑{d}[n+1, A000203(#)*A226177((n+1)/#)]`
-/

namespace A306408.P18253460147721043515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A226177 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306408.P18253460147721043515

namespace A306408

/-- `∑{d}[n+1, A000203(#)*A226177((n+1)/#)]` -/
def P18253460147721043515.Spec : Prop :=
  ∀ n, P18253460147721043515.a n = A306408 (n + 1)

end A306408

/-! ## A306408.P10790881116260867104

`∑{d}[n+1, A007429(#)*A326814((n+1)/#)]`
-/

namespace A306408.P10790881116260867104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A326814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306408.P10790881116260867104

namespace A306408

/-- `∑{d}[n+1, A007429(#)*A326814((n+1)/#)]` -/
def P10790881116260867104.Spec : Prop :=
  ∀ n, P10790881116260867104.a n = A306408 (n + 1)

end A306408

/-! ## A306408.P10448856918345691182

`∑{d}[n+1, A007431(#)*A326815((n+1)/#)]`
-/

namespace A306408.P10448856918345691182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A326815 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306408.P10448856918345691182

namespace A306408

/-- `∑{d}[n+1, A007431(#)*A326815((n+1)/#)]` -/
def P10448856918345691182.Spec : Prop :=
  ∀ n, P10448856918345691182.a n = A306408 (n + 1)

end A306408

/-!
# A306409: a(n) = -Sum_{0<=i

The programs for A306409, the canonical program `A306409.P2461275947846805459` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306409 has offset 0).

The definition of A306409 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006134, A120305, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306409.P2401998792204612704

`A006134(n)-A307354(n)`
-/

namespace A306409.P2401998792204612704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - A307354 n

end

end A306409.P2401998792204612704

namespace A306409

/-- `A006134(n)-A307354(n)` -/
def P2401998792204612704.Spec : Prop :=
  ∀ n, P2401998792204612704.a n = A306409 n

end A306409

/-! ## A306409.P2461275947846805459

`(A006134(n)-A120305(n))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A306409

/-- `(A006134(n)-A120305(n))/2` -/
def P2461275947846805459.Spec : Prop :=
  ∀ n, P2461275947846805459.a n = (A306409 n : ℚ)

end A306409

/-! ## A306409.P10427396871899197683

`A014300(n)+a(n-1)` with `a(0)=0`
-/

namespace A306409.P10427396871899197683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A014300 n + a (n - 1)

end

end A306409.P10427396871899197683

namespace A306409

/-- `A014300(n)+a(n-1)` -/
def P10427396871899197683.Spec : Prop :=
  ∀ n, P10427396871899197683.a n = A306409 n

end A306409

/-! ## A306409.P9646079320598601944

`A307354(n)-A120305(n)`
-/

namespace A306409.P9646079320598601944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307354 n - A120305 n

end

end A306409.P9646079320598601944

namespace A306409

/-- `A307354(n)-A120305(n)` -/
def P9646079320598601944.Spec : Prop :=
  ∀ n, P9646079320598601944.a n = A306409 n

end A306409

/-! ## A306409.P8013552356107211803

`∑[A000984(n)-A026641(n)]`
-/

namespace A306409.P8013552356107211803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P8013552356107211803

namespace A306409

/-- `∑[A000984(n)-A026641(n)]` -/
def P8013552356107211803.Spec : Prop :=
  ∀ n, P8013552356107211803.a n = A306409 n

end A306409

/-! ## A306409.P16433016488691149244

`A006134(n)-∑[A026641(n)]`
-/

namespace A306409.P16433016488691149244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006134 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P16433016488691149244

namespace A306409

/-- `A006134(n)-∑[A026641(n)]` -/
def P16433016488691149244.Spec : Prop :=
  ∀ n, P16433016488691149244.a n = A306409 n

end A306409

/-! ## A306409.P1962302164722731773

`A026641(n)-∑[A091526(n)]`
-/

namespace A306409.P1962302164722731773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P1962302164722731773

namespace A306409

/-- `A026641(n)-∑[A091526(n)]` -/
def P1962302164722731773.Spec : Prop :=
  ∀ n, P1962302164722731773.a n = A306409 n

end A306409

/-! ## A306409.P16771200163212230418

`∑[A026641(n)]-A120305(n)`
-/

namespace A306409.P16771200163212230418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A120305 n

end

end A306409.P16771200163212230418

namespace A306409

/-- `∑[A026641(n)]-A120305(n)` -/
def P16771200163212230418.Spec : Prop :=
  ∀ n, P16771200163212230418.a n = A306409 n

end A306409

/-! ## A306409.P9974723345017980878

`∑[A000984(n)]-A307354(n)`
-/

namespace A306409.P9974723345017980878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307354 n

end

end A306409.P9974723345017980878

namespace A306409

/-- `∑[A000984(n)]-A307354(n)` -/
def P9974723345017980878.Spec : Prop :=
  ∀ n, P9974723345017980878.a n = A306409 n

end A306409

/-! ## A306409.P4411038051707269232

`∑[A026641(n)-Δ[A112556(n)]]`
-/

namespace A306409.P4411038051707269232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P4411038051707269232

namespace A306409

/-- `∑[A026641(n)-Δ[A112556(n)]]` -/
def P4411038051707269232.Spec : Prop :=
  ∀ n, P4411038051707269232.a n = A306409 n

end A306409

/-! ## A306409.P14191464299314383683

`∑[A026641(n)-A072547(n+1)]`
-/

namespace A306409.P14191464299314383683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026641 n - A072547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P14191464299314383683

namespace A306409

/-- `∑[A026641(n)-A072547(n+1)]` -/
def P14191464299314383683.Spec : Prop :=
  ∀ n, P14191464299314383683.a n = A306409 n

end A306409

/-! ## A306409.P15159322385204740852

`A191526(2*n)-∑[A091526(n)]`
-/

namespace A306409.P15159322385204740852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P15159322385204740852

namespace A306409

/-- `A191526(2*n)-∑[A091526(n)]` -/
def P15159322385204740852.Spec : Prop :=
  ∀ n, P15159322385204740852.a n = A306409 n

end A306409

/-! ## A306409.P4594300591044908291

`A100066(2*(n+1))-A307354(n)`
-/

namespace A306409.P4594300591044908291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 (2 * (n + 1)) - A307354 n

end

end A306409.P4594300591044908291

namespace A306409

/-- `A100066(2*(n+1))-A307354(n)` -/
def P4594300591044908291.Spec : Prop :=
  ∀ n, P4594300591044908291.a n = A306409 n

end A306409

/-! ## A306409.P7952669034292535444

`A124642(2*n+1)-A307354(n)`
-/

namespace A306409.P7952669034292535444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124642 (2 * n + 1) - A307354 n

end

end A306409.P7952669034292535444

namespace A306409

/-- `A124642(2*n+1)-A307354(n)` -/
def P7952669034292535444.Spec : Prop :=
  ∀ n, P7952669034292535444.a n = A306409 n

end A306409

/-! ## A306409.P5020095836649716102

`∑[A191526(2*n)-Δ[A112556(n)]]`
-/

namespace A306409.P5020095836649716102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P5020095836649716102

namespace A306409

/-- `∑[A191526(2*n)-Δ[A112556(n)]]` -/
def P5020095836649716102.Spec : Prop :=
  ∀ n, P5020095836649716102.a n = A306409 n

end A306409

/-! ## A306409.P3769981366021306797

`∑[A191526(2*n)-A072547(n+1)]`
-/

namespace A306409.P3769981366021306797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n) - A072547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P3769981366021306797

namespace A306409

/-- `∑[A191526(2*n)-A072547(n+1)]` -/
def P3769981366021306797.Spec : Prop :=
  ∀ n, P3769981366021306797.a n = A306409 n

end A306409

/-! ## A306409.P4239667541027511410

`∑[(n+1)*A000108(n)-A026641(n)]`
-/

namespace A306409.P4239667541027511410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n - A026641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306409.P4239667541027511410

namespace A306409

/-- `∑[(n+1)*A000108(n)-A026641(n)]` -/
def P4239667541027511410.Spec : Prop :=
  ∀ n, P4239667541027511410.a n = A306409 n

end A306409

/-! ## A306409.P5000546332017780582

`∑[A014300(n+1)]-A014300(n+1)`
-/

namespace A306409.P5000546332017780582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014300 (n + 1)

end

end A306409.P5000546332017780582

namespace A306409

/-- `∑[A014300(n+1)]-A014300(n+1)` -/
def P5000546332017780582.Spec : Prop :=
  ∀ n, P5000546332017780582.a n = A306409 n

end A306409

/-! ## A306409.P5455760836094982806

`∑[A191526(2*n+1)]-A191526(2*n+1)`
-/

namespace A306409.P5455760836094982806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191526 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A191526 (2 * n + 1)

end

end A306409.P5455760836094982806

namespace A306409

/-- `∑[A191526(2*n+1)]-A191526(2*n+1)` -/
def P5455760836094982806.Spec : Prop :=
  ∀ n, P5455760836094982806.a n = A306409 n

end A306409

/-! ## A306409.P16065894832731172684

`A079309(n+1)+A120305(n+1)-A000984(n+1)`
-/

namespace A306409.P16065894832731172684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079309 (n + 1) + (A120305 (n + 1) - A000984 (n + 1))

end

end A306409.P16065894832731172684

namespace A306409

/-- `A079309(n+1)+A120305(n+1)-A000984(n+1)` -/
def P16065894832731172684.Spec : Prop :=
  ∀ n, P16065894832731172684.a n = A306409 n

end A306409

/-!
# A306411: a(n) = phi(n^6) = n^5*phi(n).

The programs for A306411, the canonical program `A306411.P4997274916916446077` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306411 has offset 1).

The definition of A306411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306411.P4997274916916446077

`(n+1)*A238533(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A306411

/-- `(n+1)*A238533(n+1)` -/
def P4997274916916446077.Spec : Prop :=
  ∀ n, P4997274916916446077.a n = A306411 (n + 1)

theorem P4997274916916446077.correct : P4997274916916446077.Spec := by
  intro n
  simp only [A306411, Nat.add_sub_cancel]

end A306411

/-! ## A306411.P3029959703720203602

`A239442(n+1)/(n+1)`
-/

namespace A306411.P3029959703720203602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A306411.P3029959703720203602

namespace A306411

/-- `A239442(n+1)/(n+1)` -/
def P3029959703720203602.Spec : Prop :=
  ∀ n, P3029959703720203602.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P12843170229291880251

`(n+1)²*A189393(n+1)`
-/

namespace A306411.P12843170229291880251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A189393 (n + 1)

end

end A306411.P12843170229291880251

namespace A306411

/-- `(n+1)²*A189393(n+1)` -/
def P12843170229291880251.Spec : Prop :=
  ∀ n, P12843170229291880251.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P1319379625310468144

`A306412(n+1)/(n+1)²`
-/

namespace A306411.P1319379625310468144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306412 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A306411.P1319379625310468144

namespace A306411

/-- `A306412(n+1)/(n+1)²` -/
def P1319379625310468144.Spec : Prop :=
  ∀ n, P1319379625310468144.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P495999303582802218

`(n+1)^3*A053191(n+1)`
-/

namespace A306411.P495999303582802218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A053191 (n + 1)

end

end A306411.P495999303582802218

namespace A306411

/-- `(n+1)^3*A053191(n+1)` -/
def P495999303582802218.Spec : Prop :=
  ∀ n, P495999303582802218.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P14232071285951386286

`A239443(n+1)/(n+1)^3`
-/

namespace A306411.P14232071285951386286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ)

end

end A306411.P14232071285951386286

namespace A306411

/-- `A239443(n+1)/(n+1)^3` -/
def P14232071285951386286.Spec : Prop :=
  ∀ n, P14232071285951386286.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P1404693947266497701

`(n+1)^5*A000010(n+1)`
-/

namespace A306411.P1404693947266497701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) * A000010 (n + 1)

end

end A306411.P1404693947266497701

namespace A306411

/-- `(n+1)^5*A000010(n+1)` -/
def P1404693947266497701.Spec : Prop :=
  ∀ n, P1404693947266497701.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P12731503705592413047

`(n+1)²²*A002618(n+1)`
-/

namespace A306411.P12731503705592413047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A002618 (n + 1)

end

end A306411.P12731503705592413047

namespace A306411

/-- `(n+1)²²*A002618(n+1)` -/
def P12731503705592413047.Spec : Prop :=
  ∀ n, P12731503705592413047.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P8033245701070006761

`(A109606(n+1)+1)*(n+1)^5`
-/

namespace A306411.P8033245701070006761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1) * ((n + 1) ^ 5 : ℤ)

end

end A306411.P8033245701070006761

namespace A306411

/-- `(A109606(n+1)+1)*(n+1)^5` -/
def P8033245701070006761.Spec : Prop :=
  ∀ n, P8033245701070006761.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P15655371779211773191

`(A039649(n+1)-1)*(n+1)^5`
-/

namespace A306411.P15655371779211773191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1) * ((n + 1) ^ 5 : ℤ)

end

end A306411.P15655371779211773191

namespace A306411

/-- `(A039649(n+1)-1)*(n+1)^5` -/
def P15655371779211773191.Spec : Prop :=
  ∀ n, P15655371779211773191.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P9437561234712790361

`(A258807(n+1)+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A306411.P9437561234712790361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258807 (n + 1) + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A306411.P9437561234712790361

namespace A306411

/-- `(A258807(n+1)+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P9437561234712790361.Spec : Prop :=
  ∀ n, P9437561234712790361.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P3336480813619637025

`A189393(n+1)²/A002618(n+1)`
-/

namespace A306411.P3336480813619637025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) ^ 2 : ℚ) / (A002618 (n + 1) : ℚ)

end

end A306411.P3336480813619637025

namespace A306411

/-- `A189393(n+1)²/A002618(n+1)` -/
def P3336480813619637025.Spec : Prop :=
  ∀ n, P3336480813619637025.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P5896683217530806226

`∑{d}[n+1, A013954(#)*A178448((n+1)/#)]`
-/

namespace A306411.P5896683217530806226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A013954 d * A178448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306411.P5896683217530806226

namespace A306411

/-- `∑{d}[n+1, A013954(#)*A178448((n+1)/#)]` -/
def P5896683217530806226.Spec : Prop :=
  ∀ n, P5896683217530806226.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P873307106034043589

`∑{d}[n+1, A069091(#)*A189923((n+1)/#)]`
-/

namespace A306411.P873307106034043589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069091 d * A189923 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306411.P873307106034043589

namespace A306411

/-- `∑{d}[n+1, A069091(#)*A189923((n+1)/#)]` -/
def P873307106034043589.Spec : Prop :=
  ∀ n, P873307106034043589.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P2959135136847670628

`A000010(n+1)*(n+1)²*A000578(n+1)`
-/

namespace A306411.P2959135136847670628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * ((n + 1) ^ 2 : ℤ) * A000578 (n + 1)

end

end A306411.P2959135136847670628

namespace A306411

/-- `A000010(n+1)*(n+1)²*A000578(n+1)` -/
def P2959135136847670628.Spec : Prop :=
  ∀ n, P2959135136847670628.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P920778456383011893

`A000010(n+1)+A000010(n+1)*A258807(n+1)`
-/

namespace A306411.P920778456383011893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A000010 (n + 1) * A258807 (n + 1)

end

end A306411.P920778456383011893

namespace A306411

/-- `A000010(n+1)+A000010(n+1)*A258807(n+1)` -/
def P920778456383011893.Spec : Prop :=
  ∀ n, P920778456383011893.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P7057497054016848573

`A000010(n+1)/A189393(n+1)*A239443(n+1)`
-/

namespace A306411.P7057497054016848573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A189393 (n + 1) : ℚ) * (A239443 (n + 1) : ℚ)

end

end A306411.P7057497054016848573

namespace A306411

/-- `A000010(n+1)/A189393(n+1)*A239443(n+1)` -/
def P7057497054016848573.Spec : Prop :=
  ∀ n, P7057497054016848573.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P889077416343197155

`A002618(n+1)/A189393(n+1)*A306412(n+1)`
-/

namespace A306411.P889077416343197155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A189393 (n + 1) : ℚ) * (A306412 (n + 1) : ℚ)

end

end A306411.P889077416343197155

namespace A306411

/-- `A002618(n+1)/A189393(n+1)*A306412(n+1)` -/
def P889077416343197155.Spec : Prop :=
  ∀ n, P889077416343197155.a n = (A306411 (n + 1) : ℚ)

end A306411

/-! ## A306411.P14997596043031485208

`A000010(n+1)*A000584(n+1)`
-/

namespace A306411.P14997596043031485208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000584 (n + 1)

end

end A306411.P14997596043031485208

namespace A306411

/-- `A000010(n+1)*A000584(n+1)` -/
def P14997596043031485208.Spec : Prop :=
  ∀ n, P14997596043031485208.a n = A306411 (n + 1)

end A306411

/-! ## A306411.P5936089199518754983

`(n+1)*A000010(n+1)*Δ[A000538(n)]`
-/

namespace A306411.P5936089199518754983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (n + 1) * (f1 (n + 1) - f1 n)

end

end A306411.P5936089199518754983

namespace A306411

/-- `(n+1)*A000010(n+1)*Δ[A000538(n)]` -/
def P5936089199518754983.Spec : Prop :=
  ∀ n, P5936089199518754983.a n = A306411 (n + 1)

end A306411

/-!
# A306412: a(n) = phi(n^8) = n^7*phi(n).

The programs for A306412, the canonical program `A306412.P6965010902203263788` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306412 has offset 1).

The definition of A306412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306412.P6965010902203263788

`(n+1)*A239442(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A306412

/-- `(n+1)*A239442(n+1)` -/
def P6965010902203263788.Spec : Prop :=
  ∀ n, P6965010902203263788.a n = A306412 (n + 1)

theorem P6965010902203263788.correct : P6965010902203263788.Spec := by
  intro n
  simp only [A306412, Nat.add_sub_cancel]

end A306412

/-! ## A306412.P11370924229473571228

`A239443(n+1)/(n+1)`
-/

namespace A306412.P11370924229473571228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239443 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A306412.P11370924229473571228

namespace A306412

/-- `A239443(n+1)/(n+1)` -/
def P11370924229473571228.Spec : Prop :=
  ∀ n, P11370924229473571228.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P17338483804866485308

`(n+1)²*A306411(n+1)`
-/

namespace A306412.P17338483804866485308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A306411 (n + 1)

end

end A306412.P17338483804866485308

namespace A306412

/-- `(n+1)²*A306411(n+1)` -/
def P17338483804866485308.Spec : Prop :=
  ∀ n, P17338483804866485308.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P316240493647062509

`(n+1)^3*A238533(n+1)`
-/

namespace A306412.P316240493647062509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A238533 (n + 1)

end

end A306412.P316240493647062509

namespace A306412

/-- `(n+1)^3*A238533(n+1)` -/
def P316240493647062509.Spec : Prop :=
  ∀ n, P316240493647062509.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P16400410010154810770

`(n+1)^5*A053191(n+1)`
-/

namespace A306412.P16400410010154810770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 5 : ℤ) * A053191 (n + 1)

end

end A306412.P16400410010154810770

namespace A306412

/-- `(n+1)^5*A053191(n+1)` -/
def P16400410010154810770.Spec : Prop :=
  ∀ n, P16400410010154810770.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P13375825734425677663

`(n+1)^7*A000010(n+1)`
-/

namespace A306412.P13375825734425677663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 7 : ℤ) * A000010 (n + 1)

end

end A306412.P13375825734425677663

namespace A306412

/-- `(n+1)^7*A000010(n+1)` -/
def P13375825734425677663.Spec : Prop :=
  ∀ n, P13375825734425677663.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P13949746187179198338

`(n+1)²²*A189393(n+1)`
-/

namespace A306412.P13949746187179198338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A189393 (n + 1)

end

end A306412.P13949746187179198338

namespace A306412

/-- `(n+1)²²*A189393(n+1)` -/
def P13949746187179198338.Spec : Prop :=
  ∀ n, P13949746187179198338.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P5244453129584625265

`(A258808(n+1)+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]`
-/

namespace A306412.P5244453129584625265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258808 (n + 1) + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))

end

end A306412.P5244453129584625265

namespace A306412

/-- `(A258808(n+1)+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]` -/
def P5244453129584625265.Spec : Prop :=
  ∀ n, P5244453129584625265.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P7780504856432505379

`A238533(n+1)²/A002618(n+1)`
-/

namespace A306412.P7780504856432505379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) ^ 2 : ℚ) / (A002618 (n + 1) : ℚ)

end

end A306412.P7780504856432505379

namespace A306412

/-- `A238533(n+1)²/A002618(n+1)` -/
def P7780504856432505379.Spec : Prop :=
  ∀ n, P7780504856432505379.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P15060616863976263480

`A306411(n+1)²/A189393(n+1)`
-/

namespace A306412.P15060616863976263480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306411 (n + 1) ^ 2 : ℚ) / (A189393 (n + 1) : ℚ)

end

end A306412.P15060616863976263480

namespace A306412

/-- `A306411(n+1)²/A189393(n+1)` -/
def P15060616863976263480.Spec : Prop :=
  ∀ n, P15060616863976263480.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P15835085260981248112

`A239442(n+1)²/A306411(n+1)`
-/

namespace A306412.P15835085260981248112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239442 (n + 1) ^ 2 : ℚ) / (A306411 (n + 1) : ℚ)

end

end A306412.P15835085260981248112

namespace A306412

/-- `A239442(n+1)²/A306411(n+1)` -/
def P15835085260981248112.Spec : Prop :=
  ∀ n, P15835085260981248112.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P12938913105193661774

`A000578(n+1)*A000578(n+1)*A002618(n+1)`
-/

namespace A306412.P12938913105193661774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) * A000578 (n + 1) * A002618 (n + 1)

end

end A306412.P12938913105193661774

namespace A306412

/-- `A000578(n+1)*A000578(n+1)*A002618(n+1)` -/
def P12938913105193661774.Spec : Prop :=
  ∀ n, P12938913105193661774.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P12531643858951944782

`A189393(n+1)*A306411(n+1)/A002618(n+1)`
-/

namespace A306412.P12531643858951944782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) * A306411 (n + 1) : ℚ) / (A002618 (n + 1) : ℚ)

end

end A306412.P12531643858951944782

namespace A306412

/-- `A189393(n+1)*A306411(n+1)/A002618(n+1)` -/
def P12531643858951944782.Spec : Prop :=
  ∀ n, P12531643858951944782.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P10719771243131427578

`A238533(n+1)*A306411(n+1)/A053191(n+1)`
-/

namespace A306412.P10719771243131427578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238533 (n + 1) * A306411 (n + 1) : ℚ) / (A053191 (n + 1) : ℚ)

end

end A306412.P10719771243131427578

namespace A306412

/-- `A238533(n+1)*A306411(n+1)/A053191(n+1)` -/
def P10719771243131427578.Spec : Prop :=
  ∀ n, P10719771243131427578.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P1114272302083813263

`(A053192(n+1)+A053191(n+1))²*A002618(n+1)`
-/

namespace A306412.P1114272302083813263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053192 (n + 1) + A053191 (n + 1)) ^ 2 * A002618 (n + 1)

end

end A306412.P1114272302083813263

namespace A306412

/-- `(A053192(n+1)+A053191(n+1))²*A002618(n+1)` -/
def P1114272302083813263.Spec : Prop :=
  ∀ n, P1114272302083813263.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P15250292841791967148

`A002618(n+1)/(A189393(n+1)/A239442(n+1))²`
-/

namespace A306412.P15250292841791967148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / ((A189393 (n + 1) : ℚ) / (A239442 (n + 1) : ℚ)) ^ 2

end

end A306412.P15250292841791967148

namespace A306412

/-- `A002618(n+1)/(A189393(n+1)/A239442(n+1))²` -/
def P15250292841791967148.Spec : Prop :=
  ∀ n, P15250292841791967148.a n = (A306412 (n + 1) : ℚ)

end A306412

/-! ## A306412.P3818588531002720131

`A000010(n+1)*A001015(n+1)`
-/

namespace A306412.P3818588531002720131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A001015 (n + 1)

end

end A306412.P3818588531002720131

namespace A306412

/-- `A000010(n+1)*A001015(n+1)` -/
def P3818588531002720131.Spec : Prop :=
  ∀ n, P3818588531002720131.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P17080949844806238283

`A000010(n+1)*(n+1)²*A000584(n+1)`
-/

namespace A306412.P17080949844806238283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * ((n + 1) ^ 2 : ℤ) * A000584 (n + 1)

end

end A306412.P17080949844806238283

namespace A306412

/-- `A000010(n+1)*(n+1)²*A000584(n+1)` -/
def P17080949844806238283.Spec : Prop :=
  ∀ n, P17080949844806238283.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P3732209778294301346

`(n+1)²*A000583(n+1)*A002618(n+1)`
-/

namespace A306412.P3732209778294301346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A000583 (n + 1) * A002618 (n + 1)

end

end A306412.P3732209778294301346

namespace A306412

/-- `(n+1)²*A000583(n+1)*A002618(n+1)` -/
def P3732209778294301346.Spec : Prop :=
  ∀ n, P3732209778294301346.a n = A306412 (n + 1)

end A306412

/-! ## A306412.P1256494533370055486

`A000010(n+1)*A000578(n+1)*A000583(n+1)`
-/

namespace A306412.P1256494533370055486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000578 (n + 1) * A000583 (n + 1)

end

end A306412.P1256494533370055486

namespace A306412

/-- `A000010(n+1)*A000578(n+1)*A000583(n+1)` -/
def P1256494533370055486.Spec : Prop :=
  ∀ n, P1256494533370055486.a n = A306412 (n + 1)

end A306412

/-!
# A306413: a(n) is the multiplicative order of 2 modulo A001567(n).

The programs for A306413, there is no canonical definition to state claims against.
-/

/-! ## A306413.P17641812405922717433

`(A001567(n+1)-1)/A300101(n+1)`
-/

namespace A306413.P17641812405922717433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001567 (n + 1) - 1 : ℚ) / (A300101 (n + 1) : ℚ)

end

end A306413.P17641812405922717433

/-! ## A306413.P1921011570700891863

`A002326((A001567(n+1)-1)/2)`
-/

namespace A306413.P1921011570700891863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A001567 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A306413.P1921011570700891863

/-! ## A306413.P3949617737760941131

`floor(A001567(n+1)/A300101(n+1))`
-/

namespace A306413.P3949617737760941131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001567 (n + 1) : ℚ) / (A300101 (n + 1) : ℚ)⌋

end

end A306413.P3949617737760941131

/-! ## A306413.P15499473360123172771

`round(A001567(A000027(n+1))/A300101(n+1))`
-/

namespace A306413.P15499473360123172771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001567 (A000027 (n + 1)).toNat : ℚ) / (A300101 (n + 1) : ℚ))

end

end A306413.P15499473360123172771

/-! ## A306413.P4819349338727162356

`A002326(floor(A001567(n+1)/2))`
-/

namespace A306413.P4819349338727162356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 ⌊(A001567 (n + 1) : ℚ) / 2⌋.toNat

end

end A306413.P4819349338727162356

/-!
# A306414: a(n) = psi(A002997(n)), psi = A002322.

The programs for A306414, there is no canonical definition to state claims against.
-/

/-! ## A306414.P15888912170943266503

`(A002997(n+1)-1)/A174590(n+1)`
-/

namespace A306414.P15888912170943266503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) - 1 : ℚ) / (A174590 (n + 1) : ℚ)

end

end A306414.P15888912170943266503

/-! ## A306414.P17031103419374284075

`A002322(A002997(n+1))`
-/

namespace A306414.P17031103419374284075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002997 (n + 1)).toNat

end

end A306414.P17031103419374284075

/-! ## A306414.P14818023411616445422

`floor(A002997(n+1)/A174590(n+1))`
-/

namespace A306414.P14818023411616445422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002997 (n + 1) : ℚ) / (A174590 (n + 1) : ℚ)⌋

end

end A306414.P14818023411616445422

/-! ## A306414.P11304330926780879528

`round(A002997(A000027(n+1))/A174590(n+1))`
-/

namespace A306414.P11304330926780879528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002997 (A000027 (n + 1)).toNat : ℚ) / (A174590 (n + 1) : ℚ))

end

end A306414.P11304330926780879528

/-! ## A306414.P13992108779269603135

`(∪[A087788(n+1), A141711(n+1)]-1)/A174590(n+1)`
-/

namespace A306414.P13992108779269603135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A174590 (n + 1) : ℚ)

end

end A306414.P13992108779269603135

/-! ## A306414.P15360510552440846892

`A004442(ceil(A002997(n+1)/A174590(n+1)))`
-/

namespace A306414.P15360510552440846892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ⌈(A002997 (n + 1) : ℚ) / (A174590 (n + 1) : ℚ)⌉.toNat

end

end A306414.P15360510552440846892

/-! ## A306414.P11533756664592220536

`A346467(ceil(A002997(n+1)/A174590(n+1)))`
-/

namespace A306414.P11533756664592220536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346467 ⌈(A002997 (n + 1) : ℚ) / (A174590 (n + 1) : ℚ)⌉.toNat

end

end A306414.P11533756664592220536

/-! ## A306414.P3251978149909153055

`A028310(round(A002997(n+1)/A174590(n+1)))`
-/

namespace A306414.P3251978149909153055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A002997 (n + 1) : ℚ) / (A174590 (n + 1) : ℚ))).toNat

end

end A306414.P3251978149909153055

/-!
# A306415: Numbers k such that A179682(k) <> A033996(k).

The programs for A306415, there is no canonical definition to state claims against.
-/

/-! ## A306415.P2634341144237752348

`lt[A179682(n), n²+2]`
-/

namespace A306415.P2634341144237752348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A306415.P2634341144237752348

/-! ## A306415.P17853191746870376067

`lt[A179682(n)-1, A028310(n)²]`
-/

namespace A306415.P17853191746870376067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306415.P17853191746870376067

/-! ## A306415.P9068490477623013612

`lt[n, (A033996(n)-A179682(n))²]`
-/

namespace A306415.P9068490477623013612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033996 n - A179682 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306415.P9068490477623013612

/-! ## A306415.P15784851306344741952

`lt[A179682(n)-1, A000096(A000265(n+1))]`
-/

namespace A306415.P15784851306344741952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306415.P15784851306344741952

/-! ## A306415.P14666357695463019822

`lt[A179682(n)+1, A000040(A000040(n+1))]`
-/

namespace A306415.P14666357695463019822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179682 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306415.P14666357695463019822

/-!
# A306417: Number of self-conjugate set partitions of {1, ..., n}.

The programs for A306417, there is no canonical definition to state claims against.
-/

/-! ## A306417.P5201297074656211135

`A273479(A273524(n+1)-A256450(n))`
-/

namespace A306417.P5201297074656211135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273479 (A273524 (n + 1) - A256450 n).toNat

end

end A306417.P5201297074656211135

/-! ## A306417.P10343396270694573994

`A000110(n)%A156247(A146605(n+1))`
-/

namespace A306417.P10343396270694573994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000110 n) (A156247 (A146605 (n + 1)).toNat)

end

end A306417.P10343396270694573994

/-! ## A306417.P7440054837111513781

`A011971(∑[n])%A156247(A146605(n+1))`
-/

namespace A306417.P7440054837111513781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011971 (∑ j ∈ Finset.range (n + 1), f1 j)) (A156247 (A146605 (n + 1)).toNat)

end

end A306417.P7440054837111513781

/-! ## A306417.P4696887538228026597

`A095149(∑[n])%A156247(A146605(n+1))`
-/

namespace A306417.P4696887538228026597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095149 (∑ j ∈ Finset.range (n + 1), f1 j)) (A156247 (A146605 (n + 1)).toNat)

end

end A306417.P4696887538228026597

/-! ## A306417.P13990155053743656378

`A186020(∑[n])%A156247(A146605(n+1))`
-/

namespace A306417.P13990155053743656378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186020 (∑ j ∈ Finset.range (n + 1), f1 j)) (A156247 (A146605 (n + 1)).toNat)

end

end A306417.P13990155053743656378

/-!
# A306418: Regular triangle read by rows where T(n, k) is the number of set partitions of {1, ..., n} requiring k steps of removing singletons and cyclical adjacency initiators until reaching a fixed point, n >= 0, 0 <= k <= n.

The programs for A306418, there is no canonical definition to state claims against.
-/

/-! ## A306418.P17953764273559106791

`and(n-1, A316716((1-n)²))`
-/

namespace A306418.P17953764273559106791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A316716 ((1 - (n : ℤ)) ^ 2).toNat)

end

end A306418.P17953764273559106791

/-! ## A306418.P12968690350611989790

`A248174(A372451(n))`
-/

namespace A306418.P12968690350611989790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248174 (A372451 n).toNat

end

end A306418.P12968690350611989790

/-! ## A306418.P9493812875207192615

`and(n+7, A099812(A152171(n)))`
-/

namespace A306418.P9493812875207192615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 7 : ℤ) (A099812 (A152171 n).toNat)

end

end A306418.P9493812875207192615

/-! ## A306418.P2215794125545443778

`and(n-1, A336312(A115073(n+1)))`
-/

namespace A306418.P2215794125545443778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A336312 (A115073 (n + 1)).toNat)

end

end A306418.P2215794125545443778

/-! ## A306418.P12230093827425162849

`and(n-1, A083914(A000079(n+2)))`
-/

namespace A306418.P12230093827425162849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) (A083914 (A000079 (n + 2)).toNat)

end

end A306418.P12230093827425162849

/-!
# A306420: Maximal Laman number among all minimally rigid graphs on n vertices.

The programs for A306420, there is no canonical definition to state claims against.
-/

/-! ## A306420.P18238409071378508618

`A235591(A027423(n))`
-/

namespace A306420.P18238409071378508618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (A027423 n).toNat

end

end A306420.P18238409071378508618

/-! ## A306420.P17421549595442733217

`A298479(A054152(n))`
-/

namespace A306420.P17421549595442733217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298479 (A054152 n).toNat

end

end A306420.P17421549595442733217

/-! ## A306420.P11659706133227449561

`A235591(A000005(n!))`
-/

namespace A306420.P11659706133227449561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235591 (A000005 (Nat.factorial n)).toNat

end

end A306420.P11659706133227449561

/-!
# A306422: Maximal number of coalescent histories among matching pairs of binary, rooted leaf-labeled gene trees and species trees with n leaves.

The programs for A306422, there is no canonical definition to state claims against.
-/

/-! ## A306422.P13844288625621793798

`A242062(4*A000958(n+1))`
-/

namespace A306422.P13844288625621793798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (4 * A000958 (n + 1)).toNat

end

end A306422.P13844288625621793798

/-! ## A306422.P8726782609317693648

`A171878(A321760(n))+A000108(n)`
-/

namespace A306422.P8726782609317693648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171878 (A321760 n).toNat + A000108 n

end

end A306422.P8726782609317693648

/-! ## A306422.P13654358322175941626

`A157271(A149826(n)-A002262(n))`
-/

namespace A306422.P13654358322175941626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A149826 n - A002262 n).toNat

end

end A306422.P13654358322175941626

/-!
# A306423: Number of coalescent histories for pseudocaterpillar gene trees G and caterpillar species trees S.

The programs for A306423, the canonical program `A306423.P3507944940431330008` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306423 has offset 4).

The definition of A306423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306423.P3507944940431330008

`A067324(n)+A002057(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A306423

/-- `A067324(n)+A002057(n)` -/
def P3507944940431330008.Spec : Prop :=
  ∀ n, P3507944940431330008.a n = A306423 (n + 4)

theorem P3507944940431330008.correct : P3507944940431330008.Spec := by
  intro n
  simp only [A306423, Nat.add_sub_cancel]

end A306423

/-! ## A306423.P11364742219432921955

`A071721(n+1)+A070857(n)`
-/

namespace A306423.P11364742219432921955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 (n + 1) + A070857 n

end

end A306423.P11364742219432921955

namespace A306423

/-- `A071721(n+1)+A070857(n)` -/
def P11364742219432921955.Spec : Prop :=
  ∀ n, P11364742219432921955.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P3217556561309742270

`A099376(n+1)+A067324(n)`
-/

namespace A306423.P3217556561309742270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A067324 n

end

end A306423.P3217556561309742270

namespace A306423

/-- `A099376(n+1)+A067324(n)` -/
def P3217556561309742270.Spec : Prop :=
  ∀ n, P3217556561309742270.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P3216098345019924180

`A099376(n)+A071722(n+1)`
-/

namespace A306423.P3216098345019924180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071722 (n + 1)

end

end A306423.P3216098345019924180

namespace A306423

/-- `A099376(n)+A071722(n+1)` -/
def P3216098345019924180.Spec : Prop :=
  ∀ n, P3216098345019924180.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P8134668562259788802

`A002057(n+1)-A032952(n)`
-/

namespace A306423.P8134668562259788802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 (n + 1) - A032952 n

end

end A306423.P8134668562259788802

namespace A306423

/-- `A002057(n+1)-A032952(n)` -/
def P8134668562259788802.Spec : Prop :=
  ∀ n, P8134668562259788802.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P15578562592330160198

`A067324(n)+∑[A026016(n+1)]`
-/

namespace A306423.P15578562592330160198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306423.P15578562592330160198

namespace A306423

/-- `A067324(n)+∑[A026016(n+1)]` -/
def P15578562592330160198.Spec : Prop :=
  ∀ n, P15578562592330160198.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P8450183111944359419

`A070031(n+1)-A000108(n+1)`
-/

namespace A306423.P8450183111944359419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070031 (n + 1) - A000108 (n + 1)

end

end A306423.P8450183111944359419

namespace A306423

/-- `A070031(n+1)-A000108(n+1)` -/
def P8450183111944359419.Spec : Prop :=
  ∀ n, P8450183111944359419.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P3440118343818035030

`A000245(n+1)+2*A002057(n)`
-/

namespace A306423.P3440118343818035030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + 2 * A002057 n

end

end A306423.P3440118343818035030

namespace A306423

/-- `A000245(n+1)+2*A002057(n)` -/
def P3440118343818035030.Spec : Prop :=
  ∀ n, P3440118343818035030.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P15497577849042252258

`A002057(n)+A071724(n+1)+A002057(n)`
-/

namespace A306423.P15497577849042252258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (A071724 (n + 1) + A002057 n)

end

end A306423.P15497577849042252258

namespace A306423

/-- `A002057(n)+A071724(n+1)+A002057(n)` -/
def P15497577849042252258.Spec : Prop :=
  ∀ n, P15497577849042252258.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P9354472464865370179

`A014137(n+1)+A112308(n)+A014138(n)`
-/

namespace A306423.P9354472464865370179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) + (A112308 n + A014138 n)

end

end A306423.P9354472464865370179

namespace A306423

/-- `A014137(n+1)+A112308(n)+A014138(n)` -/
def P9354472464865370179.Spec : Prop :=
  ∀ n, P9354472464865370179.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P8510086911926786006

`A000782(n+1)+A071722(n)+A070857(n)`
-/

namespace A306423.P8510086911926786006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000782 (n + 1) + (A071722 n + A070857 n)

end

end A306423.P8510086911926786006

namespace A306423

/-- `A000782(n+1)+A071722(n)+A070857(n)` -/
def P8510086911926786006.Spec : Prop :=
  ∀ n, P8510086911926786006.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P5947968756242580463

`A071721(n+1)+A099376(n)+A071723(n)`
-/

namespace A306423.P5947968756242580463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071721 (n + 1) + (A099376 n + A071723 n)

end

end A306423.P5947968756242580463

namespace A306423

/-- `A071721(n+1)+A099376(n)+A071723(n)` -/
def P5947968756242580463.Spec : Prop :=
  ∀ n, P5947968756242580463.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P12241926188321090215

`A067324(n)+A067324(n)-A000245(n+1)`
-/

namespace A306423.P12241926188321090215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n + (A067324 n - A000245 (n + 1))

end

end A306423.P12241926188321090215

namespace A306423

/-- `A067324(n)+A067324(n)-A000245(n+1)` -/
def P12241926188321090215.Spec : Prop :=
  ∀ n, P12241926188321090215.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P6600300286081496402

`A071722(n+1)+A071722(n)-A026012(n)`
-/

namespace A306423.P6600300286081496402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) + (A071722 n - A026012 n)

end

end A306423.P6600300286081496402

namespace A306423

/-- `A071722(n+1)+A071722(n)-A026012(n)` -/
def P6600300286081496402.Spec : Prop :=
  ∀ n, P6600300286081496402.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P10153465597840640392

`A071722(n+1)+A070857(n)-A071723(n)`
-/

namespace A306423.P10153465597840640392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) + (A070857 n - A071723 n)

end

end A306423.P10153465597840640392

namespace A306423

/-- `A071722(n+1)+A070857(n)-A071723(n)` -/
def P10153465597840640392.Spec : Prop :=
  ∀ n, P10153465597840640392.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P1565766566994342561

`A000245(n+1)+A070857(n)+A000245(n+1)`
-/

namespace A306423.P1565766566994342561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) + (A070857 n + A000245 (n + 1))

end

end A306423.P1565766566994342561

namespace A306423

/-- `A000245(n+1)+A070857(n)+A000245(n+1)` -/
def P1565766566994342561.Spec : Prop :=
  ∀ n, P1565766566994342561.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P6499753252827352703

`A099376(n+1)+A099376(n+1)+A000245(n+1)`
-/

namespace A306423.P6499753252827352703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + (A099376 (n + 1) + A000245 (n + 1))

end

end A306423.P6499753252827352703

namespace A306423

/-- `A099376(n+1)+A099376(n+1)+A000245(n+1)` -/
def P6499753252827352703.Spec : Prop :=
  ∀ n, P6499753252827352703.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P15339055340504965963

`A143360(2*(n+1))-A265613(n)`
-/

namespace A306423.P15339055340504965963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143360 (2 * (n + 1)) - A265613 n

end

end A306423.P15339055340504965963

namespace A306423

/-- `A143360(2*(n+1))-A265613(n)` -/
def P15339055340504965963.Spec : Prop :=
  ∀ n, P15339055340504965963.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P14246714051332212418

`A007946(n)+A007946(n)-A265612(n+1)`
-/

namespace A306423.P14246714051332212418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007946 n + (A007946 n - A265612 (n + 1))

end

end A306423.P14246714051332212418

namespace A306423

/-- `A007946(n)+A007946(n)-A265612(n+1)` -/
def P14246714051332212418.Spec : Prop :=
  ∀ n, P14246714051332212418.a n = A306423 (n + 4)

end A306423

/-! ## A306423.P15765281731519705945

`A051924(n+2)-(A265613(n)+A000108(n+1))`
-/

namespace A306423.P15765281731519705945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 2) - (A265613 n + A000108 (n + 1))

end

end A306423.P15765281731519705945

namespace A306423

/-- `A051924(n+2)-(A265613(n)+A000108(n+1))` -/
def P15765281731519705945.Spec : Prop :=
  ∀ n, P15765281731519705945.a n = A306423 (n + 4)

end A306423

/-!
# A306424: Numbers k such that the base-b expansion of k for each b = 3..k-1 never contains more than two distinct digits.

The programs for A306424, there is no canonical definition to state claims against.
-/

/-! ## A306424.P819085473393279592

`lt[A037968(n+1), 3]+1`
-/

namespace A306424.P819085473393279592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037968 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A306424.P819085473393279592

/-! ## A306424.P8340275629694817913

`lt[A127279(A164994(n)), A329804(n+1)]`
-/

namespace A306424.P8340275629694817913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127279 (A164994 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329804 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306424.P8340275629694817913

/-! ## A306424.P16762049240816614865

`lt[A056965(A138771(n+1)), A000720(n+1)]`
-/

namespace A306424.P16762049240816614865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A138771 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306424.P16762049240816614865

/-! ## A306424.P12551598570949013663

`lt[A344660(A326029(3*(n+1))), A351368(n+1)]`
-/

namespace A306424.P12551598570949013663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344660 (A326029 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351368 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306424.P12551598570949013663

/-! ## A306424.P5898631208294845229

`lt[A002024(A158008(2*n+3)), A078384(n+1)]`
-/

namespace A306424.P5898631208294845229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A158008 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306424.P5898631208294845229

/-!
# A306430: Twelve-column table read by rows: Primitive distinct 12-tuples that have the same value of phi, sigma, and tau.

The programs for A306430, there is no canonical definition to state claims against.
-/

/-! ## A306430.P18411182141897045920

`record[A322697(n+34)]`
-/

namespace A306430.P18411182141897045920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (n + 34)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306430.P18411182141897045920

/-! ## A306430.P11606111434210455245

`A322697(A024654(n)+34)`
-/

namespace A306430.P11606111434210455245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (A024654 n + 34).toNat

end

end A306430.P11606111434210455245

/-! ## A306430.P13327077347955243930

`A322697(A112817(n+1)+1)`
-/

namespace A306430.P13327077347955243930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (A112817 (n + 1) + 1).toNat

end

end A306430.P13327077347955243930

/-! ## A306430.P4028381032679007403

`A322697(A112817(n+2))`
-/

namespace A306430.P4028381032679007403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322697 (A112817 (n + 2)).toNat

end

end A306430.P4028381032679007403

/-!
# A306432: a(n) = Sum_{0<=i

The programs for A306432, there is no canonical definition to state claims against.
-/

/-! ## A306432.P1366901998838568985

`A007094(A198442(ceil(2^(n-1))²))`
-/

namespace A306432.P1366901998838568985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A198442 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2).toNat).toNat

end

end A306432.P1366901998838568985

/-!
# A306433: Number of partitions of n into 2 distinct prime powers (not including 1).

The programs for A306433, there is no canonical definition to state claims against.
-/

/-! ## A306433.P1470266939770667996

`floor(A280242(n)/2)`
-/

namespace A306433.P1470266939770667996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A280242 n : ℚ) / 2⌋

end

end A306433.P1470266939770667996

/-! ## A306433.P7358671231127450921

`A004526(A280242(n))`
-/

namespace A306433.P7358671231127450921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A280242 n).toNat

end

end A306433.P7358671231127450921

/-! ## A306433.P13140662923720678411

`A140106(A280242(n)+2)`
-/

namespace A306433.P13140662923720678411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A280242 n + 2).toNat

end

end A306433.P13140662923720678411

/-! ## A306433.P9778933176434260470

`A002265(2*A280242(n))`
-/

namespace A306433.P9778933176434260470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A280242 n).toNat

end

end A306433.P9778933176434260470

/-! ## A306433.P10221121929769060840

`A008615(3*A280242(n))`
-/

namespace A306433.P10221121929769060840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A280242 n).toNat

end

end A306433.P10221121929769060840

/-! ## A306433.P1775018548687860466

`A028242(or(1, A280242(n)))`
-/

namespace A306433.P1775018548687860466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A280242 n)).toNat

end

end A306433.P1775018548687860466

/-! ## A306433.P14827717096216589428

`A280242(n)-A307726(n)`
-/

namespace A306433.P14827717096216589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280242 n - A307726 n

end

end A306433.P14827717096216589428

/-! ## A306433.P16941097361231006710

`A123108(A280242(n)+8)-4`
-/

namespace A306433.P16941097361231006710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A280242 n + 8).toNat - 4

end

end A306433.P16941097361231006710

/-! ## A306433.P5181514209417252517

`A123108(A123108(2*A280242(n)))`
-/

namespace A306433.P5181514209417252517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A123108 (2 * A280242 n).toNat).toNat

end

end A306433.P5181514209417252517

/-!
# A306434: Theta series of 10-dimensional integral lattice O_10.

The programs for A306434, there is no canonical definition to state claims against.
-/

/-! ## A306434.P14583923184203669874

`A383140(A028558(n+1))`
-/

namespace A306434.P14583923184203669874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383140 (A028558 (n + 1)).toNat

end

end A306434.P14583923184203669874

/-!
# A306435: Number of distinct integers that are product of the parts of exactly one partition of n into 3 positive parts.

The programs for A306435, there is no canonical definition to state claims against.
-/

/-! ## A306435.P973896754674982536

`A306403(n)-A060277(A028310(n))`
-/

namespace A306435.P973896754674982536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306403 n - A060277 (A028310 n).toNat

end

end A306435.P973896754674982536

/-! ## A306435.P9919527230863729368

`A306403(n)-A060277(A000007(n)+n)`
-/

namespace A306435.P9919527230863729368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306403 n - A060277 (A000007 n + (n : ℤ)).toNat

end

end A306435.P9919527230863729368

/-! ## A306435.P1297888573873012052

`A306403(n)-A060277(A000038(n)+n)`
-/

namespace A306435.P1297888573873012052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306403 n - A060277 (A000038 n + (n : ℤ)).toNat

end

end A306435.P1297888573873012052

/-! ## A306435.P8809126262739716944

`A306403(n)-A060277(or(n, A000038(n)))`
-/

namespace A306435.P8809126262739716944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306403 n - A060277 (Int.lor (n : ℤ) (A000038 n)).toNat

end

end A306435.P8809126262739716944

/-! ## A306435.P5055251899050322131

`A306403(n)-A060277(A233583(n+1))`
-/

namespace A306435.P5055251899050322131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306403 n - A060277 (A233583 (n + 1)).toNat

end

end A306435.P5055251899050322131

/-!
# A306436: Rewrite n by substituting each digit d of n by d-1 if d is odd, d+1 otherwise.

The programs for A306436, there is no canonical definition to state claims against.
-/

/-! ## A306436.P4050991545092750623

`A351744(n)-A103181(n)`
-/

namespace A306436.P4050991545092750623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351744 n - A103181 n

end

end A306436.P4050991545092750623

/-! ## A306436.P9743096620357025455

`A256079(n)-2*A103181(n)`
-/

namespace A306436.P9743096620357025455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 n - 2 * A103181 n

end

end A306436.P9743096620357025455

/-! ## A306436.P3316637330938073794

`A103181(A048379(n))+2*A106747(n)`
-/

namespace A306436.P3316637330938073794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A048379 n).toNat + 2 * A106747 n

end

end A306436.P3316637330938073794

/-! ## A306436.P2636131733057273894

`A103181(A061601(n))+2*A106747(n)`
-/

namespace A306436.P2636131733057273894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A061601 n).toNat + 2 * A106747 n

end

end A306436.P2636131733057273894

/-! ## A306436.P13432851682655907574

`A106747(A065031(n))+2*A106747(n)`
-/

namespace A306436.P13432851682655907574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A065031 n).toNat + 2 * A106747 n

end

end A306436.P13432851682655907574

/-! ## A306436.P15599535972008904882

`A103181(A048379(n))+n-A103181(n)`
-/

namespace A306436.P15599535972008904882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A048379 n).toNat + ((n : ℤ) - A103181 n)

end

end A306436.P15599535972008904882

/-! ## A306436.P15860302995550732632

`A103181(A061601(n))+n-A103181(n)`
-/

namespace A306436.P15860302995550732632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A061601 n).toNat + ((n : ℤ) - A103181 n)

end

end A306436.P15860302995550732632

/-! ## A306436.P16352004301495996196

`A103181(A048379(n))+A004520(A004526(n))`
-/

namespace A306436.P16352004301495996196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A048379 n).toNat + A004520 (A004526 n).toNat

end

end A306436.P16352004301495996196

/-! ## A306436.P15135760735810103498

`A103181(A061601(n))+A004520(A004526(n))`
-/

namespace A306436.P15135760735810103498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A061601 n).toNat + A004520 (A004526 n).toNat

end

end A306436.P15135760735810103498

/-! ## A306436.P8010310945662955001

`A103181(A048379(n))+A005843(A106747(n))`
-/

namespace A306436.P8010310945662955001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A048379 n).toNat + A005843 (A106747 n).toNat

end

end A306436.P8010310945662955001

/-! ## A306436.P16110944694541014384

`A103181(A061601(n))+A005843(A106747(n))`
-/

namespace A306436.P16110944694541014384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A061601 n).toNat + A005843 (A106747 n).toNat

end

end A306436.P16110944694541014384

/-! ## A306436.P15313903937445716706

`A106747(A065031(n))+A005843(A106747(n))`
-/

namespace A306436.P15313903937445716706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (A065031 n).toNat + A005843 (A106747 n).toNat

end

end A306436.P15313903937445716706

/-! ## A306436.P12549553442388505657

`A106746(n)-A103181(n)-A061601(A106746(n))`
-/

namespace A306436.P12549553442388505657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106746 n - A103181 n - A061601 (A106746 n).toNat

end

end A306436.P12549553442388505657

/-!
# A306437: Regular triangle read by rows where T(n,k) is the number of non-crossing set partitions of {1, ..., n} in which all blocks have size k.

The programs for A306437, there is no canonical definition to state claims against.
-/

/-! ## A306437.P12307044641605201626

`A167439(A114002(n)^A109223(n))`
-/

namespace A306437.P12307044641605201626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (SequenceMachineLib.roundAway ((A114002 n : ℚ) ^ (A109223 n : ℤ))).toNat

end

end A306437.P12307044641605201626

/-! ## A306437.P17059332869289261297

`A007895(A129559(n+1)^A238802(n))`
-/

namespace A306437.P17059332869289261297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (SequenceMachineLib.roundAway ((A129559 (n + 1) : ℚ) ^ (A238802 n : ℤ))).toNat

end

end A306437.P17059332869289261297

/-! ## A306437.P11655014261721969449

`and(A066657(A232006(n)), A143315(n+1))`
-/

namespace A306437.P11655014261721969449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A066657 (A232006 n).toNat) (A143315 (n + 1))

end

end A306437.P11655014261721969449

/-! ## A306437.P14997241931826142678

`A156348(n+1)+A112053(A064602(n+1))`
-/

namespace A306437.P14997241931826142678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156348 (n + 1) + A112053 (A064602 (n + 1)).toNat

end

end A306437.P14997241931826142678

/-!
# A306438: Number of non-crossing set partitions whose block sizes are the prime indices of n.

The programs for A306438, there is no canonical definition to state claims against.
-/

/-! ## A306438.P6540958810980321038

`A037827(A016116(A344765(n+1)))+1`
-/

namespace A306438.P6540958810980321038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A016116 (A344765 (n + 1)).toNat).toNat + 1

end

end A306438.P6540958810980321038

/-! ## A306438.P17477371215191834566

`A046951(A043529(n)^A318320(n+1))`
-/

namespace A306438.P17477371215191834566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A043529 n : ℚ) ^ (A318320 (n + 1) : ℤ))).toNat

end

end A306438.P17477371215191834566

/-! ## A306438.P4081621031025290121

`A038548(A099812(n+1)^A069359(n+1))`
-/

namespace A306438.P4081621031025290121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (SequenceMachineLib.roundAway ((A099812 (n + 1) : ℚ) ^ (A069359 (n + 1) : ℤ))).toNat

end

end A306438.P4081621031025290121

/-! ## A306438.P16574286407711998213

`A046951(A091954(n+1)^A069359(n+1))`
-/

namespace A306438.P16574286407711998213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((A091954 (n + 1) : ℚ) ^ (A069359 (n + 1) : ℤ))).toNat

end

end A306438.P16574286407711998213

/-!
# A306439: Number of ways to write n as x*(3x+1)/2 + y*(3y+1)/2 + z*(3z+1) + 3w*(3w+1)/2, where x,y,z,w are nonnegative integers with x <= y.

The programs for A306439, there is no canonical definition to state claims against.
-/

/-! ## A306439.P1402936094565662251

`A196563(A357950(n+1)+A000695(n))`
-/

namespace A306439.P1402936094565662251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A357950 (n + 1) + A000695 n).toNat

end

end A306439.P1402936094565662251

/-! ## A306439.P15402297700107144569

`∑{p}[A325271(n)+A126120(n)², A001222(#)]`
-/

namespace A306439.P15402297700107144569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325271 n + A126120 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A306439.P15402297700107144569

/-! ## A306439.P13256129980184435813

`∑{p}[A325271(n)+A126120(n)², A008833(#)]`
-/

namespace A306439.P13256129980184435813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325271 n + A126120 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008833 p

end

end A306439.P13256129980184435813

/-! ## A306439.P4413279236105517343

`A103221(n+8)-A261675(A007088(n+1))`
-/

namespace A306439.P4413279236105517343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (n + 8) - A261675 (A007088 (n + 1)).toNat

end

end A306439.P4413279236105517343

/-! ## A306439.P16669231969036377229

`A236429(A195848(n+3))%A079399(n)`
-/

namespace A306439.P16669231969036377229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236429 (A195848 (n + 3)).toNat) (A079399 n)

end

end A306439.P16669231969036377229

/-!
# A306440: Number of different ways of expressing 2*n as (p - 1)*(q - 1), where p < q are primes.

The programs for A306440, there is no canonical definition to state claims against.
-/

/-! ## A306440.P14674185500718020994

`round(A002186(n)/A006530(A004730(n)))`
-/

namespace A306440.P14674185500718020994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002186 n : ℚ) / (A006530 (A004730 n).toNat : ℚ))

end

end A306440.P14674185500718020994

/-! ## A306440.P6017059178197219217

`A020483(n)%A267263(A135372(n+1))`
-/

namespace A306440.P6017059178197219217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020483 n) (A267263 (A135372 (n + 1)).toNat)

end

end A306440.P6017059178197219217

/-! ## A306440.P10477178722210384796

`A305079(A020695(n))%A061393(n)`
-/

namespace A306440.P10477178722210384796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305079 (A020695 n).toNat) (A061393 n)

end

end A306440.P10477178722210384796

/-! ## A306440.P4353582982266349986

`and(A062157(n), A305079(A020695(n)))`
-/

namespace A306440.P4353582982266349986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062157 n) (A305079 (A020695 n).toNat)

end

end A306440.P4353582982266349986

/-! ## A306440.P4752195260378560920

`A305079(A000045(n+3))%A020639(n+1)`
-/

namespace A306440.P4752195260378560920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305079 (A000045 (n + 3)).toNat) (A020639 (n + 1))

end

end A306440.P4752195260378560920

/-!
# A306441: Next larger integer with same number of runs of 1's in its binary representation as n.

The programs for A306441, there is no canonical definition to state claims against.
-/

/-! ## A306441.P12702184462695653026

`A341944(2*(n+1))/2`
-/

namespace A306441.P12702184462695653026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341944 (2 * (n + 1)) : ℚ) / 2

end

end A306441.P12702184462695653026

/-! ## A306441.P16355039724409008675

`floor(A341944(n+2+n)/2)`
-/

namespace A306441.P16355039724409008675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A341944 (n + 2 + n) : ℚ) / 2⌋

end

end A306441.P16355039724409008675

/-! ## A306441.P16007471276413608467

`ceil(A341944(Δ[n²]+1)/2)`
-/

namespace A306441.P16007471276413608467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A341944 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2⌉

end

end A306441.P16007471276413608467

/-! ## A306441.P10762263743491633735

`A001281(A341944(2*(n+1)))`
-/

namespace A306441.P10762263743491633735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A341944 (2 * (n + 1))).toNat

end

end A306441.P10762263743491633735

/-! ## A306441.P14114637105254144612

`A038572(A341944(2*n+2))`
-/

namespace A306441.P14114637105254144612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A341944 (2 * n + 2)).toNat

end

end A306441.P14114637105254144612

/-! ## A306441.P12055914659911350427

`A008619(A341944(2*(n+1))-1)`
-/

namespace A306441.P12055914659911350427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A341944 (2 * (n + 1)) - 1).toNat

end

end A306441.P12055914659911350427

/-! ## A306441.P15948842251975566917

`A065033(A341944(2*(n+1))-1)`
-/

namespace A306441.P15948842251975566917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A341944 (2 * (n + 1)) - 1).toNat

end

end A306441.P15948842251975566917

/-! ## A306441.P10222742070842771863

`A027656(A341944(2*(n+1))-2)`
-/

namespace A306441.P10222742070842771863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A341944 (2 * (n + 1)) - 2).toNat

end

end A306441.P10222742070842771863

/-!
# A306443: Number of ways of partitioning the set of the first n primes into two subsets whose sums differ at most by 1.

The programs for A306443, there is no canonical definition to state claims against.
-/

/-! ## A306443.P57622090553748709

`A350404(n)/A000034(n)`
-/

namespace A306443.P57622090553748709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (A000034 n : ℚ)

end

end A306443.P57622090553748709

/-! ## A306443.P17623095185462354395

`A350404(n)/A084642(n)`
-/

namespace A306443.P17623095185462354395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (A084642 n : ℚ)

end

end A306443.P17623095185462354395

/-! ## A306443.P14214135760619442711

`A350404(n)/Δ[A032766(n)]`
-/

namespace A306443.P14214135760619442711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A306443.P14214135760619442711

/-! ## A306443.P4516650409962606884

`A350404(n)/A040001(n+1)`
-/

namespace A306443.P4516650409962606884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (A040001 (n + 1) : ℚ)

end

end A306443.P4516650409962606884

/-! ## A306443.P9893357910775422814

`A350404(n)/(Δ[A008619(n)]+1)`
-/

namespace A306443.P9893357910775422814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (f1 (n + 1) - f1 n + 1 : ℚ)

end

end A306443.P9893357910775422814

/-! ## A306443.P7318404978544918006

`A350404(n)/A001511(A141310(n))`
-/

namespace A306443.P7318404978544918006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (A001511 (A141310 n).toNat : ℚ)

end

end A306443.P7318404978544918006

/-! ## A306443.P11812553672851946890

`A350404(n)/Δ[A008619(A016789(n))]`
-/

namespace A306443.P11812553672851946890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A016789 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A306443.P11812553672851946890

/-! ## A306443.P12432732211945272939

`A350404(n)/A104879(Δ[A008619(n)])`
-/

namespace A306443.P12432732211945272939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (A104879 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A306443.P12432732211945272939

/-! ## A306443.P2080354502489368803

`A350404(n)/A001511(A002522(n))`
-/

namespace A306443.P2080354502489368803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350404 n : ℚ) / (A001511 (A002522 n).toNat : ℚ)

end

end A306443.P2080354502489368803

/-!
# A306444: A(n,k) = binomial((2*k+1)*n+2, k*n+1)/((2*k+1)*n+2), square array A(n,k) read by antidiagonals, for n >= 0, k >= 0.

The programs for A306444, there is no canonical definition to state claims against.
-/

/-! ## A306444.P11425328118386650795

`A319775(A274391(n))+A078920(n)`
-/

namespace A306444.P11425328118386650795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319775 (A274391 n).toNat + A078920 n

end

end A306444.P11425328118386650795

/-!
# A306445: Number of collections of subsets of {1, 2, ..., n} that are closed under union and intersection.

The programs for A306445, there is no canonical definition to state claims against.
-/

/-! ## A306445.P8086635771184140570

`A326900(n)+A326878(n)`
-/

namespace A306445.P8086635771184140570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326900 n + A326878 n

end

end A306445.P8086635771184140570

/-! ## A306445.P9152967992541235990

`A326909(n)+A211666(n+1)*A326900(n)`
-/

namespace A306445.P9152967992541235990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n + A211666 (n + 1) * A326900 n

end

end A306445.P9152967992541235990

/-! ## A306445.P10209490319247600528

`A326909(n)+A002262(A000124(n))*A326900(n)`
-/

namespace A306445.P10209490319247600528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n + A002262 (A000124 n).toNat * A326900 n

end

end A306445.P10209490319247600528

/-! ## A306445.P9822325281204913024

`A326909(n)+A001221(A079879(n+1))*A326900(n)`
-/

namespace A306445.P9822325281204913024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n + A001221 (A079879 (n + 1)).toNat * A326900 n

end

end A306445.P9822325281204913024

/-! ## A306445.P10665860562914197869

`A326909(n)+A001221(A304133(n+1))*A326900(n)`
-/

namespace A306445.P10665860562914197869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326909 n + A001221 (A304133 (n + 1)).toNat * A326900 n

end

end A306445.P10665860562914197869

/-!
# A306446: a(n) is the number of connected components in the Fermi-Dirac factorization of n (see Comments for precise definition).

The programs for A306446, there is no canonical definition to state claims against.
-/

/-! ## A306446.P5768468837994869240

`gcd(A338320(n)-1, ∑{p}[n+1, gcd(n, #)])`
-/

namespace A306446.P5768468837994869240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338320 n - 1) ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)

end

end A306446.P5768468837994869240

/-! ## A306446.P6328020186591453825

`A001221(∏{d}[A304251(n+1), #])`
-/

namespace A306446.P6328020186591453825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A306446.P6328020186591453825

/-! ## A306446.P8982139209929818630

`∑{e}[A181755(A324901(n+1)), #]`
-/

namespace A306446.P8982139209929818630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181755 (A324901 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A306446.P8982139209929818630

/-! ## A306446.P10368609153822832265

`gcd(1-A338320(n), A001221(n+1))`
-/

namespace A306446.P10368609153822832265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A338320 n) (A001221 (n + 1))

end

end A306446.P10368609153822832265

/-! ## A306446.P13770859065295186612

`gcd(A001221(n+1), A267901(A020914(n)))`
-/

namespace A306446.P13770859065295186612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A267901 (A020914 n).toNat)

end

end A306446.P13770859065295186612

/-!
# A306447: Number of (undirected) Hamiltonian cycles in the n-antiprism graph.

The programs for A306447, the canonical program `A306447.P6386239209711522822` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306447 has offset 1).

The definition of A306447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306447.P6386239209711522822

`3*a(n-1)-a(n-2)-2*a(n-3)+a(n-5)` with `a(0)=3, a(1)=9, a(2)=16, a(3)=29, a(4)=56`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A306447

/-- `3*a(n-1)-a(n-2)-2*a(n-3)+a(n-5)` -/
def P6386239209711522822.Spec : Prop :=
  ∀ n, P6386239209711522822.a n = A306447 (n + 1)

theorem P6386239209711522822.correct : P6386239209711522822.Spec := by
  intro n
  simp only [A306447, Nat.add_sub_cancel]

end A306447

/-! ## A306447.P7576946404264208789

`A124353(n+1)/2`
-/

namespace A306447.P7576946404264208789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124353 (n + 1) : ℚ) / 2

end

end A306447.P7576946404264208789

namespace A306447

/-- `A124353(n+1)/2` -/
def P7576946404264208789.Spec : Prop :=
  ∀ n, P7576946404264208789.a n = (A306447 (n + 1) : ℚ)

end A306447

/-! ## A306447.P3442816826930920054

`A226509(2*(n+1))`
-/

namespace A306447.P3442816826930920054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (2 * (n + 1))

end

end A306447.P3442816826930920054

namespace A306447

/-- `A226509(2*(n+1))` -/
def P3442816826930920054.Spec : Prop :=
  ∀ n, P3442816826930920054.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P12604462329455905183

`A286910(n+1)+2*(n+1)`
-/

namespace A306447.P12604462329455905183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286910 (n + 1) + (2 * (n + 1) : ℤ)

end

end A306447.P12604462329455905183

namespace A306447

/-- `A286910(n+1)+2*(n+1)` -/
def P12604462329455905183.Spec : Prop :=
  ∀ n, P12604462329455905183.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P2057263035425533349

`A001609(2*(n+1))+2*(n+1)`
-/

namespace A306447.P2057263035425533349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A306447.P2057263035425533349

namespace A306447

/-- `A001609(2*(n+1))+2*(n+1)` -/
def P2057263035425533349.Spec : Prop :=
  ∀ n, P2057263035425533349.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P13701319369772666072

`A001634(2*n+1)+2*n+1`
-/

namespace A306447.P13701319369772666072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001634 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A306447.P13701319369772666072

namespace A306447

/-- `A001634(2*n+1)+2*n+1` -/
def P13701319369772666072.Spec : Prop :=
  ∀ n, P13701319369772666072.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P9723415724818344207

`A137726(2*(n+1))+C(2, n+2)`
-/

namespace A306447.P9723415724818344207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (2 * (n + 1)) + (Nat.choose 2 (n + 2) : ℤ)

end

end A306447.P9723415724818344207

namespace A306447

/-- `A137726(2*(n+1))+C(2, n+2)` -/
def P9723415724818344207.Spec : Prop :=
  ∀ n, P9723415724818344207.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P10756936799354949007

`record[A226509(gcd(n, A022280(n))+1)]`
-/

namespace A306447.P10756936799354949007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226509 (Int.gcd (n : ℤ) (A022280 n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306447.P10756936799354949007

namespace A306447

/-- `record[A226509(gcd(n, A022280(n))+1)]` -/
def P10756936799354949007.Spec : Prop :=
  ∀ n, P10756936799354949007.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P16941896965674121536

`or(A036987(n), A137726(2*(n+1)))`
-/

namespace A306447.P16941896965674121536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A137726 (2 * (n + 1)))

end

end A306447.P16941896965674121536

namespace A306447

/-- `or(A036987(n), A137726(2*(n+1)))` -/
def P16941896965674121536.Spec : Prop :=
  ∀ n, P16941896965674121536.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P16228874088335770143

`A005843(n+1)+A001609(2*(n+1))`
-/

namespace A306447.P16228874088335770143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) + A001609 (2 * (n + 1))

end

end A306447.P16228874088335770143

namespace A306447

/-- `A005843(n+1)+A001609(2*(n+1))` -/
def P16228874088335770143.Spec : Prop :=
  ∀ n, P16228874088335770143.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P13567625937489675957

`A278105(n+3)+A137726(2*(n+1))`
-/

namespace A306447.P13567625937489675957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278105 (n + 3) + A137726 (2 * (n + 1))

end

end A306447.P13567625937489675957

namespace A306447

/-- `A278105(n+3)+A137726(2*(n+1))` -/
def P13567625937489675957.Spec : Prop :=
  ∀ n, P13567625937489675957.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P1724664562845840961

`A137726(2*(n+1))+A036987(2*n)`
-/

namespace A306447.P1724664562845840961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (2 * (n + 1)) + A036987 (2 * n)

end

end A306447.P1724664562845840961

namespace A306447

/-- `A137726(2*(n+1))+A036987(2*n)` -/
def P1724664562845840961.Spec : Prop :=
  ∀ n, P1724664562845840961.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P4716714272323533118

`or(A093709(n+1), A137726(2*(n+1)))`
-/

namespace A306447.P4716714272323533118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093709 (n + 1)) (A137726 (2 * (n + 1)))

end

end A306447.P4716714272323533118

namespace A306447

/-- `or(A093709(n+1), A137726(2*(n+1)))` -/
def P4716714272323533118.Spec : Prop :=
  ∀ n, P4716714272323533118.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P6201669964711485172

`A137726(2*(n+1))+A010051(2*(n+1))`
-/

namespace A306447.P6201669964711485172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (2 * (n + 1)) + A010051 (2 * (n + 1))

end

end A306447.P6201669964711485172

namespace A306447

/-- `A137726(2*(n+1))+A010051(2*(n+1))` -/
def P6201669964711485172.Spec : Prop :=
  ∀ n, P6201669964711485172.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P6715202745963191840

`A199881(A057944(2*n+1))+A137726(2*(n+1))`
-/

namespace A306447.P6715202745963191840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199881 (A057944 (2 * n + 1)).toNat + A137726 (2 * (n + 1))

end

end A306447.P6715202745963191840

namespace A306447

/-- `A199881(A057944(2*n+1))+A137726(2*(n+1))` -/
def P6715202745963191840.Spec : Prop :=
  ∀ n, P6715202745963191840.a n = A306447 (n + 1)

end A306447

/-! ## A306447.P10804027383660737015

`A137726(2*(n+1))-A010815(2*n+1)*A010815(2*n)`
-/

namespace A306447.P10804027383660737015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137726 (2 * (n + 1)) - A010815 (2 * n + 1) * A010815 (2 * n)

end

end A306447.P10804027383660737015

namespace A306447

/-- `A137726(2*(n+1))-A010815(2*n+1)*A010815(2*n)` -/
def P10804027383660737015.Spec : Prop :=
  ∀ n, P10804027383660737015.a n = A306447 (n + 1)

end A306447

/-!
# A306448: Pseudoprimes to base 9 that are not squarefree.

The programs for A306448, there is no canonical definition to state claims against.
-/

/-! ## A306448.P15832996733056577894

`filter[A020138(n+1), A359469(#)]`
-/

namespace A306448.P15832996733056577894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A306448.P15832996733056577894

/-! ## A306448.P10667285985551228297

`record[A105570(A020138(n+1))]`
-/

namespace A306448.P10667285985551228297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A020138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306448.P10667285985551228297

/-! ## A306448.P4731162222221793625

`filter[A020138(n+1), A087049(#)]`
-/

namespace A306448.P4731162222221793625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A306448.P4731162222221793625

/-! ## A306448.P13814781206576795210

`∩[A020138(n+1), A082293(n+1)]`
-/

namespace A306448.P13814781206576795210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306448.P13814781206576795210

/-! ## A306448.P14072111413856753219

`∩[A020138(n+1), A370076(n+1)]`
-/

namespace A306448.P14072111413856753219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306448.P14072111413856753219

/-!
# A306449: Pseudoprimes to base 10 that are not squarefree.

The programs for A306449, there is no canonical definition to state claims against.
-/

/-! ## A306449.P13746414255117022039

`filter[A005939(n+1), A355453(#)]`
-/

namespace A306449.P13746414255117022039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355453 (f1 j).toNat = 1) n)

end

end A306449.P13746414255117022039

/-! ## A306449.P16167486191987415005

`filter[A005939(n+1), A359429(#)]`
-/

namespace A306449.P16167486191987415005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A306449.P16167486191987415005

/-! ## A306449.P13832735389316033209

`filter[A005939(n+1), A359466(#)]`
-/

namespace A306449.P13832735389316033209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A306449.P13832735389316033209

/-! ## A306449.P6642712922084642205

`filter[A005939(n+1), A359469(#)]`
-/

namespace A306449.P6642712922084642205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A306449.P6642712922084642205

/-!
# A306450: Non-coprime pseudoprimes to base 3 (A306451) that are not squarefree.

The programs for A306450, there is no canonical definition to state claims against.
-/

/-! ## A306450.P9297053432069773159

`∩[A306451(n+1), A306452(n+1)]`
-/

namespace A306450.P9297053432069773159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306450.P9297053432069773159

/-!
# A306452: Pseudoprimes to base 3 that are not squarefree, including the non-coprime pseudoprimes.

The programs for A306452, there is no canonical definition to state claims against.
-/

/-! ## A306452.P443409704938277534

`filter[A122780(n+1), A353470(#)]`
-/

namespace A306452.P443409704938277534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353470 (f1 j).toNat = 1) n)

end

end A306452.P443409704938277534

/-! ## A306452.P6745116822495587384

`filter[A122780(n+1), A353626(#)]`
-/

namespace A306452.P6745116822495587384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353626 (f1 j).toNat = 1) n)

end

end A306452.P6745116822495587384

/-! ## A306452.P717829481257154992

`filter[A122780(n+1), A359429(#)]`
-/

namespace A306452.P717829481257154992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359429 (f1 j).toNat = 1) n)

end

end A306452.P717829481257154992

/-! ## A306452.P264994229626837120

`filter[A122780(n+1), A359466(#)]`
-/

namespace A306452.P264994229626837120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A306452.P264994229626837120

/-!
# A306453: Triangle of coefficients of "inverse" cyclotomic polynomial Psi_n(x) (exponents in increasing order).

The programs for A306453, there is no canonical definition to state claims against.
-/

/-! ## A306453.P6930266745021627832

`A008683(A162306(n+1))*A034008(A151722(n))`
-/

namespace A306453.P6930266745021627832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162306 (n + 1)).toNat * A034008 (A151722 n).toNat

end

end A306453.P6930266745021627832

/-! ## A306453.P2188545489200894622

`A008683(A162306(n+1))-A151667(A140758((n+1)^3))`
-/

namespace A306453.P2188545489200894622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162306 (n + 1)).toNat - A151667 (A140758 ((n + 1) ^ 3)).toNat

end

end A306453.P2188545489200894622

/-! ## A306453.P7720575056063943364

`A008683(A162306(n+1))%A054990(A001747(n+1))`
-/

namespace A306453.P7720575056063943364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (A162306 (n + 1)).toNat) (A054990 (A001747 (n + 1)).toNat)

end

end A306453.P7720575056063943364

/-! ## A306453.P2481043060908666033

`A008683(A162306(n+1))-A151667(A263993(n))`
-/

namespace A306453.P2481043060908666033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A162306 (n + 1)).toNat - A151667 (A263993 n).toNat

end

end A306453.P2481043060908666033

/-!
# A306454: a(n) = A261327(n)/A013946(n).

The programs for A306454, the canonical program `A306454.P17030169656322426236` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306454 has offset 1).

The definition of A306454 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306454.P17030169656322426236

`A261327(n+1)/A013946(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A306454

/-- `A261327(n+1)/A013946(n+1)` -/
def P17030169656322426236.Spec : Prop :=
  ∀ n, P17030169656322426236.a n = (A306454 (n + 1) : ℚ)

end A306454

/-! ## A306454.P1477661312367894035

`A243883(n+1)/gcd(A243883(n+1), A259912(n+1))`
-/

namespace A306454.P1477661312367894035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243883 (n + 1) : ℚ) / (Int.gcd (A243883 (n + 1)) (A259912 (n + 1)) : ℚ)

end

end A306454.P1477661312367894035

namespace A306454

/-- `A243883(n+1)/gcd(A243883(n+1), A259912(n+1))` -/
def P1477661312367894035.Spec : Prop :=
  ∀ n, P1477661312367894035.a n = (A306454 (n + 1) : ℚ)

end A306454

/-! ## A306454.P7307916154635495221

`lcm(A013946(n+1), A243883(n+1))/A013946(n+1)`
-/

namespace A306454.P7307916154635495221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A013946 (n + 1)) (A243883 (n + 1)) : ℚ) / (A013946 (n + 1) : ℚ)

end

end A306454.P7307916154635495221

namespace A306454

/-- `lcm(A013946(n+1), A243883(n+1))/A013946(n+1)` -/
def P7307916154635495221.Spec : Prop :=
  ∀ n, P7307916154635495221.a n = (A306454 (n + 1) : ℚ)

end A306454

/-! ## A306454.P15722067825920482188

`A008833(lcm(8, (n+1)²+4)/8)`
-/

namespace A306454.P15722067825920482188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway ((Nat.lcm 8 ((n + 1) ^ 2 + 4) : ℚ) / 8)).toNat

end

end A306454.P15722067825920482188

namespace A306454

/-- `A008833(lcm(8, (n+1)²+4)/8)` -/
def P15722067825920482188.Spec : Prop :=
  ∀ n, P15722067825920482188.a n = A306454 (n + 1)

end A306454

/-! ## A306454.P4023852338563369198

`A008833(A243883(n+1))`
-/

namespace A306454.P4023852338563369198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A243883 (n + 1)).toNat

end

end A306454.P4023852338563369198

namespace A306454

/-- `A008833(A243883(n+1))` -/
def P4023852338563369198.Spec : Prop :=
  ∀ n, P4023852338563369198.a n = A306454 (n + 1)

end A306454

/-! ## A306454.P1299261409814795550

`A008833(A261327(n+1))`
-/

namespace A306454.P1299261409814795550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A261327 (n + 1)).toNat

end

end A306454.P1299261409814795550

namespace A306454

/-- `A008833(A261327(n+1))` -/
def P1299261409814795550.Spec : Prop :=
  ∀ n, P1299261409814795550.a n = A306454 (n + 1)

end A306454

/-! ## A306454.P5067364108720270221

`A243883(n+1)/A000265(A013946(n+1))`
-/

namespace A306454.P5067364108720270221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243883 (n + 1) : ℚ) / (A000265 (A013946 (n + 1)).toNat : ℚ)

end

end A306454.P5067364108720270221

namespace A306454

/-- `A243883(n+1)/A000265(A013946(n+1))` -/
def P5067364108720270221.Spec : Prop :=
  ∀ n, P5067364108720270221.a n = (A306454 (n + 1) : ℚ)

end A306454

/-! ## A306454.P8460343444272827873

`A243883(n+1)/A000265(A259912(n+1))`
-/

namespace A306454.P8460343444272827873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243883 (n + 1) : ℚ) / (A000265 (A259912 (n + 1)).toNat : ℚ)

end

end A306454.P8460343444272827873

namespace A306454

/-- `A243883(n+1)/A000265(A259912(n+1))` -/
def P8460343444272827873.Spec : Prop :=
  ∀ n, P8460343444272827873.a n = (A306454 (n + 1) : ℚ)

end A306454

/-!
# A306455: Total number of covered falling diagonals in all n X n permutation matrices.

The programs for A306455, there is no canonical definition to state claims against.
-/

/-! ## A306455.P5882080717318353867

`A259834(n+2)-n!`
-/

namespace A306455.P5882080717318353867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259834 (n + 2) - (Nat.factorial n : ℤ)

end

end A306455.P5882080717318353867

/-! ## A306455.P12981227580825504796

`A259834(n+2)-A000142(n)`
-/

namespace A306455.P12981227580825504796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259834 (n + 2) - A000142 n

end

end A306455.P12981227580825504796

/-! ## A306455.P7635543187996620487

`A259834(n+2)-A104150(n+1)`
-/

namespace A306455.P7635543187996620487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259834 (n + 2) - A104150 (n + 1)

end

end A306455.P7635543187996620487

/-! ## A306455.P3660887069355612712

`A000166(n+1)+A000255(n)-A000142(n)`
-/

namespace A306455.P3660887069355612712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A000255 n - A000142 n)

end

end A306455.P3660887069355612712

/-! ## A306455.P5178994906715521826

`A000166(n+1)+A000166(n+1)-A002467(n)`
-/

namespace A306455.P5178994906715521826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A000166 (n + 1) - A002467 n)

end

end A306455.P5178994906715521826

/-! ## A306455.P9923582830184769954

`A000166(n+1)+A000255(n)-A104150(n+1)`
-/

namespace A306455.P9923582830184769954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A000255 n - A104150 (n + 1))

end

end A306455.P9923582830184769954

/-! ## A306455.P4508864298263206577

`A000255(n)+A001563(n)-A002467(n+1)`
-/

namespace A306455.P4508864298263206577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 n + (A001563 n - A002467 (n + 1))

end

end A306455.P4508864298263206577

/-! ## A306455.P5684897194057790277

`A001120(n+1)-(A002467(n+1)+A002467(n))`
-/

namespace A306455.P5684897194057790277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001120 (n + 1) - (A002467 (n + 1) + A002467 n)

end

end A306455.P5684897194057790277

/-! ## A306455.P1372172898698169903

`A000166(n+1)+A001563(n)-A180191(n+1)`
-/

namespace A306455.P1372172898698169903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (n + 1) + (A001563 n - A180191 (n + 1))

end

end A306455.P1372172898698169903

/-! ## A306455.P17121620972946388206

`A007680(n)-(A180191(n+1)+A002467(n+1))`
-/

namespace A306455.P17121620972946388206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007680 n - (A180191 (n + 1) + A002467 (n + 1))

end

end A306455.P17121620972946388206

/-!
# A306458: a(n) = A001694(n)/A007947(A001694(n)), the powerful numbers divided by their squarefree kernel.

The programs for A306458, there is no canonical definition to state claims against.
-/

/-! ## A306458.P10869825531042233421

`A001694(n+1)/A007947(A001694(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306458.P10869825531042233421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A007947 (A001694 (n + 1)).toNat : ℚ)

end

end A306458.P10869825531042233421

/-! ## A306458.P9921466605928235122

`A001694(n+1)/A084371(n+1)`
-/

namespace A306458.P9921466605928235122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ)

end

end A306458.P9921466605928235122

/-! ## A306458.P3710780598706560303

`(A224866(n+1)-1)/A084371(n+1)`
-/

namespace A306458.P3710780598706560303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224866 (n + 1) - 1 : ℚ) / (A084371 (n + 1) : ℚ)

end

end A306458.P3710780598706560303

/-! ## A306458.P13752918414616862753

`A001694(n+1)/A000026(∏{p}[A001694(n+1), #])`
-/

namespace A306458.P13752918414616862753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A000026 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ)

end

end A306458.P13752918414616862753

/-! ## A306458.P15843487173300719609

`A001694(n+1)/∏{p}[A001694(n+1), A014963(#)]`
-/

namespace A306458.P15843487173300719609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p : ℤ) : ℚ)

end

end A306458.P15843487173300719609

/-! ## A306458.P1514018387456096935

`A001694(n+1)/∏{p}[A001694(n+1), A020639(#)]`
-/

namespace A306458.P1514018387456096935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p : ℤ) : ℚ)

end

end A306458.P1514018387456096935

/-! ## A306458.P16952505075506111786

`A001694(n+1)/∏{p}[A001694(n+1), A028233(#)]`
-/

namespace A306458.P16952505075506111786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A028233 p : ℤ) : ℚ)

end

end A306458.P16952505075506111786

/-! ## A306458.P2193000823630984086

`A001694(n+1)/∏{p}[A001694(n+1), A304181(#)]`
-/

namespace A306458.P2193000823630984086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A304181 p : ℤ) : ℚ)

end

end A306458.P2193000823630984086

/-! ## A306458.P2845469426732844012

`A323333(n+1)/A173557(A001694(n+1))`
-/

namespace A306458.P2845469426732844012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323333 (n + 1) : ℚ) / (A173557 (A001694 (n + 1)).toNat : ℚ)

end

end A306458.P2845469426732844012

/-! ## A306458.P9579149887116328306

`A001694(n+1)/A336643(A001694(n+1)/A342477(n+1))`
-/

namespace A306458.P9579149887116328306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (A336643 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A342477 (n + 1) : ℚ))).toNat : ℚ)

end

end A306458.P9579149887116328306

/-! ## A306458.P4918022824191097313

`A001694(n+1)/gcd(A001694(n+1), A186944(n+1))`
-/

namespace A306458.P4918022824191097313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 1) : ℚ) / (Int.gcd (A001694 (n + 1)) (A186944 (n + 1)) : ℚ)

end

end A306458.P4918022824191097313

/-! ## A306458.P14501230475888028223

`A322352(A001694(n+1))`
-/

namespace A306458.P14501230475888028223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322352 (A001694 (n + 1)).toNat

end

end A306458.P14501230475888028223

/-! ## A306458.P16168481196420563661

`A003557(record[A057521(n+1)])`
-/

namespace A306458.P16168481196420563661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306458.P16168481196420563661

/-! ## A306458.P17995645285527150858

`A003557(A224866(n+1)-1)`
-/

namespace A306458.P17995645285527150858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A224866 (n + 1) - 1).toNat

end

end A306458.P17995645285527150858

/-! ## A306458.P4983375313680880940

`A003557(lt[n, A183097(n+1)]+1)`
-/

namespace A306458.P4983375313680880940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A306458.P4983375313680880940

/-! ## A306458.P14693905921847596356

`A003557(record[A003557(n+1)*A071773(n+1)])`
-/

namespace A306458.P14693905921847596356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A071773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306458.P14693905921847596356

/-! ## A306458.P5423636745155019938

`A003557(2*A001694(n+1)-A001694(n+1))`
-/

namespace A306458.P5423636745155019938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (2 * A001694 (n + 1) - A001694 (n + 1)).toNat

end

end A306458.P5423636745155019938

/-! ## A306458.P15365339127973289070

`A003557(record[A003557(n+1)²/A062378(n+1)])`
-/

namespace A306458.P15365339127973289070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) ^ 2 : ℚ) / (A062378 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A306458.P15365339127973289070

/-! ## A306458.P15603458635320012321

`A003557(A001694(n+1))*A003557(A007913(n+1))`
-/

namespace A306458.P15603458635320012321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A001694 (n + 1)).toNat * A003557 (A007913 (n + 1)).toNat

end

end A306458.P15603458635320012321

/-!
# A306460: Number of ways to write n as x*(2x-1) + y*(y+1)/2 + z*(z+1)*(z+2)/6, where x,y,z are nonnegative integers with x > 0.

The programs for A306460, there is no canonical definition to state claims against.
-/

/-! ## A306460.P16633979589050124029

`A001222(or(A004773(n+2), A126457(n)))`
-/

namespace A306460.P16633979589050124029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A004773 (n + 2)) (A126457 n)).toNat

end

end A306460.P16633979589050124029

/-! ## A306460.P7065417816731370742

`A001221(or(A292085(2*n+1), A292094(2*n+1)))`
-/

namespace A306460.P7065417816731370742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A292085 (2 * n + 1)) (A292094 (2 * n + 1))).toNat

end

end A306460.P7065417816731370742

/-! ## A306460.P6014053444131379056

`A271721(∑[A272620(2^n)])`
-/

namespace A306460.P6014053444131379056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271721 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306460.P6014053444131379056

/-! ## A306460.P13916375171004507866

`A136480(or(A102916(n), A124838(n+1)))`
-/

namespace A306460.P13916375171004507866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (Int.lor (A102916 n) (A124838 (n + 1))).toNat

end

end A306460.P13916375171004507866

/-! ## A306460.P17153141814953220902

`A374740(A171797(3*n+2)%A056874(n+1))`
-/

namespace A306460.P17153141814953220902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374740 (Int.tmod (A171797 (3 * n + 2)) (A056874 (n + 1))).toNat

end

end A306460.P17153141814953220902

/-!
# A306461: Number T(n,k) of occurrences of k in a (signed) displacement set of a permutation of [n]; triangle T(n,k), n>=1, 1-n<=k<=n-1, read by rows.

The programs for A306461, there is no canonical definition to state claims against.
-/

/-! ## A306461.P4616282465329450198

`A053615(n)!*A306234(n+1)`
-/

namespace A306461.P4616282465329450198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A053615 n).toNat : ℤ) * A306234 (n + 1)

end

end A306461.P4616282465329450198

/-! ## A306461.P582947125331040338

`A306234(n+1)/A324224(n+1)*A324225(n+1)`
-/

namespace A306461.P582947125331040338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306234 (n + 1) : ℚ) / (A324224 (n + 1) : ℚ) * (A324225 (n + 1) : ℚ)

end

end A306461.P582947125331040338

/-!
# A306463: a(n) = Sum_{k=0..n} Sum_{m=0..floor(k/2)} binomial(k-m, m)*binomial(n-k, k-m)^2.

The programs for A306463, there is no canonical definition to state claims against.
-/

/-! ## A306463.P10627883790387180464

`A000006(ceil(sqrt(A185522(n+1))))`
-/

namespace A306463.P10627883790387180464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 ⌈Real.sqrt (A185522 (n + 1) : ℝ)⌉.toNat

end

end A306463.P10627883790387180464

/-! ## A306463.P10602598630073831968

`A318229(n+1)+∑[A038575(n)]`
-/

namespace A306463.P10602598630073831968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306463.P10602598630073831968

/-! ## A306463.P14007353090661970782

`A054404(A057960(n)+A007918(n))`
-/

namespace A306463.P14007353090661970782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A057960 n + A007918 n).toNat

end

end A306463.P14007353090661970782

/-! ## A306463.P10464439156767009359

`A038567(A162326(n)-A001405(n))`
-/

namespace A306463.P10464439156767009359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A162326 n - A001405 n).toNat

end

end A306463.P10464439156767009359

/-!
# A306467: Let S(n)_k be the smallest positive integer t that t!k is a multiple of n (t!k is k-tuple factorial of t); then a(n) is the smallest k for which S(n)_k = n.

The programs for A306467, there is no canonical definition to state claims against.
-/

/-! ## A306467.P11537087722510077366

`∑{digits}[A072194(n+1), #^A072189(n)]`
-/

namespace A306467.P11537087722510077366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072194 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℚ) ^ (A072189 n : ℤ)).sum

end

end A306467.P11537087722510077366

/-! ## A306467.P5010131083115852701

`A147954(A002260(∑{d}[n+1, C(n+2, #)/(n+2)]))`
-/

namespace A306467.P5010131083115852701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147954 (A002260 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (Nat.choose (n + 2) d : ℚ) / (n + 2 : ℚ))).toNat).toNat

end

end A306467.P5010131083115852701

/-! ## A306467.P7466905762180200747

`A008612(∑[A072189(n)]*A163407(n+1))`
-/

namespace A306467.P7466905762180200747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((∑ j ∈ Finset.range (n + 1), f1 j) * A163407 (n + 1)).toNat

end

end A306467.P7466905762180200747

/-! ## A306467.P17648848649402501353

`A093429(A275870(n+1))`
-/

namespace A306467.P17648848649402501353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093429 (A275870 (n + 1)).toNat

end

end A306467.P17648848649402501353

/-! ## A306467.P11405845503578214268

`A115623((∑{d}[n+1, #]-(n+1))^∑{e}[n+1, #])`
-/

namespace A306467.P11405845503578214268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115623 ((((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A306467.P11405845503578214268

/-!
# A306468: Number of ways to write n as floor(i^2/3) + floor(j^2/3) + floor(k^2/3) with 1 <= i <= j <= k.

The programs for A306468, there is no canonical definition to state claims against.
-/

/-! ## A306468.P10101853571307517364

`A001221(A282577(n)+A045753(n+1))`
-/

namespace A306468.P10101853571307517364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282577 n + A045753 (n + 1)).toNat

end

end A306468.P10101853571307517364

/-! ## A306468.P11404995763861486363

`A043562(A069709(n+1)*A144907(n+1))`
-/

namespace A306468.P11404995763861486363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A069709 (n + 1) * A144907 (n + 1)).toNat

end

end A306468.P11404995763861486363

/-! ## A306468.P6999482715597710075

`A165413(A180249(n+1)-A302996(n+2))`
-/

namespace A306468.P6999482715597710075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165413 (A180249 (n + 1) - A302996 (n + 2)).toNat

end

end A306468.P6999482715597710075

/-! ## A306468.P3382925781813799883

`A257023(A153485(n+1)*A160089(n+3))`
-/

namespace A306468.P3382925781813799883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 (A153485 (n + 1) * A160089 (n + 3)).toNat

end

end A306468.P3382925781813799883

/-! ## A306468.P15548928616193368104

`A043562(lcm(A069709(n+1), A144907(n+1)))`
-/

namespace A306468.P15548928616193368104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (Int.lcm (A069709 (n + 1)) (A144907 (n + 1)))

end

end A306468.P15548928616193368104

/-!
# A306472: a(n) = 37*27^n.

The programs for A306472, the canonical program `A306472.P6696991091264036800` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306472 has offset 0).

The definition of A306472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `37*27^n` (program `A306472.P6696991091264036800`, by `A306472.P6696991091264036800.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306472.P6696991091264036800

`37*27^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A306472

/-- `37*27^n` -/
def P6696991091264036800.Spec : Prop :=
  ∀ n, (P6696991091264036800.a n : ℤ) = A306472 n

theorem P6696991091264036800.correct : P6696991091264036800.Spec := by
  intro n
  simp only [A306472]

end A306472

/-!
# A306473: a(n) is the maximum number of distinct palindromic not necessarily contiguous subwords over all binary words of length n.

The programs for A306473, the canonical program `A306473.P2613411170469874060` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306473 has offset 1).

The definition of A306473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 950 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306473.P14679892684675599485

`floor(∑[ϕ*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A306473.P14679892684675599485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  Real.goldenRatio * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A306473.P14679892684675599485

namespace A306473

/-- `floor(∑[ϕ*a(n-2)])` -/
def P14679892684675599485.Spec : Prop :=
  ∀ n, P14679892684675599485.a n = A306473 (n + 1)

end A306473

/-! ## A306473.P2613411170469874060

`a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=10, a(6)=14, a(7)=18, a(8)=25`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A306473

/-- `a(n-1)+a(n-2)-a(n-3)+a(n-4)-a(n-5)` -/
def P2613411170469874060.Spec : Prop :=
  ∀ n, P2613411170469874060.a n = A306473 (n + 1)

theorem P2613411170469874060.correct : P2613411170469874060.Spec := by
  intro n
  simp only [A306473, Nat.add_sub_cancel]

end A306473

/-! ## A306473.P4137786716973617434

`A036469(n)-A317946(A146808(n+1))`
-/

namespace A306473.P4137786716973617434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036469 n - A317946 (A146808 (n + 1)).toNat

end

end A306473.P4137786716973617434

namespace A306473

/-- `A036469(n)-A317946(A146808(n+1))` -/
def P4137786716973617434.Spec : Prop :=
  ∀ n, P4137786716973617434.a n = A306473 (n + 1)

end A306473

/-! ## A306473.P6525375666185323767

`∑[A316844(A321228(n))]`
-/

namespace A306473.P6525375666185323767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316844 (A321228 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306473.P6525375666185323767

namespace A306473

/-- `∑[A316844(A321228(n))]` -/
def P6525375666185323767.Spec : Prop :=
  ∀ n, P6525375666185323767.a n = A306473 (n + 1)

end A306473

/-! ## A306473.P11876199610145824923

`A118168(A241728(n))+n`
-/

namespace A306473.P11876199610145824923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A241728 (n + 55)).toNat + (n : ℤ)

end

end A306473.P11876199610145824923

namespace A306473

/-- `A118168(A241728(n))+n` -/
def P11876199610145824923.Spec : Prop :=
  ∀ n, P11876199610145824923.a n = A306473 (n + 1)

end A306473

/-!
# A306475: Smallest nonprime number <= 10^n (n>=1) with maximum distance from a prime.

The programs for A306475, there is no canonical definition to state claims against.
-/

/-! ## A306475.P423374357962534034

`A053302(n+1)+A053303(n+1)/2`
-/

namespace A306475.P423374357962534034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053302 (n + 1) : ℚ) + (A053303 (n + 1) : ℚ) / 2

end

end A306475.P423374357962534034

/-! ## A306475.P14153248502593300004

`A053302(n+1)+A001281(A053303(n+1))`
-/

namespace A306475.P14153248502593300004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053302 (n + 1) + A001281 (A053303 (n + 1)).toNat

end

end A306475.P14153248502593300004

/-! ## A306475.P4577974342629478043

`A025480(A053303(n+1))+A073861(n+1)+A000038(n)²`
-/

namespace A306475.P4577974342629478043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A053303 (n + 1)).toNat + (A073861 (n + 1) + A000038 n ^ 2)

end

end A306475.P4577974342629478043

/-! ## A306475.P227476869165451546

`A053302(n+1)+A026741(A014963(4*n+2)*A038460(n+1))`
-/

namespace A306475.P227476869165451546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053302 (n + 1) + A026741 (A014963 (4 * n + 2) * A038460 (n + 1)).toNat

end

end A306475.P227476869165451546

/-!
# A306480: Numbers k such that A054404(k) is not floor(k/e - 1/(2*e) + 1/2).

The programs for A306480, there is no canonical definition to state claims against.
-/

/-! ## A306480.P9601731407571788503

`(A001517(2*(n+1)+1)+1)/2`
-/

namespace A306480.P9601731407571788503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001517 (2 * (n + 1) + 1) + 1 : ℚ) / 2

end

end A306480.P9601731407571788503

/-!
# A306483: Expansion of Product_{k>=1} 1/(1 - psi(k)*x^k), where psi() is the Dedekind psi function (A001615).

The programs for A306483, there is no canonical definition to state claims against.
-/

/-! ## A306483.P16350614153607016537

`A192967(n)+A002262(A042572(n))`
-/

namespace A306483.P16350614153607016537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + A002262 (A042572 n).toNat

end

end A306483.P16350614153607016537

/-! ## A306483.P9938505463266455753

`A048265(A244121(n)+A000225(n))`
-/

namespace A306483.P9938505463266455753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A244121 n + A000225 n).toNat

end

end A306483.P9938505463266455753

/-! ## A306483.P10117568216231174819

`A375110(A004028(n))-A085858(3*n)`
-/

namespace A306483.P10117568216231174819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375110 (A004028 n).toNat - A085858 (3 * n)

end

end A306483.P10117568216231174819

/-!
# A306484: Expansion of Product_{k>=1} 1/(1 - Lucas(k)*x^k), where Lucas = A000204.

The programs for A306484, there is no canonical definition to state claims against.
-/

/-! ## A306484.P9534804396014349808

`A325631(A149410(n))`
-/

namespace A306484.P9534804396014349808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325631 (A149410 n).toNat

end

end A306484.P9534804396014349808

/-! ## A306484.P10483236517014888332

`∑[A086826(n+2)+A059652(n)]`
-/

namespace A306484.P10483236517014888332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086826 (n + 2) + A059652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306484.P10483236517014888332

/-! ## A306484.P8992917475142520570

`A000294(n)-A187451(5^ceil(n/2))`
-/

namespace A306484.P8992917475142520570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000294 n - A187451 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A306484.P8992917475142520570

/-!
# A306486: Number of squares in the interval [e^(n-1), e^n).

The programs for A306486, the canonical program `A306486.P14068160640840078580` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306486 has offset 0).

The definition of A306486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306486.P12804811088554052307

`A005181(n+1)-A005181(n)`
-/

namespace A306486.P12804811088554052307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 (n + 1) - A005181 n

end

end A306486.P12804811088554052307

namespace A306486

/-- `A005181(n+1)-A005181(n)` -/
def P12804811088554052307.Spec : Prop :=
  ∀ n, P12804811088554052307.a n = A306486 n

end A306486

/-! ## A306486.P14068160640840078580

`ceil(sqrt(exp(n)))-ceil(sqrt(exp(n-1)))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A306486

/-- `ceil(sqrt(exp(n)))-ceil(sqrt(exp(n-1)))` -/
def P14068160640840078580.Spec : Prop :=
  ∀ n, P14068160640840078580.a n = A306486 n

theorem P14068160640840078580.correct : P14068160640840078580.Spec := by
  intro n
  simp only [A306486]

end A306486

/-! ## A306486.P2798388824406228359

`Δ[A005181(n)]`
-/

namespace A306486.P2798388824406228359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306486.P2798388824406228359

namespace A306486

/-- `Δ[A005181(n)]` -/
def P2798388824406228359.Spec : Prop :=
  ∀ n, P2798388824406228359.a n = A306486 n

end A306486

/-! ## A306486.P17284729421862853955

`Δ[A096766(n+1)+A000045(n+1)]`
-/

namespace A306486.P17284729421862853955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096766 (n + 1) + A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306486.P17284729421862853955

namespace A306486

/-- `Δ[A096766(n+1)+A000045(n+1)]` -/
def P17284729421862853955.Spec : Prop :=
  ∀ n, P17284729421862853955.a n = A306486 n

end A306486

/-! ## A306486.P235728561185037565

`Δ[floor(exp((n-1)/2))%A374517(n)]`
-/

namespace A306486.P235728561185037565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.exp (((n : ℤ) - 1 : ℚ) / 2 : ℝ)⌋ (A374517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306486.P235728561185037565

namespace A306486

/-- `Δ[floor(exp((n-1)/2))%A374517(n)]` -/
def P235728561185037565.Spec : Prop :=
  ∀ n, P235728561185037565.a n = A306486 n

end A306486

/-!
# A306488: Number of ways of expressing n as a + b + c, with a, b, and c positive integers, gcd(a, b) = 1, but gcd(a, c) and gcd(b, c) both greater than 1.

The programs for A306488, there is no canonical definition to state claims against.
-/

/-! ## A306488.P16381076326920850905

`A318875(n+1)²%A146583(n+1)`
-/

namespace A306488.P16381076326920850905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318875 (n + 1) ^ 2) (A146583 (n + 1))

end

end A306488.P16381076326920850905

/-! ## A306488.P17608550642154488847

`A114715(A215204(n))%A114717(n+1)`
-/

namespace A306488.P17608550642154488847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114715 (A215204 n).toNat) (A114717 (n + 1))

end

end A306488.P17608550642154488847

/-! ## A306488.P370518365123982818

`and(A024043(n), A108611(A308108(n+1)))`
-/

namespace A306488.P370518365123982818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024043 n) (A108611 (A308108 (n + 1)).toNat)

end

end A306488.P370518365123982818

/-! ## A306488.P3548015327158507445

`A239703(4^A219203(n+1))`
-/

namespace A306488.P3548015327158507445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239703 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A219203 (n + 1 + 100) : ℤ))).toNat

end

end A306488.P3548015327158507445

/-! ## A306488.P601822480771937943

`A220523(C(A229964(n+1), 3))`
-/

namespace A306488.P601822480771937943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 (Nat.choose (A229964 (n + 1)).toNat 3)

end

end A306488.P601822480771937943

/-!
# A306489: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of 1/(1 - Sum_{d|k} x^d).

The programs for A306489, there is no canonical definition to state claims against.
-/

/-! ## A306489.P6135878558726607196

`A220122(lt[n, A111840(n)²])`
-/

namespace A306489.P6135878558726607196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111840 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306489.P6135878558726607196

/-! ## A306489.P9426489414501005183

`A220122(comp[∑[n-1]])%A308415(2*(n+1))`
-/

namespace A306489.P9426489414501005183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220122 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A308415 (2 * (n + 1)))

end

end A306489.P9426489414501005183

/-! ## A306489.P15382260078659978526

`A220122(comp[∑[n-1]]%A335469(2*n+5))`
-/

namespace A306489.P15382260078659978526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A335469 (2 * n + 5))).toNat

end

end A306489.P15382260078659978526

/-! ## A306489.P2894978577689889862

`A220122(lt[A228405(n), A111840(n)])`
-/

namespace A306489.P2894978577689889862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228405 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306489.P2894978577689889862

/-! ## A306489.P5225267341636315214

`A220122(lt[A308284(n), A111840(n)])`
-/

namespace A306489.P5225267341636315214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220122 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306489.P5225267341636315214

/-!
# A306490: Numbers k such that sigma(k) - k - 2 is prime.

The programs for A306490, there is no canonical definition to state claims against.
-/

/-! ## A306490.P14166417490563667929

`lt[A183335(A005940(n+1)), A087188(n)]`
-/

namespace A306490.P14166417490563667929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306490.P14166417490563667929

/-! ## A306490.P13090933699840647286

`lt[A300259(A005940(n+1)), A067590(n)]`
-/

namespace A306490.P13090933699840647286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300259 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306490.P13090933699840647286

/-! ## A306490.P17824892649370570768

`lt[A185905(A005940(n+1)), A182634(n)]`
-/

namespace A306490.P17824892649370570768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185905 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306490.P17824892649370570768

/-! ## A306490.P2929922735829334538

`lt[A202100(A005940(n+1)), A263227(n)]`
-/

namespace A306490.P2929922735829334538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202100 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263227 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306490.P2929922735829334538

/-! ## A306490.P4350979750561393155

`lt[A232065(A005940(n+1)), A351006(n)]`
-/

namespace A306490.P4350979750561393155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232065 (A005940 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306490.P4350979750561393155

/-!
# A306491: Numbers that set a record for the number of distinct prime signatures represented among their divisors (A085082).

The programs for A306491, there is no canonical definition to state claims against.
-/

/-! ## A306491.P9558128257257764009

`A085083(record[A238746(n+1)])`
-/

namespace A306491.P9558128257257764009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306491.P9558128257257764009

/-! ## A306491.P2875709187417818424

`A085083(record[A322584(n+1)])`
-/

namespace A306491.P2875709187417818424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306491.P2875709187417818424

/-! ## A306491.P13730838660367487314

`A085083(record[A085082(n+1)])`
-/

namespace A306491.P13730838660367487314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306491.P13730838660367487314

/-! ## A306491.P10840573737200640529

`record[A000010(abs(A128502(2*n+1)))]`
-/

namespace A306491.P10840573737200640529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A128502 (2 * n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306491.P10840573737200640529

/-! ## A306491.P17455009051529866251

`record[A000010(lcm(2, A128502(2*n+1)))]`
-/

namespace A306491.P17455009051529866251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm 2 (A128502 (2 * n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306491.P17455009051529866251

/-!
# A306493: a(n) is the least number such that the n-th prime is the least coprime quadratic nonresidue modulo a(n).

The programs for A306493, there is no canonical definition to state claims against.
-/

/-! ## A306493.P11957842933627937449

`∑[A341199(a(n-1))]` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A306493.P11957842933627937449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n f1 =>
  A341199 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306493.P11957842933627937449

/-!
# A306495: Expansion of e.g.f. (2-exp(-x))*exp(x)/(x-1)^2.

The programs for A306495, there is no canonical definition to state claims against.
-/

/-! ## A306495.P3877964801705494023

`(2*n+1)*a(n-1)-(n-1)*((n+2)*a(n-2)-(n-2)*a(n-3))` with `a(0)=1, a(1)=4, a(2)=16`
-/

namespace A306495.P3877964801705494023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 16] fun n a =>
  (2 * n + 1 : ℤ) * a (n - 1) - ((n : ℤ) - 1) * ((n + 2 : ℤ) * a (n - 2) - ((n : ℤ) - 2) * a (n - 3))

end

end A306495.P3877964801705494023

/-! ## A306495.P963030141359810829

`A054091(n)+(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A306495.P963030141359810829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A054091 n + (n + 1 : ℤ) * a (n - 1)

end

end A306495.P963030141359810829

/-! ## A306495.P2006562957879457767

`A114870(n)+A001339(n)`
-/

namespace A306495.P2006562957879457767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114870 n + A001339 n

end

end A306495.P2006562957879457767

/-! ## A306495.P13861228248703687470

`A093964(n)+∑[A193657(n)]`
-/

namespace A306495.P13861228248703687470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306495.P13861228248703687470

/-! ## A306495.P7554767213724854958

`A114870(n)+Δ[A000522(n)]`
-/

namespace A306495.P7554767213724854958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114870 n + (f1 (n + 1) - f1 n)

end

end A306495.P7554767213724854958

/-! ## A306495.P17193176082483829227

`A093964(n)+A002627(n+1)`
-/

namespace A306495.P17193176082483829227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n + A002627 (n + 1)

end

end A306495.P17193176082483829227

/-! ## A306495.P4987652965980949030

`Δ[2*A000522(n)-A007489(n)]`
-/

namespace A306495.P4987652965980949030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000522 n - A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306495.P4987652965980949030

/-! ## A306495.P6391156216728620311

`A000142(n+1)+2*A114870(n)`
-/

namespace A306495.P6391156216728620311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) + 2 * A114870 n

end

end A306495.P6391156216728620311

/-! ## A306495.P18262235943924619953

`A001339(n)+A001339(n)-A000142(n+1)`
-/

namespace A306495.P18262235943924619953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001339 n + (A001339 n - A000142 (n + 1))

end

end A306495.P18262235943924619953

/-! ## A306495.P8031344911874698599

`A002627(n+1)+A001339(n)-A000522(n)`
-/

namespace A306495.P8031344911874698599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002627 (n + 1) + (A001339 n - A000522 n)

end

end A306495.P8031344911874698599

/-!
# A306496: Number of (undirected) Hamiltonian cycles in the n-crown graph.

The programs for A306496, the canonical program `A306496.P4171439638547843588` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306496 has offset 1).

The definition of A306496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306496.P4171439638547843588

`A094047(n+1)/2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A306496

/-- `A094047(n+1)/2` -/
def P4171439638547843588.Spec : Prop :=
  ∀ n, P4171439638547843588.a n = (A306496 (n + 1) : ℚ)

end A306496

/-! ## A306496.P5600068589380101117

`(A000166(n+1)-A324621(n))*A000142(n)/2`
-/

namespace A306496.P5600068589380101117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000166 (n + 1) - A324621 n) * A000142 n : ℚ) / 2

end

end A306496.P5600068589380101117

namespace A306496

/-- `(A000166(n+1)-A324621(n))*A000142(n)/2` -/
def P5600068589380101117.Spec : Prop :=
  ∀ n, P5600068589380101117.a n = (A306496 (n + 1) : ℚ)

end A306496

/-! ## A306496.P11856137031732372461

`A059375(n+1)/(4*(n+1))`
-/

namespace A306496.P11856137031732372461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059375 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A306496.P11856137031732372461

namespace A306496

/-- `A059375(n+1)/(4*(n+1))` -/
def P11856137031732372461.Spec : Prop :=
  ∀ n, P11856137031732372461.a n = (A306496 (n + 1) : ℚ)

end A306496

/-! ## A306496.P3728577280982524139

`n!*A335700(n+1)/2`
-/

namespace A306496.P3728577280982524139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A335700 (n + 1) : ℚ) / 2

end

end A306496.P3728577280982524139

namespace A306496

/-- `n!*A335700(n+1)/2` -/
def P3728577280982524139.Spec : Prop :=
  ∀ n, P3728577280982524139.a n = (A306496 (n + 1) : ℚ)

end A306496

/-! ## A306496.P1541314674856419142

`A124355(n+1)/2*Δ[A000271(n)]`
-/

namespace A306496.P1541314674856419142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124355 (n + 1) : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A306496.P1541314674856419142

namespace A306496

/-- `A124355(n+1)/2*Δ[A000271(n)]` -/
def P1541314674856419142.Spec : Prop :=
  ∀ n, P1541314674856419142.a n = (A306496 (n + 1) : ℚ)

end A306496

/-!
# A306497: Abundant numbers that differ from the next abundant number by 5.

The programs for A306497, there is no canonical definition to state claims against.
-/

/-! ## A306497.P1881885256986620659

`A115414(n+1)-A162208(A049374(2*(n+2)))`
-/

namespace A306497.P1881885256986620659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115414 (n + 1) - A162208 (A049374 (2 * (n + 2))).toNat

end

end A306497.P1881885256986620659

/-!
# A306499: a(n) is the smallest prime p such that Sum_{primes q <= p} Kronecker(A003658(n),q) > 0, or 0 if no such prime exists.

The programs for A306499, there is no canonical definition to state claims against.
-/

/-! ## A306499.P12794464080104696307

`A326615(A003658(n+1))`
-/

namespace A306499.P12794464080104696307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (A003658 (n + 1)).toNat

end

end A306499.P12794464080104696307

/-! ## A306499.P15415186702260720866

`A326615(eq[1, char[A037449(n+1)]])`
-/

namespace A306499.P15415186702260720866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306499.P15415186702260720866

/-! ## A306499.P15589549979801491403

`A326615(record[(n+1)*A290098(n+1)])`
-/

namespace A306499.P15589549979801491403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A290098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306499.P15589549979801491403

/-! ## A306499.P17641350831303093332

`A326615(record[and(n+1, A037449(n+1))])`
-/

namespace A306499.P17641350831303093332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A037449 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306499.P17641350831303093332

/-! ## A306499.P10871631447520262335

`A326615(record[A037449(n+1)*A087960(n)])`
-/

namespace A306499.P10871631447520262335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1) * A087960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306499.P10871631447520262335

/-! ## A306499.P1069615667362503070

`A326615(record[A037449(n+1)/A087960(n)])`
-/

namespace A306499.P1069615667362503070
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037449 (n + 1) : ℚ) / (A087960 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A306499.P1069615667362503070

/-! ## A306499.P15006204776392304943

`A326615(record[A037449(n+1)%A004767(n)])`
-/

namespace A306499.P15006204776392304943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037449 (n + 1)) (A004767 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326615 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306499.P15006204776392304943

