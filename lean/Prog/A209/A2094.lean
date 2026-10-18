import SequenceMachineLib
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
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
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

/-!
# A209400: Number of subsets of {1,...,n} containing a subset of the form {k,k+1,k+3} for some k.

The programs for A209400, the canonical program `A209400.P11197854543313356138` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209400 has offset 0).

The definition of A209400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209400.P11197854543313356138

`2^n-A164387(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209400

/-- `2^n-A164387(n)` -/
def P11197854543313356138.Spec : Prop :=
  ∀ n, P11197854543313356138.a n = A209400 n

theorem P11197854543313356138.correct : P11197854543313356138.Spec := by
  intro n
  simp only [A209400]

end A209400

/-! ## A209400.P705693539847344171

`abs(A000079(n)-A164387(n))`
-/

namespace A209400.P705693539847344171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A164387 n|

end

end A209400.P705693539847344171

namespace A209400

/-- `abs(A000079(n)-A164387(n))` -/
def P705693539847344171.Spec : Prop :=
  ∀ n, P705693539847344171.a n = A209400 n

end A209400

/-! ## A209400.P793352291197983895

`and(-A164387(n), A000225(n))`
-/

namespace A209400.P793352291197983895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A164387 n) (A000225 n)

end

end A209400.P793352291197983895

namespace A209400

/-- `and(-A164387(n), A000225(n))` -/
def P793352291197983895.Spec : Prop :=
  ∀ n, P793352291197983895.a n = A209400 n

end A209400

/-! ## A209400.P13470776049305870820

`A000051(n)-(A164387(n)+1)`
-/

namespace A209400.P13470776049305870820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A164387 n + 1)

end

end A209400.P13470776049305870820

namespace A209400

/-- `A000051(n)-(A164387(n)+1)` -/
def P13470776049305870820.Spec : Prop :=
  ∀ n, P13470776049305870820.a n = A209400 n

end A209400

/-! ## A209400.P4152565066358637695

`A006500(n)+A209399(n)-A164387(n)`
-/

namespace A209400.P4152565066358637695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 n + (A209399 n - A164387 n)

end

end A209400.P4152565066358637695

namespace A209400

/-- `A006500(n)+A209399(n)-A164387(n)` -/
def P4152565066358637695.Spec : Prop :=
  ∀ n, P4152565066358637695.a n = A209400 n

end A209400

/-!
# A209401: Number of noncommutative rings with n elements.

The programs for A209401, there is no canonical definition to state claims against.
-/

/-! ## A209401.P6285182042138739833

`A027623(n+1)-A037289(n+1)`
-/

namespace A209401.P6285182042138739833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027623 (n + 1) - A037289 (n + 1)

end

end A209401.P6285182042138739833

/-! ## A209401.P15625823977351263511

`A037234(n+1)-A037289(n+1)`
-/

namespace A209401.P15625823977351263511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (n + 1) - A037289 (n + 1)

end

end A209401.P15625823977351263511

/-! ## A209401.P12224736559336438904

`A342376(n+1)+and(n, A127708(n+1))`
-/

namespace A209401.P12224736559336438904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (n + 1) + Int.land (n : ℤ) (A127708 (n + 1))

end

end A209401.P12224736559336438904

/-! ## A209401.P14724684334709401273

`A342376(n+1)+A127708(n^(n%2)+1)`
-/

namespace A209401.P14724684334709401273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (n + 1) + A127708 (n ^ (n % 2) + 1)

end

end A209401.P14724684334709401273

/-! ## A209401.P10403619969919842529

`A342376(n+1)+A127708(A133265(n))`
-/

namespace A209401.P10403619969919842529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (n + 1) + A127708 (A133265 n).toNat

end

end A209401.P10403619969919842529

/-!
# A209402: Number of partitions of n into distinct primes except the prime factors of n.

The programs for A209402, there is no canonical definition to state claims against.
-/

/-! ## A209402.P11552383718581705757

`A184171(lt[A024936(7*n+8), 10])`
-/

namespace A209402.P11552383718581705757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (7 * n + 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A209402.P11552383718581705757

/-! ## A209402.P4260240697452397372

`A184171(A185284(A239240(n))+n)`
-/

namespace A209402.P4260240697452397372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A185284 (A239240 n).toNat + (n : ℤ)).toNat

end

end A209402.P4260240697452397372

/-! ## A209402.P5731640945017396859

`A184171(A185284(A282906(n))+n)`
-/

namespace A209402.P5731640945017396859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A185284 (A282906 n).toNat + (n : ℤ)).toNat

end

end A209402.P5731640945017396859

/-!
# A209403: Convolution of primes with odd primes.

The programs for A209403, there is no canonical definition to state claims against.
-/

/-! ## A209403.P13257133856031576205

`A343531(n+1)+A014342(n+1)`
-/

namespace A209403.P13257133856031576205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343531 (n + 1) + A014342 (n + 1)

end

end A209403.P13257133856031576205

/-! ## A209403.P2693587672068229962

`∑[A343531(n+1)+A100484(n+1)]`
-/

namespace A209403.P2693587672068229962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343531 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209403.P2693587672068229962

/-! ## A209403.P11962800388154102348

`∑[A343531(n+1)+A001749(n+1)/2]`
-/

namespace A209403.P11962800388154102348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343531 (n + 1) : ℚ) + (A001749 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209403.P11962800388154102348

/-! ## A209403.P8329130047828732914

`A014342(n+2)-A100484(n+2)`
-/

namespace A209403.P8329130047828732914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 2) - A100484 (n + 2)

end

end A209403.P8329130047828732914

/-! ## A209403.P15481785225903199510

`A014342(n+2)-2*A065091(n+1)`
-/

namespace A209403.P15481785225903199510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 2) - 2 * A065091 (n + 1)

end

end A209403.P15481785225903199510

/-! ## A209403.P1022292318102861867

`A014342(n+2)-2*A000040(n+2)`
-/

namespace A209403.P1022292318102861867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 2) - 2 * A000040 (n + 2)

end

end A209403.P1022292318102861867

/-! ## A209403.P14813162684204074393

`A014342(n+2)-A001749(n+2)/2`
-/

namespace A209403.P14813162684204074393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014342 (n + 2) : ℚ) - (A001749 (n + 2) : ℚ) / 2

end

end A209403.P14813162684204074393

/-! ## A209403.P1345585779889493254

`A014342(n+2)-(A065091(n+1)+A000040(n+2))`
-/

namespace A209403.P1345585779889493254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 2) - (A065091 (n + 1) + A000040 (n + 2))

end

end A209403.P1345585779889493254

/-! ## A209403.P16439859270819639870

`A001748(n+2)+A014342(n+2)-A001750(n+2)`
-/

namespace A209403.P16439859270819639870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 2) + (A014342 (n + 2) - A001750 (n + 2))

end

end A209403.P16439859270819639870

/-! ## A209403.P16103501627896258050

`A014342(n+2)-A143928(n+1)/A065091(n+1)`
-/

namespace A209403.P16103501627896258050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014342 (n + 2) : ℚ) - (A143928 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A209403.P16103501627896258050

/-! ## A209403.P3525212002536476951

`A014342(n+2)-A143928(n+1)/A000040(n+2)`
-/

namespace A209403.P3525212002536476951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014342 (n + 2) : ℚ) - (A143928 (n + 1) : ℚ) / (A000040 (n + 2) : ℚ)

end

end A209403.P3525212002536476951

/-! ## A209403.P5622343779683835395

`A014342(n+2)-A001747(n+3)`
-/

namespace A209403.P5622343779683835395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014342 (n + 2) - A001747 (n + 3)

end

end A209403.P5622343779683835395

/-! ## A209403.P16274109555702804376

`∑[A343531(n+1)+A004525(A001749(n+1))]`
-/

namespace A209403.P16274109555702804376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343531 (n + 1) + A004525 (A001749 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209403.P16274109555702804376

/-!
# A209404: Negated coefficients of Chebyshev T polynomials: a(n) = -A053120(n+14, n), n >= 0.

The programs for A209404, the canonical program `A209404.P12353609741474841919` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209404 has offset 0).

The definition of A209404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209404.P12353609741474841919

`a(n-1)+A006976(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A209404

/-- `a(n-1)+A006976(n)+a(n-1)` -/
def P12353609741474841919.Spec : Prop :=
  ∀ n, P12353609741474841919.a n = A209404 n

theorem P12353609741474841919.correct : P12353609741474841919.Spec := by
  intro n
  simp only [A209404]

end A209404

/-! ## A209404.P16251369131154224119

`A082141(n)+A082140(n)%A082141(n)`
-/

namespace A209404.P16251369131154224119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 n + Int.tmod (A082140 n) (A082141 n)

end

end A209404.P16251369131154224119

namespace A209404

/-- `A082141(n)+A082140(n)%A082141(n)` -/
def P16251369131154224119.Spec : Prop :=
  ∀ n, P16251369131154224119.a n = A209404 n

end A209404

/-! ## A209404.P4016737250830772391

`∑[A006976(n)/A000079(n)]*A000079(n)`
-/

namespace A209404.P4016737250830772391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006976 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A209404.P4016737250830772391

namespace A209404

/-- `∑[A006976(n)/A000079(n)]*A000079(n)` -/
def P4016737250830772391.Spec : Prop :=
  ∀ n, P4016737250830772391.a n = (A209404 n : ℚ)

end A209404

/-! ## A209404.P10825432075254587321

`Δ[A082141(n)-A082140(n)]`
-/

namespace A209404.P10825432075254587321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 n - A082140 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209404.P10825432075254587321

namespace A209404

/-- `Δ[A082141(n)-A082140(n)]` -/
def P10825432075254587321.Spec : Prop :=
  ∀ n, P10825432075254587321.a n = A209404 n

end A209404

/-! ## A209404.P7480413147539253624

`(A082141(n+1)-A082139(n+1))/2`
-/

namespace A209404.P7480413147539253624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082141 (n + 1) - A082139 (n + 1) : ℚ) / 2

end

end A209404.P7480413147539253624

namespace A209404

/-- `(A082141(n+1)-A082139(n+1))/2` -/
def P7480413147539253624.Spec : Prop :=
  ∀ n, P7480413147539253624.a n = (A209404 n : ℚ)

end A209404

/-! ## A209404.P6911568057601395183

`A054851(n+7)+A082140(n)-A082141(n)`
-/

namespace A209404.P6911568057601395183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054851 (n + 7) + (A082140 n - A082141 n)

end

end A209404.P6911568057601395183

namespace A209404

/-- `A054851(n+7)+A082140(n)-A082141(n)` -/
def P6911568057601395183.Spec : Prop :=
  ∀ n, P6911568057601395183.a n = A209404 n

end A209404

/-!
# A209405: G.f.: 1/(1-x) = Sum_{n>=0} a(n)*x^n*Product_{k=1..n+1} (1-x^k).

The programs for A209405, there is no canonical definition to state claims against.
-/

/-! ## A209405.P16774190757949612771

`A265063(n)-A001222(A000667(n))`
-/

namespace A209405.P16774190757949612771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265063 n - A001222 (A000667 n).toNat

end

end A209405.P16774190757949612771

/-! ## A209405.P12541246299354529501

`record[A029931(A104434(n))]`
-/

namespace A209405.P12541246299354529501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A104434 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209405.P12541246299354529501

/-! ## A209405.P14807596470609078153

`A239235(A097097(n+1))`
-/

namespace A209405.P14807596470609078153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239235 (A097097 (n + 1)).toNat

end

end A209405.P14807596470609078153

/-! ## A209405.P11113124985989321254

`A193459(A148273(n+1))`
-/

namespace A209405.P11113124985989321254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193459 (A148273 (n + 1)).toNat

end

end A209405.P11113124985989321254

/-! ## A209405.P3917980656964777399

`A351594(n)+A344651(n²)`
-/

namespace A209405.P3917980656964777399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 n + A344651 (n ^ 2)

end

end A209405.P3917980656964777399

/-!
# A209407: Primes p(i) such that p(i+1)/p(i) > p(k+1)/p(k) for all k>i, where p(i) is the i-th prime.

The programs for A209407, there is no canonical definition to state claims against.
-/

/-! ## A209407.P9342232242644741263

`record[A130789(n+1)]`
-/

namespace A209407.P9342232242644741263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209407.P9342232242644741263

/-! ## A209407.P808874025991035501

`p?[record[A130789(A065033(n))]]`
-/

namespace A209407.P808874025991035501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130789 (A065033 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209407.P808874025991035501

/-! ## A209407.P5097719282907800923

`p?[record[A130789(A034887(n))]]`
-/

namespace A209407.P5097719282907800923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130789 (A034887 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209407.P5097719282907800923

/-! ## A209407.P10399279830813746347

`A008578(A277719(n+1))`
-/

namespace A209407.P10399279830813746347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A277719 (n + 1)).toNat

end

end A209407.P10399279830813746347

/-!
# A209408: Number of subsets of {1,...,n} containing {a,a+4} for some a.

The programs for A209408, there is no canonical definition to state claims against.
-/

/-! ## A209408.P6137169966774141402

`2^n-A031923(n+1)`
-/

namespace A209408.P6137169966774141402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A031923 (n + 1)

end

end A209408.P6137169966774141402

/-! ## A209408.P228881841057627245

`A000051(n)-(A031923(n+1)+1)`
-/

namespace A209408.P228881841057627245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A031923 (n + 1) + 1)

end

end A209408.P228881841057627245

/-! ## A209408.P13381015763465348676

`A006500(n)+A209399(n)-A031923(n+1)`
-/

namespace A209408.P13381015763465348676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006500 n + (A209399 n - A031923 (n + 1))

end

end A209408.P13381015763465348676

/-! ## A209408.P17405029784111267615

`A164387(n)+A209400(n)-A031923(n+1)`
-/

namespace A209408.P17405029784111267615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 n + (A209400 n - A031923 (n + 1))

end

end A209408.P17405029784111267615

/-! ## A209408.P8577879285099117425

`A209409(n)+A209410(n)-A031923(n+1)`
-/

namespace A209408.P8577879285099117425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209409 n + (A209410 n - A031923 (n + 1))

end

end A209408.P8577879285099117425

/-! ## A209408.P15814809540612388716

`A209436(A167614(n+2))`
-/

namespace A209408.P15814809540612388716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (A167614 (n + 2)).toNat

end

end A209408.P15814809540612388716

/-! ## A209408.P408269400912242241

`A209436(A340266(n+2)+1)`
-/

namespace A209408.P408269400912242241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (A340266 (n + 2) + 1).toNat

end

end A209408.P408269400912242241

/-!
# A209409: Number of subsets of {1,...,n} containing {a,a+2,a+4} for some a.

The programs for A209409, there is no canonical definition to state claims against.
-/

/-! ## A209409.P12285117680654461025

`2^n-A209410(n)`
-/

namespace A209409.P12285117680654461025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A209410 n

end

end A209409.P12285117680654461025

/-! ## A209409.P9079259524687141734

`abs(A000079(n)-A209410(n))`
-/

namespace A209409.P9079259524687141734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A209410 n|

end

end A209409.P9079259524687141734

/-! ## A209409.P6292179221614950307

`and(-A209410(n), A000225(n))`
-/

namespace A209409.P6292179221614950307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A209410 n) (A000225 n)

end

end A209409.P6292179221614950307

/-! ## A209409.P1617752179702802916

`and(-A209410(n), record[A302029(n+1)])`
-/

namespace A209409.P1617752179702802916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A209410 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A209409.P1617752179702802916

/-! ## A209409.P12436613896221134090

`A031923(n+1)+A209408(n)-A209410(n)`
-/

namespace A209409.P12436613896221134090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 1) + (A209408 n - A209410 n)

end

end A209409.P12436613896221134090

/-! ## A209409.P1441899159119481510

`A000225(n+1)%(A209410(n)+A000225(n))`
-/

namespace A209409.P1441899159119481510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (A209410 n + A000225 n)

end

end A209409.P1441899159119481510

/-!
# A209410: Number of subsets of {1,...,n} not containing {a,a+2,a+4} for any a.

The programs for A209410, there is no canonical definition to state claims against.
-/

/-! ## A209410.P15489773142723329945

`2^n-A209409(n)`
-/

namespace A209410.P15489773142723329945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A209409 n

end

end A209410.P15489773142723329945

/-! ## A209410.P12836299135730685995

`abs(A000079(n)-A209409(n))`
-/

namespace A209410.P12836299135730685995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A209409 n|

end

end A209410.P12836299135730685995

/-! ## A209410.P18000036234604296127

`abs(A171449(n)-A209409(n))`
-/

namespace A209410.P18000036234604296127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n - A209409 n|

end

end A209410.P18000036234604296127

/-! ## A209410.P3640062827409777708

`abs(A016116(2*n)-A209409(n))`
-/

namespace A209410.P3640062827409777708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 (2 * n) - A209409 n|

end

end A209410.P3640062827409777708

/-! ## A209410.P9665076848427025346

`(A000079(n)-A209409(n))%∑[A001644(n)]`
-/

namespace A209410.P9665076848427025346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A209409 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209410.P9665076848427025346

/-! ## A209410.P13377559298226941640

`A031923(n+1)+A209408(n)-A209409(n)`
-/

namespace A209410.P13377559298226941640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 1) + (A209408 n - A209409 n)

end

end A209410.P13377559298226941640

/-! ## A209410.P15147208450418830411

`A109043(n)%2+A000079(n)-A209409(n)`
-/

namespace A209410.P15147208450418830411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109043 n) 2 + (A000079 n - A209409 n)

