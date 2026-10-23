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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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
# A344200: Numbers m > 15 such that x^m + x^15 + 1 is irreducible over GF(2) while x^m + x^15 + x^12 + x^3 + 1 = x^m + (x^3 + 1)^5 is not.

The programs for A344200, there is no canonical definition to state claims against.
-/

/-! ## A344200.P10129498262936595466

`5*A368437(A018730(n+1))`
-/

namespace A344200.P10129498262936595466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A368437 (A018730 (n + 1)).toNat

end

end A344200.P10129498262936595466

/-!
# A344201: Number of cyclic subgroups of the group (C_n)^n, where C_n is the cyclic group of order n.

The programs for A344201, there is no canonical definition to state claims against.
-/

/-! ## A344201.P4326749995805989484

`A246340(A072653(n+1))`
-/

namespace A344201.P4326749995805989484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246340 (A072653 (n + 1)).toNat

end

end A344201.P4326749995805989484

/-!
# A344205: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^binomial(k+4,5).

The programs for A344205, there is no canonical definition to state claims against.
-/

/-! ## A344205.P5012063791918988459

`A276872(A290527(n))`
-/

namespace A344205.P5012063791918988459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276872 (A290527 n).toNat

end

end A344205.P5012063791918988459

/-!
# A344206: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^binomial(k+5,6).

The programs for A344206, there is no canonical definition to state claims against.
-/

/-! ## A344206.P14733957472645335582

`A178878(A106856(n+1)-record[2-xor(1, -n)])`
-/

namespace A344206.P14733957472645335582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178878 (A106856 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344206.P14733957472645335582

/-!
# A344207: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^binomial(k+6,7).

The programs for A344207, there is no canonical definition to state claims against.
-/

/-! ## A344207.P8034851919057674345

`A000010(or(∑[(3*n+1)²-3]+2, A110404(n+1)))`
-/

namespace A344207.P8034851919057674345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) ^ 2 : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lor (∑ j ∈ Finset.range (n + 1), f1 j + 2) (A110404 (n + 1))).toNat

end

end A344207.P8034851919057674345

/-!
# A344208: Numbers k such that iterating x -> digsum(x)^2 + 1 from k one or more times results in a number < 10.

The programs for A344208, there is no canonical definition to state claims against.
-/

/-! ## A344208.P4068091916677942526

`eq[A070635(A033930(n)²), A151933(n)]`
-/