end

end A209410.P15147208450418830411

/-! ## A209410.P11096132622208047592

`A292077(4*n+1)+A000079(n)-A209409(n)`
-/

namespace A209410.P11096132622208047592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (4 * n + 1) + (A000079 n - A209409 n)

end

end A209410.P11096132622208047592

/-! ## A209410.P15455971492868907071

`abs(A074323(2*n+1)-A209409(n))`
-/

namespace A209410.P15455971492868907071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074323 (2 * n + 1) - A209409 n|

end

end A209410.P15455971492868907071

/-! ## A209410.P14516275521426033017

`A083914(A246314(n))+A000079(n)-A209409(n)`
-/

namespace A209410.P14516275521426033017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (A246314 n).toNat + (A000079 n - A209409 n)

end

end A209410.P14516275521426033017

/-!
# A209411: Number of 2 x 2 matrices M such that M*transpose(M) == 0 mod n.

The programs for A209411, there is no canonical definition to state claims against.
-/

/-! ## A209411.P6250509333204788150

`and(A055265(n+1), A128346(n+1))²`
-/

namespace A209411.P6250509333204788150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055265 (n + 1)) (A128346 (n + 1)) ^ 2

end

end A209411.P6250509333204788150

/-! ## A209411.P12762085242767304352

`gcd(A064554(n+1), A188151(A007097(n)))²`
-/

namespace A209411.P12762085242767304352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064554 (n + 1)) (A188151 (A007097 n).toNat) ^ 2

end

end A209411.P12762085242767304352

/-!
# A209413: Triangle of coefficients of polynomials v(n,x) jointly generated with A209172; see the Formula section.

The programs for A209413, there is no canonical definition to state claims against.
-/

/-! ## A209413.P14076125718172556601

`A140069(gcd(A010816(n), A038722(n+1)))`
-/

namespace A209413.P14076125718172556601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140069 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A209413.P14076125718172556601

/-! ## A209413.P4727847044068955338

`A140069(∑[char[∑[n]]]²-n)`
-/

namespace A209413.P4727847044068955338
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140069 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A209413.P4727847044068955338

/-! ## A209413.P8214402286911338038

`A140069(A038722(n+1))^A035214(n)`
-/

namespace A209413.P8214402286911338038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140069 (A038722 (n + 1)).toNat : ℚ) ^ (A035214 n : ℤ)

end

end A209413.P8214402286911338038

/-! ## A209413.P16906652795786362146

`gcd(A000038(n), A140069(A038722(n+1)))`
-/

namespace A209413.P16906652795786362146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A140069 (A038722 (n + 1)).toNat)

end

end A209413.P16906652795786362146

/-! ## A209413.P13413105539555057675

`or(A000007(n), A140069(A038722(n+1)))`
-/

namespace A209413.P13413105539555057675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A140069 (A038722 (n + 1)).toNat)

end

end A209413.P13413105539555057675

/-!
# A209414: Triangle of coefficients of polynomials u(n,x) jointly generated with A112351; see the Formula section.

The programs for A209414, there is no canonical definition to state claims against.
-/

/-! ## A209414.P10770691328162672648

`A114188(A061579(n-char[∑[n+1]]))`
-/

namespace A209414.P10770691328162672648
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A061579 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A209414.P10770691328162672648

/-! ## A209414.P6838827906106650558

`A114188(A002378(n)%A080036(n))`
-/

namespace A209414.P6838827906106650558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A209414.P6838827906106650558

/-! ## A209414.P13417242431883013120

`abs(A110511(A061579(n)))`
-/

namespace A209414.P13417242431883013120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110511 (A061579 n).toNat|

end

end A209414.P13417242431883013120

/-! ## A209414.P11968537033271004712

`A114188(A038722(n+1)-1)`
-/

namespace A209414.P11968537033271004712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A038722 (n + 1) - 1).toNat

end

end A209414.P11968537033271004712

/-! ## A209414.P8217650007830565299

`abs(A110511(A038722(n+1)-1))`
-/

namespace A209414.P8217650007830565299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110511 (A038722 (n + 1) - 1).toNat|

end

end A209414.P8217650007830565299

/-! ## A209414.P9270553581436466605

`gcd(A000038(n), A110511(A061579(n)))`
-/

namespace A209414.P9270553581436466605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110511 (A061579 n).toNat)

end

end A209414.P9270553581436466605

/-! ## A209414.P8646808365225423472

`lcm(A020985(n), A110511(A061579(n)))`
-/

namespace A209414.P8646808365225423472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A110511 (A061579 n).toNat)

end

end A209414.P8646808365225423472

/-! ## A209414.P8973169497750899213

`A114188(2*A061579(n)-A061579(n))`
-/

namespace A209414.P8973169497750899213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (2 * A061579 n - A061579 n).toNat

end

end A209414.P8973169497750899213

/-! ## A209414.P12303011948723241850

`A114188(A038722(n+2))`
-/

namespace A209414.P12303011948723241850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A038722 (n + 2)).toNat

end

end A209414.P12303011948723241850

/-! ## A209414.P3505247944213943195

`A114188(A061579(n+1)+1)`
-/

namespace A209414.P3505247944213943195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (A061579 (n + 1) + 1).toNat

end

end A209414.P3505247944213943195

/-! ## A209414.P10157975048547260994

`A114188(∑[n])*A114188(A061579(n))`
-/

namespace A209414.P10157975048547260994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (∑ j ∈ Finset.range (n + 1), f1 j) * A114188 (A061579 n).toNat

end

end A209414.P10157975048547260994

/-! ## A209414.P15630082279314753657

`A114188(A061579(n)/A114188(∑[n]))`
-/

namespace A209414.P15630082279314753657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114188 (SequenceMachineLib.roundAway ((A061579 n : ℚ) / (A114188 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A209414.P15630082279314753657

/-!
# A209415: Triangle of coefficients of polynomials u(n,x) jointly generated with A209416; see the Formula section.

The programs for A209415, there is no canonical definition to state claims against.
-/

/-! ## A209415.P17778543659031832204

`A208334(A056943(n)+A002024(n+1))`
-/

namespace A209415.P17778543659031832204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (A056943 n + A002024 (n + 1)).toNat

end

end A209415.P17778543659031832204

/-! ## A209415.P4908008143609356191

`A208334(A007401(n+1)-A056944(n))`
-/

namespace A209415.P4908008143609356191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (A007401 (n + 1) - A056944 n).toNat

end

end A209415.P4908008143609356191

/-! ## A209415.P2499400775177740409

`A208334(gcd(A010816(n), A038722(n+1)))`
-/

namespace A209415.P2499400775177740409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A209415.P2499400775177740409

/-! ## A209415.P13964520707710889675

`A208334(A038722(n+1))`
-/

namespace A209415.P13964520707710889675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (A038722 (n + 1)).toNat

end

end A209415.P13964520707710889675

/-! ## A209415.P16639294042630255750

`A208334(A061579(n)+1)`
-/

namespace A209415.P16639294042630255750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (A061579 n + 1).toNat

end

end A209415.P16639294042630255750

/-! ## A209415.P2458297880832789116

`A208334(A002024(n+1)²-n)`
-/

namespace A209415.P2458297880832789116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208334 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A209415.P2458297880832789116

/-!
# A209416: Triangle of coefficients of polynomials v(n,x) jointly generated with A209415; see the Formula section.

The programs for A209416, there is no canonical definition to state claims against.
-/

/-! ## A209416.P13164959859655651917

`A208335(gcd(A010816(n), A038722(n+1)))`
-/

namespace A209416.P13164959859655651917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208335 (Int.gcd (A010816 n) (A038722 (n + 1)))

end

end A209416.P13164959859655651917

/-! ## A209416.P7755526732084427202

`A208335(A038722(n+1))`
-/

namespace A209416.P7755526732084427202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208335 (A038722 (n + 1)).toNat

end

end A209416.P7755526732084427202

/-! ## A209416.P4855490870290634374

`A208335(A061579(n)+1)`
-/

namespace A209416.P4855490870290634374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208335 (A061579 n + 1).toNat

end

end A209416.P4855490870290634374

/-! ## A209416.P17303433752316416739

`A208335(A114327(n)+1+n)`
-/

namespace A209416.P17303433752316416739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208335 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209416.P17303433752316416739

/-! ## A209416.P10661465150095149447

`A208335(A093995(n+1)-n)`
-/

namespace A209416.P10661465150095149447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208335 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209416.P10661465150095149447

/-!
# A209417: Triangle of coefficients of polynomials u(n,x) jointly generated with A209418; see the Formula section.

The programs for A209417, there is no canonical definition to state claims against.
-/

/-! ## A209417.P10393252663434942614

`2*A013609(n)-A209418(n+1)`
-/

namespace A209417.P10393252663434942614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A209418 (n + 1)

end

end A209417.P10393252663434942614

/-! ## A209417.P18096189581959233468

`abs(2*A303872(n))-A209418(n+1)`
-/

namespace A209417.P18096189581959233468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A303872 n| - A209418 (n + 1)

end

end A209417.P18096189581959233468

/-! ## A209417.P9371650917356249810

`A209751(n+1)+A209752(n+1)-A210234(n+1)`
-/

namespace A209417.P9371650917356249810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209751 (n + 1) + (A209752 (n + 1) - A210234 (n + 1))

end

end A209417.P9371650917356249810

/-! ## A209417.P9213529110559651186

`A005843(A007318(n))*A059268(n)-A209418(n+1)`
-/

namespace A209417.P9213529110559651186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat * A059268 n - A209418 (n + 1)

end

end A209417.P9213529110559651186

/-! ## A209417.P11096767542982432037

`A004277(A013609(n))-A209418(n+1)`
-/

namespace A209417.P11096767542982432037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A013609 n).toNat - A209418 (n + 1)

end

end A209417.P11096767542982432037

/-! ## A209417.P1693615345157474011

`A005843(abs(A303872(n)))-A209418(n+1)`
-/

namespace A209417.P1693615345157474011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A303872 n|.toNat - A209418 (n + 1)

end

end A209417.P1693615345157474011

/-! ## A209417.P10558185725094783985

`A005843(A182059(n)+A073424(n))-A209418(n+1)`
-/

namespace A209417.P10558185725094783985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A182059 n + A073424 n).toNat - A209418 (n + 1)

end

end A209417.P10558185725094783985

/-! ## A209417.P6647351656865310908

`A005843(A013611(n)/A059268(n))-A209418(n+1)`
-/

namespace A209417.P6647351656865310908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A013611 n : ℚ) / (A059268 n : ℚ))).toNat - A209418 (n + 1)

end

end A209417.P6647351656865310908

/-! ## A209417.P16832698169303907390

`A005843(lcm(A007318(n), A303872(n)))-A209418(n+1)`
-/

namespace A209417.P16832698169303907390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm (A007318 n) (A303872 n)) - A209418 (n + 1)

end

end A209417.P16832698169303907390

/-! ## A209417.P17060991476324341640

`A005843((A014473(n)+1)*A059268(n))-A209418(n+1)`
-/

namespace A209417.P17060991476324341640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((A014473 n + 1) * A059268 n).toNat - A209418 (n + 1)

end

end A209417.P17060991476324341640

/-!
# A209418: Triangle of coefficients of polynomials v(n,x) jointly generated with A209417; see the Formula section.

The programs for A209418, there is no canonical definition to state claims against.
-/

/-! ## A209418.P2368522230842123036

`2*A013609(n)-A209417(n+1)`
-/

namespace A209418.P2368522230842123036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013609 n - A209417 (n + 1)

end

end A209418.P2368522230842123036

/-! ## A209418.P1166635988818740273

`abs(2*A303872(n))-A209417(n+1)`
-/

namespace A209418.P1166635988818740273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A303872 n| - A209417 (n + 1)

end

end A209418.P1166635988818740273

/-! ## A209418.P5681880095265547331

`A013609(n)+abs(A303872(n))-A209417(n+1)`
-/

namespace A209418.P5681880095265547331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (|A303872 n| - A209417 (n + 1))

end

end A209418.P5681880095265547331

/-! ## A209418.P16491987985831353282

`A013609(n)-A209417(n+1)+A182059(n)+A073424(n)`
-/

namespace A209418.P16491987985831353282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n - A209417 (n + 1) + (A182059 n + A073424 n)

end

end A209418.P16491987985831353282

/-! ## A209418.P1498973194921804675

`2*A038207(A061579(n))-A209417(n+1)`
-/

namespace A209418.P1498973194921804675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038207 (A061579 n).toNat - A209417 (n + 1)

end

end A209418.P1498973194921804675

/-! ## A209418.P13142249067167047690

`A013609(n)+A038207(A061579(n))-A209417(n+1)`
-/

namespace A209418.P13142249067167047690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n + (A038207 (A061579 n).toNat - A209417 (n + 1))

end

end A209418.P13142249067167047690

/-! ## A209418.P12036693404338925337

`A005843(A007318(n))*A059268(n)-A209417(n+1)`
-/

namespace A209418.P12036693404338925337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat * A059268 n - A209417 (n + 1)

end

end A209418.P12036693404338925337

/-! ## A209418.P11551304704430582497

`A004277(A013609(n))-A209417(n+1)`
-/

namespace A209418.P11551304704430582497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A013609 n).toNat - A209417 (n + 1)

end

end A209418.P11551304704430582497

/-! ## A209418.P13390923202045237843

`A005843(abs(A303872(n)))-A209417(n+1)`
-/

namespace A209418.P13390923202045237843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 |A303872 n|.toNat - A209417 (n + 1)

end

end A209418.P13390923202045237843

/-! ## A209418.P7887805154754983798

`A005843(lcm(A007318(n), A303872(n)))-A209417(n+1)`
-/

namespace A209418.P7887805154754983798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm (A007318 n) (A303872 n)) - A209417 (n + 1)

end

end A209418.P7887805154754983798

/-!
# A209419: Triangle of coefficients of polynomials u(n,x) jointly generated with A209420; see the Formula section.

The programs for A209419, there is no canonical definition to state claims against.
-/

/-! ## A209419.P16463987952356345864

`A209420(n+1)-A234713(n)`
-/

namespace A209419.P16463987952356345864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (n + 1) - A234713 n

end

end A209419.P16463987952356345864

/-! ## A209419.P173595619246511285

`A209420(n+1)+A209583(n+1)-A209999(n+1)`
-/

namespace A209419.P173595619246511285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209420 (n + 1) + (A209583 (n + 1) - A209999 (n + 1))

end

end A209419.P173595619246511285

/-! ## A209419.P10754130044095680106

`A202390(A061579(n))`
-/

namespace A209419.P10754130044095680106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (A061579 n).toNat

end

end A209419.P10754130044095680106

/-! ## A209419.P11050559520426173283

`A202390(A114327(n)+n)`
-/

namespace A209419.P11050559520426173283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (A114327 n + (n : ℤ)).toNat

end

end A209419.P11050559520426173283

/-! ## A209419.P9167019574384433485

`A202390(∑[A198954(n)-1])`
-/

namespace A209419.P9167019574384433485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A209419.P9167019574384433485

/-! ## A209419.P12487610227976675692

`A202390(A038722(n+1)-1)`
-/

namespace A209419.P12487610227976675692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (A038722 (n + 1) - 1).toNat

end

end A209419.P12487610227976675692

/-! ## A209419.P12651500747773254483

`A202390(A002024(n+1)²-(n+1))`
-/

namespace A209419.P12651500747773254483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A209419.P12651500747773254483

/-! ## A209419.P12255141863063285792

`A202390(A002378(n)%A014132(n+1))`
-/

namespace A209419.P12255141863063285792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A209419.P12255141863063285792

/-! ## A209419.P4589849542791319154

`A202390(A038722(n+2))`
-/

namespace A209419.P4589849542791319154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202390 (A038722 (n + 2)).toNat

end

end A209419.P4589849542791319154

/-!
# A209420: Triangle of coefficients of polynomials v(n,x) jointly generated with A209419; see the Formula section.

The programs for A209420, there is no canonical definition to state claims against.
-/

/-! ## A209420.P1267732151899750162

`A234713(n)+A209419(n+1)`
-/

namespace A209420.P1267732151899750162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234713 n + A209419 (n + 1)

end

end A209420.P1267732151899750162

/-! ## A209420.P12662173526218642377

`A208340(A038722(n+1))`
-/

namespace A209420.P12662173526218642377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208340 (A038722 (n + 1)).toNat

end

end A209420.P12662173526218642377

/-! ## A209420.P17070967304029572130

`A208340(A061579(n)+1)`
-/

namespace A209420.P17070967304029572130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208340 (A061579 n + 1).toNat

end

end A209420.P17070967304029572130

/-! ## A209420.P3974715050976308863

`A208340(A114327(n)+1+n)`
-/

namespace A209420.P3974715050976308863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208340 (A114327 n + 1 + (n : ℤ)).toNat

end

end A209420.P3974715050976308863

/-! ## A209420.P7560419344945310522

`A208340(A093995(n+1)-n)`
-/

namespace A209420.P7560419344945310522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208340 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A209420.P7560419344945310522

/-!
# A209421: Triangle of coefficients of polynomials u(n,x) jointly generated with A209422; see the Formula section.

The programs for A209421, there is no canonical definition to state claims against.
-/

/-! ## A209421.P9900788836209914359

`A117806(A204849(n)²)`
-/

namespace A209421.P9900788836209914359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117806 (A204849 n ^ 2).toNat

end

end A209421.P9900788836209914359

/-! ## A209421.P17624338401452547294

`A075172(A078536(n+1))`
-/

namespace A209421.P17624338401452547294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075172 (A078536 (n + 1)).toNat

end

end A209421.P17624338401452547294

/-! ## A209421.P11981451510563894848

`A212356(A111820(n+1))`
-/

namespace A209421.P11981451510563894848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212356 (A111820 (n + 1)).toNat

end

end A209421.P11981451510563894848

/-! ## A209421.P6180308267722234017

`A198194(A336859(n+1))`
-/

namespace A209421.P6180308267722234017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198194 (A336859 (n + 1)).toNat

end

end A209421.P6180308267722234017

/-! ## A209421.P15265223997803709026

`A094634(A143670(n+2))`
-/

namespace A209421.P15265223997803709026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094634 (A143670 (n + 2)).toNat

end

end A209421.P15265223997803709026

/-!
# A209423: Difference between the number of odd parts and the number of even parts in all the partitions of n.

The programs for A209423, there is no canonical definition to state claims against.
-/

/-! ## A209423.P9710715036233055909

`A305121(n+1)+A305123(n+1)`
-/

namespace A209423.P9710715036233055909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305121 (n + 1) + A305123 (n + 1)

end

end A209423.P9710715036233055909

/-! ## A209423.P13282139387309286335

`A066897(n+1)-A066898(n+1)`
-/

namespace A209423.P13282139387309286335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) - A066898 (n + 1)

end

end A209423.P13282139387309286335

/-! ## A209423.P4663532964870643739

`A000070(n)-A264400(n+1)`
-/

namespace A209423.P4663532964870643739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - A264400 (n + 1)

end

end A209423.P4663532964870643739

/-! ## A209423.P12567466358814694943

`A006128(n+1)-2*A066898(n+1)`
-/

namespace A209423.P12567466358814694943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - 2 * A066898 (n + 1)

end

end A209423.P12567466358814694943

/-! ## A209423.P16037652621374456554

`A066897(n+1)+A066897(n+1)-A006128(n+1)`
-/

namespace A209423.P16037652621374456554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) + (A066897 (n + 1) - A006128 (n + 1))

end

end A209423.P16037652621374456554

/-! ## A209423.P3453287080304863426

`A090868(2*(n+1))-A066898(n+1)`
-/

namespace A209423.P3453287080304863426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090868 (2 * (n + 1)) - A066898 (n + 1)

end

end A209423.P3453287080304863426

/-! ## A209423.P12723437199491317433

`2*A090868(2*(n+1))-A006128(n+1)`
-/

namespace A209423.P12723437199491317433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090868 (2 * (n + 1)) - A006128 (n + 1)

end

end A209423.P12723437199491317433

/-! ## A209423.P12313669250186214416

`A325771(2*(n+1))-A066898(n+1)`
-/

namespace A209423.P12313669250186214416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325771 (2 * (n + 1)) - A066898 (n + 1)

end

end A209423.P12313669250186214416

/-! ## A209423.P14271678271653741038

`A066897(n+1)-A325771(2*n+1)`
-/

namespace A209423.P14271678271653741038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066897 (n + 1) - A325771 (2 * n + 1)

end

end A209423.P14271678271653741038

/-! ## A209423.P5679425127172185327

`record[A325771(n+2)]-A325771(2*n+1)`
-/

namespace A209423.P5679425127172185327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325771 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A325771 (2 * n + 1)

end

end A209423.P5679425127172185327

/-!
# A209424: Triangle defined by g.f.: A(x,y) = exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n, k)^n * y^k ), as read by rows.

The programs for A209424, there is no canonical definition to state claims against.
-/

/-! ## A209424.P2840149040401643293

`A018343(A098568(n))`
-/

namespace A209424.P2840149040401643293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018343 (A098568 n).toNat

end

end A209424.P2840149040401643293

/-! ## A209424.P7644417583292450672

`A004438(A156584(n))`
-/

namespace A209424.P7644417583292450672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (A156584 n).toNat

end

end A209424.P7644417583292450672

/-! ## A209424.P6956093562420680400

`A129525(A045912(n))`
-/

namespace A209424.P6956093562420680400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129525 (A045912 n).toNat

end

end A209424.P6956093562420680400

/-! ## A209424.P6457834567229802426

`A036805(A173043(n))`
-/

namespace A209424.P6457834567229802426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036805 (A173043 n).toNat

end

end A209424.P6457834567229802426

/-! ## A209424.P12701110795852129567

`A141472(A118185(n))`
-/

namespace A209424.P12701110795852129567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141472 (A118185 n).toNat

end

end A209424.P12701110795852129567

/-!
# A209425: Column 2 of triangle A209424.

The programs for A209425, there is no canonical definition to state claims against.
-/

/-! ## A209425.P8367963802846403936

`A209424(∑[n+3])`
-/

namespace A209425.P8367963802846403936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209425.P8367963802846403936

/-! ## A209425.P8264664107821318144

`A209424(A141214(n))+A055965(n)`
-/

namespace A209425.P8264664107821318144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209424 (A141214 n).toNat + A055965 n

end

end A209425.P8264664107821318144

/-! ## A209425.P2642198093321397085

`A326545(n)+A209424(A141214(n))`
-/

namespace A209425.P2642198093321397085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A209424 (A141214 n).toNat

end

end A209425.P2642198093321397085

/-! ## A209425.P17794513194250917045

`A152851(n)*A209424(A141214(n))`
-/

namespace A209425.P17794513194250917045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A209424 (A141214 n).toNat

end

end A209425.P17794513194250917045

/-! ## A209425.P11462864460577633308

`or(A079979(n), A209424(A141214(n)))`
-/

namespace A209425.P11462864460577633308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A079979 n) (A209424 (A141214 n).toNat)

end

end A209425.P11462864460577633308

/-!
# A209426: Central terms of triangle A209424.

The programs for A209426, there is no canonical definition to state claims against.
-/

/-! ## A209426.P1230781724648962620

`A209424(∑[4*n])`
-/

namespace A209426.P1230781724648962620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209426.P1230781724648962620

/-! ## A209426.P3781488881271705508

`record[A003982(n)*A209424(n)]`
-/

namespace A209426.P3781488881271705508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A209424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209426.P3781488881271705508

/-! ## A209426.P2544862256651766079

`record[gcd(A008482(n), A209424(n))]`
-/

namespace A209426.P2544862256651766079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A209424 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209426.P2544862256651766079

/-! ## A209426.P4647824963140170822

`xor(A000038(2*n+2), A209424(A046092(n)))`
-/

namespace A209426.P4647824963140170822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (2 * n + 2)) (A209424 (A046092 n).toNat)

end

end A209426.P4647824963140170822

/-!
# A209427: T(n,k) = binomial(n,k)^n.

The programs for A209427, the canonical program `A209427.P3656500487483528647` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209427 has offset 0).

The definition of A209427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 218 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209427.P3656500487483528647