namespace A344208.P4068091916677942526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070635 (A033930 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344208.P4068091916677942526

/-! ## A344208.P5294440210010236522

`eq[A057427(n), A325470(A101278(n))]`
-/

namespace A344208.P5294440210010236522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (A101278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344208.P5294440210010236522

/-! ## A344208.P1309649852361595644

`eq[A178334(n), A325470(A101278(n))]`
-/

namespace A344208.P1309649852361595644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (A101278 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344208.P1309649852361595644

/-! ## A344208.P7274233403182139318

`record[A028310(n)/A325470(A101278(n))]`
-/

namespace A344208.P7274233403182139318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 n : ℚ) / (A325470 (A101278 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344208.P7274233403182139318

/-! ## A344208.P11297670724530774915

`lt[A325470(A101278(n)), A326193(n+1)]`
-/

namespace A344208.P11297670724530774915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325470 (A101278 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326193 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344208.P11297670724530774915

/-!
# A344210: a(n) = Sum_{d|n} mu(n/d) * d^n / phi(n).

The programs for A344210, there is no canonical definition to state claims against.
-/

/-! ## A344210.P2311863934506811982

`A067858(n+1)/A000010(n+1)`
-/

namespace A344210.P2311863934506811982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067858 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A344210.P2311863934506811982

/-! ## A344210.P12069583035799126824

`A067858(n+1)/Δ[A002088(n)]`
-/

namespace A344210.P12069583035799126824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067858 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A344210.P12069583035799126824

/-! ## A344210.P8724416503858972056

`A067858(n+1)/Δ[A005728(n)]`
-/

namespace A344210.P8724416503858972056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067858 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A344210.P8724416503858972056

/-! ## A344210.P11942441151246680128

`A067858(n+1)/(A002088(n+1)-A002088(n))`
-/

namespace A344210.P11942441151246680128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067858 (n + 1) : ℚ) / (A002088 (n + 1) - A002088 n : ℚ)

end

end A344210.P11942441151246680128

/-! ## A344210.P1458672283417153160

`A263950(∑[4*n]+1)`
-/

namespace A344210.P1458672283417153160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263950 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A344210.P1458672283417153160

/-!
# A344211: Number of generalized polyforms on the rhombitrihexagonal tiling with n cells.

The programs for A344211, there is no canonical definition to state claims against.
-/

/-! ## A344211.P7734413770538710993

`A331523(A076324(n+1)+A002024(n+1))`
-/

namespace A344211.P7734413770538710993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331523 (A076324 (n + 1) + A002024 (n + 1)).toNat

end

end A344211.P7734413770538710993

/-! ## A344211.P15571402264730861239

`A331523(A270920(n+1)+A076324(n+1))`
-/

namespace A344211.P15571402264730861239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331523 (A270920 (n + 1) + A076324 (n + 1)).toNat

end

end A344211.P15571402264730861239

/-!
# A344213: Number of generalized polyforms on the truncated trihexagonal tiling with n cells.

The programs for A344213, there is no canonical definition to state claims against.
-/

/-! ## A344213.P15667513596975044834

`A130446(A162725(n)+A061579(n))`
-/

namespace A344213.P15667513596975044834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A162725 n + A061579 n).toNat

end

end A344213.P15667513596975044834

/-! ## A344213.P9282350969210592411

`or(A209902(n), A327527(A001079(n)))`
-/

namespace A344213.P9282350969210592411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209902 n) (A327527 (A001079 n).toNat)

end

end A344213.P9282350969210592411

/-!
# A344214: Numbers k such that repeated iterations of f(m) = (digsum(f(m-1)))^2 + 1 starting from f(1) = k will eventually yield 5 before any other single-digit number.

The programs for A344214, there is no canonical definition to state claims against.
-/

/-! ## A344214.P9021402299150461536

`lt[A335505(A335485(n+5)), A373951(2*n+1)]`
-/

namespace A344214.P9021402299150461536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335505 (A335485 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373951 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344214.P9021402299150461536

/-!
# A344215: a(n) = n*(3^(n-1) - 2^(n-1)).

The programs for A344215, the canonical program `A344215.P4496065287303426731` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344215 has offset 0).

The definition of A344215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344215.P4496065287303426731

`n*(3^(n-1)-2^(n-1))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344215

/-- `n*(3^(n-1)-2^(n-1))` -/
def P4496065287303426731.Spec : Prop :=
  ∀ n, P4496065287303426731.a n = (A344215 n : ℚ)

end A344215

/-! ## A344215.P8608232930116100612

`abs(n*Δ[A000392(n)])`
-/

namespace A344215.P8608232930116100612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A344215.P8608232930116100612

namespace A344215

/-- `abs(n*Δ[A000392(n)])` -/
def P8608232930116100612.Spec : Prop :=
  ∀ n, P8608232930116100612.a n = A344215 n

end A344215

/-! ## A344215.P1208819259330257853

`n*A304973(2*n)/2`
-/

namespace A344215.P1208819259330257853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A304973 (2 * n) : ℚ) / 2

end

end A344215.P1208819259330257853

namespace A344215

/-- `n*A304973(2*n)/2` -/
def P1208819259330257853.Spec : Prop :=
  ∀ n, P1208819259330257853.a n = (A344215 n : ℚ)

end A344215

/-! ## A344215.P17420400685523830890

`A027471(n+1)-A001787(n)`
-/

namespace A344215.P17420400685523830890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) - A001787 n

end

end A344215.P17420400685523830890

namespace A344215

/-- `A027471(n+1)-A001787(n)` -/
def P17420400685523830890.Spec : Prop :=
  ∀ n, P17420400685523830890.a n = A344215 n

end A344215

/-! ## A344215.P5090038778206114701

`A027471(n+1)-A097067(n+1)`
-/

namespace A344215.P5090038778206114701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) - A097067 (n + 1)

end

end A344215.P5090038778206114701

namespace A344215

/-- `A027471(n+1)-A097067(n+1)` -/
def P5090038778206114701.Spec : Prop :=
  ∀ n, P5090038778206114701.a n = A344215 n

end A344215

/-! ## A344215.P1893829471639891132

`A027471(n+1)-A139756(n+1)`
-/

namespace A344215.P1893829471639891132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) - A139756 (n + 1)

end

end A344215.P1893829471639891132

namespace A344215

/-- `A027471(n+1)-A139756(n+1)` -/
def P1893829471639891132.Spec : Prop :=
  ∀ n, P1893829471639891132.a n = A344215 n

end A344215

/-! ## A344215.P5063197236042714908

`A027471(n+1)-A036289(n)/2`
-/

namespace A344215.P5063197236042714908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027471 (n + 1) : ℚ) - (A036289 n : ℚ) / 2

end

end A344215.P5063197236042714908

namespace A344215

/-- `A027471(n+1)-A036289(n)/2` -/
def P5063197236042714908.Spec : Prop :=
  ∀ n, P5063197236042714908.a n = (A344215 n : ℚ)

end A344215

/-! ## A344215.P1897452978112089205

`A027471(n+1)-n*A011782(n)`
-/

namespace A344215.P1897452978112089205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) - (n : ℤ) * A011782 n

end

end A344215.P1897452978112089205

namespace A344215

/-- `A027471(n+1)-n*A011782(n)` -/
def P1897452978112089205.Spec : Prop :=
  ∀ n, P1897452978112089205.a n = A344215 n

end A344215

/-! ## A344215.P17111100885175910846

`A027471(n+1)-n*A131577(n)`
-/

namespace A344215.P17111100885175910846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) - (n : ℤ) * A131577 n

end

end A344215.P17111100885175910846

namespace A344215

/-- `A027471(n+1)-n*A131577(n)` -/
def P17111100885175910846.Spec : Prop :=
  ∀ n, P17111100885175910846.a n = A344215 n

end A344215

/-! ## A344215.P3671010295784140426

`A027471(n+1)+A206603(n)-A189390(n)`
-/

namespace A344215.P3671010295784140426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A206603 n - A189390 n)

end

end A344215.P3671010295784140426

namespace A344215

/-- `A027471(n+1)+A206603(n)-A189390(n)` -/
def P3671010295784140426.Spec : Prop :=
  ∀ n, P3671010295784140426.a n = A344215 n

end A344215

/-! ## A344215.P7077737876474344855

`A027471(n+1)-(A206603(n)+A189391(n))`
-/

namespace A344215.P7077737876474344855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) - (A206603 n + A189391 n)

end

end A344215.P7077737876474344855

namespace A344215

/-- `A027471(n+1)-(A206603(n)+A189391(n))` -/
def P7077737876474344855.Spec : Prop :=
  ∀ n, P7077737876474344855.a n = A344215 n

end A344215

/-! ## A344215.P14720276727448609096

`A006234(n+3)-(A001787(n)+A000244(n))`
-/

namespace A344215.P14720276727448609096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006234 (n + 3) - (A001787 n + A000244 n)

end

end A344215.P14720276727448609096

namespace A344215

/-- `A006234(n+3)-(A001787(n)+A000244(n))` -/
def P14720276727448609096.Spec : Prop :=
  ∀ n, P14720276727448609096.a n = A344215 n

end A344215

/-! ## A344215.P9203814739563416583

`A001519(n+1)+A027471(n+1)-A081663(n)`
-/

namespace A344215.P9203814739563416583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) + (A027471 (n + 1) - A081663 n)

end

end A344215.P9203814739563416583

namespace A344215

/-- `A001519(n+1)+A027471(n+1)-A081663(n)` -/
def P9203814739563416583.Spec : Prop :=
  ∀ n, P9203814739563416583.a n = A344215 n

end A344215

/-! ## A344215.P13010371810941136218

`A027471(n+1)+A172481(n)-A045883(n+1)`
-/

namespace A344215.P13010371810941136218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A172481 n - A045883 (n + 1))

end

end A344215.P13010371810941136218

namespace A344215

/-- `A027471(n+1)+A172481(n)-A045883(n+1)` -/
def P13010371810941136218.Spec : Prop :=
  ∀ n, P13010371810941136218.a n = A344215 n

end A344215

/-! ## A344215.P5165251541989012506

`n*A245804(n)/6`
-/

namespace A344215.P5165251541989012506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A245804 n : ℚ) / 6

end

end A344215.P5165251541989012506

namespace A344215

/-- `n*A245804(n)/6` -/
def P5165251541989012506.Spec : Prop :=
  ∀ n, P5165251541989012506.a n = (A344215 n : ℚ)

end A344215

/-! ## A344215.P2413149413884680309

`(A004142(n)-A027471(n+1))/2`
-/

namespace A344215.P2413149413884680309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004142 n - A027471 (n + 1) : ℚ) / 2

end

end A344215.P2413149413884680309

namespace A344215

/-- `(A004142(n)-A027471(n+1))/2` -/
def P2413149413884680309.Spec : Prop :=
  ∀ n, P2413149413884680309.a n = (A344215 n : ℚ)

end A344215

/-! ## A344215.P12817195749895282432

`A081666(n)-(A081567(n)+A001787(n))`
-/

namespace A344215.P12817195749895282432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081666 n - (A081567 n + A001787 n)

end

end A344215.P12817195749895282432

namespace A344215

/-- `A081666(n)-(A081567(n)+A001787(n))` -/
def P12817195749895282432.Spec : Prop :=
  ∀ n, P12817195749895282432.a n = A344215 n

end A344215

/-! ## A344215.P17301309371600751113

`A027471(n+1)+A308700(n)-A082134(n)`
-/

namespace A344215.P17301309371600751113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A308700 n - A082134 n)

end

end A344215.P17301309371600751113

namespace A344215

/-- `A027471(n+1)+A308700(n)-A082134(n)` -/
def P17301309371600751113.Spec : Prop :=
  ∀ n, P17301309371600751113.a n = A344215 n

end A344215

/-!
# A344216: a(n) = n!*((n+1)/2 + 2*Sum_{k=2..n-1}(n-k)/(k+1)).

The programs for A344216, there is no canonical definition to state claims against.
-/

/-! ## A344216.P643613641818567496

`A063090(n+1)-A008585(A180119(n))`
-/

namespace A344216.P643613641818567496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063090 (n + 1) - A008585 (A180119 n).toNat

end

end A344216.P643613641818567496

/-!
# A344217: Expansion of e.g.f. log(1 + (1/(1-x)^4 - 1)/4).

The programs for A344217, there is no canonical definition to state claims against.
-/

/-! ## A344217.P16144151408321960183

`A308497(A112355(n+1)+n)`
-/

namespace A344217.P16144151408321960183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (A112355 (n + 1) + (n : ℤ)).toNat

end

end A344217.P16144151408321960183

/-! ## A344217.P6009425078964278218

`∑[A028855(n+2)%A116766(n+1)]`
-/

namespace A344217.P6009425078964278218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028855 (n + 2)) (A116766 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344217.P6009425078964278218

/-!
# A344218: Expansion of e.g.f. log(1 + (1/(1-x)^5 - 1)/5).

The programs for A344218, there is no canonical definition to state claims against.
-/

/-! ## A344218.P634072808646539187

`A308497(A052905(n+2))-A000007(n)`
-/

namespace A344218.P634072808646539187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (A052905 (n + 2)).toNat - A000007 n

end

end A344218.P634072808646539187

/-! ## A344218.P13613538252489028723

`and(-A003056(n), A308497(A052905(n+2)))`
-/

namespace A344218.P13613538252489028723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A003056 n) (A308497 (A052905 (n + 2)).toNat)

end

end A344218.P13613538252489028723

/-! ## A344218.P5488255537648437982

`char[A028920(n)]*A308497(A052905(n+2))`
-/

namespace A344218.P5488255537648437982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A308497 (A052905 (n + 2)).toNat

end

end A344218.P5488255537648437982

/-! ## A344218.P5883181400548047516

`xor(A000007(2*n), A308497(A052905(n+2)))`
-/

namespace A344218.P5883181400548047516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A308497 (A052905 (n + 2)).toNat)

end

end A344218.P5883181400548047516

/-! ## A344218.P10282474980141104974

`and(-A002217(n+1), A308497(A052905(n+2)))`
-/

namespace A344218.P10282474980141104974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A002217 (n + 1)) (A308497 (A052905 (n + 2)).toNat)

end

end A344218.P10282474980141104974

/-! ## A344218.P6302060179823041143

`char[A002260(n+1)]*A308497(A052905(n+2))`
-/

namespace A344218.P6302060179823041143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A308497 (A052905 (n + 2)).toNat

end

end A344218.P6302060179823041143

/-! ## A344218.P5508307770796097237

`A308497(A052905(n+2))-A010051(2*(n+1))`
-/

namespace A344218.P5508307770796097237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (A052905 (n + 2)).toNat - A010051 (2 * (n + 1))

end

end A344218.P5508307770796097237

/-! ## A344218.P12364379659708757075

`A308497(A052905(n+2))+A008683(2*(n+1)²)`
-/

namespace A344218.P12364379659708757075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308497 (A052905 (n + 2)).toNat + A008683 (2 * (n + 1) ^ 2)

end

end A344218.P12364379659708757075

/-!
# A344219: Number of cyclic subgroups of the group (C_n)^5, where C_n is the cyclic group of order n.

The programs for A344219, the canonical program `A344219.P2090989052706791949` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344219 has offset 1).

The definition of A344219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344219.P2090989052706791949

`∑{d}[n+1, A160893(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A344219

/-- `∑{d}[n+1, A160893(#)]` -/
def P2090989052706791949.Spec : Prop :=
  ∀ n, P2090989052706791949.a n = A344219 (n + 1)

theorem P2090989052706791949.correct : P2090989052706791949.Spec := by
  intro n
  simp only [A344219, Nat.add_sub_cancel]

end A344219

/-! ## A344219.P6378660265335909721

`A160893(n+1)+A001065(A003521(n+1))`
-/

namespace A344219.P6378660265335909721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160893 (n + 1) + A001065 (A003521 (n + 1)).toNat

end

end A344219.P6378660265335909721

namespace A344219

/-- `A160893(n+1)+A001065(A003521(n+1))` -/
def P6378660265335909721.Spec : Prop :=
  ∀ n, P6378660265335909721.a n = A344219 (n + 1)

end A344219

/-!
# A344220: a(n) is the least k >= 0 such that n XOR k is a binary palindrome (where XOR denotes the bitwise XOR operator).

The programs for A344220, the canonical program `A344220.P16997399058361643495` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344220 has offset 0).

The definition of A344220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344220.P16997399058361643495

`A175919(n)%A016116(A070939(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344220

/-- `A175919(n)%A016116(A070939(n))` -/
def P16997399058361643495.Spec : Prop :=
  ∀ n, P16997399058361643495.a n = A344220 n

theorem P16997399058361643495.correct : P16997399058361643495.Spec := by
  intro n
  simp only [A344220]

end A344220

/-! ## A344220.P8411564390843941492

`and(A003817(A000196(n)), A175919(n))`
-/

namespace A344220.P8411564390843941492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A000196 n).toNat) (A175919 n)

end

end A344220.P8411564390843941492

namespace A344220

/-- `and(A003817(A000196(n)), A175919(n))` -/
def P8411564390843941492.Spec : Prop :=
  ∀ n, P8411564390843941492.a n = A344220 n

end A344220

/-! ## A344220.P17155738622163494985

`and(A059906(A003817(n)), A175919(n))`
-/

namespace A344220.P17155738622163494985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059906 (A003817 n).toNat) (A175919 n)

end

end A344220.P17155738622163494985

namespace A344220

/-- `and(A059906(A003817(n)), A175919(n))` -/
def P17155738622163494985.Spec : Prop :=
  ∀ n, P17155738622163494985.a n = A344220 n

end A344220

/-! ## A344220.P2727727509481859482

`and(A003817(A262689(n)), A175919(n))`
-/

namespace A344220.P2727727509481859482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A262689 n).toNat) (A175919 n)

end

end A344220.P2727727509481859482

namespace A344220

/-- `and(A003817(A262689(n)), A175919(n))` -/
def P2727727509481859482.Spec : Prop :=
  ∀ n, P2727727509481859482.a n = A344220 n

end A344220

/-! ## A344220.P4025473193449446255

`and(A003817(A257639(n+1)), A175919(n))`
-/

namespace A344220.P4025473193449446255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 (A257639 (n + 1)).toNat) (A175919 n)

end

end A344220.P4025473193449446255

namespace A344220

/-- `and(A003817(A257639(n+1)), A175919(n))` -/
def P4025473193449446255.Spec : Prop :=
  ∀ n, P4025473193449446255.a n = A344220 n

end A344220

/-! ## A344220.P5086997211750077548

`A175919(n)%A217871(n)`
-/

namespace A344220.P5086997211750077548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175919 n) (A217871 n)

end

end A344220.P5086997211750077548

namespace A344220

/-- `A175919(n)%A217871(n)` -/
def P5086997211750077548.Spec : Prop :=
  ∀ n, P5086997211750077548.a n = A344220 n

end A344220

/-!
# A344221: a(n) = Sum_{k=1..n} tau(gcd(k,n)^3), where tau(n) is the number of divisors of n.

The programs for A344221, the canonical program `A344221.P10470935627830531370` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344221 has offset 1).

The definition of A344221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344221.P2876707944253699734

`∑{d}[n+1, #*A074816((n+1)/#)]`
-/

namespace A344221.P2876707944253699734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A074816 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P2876707944253699734

namespace A344221

/-- `∑{d}[n+1, #*A074816((n+1)/#)]` -/
def P2876707944253699734.Spec : Prop :=
  ∀ n, P2876707944253699734.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P9000092292311284011

`∑{d}[n+1, A000010(#)*A048785((n+1)/#)]`
-/

namespace A344221.P9000092292311284011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A048785 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P9000092292311284011

namespace A344221

/-- `∑{d}[n+1, A000010(#)*A048785((n+1)/#)]` -/
def P9000092292311284011.Spec : Prop :=
  ∀ n, P9000092292311284011.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P11334748435771769603

`∑{d}[n+1, A001615(#)*A055076((n+1)/#)]`
-/

namespace A344221.P11334748435771769603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A055076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P11334748435771769603

namespace A344221

/-- `∑{d}[n+1, A001615(#)*A055076((n+1)/#)]` -/
def P11334748435771769603.Spec : Prop :=
  ∀ n, P11334748435771769603.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P11761272526722415627

`∑{d}[n+1, A007431(#)*A061391((n+1)/#)]`
-/

namespace A344221.P11761272526722415627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A061391 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P11761272526722415627

namespace A344221

/-- `∑{d}[n+1, A007431(#)*A061391((n+1)/#)]` -/
def P11761272526722415627.Spec : Prop :=
  ∀ n, P11761272526722415627.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P6811481861923049959

`∑{d}[n+1, A000203(#)*A074823((n+1)/#)]`
-/

namespace A344221.P6811481861923049959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A074823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P6811481861923049959

namespace A344221

/-- `∑{d}[n+1, A000203(#)*A074823((n+1)/#)]` -/
def P6811481861923049959.Spec : Prop :=
  ∀ n, P6811481861923049959.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P15903331532244623771

`∑{d}[n+1, A060648(#)*A162511((n+1)/#)]`
-/

namespace A344221.P15903331532244623771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A162511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P15903331532244623771

namespace A344221

/-- `∑{d}[n+1, A060648(#)*A162511((n+1)/#)]` -/
def P15903331532244623771.Spec : Prop :=
  ∀ n, P15903331532244623771.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P18149837946041975584

`∑{d}[n+1, A034444(#)*A327668((n+1)/#)]`
-/

namespace A344221.P18149837946041975584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A327668 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P18149837946041975584

namespace A344221

/-- `∑{d}[n+1, A034444(#)*A327668((n+1)/#)]` -/
def P18149837946041975584.Spec : Prop :=
  ∀ n, P18149837946041975584.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P15698639102951914445

`∑{d}[n+1, A048691(#)*A333569((n+1)/#)]`
-/

namespace A344221.P15698639102951914445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A333569 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P15698639102951914445

namespace A344221

/-- `∑{d}[n+1, A048691(#)*A333569((n+1)/#)]` -/
def P15698639102951914445.Spec : Prop :=
  ∀ n, P15698639102951914445.a n = A344221 (n + 1)

end A344221

/-! ## A344221.P10470935627830531370

`∑{d}[n+1, A007432(#)*A397549((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344221

/-- `∑{d}[n+1, A007432(#)*A397549((n+1)/#)]` -/
def P10470935627830531370.Spec : Prop :=
  ∀ n, P10470935627830531370.a n = A344221 (n + 1)

theorem P10470935627830531370.correct : P10470935627830531370.Spec := by
  intro n
  simp only [A344221, Nat.add_sub_cancel]

end A344221

/-! ## A344221.P8761212953462224913

`∑{d}[n+1, A326306(#)*A340323((n+1)/#)]`
-/

namespace A344221.P8761212953462224913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326306 d * A340323 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344221.P8761212953462224913

namespace A344221

/-- `∑{d}[n+1, A326306(#)*A340323((n+1)/#)]` -/
def P8761212953462224913.Spec : Prop :=
  ∀ n, P8761212953462224913.a n = A344221 (n + 1)

end A344221

/-!
# A344222: a(n) = Sum_{k=1..n} tau(gcd(k,n)^4), where tau(n) is the number of divisors of n.

The programs for A344222, the canonical program `A344222.P16415953736657626465` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344222 has offset 1).

The definition of A344222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344222.P16415953736657626465

`∑{d}[n+1, A007432(#)*A062368((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A344222

/-- `∑{d}[n+1, A007432(#)*A062368((n+1)/#)]` -/
def P16415953736657626465.Spec : Prop :=
  ∀ n, P16415953736657626465.a n = A344222 (n + 1)

theorem P16415953736657626465.correct : P16415953736657626465.Spec := by
  intro n
  simp only [A344222, Nat.add_sub_cancel]

end A344222

/-! ## A344222.P5227343490294284076

`∑{d}[n+1, A000010(#)*A344327((n+1)/#)]`
-/

namespace A344222.P5227343490294284076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A344327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344222.P5227343490294284076

namespace A344222

/-- `∑{d}[n+1, A000010(#)*A344327((n+1)/#)]` -/
def P5227343490294284076.Spec : Prop :=
  ∀ n, P5227343490294284076.a n = A344222 (n + 1)

end A344222

/-! ## A344222.P16078753883255861635

`∑{d}[n+1, A000203(#)*A347149((n+1)/#)]`
-/

namespace A344222.P16078753883255861635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A347149 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344222.P16078753883255861635

namespace A344222

/-- `∑{d}[n+1, A000203(#)*A347149((n+1)/#)]` -/
def P16078753883255861635.Spec : Prop :=
  ∀ n, P16078753883255861635.a n = A344222 (n + 1)

end A344222

/-! ## A344222.P6090683373765974495

`∑{d}[(n+1)², A001616(#)]`
-/

namespace A344222.P6090683373765974495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001616 d

end

end A344222.P6090683373765974495

namespace A344222

/-- `∑{d}[(n+1)², A001616(#)]` -/
def P6090683373765974495.Spec : Prop :=
  ∀ n, P6090683373765974495.a n = A344222 (n + 1)

end A344222

/-! ## A344222.P2733306480031113883

`∑{d}[A000583(n+1), A053164(#)]`
-/

namespace A344222.P2733306480031113883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A053164 d

end

end A344222.P2733306480031113883

namespace A344222

/-- `∑{d}[A000583(n+1), A053164(#)]` -/
def P2733306480031113883.Spec : Prop :=
  ∀ n, P2733306480031113883.a n = A344222 (n + 1)

end A344222

/-!
# A344223: a(n) = Sum_{k=1..n} tau(gcd(k,n)^n), where tau(n) is the number of divisors of n.

The programs for A344223, the canonical program `A344223.P8815021309923092592` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344223 has offset 1).

The definition of A344223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A344226, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344223.P8815021309923092592

`(n+1)*A344226(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344223

/-- `(n+1)*A344226(n+1)` -/
def P8815021309923092592.Spec : Prop :=
  ∀ n, P8815021309923092592.a n = A344223 (n + 1)

theorem P8815021309923092592.correct : P8815021309923092592.Spec := by
  intro n
  simp only [A344223, Nat.add_sub_cancel]

end A344223

/-! ## A344223.P14367821288968346752

`(n+1)*∑{d}[n+1, (n+1)^A001221(#)/#]`
-/

namespace A344223.P14367821288968346752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) ^ (A001221 d : ℤ) / (d : ℚ))

end

end A344223.P14367821288968346752

namespace A344223

/-- `(n+1)*∑{d}[n+1, (n+1)^A001221(#)/#]` -/
def P14367821288968346752.Spec : Prop :=
  ∀ n, P14367821288968346752.a n = (A344223 (n + 1) : ℚ)

end A344223

/-! ## A344223.P14917616178805087317

`(n+1)*A000005(A067911(n+1))`
-/

namespace A344223.P14917616178805087317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A067911 (n + 1)).toNat

end

end A344223.P14917616178805087317

namespace A344223

/-- `(n+1)*A000005(A067911(n+1))` -/
def P14917616178805087317.Spec : Prop :=
  ∀ n, P14917616178805087317.a n = A344223 (n + 1)

end A344223

/-! ## A344223.P2524767067120227514

`(n+1)*A000005(∏{d}[n+1, A193679(#)])`
-/

namespace A344223.P2524767067120227514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (∏ d ∈ Nat.divisors (f1 n), A193679 d).toNat

end

end A344223.P2524767067120227514

namespace A344223

/-- `(n+1)*A000005(∏{d}[n+1, A193679(#)])` -/
def P2524767067120227514.Spec : Prop :=
  ∀ n, P2524767067120227514.a n = A344223 (n + 1)

end A344223

/-! ## A344223.P3696995512487811875

`(n+1)*A000005((n+1)*A051190(n+1))`
-/

namespace A344223.P3696995512487811875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 ((n + 1 : ℤ) * A051190 (n + 1)).toNat

end

end A344223.P3696995512487811875

namespace A344223

/-- `(n+1)*A000005((n+1)*A051190(n+1))` -/
def P3696995512487811875.Spec : Prop :=
  ∀ n, P3696995512487811875.a n = A344223 (n + 1)

end A344223

/-!
# A344224: a(n) = Sum_{k=1..n} tau(gcd(k,n)^gcd(k,n)), where tau(n) is the number of divisors of n.

The programs for A344224, the canonical program `A344224.P938351998722366507` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344224 has offset 1).

The definition of A344224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344224.P938351998722366507

`∑{d}[n+1, A000010(#)*A062319((n+1)/#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A344224

/-- `∑{d}[n+1, A000010(#)*A062319((n+1)/#)]` -/
def P938351998722366507.Spec : Prop :=
  ∀ n, P938351998722366507.a n = A344224 (n + 1)

theorem P938351998722366507.correct : P938351998722366507.Spec := by
  intro n
  simp only [A344224, Nat.add_sub_cancel]

end A344224

/-!
# A344226: a(n) = Sum_{d|n} n^omega(d) / d.

The programs for A344226, the canonical program `A344226.P1394848306979089891` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344226 has offset 1).

The definition of A344226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344226.P17192634337625697811

`A344223(n+1)/(n+1)`
-/

namespace A344226.P17192634337625697811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344223 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A344226.P17192634337625697811

namespace A344226

/-- `A344223(n+1)/(n+1)` -/
def P17192634337625697811.Spec : Prop :=
  ∀ n, P17192634337625697811.a n = (A344226 (n + 1) : ℚ)

end A344226

/-! ## A344226.P1394848306979089891

`∑{d}[n+1, (n+1)^A001221(#)/#]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344226

/-- `∑{d}[n+1, (n+1)^A001221(#)/#]` -/
def P1394848306979089891.Spec : Prop :=
  ∀ n, P1394848306979089891.a n = (A344226 (n + 1) : ℚ)

end A344226

/-! ## A344226.P12537283523919660925

`∏{e}[A067911(n+1), #+1]`
-/

namespace A344226.P12537283523919660925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067911 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A344226.P12537283523919660925

namespace A344226

/-- `∏{e}[A067911(n+1), #+1]` -/
def P12537283523919660925.Spec : Prop :=
  ∀ n, (P12537283523919660925.a n : ℤ) = A344226 (n + 1)

end A344226

/-! ## A344226.P4031095235966918072

`∏{e}[(n+1)*A051190(n+1), #+1]`
-/

namespace A344226.P4031095235966918072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A051190 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A344226.P4031095235966918072

namespace A344226

/-- `∏{e}[(n+1)*A051190(n+1), #+1]` -/
def P4031095235966918072.Spec : Prop :=
  ∀ n, (P4031095235966918072.a n : ℤ) = A344226 (n + 1)

end A344226

/-! ## A344226.P8800576272696154563

`A000005(A067911(n+1))`
-/

namespace A344226.P8800576272696154563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067911 (n + 1)).toNat

end

end A344226.P8800576272696154563

namespace A344226

/-- `A000005(A067911(n+1))` -/
def P8800576272696154563.Spec : Prop :=
  ∀ n, P8800576272696154563.a n = A344226 (n + 1)

end A344226

/-!
# A344227: Sprague-Grundy value for the Node-Kayles game played on the n-queens graph.

The programs for A344227, there is no canonical definition to state claims against.
-/

/-! ## A344227.P15248178787214025909

`a(n-2)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=1, a(7)=2, a(8)=3, a(9)=1, a(10)=0`
-/

namespace A344227.P15248178787214025909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 1, 3, 1, 2, 3, 1, 0] fun n a =>
  a (n - 2)

end

end A344227.P15248178787214025909

/-! ## A344227.P14865733352070795664

`and(3, A093516(Δ[n²])-1)`
-/

namespace A344227.P14865733352070795664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A093516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1)

end

end A344227.P14865733352070795664

/-! ## A344227.P11897624490893618015

`(A093516(2*n+1)-1)%4`
-/

namespace A344227.P11897624490893618015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093516 (2 * n + 1) - 1) 4

end

end A344227.P11897624490893618015

/-! ## A344227.P17989893601221981988

`A276771(A068522(n+1))`
-/

namespace A344227.P17989893601221981988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276771 (A068522 (n + 1)).toNat

end

end A344227.P17989893601221981988

/-! ## A344227.P10615795462433951461

`A053602(A056017(n))%4`
-/

namespace A344227.P10615795462433951461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053602 (A056017 n).toNat) 4

end

end A344227.P10615795462433951461

/-!
# A344228: a(n) = binomial(2*n,n)*(2*n+1)/2+n*binomial(2*n-2,n)+(n-1)*binomial(2*n-2,n+1).

The programs for A344228, the canonical program `A344228.P8348614878831773513` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344228 has offset 1).

The definition of A344228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344228.P8348614878831773513

`A001700(n)+Δ[2*A110609(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A344228

/-- `A001700(n)+Δ[2*A110609(n)]` -/
def P8348614878831773513.Spec : Prop :=
  ∀ n, P8348614878831773513.a n = A344228 (n + 1)

theorem P8348614878831773513.correct : P8348614878831773513.Spec := by
  intro n
  simp only [A344228, Nat.add_sub_cancel]

end A344228

/-! ## A344228.P2382404206773159734

`A344400(n)/A002378(n+1)`
-/

namespace A344228.P2382404206773159734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344400 n : ℚ) / (A002378 (n + 1) : ℚ)

end

end A344228.P2382404206773159734

namespace A344228

/-- `A344400(n)/A002378(n+1)` -/
def P2382404206773159734.Spec : Prop :=
  ∀ n, P2382404206773159734.a n = (A344228 (n + 1) : ℚ)

end A344228

/-! ## A344228.P3687155428295091601

`A344400(n)/A103505(n+2)`
-/

namespace A344228.P3687155428295091601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344400 n : ℚ) / (A103505 (n + 2) : ℚ)

end

end A344228.P3687155428295091601

namespace A344228

/-- `A344400(n)/A103505(n+2)` -/
def P3687155428295091601.Spec : Prop :=
  ∀ n, P3687155428295091601.a n = (A344228 (n + 1) : ℚ)

end A344228

/-! ## A344228.P15568613468469225549

`A344400(n)/A005843(∑[n+1])`
-/

namespace A344228.P15568613468469225549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344400 n : ℚ) / (A005843 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A344228.P15568613468469225549

namespace A344228

/-- `A344400(n)/A005843(∑[n+1])` -/
def P15568613468469225549.Spec : Prop :=
  ∀ n, P15568613468469225549.a n = (A344228 (n + 1) : ℚ)

end A344228

/-! ## A344228.P13872146802624967200

`A344400(n)/A105278(∑[n+2])`
-/

namespace A344228.P13872146802624967200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344400 n : ℚ) / (A105278 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A344228.P13872146802624967200

namespace A344228

/-- `A344400(n)/A105278(∑[n+2])` -/
def P13872146802624967200.Spec : Prop :=
  ∀ n, P13872146802624967200.a n = (A344228 (n + 1) : ℚ)

end A344228

/-!
# A344229: a(n) = n*a(n-1) + n^signum(n mod 4), a(0) = 1.

The programs for A344229, there is no canonical definition to state claims against.
-/

/-! ## A344229.P10940319560421180585

`C(n, ceil(and(3, n)/3))+n*a(n-1)` with `a(0)=1`
-/

namespace A344229.P10940319560421180585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose n ⌈(Nat.land 3 n : ℚ) / 3⌉.toNat + n * a (n - 1)

end

end A344229.P10940319560421180585

/-! ## A344229.P17000319667641703045

`gcd(n, a(n-1)%gcd(2, n))+n*a(n-1)` with `a(0)=1`
-/

namespace A344229.P17000319667641703045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n (a (n - 1) % Nat.gcd 2 n) + n * a (n - 1)

end

end A344229.P17000319667641703045

/-! ## A344229.P17316789208759871945

`A000027(A090805(n)-A165090(n))`
-/

namespace A344229.P17316789208759871945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A090805 n - A165090 n).toNat

end

end A344229.P17316789208759871945

/-!
# A344231: Positive integers k properly represented by the positive definite binary quadratic form X^2 + 5*Y^2 = k, in increasing order.

The programs for A344231, there is no canonical definition to state claims against.
-/

/-! ## A344231.P18399872333559780477

`∩[A020669(n+1), A343238(n+1)]`
-/

namespace A344231.P18399872333559780477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020669 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344231.P18399872333559780477

/-! ## A344231.P12061596352884160364

`∩[A047438(n+1), A343238(n+1)]`
-/

namespace A344231.P12061596352884160364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344231.P12061596352884160364

/-! ## A344231.P6765043246099120426

`∩[A338692(n+1), A343238(n+1)]`
-/

namespace A344231.P6765043246099120426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344231.P6765043246099120426

/-! ## A344231.P7973163800715149815

`∩[A343238(n+1), A047439(n+2)]`
-/

namespace A344231.P7973163800715149815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047439 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344231.P7973163800715149815

/-! ## A344231.P8909136162070085454

`∩[A047431(A065475(n+1)), A343238(n+1)]`
-/

namespace A344231.P8909136162070085454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047431 (A065475 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344231.P8909136162070085454

/-!
# A344232: All positive integers k properly represented by the positive definite binary quadratic form 2*X^2 + 2*X*Y + 3*Y^2 = k, in increasing order.

The programs for A344232, there is no canonical definition to state claims against.
-/

/-! ## A344232.P11102152686546180268

`∩[or(2, round(8*n/3)), A343238(n+2)]`
-/

namespace A344232.P11102152686546180268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 3)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344232.P11102152686546180268

/-! ## A344232.P14790624309112119194

`filter[A343238(n+1), A292077(#)]`
-/

namespace A344232.P14790624309112119194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A344232.P14790624309112119194

/-! ## A344232.P8990336294327218559

`∩[A029718(n+1), A343238(n+1)]`
-/

namespace A344232.P8990336294327218559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344232.P8990336294327218559

/-! ## A344232.P14250606909975970539

`∩[A047531(n+1), A343238(n+1)]`
-/

namespace A344232.P14250606909975970539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344232.P14250606909975970539

/-! ## A344232.P17585849715721411236

`∩[A047532(n+1), A343238(n+1)]`
-/

namespace A344232.P17585849715721411236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344232.P17585849715721411236

/-!
# A344233: Irregular triangle read by rows: row n gives the pairs of proper solutions (X, Y), with gcd(X, Y) = 1 and X >= 0, of the Diophantine equation X^2 + 5*Y^2 = A344231(n), for n >= 1.

The programs for A344233, there is no canonical definition to state claims against.
-/

/-! ## A344233.P2854321036599608058

`A316441(A000079(n)*A296306(n+1))`
-/

namespace A344233.P2854321036599608058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000079 n * A296306 (n + 1)).toNat

end

end A344233.P2854321036599608058

/-! ## A344233.P7511522040317543863

`A316441(lcm(A000079(n), A296306(n+1)))`
-/

namespace A344233.P7511522040317543863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (Int.lcm (A000079 n) (A296306 (n + 1)))

end

end A344233.P7511522040317543863

/-! ## A344233.P11916106323846907450

`A083913(A005276(n+1))-A083912(n+1)`
-/

namespace A344233.P11916106323846907450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083913 (A005276 (n + 1)).toNat - A083912 (n + 1)

end

end A344233.P11916106323846907450

/-!
# A344236: Number of n-step walks from a universal vertex to the other on the diamond graph.

The programs for A344236, the canonical program `A344236.P15857822513074868389` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344236 has offset 0).

The definition of A344236 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344236.P15857822513074868389

`5*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344236

/-- `5*a(n-2)+4*a(n-3)` -/
def P15857822513074868389.Spec : Prop :=
  ∀ n, (P15857822513074868389.a n : ℤ) = A344236 n

theorem P15857822513074868389.correct : P15857822513074868389.Spec := by
  intro n
  simp only [A344236]

end A344236

/-! ## A344236.P3816956993691112937

`A344261(n)-(-1)^n`
-/

namespace A344236.P3816956993691112937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344261 n - (-1) ^ n

end

end A344236.P3816956993691112937

namespace A344236

/-- `A344261(n)-(-1)^n` -/
def P3816956993691112937.Spec : Prop :=
  ∀ n, P3816956993691112937.a n = A344236 n

end A344236

/-! ## A344236.P15037011405375317231

`(A006131(n)-(-1)^n)/2`
-/

namespace A344236.P15037011405375317231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006131 n - (-1) ^ n : ℚ) / 2

end

end A344236.P15037011405375317231

namespace A344236

/-- `(A006131(n)-(-1)^n)/2` -/
def P15037011405375317231.Spec : Prop :=
  ∀ n, P15037011405375317231.a n = (A344236 n : ℚ)

end A344236

/-! ## A344236.P15250703163796884036

`A006131(n)-A344261(n)`
-/

namespace A344236.P15250703163796884036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n - A344261 n

end

end A344236.P15250703163796884036

namespace A344236

/-- `A006131(n)-A344261(n)` -/
def P15250703163796884036.Spec : Prop :=
  ∀ n, P15250703163796884036.a n = A344236 n

end A344236

/-! ## A344236.P15930708263885821215

`ogf((x+2x^2)/(1-5x^2-4x^3))`
-/

namespace A344236.P15930708263885821215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2] [1, 0, -5, -4] n

end

end A344236.P15930708263885821215

namespace A344236

/-- `ogf((x+2x^2)/(1-5x^2-4x^3))` -/
def P15930708263885821215.Spec : Prop :=
  ∀ n, P15930708263885821215.a n = A344236 n

end A344236

/-! ## A344236.P1400168635256181093

`xor(3, a(n-1)+4*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A344236.P1400168635256181093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 3 (a (n - 1) + 4 * a (n - 2))

end

end A344236.P1400168635256181093

namespace A344236

/-- `xor(3, a(n-1)+4*a(n-2))` -/
def P1400168635256181093.Spec : Prop :=
  ∀ n, (P1400168635256181093.a n : ℤ) = A344236 n

end A344236

/-! ## A344236.P15876377445059917818

`or(2, a(n-1))-(1-4*a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A344236.P15876377445059917818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.lor 2 (a (n - 1)) - (1 - 4 * a (n - 2))

end

end A344236.P15876377445059917818

namespace A344236

/-- `or(2, a(n-1))-(1-4*a(n-2))` -/
def P15876377445059917818.Spec : Prop :=
  ∀ n, P15876377445059917818.a n = A344236 n

end A344236

/-! ## A344236.P7359010875825140412

`2*2*a(n-2)-xor(1, -a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A344236.P7359010875825140412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * (2 * a (n - 2)) - Int.xor 1 (-a (n - 1))

end

end A344236.P7359010875825140412

namespace A344236

/-- `2*2*a(n-2)-xor(1, -a(n-1))` -/
def P7359010875825140412.Spec : Prop :=
  ∀ n, P7359010875825140412.a n = A344236 n

end A344236

/-! ## A344236.P6626662560505653584

`xor(3, a(n-1)+a(n-2)/(1/2)²)` with `a(0)=0, a(1)=1`
-/

namespace A344236.P6626662560505653584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor 3 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 2) : ℚ) / ((1 : ℚ) / 2) ^ 2))