`A007318(n)^∑[char[∑[n+1]]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209427

/-- `A007318(n)^∑[char[∑[n+1]]]` -/
def P3656500487483528647.Spec : Prop :=
  ∀ n, P3656500487483528647.a n = A209427 n

theorem P3656500487483528647.correct : P3656500487483528647.Spec := by
  intro n
  simp only [A209427]

end A209427

/-! ## A209427.P15960707159237050259

`(A014473(n)+1)^∑[char[∑[n+1]]]`
-/

namespace A209427.P15960707159237050259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209427.P15960707159237050259

namespace A209427

/-- `(A014473(n)+1)^∑[char[∑[n+1]]]` -/
def P15960707159237050259.Spec : Prop :=
  ∀ n, P15960707159237050259.a n = A209427 n

end A209427

/-! ## A209427.P5114520447541772276

`A008459(n)^(∑[char[∑[n+1]]]/2)`
-/

namespace A209427.P5114520447541772276
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008459 n : ℝ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 : ℝ)

end

end A209427.P5114520447541772276

namespace A209427

/-- `A008459(n)^(∑[char[∑[n+1]]]/2)` -/
def P5114520447541772276.Spec : Prop :=
  ∀ n, P5114520447541772276.a n = (A209427 n : ℝ)

end A209427

/-! ## A209427.P4498018427846858539

`((A131063(n)+4)/5)^∑[char[∑[n+1]]]`
-/

namespace A209427.P4498018427846858539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A131063 n + 4 : ℚ) / 5) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209427.P4498018427846858539

namespace A209427

/-- `((A131063(n)+4)/5)^∑[char[∑[n+1]]]` -/
def P4498018427846858539.Spec : Prop :=
  ∀ n, P4498018427846858539.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P11125570797032220515

`abs(A108086(n)^A003056(n))`
-/

namespace A209427.P11125570797032220515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A108086 n : ℚ) ^ (A003056 n : ℤ)|

end

end A209427.P11125570797032220515

namespace A209427

/-- `abs(A108086(n)^A003056(n))` -/
def P11125570797032220515.Spec : Prop :=
  ∀ n, P11125570797032220515.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P7757972463287762307

`abs(A130595(n)^A003056(n))`
-/

namespace A209427.P7757972463287762307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A130595 n : ℚ) ^ (A003056 n : ℤ)|

end

end A209427.P7757972463287762307

namespace A209427

/-- `abs(A130595(n)^A003056(n))` -/
def P7757972463287762307.Spec : Prop :=
  ∀ n, P7757972463287762307.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P17393097516861317099

`sqrt(A008459(n))^A003056(n)`
-/

namespace A209427.P17393097516861317099
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) ^ (A003056 n : ℤ)

end

end A209427.P17393097516861317099

namespace A209427

/-- `sqrt(A008459(n))^A003056(n)` -/
def P17393097516861317099.Spec : Prop :=
  ∀ n, P17393097516861317099.a n = (A209427 n : ℝ)

end A209427

/-! ## A209427.P10108224404359885350

`sqrt(A007318(n))^A279891(n)`
-/

namespace A209427.P10108224404359885350
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007318 n : ℝ) ^ (A279891 n : ℤ)

end

end A209427.P10108224404359885350

namespace A209427

/-- `sqrt(A007318(n))^A279891(n)` -/
def P10108224404359885350.Spec : Prop :=
  ∀ n, P10108224404359885350.a n = (A209427 n : ℝ)

end A209427

/-! ## A209427.P17855571863271540911

`A137688(n)^log2(A007318(n))`
-/

namespace A209427.P17855571863271540911
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A137688 n : ℝ) ^ (Real.logb 2 (A007318 n : ℝ))

end

end A209427.P17855571863271540911

namespace A209427

/-- `A137688(n)^log2(A007318(n))` -/
def P17855571863271540911.Spec : Prop :=
  ∀ n, P17855571863271540911.a n = (A209427 n : ℝ)

end A209427

/-! ## A209427.P4740058422862934648

`Δ[A102363(n)]^A003056(n)`
-/

namespace A209427.P4740058422862934648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A003056 n : ℤ)

end

end A209427.P4740058422862934648

namespace A209427

/-- `Δ[A102363(n)]^A003056(n)` -/
def P4740058422862934648.Spec : Prop :=
  ∀ n, P4740058422862934648.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P4132848158970659559

`(A028326(n)/2)^A003056(n)`
-/

namespace A209427.P4132848158970659559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028326 n : ℚ) / 2) ^ (A003056 n : ℤ)

end

end A209427.P4132848158970659559

namespace A209427

/-- `(A028326(n)/2)^A003056(n)` -/
def P4132848158970659559.Spec : Prop :=
  ∀ n, P4132848158970659559.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P2460654023207248859

`(A134059(n)/3)^A003056(n)`
-/

namespace A209427.P2460654023207248859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A134059 n : ℚ) / 3) ^ (A003056 n : ℤ)

end

end A209427.P2460654023207248859

namespace A209427

/-- `(A134059(n)/3)^A003056(n)` -/
def P2460654023207248859.Spec : Prop :=
  ∀ n, P2460654023207248859.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P10711247325390793133

`sqrt(A008459(n))^Δ[A006463(n)]`
-/

namespace A209427.P10711247325390793133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A209427.P10711247325390793133

namespace A209427

/-- `sqrt(A008459(n))^Δ[A006463(n)]` -/
def P10711247325390793133.Spec : Prop :=
  ∀ n, P10711247325390793133.a n = (A209427 n : ℝ)

end A209427

/-! ## A209427.P3151672158402641702

`ceil(A007318(n)^Δ[A006463(n)])`
-/

namespace A209427.P3151672158402641702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007318 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌉

end

end A209427.P3151672158402641702

namespace A209427

/-- `ceil(A007318(n)^Δ[A006463(n)])` -/
def P3151672158402641702.Spec : Prop :=
  ∀ n, P3151672158402641702.a n = A209427 n

end A209427

/-! ## A209427.P9526186296871795740

`Δ[A102363(n)]^∑[A023531(n)]`
-/

namespace A209427.P9526186296871795740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A209427.P9526186296871795740

namespace A209427

/-- `Δ[A102363(n)]^∑[A023531(n)]` -/
def P9526186296871795740.Spec : Prop :=
  ∀ n, P9526186296871795740.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P11066652573439269003

`A193554(comp[∑[n]])^A003056(n)`
-/

namespace A209427.P11066652573439269003
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193554 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (A003056 n : ℤ)

end

end A209427.P11066652573439269003

namespace A209427

/-- `A193554(comp[∑[n]])^A003056(n)` -/
def P11066652573439269003.Spec : Prop :=
  ∀ n, P11066652573439269003.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P6148257904249845413

`sqrt(A007318(n))^(A131507(n)-1)`
-/

namespace A209427.P6148257904249845413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A007318 n : ℝ) ^ (A131507 n - 1 : ℤ)

end

end A209427.P6148257904249845413

namespace A209427

/-- `sqrt(A007318(n))^(A131507(n)-1)` -/
def P6148257904249845413.Spec : Prop :=
  ∀ n, P6148257904249845413.a n = (A209427 n : ℝ)

end A209427

/-! ## A209427.P7233439370676928626

`ceil(A134060(n)/3)^A003056(n)`
-/

namespace A209427.P7233439370676928626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A134060 n : ℚ) / 3⌉ : ℚ) ^ (A003056 n : ℤ)

end

end A209427.P7233439370676928626

namespace A209427

/-- `ceil(A134060(n)/3)^A003056(n)` -/
def P7233439370676928626.Spec : Prop :=
  ∀ n, P7233439370676928626.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P7472993592822976069

`ceil(A135087(n)/4)^A003056(n)`
-/

namespace A209427.P7472993592822976069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A135087 n : ℚ) / 4⌉ : ℚ) ^ (A003056 n : ℤ)

end

end A209427.P7472993592822976069

namespace A209427

/-- `ceil(A135087(n)/4)^A003056(n)` -/
def P7472993592822976069.Spec : Prop :=
  ∀ n, P7472993592822976069.a n = (A209427 n : ℚ)

end A209427

/-! ## A209427.P15452880514388051282

`floor((A014473(n)+1)^(∑[A000005(8*n+1)%2]-1))`
-/

namespace A209427.P15452880514388051282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (8 * n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014473 n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ)⌋

end

end A209427.P15452880514388051282

namespace A209427

/-- `floor((A014473(n)+1)^(∑[A000005(8*n+1)%2]-1))` -/
def P15452880514388051282.Spec : Prop :=
  ∀ n, P15452880514388051282.a n = A209427 n

end A209427

/-!
# A209428: a(n) = Sum_{k=0..[n/2]} binomial(n-k,k)^(n-k).

The programs for A209428, there is no canonical definition to state claims against.
-/

/-! ## A209428.P15438746933134938376

`A108141(A003087(n))`
-/

namespace A209428.P15438746933134938376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A003087 n).toNat

end

end A209428.P15438746933134938376

/-! ## A209428.P17642381603872515659

`A174302(A051291(n))`
-/

namespace A209428.P17642381603872515659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174302 (A051291 n).toNat

end

end A209428.P17642381603872515659

/-!
# A209429: Numerator of l(n), where l(1)=1, l(2)=2, l(n)=l(n-1)+2*l(n-2)/n.

The programs for A209429, there is no canonical definition to state claims against.
-/

/-! ## A209429.P11513140133403938034

`A245300(n)+A089692(A000165(n))`
-/

namespace A209429.P11513140133403938034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n + A089692 (A000165 n).toNat

end

end A209429.P11513140133403938034

/-! ## A209429.P11266645712377374262

`A070165(A015128(n)*A143740(n))`
-/

namespace A209429.P11266645712377374262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070165 (A015128 n * A143740 n).toNat

end

end A209429.P11266645712377374262

/-!
# A209430: Denominator of l(n), where l(1)=1, l(2)=2, l(n)=l(n-1)+2*l(n-2)/n.

The programs for A209430, there is no canonical definition to state claims against.
-/

/-! ## A209430.P4694962343962863862

`lcm(A160604(A187829(n+1)), A160612(n))`
-/

namespace A209430.P4694962343962863862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A160604 (A187829 (n + 1)).toNat) (A160612 n)

end

end A209430.P4694962343962863862

/-! ## A209430.P2266440872590474274

`gcd((n+1)!, ∏[∏[2*n+1]])`
-/

namespace A209430.P2266440872590474274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.factorial (n + 1)) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A209430.P2266440872590474274

/-! ## A209430.P2438672801405778368

`∏[gcd(n+1, ∏[∏[n+1+n]])]`
-/

namespace A209430.P2438672801405778368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209430.P2438672801405778368

/-! ## A209430.P6667041284461029863

`A324507(2^n)`
-/

namespace A209430.P6667041284461029863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324507 (2 ^ n)

end

end A209430.P6667041284461029863

/-! ## A209430.P2152272599914228101

`∏[A212181(2^n)]`
-/

namespace A209430.P2152272599914228101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212181 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A209430.P2152272599914228101

/-!
# A209432: Area A of the triangles such that A and the sides are integers and there exists at least one square inscribed in the triangle whose sides are also integers.

The programs for A209432, there is no canonical definition to state claims against.
-/

/-! ## A209432.P13042236156407051683

`A325781(lt[A226062(n+4), A063655(n+1)])`
-/

namespace A209432.P13042236156407051683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226062 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209432.P13042236156407051683

/-!
# A209434: Table T(n,m), read by antidiagonals, is the number of subsets of {1,...,n} which do not contain two elements whose difference is m+1.

The programs for A209434, there is no canonical definition to state claims against.
-/

/-! ## A209434.P15015215482695825353

`A209435(A061579(n))`
-/

namespace A209434.P15015215482695825353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A061579 n).toNat

end

end A209434.P15015215482695825353

/-! ## A209434.P6174565365561342767

`A130321(n)-A209436(n)`
-/

namespace A209434.P6174565365561342767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A209436 n

end

end A209434.P6174565365561342767

/-! ## A209434.P10750223323858548447

`A209435(A038722(n+1)-1)`
-/

namespace A209434.P10750223323858548447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A038722 (n + 1) - 1).toNat

end

end A209434.P10750223323858548447

/-! ## A209434.P14879792133109752880

`A209435(A038722(n+2))`
-/

namespace A209434.P14879792133109752880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A038722 (n + 2)).toNat

end

end A209434.P14879792133109752880

/-! ## A209434.P7811339944548778989

`A209435(A278818(n)-1)`
-/

namespace A209434.P7811339944548778989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A278818 n - 1).toNat

end

end A209434.P7811339944548778989

/-! ## A209434.P3594253458167936796

`A209435(A278818(n+1))`
-/

namespace A209434.P3594253458167936796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209435 (A278818 (n + 1)).toNat

end

end A209434.P3594253458167936796

/-!
# A209435: Table T(m,n), read by antidiagonals, is the number of subsets of {1,...,n} which do not contain two elements whose difference is m+1.

The programs for A209435, there is no canonical definition to state claims against.
-/

/-! ## A209435.P1934546230415558519

`A209434(A061579(n))`
-/

namespace A209435.P1934546230415558519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A061579 n).toNat

end

end A209435.P1934546230415558519

/-! ## A209435.P6981064266047981817

`A209434(A114327(n)+n)`
-/

namespace A209435.P6981064266047981817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A114327 n + (n : ℤ)).toNat

end

end A209435.P6981064266047981817

/-! ## A209435.P562303178404010064

`A209434(A038722(n+1)-1)`
-/

namespace A209435.P562303178404010064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A038722 (n + 1) - 1).toNat

end

end A209435.P562303178404010064

/-! ## A209435.P16862285688681682268

`A209434(A002024(n+1)²-(n+1))`
-/

namespace A209435.P16862285688681682268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A209435.P16862285688681682268

/-! ## A209435.P5982365244061609010

`A209434(A002378(n)%A014132(n+1))`
-/

namespace A209435.P5982365244061609010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A209435.P5982365244061609010

/-! ## A209435.P14138842290922669202

`A209434(A153881(n+1)+A038722(n+1))`
-/

namespace A209435.P14138842290922669202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209434 (A153881 (n + 1) + A038722 (n + 1)).toNat

end

end A209435.P14138842290922669202

/-!
# A209436: Table of a(n,m) = number of subsets of {1,...,n} which contain two elements whose difference is m+1.

The programs for A209436, there is no canonical definition to state claims against.
-/

/-! ## A209436.P9163618709653786710

`A130321(n)-A209434(n)`
-/

namespace A209436.P9163618709653786710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n - A209434 n

end

end A209436.P9163618709653786710

/-! ## A209436.P16519538879933377226

`sqrt(A262616(n))-A209434(n)`
-/

namespace A209436.P16519538879933377226
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) - (A209434 n : ℝ)

end

end A209436.P16519538879933377226

/-! ## A209436.P13696588382751095369

`A000079(A025581(n))-A209434(n)`
-/

namespace A209436.P13696588382751095369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A025581 n).toNat - A209434 n

end

end A209436.P13696588382751095369

/-! ## A209436.P5833252449942154339

`A016116(A099375(n))-A209434(n)`
-/

namespace A209436.P5833252449942154339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A099375 n).toNat - A209434 n

end

end A209436.P5833252449942154339

/-! ## A209436.P13142961607012300048

`A059268(A061579(n))-A209434(n)`
-/

namespace A209436.P13142961607012300048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A061579 n).toNat - A209434 n

end

end A209436.P13142961607012300048

/-! ## A209436.P10684229796432301066

`A035327(A209434(n)+A089633(n))`
-/

namespace A209436.P10684229796432301066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A209434 n + A089633 n).toNat

end

end A209436.P10684229796432301066

/-!
# A209437: Table of T(m,n), read by antidiagonals, is the number of subsets of {1,...,n} which contain two elements whose difference is m.

The programs for A209437, there is no canonical definition to state claims against.
-/

/-! ## A209437.P16395019121906460051

`A209436(A278818(n+1))`
-/

namespace A209437.P16395019121906460051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (A278818 (n + 1)).toNat

end

end A209437.P16395019121906460051

/-! ## A209437.P6977804397186231257

`A209436(A003057(n+2)²-(n+1))`
-/

namespace A209437.P6977804397186231257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (A003057 (n + 2) ^ 2 - (n + 1 : ℤ)).toNat

end

end A209437.P6977804397186231257

/-! ## A209437.P12346570413773104760

`A209436(A099375(n)+A014132(n+1))`
-/

namespace A209437.P12346570413773104760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (A099375 n + A014132 (n + 1)).toNat

end

end A209437.P12346570413773104760

/-! ## A209437.P17563296693800843192

`A209436(n+1+A099375(n)+A002024(n+1))`
-/

namespace A209437.P17563296693800843192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 ((n + 1 : ℤ) + (A099375 n + A002024 (n + 1))).toNat

end

end A209437.P17563296693800843192

/-!
# A209438: Table of a(d,n) where a(d,n) gives the number of subsets of length n that do not contain an arithmetic progression of length 3 with distance d.

The programs for A209438, there is no canonical definition to state claims against.
-/

/-! ## A209438.P15507888371637830799

`A209439((2*n)%A007401(n+1))`
-/

namespace A209438.P15507888371637830799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 (Int.tmod (2 * n : ℤ) (A007401 (n + 1))).toNat

end

end A209438.P15507888371637830799

/-! ## A209438.P15935821341765821557

`A209439(A005843(n)%comp[∑[n-1]])`
-/

namespace A209438.P15935821341765821557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209439 (Int.tmod (A005843 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A209438.P15935821341765821557

/-! ## A209438.P2180145053244697550

`A105224((2*A140997(n))²)`
-/

namespace A209438.P2180145053244697550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 ((2 * A140997 n) ^ 2).toNat

end

end A209438.P2180145053244697550

/-! ## A209438.P17401301331759334542

`A105224(A042948(A140997(n))²)`
-/

namespace A209438.P17401301331759334542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A042948 (A140997 n).toNat ^ 2).toNat

end

end A209438.P17401301331759334542

/-! ## A209438.P12376146020510326937

`A092921(lt[A344649(n), A058716(n)])`
-/

namespace A209438.P12376146020510326937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209438.P12376146020510326937

/-!
# A209439: Table T(n,d) where T(n,d) gives the number of subsets of length n that do not contain an arithmetic progression of length 3 with distance d.

The programs for A209439, there is no canonical definition to state claims against.
-/

/-! ## A209439.P3087121725335086500

`A209438(comp[∑[n]])`
-/

namespace A209439.P3087121725335086500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A209439.P3087121725335086500

/-! ## A209439.P1120896157608068372

`gcd(n, n+1)*A209438(A014132(n+1))`
-/

namespace A209439.P1120896157608068372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A209438 (A014132 (n + 1)).toNat

end

end A209439.P1120896157608068372

/-! ## A209439.P16022952048429631618

`A209438(A014132(n+1))%A198177(n+1)`
-/

namespace A209439.P16022952048429631618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209438 (A014132 (n + 1)).toNat) (A198177 (n + 1))

end

end A209439.P16022952048429631618

/-! ## A209439.P263121196824809660

`A209438(A003056(n)+2+n)%A017378(n)²`
-/

namespace A209439.P263121196824809660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209438 (A003056 n + 2 + (n : ℤ)).toNat) (A017378 n ^ 2)

end

end A209439.P263121196824809660

/-! ## A209439.P2754242871403245106

`A209438(A014132(n+1))+A069851(2*(n+2))`
-/

namespace A209439.P2754242871403245106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 (A014132 (n + 1)).toNat + A069851 (2 * (n + 2))

end

end A209439.P2754242871403245106

/-! ## A209439.P7365759662433041054

`A209438(A014132(n+1))+A051516(2*n+3)`
-/

namespace A209439.P7365759662433041054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 (A014132 (n + 1)).toNat + A051516 (2 * n + 3)

end

end A209439.P7365759662433041054

/-! ## A209439.P10140313536601949112

`A134451(Δ[n²])*A209438(A003056(n)+2+n)`
-/

namespace A209439.P10140313536601949112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A209438 (A003056 n + 2 + (n : ℤ)).toNat

end

end A209439.P10140313536601949112

/-! ## A209439.P4278604282302295484

`A138342(2*n+1)*A209438(A003056(n)+2+n)`
-/

namespace A209439.P4278604282302295484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138342 (2 * n + 1) * A209438 (A003056 n + 2 + (n : ℤ)).toNat

end

end A209439.P4278604282302295484

/-! ## A209439.P17979400873133554725

`A242192(A034444(n+1))+A209438(A003056(n)+2+n)`
-/

namespace A209439.P17979400873133554725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242192 (A034444 (n + 1)).toNat + A209438 (A003056 n + 2 + (n : ℤ)).toNat

end

end A209439.P17979400873133554725

/-!
# A209440: G.f.: 1 = Sum_{n>=0} a(n)*x^n * (1-x)^((n+1)^2).

The programs for A209440, there is no canonical definition to state claims against.
-/

/-! ## A209440.P3629015533386863657

`A355614(∑[n+3])`
-/

namespace A209440.P3629015533386863657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355614 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209440.P3629015533386863657

/-! ## A209440.P10308560105211722294

`A355614(A141214(n))^A178334(n)`
-/

namespace A209440.P10308560105211722294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355614 (A141214 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A209440.P10308560105211722294

/-! ## A209440.P4731222029959467715

`gcd(A000038(n), A355614(A141214(n)))`
-/

namespace A209440.P4731222029959467715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A355614 (A141214 n).toNat)

end

end A209440.P4731222029959467715

/-! ## A209440.P14471360049701622621

`lcm(A033999(n), A355614(A141214(n)))`
-/

namespace A209440.P14471360049701622621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A355614 (A141214 n).toNat)

end

end A209440.P14471360049701622621

/-! ## A209440.P2711998050357321476

`A355614(A141214(n))+A000038(2*(n+2))`
-/

namespace A209440.P2711998050357321476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355614 (A141214 n).toNat + A000038 (2 * (n + 2))

end

end A209440.P2711998050357321476

/-!
# A209441: G.f. satisfies: x = Sum_{n>=1} 1/A(x)^(5*n) * Product_{k=1..n} (1 - 1/A(x)^k).

The programs for A209441, there is no canonical definition to state claims against.
-/

/-! ## A209441.P6294970829153674252

`A008621(A000774(n)*A004006(n))`
-/

namespace A209441.P6294970829153674252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A000774 n * A004006 n).toNat

end

end A209441.P6294970829153674252

/-! ## A209441.P17784473046098252425

`A008624(A000774(n)*A004006(n))`
-/

namespace A209441.P17784473046098252425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A000774 n * A004006 n).toNat

end

end A209441.P17784473046098252425

/-!
# A209442: G.f. satisfies: x = Sum_{n>=1} 1/A(x)^(6*n) * Product_{k=1..n} (1 - 1/A(x)^k).

The programs for A209442, there is no canonical definition to state claims against.
-/

/-! ## A209442.P14995385569153346455

`A002295(n)-A326910(A321646(n))`
-/

namespace A209442.P14995385569153346455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002295 n - A326910 (A321646 n).toNat

end

end A209442.P14995385569153346455

/-!
# A209443: a(n) = Pell(n)*A000118(n) for n>=1 with a(0)=1, where A000118(n) is the number of ways of writing n as a sum of 4 squares.

The programs for A209443, there is no canonical definition to state claims against.
-/

/-! ## A209443.P15873278637502502360

`A000118(n)*A215928(n)`
-/

namespace A209443.P15873278637502502360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A215928 n

end

end A209443.P15873278637502502360

/-! ## A209443.P14960384135954807660

`abs(A096727(n)*A215928(n))`
-/

namespace A209443.P14960384135954807660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A096727 n * A215928 n|

end

end A209443.P14960384135954807660

/-! ## A209443.P13943482376500974541

`A097057(2*n)*A215928(n)`
-/

namespace A209443.P13943482376500974541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097057 (2 * n) * A215928 n

end

end A209443.P13943482376500974541

/-! ## A209443.P8290095350597478457

`A000118(n)*A000129(A028310(n))`
-/

namespace A209443.P8290095350597478457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n * A000129 (A028310 n).toNat

end

end A209443.P8290095350597478457

/-! ## A209443.P4411191222073351545

`A000118(n)/A000143(n)*A209444(n)`
-/

namespace A209443.P4411191222073351545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000118 n : ℚ) / (A000143 n : ℚ) * (A209444 n : ℚ)

end

end A209443.P4411191222073351545

/-! ## A209443.P12153607794290548897

`A205963(n)/A205964(n)*A209444(n)`
-/

namespace A209443.P12153607794290548897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205963 n : ℚ) / (A205964 n : ℚ) * (A209444 n : ℚ)

end

end A209443.P12153607794290548897

/-!
# A209444: a(n) = Pell(n)*A000143(n) for n>=1 with a(0)=1, where A000143(n) is the number of ways of writing n as a sum of 8 squares.

The programs for A209444, there is no canonical definition to state claims against.
-/

/-! ## A209444.P7860234813110872148

`A000143(n)*A215928(n)`
-/

namespace A209444.P7860234813110872148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A215928 n

end

end A209444.P7860234813110872148

/-! ## A209444.P8755240770210869773

`abs(A035016(n)*A215928(n))`
-/

namespace A209444.P8755240770210869773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035016 n * A215928 n|

end

end A209444.P8755240770210869773

/-! ## A209444.P766286713149237672

`A000129(A028310(n))*A000143(n)`
-/

namespace A209444.P766286713149237672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n).toNat * A000143 n

end

end A209444.P766286713149237672

/-! ## A209444.P14286173620706358582

`A000143(n)*A249576(A008486(n))`
-/

namespace A209444.P14286173620706358582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A249576 (A008486 n).toNat

end

end A209444.P14286173620706358582

/-! ## A209444.P10675454529224761103

`abs(A259491(A008586(n)))*A215928(n)`
-/

namespace A209444.P10675454529224761103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A259491 (A008586 n).toNat| * A215928 n

end

end A209444.P10675454529224761103

/-! ## A209444.P15234373253741282980

`A000129(A000007(n)+n)*A000143(n)`
-/

namespace A209444.P15234373253741282980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A000007 n + (n : ℤ)).toNat * A000143 n

end

end A209444.P15234373253741282980

/-! ## A209444.P9256910729118154003

`A000143(n)/A000118(n)*A209443(n)`
-/

namespace A209444.P9256910729118154003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000143 n : ℚ) / (A000118 n : ℚ) * (A209443 n : ℚ)

end

end A209444.P9256910729118154003

/-! ## A209444.P9127647066219369950

`A205964(n)/A205963(n)*A209443(n)`
-/

namespace A209444.P9127647066219369950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205964 n : ℚ) / (A205963 n : ℚ) * (A209443 n : ℚ)

end

end A209444.P9127647066219369950

/-! ## A209444.P6946837576218971287

`A205964(n)/A205968(n)*A209448(n)`
-/

namespace A209444.P6946837576218971287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205964 n : ℚ) / (A205968 n : ℚ) * (A209448 n : ℚ)

end

end A209444.P6946837576218971287

/-! ## A209444.P14024416538176845920

`A000143(n)*A190215(A000217(n))`
-/

namespace A209444.P14024416538176845920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000143 n * A190215 (A000217 n).toNat

end

end A209444.P14024416538176845920

/-!
# A209445: a(n) = Pell(n)*A001227(n) for n >= 1, where A001227(n) is the number of odd divisors of n.

The programs for A209445, the canonical program `A209445.P14006898795704528035` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209445 has offset 1).

The definition of A209445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209445.P14006898795704528035

`∑{d}[n+1, A000129((n+1)*#%2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209445

/-- `∑{d}[n+1, A000129((n+1)*#%2)]` -/
def P14006898795704528035.Spec : Prop :=
  ∀ n, P14006898795704528035.a n = A209445 (n + 1)

theorem P14006898795704528035.correct : P14006898795704528035.Spec := by
  intro n
  simp only [A209445, Nat.add_sub_cancel]

end A209445

/-! ## A209445.P3840261043793149525

`∑{d}[n+1, and(1, #)*A215928(n+1)]`
-/

namespace A209445.P3840261043793149525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.land 1 d : ℤ) * A215928 (n + 1)

end

end A209445.P3840261043793149525

namespace A209445

/-- `∑{d}[n+1, and(1, #)*A215928(n+1)]` -/
def P3840261043793149525.Spec : Prop :=
  ∀ n, P3840261043793149525.a n = A209445 (n + 1)

end A209445

/-! ## A209445.P188589722323283882

`A041011(n)*A069733(n+1)`
-/

namespace A209445.P188589722323283882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041011 n * A069733 (n + 1)

end

end A209445.P188589722323283882

namespace A209445

/-- `A041011(n)*A069733(n+1)` -/
def P188589722323283882.Spec : Prop :=
  ∀ n, P188589722323283882.a n = A209445 (n + 1)

end A209445

/-! ## A209445.P10174979432719204512

`A000129(n+1)*A001227(n+1)`
-/

namespace A209445.P10174979432719204512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A001227 (n + 1)

end

end A209445.P10174979432719204512

namespace A209445

/-- `A000129(n+1)*A001227(n+1)` -/
def P10174979432719204512.Spec : Prop :=
  ∀ n, P10174979432719204512.a n = A209445 (n + 1)

end A209445

/-! ## A209445.P14552850263138376974

`abs(A176981(n+2))*A001227(n+1)`
-/

namespace A209445.P14552850263138376974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| * A001227 (n + 1)

end

end A209445.P14552850263138376974

namespace A209445

/-- `abs(A176981(n+2))*A001227(n+1)` -/
def P14552850263138376974.Spec : Prop :=
  ∀ n, P14552850263138376974.a n = A209445 (n + 1)

end A209445

/-! ## A209445.P18258096640966918568

`∑{d}[n+1, A000035(#)]*A000129(n+1)`
-/

namespace A209445.P18258096640966918568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), A000035 d) * A000129 (n + 1)

end

end A209445.P18258096640966918568

namespace A209445

/-- `∑{d}[n+1, A000035(#)]*A000129(n+1)` -/
def P18258096640966918568.Spec : Prop :=
  ∀ n, P18258096640966918568.a n = A209445 (n + 1)

end A209445

/-! ## A209445.P16753814327211070460

`A000005(A000265(n+1))*A000129(n+1)`
-/

namespace A209445.P16753814327211070460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat * A000129 (n + 1)

end

end A209445.P16753814327211070460

namespace A209445

/-- `A000005(A000265(n+1))*A000129(n+1)` -/
def P16753814327211070460.Spec : Prop :=
  ∀ n, P16753814327211070460.a n = A209445 (n + 1)

end A209445

/-! ## A209445.P1327375551887833954

`A204270(n+1)/A001511(n+1)`
-/

namespace A209445.P1327375551887833954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204270 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A209445.P1327375551887833954

namespace A209445

/-- `A204270(n+1)/A001511(n+1)` -/
def P1327375551887833954.Spec : Prop :=
  ∀ n, P1327375551887833954.a n = (A209445 (n + 1) : ℚ)

end A209445

/-! ## A209445.P9559706127322505722

`A001227(n+1)/A000005(n+1)*A204270(n+1)`
-/

namespace A209445.P9559706127322505722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A204270 (n + 1) : ℚ)

end

end A209445.P9559706127322505722

namespace A209445

/-- `A001227(n+1)/A000005(n+1)*A204270(n+1)` -/
def P9559706127322505722.Spec : Prop :=
  ∀ n, P9559706127322505722.a n = (A209445 (n + 1) : ℚ)

end A209445

/-! ## A209445.P4752537633011743906

`A001227(n+1)/A000143(n+1)*A209444(n+1)`
-/

namespace A209445.P4752537633011743906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001227 (n + 1) : ℚ) / (A000143 (n + 1) : ℚ) * (A209444 (n + 1) : ℚ)

end

end A209445.P4752537633011743906

namespace A209445

/-- `A001227(n+1)/A000143(n+1)*A209444(n+1)` -/
def P4752537633011743906.Spec : Prop :=
  ∀ n, P4752537633011743906.a n = (A209445 (n + 1) : ℚ)

end A209445

/-! ## A209445.P18087080656563324287

`A205965(n+1)/A205964(n+1)*A209444(n+1)`
-/

namespace A209445.P18087080656563324287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205965 (n + 1) : ℚ) / (A205964 (n + 1) : ℚ) * (A209444 (n + 1) : ℚ)

end

end A209445.P18087080656563324287

namespace A209445

/-- `A205965(n+1)/A205964(n+1)*A209444(n+1)` -/
def P18087080656563324287.Spec : Prop :=
  ∀ n, P18087080656563324287.a n = (A209445 (n + 1) : ℚ)

end A209445

/-!
# A209446: a(n) = Pell(n)*A004016(n) for n >= 1, with a(0)=1, where A004016(n) is the number of integer solutions (x,y) to x^2 + x*y + y^2 = n.

The programs for A209446, there is no canonical definition to state claims against.
-/

/-! ## A209446.P10302682892821379536

`A004016(n)*A215928(n)`
-/

namespace A209446.P10302682892821379536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n * A215928 n

end

end A209446.P10302682892821379536

/-! ## A209446.P13802128963638820560

`lcm(A004016(n), A209452(n))`
-/

namespace A209446.P13802128963638820560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004016 n) (A209452 n)

end

end A209446.P13802128963638820560

/-! ## A209446.P9316974315422269865

`gcd(A000129(n), A209449(n))*A004016(n)`
-/

namespace A209446.P9316974315422269865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209449 n) : ℤ) * A004016 n

end

end A209446.P9316974315422269865

/-! ## A209446.P8552651930006455040

`A004016(n)/A008653(n)*A209447(n)`
-/

namespace A209446.P8552651930006455040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A008653 n : ℚ) * (A209447 n : ℚ)

end

end A209446.P8552651930006455040

/-! ## A209446.P14818176106499839255

`A205966(n)/A205967(n)*A209447(n)`
-/

namespace A209446.P14818176106499839255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205966 n : ℚ) / (A205967 n : ℚ) * (A209447 n : ℚ)

end

end A209446.P14818176106499839255

/-! ## A209446.P2219436299181216762

`A004016(n)/A000143(n)*A209444(n)`
-/

namespace A209446.P2219436299181216762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A000143 n : ℚ) * (A209444 n : ℚ)

end

end A209446.P2219436299181216762

/-! ## A209446.P18284659831320007571

`A004016(n)/A008655(n)*A209448(n)`
-/

namespace A209446.P18284659831320007571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A008655 n : ℚ) * (A209448 n : ℚ)

end

end A209446.P18284659831320007571

/-!
# A209447: a(n) = Pell(n)*A008653(n) for n>=1, with a(0)=1, where A008653 is the theta series of direct sum of 2 copies of hexagonal lattice.

The programs for A209447, there is no canonical definition to state claims against.
-/

/-! ## A209447.P5161765997833872303

`A008653(n)*A215928(n)`
-/

namespace A209447.P5161765997833872303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n * A215928 n

end

end A209447.P5161765997833872303

/-! ## A209447.P662363863678174476

`A008653(n)*A249576(A008486(n))`
-/

namespace A209447.P662363863678174476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008653 n * A249576 (A008486 n).toNat

end

end A209447.P662363863678174476

/-! ## A209447.P1090272584019231666

`A215928(n)*A281722(A109044(n))`
-/

namespace A209447.P1090272584019231666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n * A281722 (A109044 n).toNat

end

end A209447.P1090272584019231666

/-! ## A209447.P10310764229232996329

`A008653(n)/A034896(n)*A209451(n)`
-/

namespace A209447.P10310764229232996329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A034896 n : ℚ) * (A209451 n : ℚ)

end

end A209447.P10310764229232996329

/-! ## A209447.P142403978271879442

`A205967(n)/A205971(n)*A209451(n)`
-/

namespace A209447.P142403978271879442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205967 n : ℚ) / (A205971 n : ℚ) * (A209451 n : ℚ)

end

end A209447.P142403978271879442

/-! ## A209447.P7318171697598221278

`A008653(n)/A008655(n)*A209448(n)`
-/

namespace A209447.P7318171697598221278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008653 n : ℚ) / (A008655 n : ℚ) * (A209448 n : ℚ)

end

end A209447.P7318171697598221278

/-! ## A209447.P14854452580950062528

`A205967(n)/A205968(n)*A209448(n)`
-/

namespace A209447.P14854452580950062528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205967 n : ℚ) / (A205968 n : ℚ) * (A209448 n : ℚ)

end

end A209447.P14854452580950062528

/-!
# A209448: a(n) = Pell(n)*A008655(n) for n>=1, with a(0)=1, where A008655 lists the coefficients in (theta_3(x)*theta_3(3*x)+theta_2(x)*theta_2(3*x))^4.

The programs for A209448, there is no canonical definition to state claims against.
-/

/-! ## A209448.P15938628255530369584

`A008655(n)*A215928(n)`
-/

namespace A209448.P15938628255530369584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008655 n * A215928 n

end

end A209448.P15938628255530369584

/-! ## A209448.P17218423092930989385

`A000129(A028310(n))*A008655(n)`
-/

namespace A209448.P17218423092930989385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n).toNat * A008655 n

end

end A209448.P17218423092930989385

/-! ## A209448.P15478810205213054376

`A008655(n)/A008653(n)*A209447(n)`
-/

namespace A209448.P15478810205213054376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008655 n : ℚ) / (A008653 n : ℚ) * (A209447 n : ℚ)

end

end A209448.P15478810205213054376

/-! ## A209448.P4689326545276126243

`A205968(n)/A205967(n)*A209447(n)`
-/

namespace A209448.P4689326545276126243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205968 n : ℚ) / (A205967 n : ℚ) * (A209447 n : ℚ)

end

end A209448.P4689326545276126243

/-! ## A209448.P9026744225288972872

`gcd(A000129(n), A209446(n))*A008655(n)`
-/

namespace A209448.P9026744225288972872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209446 n) : ℤ) * A008655 n

end

end A209448.P9026744225288972872

/-! ## A209448.P4419722839951689826

`A008655(n)*A190215(A000217(n))`
-/

namespace A209448.P4419722839951689826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008655 n * A190215 (A000217 n).toNat

end

end A209448.P4419722839951689826

/-!
# A209449: a(n) = Pell(n)*A113973(n) for n>=1, with a(0)=1, where A113973 lists the coefficients in phi(x^3)^3/phi(x) and phi() is a Ramanujan theta function.

The programs for A209449, there is no canonical definition to state claims against.
-/

/-! ## A209449.P4019148610324466507

`A113973(n)*A215928(n)`
-/

namespace A209449.P4019148610324466507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113973 n * A215928 n

end

end A209449.P4019148610324466507

/-! ## A209449.P379814802300606473

`gcd(A000129(n), A209446(n))*A113973(n)`
-/

namespace A209449.P379814802300606473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209446 n) : ℤ) * A113973 n

end

end A209449.P379814802300606473

/-! ## A209449.P8760951135113195038

`A113973(n)/A034896(n)*A209451(n)`
-/

namespace A209449.P8760951135113195038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A034896 n : ℚ) * (A209451 n : ℚ)

end

end A209449.P8760951135113195038

/-! ## A209449.P13964881680969436610

`A205969(n)/A205967(n)*A209447(n)`
-/

namespace A209449.P13964881680969436610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205969 n : ℚ) / (A205967 n : ℚ) * (A209447 n : ℚ)

end

end A209449.P13964881680969436610

/-! ## A209449.P9527578090646598218

`A113973(n)/A109041(n)*A209453(n)`
-/

namespace A209449.P9527578090646598218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A109041 n : ℚ) * (A209453 n : ℚ)

end

end A209449.P9527578090646598218

/-! ## A209449.P15938038224467642884

`A113973(n)/A008655(n)*A209448(n)`
-/

namespace A209449.P15938038224467642884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A008655 n : ℚ) * (A209448 n : ℚ)

end

end A209449.P15938038224467642884

/-! ## A209449.P1511429657524652728

`A205969(n)/A205968(n)*A209448(n)`
-/

namespace A209449.P1511429657524652728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205969 n : ℚ) / (A205968 n : ℚ) * (A209448 n : ℚ)

end

end A209449.P1511429657524652728

/-!
# A209450: a(n) = Pell(n)*A132973(n) for n>=1, with a(0)=1, where A132973 lists the coefficients in psi(-q)^3/psi(-q^3) and where psi() is a Ramanujan theta function.

The programs for A209450, there is no canonical definition to state claims against.
-/

/-! ## A209450.P17380271280747843234

`A132973(n)*A215928(n)`
-/

namespace A209450.P17380271280747843234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132973 n * A215928 n

end

end A209450.P17380271280747843234

/-! ## A209450.P4915861462203385085

`(A107760(n)-A217221(n))*A215928(n)`
-/

namespace A209450.P4915861462203385085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107760 n - A217221 n) * A215928 n

end

end A209450.P4915861462203385085

/-! ## A209450.P16508817087635601082

`gcd(A000129(n), A209446(n))*A132973(n)`
-/

namespace A209450.P16508817087635601082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209446 n) : ℤ) * A132973 n

end

end A209450.P16508817087635601082

/-! ## A209450.P1145198372670881296

`A132973(n)/A034896(n)*A209451(n)`
-/

namespace A209450.P1145198372670881296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A034896 n : ℚ) * (A209451 n : ℚ)

end

end A209450.P1145198372670881296

/-! ## A209450.P13964770690463254076

`A205970(n)/A205971(n)*A209451(n)`
-/

namespace A209450.P13964770690463254076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205970 n : ℚ) / (A205971 n : ℚ) * (A209451 n : ℚ)

end

end A209450.P13964770690463254076

/-! ## A209450.P16312637562232142436

`A132973(n)/A008655(n)*A209448(n)`
-/

namespace A209450.P16312637562232142436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132973 n : ℚ) / (A008655 n : ℚ) * (A209448 n : ℚ)

end

end A209450.P16312637562232142436

/-!
# A209451: a(n) = Pell(n)*A034896(n) for n >= 1, with a(0)=1, where A034896 lists the number of solutions to a^2 + b^2 + 3*c^2 + 3*d^2 = n.

The programs for A209451, there is no canonical definition to state claims against.
-/

/-! ## A209451.P8959046508086225689

`A034896(n)*A215928(n)`
-/

namespace A209451.P8959046508086225689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 n * A215928 n

end

end A209451.P8959046508086225689

/-! ## A209451.P2071103689169638974

`A034896(n)*A249576(A008486(n))`
-/

namespace A209451.P2071103689169638974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034896 n * A249576 (A008486 n).toNat

end

end A209451.P2071103689169638974

/-! ## A209451.P4209489317767784871

`A034896(n)/A109064(n)*A205884(n)`
-/

namespace A209451.P4209489317767784871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A109064 n : ℚ) * (A205884 n : ℚ)

end

end A209451.P4209489317767784871

/-! ## A209451.P18359109372083503478

`A205884(n)/A205882(n)*A205971(n)`
-/

namespace A209451.P18359109372083503478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205884 n : ℚ) / (A205882 n : ℚ) * (A205971 n : ℚ)

end

end A209451.P18359109372083503478

/-! ## A209451.P9326143325368642786

`gcd(A000129(n), A209446(n))*A034896(n)`
-/

namespace A209451.P9326143325368642786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209446 n) : ℤ) * A034896 n

end

end A209451.P9326143325368642786

/-! ## A209451.P1851336919931422534

`A034896(n)/A008653(n)*A209447(n)`
-/

namespace A209451.P1851336919931422534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A008653 n : ℚ) * (A209447 n : ℚ)

end

end A209451.P1851336919931422534

/-! ## A209451.P16549798557934229319

`A205971(n)/A205967(n)*A209447(n)`
-/

namespace A209451.P16549798557934229319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205971 n : ℚ) / (A205967 n : ℚ) * (A209447 n : ℚ)

end

end A209451.P16549798557934229319

/-! ## A209451.P11329556984206711633

`A034896(n)/A109041(n)*A209453(n)`
-/

namespace A209451.P11329556984206711633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A109041 n : ℚ) * (A209453 n : ℚ)

end

end A209451.P11329556984206711633

/-! ## A209451.P12563413227019070172

`A000129(A151935(n)+n)*A034896(n)`
-/

namespace A209451.P12563413227019070172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A151935 n + (n : ℤ)).toNat * A034896 n

end

end A209451.P12563413227019070172

/-!
# A209452: a(n) = Pell(n)*A122859(n) for n>=1, with a(0)=1, where A122859 lists the coefficients in phi(-q)^3/phi(-q^3) and phi() is a Ramanujan theta function.

The programs for A209452, there is no canonical definition to state claims against.
-/

/-! ## A209452.P16485172359833611660

`A122859(n)*A215928(n)`
-/

namespace A209452.P16485172359833611660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122859 n * A215928 n

end

end A209452.P16485172359833611660

/-! ## A209452.P11789384863955219136

`A215928(n)*A227354(2*n)`
-/

namespace A209452.P11789384863955219136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 n * A227354 (2 * n)

end

end A209452.P11789384863955219136

/-! ## A209452.P8725723523421475733

`gcd(A000129(n), A209446(n))*A122859(n)`
-/

namespace A209452.P8725723523421475733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209446 n) : ℤ) * A122859 n

end

end A209452.P8725723523421475733

/-! ## A209452.P9231195144244626611

`A122859(n)/A034896(n)*A209451(n)`
-/