end

end A344236.P6626662560505653584

namespace A344236

/-- `xor(3, a(n-1)+a(n-2)/(1/2)²)` -/
def P6626662560505653584.Spec : Prop :=
  ∀ n, P6626662560505653584.a n = A344236 n

end A344236

/-! ## A344236.P11268942436303752073

`xor(1, A344261(n))`
-/

namespace A344236.P11268942436303752073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A344261 n)

end

end A344236.P11268942436303752073

namespace A344236

/-- `xor(1, A344261(n))` -/
def P11268942436303752073.Spec : Prop :=
  ∀ n, P11268942436303752073.a n = A344236 n

end A344236

/-! ## A344236.P16402383001099255205

`A193649(n)-A059841(n)`
-/

namespace A344236.P16402383001099255205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193649 n - A059841 n

end

end A344236.P16402383001099255205

namespace A344236

/-- `A193649(n)-A059841(n)` -/
def P16402383001099255205.Spec : Prop :=
  ∀ n, P16402383001099255205.a n = A344236 n

end A344236

/-! ## A344236.P11986900071495447696

`A000035(n)+A193649(n)-1`
-/

namespace A344236.P11986900071495447696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A193649 n - 1)

end

end A344236.P11986900071495447696

namespace A344236

/-- `A000035(n)+A193649(n)-1` -/
def P11986900071495447696.Spec : Prop :=
  ∀ n, P11986900071495447696.a n = A344236 n

end A344236

/-! ## A344236.P1653359147936484111

`abs(A344261(n)+A033999(n+1))`
-/

namespace A344236.P1653359147936484111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344261 n + A033999 (n + 1)|

end

end A344236.P1653359147936484111

namespace A344236

/-- `abs(A344261(n)+A033999(n+1))` -/
def P1653359147936484111.Spec : Prop :=
  ∀ n, P1653359147936484111.a n = A344236 n

end A344236

/-! ## A344236.P13331759126305841398

`∑[A052923(n)]-A344261(n)`
-/

namespace A344236.P13331759126305841398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A344261 n

end

end A344236.P13331759126305841398

namespace A344236

/-- `∑[A052923(n)]-A344261(n)` -/
def P13331759126305841398.Spec : Prop :=
  ∀ n, P13331759126305841398.a n = A344236 n

end A344236

/-! ## A344236.P17236174734237597449

`ceil(A006131(n)/2)-A020639(val(12*8^n, 2)+1)+2`
-/

namespace A344236.P17236174734237597449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006131 n : ℚ) / 2⌉ - A020639 (SequenceMachineLib.valuation (12 * 8 ^ n) 2 + 1) + 2

end

end A344236.P17236174734237597449

namespace A344236

/-- `ceil(A006131(n)/2)-A020639(val(12*8^n, 2)+1)+2` -/
def P17236174734237597449.Spec : Prop :=
  ∀ n, P17236174734237597449.a n = A344236 n

end A344236

/-!
# A344237: Numbers that are the sum of five fourth powers in exactly two ways.

The programs for A344237, there is no canonical definition to state claims against.
-/

/-! ## A344237.P13042197952058847906

`A344238(A247064(n+1))%A186881(A025747(n))`
-/

namespace A344237.P13042197952058847906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344238 (A247064 (n + 1)).toNat) (A186881 (A025747 n).toNat)

end

end A344237.P13042197952058847906

/-! ## A344237.P17001187092587624840

`A052126(A142327(n+1))*A344238(A247064(n+1))`
-/

namespace A344237.P17001187092587624840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A142327 (n + 1)).toNat * A344238 (A247064 (n + 1)).toNat

end

end A344237.P17001187092587624840

/-! ## A344237.P14127961612160428976

`A052126(A142328(n+1))*A344238(A247064(n+1))`
-/

namespace A344237.P14127961612160428976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A142328 (n + 1)).toNat * A344238 (A247064 (n + 1)).toNat

end

end A344237.P14127961612160428976

/-! ## A344237.P2244138706550773054

`A344238(A247064(n+1))+A216279(A060649(2*n+1))`
-/

namespace A344237.P2244138706550773054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344238 (A247064 (n + 1)).toNat + A216279 (A060649 (2 * n + 1)).toNat

end

end A344237.P2244138706550773054

/-! ## A344237.P1942069587083970402

`A342241(A342253(2*n+1))*A344238(A247064(n+1))`
-/

namespace A344237.P1942069587083970402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A342253 (2 * n + 1)).toNat * A344238 (A247064 (n + 1)).toNat

end

end A344237.P1942069587083970402

/-!
# A344238: Numbers that are the sum of five fourth powers in two or more ways.

The programs for A344238, there is no canonical definition to state claims against.
-/

/-! ## A344238.P874998651931960132

`∪[A344237(n+1), A344243(n+1)]`
-/

namespace A344238.P874998651931960132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344238.P874998651931960132

/-!
# A344239: Numbers that are the sum of three fourth powers in three or more ways.

The programs for A344239, there is no canonical definition to state claims against.
-/

/-! ## A344239.P5511578318760359846