namespace A209452.P9231195144244626611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n : ℚ) / (A034896 n : ℚ) * (A209451 n : ℚ)

end

end A209452.P9231195144244626611

/-! ## A209452.P6639227018221506514

`A205972(n)/A205971(n)*A209451(n)`
-/

namespace A209452.P6639227018221506514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205972 n : ℚ) / (A205971 n : ℚ) * (A209451 n : ℚ)

end

end A209452.P6639227018221506514

/-! ## A209452.P3348129709683478582

`A122859(n)/A109041(n)*A209453(n)`
-/

namespace A209452.P3348129709683478582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122859 n : ℚ) / (A109041 n : ℚ) * (A209453 n : ℚ)

end

end A209452.P3348129709683478582

/-! ## A209452.P12924867823995947485

`A205972(n)/A205973(n)*A209453(n)`
-/

namespace A209452.P12924867823995947485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205972 n : ℚ) / (A205973 n : ℚ) * (A209453 n : ℚ)

end

end A209452.P12924867823995947485

/-! ## A209452.P2986315221963267308

`A122859(n)*A190215(A000217(n))`
-/

namespace A209452.P2986315221963267308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122859 n * A190215 (A000217 n).toNat

end

end A209452.P2986315221963267308

/-!
# A209453: a(n) = Pell(n)*A109041(n) for n>=1, with a(0)=1, where A109041 lists the coefficients in eta(q)^9/eta(q^3)^3.

The programs for A209453, there is no canonical definition to state claims against.
-/

/-! ## A209453.P11873802927624171946

`A109041(n)*A215928(n)`
-/

namespace A209453.P11873802927624171946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109041 n * A215928 n

end

end A209453.P11873802927624171946

/-! ## A209453.P17450472847059988458

`A000129(A028310(n))*A109041(n)`
-/

namespace A209453.P17450472847059988458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n).toNat * A109041 n

end

end A209453.P17450472847059988458

/-! ## A209453.P4157078368094255742

`A109041(n)*A249576(A008486(n))`
-/

namespace A209453.P4157078368094255742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109041 n * A249576 (A008486 n).toNat

end

end A209453.P4157078368094255742

/-! ## A209453.P17871200235705501151

`A109041(n)/A034896(n)*A209451(n)`
-/

namespace A209453.P17871200235705501151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109041 n : ℚ) / (A034896 n : ℚ) * (A209451 n : ℚ)

end

end A209453.P17871200235705501151

/-! ## A209453.P4332946227684076578

`gcd(A000129(n), A209446(n))*A109041(n)`
-/

namespace A209453.P4332946227684076578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209446 n) : ℤ) * A109041 n

end

end A209453.P4332946227684076578

/-! ## A209453.P9154895357433897164

`A109041(n)*A190215(A000217(n))`
-/

namespace A209453.P9154895357433897164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109041 n * A190215 (A000217 n).toNat

end

end A209453.P9154895357433897164

/-!
# A209454: a(n) = Pell(n)*A033719(n) for n>=1, with a(0)=1, where A033719 lists the coefficients in theta_3(q)*theta_3(q^7).

The programs for A209454, there is no canonical definition to state claims against.
-/

/-! ## A209454.P12870639693934823175

`A033719(n)*A215928(n)`
-/

namespace A209454.P12870639693934823175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 n * A215928 n

end

end A209454.P12870639693934823175

/-! ## A209454.P18173877033668946998

`A002965(A004277(n))*A033719(n)`
-/

namespace A209454.P18173877033668946998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002965 (A004277 n).toNat * A033719 n

end

end A209454.P18173877033668946998

/-! ## A209454.P7266711748759019874

`A000129(A028310(n))*A033719(n)`
-/

namespace A209454.P7266711748759019874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n).toNat * A033719 n

end

end A209454.P7266711748759019874

/-! ## A209454.P13964107822718659986

`gcd(A000129(n), A209452(n))*A033719(n)`
-/

namespace A209454.P13964107822718659986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209452 n) : ℤ) * A033719 n

end

end A209454.P13964107822718659986

/-! ## A209454.P2516692094472402431

`A033719(n)/A109041(n)*A209453(n)`
-/

namespace A209454.P2516692094472402431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033719 n : ℚ) / (A109041 n : ℚ) * (A209453 n : ℚ)

end

end A209454.P2516692094472402431

/-! ## A209454.P17147250515579311188

`A205974(n)/A205973(n)*A209453(n)`
-/

namespace A209454.P17147250515579311188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205974 n : ℚ) / (A205973 n : ℚ) * (A209453 n : ℚ)

end

end A209454.P17147250515579311188

/-!
# A209455: a(n) = Pell(n)*A002652(n) for n>=1, with a(0)=1, where A002652 lists the coefficients in theta series of Kleinian lattice Z[(-1+sqrt(-7))/2].

The programs for A209455, there is no canonical definition to state claims against.
-/

/-! ## A209455.P15940700035692701490

`A002652(n)*A215928(n)`
-/

namespace A209455.P15940700035692701490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n * A215928 n

end

end A209455.P15940700035692701490

/-! ## A209455.P7856018766599600797

`A052542(n)*A110654(A002652(n))`
-/

namespace A209455.P7856018766599600797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n * A110654 (A002652 n).toNat

end

end A209455.P7856018766599600797

/-! ## A209455.P11575966968733473719

`A002652(n)*A249576(A008486(n))`
-/

namespace A209455.P11575966968733473719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 n * A249576 (A008486 n).toNat

end

end A209455.P11575966968733473719

/-! ## A209455.P8945880129450525760

`A002652(n)/A028594(n)*A209456(n)`
-/

namespace A209455.P8945880129450525760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 n : ℚ) / (A028594 n : ℚ) * (A209456 n : ℚ)

end

end A209455.P8945880129450525760

/-! ## A209455.P2491812938209510033

`A205975(n)/A205976(n)*A209456(n)`
-/

namespace A209455.P2491812938209510033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205975 n : ℚ) / (A205976 n : ℚ) * (A209456 n : ℚ)

end

end A209455.P2491812938209510033

/-! ## A209455.P5735513037777875107

`gcd(A000129(n), A209456(n))*A002652(n)`
-/

namespace A209455.P5735513037777875107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209456 n) : ℤ) * A002652 n

end

end A209455.P5735513037777875107

/-! ## A209455.P17355001041358089816

`A002652(n)/A109041(n)*A209453(n)`
-/

namespace A209455.P17355001041358089816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 n : ℚ) / (A109041 n : ℚ) * (A209453 n : ℚ)

end

end A209455.P17355001041358089816

/-!
# A209456: a(n) = Pell(n)*A028594(n) for n>=1, with a(0)=1, where A028594 lists the coefficients in (theta_3(x)*theta_3(7*x)+theta_2(x)*theta_2(7*x))^2.

The programs for A209456, there is no canonical definition to state claims against.
-/

/-! ## A209456.P18149017298555580801

`A028594(n)*A215928(n)`
-/

namespace A209456.P18149017298555580801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028594 n * A215928 n

end

end A209456.P18149017298555580801

/-! ## A209456.P11194829289563111218

`A000129(A028310(n))*A028594(n)`
-/

namespace A209456.P11194829289563111218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (A028310 n).toNat * A028594 n

end

end A209456.P11194829289563111218

/-! ## A209456.P2698694811639629596

`A004525(A028594(n))*A052542(n)`
-/

namespace A209456.P2698694811639629596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028594 n).toNat * A052542 n

end

end A209456.P2698694811639629596

/-! ## A209456.P6349346115915295974

`A028594(n)*A249576(A008486(n))`
-/

namespace A209456.P6349346115915295974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028594 n * A249576 (A008486 n).toNat

end

end A209456.P6349346115915295974

/-! ## A209456.P799734243805880780

`gcd(A000129(n), A209455(n))*A028594(n)`
-/

namespace A209456.P799734243805880780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000129 n) (A209455 n) : ℤ) * A028594 n

end

end A209456.P799734243805880780

/-! ## A209456.P17993760701753265516

`A028594(n)*A190215(A000217(n))`
-/

namespace A209456.P17993760701753265516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028594 n * A190215 (A000217 n).toNat

end

end A209456.P17993760701753265516

/-!
# A209458: Number of n X n 0..6 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..6 introduced in row major order.

The programs for A209458, there is no canonical definition to state claims against.
-/

/-! ## A209458.P17818591988902848136

`A209465((n+1)²+n²)`
-/

namespace A209458.P17818591988902848136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 ((n + 1) ^ 2 + n ^ 2)

end

end A209458.P17818591988902848136

/-!
# A209459: Number of nX2 0..6 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..6 introduced in row major order.

The programs for A209459, there is no canonical definition to state claims against.
-/

/-! ## A209459.P10762492854374385554

`A209465(∑[n+1]+2)`
-/

namespace A209459.P10762492854374385554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209459.P10762492854374385554

/-! ## A209459.P4634759467425430228

`record[A209465(abs(A201163(n)))]`
-/

namespace A209459.P4634759467425430228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209459.P4634759467425430228

/-! ## A209459.P6744077793947713489

`record[A209465(A198455(n+1))]`
-/

namespace A209459.P6744077793947713489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209459.P6744077793947713489

/-! ## A209459.P16155892981261571764

`record[A209465(Δ[A003453(n+5)])]`
-/

namespace A209459.P16155892981261571764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209459.P16155892981261571764

/-! ## A209459.P14682597970907662193

`A209465(A000096(n+1))%A209460(n+1)`
-/

namespace A209459.P14682597970907662193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209465 (A000096 (n + 1)).toNat) (A209460 (n + 1))

end

end A209459.P14682597970907662193

/-!
# A209460: Number of nX3 0..6 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..6 introduced in row major order.

The programs for A209460, there is no canonical definition to state claims against.
-/

/-! ## A209460.P3178000947893076495

`A209465(∑[n+2]+4)`
-/

namespace A209460.P3178000947893076495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209460.P3178000947893076495

/-! ## A209460.P6638038884671531900

`A326460(n)+A209465(A167614(n+1))`
-/

namespace A209460.P6638038884671531900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n + A209465 (A167614 (n + 1)).toNat

end

end A209460.P6638038884671531900

/-! ## A209460.P14552362219350982454

`lcm(A033999(n), A209465(A167614(n+1)))`
-/

namespace A209460.P14552362219350982454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209465 (A167614 (n + 1)).toNat)

end

end A209460.P14552362219350982454

/-! ## A209460.P17138030213525672114

`or(A091536(n), A209465(A167614(n+1)))`
-/

namespace A209460.P17138030213525672114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091536 n) (A209465 (A167614 (n + 1)).toNat)

end

end A209460.P17138030213525672114

/-! ## A209460.P194136505757153693

`or(A151909(n), A209465(A167614(n+1)))`
-/

namespace A209460.P194136505757153693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151909 n) (A209465 (A167614 (n + 1)).toNat)

end

end A209460.P194136505757153693

/-!
# A209461: Number of nX4 0..6 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..6 introduced in row major order.

The programs for A209461, there is no canonical definition to state claims against.
-/

/-! ## A209461.P11427325057754170330

`A209465(A141214(n)+7)`
-/

namespace A209461.P11427325057754170330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A141214 n + 7).toNat

end

end A209461.P11427325057754170330

/-! ## A209461.P8487230958820575313

`A209465(A052905(n)+9)`
-/

namespace A209461.P8487230958820575313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A052905 n + 9).toNat

end

end A209461.P8487230958820575313

/-! ## A209461.P10100946600430434506

`A209465(A055999(n)+10)`
-/

namespace A209461.P10100946600430434506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A055999 n + 10).toNat

end

end A209461.P10100946600430434506

/-! ## A209461.P12818169255133034976

`A209465(A167614(n+2)+1)`
-/

namespace A209461.P12818169255133034976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A167614 (n + 2) + 1).toNat

end

end A209461.P12818169255133034976

/-! ## A209461.P2322065444122580274

`A209465(A056000(n)+7)`
-/

namespace A209461.P2322065444122580274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A056000 n + 7).toNat

end

end A209461.P2322065444122580274

/-!
# A209462: Number of nX5 0..6 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..6 introduced in row major order.

The programs for A209462, there is no canonical definition to state claims against.
-/

/-! ## A209462.P15368971502507072083

`A209465(A374005(n+1))`
-/

namespace A209462.P15368971502507072083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A374005 (n + 1)).toNat

end

end A209462.P15368971502507072083

/-! ## A209462.P838646130162719801

`A209465(A051936(n+4)+14)`
-/

namespace A209462.P838646130162719801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A051936 (n + 4) + 14).toNat

end

end A209462.P838646130162719801

/-! ## A209462.P443688508760196315

`A209465(eq[6, A131818(n+1)])`
-/

namespace A209462.P443688508760196315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209462.P443688508760196315

/-! ## A209462.P8752338703142055496

`A209465(Δ[A264443(n)])`
-/

namespace A209462.P8752338703142055496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (f1 (n + 1) - f1 n).toNat

end

end A209462.P8752338703142055496

/-!
# A209463: 

The programs for A209463, there is no canonical definition to state claims against.
-/

/-! ## A209463.P12722211791129816873

`A209465(eq[7, A131818(n+1)])`
-/

namespace A209463.P12722211791129816873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209463.P12722211791129816873

/-! ## A209463.P11424223315846774925

`A209465(A141214(n+3)-2)`
-/

namespace A209463.P11424223315846774925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A141214 (n + 3) - 2).toNat

end

end A209463.P11424223315846774925

/-!
# A209464: 

The programs for A209464, there is no canonical definition to state claims against.
-/

/-! ## A209464.P3071252828493116673

`A209465(A141214(n+3)+10)`
-/

namespace A209464.P3071252828493116673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209465 (A141214 (n + 3) + 10).toNat

end

end A209464.P3071252828493116673

/-!
# A209465: T(n,k)=Number of nXk 0..6 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..6 introduced in row major order.

The programs for A209465, there is no canonical definition to state claims against.
-/

/-! ## A209465.P1381424907259485272

`A209527(n+1)-val(∏{p}[A099962(n), #], 10)`
-/

namespace A209465.P1381424907259485272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (n + 1) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 10 : ℤ)

end

end A209465.P1381424907259485272

/-! ## A209465.P3345846452205281834

`A209527(n+1)-A010051(A022171(n))`
-/

namespace A209465.P3345846452205281834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (n + 1) - A010051 (A022171 n).toNat

end

end A209465.P3345846452205281834

/-! ## A209465.P13923281371622261923

`A209527(n+1)-A025465(A069466(n))`
-/

namespace A209465.P13923281371622261923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (n + 1) - A025465 (A069466 n).toNat

end

end A209465.P13923281371622261923

/-! ## A209465.P10843854969662533055

`A209527(n+1)-A001878(A102400(n))`
-/

namespace A209465.P10843854969662533055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209527 (n + 1) - A001878 (A102400 n).toNat

end

end A209465.P10843854969662533055

/-! ## A209465.P12947651067312077765

`A004179(A209527(n+1))`
-/

namespace A209465.P12947651067312077765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A209527 (n + 1)).toNat

end

end A209465.P12947651067312077765

/-!
# A209466: Final digit of n^n - n.

The programs for A209466, there is no canonical definition to state claims against.
-/

/-! ## A209466.P2276677108060998482

`(n^n-n)%10`
-/

namespace A209466.P2276677108060998482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ n : ℤ) - (n : ℤ)) 10

end

end A209466.P2276677108060998482

/-!
# A209468: Number of n X n 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209468, there is no canonical definition to state claims against.
-/

/-! ## A209468.P10699637756288382957

`A209476((n+1)²+n²)`
-/

namespace A209468.P10699637756288382957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 ((n + 1) ^ 2 + n ^ 2)

end

end A209468.P10699637756288382957

/-! ## A209468.P14171645444261557125

`A209476(A001844(n))+A033665(n)`
-/

namespace A209468.P14171645444261557125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A001844 n).toNat + A033665 n

end

end A209468.P14171645444261557125

/-! ## A209468.P10729841097693387584

`A034799(n)*A209476(A001844(n))`
-/

namespace A209468.P10729841097693387584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034799 n * A209476 (A001844 n).toNat

end

end A209468.P10729841097693387584

/-!
# A209469: Number of n X 1 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209469, there is no canonical definition to state claims against.
-/

/-! ## A209469.P16175690118923394418

`A209476(∑[n]+1)`
-/

namespace A209469.P16175690118923394418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209469.P16175690118923394418

/-! ## A209469.P7209274227563692100

`record[A010054(n)*A209476(n+1)]`
-/

namespace A209469.P7209274227563692100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209469.P7209274227563692100

/-! ## A209469.P6047032364822303248

`record[root(A209476(n+1), A013609(n))]`
-/

namespace A209469.P6047032364822303248
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209476 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209469.P6047032364822303248

/-! ## A209469.P2040401893762135869

`record[root(A209476(n+1), A046741(n))]`
-/

namespace A209469.P2040401893762135869
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209476 (n + 1) : ℝ) ^ (1 / (A046741 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209469.P2040401893762135869

/-! ## A209469.P16502980967447683264

`record[gcd(A209476(n+1), A293108(n))]`
-/

namespace A209469.P16502980967447683264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209476 (n + 1)) (A293108 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209469.P16502980967447683264

/-!
# A209470: Number of nX2 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209470, there is no canonical definition to state claims against.
-/

/-! ## A209470.P2836593369049546183

`A209476(∑[n+1]+2)`
-/

namespace A209470.P2836593369049546183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209470.P2836593369049546183

/-! ## A209470.P9322498079008344351

`record[A010054(n)*A209476(n+2)]`
-/

namespace A209470.P9322498079008344351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A209476 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209470.P9322498079008344351

/-! ## A209470.P4689693940607785104

`or(A178334(n), A209476(A000096(n+1)))`
-/

namespace A209470.P4689693940607785104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178334 n) (A209476 (A000096 (n + 1)).toNat)

end

end A209470.P4689693940607785104

/-! ## A209470.P16482912286644931613

`or(A209476(A000096(n+1)), A273190(n))`
-/

namespace A209470.P16482912286644931613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A209476 (A000096 (n + 1)).toNat) (A273190 n)