`A344240(∏{p}[n+1, #]^gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A344239.P5511578318760359846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344240 ((∏ p ∈ Nat.primeFactors (f1 n), p) ^ Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A344239.P5511578318760359846

/-!
# A344240: Numbers that are the sum of three fourth powers in exactly three ways.

The programs for A344240, there is no canonical definition to state claims against.
-/

/-! ## A344240.P11480378663340726092

`A344239(record[A099384(n*gcd(2, n))])`
-/

namespace A344240.P11480378663340726092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 (n * Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A344240.P11480378663340726092

/-! ## A344240.P2963719531088705216

`A344239(A022293(n)%A091414(n+2))`
-/

namespace A344240.P2963719531088705216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344239 (Int.tmod (A022293 n) (A091414 (n + 2))).toNat

end

end A344240.P2963719531088705216

/-! ## A344240.P13532814470026235825

`A344239(A022293(n)^A348496(2*n+1))`
-/

namespace A344240.P13532814470026235825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344239 (SequenceMachineLib.roundAway ((A022293 n : ℚ) ^ (A348496 (2 * n + 1) : ℤ))).toNat

end

end A344240.P13532814470026235825

/-! ## A344240.P9315463695374829991

`A344239(∑[A179930(n+1)!])`
-/

namespace A344240.P9315463695374829991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A179930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344240.P9315463695374829991

/-!
# A344241: Numbers that are the sum of four fourth powers in three or more ways.

The programs for A344241, there is no canonical definition to state claims against.
-/

/-! ## A344241.P11906809432446989458

`∪[A344242(n+1), A344352(n+1)]`
-/

namespace A344241.P11906809432446989458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344241.P11906809432446989458

/-! ## A344241.P16666547347105702927

`A344242(n+1)%A062693(n)²`
-/

namespace A344241.P16666547347105702927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344242 (n + 1)) (A062693 n ^ 2)

end

end A344241.P16666547347105702927

/-! ## A344241.P3146933589298699573

`A344242(n+1)+A000007(A182896(n))`
-/

namespace A344241.P3146933589298699573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344242 (n + 1) + A000007 (A182896 n).toNat

end

end A344241.P3146933589298699573

/-! ## A344241.P17378052545283835957

`A000034(A108099(n))*A344242(n+1)`
-/

namespace A344241.P17378052545283835957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A108099 n).toNat * A344242 (n + 1)

end

end A344241.P17378052545283835957

/-! ## A344241.P8229346140600923158

`A344242(n+1)*A371452(A059268(n))`
-/

namespace A344241.P8229346140600923158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344242 (n + 1) * A371452 (A059268 n).toNat

end

end A344241.P8229346140600923158

/-!
# A344243: Numbers that are the sum of five fourth powers in three or more ways.

The programs for A344243, there is no canonical definition to state claims against.
-/

/-! ## A344243.P12788595866133110652

`∪[A344244(n+1), A344354(n+1)]`
-/

namespace A344243.P12788595866133110652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344243.P12788595866133110652

/-! ## A344243.P17313390024696232692

`A344244(n+1)%A034820(n)`
-/

namespace A344243.P17313390024696232692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344244 (n + 1)) (A034820 n)

end

end A344243.P17313390024696232692

/-! ## A344243.P10326841051214287630

`record[A344244(A025126((n+1)²))]`
-/

namespace A344243.P10326841051214287630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344244 (A025126 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344243.P10326841051214287630

/-! ## A344243.P2450315377567705435

`A344244(n+1)^A185255(n)!`
-/

namespace A344243.P2450315377567705435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344244 (n + 1) ^ Nat.factorial (A185255 n).toNat

end

end A344243.P2450315377567705435

/-! ## A344243.P1160589561074309740

`A344244(n+1)+A157228(A176591(n))`
-/

namespace A344243.P1160589561074309740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344244 (n + 1) + A157228 (A176591 n).toNat

end

end A344243.P1160589561074309740

/-!
# A344245: Number of partitions of n into 5 semiprime parts.

The programs for A344245, there is no canonical definition to state claims against.
-/

/-! ## A344245.P13857197631560448409

`A327183(A000579(n))+A035386(n)`
-/

namespace A344245.P13857197631560448409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327183 (A000579 n).toNat + A035386 n

end

end A344245.P13857197631560448409

/-! ## A344245.P9138167406129288425

`A001222(C(23, A344246(n)))`
-/

namespace A344245.P9138167406129288425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 23 (A344246 (n + 24)).toNat)

end

end A344245.P9138167406129288425

/-! ## A344245.P16202092046904077298

`A001221(C(23, A344254(n)))`
-/

namespace A344245.P16202092046904077298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose 23 (A344254 (n + 28)).toNat)

end

end A344245.P16202092046904077298

/-! ## A344245.P13906814452919785270

`A001222(C(23, A344254(n)))`
-/

namespace A344245.P13906814452919785270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 23 (A344254 (n + 28)).toNat)

end

end A344245.P13906814452919785270

/-! ## A344245.P12834548459607868483

`A001222(C(23, A344256(n)))`
-/

namespace A344245.P12834548459607868483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 23 (A344256 (n + 36)).toNat)

end

end A344245.P12834548459607868483

/-!
# A344246: Number of partitions of n into 6 semiprime parts.

The programs for A344246, there is no canonical definition to state claims against.
-/

/-! ## A344246.P1364357911681554337

`A344254(n)-A260445(A269505(n+1))`
-/

namespace A344246.P1364357911681554337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344254 (n + 28) - A260445 (A269505 (n + 1)).toNat

end

end A344246.P1364357911681554337

/-! ## A344246.P8730803392933759820

`A344257(n)-A286747(A267911(n+1))`
-/

namespace A344246.P8730803392933759820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A286747 (A267911 (n + 1)).toNat

end

end A344246.P8730803392933759820

/-! ## A344246.P13530847324154999737

`A344256(A001222(2^n))-A127686(n+1)`
-/

namespace A344246.P13530847324154999737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344256 ((A001222 (2 ^ n)).toNat + 36) - A127686 (n + 1)

end

end A344246.P13530847324154999737

/-! ## A344246.P7565731875306652995

`A001222(or(7^A344254(n), A161788(n+1)))`
-/

namespace A344246.P7565731875306652995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A344254 (n + 28) : ℤ))) (A161788 (n + 1))).toNat

end

end A344246.P7565731875306652995

/-! ## A344246.P13186602075950478539

`A001222(or(7^A344254(n), A185911(n+1)))`
-/

namespace A344246.P13186602075950478539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A344254 (n + 28) : ℤ))) (A185911 (n + 1))).toNat

end

end A344246.P13186602075950478539

/-!
# A344247: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(3^(k-1)).

The programs for A344247, there is no canonical definition to state claims against.
-/

/-! ## A344247.P10902318788194787548

`A319652(A261044(3*(n+1)))+A000244(n)`
-/

namespace A344247.P10902318788194787548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A261044 (3 * (n + 1))).toNat + A000244 n

end

end A344247.P10902318788194787548

/-! ## A344247.P13935208034686672895

`A000244(n)+A238935(3*n+4)%A165900(2*(n+1))`
-/

namespace A344247.P13935208034686672895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + Int.tmod (A238935 (3 * n + 4)) (A165900 (2 * (n + 1)))

end

end A344247.P13935208034686672895

/-! ## A344247.P7149263198167623157

`A258651(3*n)+A335681(A335632(n))+A000244(n)`
-/

namespace A344247.P7149263198167623157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258651 (3 * n) + (A335681 (A335632 n).toNat + A000244 n)

end

end A344247.P7149263198167623157

/-!
# A344248: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(4^(k-1)).

The programs for A344248, there is no canonical definition to state claims against.
-/

/-! ## A344248.P13973493472489689063

`A184617(A344267(n+1))`
-/

namespace A344248.P13973493472489689063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (A344267 (n + 1)).toNat

end

end A344248.P13973493472489689063

/-! ## A344248.P11043621771510155354

`A344267(n+1)+A232195(A232192(n))`
-/

namespace A344248.P11043621771510155354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344267 (n + 1) + A232195 (A232192 n).toNat

end

end A344248.P11043621771510155354

/-!
# A344249: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(5^(k-1)).

The programs for A344249, there is no canonical definition to state claims against.
-/

/-! ## A344249.P16661224971269020297

`A344268(n+1)+A079294(A345267(n))`
-/

namespace A344249.P16661224971269020297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344268 (n + 1) + A079294 (A345267 n).toNat

end

end A344249.P16661224971269020297

/-! ## A344249.P12252653577023866654

`A344268(n+1)+A259480(A121880(n+1))`
-/

namespace A344249.P12252653577023866654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344268 (n + 1) + A259480 (A121880 (n + 1)).toNat

end

end A344249.P12252653577023866654

/-! ## A344249.P7986947258654166721

`A364228(A195204(n+1))+A344268(n+1)`
-/

namespace A344249.P7986947258654166721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364228 (A195204 (n + 1)).toNat + A344268 (n + 1)

end

end A344249.P7986947258654166721

/-!
# A344250: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(6^(k-1)).

The programs for A344250, there is no canonical definition to state claims against.
-/

/-! ## A344250.P15516632495981901092

`A344269(n+1)+A034151(A072790(n))`
-/

namespace A344250.P15516632495981901092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344269 (n + 1) + A034151 (A072790 n).toNat

end

end A344250.P15516632495981901092

/-! ## A344250.P5791081491480863514

`A344269(n+1)+A034151(A088716(n))`
-/

namespace A344250.P5791081491480863514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344269 (n + 1) + A034151 (A088716 n).toNat

end

end A344250.P5791081491480863514

/-! ## A344250.P13963946892260578533

`A344269(n+1)+A185914(A265141(3*(n+1)))`
-/

namespace A344250.P13963946892260578533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344269 (n + 1) + A185914 (A265141 (3 * (n + 1))).toNat

end

end A344250.P13963946892260578533

/-!
# A344251: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(7^(k-1)).

The programs for A344251, there is no canonical definition to state claims against.
-/

/-! ## A344251.P2606693258004792388

`A344270(n+1)+A171608(A129853(2*n+3))`
-/

namespace A344251.P2606693258004792388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344270 (n + 1) + A171608 (A129853 (2 * n + 3)).toNat

end

end A344251.P2606693258004792388

/-! ## A344251.P15125609734616849757

`A344270(n+1)+A126671(A253289(n))`
-/

namespace A344251.P15125609734616849757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344270 (n + 1) + A126671 (A253289 n).toNat

end

end A344251.P15125609734616849757

/-!
# A344252: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(8^(k-1)).

The programs for A344252, there is no canonical definition to state claims against.
-/

/-! ## A344252.P6075881374368574159

`A344271(n+1)+A322335(A059333(n+1))`
-/

namespace A344252.P6075881374368574159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344271 (n + 1) + A322335 (A059333 (n + 1)).toNat

end

end A344252.P6075881374368574159

/-! ## A344252.P12845517160083748868

`A357177(A357156(n+3))+A344271(n+1)`
-/

namespace A344252.P12845517160083748868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357177 (A357156 (n + 3)).toNat + A344271 (n + 1)

end

end A344252.P12845517160083748868

/-!
# A344253: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(9^(k-1)).

The programs for A344253, there is no canonical definition to state claims against.
-/

/-! ## A344253.P14267280871239242248

`A344298(n+1)+A213186(A344267(n+1))`
-/

namespace A344253.P14267280871239242248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344298 (n + 1) + A213186 (A344267 (n + 1)).toNat

end

end A344253.P14267280871239242248

/-! ## A344253.P2939530087964856819

`A344298(n+1)+A184964(A038231(n))`
-/

namespace A344253.P2939530087964856819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344298 (n + 1) + A184964 (A038231 n).toNat

end

end A344253.P2939530087964856819

/-!
# A344254: Number of partitions of n into 7 semiprime parts.

The programs for A344254, there is no canonical definition to state claims against.
-/

/-! ## A344254.P3764518181702610296

`A001222(2^A344256(n))-A185284(∑[n]%2+2*n)`
-/

namespace A344254.P3764518181702610296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A344256 (n + 36) : ℤ))).toNat - A185284 ((∑ j ∈ Finset.range (n + 1), f1 j) % 2 + 2 * n)

end

end A344254.P3764518181702610296

/-! ## A344254.P733301148615375479

`A344256(n)-A305892(A049871(n))`
-/

namespace A344254.P733301148615375479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344256 (n + 36) - A305892 (A049871 n).toNat

end

end A344254.P733301148615375479

/-! ## A344254.P10789091728253134440

`A344257(n)-A305892(A049871(n))`
-/

namespace A344254.P10789091728253134440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A305892 (A049871 n).toNat

end

end A344254.P10789091728253134440

/-! ## A344254.P4331199263207488332

`A344257(n)-A316867(A308997(n)²)`
-/

namespace A344254.P4331199263207488332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A316867 (A308997 n ^ 2).toNat

end

end A344254.P4331199263207488332

/-! ## A344254.P3770780380028476474

`A344246(n)+A260445(A269505(n+1))`
-/

namespace A344254.P3770780380028476474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344246 (n + 24) + A260445 (A269505 (n + 1)).toNat

end

end A344254.P3770780380028476474

/-!
# A344255: Number of partitions of n into 8 semiprime parts.

The programs for A344255, there is no canonical definition to state claims against.
-/

/-! ## A344255.P6400268754251133888

`A028904(A344257(n)^A056191(n+1))`
-/

namespace A344255.P6400268754251133888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (SequenceMachineLib.roundAway ((A344257 (n + 40) : ℚ) ^ (A056191 (n + 1) : ℤ))).toNat

end

end A344255.P6400268754251133888

/-! ## A344255.P388590573126938757

`A344257(n)-A341995(A341407(n))`
-/

namespace A344255.P388590573126938757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A341995 (A341407 n).toNat

end

end A344255.P388590573126938757

/-! ## A344255.P3571091962736409204

`A344256(n)-A185284(2*n+1)`
-/

namespace A344255.P3571091962736409204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344256 (n + 36) - A185284 (2 * n + 1)

end

end A344255.P3571091962736409204

/-! ## A344255.P16806282172709477699

`A344257(n)-A185284(2*n+1)`
-/

namespace A344255.P16806282172709477699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A185284 (2 * n + 1)

end

end A344255.P16806282172709477699

/-! ## A344255.P2634370673462334744

`A344257(n)-A070109(A064173(2*n+3))`
-/

namespace A344255.P2634370673462334744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A070109 (A064173 (2 * n + 3)).toNat

end

end A344255.P2634370673462334744

/-!
# A344256: Number of partitions of n into 9 semiprime parts.

The programs for A344256, there is no canonical definition to state claims against.
-/

/-! ## A344256.P4019038956762130055

`A344257(n)-A100910(A000043(n+1))`
-/

namespace A344256.P4019038956762130055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A100910 (A000043 (n + 1)).toNat

end

end A344256.P4019038956762130055

/-! ## A344256.P18118749389550119446

`and(A321800(A022896(n+1)), A344257(n))`
-/

namespace A344256.P18118749389550119446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A321800 (A022896 (n + 1)).toNat) (A344257 (n + 40))

end

end A344256.P18118749389550119446

/-! ## A344256.P16645072205671012083

`A344257(n)-A189081(A058343(n)!)`
-/

namespace A344256.P16645072205671012083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A189081 (Nat.factorial (A058343 n).toNat)

end

end A344256.P16645072205671012083

/-! ## A344256.P16662064145106660108

`A344257(n)-A267006(A058343(n)!)`
-/

namespace A344256.P16662064145106660108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A267006 (Nat.factorial (A058343 n).toNat)

end

end A344256.P16662064145106660108

/-! ## A344256.P13455752060982958097

`A344257(n)-A344245(A058343(n)!)`
-/

namespace A344256.P13455752060982958097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344257 (n + 40) - A344245 (Nat.factorial (A058343 n).toNat + 20)

end

end A344256.P13455752060982958097

/-!
# A344257: Number of partitions of n into 10 semiprime parts.

The programs for A344257, there is no canonical definition to state claims against.
-/

/-! ## A344257.P2557128665125091666

`A344256(n)+A184964(A302257(n+1))`
-/

namespace A344257.P2557128665125091666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344256 (n + 36) + A184964 (A302257 (n + 1)).toNat

end

end A344257.P2557128665125091666

/-! ## A344257.P17906611322789725925

`or(A000035(A038233(n)), A344256(n))`
-/

namespace A344257.P17906611322789725925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A038233 n).toNat) (A344256 (n + 36))

end

end A344257.P17906611322789725925

/-! ## A344257.P17294047904672304792

`or(A011738(A212804(n)), A344256(n))`
-/

namespace A344257.P17294047904672304792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 (A212804 n).toNat) (A344256 (n + 36))

end

end A344257.P17294047904672304792

/-! ## A344257.P17068289632049639148

`A344256(n)+A100910(A000043(n+1))`
-/

namespace A344257.P17068289632049639148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344256 (n + 36) + A100910 (A000043 (n + 1)).toNat

end

end A344257.P17068289632049639148

/-! ## A344257.P17615431974674332349

`A001222(3^A344256(n))`
-/

namespace A344257.P17615431974674332349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A344256 (n + 36) : ℤ))).toNat

end

end A344257.P17615431974674332349

/-!
# A344258: Integers m for which F (mod m) does not have rotational symmetry although F (mod k) does have rotational symmetry for all factors k of m.

The programs for A344258, there is no canonical definition to state claims against.
-/

/-! ## A344258.P11693743713171782251

`A254444(A287147(3*n+1))+A188373(n+1)`
-/

namespace A344258.P11693743713171782251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254444 (A287147 (3 * n + 1)).toNat + A188373 (n + 1)

end

end A344258.P11693743713171782251

/-!
# A344259: For any number n with binary expansion (b(1), ..., b(k)), the binary expansion of a(n) is (b(1), ..., b(ceiling(k/2))).

The programs for A344259, the canonical program `A344259.P12373364473266801387` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344259 has offset 0).

The definition of A344259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344259.P12373364473266801387

`floor(n/2^floor(ceil(log2(n+1))/2))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344259

/-- `floor(n/2^floor(ceil(log2(n+1))/2))` -/
def P12373364473266801387.Spec : Prop :=
  ∀ n, P12373364473266801387.a n = A344259 n

theorem P12373364473266801387.correct : P12373364473266801387.Spec := by
  intro n
  simp only [A344259]

end A344259

/-! ## A344259.P6735033816907493654

`A371442(A330090(n))`
-/

namespace A344259.P6735033816907493654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 (A330090 n).toNat

end

end A344259.P6735033816907493654

namespace A344259

/-- `A371442(A330090(n))` -/
def P6735033816907493654.Spec : Prop :=
  ∀ n, P6735033816907493654.a n = A344259 n

end A344259

/-! ## A344259.P6415059020241751972

`A059905(floor(A001196(n)/A062383(n)))`
-/

namespace A344259.P6415059020241751972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 ⌊(A001196 n : ℚ) / (A062383 n : ℚ)⌋.toNat

end

end A344259.P6415059020241751972

namespace A344259

/-- `A059905(floor(A001196(n)/A062383(n)))` -/
def P6415059020241751972.Spec : Prop :=
  ∀ n, P6415059020241751972.a n = A344259 n

end A344259

/-! ## A344259.P5427426155737709490

`A025480(A080261(n)+n)`
-/

namespace A344259.P5427426155737709490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A080261 n + (n : ℤ)).toNat

end

end A344259.P5427426155737709490

namespace A344259

/-- `A025480(A080261(n)+n)` -/
def P5427426155737709490.Spec : Prop :=
  ∀ n, P5427426155737709490.a n = A344259 n

end A344259

/-! ## A344259.P7553019455006630985

`A255308(A316075(n))+A002265(n)`
-/

namespace A344259.P7553019455006630985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (A316075 n).toNat + A002265 n

end

end A344259.P7553019455006630985

namespace A344259

/-- `A255308(A316075(n))+A002265(n)` -/
def P7553019455006630985.Spec : Prop :=
  ∀ n, P7553019455006630985.a n = A344259 n

end A344259

/-!
# A344260: a(n) is the number of relations from an n-element set into a set of at most n elements.

The programs for A344260, there is no canonical definition to state claims against.
-/

/-! ## A344260.P6843104308853745197

`∑{d}[2^n, #^n]`
-/

namespace A344260.P6843104308853745197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ n

end

end A344260.P6843104308853745197

/-! ## A344260.P3765168367217470378

`A244961(n+1)/2^n`
-/

namespace A344260.P3765168367217470378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244961 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A344260.P3765168367217470378

/-! ## A344260.P12825783405546493167

`A068156(A002378(n))/A068156(n)`
-/

namespace A344260.P12825783405546493167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068156 (A002378 n).toNat : ℚ) / (A068156 n : ℚ)

end

end A344260.P12825783405546493167

/-! ## A344260.P11302580424305974834

`A095121(A002378(n))/A095121(n)`
-/

namespace A344260.P11302580424305974834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095121 (A002378 n).toNat : ℚ) / (A095121 n : ℚ)

end

end A344260.P11302580424305974834

/-! ## A344260.P9879084773498861682

`A255047(A002378(n))/A255047(n)`
-/

namespace A344260.P9879084773498861682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255047 (A002378 n).toNat : ℚ) / (A255047 n : ℚ)

end

end A344260.P9879084773498861682

/-!
# A344261: Number of n-step walks from one of the vertices with degree 3 to itself on the four-vertex diamond graph.

The programs for A344261, the canonical program `A344261.P11777513139487924325` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344261 has offset 0).

The definition of A344261 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344261.P11777513139487924325

`5*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A344261

/-- `5*a(n-2)+4*a(n-3)` -/
def P11777513139487924325.Spec : Prop :=
  ∀ n, (P11777513139487924325.a n : ℤ) = A344261 n

theorem P11777513139487924325.correct : P11777513139487924325.Spec := by
  intro n
  simp only [A344261]

end A344261

/-! ## A344261.P13742675358560445553

`A344236(n)+(-1)^n`
-/

namespace A344261.P13742675358560445553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344236 n + (-1) ^ n

end

end A344261.P13742675358560445553

namespace A344261

/-- `A344236(n)+(-1)^n` -/
def P13742675358560445553.Spec : Prop :=
  ∀ n, P13742675358560445553.a n = A344261 n

end A344261

/-! ## A344261.P17320577424149007939

`(A006131(n)+(-1)^n)/2`
-/

namespace A344261.P17320577424149007939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006131 n + (-1) ^ n : ℚ) / 2

end

end A344261.P17320577424149007939

namespace A344261

/-- `(A006131(n)+(-1)^n)/2` -/
def P17320577424149007939.Spec : Prop :=
  ∀ n, P17320577424149007939.a n = (A344261 n : ℚ)

end A344261

/-! ## A344261.P17765318481260446004

`A006131(n)-A344236(n)`
-/

namespace A344261.P17765318481260446004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006131 n - A344236 n

end

end A344261.P17765318481260446004

namespace A344261

/-- `A006131(n)-A344236(n)` -/
def P17765318481260446004.Spec : Prop :=
  ∀ n, P17765318481260446004.a n = A344261 n

end A344261

/-! ## A344261.P6616467645516935389

`ogf((-1+2x^2)/(-1+5x^2+4x^3))`
-/

namespace A344261.P6616467645516935389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, 0, -5, -4] n

end

end A344261.P6616467645516935389

namespace A344261

/-- `ogf((-1+2x^2)/(-1+5x^2+4x^3))` -/
def P6616467645516935389.Spec : Prop :=
  ∀ n, P6616467645516935389.a n = A344261 n

end A344261

/-! ## A344261.P9464018182244782348

`4*a(n-2)-xor(3, 2-a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A344261.P9464018182244782348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * a (n - 2) - Int.xor 3 (2 - a (n - 1))

end

end A344261.P9464018182244782348

namespace A344261

/-- `4*a(n-2)-xor(3, 2-a(n-1))` -/
def P9464018182244782348.Spec : Prop :=
  ∀ n, P9464018182244782348.a n = A344261 n

end A344261

/-! ## A344261.P8160824303869351993

`xor(1, A344236(n))`
-/

namespace A344261.P8160824303869351993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A344236 n)

end

end A344261.P8160824303869351993

namespace A344261

/-- `xor(1, A344236(n))` -/
def P8160824303869351993.Spec : Prop :=
  ∀ n, P8160824303869351993.a n = A344261 n

end A344261

/-! ## A344261.P15580059860280779126

`A193649(n)-A000035(n)`
-/

namespace A344261.P15580059860280779126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193649 n - A000035 n

end

end A344261.P15580059860280779126

namespace A344261

/-- `A193649(n)-A000035(n)` -/
def P15580059860280779126.Spec : Prop :=
  ∀ n, P15580059860280779126.a n = A344261 n

end A344261

/-! ## A344261.P12491502641140077281

`A059841(n)+A193649(n)-1`
-/

namespace A344261.P12491502641140077281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (A193649 n - 1)

end

end A344261.P12491502641140077281

namespace A344261

/-- `A059841(n)+A193649(n)-1` -/
def P12491502641140077281.Spec : Prop :=
  ∀ n, P12491502641140077281.a n = A344261 n

end A344261

/-! ## A344261.P16956572379218414902

`A004442(n)+A344236(n)-n`
-/

namespace A344261.P16956572379218414902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n + (A344236 n - (n : ℤ))

end

end A344261.P16956572379218414902

namespace A344261

/-- `A004442(n)+A344236(n)-n` -/
def P16956572379218414902.Spec : Prop :=
  ∀ n, P16956572379218414902.a n = A344261 n

end A344261

/-! ## A344261.P16200539870013215812

`A026581(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A344261.P16200539870013215812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026581 (n - 1) - a (n - 1)

end

end A344261.P16200539870013215812

namespace A344261

/-- `A026581(n-1)-a(n-1)` -/
def P16200539870013215812.Spec : Prop :=
  ∀ n, P16200539870013215812.a n = A344261 n

end A344261

/-! ## A344261.P7168343567573011267

`∑[A052923(n)]-A344236(n)`
-/

namespace A344261.P7168343567573011267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A344236 n

end

end A344261.P7168343567573011267

namespace A344261

/-- `∑[A052923(n)]-A344236(n)` -/
def P7168343567573011267.Spec : Prop :=
  ∀ n, P7168343567573011267.a n = A344261 n

end A344261

/-! ## A344261.P8740400007244454127

`A102446(n)/2-A344236(n)`
-/

namespace A344261.P8740400007244454127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102446 n : ℚ) / 2 - (A344236 n : ℚ)

end

end A344261.P8740400007244454127

namespace A344261

/-- `A102446(n)/2-A344236(n)` -/
def P8740400007244454127.Spec : Prop :=
  ∀ n, P8740400007244454127.a n = (A344261 n : ℚ)

end A344261

/-!
# A344262: a(0)=1; for n>0, a(n) = a(n-1)*n+1 if n is even, (a(n-1)+1)*n otherwise.

The programs for A344262, there is no canonical definition to state claims against.
-/

/-! ## A344262.P14070613289123259734

`n^(n%2)+n*a(n-1)` with `a(0)=1`
-/

namespace A344262.P14070613289123259734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ (n % 2) + n * a (n - 1)

end

end A344262.P14070613289123259734

/-! ## A344262.P10690843874453933407

`n^and(1, n)+n*a(n-1)` with `a(0)=1`
-/

namespace A344262.P10690843874453933407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ Nat.land 1 n + n * a (n - 1)

end

end A344262.P10690843874453933407

/-! ## A344262.P3365716656643448289

`gcd(n, (n+1)%2)+n*a(n-1)` with `a(0)=1`
-/

namespace A344262.P3365716656643448289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.gcd n ((n + 1) % 2) + n * a (n - 1)

end

end A344262.P3365716656643448289

/-! ## A344262.P11698046525401177314

`A344419(n)+n!`
-/

namespace A344262.P11698046525401177314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344419 n + (Nat.factorial n : ℤ)

end

end A344262.P11698046525401177314

/-! ## A344262.P3961048436207390302

`A093178(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A344262.P3961048436207390302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A093178 n + (n : ℤ) * a (n - 1)

end

end A344262.P3961048436207390302

/-! ## A344262.P14812494395131749318

`A344419(n)+A000142(n)`
-/

namespace A344262.P14812494395131749318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344419 n + A000142 n

end

end A344262.P14812494395131749318

/-! ## A344262.P16067749285313268634

`A007526(n)+or(1, A000166(n))`
-/

namespace A344262.P16067749285313268634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n + Int.lor 1 (A000166 n)

end

end A344262.P16067749285313268634

/-! ## A344262.P18088660011464530878

`A344419(n)+A199660(2*n+1)`
-/

namespace A344262.P18088660011464530878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344419 n + A199660 (2 * n + 1)

end

end A344262.P18088660011464530878

/-!
# A344265: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(2^(k-1)).

The programs for A344265, there is no canonical definition to state claims against.
-/

/-! ## A344265.P13927529750574805001

`A296965(n)+A004737(A260464(n))`
-/

namespace A344265.P13927529750574805001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296965 n + A004737 (A260464 n).toNat

end

end A344265.P13927529750574805001

/-! ## A344265.P10774252505922392815

`A343229(A175506(n+1)+A034751(n+1))`
-/

namespace A344265.P10774252505922392815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (A175506 (n + 1) + A034751 (n + 1)).toNat

end

end A344265.P10774252505922392815

/-!
# A344266: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(3^(k-1)).

The programs for A344266, there is no canonical definition to state claims against.
-/

/-! ## A344266.P14498238048706460880

`A025616(n+1)*A127293(2^ceil(n/2))`
-/

namespace A344266.P14498238048706460880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1) * A127293 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ))).toNat

end

end A344266.P14498238048706460880

/-! ## A344266.P14278112598221874193

`A335681(A335632(n))+A000244(n)`
-/

namespace A344266.P14278112598221874193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335681 (A335632 n).toNat + A000244 n

end

end A344266.P14278112598221874193

/-! ## A344266.P7036543111511762905

`A344297(A059428(n+1)-A197081(n))`
-/

namespace A344266.P7036543111511762905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344297 (A059428 (n + 1) - A197081 n).toNat

end

end A344266.P7036543111511762905

/-!
# A344267: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(4^(k-1)).

The programs for A344267, there is no canonical definition to state claims against.
-/

/-! ## A344267.P10097110082202632259

`A023444(xor(2, A344248(n+1)))`
-/

namespace A344267.P10097110082202632259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (Int.xor 2 (A344248 (n + 1))).toNat

end

end A344267.P10097110082202632259

/-! ## A344267.P5336557335922069755

`A289207(xor(2, A344248(n+1)))`
-/

namespace A344267.P5336557335922069755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Int.xor 2 (A344248 (n + 1))).toNat

end

end A344267.P5336557335922069755

/-! ## A344267.P16630889503842705057

`A344248(n+1)-A232195(A232192(n))`
-/

namespace A344267.P16630889503842705057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344248 (n + 1) - A232195 (A232192 n).toNat

end

end A344267.P16630889503842705057

/-!
# A344268: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(5^(k-1)).

The programs for A344268, there is no canonical definition to state claims against.
-/

/-! ## A344268.P1906885305222613816

`A344249(n+1)-A280500(A380888(n+1))`
-/

namespace A344268.P1906885305222613816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344249 (n + 1) - A280500 (A380888 (n + 1)).toNat

end

end A344268.P1906885305222613816

/-!
# A344269: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(6^(k-1)).

The programs for A344269, there is no canonical definition to state claims against.
-/

/-! ## A344269.P10669146171301342731

`A344250(n+1)-A096936(A162771(n))`
-/

namespace A344269.P10669146171301342731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344250 (n + 1) - A096936 (A162771 n).toNat

end

end A344269.P10669146171301342731

/-! ## A344269.P11014746999220266300

`A344250(n+1)-A330735(A002874(n))`
-/

namespace A344269.P11014746999220266300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344250 (n + 1) - A330735 (A002874 n).toNat

end

end A344269.P11014746999220266300

/-!
# A344270: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(7^(k-1)).

The programs for A344270, there is no canonical definition to state claims against.
-/

/-! ## A344270.P6678649497563788236

`A344251(n+1)-A089051(A174249(n))`
-/

namespace A344270.P6678649497563788236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344251 (n + 1) - A089051 (A174249 n).toNat

end

end A344270.P6678649497563788236

/-! ## A344270.P1251385533082994394

`A344251(n+1)-A347438(A063481(n))`
-/

namespace A344270.P1251385533082994394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344251 (n + 1) - A347438 (A063481 n).toNat

end

end A344270.P1251385533082994394

/-!
# A344271: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(8^(k-1)).

The programs for A344271, there is no canonical definition to state claims against.
-/

/-! ## A344271.P9988119225938354436

`A344252(n+1)+A242609(A243360(n+3))`
-/

namespace A344271.P9988119225938354436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344252 (n + 1) + A242609 (A243360 (n + 3)).toNat