end

end A209470.P16482912286644931613

/-! ## A209470.P14598287148377574182

`A178334(n+1)*A209476(A000096(n+1))`
-/

namespace A209470.P14598287148377574182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 1) * A209476 (A000096 (n + 1)).toNat

end

end A209470.P14598287148377574182

/-!
# A209471: Number of nX3 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209471, there is no canonical definition to state claims against.
-/

/-! ## A209471.P4334560070181678622

`A209476(∑[n+2]+4)`
-/

namespace A209471.P4334560070181678622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209471.P4334560070181678622

/-! ## A209471.P14927996439246437273

`A209476(A167614(n+1))+A025437(n)`
-/

namespace A209471.P14927996439246437273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A167614 (n + 1)).toNat + A025437 n

end

end A209471.P14927996439246437273

/-! ## A209471.P11057472587982180554

`lcm(A033999(n), A209476(A167614(n+1)))`
-/

namespace A209471.P11057472587982180554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209476 (A167614 (n + 1)).toNat)

end

end A209471.P11057472587982180554

/-! ## A209471.P9052241988657514112

`or(A000007(n), A209476(A167614(n+1)))`
-/

namespace A209471.P9052241988657514112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A209476 (A167614 (n + 1)).toNat)

end

end A209471.P9052241988657514112

/-! ## A209471.P15795697734924638589

`A209476(A167614(n+1))%A183550(n+1)`
-/

namespace A209471.P15795697734924638589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209476 (A167614 (n + 1)).toNat) (A183550 (n + 1))

end

end A209471.P15795697734924638589

/-!
# A209472: Number of n X 4 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209472, there is no canonical definition to state claims against.
-/

/-! ## A209472.P9510586704052138699

`A209476(A141214(n)+7)`
-/

namespace A209472.P9510586704052138699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A141214 n + 7).toNat

end

end A209472.P9510586704052138699

/-! ## A209472.P16293900874444324760

`A209476(A052905(n)+9)`
-/

namespace A209472.P16293900874444324760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A052905 n + 9).toNat

end

end A209472.P16293900874444324760

/-! ## A209472.P16518194267967807787

`A209476(A167614(n+2)+1)`
-/

namespace A209472.P16518194267967807787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A167614 (n + 2) + 1).toNat

end

end A209472.P16518194267967807787

/-! ## A209472.P17378523125500412961

`A209476(A374004(n+1))`
-/

namespace A209472.P17378523125500412961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A374004 (n + 1)).toNat

end

end A209472.P17378523125500412961

/-! ## A209472.P8968198442262443737

`A209476(A155212(n)+5)`
-/

namespace A209472.P8968198442262443737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A155212 n + 5).toNat

end

end A209472.P8968198442262443737

/-!
# A209473: Number of nX5 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209473, there is no canonical definition to state claims against.
-/

/-! ## A209473.P17437062860215640723

`A209476(A056000(n)+15)`
-/

namespace A209473.P17437062860215640723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A056000 n + 15).toNat

end

end A209473.P17437062860215640723

/-! ## A209473.P6196180287554275514

`A209476(A051936(n+4)+14)`
-/

namespace A209473.P6196180287554275514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A051936 (n + 4) + 14).toNat

end

end A209473.P6196180287554275514

/-! ## A209473.P4692024847823454440

`A209476(eq[6, A131818(n+1)])`
-/

namespace A209473.P4692024847823454440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209473.P4692024847823454440

/-! ## A209473.P10397464105593192463

`A209476(A374005(n+1))`
-/

namespace A209473.P10397464105593192463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A374005 (n + 1)).toNat

end

end A209473.P10397464105593192463

/-! ## A209473.P4780073067547828070

`A209476(eq[4, A193592(n)])`
-/

namespace A209473.P4780073067547828070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209473.P4780073067547828070

/-!
# A209474: Number of nX6 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209474, there is no canonical definition to state claims against.
-/

/-! ## A209474.P7432107586444935478

`A209476(A374007(n+1))`
-/

namespace A209474.P7432107586444935478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A374007 (n + 1)).toNat

end

end A209474.P7432107586444935478

/-! ## A209474.P6913143794525794125

`A209476(eq[5, A193592(n)])`
-/

namespace A209474.P6913143794525794125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209474.P6913143794525794125

/-! ## A209474.P9324028661307319330

`A209476(eq[16, A057728(n+1)])`
-/

namespace A209474.P9324028661307319330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209474.P9324028661307319330

/-!
# A209475: Number of nX7 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209475, there is no canonical definition to state claims against.
-/

/-! ## A209475.P10737398784538982526

`A209476(A374008(n+1))`
-/

namespace A209475.P10737398784538982526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (A374008 (n + 1)).toNat

end

end A209475.P10737398784538982526

/-! ## A209475.P3782401977874590210

`A209476(eq[6, A193592(n)])`
-/

namespace A209475.P3782401977874590210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209475.P3782401977874590210

/-!
# A209476: T(n,k)=Number of nXk 0..2 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209476, there is no canonical definition to state claims against.
-/

/-! ## A209476.P13740881800281193272

`A071542(A221165(n+1)%A122528(2*n+3))`
-/

namespace A209476.P13740881800281193272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (Int.tmod (A221165 (n + 1)) (A122528 (2 * n + 3))).toNat

end

end A209476.P13740881800281193272

/-!
# A209477: Number of n-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209477, there is no canonical definition to state claims against.
-/

/-! ## A209477.P12575848503737564480

`A209485(∑[4*n]+1)`
-/

namespace A209477.P12575848503737564480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209477.P12575848503737564480

/-! ## A209477.P15782620739663163137

`record[A209485(Δ[A235355(n)])]`
-/

namespace A209477.P15782620739663163137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209477.P15782620739663163137

/-! ## A209477.P17128572311632927742

`record[A209485(A178218(n+1))]`
-/

namespace A209477.P17128572311632927742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209477.P17128572311632927742

/-! ## A209477.P9326848458429565012

`record[A209485(A330613(n+1))]`
-/

namespace A209477.P9326848458429565012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209477.P9326848458429565012

/-! ## A209477.P9893763249733936251

`A209485(A001844(n))+char[14]`
-/

namespace A209477.P9893763249733936251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209477.P9893763249733936251

/-!
# A209478: Number of n-bead necklaces labeled with numbers -1..1 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209478, there is no canonical definition to state claims against.
-/

/-! ## A209478.P1804201577202679640

`A209485(∑[n+1])`
-/

namespace A209478.P1804201577202679640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209478.P1804201577202679640

/-! ## A209478.P11340105575329760408

`A209485(A000217(n+1))+char[30]`
-/

namespace A209478.P11340105575329760408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209478.P11340105575329760408

/-! ## A209478.P10240862435476297834

`A209485(A025747(n))+A025469(n)`
-/

namespace A209478.P10240862435476297834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A025747 n).toNat + A025469 n

end

end A209478.P10240862435476297834

/-! ## A209478.P14162556238569785427

`A209485(A025747(n))%A083575(n)`
-/

namespace A209478.P14162556238569785427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209485 (A025747 n).toNat) (A083575 n)

end

end A209478.P14162556238569785427

/-! ## A209478.P844849039734981880

`A209485(A000217(n+1))%A083575(n)`
-/

namespace A209478.P844849039734981880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209485 (A000217 (n + 1)).toNat) (A083575 n)

end

end A209478.P844849039734981880

/-!
# A209479: Number of n-bead necklaces labeled with numbers -2..2 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209479, there is no canonical definition to state claims against.
-/

/-! ## A209479.P16898002759983502973

`A209485(∑[n+2])`
-/

namespace A209479.P16898002759983502973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209479.P16898002759983502973

/-! ## A209479.P10634394961875716744

`record[A209485(A198455(n+1))]`
-/

namespace A209479.P10634394961875716744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209479.P10634394961875716744

/-! ## A209479.P18235477476683456847

`record[A209485(A333530(n+1))]`
-/

namespace A209479.P18235477476683456847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209479.P18235477476683456847

/-! ## A209479.P8045122154547296190

`record[A209485(A209268(2*(n+1)))]`
-/

namespace A209479.P8045122154547296190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A209268 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209479.P8045122154547296190

/-! ## A209479.P12238726290115957672

`A209485(A000096(n+1))+char[16]`
-/

namespace A209479.P12238726290115957672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209479.P12238726290115957672

/-!
# A209480: Number of n-bead necklaces labeled with numbers -3..3 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209480, there is no canonical definition to state claims against.
-/

/-! ## A209480.P9239240295936691582

`A209485(∑[n+3]+1)`
-/

namespace A209480.P9239240295936691582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209480.P9239240295936691582

/-! ## A209480.P482748092760805699

`record[A209485(A237519(n+1))]`
-/

namespace A209480.P482748092760805699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209480.P482748092760805699

/-! ## A209480.P7081351376567863221

`record[A209485(A198455(n+1)-1)]`
-/

namespace A209480.P7081351376567863221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209480.P7081351376567863221

/-! ## A209480.P9843674639936864149

`record[A209485(A333530(n+1)-1)]`
-/

namespace A209480.P9843674639936864149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A333530 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209480.P9843674639936864149

/-! ## A209480.P10295906213585243226

`record[gcd(A055138(n), A209485(n+1))]`
-/

namespace A209480.P10295906213585243226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055138 n) (A209485 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209480.P10295906213585243226

/-!
# A209481: Number of n-bead necklaces labeled with numbers -4..4 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209481, there is no canonical definition to state claims against.
-/

/-! ## A209481.P9004603639682368277

`A209485(C(n+4, 2)+n+1)`
-/

namespace A209481.P9004603639682368277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (Nat.choose (n + 4) 2 + (n + 1))

end

end A209481.P9004603639682368277

/-! ## A209481.P1226197049699434977

`A209485(A141214(n+1))`
-/

namespace A209481.P1226197049699434977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A141214 (n + 1)).toNat

end

end A209481.P1226197049699434977

/-! ## A209481.P7315191009579007121

`A209485(A027379(n+2))`
-/

namespace A209481.P7315191009579007121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A027379 (n + 2)).toNat

end

end A209481.P7315191009579007121

/-! ## A209481.P14793618670365430732

`A209485(A055998(n+2))`
-/

namespace A209481.P14793618670365430732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A055998 (n + 2)).toNat

end

end A209481.P14793618670365430732

/-! ## A209481.P14567052962843000088

`A209485(A155212(n)+5)`
-/

namespace A209481.P14567052962843000088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A155212 n + 5).toNat

end

end A209481.P14567052962843000088

/-!
# A209482: Number of n-bead necklaces labeled with numbers -5..5 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209482, there is no canonical definition to state claims against.
-/

/-! ## A209482.P16439721360875687767

`A209485(∑[n+5]+6)`
-/

namespace A209482.P16439721360875687767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A209482.P16439721360875687767

/-!
# A209483: Number of n-bead necklaces labeled with numbers -6..6 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209483, there is no canonical definition to state claims against.
-/

/-! ## A209483.P8719041027032520363

`A209485(A052905(n+3))`
-/

namespace A209483.P8719041027032520363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A052905 (n + 3)).toNat

end

end A209483.P8719041027032520363

/-! ## A209483.P7339452079674123568

`A209485(A302537(n)+15)`
-/

namespace A209483.P7339452079674123568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A302537 n + 15).toNat

end

end A209483.P7339452079674123568

/-! ## A209483.P15143562198688900283

`A209485(A056119(n)+16)`
-/

namespace A209483.P15143562198688900283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A056119 n + 16).toNat

end

end A209483.P15143562198688900283

/-! ## A209483.P17109902036961457318

`A209485(eq[3, A219347(n)])`
-/

namespace A209483.P17109902036961457318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209483.P17109902036961457318

/-! ## A209483.P6185158507885581742

`A209485(eq[5, A152157(n)])`
-/

namespace A209483.P6185158507885581742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209483.P6185158507885581742

/-!
# A209484: Number of n-bead necklaces labeled with numbers -7..7 allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209484, there is no canonical definition to state claims against.
-/

/-! ## A209484.P1218546541516074306

`A209485(A055999(n+4))`
-/

namespace A209484.P1218546541516074306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A055999 (n + 4)).toNat

end

end A209484.P1218546541516074306

/-! ## A209484.P11302444147780946302

`A209485(eq[4, A219347(n)])`
-/

namespace A209484.P11302444147780946302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209484.P11302444147780946302

/-! ## A209484.P11480683622722155088

`A209485(eq[5, A332954(n)])`
-/

namespace A209484.P11480683622722155088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209484.P11480683622722155088

/-! ## A209484.P7576938716479535836

`A209485(eq[6, A193592(n)])`
-/

namespace A209484.P7576938716479535836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209484.P7576938716479535836

/-! ## A209484.P1467315173613551320

`A209485(eq[7, A152157(n)])`
-/

namespace A209484.P1467315173613551320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209484.P1467315173613551320

/-!
# A209485: T(n,k) is the number of n-bead necklaces labeled with numbers -k..k allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209485, there is no canonical definition to state claims against.
-/

/-! ## A209485.P11723147522411164994

`A209344(n+1)-A025469(A022089(n))`
-/

namespace A209485.P11723147522411164994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (n + 1) - A025469 (A022089 n).toNat

end

end A209485.P11723147522411164994

/-! ## A209485.P13378911241861738589

`A209344(n+1)-A318315(A104176(n))`
-/

namespace A209485.P13378911241861738589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (n + 1) - A318315 (A104176 n).toNat

end

end A209485.P13378911241861738589

/-! ## A209485.P624772433277673183

`A209344(n+1)-A342023(A320917(n+1))`
-/

namespace A209485.P624772433277673183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (n + 1) - A342023 (A320917 (n + 1)).toNat

end

end A209485.P624772433277673183

/-! ## A209485.P2939799425348365309

`A209344(n+1)-A187946(A111115(n+1))`
-/

namespace A209485.P2939799425348365309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (n + 1) - A187946 (A111115 (n + 1)).toNat

end

end A209485.P2939799425348365309

/-! ## A209485.P13527779377666285251

`A209344(n+1)+A025442(A131577(n))-A025437(n)`
-/

namespace A209485.P13527779377666285251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (n + 1) + (A025442 (A131577 n).toNat - A025437 n)

end

end A209485.P13527779377666285251

/-!
# A209486: Number of 5-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209486, there is no canonical definition to state claims against.
-/

/-! ## A209486.P479249182210918278

`A209485(A167499(n+3))`
-/

namespace A209486.P479249182210918278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A167499 (n + 3)).toNat

end

end A209486.P479249182210918278

/-! ## A209486.P12227113850765699098

`A209485(A155212(n)+13)`
-/

namespace A209486.P12227113850765699098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A155212 n + 13).toNat

end

end A209486.P12227113850765699098

/-! ## A209486.P3187078161524088482

`A209485(A056000(n)+15)`
-/

namespace A209486.P3187078161524088482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A056000 n + 15).toNat

end

end A209486.P3187078161524088482

/-! ## A209486.P10070680456694601905

`A209485(eq[7, A066657(n)])`
-/

namespace A209486.P10070680456694601905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209486.P10070680456694601905

/-! ## A209486.P5340433343667203394

`A209485(A167614(n+3)+2)`
-/

namespace A209486.P5340433343667203394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A167614 (n + 3) + 2).toNat

end

end A209486.P5340433343667203394

/-!
# A209487: Number of 6-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209487, there is no canonical definition to state claims against.
-/

/-! ## A209487.P14321199055831469739

`A209485(A166136(n+4))`
-/

namespace A209487.P14321199055831469739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A166136 (n + 4)).toNat

end

end A209487.P14321199055831469739

/-! ## A209487.P8056123411113370609

`A209485(A056115(n)+21)`
-/

namespace A209487.P8056123411113370609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A056115 n + 21).toNat

end

end A209487.P8056123411113370609

/-! ## A209487.P7720366807481880027

`A209485(A167499(n+4)+1)`
-/

namespace A209487.P7720366807481880027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A167499 (n + 4) + 1).toNat

end

end A209487.P7720366807481880027

/-! ## A209487.P5770516258543156540

`A209485(A167614(n+4)+3)`
-/

namespace A209487.P5770516258543156540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A167614 (n + 4) + 3).toNat

end

end A209487.P5770516258543156540

/-! ## A209487.P12461124690463270224

`A209485(A000096(n+4)+7)`
-/

namespace A209487.P12461124690463270224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A000096 (n + 4) + 7).toNat

end

end A209487.P12461124690463270224

/-!
# A209488: Number of 7-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero and avoiding the patterns z z+1 z+2 and z z-1 z-2.

The programs for A209488, there is no canonical definition to state claims against.
-/

/-! ## A209488.P17378677935170567397

`A209485(C(n+8, 2)-n)`
-/

namespace A209488.P17378677935170567397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (Nat.choose (n + 8) 2 - n)

end

end A209488.P17378677935170567397

/-! ## A209488.P10826567553611396608