end

end A344271.P9988119225938354436

/-! ## A344271.P4002695435929538179

`A344252(n+1)-A079204(A000040(n+1))`
-/

namespace A344271.P4002695435929538179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344252 (n + 1) - A079204 (A000040 (n + 1)).toNat

end

end A344271.P4002695435929538179

/-!
# A344273: a(n) is the least k such that the average number of bi-unitary divisors of {1..k} is >= n.

The programs for A344273, there is no canonical definition to state claims against.
-/

/-! ## A344273.P12324297399955422194

`A192615(2^(n+1)+1)-3`
-/

namespace A344273.P12324297399955422194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192615 (2 ^ (n + 1) + 1) - 3

end

end A344273.P12324297399955422194

/-!
# A344274: a(n) is the least k such that the average number of infinitary divisors of {1..k} is >= n.

The programs for A344274, there is no canonical definition to state claims against.
-/

/-! ## A344274.P10430572135999636393

`ceil(exp(n))*A006530((2*n)!)`
-/

namespace A344274.P10430572135999636393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp (n : ℝ)⌉ * A006530 (Nat.factorial (2 * n))

end

end A344274.P10430572135999636393

/-!
# A344275: Denominators of worst rational approximations to the golden ratio.

The programs for A344275, there is no canonical definition to state claims against.
-/

/-! ## A344275.P9087281631241659691

`A214990(∑[A055778(A187829(n+1))])`
-/

namespace A344275.P9087281631241659691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214990 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344275.P9087281631241659691

/-! ## A344275.P9453171538266524198

`lt[A082637(A133299(n+4)), A004444(n)]`
-/

namespace A344275.P9453171538266524198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082637 (A133299 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344275.P9453171538266524198

/-! ## A344275.P14952758445567292128

`lt[A259598(n+3), A259576(A259581(n+1))]`
-/

namespace A344275.P14952758445567292128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259576 (A259581 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344275.P14952758445567292128

/-! ## A344275.P6130745491574892607

`lt[A259588(A259598(n+3)), A259578(n+1)]`
-/

namespace A344275.P6130745491574892607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259588 (A259598 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259578 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344275.P6130745491574892607

/-! ## A344275.P14063802920653092664

`lt[A030074(A133299(n+4)), A026692(n+1)]`
-/

namespace A344275.P14063802920653092664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030074 (A133299 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344275.P14063802920653092664

/-!
# A344276: Number of halving and tripling steps to reach 3 in the '3x+3' problem, or -1 if 3 is never reached.

The programs for A344276, there is no canonical definition to state claims against.
-/

/-! ## A344276.P13402294334582853023

`A210516(∑[n+1]+2)`
-/

namespace A344276.P13402294334582853023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A344276.P13402294334582853023

/-! ## A344276.P17477403538924735204

`A210688(∑[n+1]+2)-1`
-/

namespace A344276.P17477403538924735204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1

end

end A344276.P17477403538924735204

/-! ## A344276.P6940379055022406936

`abs(1-A210688(A000096(n)+3))`
-/

namespace A344276.P6940379055022406936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A210688 (A000096 n + 3).toNat|

end

end A344276.P6940379055022406936

/-! ## A344276.P6141798068647365677

`A023443(A210688(∑[n+1]+2))`
-/

namespace A344276.P6141798068647365677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A210688 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A344276.P6141798068647365677

/-! ## A344276.P12061304561387621815

`A057428(n)²!+A210688(A000096(n)+3)-2`
-/

namespace A344276.P12061304561387621815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A057428 n ^ 2).toNat : ℤ) + (A210688 (A000096 n + 3).toNat - 2)

end

end A344276.P12061304561387621815

/-! ## A344276.P4125509522182512893

`∏{e}[A139969(n+1), A210688(A000096(n)+3)-#]`
-/

namespace A344276.P4125509522182512893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A210688 (A000096 n + 3).toNat - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A344276.P4125509522182512893

/-! ## A344276.P6137467265759602977

`A028920(2*n)²+A210688(A000096(n)+3)-2`
-/

namespace A344276.P6137467265759602977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 (2 * n) ^ 2 + (A210688 (A000096 n + 3).toNat - 2)

end

end A344276.P6137467265759602977

/-! ## A344276.P595211775155416999

`C(2, A000203(n+2))-(1-A210688(A000096(n)+3))`
-/

namespace A344276.P595211775155416999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ) - (1 - A210688 (A000096 n + 3).toNat)

end

end A344276.P595211775155416999

/-! ## A344276.P14011772548592745668

`A210688(A000096(n)+3)+n+1-A020725(n+1)`
-/

namespace A344276.P14011772548592745668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (A000096 n + 3).toNat + (n + 1 : ℤ) - A020725 (n + 1)

end

end A344276.P14011772548592745668

/-! ## A344276.P17600844695466824427

`val(A000040(n+1), 2)!+A210688(A000096(n)+3)-2`
-/

namespace A344276.P17600844695466824427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2) : ℤ) + (A210688 (A000096 n + 3).toNat - 2)

end

end A344276.P17600844695466824427

/-! ## A344276.P14651000303850594010

`A210688(A000096(n)+3)-2-A008683(A104272(n+1))`
-/

namespace A344276.P14651000303850594010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210688 (A000096 n + 3).toNat - 2 - A008683 (A104272 (n + 1)).toNat

end

end A344276.P14651000303850594010

/-!
# A344279: Number of polygons formed by infinite lines when connecting all vertices and all points that divide the sides of an equilateral triangle into n equal parts.

The programs for A344279, there is no canonical definition to state claims against.
-/

/-! ## A344279.P17596399160057693598

`A344896(n+1)-A344657(n+1)+1`
-/

namespace A344279.P17596399160057693598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344896 (n + 1) - A344657 (n + 1) + 1

end

end A344279.P17596399160057693598

/-! ## A344279.P17164033246929029262

`A343755(n+1)-A145979(A003215(n))`
-/

namespace A344279.P17164033246929029262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343755 (n + 1) - A145979 (A003215 n).toNat

end

end A344279.P17164033246929029262

/-! ## A344279.P7042062861428889706

`A343755(n+1)-A008486(A016825(∑[n]))`
-/

namespace A344279.P7042062861428889706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343755 (n + 1) - A008486 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344279.P7042062861428889706

/-! ## A344279.P12223134606611353757

`A343755(n+1)-A016825(A005448(n+1))`
-/

namespace A344279.P12223134606611353757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343755 (n + 1) - A016825 (A005448 (n + 1)).toNat

end

end A344279.P12223134606611353757

/-! ## A344279.P16901416235964933381

`A343755(n+1)-A008486(A051890(n+1))`
-/

namespace A344279.P16901416235964933381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343755 (n + 1) - A008486 (A051890 (n + 1)).toNat

end

end A344279.P16901416235964933381

/-!
# A344281: Integers m for which F (mod m) has rotational symmetry.

The programs for A344281, there is no canonical definition to state claims against.
-/

/-! ## A344281.P9611565851778421648

`eq[3, A131320(n+1)]`
-/

namespace A344281.P9611565851778421648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131320 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A344281.P9611565851778421648

/-! ## A344281.P16645894497412024914

`record[n+5-A131320(n+3)]`
-/

namespace A344281.P16645894497412024914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) - A131320 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344281.P16645894497412024914

/-! ## A344281.P15658753402952096385

`lt[A131320(n+1), A130130(n)²]`
-/

namespace A344281.P15658753402952096385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344281.P15658753402952096385

/-! ## A344281.P16757851817857972596

`lt[3%A131320(n+1), A131294(n)]`
-/

namespace A344281.P16757851817857972596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A131320 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344281.P16757851817857972596

/-! ## A344281.P15249079332275308669

`lt[xor(3, A131320(n+1)), A131295(n)]`
-/

namespace A344281.P15249079332275308669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A131320 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131295 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344281.P15249079332275308669

/-!
# A344282: Column 1 of A317721.

The programs for A344282, there is no canonical definition to state claims against.
-/

/-! ## A344282.P9785680680188929104

`A297846(A058830(n)+A003059(n+1))`
-/

namespace A344282.P9785680680188929104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297846 (A058830 n + A003059 (n + 1)).toNat

end

end A344282.P9785680680188929104

/-! ## A344282.P5858069803052822490

`A297846(A003059(n+1)%A124121(n+1))`
-/

namespace A344282.P5858069803052822490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297846 (Int.tmod (A003059 (n + 1)) (A124121 (n + 1))).toNat

end

end A344282.P5858069803052822490

/-!
# A344290: Denominators of worst approximations to phi, the golden ratio.

The programs for A344290, there is no canonical definition to state claims against.
-/

/-! ## A344290.P2036689057602981596

`A344646(∑[A209293(n+1)])`
-/

namespace A344290.P2036689057602981596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344290.P2036689057602981596

/-! ## A344290.P1087916659797706198

`∑[A329362(A327421(n+1))]+1`
-/

namespace A344290.P1087916659797706198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A327421 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A344290.P1087916659797706198

/-! ## A344290.P14691840153294308263

`A065027(lt[2^n, A143418(3*n+4)])`
-/

namespace A344290.P14691840153294308263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143418 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A344290.P14691840153294308263

/-! ## A344290.P4640428087824718569

`A073454(A220644(n+2))+∑[A006530(∏[A185045(n+1)])]`
-/

namespace A344290.P4640428087824718569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073454 (A220644 (n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344290.P4640428087824718569

/-!
# A344291: Numbers whose sum of prime indices is at least twice their number of prime indices (counted with multiplicity).

The programs for A344291, there is no canonical definition to state claims against.
-/

/-! ## A344291.P8817147834618552970

`lt[3^∑{e}[n, #], n+1]`
-/

namespace A344291.P8817147834618552970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A344291.P8817147834618552970

/-! ## A344291.P14792595672113063819

`lt[∏{e}[n, 3^#], n+1]`
-/

namespace A344291.P14792595672113063819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 3 ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A344291.P14792595672113063819

/-! ## A344291.P8916921211455429521

`lt[(3^∑{e}[n, #]-n)%2, and(1, n)]`
-/

namespace A344291.P8916921211455429521
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((3 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ) - (n : ℤ)) 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A344291.P8916921211455429521

/-! ## A344291.P2623070619501794562

`comp[A363949(n+1)-1]+1`
-/

namespace A344291.P2623070619501794562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363949 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344291.P2623070619501794562

/-! ## A344291.P15481678981301052084

`comp[2*n*A300982(3*n)]`
-/

namespace A344291.P15481678981301052084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A300982 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344291.P15481678981301052084

/-! ## A344291.P16993469347657498322

`comp[A325763(n+1)%(3^n)]`
-/

namespace A344291.P16993469347657498322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325763 (n + 1)) (3 ^ n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344291.P16993469347657498322

/-! ## A344291.P11248758033097251385

`lt[A096541(∑{e}[n², #]+1), n]`
-/

namespace A344291.P11248758033097251385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096541 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A344291.P11248758033097251385

/-! ## A344291.P10883324109290235107

`lt[A165824(n+1), n+2]+1`
-/

namespace A344291.P10883324109290235107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344291.P10883324109290235107

/-! ## A344291.P8591329265583489038

`lt[3^A001222(n+1), n+2]+1`
-/

namespace A344291.P8591329265583489038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A001222 (n + 1) : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A344291.P8591329265583489038

/-! ## A344291.P16377840396814481099

`∪[A344413(n+1), A387097(n+1)]`
-/

namespace A344291.P16377840396814481099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344291.P16377840396814481099

/-!
# A344292: Numbers m whose sum of prime indices A056239(m) is even and is at most twice the number of prime factors counted with multiplicity A001222(m).

The programs for A344292, there is no canonical definition to state claims against.
-/

/-! ## A344292.P7650372266481041592

`filter[A344296(n+1), A137893(#)]`
-/

namespace A344292.P7650372266481041592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A344292.P7650372266481041592

/-! ## A344292.P14796054917715611793

`filter[A344296(n+1), A341347(#)]`
-/

namespace A344292.P14796054917715611793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A344292.P14796054917715611793

/-! ## A344292.P6048402248993362541

`∩[A026140(n+1), A344296(n+1)]`
-/

namespace A344292.P6048402248993362541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344292.P6048402248993362541

/-! ## A344292.P2035171313859443908

`∩[A026225(n+1), A344296(n+1)]`
-/

namespace A344292.P2035171313859443908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344292.P2035171313859443908

/-! ## A344292.P4709890206388918031

`∩[A339658(n+1), A344296(n+1)]`
-/

namespace A344292.P4709890206388918031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344292.P4709890206388918031

/-!
# A344293: 5-smooth numbers n whose sum of prime indices A056239(n) is at least twice the number of prime indices A001222(n).

The programs for A344293, there is no canonical definition to state claims against.
-/

/-! ## A344293.P14454468279770716011

`∩[A051037(n+1), A277599(n+1)]`
-/

namespace A344293.P14454468279770716011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344293.P14454468279770716011

/-! ## A344293.P709880547374617841

`∪[A003593(n+1), A344294(n+1)]`
-/

namespace A344293.P709880547374617841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344293.P709880547374617841

/-! ## A344293.P12805010465987877285

`∪[A025616(n+1), A344294(n+1)]`
-/

namespace A344293.P12805010465987877285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344293.P12805010465987877285

/-! ## A344293.P584222237114249691

`∪[A344294(n+1), A344295(n+1)]`
-/

namespace A344293.P584222237114249691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344295 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344293.P584222237114249691

/-! ## A344293.P6006136199046999263

`record[A052126(A277592(n+1))]`
-/

namespace A344293.P6006136199046999263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A277592 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344293.P6006136199046999263

/-!
# A344294: 5-smooth but not 3-smooth numbers k such that A056239(k) >= 2*A001222(k).

The programs for A344294, there is no canonical definition to state claims against.
-/

/-! ## A344294.P7373009123185927833

`∩[A080193(n+1), A277599(n+1)]`
-/

namespace A344294.P7373009123185927833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344294.P7373009123185927833

/-! ## A344294.P15703722213888293210

`filter[A344293(n+1), A079998(#)]`
-/

namespace A344294.P15703722213888293210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079998 (f1 j).toNat = 1) n)

end

end A344294.P15703722213888293210

/-! ## A344294.P14691401606107902096

`filter[A344293(n+1), A244992(#)]`
-/

namespace A344294.P14691401606107902096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A244992 (f1 j).toNat = 1) n)

end

end A344294.P14691401606107902096

/-! ## A344294.P7382346580270698947

`∩[A080193(n+1), A344293(n+1)]`
-/

namespace A344294.P7382346580270698947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344294.P7382346580270698947

/-! ## A344294.P602114839198648140

`∩[A085128(n+1), A344293(n+1)]`
-/

namespace A344294.P602114839198648140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344294.P602114839198648140

/-!
# A344295: Heinz numbers of partitions of 2*n with at most n parts, none greater than 3, for some n.

The programs for A344295, there is no canonical definition to state claims against.
-/

/-! ## A344295.P9782070193126603794

`∩[A051037(n+1), A344413(n+1)]`
-/

namespace A344295.P9782070193126603794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344295.P9782070193126603794

/-! ## A344295.P7695091104042844933

`filter[A344293(n+1), A137893(#)]`
-/

namespace A344295.P7695091104042844933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A344295.P7695091104042844933

/-! ## A344295.P10967172619475458192

`filter[A344293(n+1), A246260(#)]`
-/

namespace A344295.P10967172619475458192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j).toNat = 1) n)

end

end A344295.P10967172619475458192

/-! ## A344295.P8625875452531339908

`filter[A344293(n+1), A341347(#)]`
-/

namespace A344295.P8625875452531339908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A344295.P8625875452531339908

/-! ## A344295.P993884733091618731

`filter[A344293(n+1), A373585(#)]`
-/

namespace A344295.P993884733091618731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344293 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A344295.P993884733091618731

/-!
# A344296: Numbers with at least as many prime factors (counted with multiplicity) as half their sum of prime indices.

The programs for A344296, there is no canonical definition to state claims against.
-/

/-! ## A344296.P6018203858534305497

`A322136(n+1)/4`
-/

namespace A344296.P6018203858534305497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322136 (n + 1) : ℚ) / 4

end

end A344296.P6018203858534305497

/-! ## A344296.P14357692008875037914

`∪[A363950(n+1), A000079(n)]`
-/

namespace A344296.P14357692008875037914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P14357692008875037914

/-! ## A344296.P9443184217271216277

`∪[A363950(n+1), A008861(n)]`
-/

namespace A344296.P9443184217271216277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P9443184217271216277

/-! ## A344296.P4921244456337828318

`∪[A363950(n+1), A008862(n)]`
-/

namespace A344296.P4921244456337828318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P4921244456337828318

/-! ## A344296.P3510019555622115251

`∪[A363950(n+1), A008863(n)]`
-/

namespace A344296.P3510019555622115251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P3510019555622115251

/-! ## A344296.P7275058646941290289

`∪[A363950(n+1), A051535(n)]`
-/

namespace A344296.P7275058646941290289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P7275058646941290289

/-! ## A344296.P13261561209612569844

`∪[A363950(n+1), A133464(n)]`
-/

namespace A344296.P13261561209612569844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P13261561209612569844

/-! ## A344296.P1112975535632299496

`∪[A363950(n+1), A145115(n)]`
-/

namespace A344296.P1112975535632299496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145115 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P1112975535632299496

/-! ## A344296.P7205446696149844470

`∪[A363950(n+1), A145116(n)]`
-/

namespace A344296.P7205446696149844470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P7205446696149844470

/-! ## A344296.P16852133004169140404

`∪[A363950(n+1), A145117(n)]`
-/

namespace A344296.P16852133004169140404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344296.P16852133004169140404

/-!
# A344297: Heinz numbers of integer partitions of even numbers with no part greater than 3.

The programs for A344297, there is no canonical definition to state claims against.
-/

/-! ## A344297.P9440889474044625635

`eq[1, A122777(n+1)]+1`
-/

namespace A344297.P9440889474044625635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122777 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344297.P9440889474044625635

/-! ## A344297.P1538600860542670329

`filter[A051037(n+1), A137893(#)]`
-/

namespace A344297.P1538600860542670329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137893 (f1 j).toNat = 1) n)

end

end A344297.P1538600860542670329

/-! ## A344297.P11258318161043415917

`filter[A051037(n+1), A246260(#)]`
-/

namespace A344297.P11258318161043415917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A246260 (f1 j).toNat = 1) n)

end

end A344297.P11258318161043415917

/-! ## A344297.P8228077212800416309

`filter[A051037(n+1), A341347(#)]`
-/

namespace A344297.P8228077212800416309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341347 (f1 j).toNat = 1) n)

end

end A344297.P8228077212800416309

/-! ## A344297.P16522421219701706480

`filter[A051037(n+1), A373585(#)]`
-/

namespace A344297.P16522421219701706480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373585 (f1 j).toNat = 1) n)

end

end A344297.P16522421219701706480

/-! ## A344297.P1136445832470334175

`eq[A286137(n)+1, A030218(n)]`
-/

namespace A344297.P1136445832470334175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286137 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344297.P1136445832470334175

/-! ## A344297.P3663394130384596925

`record[A026215(A228732(n+1))/2]`
-/

namespace A344297.P3663394130384596925
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026215 (A228732 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344297.P3663394130384596925

/-! ## A344297.P1262462562111402937

`∩[A026140(n+1), A051037(n+1)]`
-/

namespace A344297.P1262462562111402937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344297.P1262462562111402937

/-! ## A344297.P15921222990626477274

`∩[A026225(n+1), A051037(n+1)]`
-/

namespace A344297.P15921222990626477274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344297.P15921222990626477274

/-! ## A344297.P11226612633009205524

`∩[A051037(n+1), A246261(n+1)]`
-/

namespace A344297.P11226612633009205524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344297.P11226612633009205524

/-!
# A344298: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^(9^(k-1)).

The programs for A344298, there is no canonical definition to state claims against.
-/

/-! ## A344298.P8768085995727599472

`A344253(n+1)-A184964(A038231(n))`
-/

namespace A344298.P8768085995727599472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344253 (n + 1) - A184964 (A038231 n).toNat

end

end A344298.P8768085995727599472

/-!
# A344299: Expansion of Sum_{k>=1} (-1)^(k+1) * x^(k^2) / (1 - x^(k^2)).

The programs for A344299, the canonical program `A344299.P6650277037551991274` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344299 has offset 1).

The definition of A344299 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046951, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344299.P6650277037551991274

`2*A046951(4*(n+1))-3*A046951(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344299

/-- `2*A046951(4*(n+1))-3*A046951(n+1)` -/
def P6650277037551991274.Spec : Prop :=
  ∀ n, P6650277037551991274.a n = A344299 (n + 1)

theorem P6650277037551991274.correct : P6650277037551991274.Spec := by
  intro n
  simp only [A344299, Nat.add_sub_cancel]

end A344299

/-! ## A344299.P17681792960675360727

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], -(-1)^#]`
-/

namespace A344299.P17681792960675360727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (-((-1) ^ d))

end

end A344299.P17681792960675360727

namespace A344299

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], -(-1)^#]` -/
def P17681792960675360727.Spec : Prop :=
  ∀ n, P17681792960675360727.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P7847083543936842371

`∑{d}[n+1, A048272(#)%2]`
-/

namespace A344299.P7847083543936842371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A048272 d) 2

end

end A344299.P7847083543936842371

namespace A344299

/-- `∑{d}[n+1, A048272(#)%2]` -/
def P7847083543936842371.Spec : Prop :=
  ∀ n, P7847083543936842371.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P776485599102296002

`∑{d}[A000188(n+1), -(-1)^#]`
-/

namespace A344299.P776485599102296002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (-((-1) ^ d))

end

end A344299.P776485599102296002

namespace A344299

/-- `∑{d}[A000188(n+1), -(-1)^#]` -/
def P776485599102296002.Spec : Prop :=
  ∀ n, P776485599102296002.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P13800918962715479611

`A048272(∏{p}[n+1, #^val(n+1, #²)])`
-/

namespace A344299.P13800918962715479611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2))

end

end A344299.P13800918962715479611

namespace A344299

/-- `A048272(∏{p}[n+1, #^val(n+1, #²)])` -/
def P13800918962715479611.Spec : Prop :=
  ∀ n, P13800918962715479611.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P17263820351148948468

`A317529(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A344299.P17263820351148948468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A344299.P17263820351148948468

namespace A344299

/-- `A317529(∏{p}[n+1, #^val(n+1, #²)]²)` -/
def P17263820351148948468.Spec : Prop :=
  ∀ n, P17263820351148948468.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P714051846896217962

`A048272(A000188(n+1))`
-/

namespace A344299.P714051846896217962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A000188 (n + 1)).toNat

end

end A344299.P714051846896217962

namespace A344299

/-- `A048272(A000188(n+1))` -/
def P714051846896217962.Spec : Prop :=
  ∀ n, P714051846896217962.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P7788046861266348602

`A317529(A008833(n+1))`
-/

namespace A344299.P7788046861266348602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A008833 (n + 1)).toNat

end

end A344299.P7788046861266348602

namespace A344299

/-- `A317529(A008833(n+1))` -/
def P7788046861266348602.Spec : Prop :=
  ∀ n, P7788046861266348602.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P8502945614469496617

`A317529(A214682(n+1))`
-/

namespace A344299.P8502945614469496617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A214682 (n + 1)).toNat

end

end A344299.P8502945614469496617

namespace A344299

/-- `A317529(A214682(n+1))` -/
def P8502945614469496617.Spec : Prop :=
  ∀ n, P8502945614469496617.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P10437414332795283796

`A317529(A390691(n+1))`
-/

namespace A344299.P10437414332795283796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317529 (A390691 (n + 1)).toNat

end

end A344299.P10437414332795283796

namespace A344299

/-- `A317529(A390691(n+1))` -/
def P10437414332795283796.Spec : Prop :=
  ∀ n, P10437414332795283796.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P13938549465666803957

`A048272(A057918(n+1)+1)`
-/

namespace A344299.P13938549465666803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A057918 (n + 1) + 1).toNat

end

end A344299.P13938549465666803957

namespace A344299

/-- `A048272(A057918(n+1)+1)` -/
def P13938549465666803957.Spec : Prop :=
  ∀ n, P13938549465666803957.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P10724921688673866852

`A298735(n+1)-A358345(n+1)`
-/

namespace A344299.P10724921688673866852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n + 1) - A358345 (n + 1)

end

end A344299.P10724921688673866852

namespace A344299

/-- `A298735(n+1)-A358345(n+1)` -/
def P10724921688673866852.Spec : Prop :=
  ∀ n, P10724921688673866852.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P18350080982120617840

`A048272((n+1)/A019554(n+1))`
-/

namespace A344299.P18350080982120617840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A344299.P18350080982120617840

namespace A344299

/-- `A048272((n+1)/A019554(n+1))` -/
def P18350080982120617840.Spec : Prop :=
  ∀ n, P18350080982120617840.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P896777767716778994

`(2-A115362(n))*A298735(n+1)`
-/

namespace A344299.P896777767716778994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A115362 n) * A298735 (n + 1)

end

end A344299.P896777767716778994

namespace A344299

/-- `(2-A115362(n))*A298735(n+1)` -/
def P896777767716778994.Spec : Prop :=
  ∀ n, P896777767716778994.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P429737065133239867

`(1-A235127(n+1))*A298735(n+1)`
-/

namespace A344299.P429737065133239867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A235127 (n + 1)) * A298735 (n + 1)

end

end A344299.P429737065133239867

namespace A344299

/-- `(1-A235127(n+1))*A298735(n+1)` -/
def P429737065133239867.Spec : Prop :=
  ∀ n, P429737065133239867.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P6888830437067584918

`2*A298735(n+1)-A046951(n+1)`
-/

namespace A344299.P6888830437067584918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298735 (n + 1) - A046951 (n + 1)

end

end A344299.P6888830437067584918

namespace A344299

/-- `2*A298735(n+1)-A046951(n+1)` -/
def P6888830437067584918.Spec : Prop :=
  ∀ n, P6888830437067584918.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P1516652629219762835

`A046951(n+1)-2*A358345(n+1)`
-/

namespace A344299.P1516652629219762835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - 2 * A358345 (n + 1)

end

end A344299.P1516652629219762835

namespace A344299

/-- `A046951(n+1)-2*A358345(n+1)` -/
def P1516652629219762835.Spec : Prop :=
  ∀ n, P1516652629219762835.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P8446839432609885573

`∑{d}[n+1, A001511(#)*A214509((n+1)/#)]`
-/

namespace A344299.P8446839432609885573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A214509 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344299.P8446839432609885573

namespace A344299

/-- `∑{d}[n+1, A001511(#)*A214509((n+1)/#)]` -/
def P8446839432609885573.Spec : Prop :=
  ∀ n, P8446839432609885573.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P4997159317045003539

`2*A046951(A000265(n+1))-A046951(n+1)`
-/

namespace A344299.P4997159317045003539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (A000265 (n + 1)).toNat - A046951 (n + 1)

end

end A344299.P4997159317045003539

namespace A344299

/-- `2*A046951(A000265(n+1))-A046951(n+1)` -/
def P4997159317045003539.Spec : Prop :=
  ∀ n, P4997159317045003539.a n = A344299 (n + 1)

end A344299

/-! ## A344299.P12122132622804701861

`2*A046951(A064989(n+1))-A046951(n+1)`
-/

namespace A344299.P12122132622804701861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046951 (A064989 (n + 1)).toNat - A046951 (n + 1)

end

end A344299.P12122132622804701861

namespace A344299

/-- `2*A046951(A064989(n+1))-A046951(n+1)` -/
def P12122132622804701861.Spec : Prop :=
  ∀ n, P12122132622804701861.a n = A344299 (n + 1)

end A344299