`A209485(A167487(n+5))`
-/

namespace A209488.P10826567553611396608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A167487 (n + 5)).toNat

end

end A209488.P10826567553611396608

/-! ## A209488.P5029671229323738332

`A209485(A302537(n)+27)`
-/

namespace A209488.P5029671229323738332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A302537 n + 27).toNat

end

end A209488.P5029671229323738332

/-! ## A209488.P4173078195263435943

`A209485(A056119(n)+28)`
-/

namespace A209488.P4173078195263435943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (A056119 n + 28).toNat

end

end A209488.P4173078195263435943

/-! ## A209488.P13140177290122763400

`A209485(eq[11, A066657(n)])`
-/

namespace A209488.P13140177290122763400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209488.P13140177290122763400

/-!
# A209489: a(n) = A306912(n) - 2.

The programs for A209489, there is no canonical definition to state claims against.
-/

/-! ## A209489.P9335605874190497656

`A306912(n+1)-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209489.P9335605874190497656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306912 (n + 1) - 2

end

end A209489.P9335605874190497656

/-! ## A209489.P10234744715052623104

`∑[A000837(n+1)]-1`
-/

namespace A209489.P10234744715052623104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A209489.P10234744715052623104

/-! ## A209489.P2702502216862709227

`∑[∑{d}[n+1, A100953(#)]]-1`
-/

namespace A209489.P2702502216862709227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A100953 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A209489.P2702502216862709227

/-! ## A209489.P4600298880890438664

`∑[A000837(n+1)%A139041(n+1)]`
-/

namespace A209489.P4600298880890438664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000837 (n + 1)) (A139041 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209489.P4600298880890438664

/-! ## A209489.P12331647062294304247

`A049347(3*n+4)+∑[A000837(n+1)]`
-/

namespace A209489.P12331647062294304247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209489.P12331647062294304247

/-! ## A209489.P10256346794884946517

`∑[A300486(n+1)-1]`
-/

namespace A209489.P10256346794884946517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300486 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209489.P10256346794884946517

/-! ## A209489.P15740225106268587803

`∑[A168532(∑[n]+1)]-1`
-/

namespace A209489.P15740225106268587803
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A209489.P15740225106268587803

/-!
# A209490: Table T(d,n), read by antidiagonals, gives the number of subsets of length n containing an arithmetic progression of length 3 with distance d.

The programs for A209490, there is no canonical definition to state claims against.
-/

/-! ## A209490.P8486643882520441235

`A209491(∑[char[∑[n]]]²-n+2)`
-/

namespace A209490.P8486643882520441235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209491 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A209490.P8486643882520441235

/-!
# A209491: Table T(n,d), read by antidiagonals, gives the number of subsets of length n containing an arithmetic progression of length 3 with distance d.

The programs for A209491, there is no canonical definition to state claims against.
-/

/-! ## A209491.P13590950539014746288

`A209490(∑[char[∑[n]]]²-n+2)`
-/

namespace A209491.P13590950539014746288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209490 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 2).toNat

end

end A209491.P13590950539014746288

/-!
# A209492: a(0)=1; for n >= 1, let k = floor((1 + sqrt(8*n-7))/2), m = n - (k^2 - k+2)/2. Then a(n) = 2^k + 2^(m+1) - 1.

The programs for A209492, the canonical program `A209492.P3658957468068443564` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209492 has offset 0).

The definition of A209492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209492.P6541935714699873296

`A099627(comp[∑[n+1]])`
-/

namespace A209492.P6541935714699873296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A209492.P6541935714699873296

namespace A209492

/-- `A099627(comp[∑[n+1]])` -/
def P6541935714699873296.Spec : Prop :=
  ∀ n, P6541935714699873296.a n = A209492 n

end A209492

/-! ## A209492.P9573988107588099119

`record[lcm(2, A099627(n))/2]`
-/

namespace A209492.P9573988107588099119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A099627 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209492.P9573988107588099119

namespace A209492

/-- `record[lcm(2, A099627(n))/2]` -/
def P9573988107588099119.Spec : Prop :=
  ∀ n, P9573988107588099119.a n = (A209492 n : ℚ)

end A209492

/-! ## A209492.P3658957468068443564

`2*A048645(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209492

/-- `2*A048645(n+1)-1` -/
def P3658957468068443564.Spec : Prop :=
  ∀ n, P3658957468068443564.a n = A209492 n

theorem P3658957468068443564.correct : P3658957468068443564.Spec := by
  intro n
  simp only [A209492]

end A209492

/-! ## A209492.P11960736911295400663

`or(1, A018900(n+1)-2)`
-/

namespace A209492.P11960736911295400663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018900 (n + 1) - 2)

end

end A209492.P11960736911295400663

namespace A209492

/-- `or(1, A018900(n+1)-2)` -/
def P11960736911295400663.Spec : Prop :=
  ∀ n, P11960736911295400663.a n = A209492 n

end A209492

/-! ## A209492.P8422589381915726383

`A048645(A080036(n)+1)-1`
-/

namespace A209492.P8422589381915726383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (A080036 n + 1).toNat - 1

end

end A209492.P8422589381915726383

namespace A209492

/-- `A048645(A080036(n)+1)-1` -/
def P8422589381915726383.Spec : Prop :=
  ∀ n, P8422589381915726383.a n = A209492 n

end A209492

/-! ## A209492.P11487313679978293260

`A173786(A080036(n)-1)-1`
-/

namespace A209492.P11487313679978293260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A080036 n - 1).toNat - 1

end

end A209492.P11487313679978293260

namespace A209492

/-- `A173786(A080036(n)-1)-1` -/
def P11487313679978293260.Spec : Prop :=
  ∀ n, P11487313679978293260.a n = A209492 n

end A209492

/-! ## A209492.P1405693635505829586

`A018900(n+1)-A035214(n)`
-/

namespace A209492.P1405693635505829586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - A035214 n

end

end A209492.P1405693635505829586

namespace A209492

/-- `A018900(n+1)-A035214(n)` -/
def P1405693635505829586.Spec : Prop :=
  ∀ n, P1405693635505829586.a n = A209492 n

end A209492

/-! ## A209492.P4464245616235143230

`A099628(n+1)-A010054(n)`
-/

namespace A209492.P4464245616235143230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) - A010054 n

end

end A209492.P4464245616235143230

namespace A209492

/-- `A099628(n+1)-A010054(n)` -/
def P4464245616235143230.Spec : Prop :=
  ∀ n, P4464245616235143230.a n = A209492 n

end A209492

/-! ## A209492.P16928886658316455646

`A173786(A123578(n)+n)-1`
-/

namespace A209492.P16928886658316455646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 (A123578 n + (n : ℤ)).toNat - 1

end

end A209492.P16928886658316455646

namespace A209492

/-- `A173786(A123578(n)+n)-1` -/
def P16928886658316455646.Spec : Prop :=
  ∀ n, P16928886658316455646.a n = A209492 n

end A209492

/-! ## A209492.P14304818047371959798

`A018900(n+1)-(A010054(n)+1)`
-/

namespace A209492.P14304818047371959798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (A010054 n + 1)

end

end A209492.P14304818047371959798

namespace A209492

/-- `A018900(n+1)-(A010054(n)+1)` -/
def P14304818047371959798.Spec : Prop :=
  ∀ n, P14304818047371959798.a n = A209492 n

end A209492

/-! ## A209492.P1568177904647846451

`A048645(n+1)+A099627(n)-A232089(n)`
-/

namespace A209492.P1568177904647846451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1) + (A099627 n - A232089 n)

end

end A209492.P1568177904647846451

namespace A209492

/-- `A048645(n+1)+A099627(n)-A232089(n)` -/
def P1568177904647846451.Spec : Prop :=
  ∀ n, P1568177904647846451.a n = A209492 n

end A209492

/-! ## A209492.P7131939503993078864

`∩[A390211(n+1), A099627(n)]`
-/

namespace A209492.P7131939503993078864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209492.P7131939503993078864

namespace A209492

/-- `∩[A390211(n+1), A099627(n)]` -/
def P7131939503993078864.Spec : Prop :=
  ∀ n, (P7131939503993078864.a n : ℤ) = A209492 n

end A209492

/-! ## A209492.P18346054988736494237

`A018900(n+1)-(3-A006530(A059268(n)))`
-/

namespace A209492.P18346054988736494237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1) - (3 - A006530 (A059268 n).toNat)

end

end A209492.P18346054988736494237

namespace A209492

/-- `A018900(n+1)-(3-A006530(A059268(n)))` -/
def P18346054988736494237.Spec : Prop :=
  ∀ n, P18346054988736494237.a n = A209492 n

end A209492

/-! ## A209492.P17322707172175036771

`record[and(1, A161924(n+1))*A161924(n+1)]`
-/

namespace A209492.P17322707172175036771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A161924 (n + 1)) * A161924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209492.P17322707172175036771

namespace A209492

/-- `record[and(1, A161924(n+1))*A161924(n+1)]` -/
def P17322707172175036771.Spec : Prop :=
  ∀ n, P17322707172175036771.a n = A209492 n

end A209492

/-! ## A209492.P4970367840713743689

`filter[A099627(n), A361023(#)]`
-/

namespace A209492.P4970367840713743689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A209492.P4970367840713743689

namespace A209492

/-- `filter[A099627(n), A361023(#)]` -/
def P4970367840713743689.Spec : Prop :=
  ∀ n, P4970367840713743689.a n = A209492 n

end A209492

/-! ## A209492.P11728868492335640859

`filter[A134310(n+2), A361023(#)]`
-/

namespace A209492.P11728868492335640859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361023 (f1 j).toNat = 1) n)

end

end A209492.P11728868492335640859

namespace A209492

/-- `filter[A134310(n+2), A361023(#)]` -/
def P11728868492335640859.Spec : Prop :=
  ∀ n, P11728868492335640859.a n = A209492 n

end A209492

/-! ## A209492.P8599796310533367594

`A000265(A048645(n+1)+A048645(n+1)-1)`
-/

namespace A209492.P8599796310533367594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A048645 (n + 1) + (A048645 (n + 1) - 1)).toNat

end

end A209492.P8599796310533367594

namespace A209492

/-- `A000265(A048645(n+1)+A048645(n+1)-1)` -/
def P8599796310533367594.Spec : Prop :=
  ∀ n, P8599796310533367594.a n = A209492 n

end A209492

/-! ## A209492.P10902659051314975021

`∩[A099627(n), A173601(n)]`
-/

namespace A209492.P10902659051314975021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A209492.P10902659051314975021

namespace A209492

/-- `∩[A099627(n), A173601(n)]` -/
def P10902659051314975021.Spec : Prop :=
  ∀ n, (P10902659051314975021.a n : ℤ) = A209492 n

end A209492

/-! ## A209492.P9927399446810712409

`record[or(n+1, A135521(n+1))]`
-/

namespace A209492.P9927399446810712409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A135521 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209492.P9927399446810712409

namespace A209492

/-- `record[or(n+1, A135521(n+1))]` -/
def P9927399446810712409.Spec : Prop :=
  ∀ n, P9927399446810712409.a n = A209492 n

end A209492

/-! ## A209492.P14153238086641598660

`filter[A099627(n), A039982(#)]`
-/

namespace A209492.P14153238086641598660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A209492.P14153238086641598660

namespace A209492

/-- `filter[A099627(n), A039982(#)]` -/
def P14153238086641598660.Spec : Prop :=
  ∀ n, P14153238086641598660.a n = A209492 n

end A209492

/-!
# A209493: Indices of primes in sequence A006190.

The programs for A209493, there is no canonical definition to state claims against.
-/

/-! ## A209493.P10522746196221624133

`p?[∑[A218533(A074392(n))]]`
-/

namespace A209493.P10522746196221624133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218533 (A074392 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209493.P10522746196221624133

/-! ## A209493.P18224908701225699689

`p?[∑[A025581(A173917(n+2))]]`
-/

namespace A209493.P18224908701225699689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A173917 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209493.P18224908701225699689

/-! ## A209493.P4935830994827363279

`p?[∑[A025581(A173917(n))]-2]`
-/

namespace A209493.P4935830994827363279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A173917 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209493.P4935830994827363279

/-!
# A209494: Smallest prime p such that 2p*n^2 - 1 is prime, or 0 if no such prime exists.

The programs for A209494, there is no canonical definition to state claims against.
-/

/-! ## A209494.P11432128314776245733

`p?[dr(A006503(A141759(n)))]`
-/

namespace A209494.P11432128314776245733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006503 (A141759 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209494.P11432128314776245733

/-! ## A209494.P4093754370583024948

`p?[dr(A144945(A144916(2*n+1)))]`
-/

namespace A209494.P4093754370583024948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A144945 (A144916 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A209494.P4093754370583024948

/-! ## A209494.P16370060231272725176

`p?[A098007(A339021((val(n+1, 2)+1)*(n+1)))]`
-/

namespace A209494.P16370060231272725176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098007 (A339021 ((SequenceMachineLib.valuation (n + 1) 2 + 1) * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209494.P16370060231272725176

/-! ## A209494.P4703449693532107207

`A053669(A173554(n+1)-A106859(n+1))`
-/

namespace A209494.P4703449693532107207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A173554 (n + 1) - A106859 (n + 1)).toNat

end

end A209494.P4703449693532107207

/-! ## A209494.P11501724437422973401

`A096843(A277274(n+1)%A073734(2*(n+2)))`
-/

namespace A209494.P11501724437422973401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096843 (Int.tmod (A277274 (n + 1)) (A073734 (2 * (n + 2)))).toNat

end

end A209494.P11501724437422973401

/-!
# A209496: Number of n X n 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209496, there is no canonical definition to state claims against.
-/

/-! ## A209496.P4009778501975645386

`A209503((n+1)²+n²)`
-/

namespace A209496.P4009778501975645386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 ((n + 1) ^ 2 + n ^ 2)

end

end A209496.P4009778501975645386

/-!
# A209497: Number of n X 2 0..4 arrays with every 2 X 2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209497, there is no canonical definition to state claims against.
-/

/-! ## A209497.P5755706430747886831

`A209503(∑[n+1]+2)`
-/

namespace A209497.P5755706430747886831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209497.P5755706430747886831

/-! ## A209497.P14062115524107892463

`lcm(A025453(n), A209503(A133263(n+1)))`
-/

namespace A209497.P14062115524107892463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A025453 n) (A209503 (A133263 (n + 1)).toNat)

end

end A209497.P14062115524107892463

/-! ## A209497.P8972529165292972940

`A209503(A133263(n+1))%A285560(2*n+1)`
-/

namespace A209497.P8972529165292972940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209503 (A133263 (n + 1)).toNat) (A285560 (2 * n + 1))

end

end A209497.P8972529165292972940

/-! ## A209497.P455255786385865571

`record[A209503(abs(A201163(n)))]`
-/

namespace A209497.P455255786385865571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209497.P455255786385865571

/-! ## A209497.P12699373184265296157

`record[A209503(Δ[A003453(n+5)])]`
-/

namespace A209497.P12699373184265296157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209497.P12699373184265296157

/-!
# A209498: Number of nX3 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209498, there is no canonical definition to state claims against.
-/

/-! ## A209498.P512957104437939954

`A209503(∑[n+2]+4)`
-/

namespace A209498.P512957104437939954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209498.P512957104437939954

/-! ## A209498.P4927711031712450071

`A326460(n)+A209503(A167614(n+1))`
-/

namespace A209498.P4927711031712450071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326460 n + A209503 (A167614 (n + 1)).toNat

end

end A209498.P4927711031712450071

/-! ## A209498.P9943745840635565699

`or(A000007(n), A209503(A167614(n+1)))`
-/

namespace A209498.P9943745840635565699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A209503 (A167614 (n + 1)).toNat)

end

end A209498.P9943745840635565699

/-! ## A209498.P15125312438436199153

`or(A010054(n), A209503(A167614(n+1)))`
-/

namespace A209498.P15125312438436199153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A209503 (A167614 (n + 1)).toNat)

end

end A209498.P15125312438436199153

/-! ## A209498.P9318286309948111326

`or(A151933(n), A209503(A167614(n+1)))`
-/

namespace A209498.P9318286309948111326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A209503 (A167614 (n + 1)).toNat)

end

end A209498.P9318286309948111326

/-!
# A209499: Number of nX4 0..4 arrays with every 2X2 subblock containing exactly one value repeat, and new values 0..4 introduced in row major order.

The programs for A209499, there is no canonical definition to state claims against.
-/

/-! ## A209499.P14622350474973224315

`A209503(A374004(n+1))`
-/

namespace A209499.P14622350474973224315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A374004 (n + 1)).toNat

end

end A209499.P14622350474973224315

/-! ## A209499.P17290119787024943097

`A209503(A141214(n)+7)`
-/

namespace A209499.P17290119787024943097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A141214 n + 7).toNat

end

end A209499.P17290119787024943097

/-! ## A209499.P6630376860319373312

`A209503(A052905(n)+9)`
-/

namespace A209499.P6630376860319373312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A052905 n + 9).toNat

end

end A209499.P6630376860319373312

/-! ## A209499.P1790490396644867573

`A209503(A055999(n)+10)`
-/

namespace A209499.P1790490396644867573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A055999 n + 10).toNat

end

end A209499.P1790490396644867573

/-! ## A209499.P11557108445799582501

`A209503(A167614(n+2)+1)`
-/

namespace A209499.P11557108445799582501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209503 (A167614 (n + 2) + 1).toNat

end

end A209499.P11557108445799582501

