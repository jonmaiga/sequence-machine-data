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
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A159900: Concatenation of the first n elements of A008578.

The programs for A159900, there is no canonical definition to state claims against.
-/

/-! ## A159900.P15841342954579822911

`A048794(A080355(n+1))`
-/

namespace A159900.P15841342954579822911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A080355 (n + 1)).toNat

end

end A159900.P15841342954579822911

/-!
# A159901: Concatenation of the first n squarefree numbers A005117.

The programs for A159901, there is no canonical definition to state claims against.
-/

/-! ## A159901.P3954244197517108416

`A000027(A262574(n+1))`
-/

namespace A159901.P3954244197517108416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A262574 (n + 1)).toNat

end

end A159901.P3954244197517108416

/-! ## A159901.P7075133898569539901

`A262574(n+1)+A063524(A011557(n)-1)`
-/

namespace A159901.P7075133898569539901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262574 (n + 1) + A063524 (A011557 n - 1).toNat

end

end A159901.P7075133898569539901

/-!
# A159902: Concatenation of the first n terms of A144338.

The programs for A159902, there is no canonical definition to state claims against.
-/

/-! ## A159902.P8200385688573213271

`A017305(a(n-1))-char[1]+n` with `a(0)=2`
-/

namespace A159902.P8200385688573213271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A017305 (a (n - 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A159902.P8200385688573213271

/-!
# A159905: Triangle read by rows, Mobius transform of A004736.

The programs for A159905, there is no canonical definition to state claims against.
-/

/-! ## A159905.P14402566170733305702

`2*A128522(n+1)-A128189(n+1)`
-/

namespace A159905.P14402566170733305702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128522 (n + 1) - A128189 (n + 1)

end

end A159905.P14402566170733305702

/-! ## A159905.P11818456217717345235

`A051276(A109316(n))`
-/

namespace A159905.P11818456217717345235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051276 (A109316 n).toNat

end

end A159905.P11818456217717345235

/-! ## A159905.P17358088899036505511

`A037827(31*A109316(n))`
-/

namespace A159905.P17358088899036505511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (31 * A109316 n).toNat

end

end A159905.P17358088899036505511

/-! ## A159905.P125466586923237873

`A037827(lcm(31, A109316(n)))`
-/

namespace A159905.P125466586923237873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (Int.lcm 31 (A109316 n))

end

end A159905.P125466586923237873

/-! ## A159905.P13511383928588288345

`A215113(A262551(n+2))`
-/

namespace A159905.P13511383928588288345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215113 (A262551 (n + 2)).toNat

end

end A159905.P13511383928588288345

/-!
# A159907: Numbers m with half-integral abundancy index, sigma(m)/m = k+1/2 with integer k.

The programs for A159907, there is no canonical definition to state claims against.
-/

/-! ## A159907.P2567659576864304220

`A242484(n+2)`
-/

namespace A159907.P2567659576864304220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242484 (n + 2)

end

end A159907.P2567659576864304220

/-! ## A159907.P5780647864124522336

`record[A242484(∑[2-and(3, n)])]`
-/

namespace A159907.P5780647864124522336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242484 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159907.P5780647864124522336

/-! ## A159907.P5291473488031805070

`record[lcm(2, A242484(A065648(n)))]`
-/

namespace A159907.P5291473488031805070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A242484 (A065648 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159907.P5291473488031805070

/-! ## A159907.P11544536152264148429

`record[A242484(or(n, A000038(n)))]`
-/

namespace A159907.P11544536152264148429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242484 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159907.P11544536152264148429

/-! ## A159907.P11869230172077540410

`record[A242484(xor(n, A000038(n)))]`
-/

namespace A159907.P11869230172077540410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242484 (Int.xor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159907.P11869230172077540410

/-!
# A159908: Number of pairs (p,q) of primes p <= q <= r=prime(n) such that the cyclotomic polynomial Phi(p*q*r) has no coefficient > 1 in absolute value.

The programs for A159908, there is no canonical definition to state claims against.
-/

/-! ## A159908.P11090700303991887919

`A008486(n)+A159909(n+1)`
-/

namespace A159908.P11090700303991887919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A159909 (n + 1)

end

end A159908.P11090700303991887919

/-! ## A159908.P2351164478668791211

`A159909(n+1)+record[A257143(n)]`
-/

namespace A159908.P2351164478668791211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159909 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159908.P2351164478668791211

/-! ## A159908.P4885502382895884804

`A257143(2*n)+A159909(n+1)`
-/

namespace A159908.P4885502382895884804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257143 (2 * n) + A159909 (n + 1)

end

end A159908.P4885502382895884804

/-! ## A159908.P3201127327514067577

`A159909(n+1)+A004277(n)+n`
-/

namespace A159908.P3201127327514067577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159909 (n + 1) + (A004277 n + (n : ℤ))

end

end A159908.P3201127327514067577

/-!
# A159909: Number of pairs (p,q) of odd primes p < q < r=prime(n) such that the cyclotomic polynomial Phi(p*q*r) has no coefficient > 1 in absolute value.

The programs for A159909, there is no canonical definition to state claims against.
-/

/-! ## A159909.P13180539536938404523

`(A159908(n+1)+3)%(n+1)`
-/

namespace A159909.P13180539536938404523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159908 (n + 1) + 3) (n + 1 : ℤ)

end

end A159909.P13180539536938404523

/-! ## A159909.P17192471377686866817

`A159908(n+1)-A008486(n)`
-/

namespace A159909.P17192471377686866817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159908 (n + 1) - A008486 n

end

end A159909.P17192471377686866817

/-! ## A159909.P10494832584795609768

`A159908(n+1)%A028310(n)`
-/

namespace A159909.P10494832584795609768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159908 (n + 1)) (A028310 n)

end

end A159909.P10494832584795609768

/-!
# A159910: Distance of prime quadruplets divided by 30, rounded towards the nearest integer.

The programs for A159910, there is no canonical definition to state claims against.
-/

/-! ## A159910.P16089428099914761686

`Δ[A014561(A010051(2*(n+1))+n)]`
-/

namespace A159910.P16089428099914761686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (A010051 (2 * (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P16089428099914761686

/-! ## A159910.P16346844404092100552

`A014561(n+1)-A014561(A028310(n))`
-/

namespace A159910.P16346844404092100552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) - A014561 (A028310 n).toNat

end

end A159910.P16346844404092100552

/-! ## A159910.P322691402126028231

`A014561(n+1)-A014561(A000007(n)+n)`
-/

namespace A159910.P322691402126028231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) - A014561 (A000007 n + (n : ℤ)).toNat

end

end A159910.P322691402126028231

/-! ## A159910.P10545076616144280108

`A061668(n+1)-A061668(A000007(n)+n)`
-/

namespace A159910.P10545076616144280108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (n + 1) - A061668 (A000007 n + (n : ℤ)).toNat

end

end A159910.P10545076616144280108

/-! ## A159910.P8679848348275487494

`A014561(n+1)-A014561(gcd(n, A008458(n)))`
-/

namespace A159910.P8679848348275487494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (n + 1) - A014561 (Int.gcd (n : ℤ) (A008458 n))

end

end A159910.P8679848348275487494

/-! ## A159910.P1713840159422800196

`Δ[ceil(A007530(n+1)/30)]`
-/

namespace A159910.P1713840159422800196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007530 (n + 1) : ℚ) / 30⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P1713840159422800196

/-! ## A159910.P16028509040646992922

`Δ[ceil(A064974(n+1)/30)]`
-/

namespace A159910.P16028509040646992922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064974 (n + 1) : ℚ) / 30⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P16028509040646992922

/-! ## A159910.P5228513246032910279

`Δ[round(A125855(n+1)/30)]`
-/

namespace A159910.P5228513246032910279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A125855 (n + 1) : ℚ) / 30)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P5228513246032910279

/-! ## A159910.P15427240450459584850

`Δ[A014561(A000007(n)+n)]`
-/

namespace A159910.P15427240450459584850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P15427240450459584850

/-! ## A159910.P7798346947189270565

`Δ[A061668(A000007(n)+n)]`
-/

namespace A159910.P7798346947189270565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061668 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P7798346947189270565

/-! ## A159910.P5496205616695812467

`Δ[A014561(char[A242619(n)]+n)]`
-/

namespace A159910.P5496205616695812467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242619 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014561 ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159910.P5496205616695812467

/-!
# A159912: Partial sums of A159913(k) = 2^bitcount(2k+1)-1 = A038573(2k+1), bitcount=A000120.

The programs for A159912, the canonical program `A159912.P8331586336177565973` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159912 has offset 0).

The definition of A159912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159912.P8331586336177565973

`∑[gcd(2, n)*a(∑[n%2])]-n` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159912

/-- `∑[gcd(2, n)*a(∑[n%2])]-n` -/
def P8331586336177565973.Spec : Prop :=
  ∀ n, P8331586336177565973.a n = A159912 n

theorem P8331586336177565973.correct : P8331586336177565973.Spec := by
  intro n
  simp only [A159912]

end A159912

/-! ## A159912.P7291209663547933240

`∑[2*a(n-gcd(1-n, a(n-1)))]-n` with `a(0)=0, a(1)=2`
-/

namespace A159912.P7291209663547933240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  2 * f1 (n - Int.gcd (1 - (n : ℤ)) (f1 (n - 1) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A159912.P7291209663547933240

namespace A159912

/-- `∑[2*a(n-gcd(1-n, a(n-1)))]-n` -/
def P7291209663547933240.Spec : Prop :=
  ∀ n, P7291209663547933240.a n = A159912 n

end A159912

/-! ## A159912.P1580809930022256294

`∑[A131136(n)-1]`
-/

namespace A159912.P1580809930022256294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P1580809930022256294

namespace A159912

/-- `∑[A131136(n)-1]` -/
def P1580809930022256294.Spec : Prop :=
  ∀ n, P1580809930022256294.a n = A159912 n

end A159912

/-! ## A159912.P14962224901845602288

`A080978(n)-(n+1)`
-/

namespace A159912.P14962224901845602288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 n - (n + 1 : ℤ)

end

end A159912.P14962224901845602288

namespace A159912

/-- `A080978(n)-(n+1)` -/
def P14962224901845602288.Spec : Prop :=
  ∀ n, P14962224901845602288.a n = A159912 n

end A159912

/-! ## A159912.P10654095252542359416

`2*A006046(n)-n`
-/

namespace A159912.P10654095252542359416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006046 n - (n : ℤ)

end

end A159912.P10654095252542359416

namespace A159912

/-- `2*A006046(n)-n` -/
def P10654095252542359416.Spec : Prop :=
  ∀ n, P10654095252542359416.a n = A159912 n

end A159912

/-! ## A159912.P14504739350633667353

`A256256(n)/3-n`
-/

namespace A159912.P14504739350633667353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256256 n : ℚ) / 3 - (n : ℚ)

end

end A159912.P14504739350633667353

namespace A159912

/-- `A256256(n)/3-n` -/
def P14504739350633667353.Spec : Prop :=
  ∀ n, P14504739350633667353.a n = (A159912 n : ℚ)

end A159912

/-! ## A159912.P17453309812801523553

`∑[A001316(comp[2*(n+1)])-1]`
-/

namespace A159912.P17453309812801523553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P17453309812801523553

namespace A159912

/-- `∑[A001316(comp[2*(n+1)])-1]` -/
def P17453309812801523553.Spec : Prop :=
  ∀ n, P17453309812801523553.a n = A159912 n

end A159912

/-! ## A159912.P14393279687998450739

`∑[2*A001316(n)]-n-2*A001316(n)`
-/

namespace A159912.P14393279687998450739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ) - 2 * A001316 n

end

end A159912.P14393279687998450739

namespace A159912

/-- `∑[2*A001316(n)]-n-2*A001316(n)` -/
def P14393279687998450739.Spec : Prop :=
  ∀ n, P14393279687998450739.a n = A159912 n

end A159912

/-! ## A159912.P120501119886217045

`A006046(n)+A267700(n)-A038573(n)`
-/

namespace A159912.P120501119886217045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n + (A267700 n - A038573 n)

end

end A159912.P120501119886217045

namespace A159912

/-- `A006046(n)+A267700(n)-A038573(n)` -/
def P120501119886217045.Spec : Prop :=
  ∀ n, P120501119886217045.a n = A159912 n

end A159912

/-! ## A159912.P5464322111253320922

`∑[A001065(A131136(n))]`
-/

namespace A159912.P5464322111253320922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A131136 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P5464322111253320922

namespace A159912

/-- `∑[A001065(A131136(n))]` -/
def P5464322111253320922.Spec : Prop :=
  ∀ n, P5464322111253320922.a n = A159912 n

end A159912

/-! ## A159912.P13814927868816047865

`2*∑[sqrt(A177241(n))]-n`
-/

namespace A159912.P13814927868816047865
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177241 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℝ)

end

end A159912.P13814927868816047865

namespace A159912

/-- `2*∑[sqrt(A177241(n))]-n` -/
def P13814927868816047865.Spec : Prop :=
  ∀ n, P13814927868816047865.a n = (A159912 n : ℝ)

end A159912

/-! ## A159912.P17002639386372886398

`A151566(2*n)-n`
-/

namespace A159912.P17002639386372886398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (2 * n) - (n : ℤ)

end

end A159912.P17002639386372886398

namespace A159912

/-- `A151566(2*n)-n` -/
def P17002639386372886398.Spec : Prop :=
  ∀ n, P17002639386372886398.a n = A159912 n

end A159912

/-! ## A159912.P10924136192454293328

`∑[A038573(comp[2*(n+1)])]`
-/

namespace A159912.P10924136192454293328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P10924136192454293328

namespace A159912

/-- `∑[A038573(comp[2*(n+1)])]` -/
def P10924136192454293328.Spec : Prop :=
  ∀ n, P10924136192454293328.a n = A159912 n

end A159912

/-! ## A159912.P2820760613269413623

`∑[A000225(A000120(comp[2*(n+1)]))]`
-/

namespace A159912.P2820760613269413623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000120 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P2820760613269413623

namespace A159912

/-- `∑[A000225(A000120(comp[2*(n+1)]))]` -/
def P2820760613269413623.Spec : Prop :=
  ∀ n, P2820760613269413623.a n = A159912 n

end A159912

/-! ## A159912.P5815157080547513904

`A267700(2*n)-A267700(n)`
-/

namespace A159912.P5815157080547513904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (2 * n) - A267700 n

end

end A159912.P5815157080547513904

namespace A159912

/-- `A267700(2*n)-A267700(n)` -/
def P5815157080547513904.Spec : Prop :=
  ∀ n, P5815157080547513904.a n = A159912 n

end A159912

/-! ## A159912.P15931223668354185653

`∑[A038573(2*n+1)]-A038573(2*n+1)`
-/

namespace A159912.P15931223668354185653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038573 (2 * n + 1)

end

end A159912.P15931223668354185653

namespace A159912

/-- `∑[A038573(2*n+1)]-A038573(2*n+1)` -/
def P15931223668354185653.Spec : Prop :=
  ∀ n, P15931223668354185653.a n = A159912 n

end A159912

/-! ## A159912.P4210886642205009251

`∑[A088512(abs(1-4*n))]`
-/

namespace A159912.P4210886642205009251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088512 |1 - (4 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P4210886642205009251

namespace A159912

/-- `∑[A088512(abs(1-4*n))]` -/
def P4210886642205009251.Spec : Prop :=
  ∀ n, P4210886642205009251.a n = A159912 n

end A159912

/-! ## A159912.P12633390165776241453

`∑[A048896(A130824(n))-1]`
-/

namespace A159912.P12633390165776241453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (A130824 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159912.P12633390165776241453

namespace A159912

/-- `∑[A048896(A130824(n))-1]` -/
def P12633390165776241453.Spec : Prop :=
  ∀ n, P12633390165776241453.a n = A159912 n

end A159912

/-! ## A159912.P7284574844581582118

`∑[A159913(n)]-A159913(n)`
-/

namespace A159912.P7284574844581582118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159913 n

end

end A159912.P7284574844581582118

namespace A159912

/-- `∑[A159913(n)]-A159913(n)` -/
def P7284574844581582118.Spec : Prop :=
  ∀ n, P7284574844581582118.a n = A159912 n

end A159912

/-! ## A159912.P5284337327995264136

`A005843(A006046(n))-n`
-/

namespace A159912.P5284337327995264136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A006046 n).toNat - (n : ℤ)

end

end A159912.P5284337327995264136

namespace A159912

/-- `A005843(A006046(n))-n` -/
def P5284337327995264136.Spec : Prop :=
  ∀ n, P5284337327995264136.a n = A159912 n

end A159912

/-!
# A159913: a(n) = 2^(A000120(n) + 1) - 1, where A000120(n) = number of nonzero bits in n.

The programs for A159913, the canonical program `A159913.P7024736967465711485` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159913 has offset 0).

The definition of A159913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159913.P7024736967465711485

`A038573(2*n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A159913

/-- `A038573(2*n+1)` -/
def P7024736967465711485.Spec : Prop :=
  ∀ n, P7024736967465711485.a n = A159913 n

theorem P7024736967465711485.correct : P7024736967465711485.Spec := by
  intro n
  simp only [A159913]

end A159913

/-! ## A159913.P2549347708974065170

`2^(A000120(n)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A159913.P2549347708974065170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n + 1 : ℤ) - 1

end

end A159913.P2549347708974065170

namespace A159913

/-- `2^(A000120(n)+1)-1` -/
def P2549347708974065170.Spec : Prop :=
  ∀ n, P2549347708974065170.a n = (A159913 n : ℚ)

end A159913

/-! ## A159913.P7489078960191953269

`A159912(n+1)-A159912(n)`
-/

namespace A159913.P7489078960191953269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159912 (n + 1) - A159912 n

end

end A159913.P7489078960191953269

namespace A159913

/-- `A159912(n+1)-A159912(n)` -/
def P7489078960191953269.Spec : Prop :=
  ∀ n, P7489078960191953269.a n = A159913 n

end A159913

/-! ## A159913.P4246675780672992559

`2*a(and(n, n-1))+1` with `a(0)=1`
-/

namespace A159913.P4246675780672992559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

end

end A159913.P4246675780672992559

namespace A159913

/-- `2*a(and(n, n-1))+1` -/
def P4246675780672992559.Spec : Prop :=
  ∀ n, (P4246675780672992559.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P3841491278247614998

`lcm(2, a(and(n, n-1)))+1` with `a(0)=1`
-/

namespace A159913.P3841491278247614998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + 1

end

end A159913.P3841491278247614998

namespace A159913

/-- `lcm(2, a(and(n, n-1)))+1` -/
def P3841491278247614998.Spec : Prop :=
  ∀ n, (P3841491278247614998.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P5341053620080810709

`or(1, 2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A159913.P5341053620080810709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 1 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A159913.P5341053620080810709

namespace A159913

/-- `or(1, 2*a(and(n, n-1)))` -/
def P5341053620080810709.Spec : Prop :=
  ∀ n, (P5341053620080810709.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P440584079371365489

`xor(1, 2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A159913.P440584079371365489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A159913.P440584079371365489

namespace A159913

/-- `xor(1, 2*a(and(n, n-1)))` -/
def P440584079371365489.Spec : Prop :=
  ∀ n, (P440584079371365489.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P4537081642629037089

`∑{d}[2*a(and(n, n-1)), #]` with `a(0)=1`
-/

namespace A159913.P4537081642629037089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A159913.P4537081642629037089

namespace A159913

/-- `∑{d}[2*a(and(n, n-1)), #]` -/
def P4537081642629037089.Spec : Prop :=
  ∀ n, (P4537081642629037089.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P18287938066812426942

`Δ[A159912(n)]`
-/

namespace A159913.P18287938066812426942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159913.P18287938066812426942

namespace A159913

/-- `Δ[A159912(n)]` -/
def P18287938066812426942.Spec : Prop :=
  ∀ n, P18287938066812426942.a n = A159913 n

end A159913

/-! ## A159913.P5389743363086177731

`A117973(n)-1`
-/

namespace A159913.P5389743363086177731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117973 n - 1

end

end A159913.P5389743363086177731

namespace A159913

/-- `A117973(n)-1` -/
def P5389743363086177731.Spec : Prop :=
  ∀ n, P5389743363086177731.a n = A159913 n

end A159913

/-! ## A159913.P1536006135001788927

`A106524(4*n)`
-/

namespace A159913.P1536006135001788927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106524 (4 * n)

end

end A159913.P1536006135001788927

namespace A159913

/-- `A106524(4*n)` -/
def P1536006135001788927.Spec : Prop :=
  ∀ n, P1536006135001788927.a n = A159913 n

end A159913

/-! ## A159913.P13799499323802525283

`n-A064405(n)`
-/

namespace A159913.P13799499323802525283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064405 n

end

end A159913.P13799499323802525283

namespace A159913

/-- `n-A064405(n)` -/
def P13799499323802525283.Spec : Prop :=
  ∀ n, P13799499323802525283.a n = A159913 n

end A159913

/-! ## A159913.P10344132923435877978

`∑{d}[A001316(n), #]`
-/

namespace A159913.P10344132923435877978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A159913.P10344132923435877978

namespace A159913

/-- `∑{d}[A001316(n), #]` -/
def P10344132923435877978.Spec : Prop :=
  ∀ n, (P10344132923435877978.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P5964744452919423007

`Δ[A080978(n)]-1`
-/

namespace A159913.P5964744452919423007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A159913.P5964744452919423007

namespace A159913

/-- `Δ[A080978(n)]-1` -/
def P5964744452919423007.Spec : Prop :=
  ∀ n, P5964744452919423007.a n = A159913 n

end A159913

/-! ## A159913.P2956862432005616190

`∑{d}[Δ[A006046(n)], #]`
-/

namespace A159913.P2956862432005616190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A159913.P2956862432005616190

namespace A159913

/-- `∑{d}[Δ[A006046(n)], #]` -/
def P2956862432005616190.Spec : Prop :=
  ∀ n, (P2956862432005616190.a n : ℤ) = A159913 n

end A159913

/-! ## A159913.P13032704376827329816

`A131136(n+1)-1`
-/

namespace A159913.P13032704376827329816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131136 (n + 1) - 1

end

end A159913.P13032704376827329816

namespace A159913

/-- `A131136(n+1)-1` -/
def P13032704376827329816.Spec : Prop :=
  ∀ n, P13032704376827329816.a n = A159913 n

end A159913

/-! ## A159913.P4081066009099448467

`A071055(2*n)+1`
-/

namespace A159913.P4081066009099448467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 (2 * n) + 1

end

end A159913.P4081066009099448467

namespace A159913

/-- `A071055(2*n)+1` -/
def P4081066009099448467.Spec : Prop :=
  ∀ n, P4081066009099448467.a n = A159913 n

end A159913

/-! ## A159913.P8622132771365754504

`A256257(n)/3-1`
-/

namespace A159913.P8622132771365754504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / 3 - 1

end

end A159913.P8622132771365754504

namespace A159913

/-- `A256257(n)/3-1` -/
def P8622132771365754504.Spec : Prop :=
  ∀ n, P8622132771365754504.a n = (A159913 n : ℚ)

end A159913

/-! ## A159913.P12742270791099133797

`or(1, A071051(n)-1)`
-/

namespace A159913.P12742270791099133797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A071051 n - 1)

end

end A159913.P12742270791099133797

namespace A159913

/-- `or(1, A071051(n)-1)` -/
def P12742270791099133797.Spec : Prop :=
  ∀ n, P12742270791099133797.a n = A159913 n

end A159913

/-! ## A159913.P6189162595869040463

`A001316(Δ[n²])-1`
-/

namespace A159913.P6189162595869040463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A159913.P6189162595869040463

namespace A159913

/-- `A001316(Δ[n²])-1` -/
def P6189162595869040463.Spec : Prop :=
  ∀ n, P6189162595869040463.a n = A159913 n

end A159913

/-!
# A159914: Half the number of (n-3)-element subsets of {1,...,n} whose elements sum up to an odd value.

The programs for A159914, the canonical program `A159914.P7961439413337065731` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159914 has offset 0).

The definition of A159914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159914.P7961439413337065731

`∑[floor((n-1)/2)*floor(n/4)]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159914

/-- `∑[floor((n-1)/2)*floor(n/4)]` -/
def P7961439413337065731.Spec : Prop :=
  ∀ n, P7961439413337065731.a n = A159914 n

theorem P7961439413337065731.correct : P7961439413337065731.Spec := by
  intro n
  simp only [A159914]

end A159914

/-! ## A159914.P5867511788690427613

`A159915(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A159914.P5867511788690427613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A159915 (n - 1) + a (n - 1)

end

end A159914.P5867511788690427613

namespace A159914

/-- `A159915(n-1)+a(n-1)` -/
def P5867511788690427613.Spec : Prop :=
  ∀ n, P5867511788690427613.a n = A159914 n

end A159914

/-! ## A159914.P16149247220650893938

`∑[A159915(n)]-A159915(n)`
-/

namespace A159914.P16149247220650893938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A159915 n

end

end A159914.P16149247220650893938

namespace A159914

/-- `∑[A159915(n)]-A159915(n)` -/
def P16149247220650893938.Spec : Prop :=
  ∀ n, P16149247220650893938.a n = A159914 n

end A159914

/-! ## A159914.P8036462735058059983

`∑[2*A008217(n)]-A008217(n)`
-/

namespace A159914.P8036462735058059983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008217 n

end

end A159914.P8036462735058059983

namespace A159914

/-- `∑[2*A008217(n)]-A008217(n)` -/
def P8036462735058059983.Spec : Prop :=
  ∀ n, P8036462735058059983.a n = A159914 n

end A159914

/-! ## A159914.P4909355338066087981

`∑[A005843(A008217(n))]-A008217(n)`
-/

namespace A159914.P4909355338066087981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008217 n

end

end A159914.P4909355338066087981

namespace A159914

/-- `∑[A005843(A008217(n))]-A008217(n)` -/
def P4909355338066087981.Spec : Prop :=
  ∀ n, P4909355338066087981.a n = A159914 n

end A159914

/-! ## A159914.P11001642425131488222

`A032801(n+1)-A053186(A008217(n))`
-/

namespace A159914.P11001642425131488222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032801 (n + 1) - A053186 (A008217 n).toNat

end

end A159914.P11001642425131488222

namespace A159914

/-- `A032801(n+1)-A053186(A008217(n))` -/
def P11001642425131488222.Spec : Prop :=
  ∀ n, P11001642425131488222.a n = A159914 n

end A159914

/-! ## A159914.P10361177830002381603

`A130519(n)+A006463(A130519(n))`
-/

namespace A159914.P10361177830002381603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n + A006463 (A130519 n).toNat

end

end A159914.P10361177830002381603

namespace A159914

/-- `A130519(n)+A006463(A130519(n))` -/
def P10361177830002381603.Spec : Prop :=
  ∀ n, P10361177830002381603.a n = A159914 n

end A159914

/-!
# A159915: a(n) = floor((n+1)/4)*floor(n/2).

The programs for A159915, the canonical program `A159915.P10428730782914922366` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159915 has offset 0).

The definition of A159915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)/4)*floor(n/2)` (program `A159915.P10428730782914922366`, by `A159915.P10428730782914922366.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159915.P10428730782914922366

`floor((n+1)/4)*floor(n/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159915

/-- `floor((n+1)/4)*floor(n/2)` -/
def P10428730782914922366.Spec : Prop :=
  ∀ n, P10428730782914922366.a n = A159915 n

theorem P10428730782914922366.correct : P10428730782914922366.Spec := by
  intro n
  simp only [A159915]

end A159915

/-! ## A159915.P13448998200403641720

`round((and(1, ∑[n])-n)²/8)`
-/

namespace A159915.P13448998200403641720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 8)

end

end A159915.P13448998200403641720

namespace A159915

/-- `round((and(1, ∑[n])-n)²/8)` -/
def P13448998200403641720.Spec : Prop :=
  ∀ n, P13448998200403641720.a n = A159915 n

end A159915

/-! ## A159915.P13391013551883686933

`∑[∑[1-a(n-2)]-(a(n-2)+1)]` with `a(0)=0, a(1)=0`
-/

namespace A159915.P13391013551883686933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (f1 (n - 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159915.P13391013551883686933

namespace A159915

/-- `∑[∑[1-a(n-2)]-(a(n-2)+1)]` -/
def P13391013551883686933.Spec : Prop :=
  ∀ n, P13391013551883686933.a n = A159915 n

end A159915

/-! ## A159915.P9570554744340804865

`∑[∑[1-a(n-2)]-1-a(n-2)]` with `a(0)=0, a(1)=0`
-/

namespace A159915.P9570554744340804865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  1 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159915.P9570554744340804865

namespace A159915

/-- `∑[∑[1-a(n-2)]-1-a(n-2)]` -/
def P9570554744340804865.Spec : Prop :=
  ∀ n, P9570554744340804865.a n = A159915 n

end A159915

/-! ## A159915.P13589617213406331691

`∑[A077814(abs(1-n))]`
-/

namespace A159915.P13589617213406331691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159915.P13589617213406331691

namespace A159915

/-- `∑[A077814(abs(1-n))]` -/
def P13589617213406331691.Spec : Prop :=
  ∀ n, P13589617213406331691.a n = A159915 n

end A159915

/-! ## A159915.P9264717020815564131

`A077814(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A159915.P9264717020815564131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077814 (n - 1) + a (n - 1)

end

end A159915.P9264717020815564131

namespace A159915

/-- `A077814(n-1)+a(n-1)` -/
def P9264717020815564131.Spec : Prop :=
  ∀ n, P9264717020815564131.a n = A159915 n

end A159915

/-! ## A159915.P14528255179094190777

`A001971(n+1-and(2, n+1)!)`
-/

namespace A159915.P14528255179094190777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n + 1 - Nat.factorial (Nat.land 2 (n + 1)))

end

end A159915.P14528255179094190777

namespace A159915

/-- `A001971(n+1-and(2, n+1)!)` -/
def P14528255179094190777.Spec : Prop :=
  ∀ n, P14528255179094190777.a n = A159915 n

end A159915

/-! ## A159915.P14521527111029133066

`∑[A077814(n)]-A077814(n)`
-/

namespace A159915.P14521527111029133066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A077814 n

end

end A159915.P14521527111029133066

namespace A159915

/-- `∑[A077814(n)]-A077814(n)` -/
def P14521527111029133066.Spec : Prop :=
  ∀ n, P14521527111029133066.a n = A159915 n

end A159915

/-! ## A159915.P13784773146376519103

`A130519(A098180(n+1)-1)`
-/

namespace A159915.P13784773146376519103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A098180 (n + 1) - 1).toNat

end

end A159915.P13784773146376519103

namespace A159915

/-- `A130519(A098180(n+1)-1)` -/
def P13784773146376519103.Spec : Prop :=
  ∀ n, P13784773146376519103.a n = A159915 n

end A159915

/-! ## A159915.P3111417133605534145

`A008217(n+1)+A008217(n)`
-/

namespace A159915.P3111417133605534145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (n + 1) + A008217 n

end

end A159915.P3111417133605534145

namespace A159915

/-- `A008217(n+1)+A008217(n)` -/
def P3111417133605534145.Spec : Prop :=
  ∀ n, P3111417133605534145.a n = A159915 n

end A159915

/-! ## A159915.P16768997110494588487

`A130519(A133872(n+1)+n)`
-/

namespace A159915.P16768997110494588487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A133872 (n + 1) + (n : ℤ)).toNat

end

end A159915.P16768997110494588487

namespace A159915

/-- `A130519(A133872(n+1)+n)` -/
def P16768997110494588487.Spec : Prop :=
  ∀ n, P16768997110494588487.a n = A159915 n

end A159915

/-! ## A159915.P13393949992679768570

`A129819(n)-A296141(n+1)`
-/

namespace A159915.P13393949992679768570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 n - A296141 (n + 1)

end

end A159915.P13393949992679768570

namespace A159915

/-- `A129819(n)-A296141(n+1)` -/
def P13393949992679768570.Spec : Prop :=
  ∀ n, P13393949992679768570.a n = A159915 n

end A159915

/-! ## A159915.P6512621685230510267

`A130519(A292576(A121262(n)+1+n))`
-/

namespace A159915.P6512621685230510267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A292576 (A121262 n + 1 + (n : ℤ)).toNat).toNat

end

end A159915.P6512621685230510267

namespace A159915

/-- `A130519(A292576(A121262(n)+1+n))` -/
def P6512621685230510267.Spec : Prop :=
  ∀ n, P6512621685230510267.a n = A159915 n

end A159915

/-! ## A159915.P16373480623743712843

`A130519(A391537(n+1)-A054925(n+1))`
-/

namespace A159915.P16373480623743712843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A391537 (n + 1) - A054925 (n + 1)).toNat

end

end A159915.P16373480623743712843

namespace A159915

/-- `A130519(A391537(n+1)-A054925(n+1))` -/
def P16373480623743712843.Spec : Prop :=
  ∀ n, P16373480623743712843.a n = A159915 n

end A159915

/-! ## A159915.P5339618410141266200

`Δ[A159914(n)]`
-/

namespace A159915.P5339618410141266200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159915.P5339618410141266200

namespace A159915

/-- `Δ[A159914(n)]` -/
def P5339618410141266200.Spec : Prop :=
  ∀ n, P5339618410141266200.a n = A159915 n

end A159915

/-! ## A159915.P6652702751794484194

`A159914(n+1)-A159914(n)`
-/

namespace A159915.P6652702751794484194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 (n + 1) - A159914 n

end

end A159915.P6652702751794484194

namespace A159915

/-- `A159914(n+1)-A159914(n)` -/
def P6652702751794484194.Spec : Prop :=
  ∀ n, P6652702751794484194.a n = A159915 n

end A159915

/-! ## A159915.P12017167793527364850

`A131804(n+1)-∑[A056594(n+1)]`
-/

namespace A159915.P12017167793527364850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131804 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159915.P12017167793527364850

namespace A159915

/-- `A131804(n+1)-∑[A056594(n+1)]` -/
def P12017167793527364850.Spec : Prop :=
  ∀ n, P12017167793527364850.a n = A159915 n

end A159915

/-! ## A159915.P14593935774473989054

`A295643(n+1)+A002620(A004526(n))`
-/

namespace A159915.P14593935774473989054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295643 (n + 1) + A002620 (A004526 n).toNat

end

end A159915.P14593935774473989054

namespace A159915

/-- `A295643(n+1)+A002620(A004526(n))` -/
def P14593935774473989054.Spec : Prop :=
  ∀ n, P14593935774473989054.a n = A159915 n

end A159915

/-! ## A159915.P13313649718836164350

`A008238(n+1)+A130519(n)-A008238(n)`
-/

namespace A159915.P13313649718836164350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (n + 1) + (A130519 n - A008238 n)

end

end A159915.P13313649718836164350

namespace A159915

/-- `A008238(n+1)+A130519(n)-A008238(n)` -/
def P13313649718836164350.Spec : Prop :=
  ∀ n, P13313649718836164350.a n = A159915 n

end A159915

/-! ## A159915.P8138689143640836059

`sqrt(A295643(2*n)*A295643(n+1))`
-/

namespace A159915.P8138689143640836059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A295643 (2 * n) * A295643 (n + 1) : ℝ)

end

end A159915.P8138689143640836059

namespace A159915

/-- `sqrt(A295643(2*n)*A295643(n+1))` -/
def P8138689143640836059.Spec : Prop :=
  ∀ n, P8138689143640836059.a n = (A159915 n : ℝ)

end A159915

/-!
# A159916: Triangle T(m,n) = number of subsets of {1,...,m} with n elements having an odd sum, 1 <= n <= m.

The programs for A159916, there is no canonical definition to state claims against.
-/

/-! ## A159916.P3117720328654468582

`A135278(n)-A282011(comp[∑[n]])`
-/

namespace A159916.P3117720328654468582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n - A282011 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A159916.P3117720328654468582

/-!
# A159917: Fixed point of the morphism 0 -> 01, 1 -> 2, 2 -> 01, starting from a(0) = 0.

The programs for A159917, the canonical program `A159917.P11472049628818432676` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159917 has offset 0).

The definition of A159917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159917.P11472049628818432676

`A003714(n)%4`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A159917

/-- `A003714(n)%4` -/
def P11472049628818432676.Spec : Prop :=
  ∀ n, P11472049628818432676.a n = A159917 n

theorem P11472049628818432676.correct : P11472049628818432676.Spec := by
  intro n
  simp only [A159917]

end A159917

/-! ## A159917.P1453271054901284295

`A014417(n)%4`
-/

namespace A159917.P1453271054901284295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014417 n) 4

end

end A159917.P1453271054901284295

namespace A159917

/-- `A014417(n)%4` -/
def P1453271054901284295.Spec : Prop :=
  ∀ n, P1453271054901284295.a n = A159917 n

end A159917

/-! ## A159917.P4867147266571770254

`A060112(n+1)%3`
-/

namespace A159917.P4867147266571770254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060112 (n + 1)) 3

end

end A159917.P4867147266571770254

namespace A159917

/-- `A060112(n+1)%3` -/
def P4867147266571770254.Spec : Prop :=
  ∀ n, P4867147266571770254.a n = A159917 n

end A159917

/-! ## A159917.P13278840141565054087

`A134451(A035614(n))`
-/

namespace A159917.P13278840141565054087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A035614 n).toNat

end

end A159917.P13278840141565054087

namespace A159917

/-- `A134451(A035614(n))` -/
def P13278840141565054087.Spec : Prop :=
  ∀ n, P13278840141565054087.a n = A159917 n

end A159917

/-! ## A159917.P17956907780121975484

`A059426(n)-A005713(n)`
-/

namespace A159917.P17956907780121975484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059426 n - A005713 n

end

end A159917.P17956907780121975484

namespace A159917

/-- `A059426(n)-A005713(n)` -/
def P17956907780121975484.Spec : Prop :=
  ∀ n, P17956907780121975484.a n = A159917 n

end A159917

/-! ## A159917.P6553441100429235863

`A014675(n)*A296135(n)`
-/

namespace A159917.P6553441100429235863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 n * A296135 n

end

end A159917.P6553441100429235863

namespace A159917

/-- `A014675(n)*A296135(n)` -/
def P6553441100429235863.Spec : Prop :=
  ∀ n, P6553441100429235863.a n = A159917 n

end A159917

/-! ## A159917.P8278192373661947163

`and(A003714(n), A014675(n))`
-/

namespace A159917.P8278192373661947163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A014675 n)

end

end A159917.P8278192373661947163

namespace A159917

/-- `and(A003714(n), A014675(n))` -/
def P8278192373661947163.Spec : Prop :=
  ∀ n, P8278192373661947163.a n = A159917 n

end A159917

/-! ## A159917.P16752069813602337913

`and(A014417(n), A014675(n))`
-/

namespace A159917.P16752069813602337913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014417 n) (A014675 n)

end

end A159917.P16752069813602337913

namespace A159917

/-- `and(A014417(n), A014675(n))` -/
def P16752069813602337913.Spec : Prop :=
  ∀ n, P16752069813602337913.a n = A159917 n

end A159917

/-! ## A159917.P13022743024620471136

`and(A014675(n), A048679(n))`
-/

namespace A159917.P13022743024620471136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A048679 n)

end

end A159917.P13022743024620471136

namespace A159917

/-- `and(A014675(n), A048679(n))` -/
def P13022743024620471136.Spec : Prop :=
  ∀ n, P13022743024620471136.a n = A159917 n

end A159917

/-! ## A159917.P13828999498698403194

`and(A003714(n), A122553(n))`
-/

namespace A159917.P13828999498698403194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A122553 n)

end

end A159917.P13828999498698403194

namespace A159917

/-- `and(A003714(n), A122553(n))` -/
def P13828999498698403194.Spec : Prop :=
  ∀ n, P13828999498698403194.a n = A159917 n

end A159917

/-! ## A159917.P12323616066133235082

`and(A003714(n), A129761(n))`
-/

namespace A159917.P12323616066133235082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A129761 n)

end

end A159917.P12323616066133235082

namespace A159917

/-- `and(A003714(n), A129761(n))` -/
def P12323616066133235082.Spec : Prop :=
  ∀ n, P12323616066133235082.a n = A159917 n

end A159917

/-! ## A159917.P681051615276675065

`and(A014417(n), A122553(n))`
-/

namespace A159917.P681051615276675065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014417 n) (A122553 n)

end

end A159917.P681051615276675065

namespace A159917

/-- `and(A014417(n), A122553(n))` -/
def P681051615276675065.Spec : Prop :=
  ∀ n, P681051615276675065.a n = A159917 n

end A159917

/-! ## A159917.P568120419579536811

`and(A014675(n), A129761(n))`
-/

namespace A159917.P568120419579536811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A129761 n)

end

end A159917.P568120419579536811

namespace A159917

/-- `and(A014675(n), A129761(n))` -/
def P568120419579536811.Spec : Prop :=
  ∀ n, P568120419579536811.a n = A159917 n

end A159917

/-! ## A159917.P8192044406240816456

`and(A003714(n), A282162(n))`
-/

namespace A159917.P8192044406240816456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003714 n) (A282162 n)

end

end A159917.P8192044406240816456

namespace A159917

/-- `and(A003714(n), A282162(n))` -/
def P8192044406240816456.Spec : Prop :=
  ∀ n, P8192044406240816456.a n = A159917 n

end A159917

/-! ## A159917.P12350341189576518073

`and(A014675(n), A277335(n))`
-/

namespace A159917.P12350341189576518073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014675 n) (A277335 n)

end

end A159917.P12350341189576518073

namespace A159917

/-- `and(A014675(n), A277335(n))` -/
def P12350341189576518073.Spec : Prop :=
  ∀ n, P12350341189576518073.a n = A159917 n

end A159917

/-! ## A159917.P12978544728224201818

`and(A014417(n), A282162(n))`
-/

namespace A159917.P12978544728224201818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014417 n) (A282162 n)

end

end A159917.P12978544728224201818

namespace A159917

/-- `and(A014417(n), A282162(n))` -/
def P12978544728224201818.Spec : Prop :=
  ∀ n, P12978544728224201818.a n = A159917 n

end A159917

/-! ## A159917.P15899654921391134719

`A158478(A035612(n+1))-1`
-/

namespace A159917.P15899654921391134719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158478 (A035612 (n + 1)).toNat - 1

end

end A159917.P15899654921391134719

namespace A159917

/-- `A158478(A035612(n+1))-1` -/
def P15899654921391134719.Spec : Prop :=
  ∀ n, P15899654921391134719.a n = A159917 n

end A159917

/-! ## A159917.P7722827196961837244

`A296135(n)+A123740(n+1)`
-/

namespace A159917.P7722827196961837244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296135 n + A123740 (n + 1)

end

end A159917.P7722827196961837244

namespace A159917

/-- `A296135(n)+A123740(n+1)` -/
def P7722827196961837244.Spec : Prop :=
  ∀ n, P7722827196961837244.a n = A159917 n

end A159917

/-! ## A159917.P13558217843075285873

`A014675(n+1)-A005713(n)`
-/

namespace A159917.P13558217843075285873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (n + 1) - A005713 n

end

end A159917.P13558217843075285873

namespace A159917

/-- `A014675(n+1)-A005713(n)` -/
def P13558217843075285873.Spec : Prop :=
  ∀ n, P13558217843075285873.a n = A159917 n

end A159917

/-!
# A159918: Number of ones in binary representation of n^2.

The programs for A159918, the canonical program `A159918.P9044221650156537237` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159918 has offset 0).

The definition of A159918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159918.P9044221650156537237

`A000120(n²)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A159918

/-- `A000120(n²)` -/
def P9044221650156537237.Spec : Prop :=
  ∀ n, P9044221650156537237.a n = A159918 n

theorem P9044221650156537237.correct : P9044221650156537237.Spec := by
  intro n
  simp only [A159918]

end A159918

/-! ## A159918.P5940365068686921061

`∑{digits}[A001737(n), #]`
-/

namespace A159918.P5940365068686921061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001737 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A159918.P5940365068686921061

namespace A159918

/-- `∑{digits}[A001737(n), #]` -/
def P5940365068686921061.Spec : Prop :=
  ∀ n, (P5940365068686921061.a n : ℤ) = A159918 n

end A159918

/-! ## A159918.P11954628148244315108

`A232245(n)-(val(n+1, 2)+n-∑[val(n+1, 2)])`
-/

namespace A159918.P11954628148244315108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232245 n - ((SequenceMachineLib.valuation (n + 1) 2 : ℤ) + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A159918.P11954628148244315108

namespace A159918

/-- `A232245(n)-(val(n+1, 2)+n-∑[val(n+1, 2)])` -/
def P11954628148244315108.Spec : Prop :=
  ∀ n, P11954628148244315108.a n = A159918 n

end A159918

/-! ## A159918.P3309833426189116896

`A232243(n)+A000120(n)`
-/

namespace A159918.P3309833426189116896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n + A000120 n

end

end A159918.P3309833426189116896

namespace A159918

/-- `A232243(n)+A000120(n)` -/
def P3309833426189116896.Spec : Prop :=
  ∀ n, P3309833426189116896.a n = A159918 n

theorem P3309833426189116896.correct : P3309833426189116896.Spec := by
  intro n
  simp only [A159918, Nat.add_sub_cancel, A159918.P3309833426189116896.a, A159918.P9044221650156537237.a, A000120, A000120.P2816527436160941581.a, A232243, A232243.P16373768799838248871.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159918

/-! ## A159918.P11603968207262042762

`A232245(n)-A000120(n)`
-/

namespace A159918.P11603968207262042762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232245 n - A000120 n

end

end A159918.P11603968207262042762

namespace A159918

/-- `A232245(n)-A000120(n)` -/
def P11603968207262042762.Spec : Prop :=
  ∀ n, P11603968207262042762.a n = A159918 n

theorem P11603968207262042762.correct : P11603968207262042762.Spec := by
  intro n
  simp only [A159918, Nat.add_sub_cancel, A159918.P11603968207262042762.a, A159918.P9044221650156537237.a, A000120, A000120.P2816527436160941581.a, A232245, A232245.P5094151863049896055.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159918

/-! ## A159918.P11987146216752448575

`A232245(n)-log2(A001316(n))`
-/

namespace A159918.P11987146216752448575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232245 n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A159918.P11987146216752448575

namespace A159918

/-- `A232245(n)-log2(A001316(n))` -/
def P11987146216752448575.Spec : Prop :=
  ∀ n, P11987146216752448575.a n = (A159918 n : ℝ)

end A159918

/-! ## A159918.P13243495483086070996

`A232243(n)+∑{e}[A048883(n), #]`
-/

namespace A159918.P13243495483086070996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232243 n + ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A159918.P13243495483086070996

namespace A159918

/-- `A232243(n)+∑{e}[A048883(n), #]` -/
def P13243495483086070996.Spec : Prop :=
  ∀ n, P13243495483086070996.a n = A159918 n

end A159918

/-! ## A159918.P9981683902962476727

`∑{e}[A001316(ceil((n/2)²)), #]`
-/

namespace A159918.P9981683902962476727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ⌈((n : ℚ) / 2) ^ 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A159918.P9981683902962476727

namespace A159918

/-- `∑{e}[A001316(ceil((n/2)²)), #]` -/
def P9981683902962476727.Spec : Prop :=
  ∀ n, (P9981683902962476727.a n : ℤ) = A159918 n

end A159918

/-! ## A159918.P3383352558775057825

`A001222(A001316(ceil((n/2)^2)))`
-/

namespace A159918.P3383352558775057825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 ⌈((n : ℚ) / 2) ^ 2⌉.toNat).toNat

end

end A159918.P3383352558775057825

namespace A159918

/-- `A001222(A001316(ceil((n/2)^2)))` -/
def P3383352558775057825.Spec : Prop :=
  ∀ n, P3383352558775057825.a n = A159918 n

end A159918

/-! ## A159918.P2360813871052771387

`log2(A001316(round(n²/2)))`
-/

namespace A159918.P2360813871052771387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 2)).toNat : ℝ)

end

end A159918.P2360813871052771387

namespace A159918

/-- `log2(A001316(round(n²/2)))` -/
def P2360813871052771387.Spec : Prop :=
  ∀ n, P2360813871052771387.a n = (A159918 n : ℝ)

end A159918

/-! ## A159918.P5211556711246636518

`A023416(A001316(round(n^2/2)))`
-/

namespace A159918.P5211556711246636518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A001316 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 2)).toNat).toNat

end

end A159918.P5211556711246636518

namespace A159918

/-- `A023416(A001316(round(n^2/2)))` -/
def P5211556711246636518.Spec : Prop :=
  ∀ n, P5211556711246636518.a n = A159918 n

end A159918

/-! ## A159918.P1170239627843497879

`A001222(A060632(A000265(n²+2)))`
-/

namespace A159918.P1170239627843497879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060632 (A000265 (n ^ 2 + 2)).toNat).toNat

end

end A159918.P1170239627843497879

namespace A159918

/-- `A001222(A060632(A000265(n²+2)))` -/
def P1170239627843497879.Spec : Prop :=
  ∀ n, P1170239627843497879.a n = A159918 n

end A159918

/-! ## A159918.P6224608525544757514

`floor(log2(A209639(n²)))`
-/

namespace A159918.P6224608525544757514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A209639 (n ^ 2)).toNat

end

end A159918.P6224608525544757514

namespace A159918

/-- `floor(log2(A209639(n²)))` -/
def P6224608525544757514.Spec : Prop :=
  ∀ n, (P6224608525544757514.a n : ℤ) = A159918 n

end A159918

/-! ## A159918.P1068662152846155826

`log2(A060632(n²+1))`
-/

namespace A159918.P1068662152846155826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A060632 (n ^ 2 + 1) : ℝ)

end

end A159918.P1068662152846155826

namespace A159918

/-- `log2(A060632(n²+1))` -/
def P1068662152846155826.Spec : Prop :=
  ∀ n, P1068662152846155826.a n = (A159918 n : ℝ)

end A159918

/-! ## A159918.P16302905962974099669

`log2(A001316(n²+2))-1`
-/

namespace A159918.P16302905962974099669
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (n ^ 2 + 2) : ℝ) - 1

end

end A159918.P16302905962974099669

namespace A159918

/-- `log2(A001316(n²+2))-1` -/
def P16302905962974099669.Spec : Prop :=
  ∀ n, P16302905962974099669.a n = (A159918 n : ℝ)

end A159918

/-! ## A159918.P12433900024647431496

`A000523(A001316(n²))`
-/

namespace A159918.P12433900024647431496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A001316 (n ^ 2)).toNat

end

end A159918.P12433900024647431496

namespace A159918

/-- `A000523(A001316(n²))` -/
def P12433900024647431496.Spec : Prop :=
  ∀ n, P12433900024647431496.a n = A159918 n

end A159918

/-! ## A159918.P8490491908526234920

`log2(A001316(n²))%A098553(n+1)`
-/

namespace A159918.P8490491908526234920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (A001316 (n ^ 2) : ℝ))) (A098553 (n + 1))

end

end A159918.P8490491908526234920

namespace A159918

/-- `log2(A001316(n²))%A098553(n+1)` -/
def P8490491908526234920.Spec : Prop :=
  ∀ n, P8490491908526234920.a n = A159918 n

end A159918

/-! ## A159918.P14934348101780932335

`∑{e}[A286374(n), #]`
-/

namespace A159918.P14934348101780932335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286374 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A159918.P14934348101780932335

namespace A159918

/-- `∑{e}[A286374(n), #]` -/
def P14934348101780932335.Spec : Prop :=
  ∀ n, (P14934348101780932335.a n : ℤ) = A159918 n

end A159918

/-! ## A159918.P11081990130034801970

`∑{e}[A278222(n²), #]`
-/

namespace A159918.P11081990130034801970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A159918.P11081990130034801970

namespace A159918

/-- `∑{e}[A278222(n²), #]` -/
def P11081990130034801970.Spec : Prop :=
  ∀ n, (P11081990130034801970.a n : ℤ) = A159918 n

end A159918

/-!
# A159919: A square array of numbers, read by antidiagonals, called Sundaram's sieve.

The programs for A159919, the canonical program `A159919.P16525752381521222348` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159919 has offset 1).

The definition of A159919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159919.P199710469840103281

`A141387(n)+2*(comp[∑[n]]-n)`
-/

namespace A159919.P199710469840103281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n + 2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A159919.P199710469840103281

namespace A159919

/-- `A141387(n)+2*(comp[∑[n]]-n)` -/
def P199710469840103281.Spec : Prop :=
  ∀ n, P199710469840103281.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P6009569546338610773

`A130154(n+1)+∑[3*char[∑[n]]]`
-/

namespace A159919.P6009569546338610773
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159919.P6009569546338610773

namespace A159919

/-- `A130154(n+1)+∑[3*char[∑[n]]]` -/
def P6009569546338610773.Spec : Prop :=
  ∀ n, P6009569546338610773.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P7781371845792654533

`2*A003991(n+1)+comp[∑[n]]-n`
-/

namespace A159919.P7781371845792654533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003991 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))

end

end A159919.P7781371845792654533

namespace A159919

/-- `2*A003991(n+1)+comp[∑[n]]-n` -/
def P7781371845792654533.Spec : Prop :=
  ∀ n, P7781371845792654533.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P8799820416284306577

`A098352(n+1)/2+comp[∑[n]]-n`
-/

namespace A159919.P8799820416284306577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 2 + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)

end

end A159919.P8799820416284306577

namespace A159919

/-- `A098352(n+1)/2+comp[∑[n]]-n` -/
def P8799820416284306577.Spec : Prop :=
  ∀ n, P8799820416284306577.a n = (A159919 (n + 1) : ℚ)

end A159919

/-! ## A159919.P16525752381521222348

`A173395(n+1)+A059036(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159919

/-- `A173395(n+1)+A059036(n)` -/
def P16525752381521222348.Spec : Prop :=
  ∀ n, P16525752381521222348.a n = A159919 (n + 1)

theorem P16525752381521222348.correct : P16525752381521222348.Spec := by
  intro n
  simp only [A159919, Nat.add_sub_cancel]

end A159919

/-! ## A159919.P8572673217826067164

`A098352(n+1)-A141387(n)`
-/

namespace A159919.P8572673217826067164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098352 (n + 1) - A141387 n

end

end A159919.P8572673217826067164

namespace A159919

/-- `A098352(n+1)-A141387(n)` -/
def P8572673217826067164.Spec : Prop :=
  ∀ n, P8572673217826067164.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P8792477071848465300

`A350361(n+1)+2*A059036(n)`
-/

namespace A159919.P8792477071848465300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350361 (n + 1) + 2 * A059036 n

end

end A159919.P8792477071848465300

namespace A159919

/-- `A350361(n+1)+2*A059036(n)` -/
def P8792477071848465300.Spec : Prop :=
  ∀ n, P8792477071848465300.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P854797882704838009

`A003057(n+2)+2*A003991(n+1)`
-/

namespace A159919.P854797882704838009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + 2 * A003991 (n + 1)

end

end A159919.P854797882704838009

namespace A159919

/-- `A003057(n+2)+2*A003991(n+1)` -/
def P854797882704838009.Spec : Prop :=
  ∀ n, P854797882704838009.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P11238471281010905791

`A140978(n+1)+A101447(n)-A064801(n+1)`
-/

namespace A159919.P11238471281010905791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140978 (n + 1) + (A101447 n - A064801 (n + 1))

end

end A159919.P11238471281010905791

namespace A159919

/-- `A140978(n+1)+A101447(n)-A064801(n+1)` -/
def P11238471281010905791.Spec : Prop :=
  ∀ n, P11238471281010905791.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P5113939621578840375

`A309557(comp[∑[n-1]])-1`
-/

namespace A159919.P5113939621578840375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309557 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A159919.P5113939621578840375

namespace A159919

/-- `A309557(comp[∑[n-1]])-1` -/
def P5113939621578840375.Spec : Prop :=
  ∀ n, P5113939621578840375.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P17944918746835552892

`A128226(A014132(n+1))`
-/

namespace A159919.P17944918746835552892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (A014132 (n + 1)).toNat

end

end A159919.P17944918746835552892

namespace A159919

/-- `A128226(A014132(n+1))` -/
def P17944918746835552892.Spec : Prop :=
  ∀ n, P17944918746835552892.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P168752697771125526

`A128226(A003056(n)+2+n)`
-/

namespace A159919.P168752697771125526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (A003056 n + 2 + (n : ℤ)).toNat

end

end A159919.P168752697771125526

namespace A159919

/-- `A128226(A003056(n)+2+n)` -/
def P168752697771125526.Spec : Prop :=
  ∀ n, P168752697771125526.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P7860497313288388373

`A128226(A002024(n+1)+n+1)`
-/

namespace A159919.P7860497313288388373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (A002024 (n + 1) + (n + 1 : ℤ)).toNat

end

end A159919.P7860497313288388373

namespace A159919

/-- `A128226(A002024(n+1)+n+1)` -/
def P7860497313288388373.Spec : Prop :=
  ∀ n, P7860497313288388373.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P5365391980740201400

`A101447(comp[∑[n]])+1-C(∑[char[∑[n]]], 2)+n`
-/

namespace A159919.P5365391980740201400
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ))

end

end A159919.P5365391980740201400

namespace A159919

/-- `A101447(comp[∑[n]])+1-C(∑[char[∑[n]]], 2)+n` -/
def P5365391980740201400.Spec : Prop :=
  ∀ n, P5365391980740201400.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P4493182550318955984

`A141387(comp[∑[n]]+comp[∑[n]]-n)`
-/

namespace A159919.P4493182550318955984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A159919.P4493182550318955984

namespace A159919

/-- `A141387(comp[∑[n]]+comp[∑[n]]-n)` -/
def P4493182550318955984.Spec : Prop :=
  ∀ n, P4493182550318955984.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P10025805495904502465

`A128226(A099375(n)+1+n)`
-/

namespace A159919.P10025805495904502465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128226 (A099375 n + 1 + (n : ℤ)).toNat

end

end A159919.P10025805495904502465

namespace A159919

/-- `A128226(A099375(n)+1+n)` -/
def P10025805495904502465.Spec : Prop :=
  ∀ n, P10025805495904502465.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P5406296473056825960

`ceil((A204250((round(sqrt(2*(n+1)))+1)²+2*n+1)+1)/2)`
-/

namespace A159919.P5406296473056825960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204250 ((SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + 1) ^ 2 + (2 * n + 1 : ℤ)).toNat + 1 : ℚ) / 2⌉

end

end A159919.P5406296473056825960

namespace A159919

/-- `ceil((A204250((round(sqrt(2*(n+1)))+1)²+2*n+1)+1)/2)` -/
def P5406296473056825960.Spec : Prop :=
  ∀ n, P5406296473056825960.a n = A159919 (n + 1)

end A159919

/-! ## A159919.P12452745376557554662

`A158894(n+1)+A128226(n+1)`
-/

namespace A159919.P12452745376557554662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158894 (n + 1) + A128226 (n + 1)

end

end A159919.P12452745376557554662

namespace A159919

/-- `A158894(n+1)+A128226(n+1)` -/
def P12452745376557554662.Spec : Prop :=
  ∀ n, P12452745376557554662.a n = A159919 (n + 1)

end A159919

/-!
# A159920: Sums of the antidiagonals of Sundaram's sieve (A159919).

The programs for A159920, the canonical program `A159920.P10346477403840614090` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159920 has offset 2).

The definition of A159920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159920.P9796355365039208552

`(n+1)*(n+2)*(n+6)/3`
-/

namespace A159920.P9796355365039208552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 6) : ℚ) / 3

end

end A159920.P9796355365039208552

namespace A159920

/-- `(n+1)*(n+2)*(n+6)/3` -/
def P9796355365039208552.Spec : Prop :=
  ∀ n, P9796355365039208552.a n = (A159920 (n + 2) : ℚ)

theorem P9796355365039208552.correct : P9796355365039208552.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A159920, Nat.add_sub_cancel, A159920.P9796355365039208552.a, A159920.P10346477403840614090.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A159920, Nat.add_sub_cancel, A159920.P9796355365039208552.a, A159920.P10346477403840614090.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159920

/-! ## A159920.P10346477403840614090

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=4, a(1)=14, a(2)=32, a(3)=60`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159920

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P10346477403840614090.Spec : Prop :=
  ∀ n, P10346477403840614090.a n = A159920 (n + 2)

theorem P10346477403840614090.correct : P10346477403840614090.Spec := by
  intro n
  simp only [A159920, Nat.add_sub_cancel]

end A159920

/-! ## A159920.P4579520297513566440

`2*A005581(n+2)`
-/

namespace A159920.P4579520297513566440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005581 (n + 2)

end

end A159920.P4579520297513566440

namespace A159920

/-- `2*A005581(n+2)` -/
def P4579520297513566440.Spec : Prop :=
  ∀ n, P4579520297513566440.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P6264984385980056145

`lcm(2, ∑[(n+2)²+n])`
-/

namespace A159920.P6264984385980056145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159920.P6264984385980056145

namespace A159920

/-- `lcm(2, ∑[(n+2)²+n])` -/
def P6264984385980056145.Spec : Prop :=
  ∀ n, (P6264984385980056145.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P1224462798993283409

`∑[∑[ogf((4-2x)/(1-2x+x^2))]]`
-/

namespace A159920.P1224462798993283409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159920.P1224462798993283409

namespace A159920

/-- `∑[∑[ogf((4-2x)/(1-2x+x^2))]]` -/
def P1224462798993283409.Spec : Prop :=
  ∀ n, P1224462798993283409.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P3060528927360259837

`ogf((4-2x)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A159920.P3060528927360259837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2] [1, -4, 6, -4, 1] n

end

end A159920.P3060528927360259837

namespace A159920

/-- `ogf((4-2x)/(1-4x+6x^2-4x^3+x^4))` -/
def P3060528927360259837.Spec : Prop :=
  ∀ n, P3060528927360259837.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P17902577442175726455

`record[2*(C(n, 3)-(n-2))]`
-/

namespace A159920.P17902577442175726455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose n 3 : ℤ) - ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159920.P17902577442175726455

namespace A159920

/-- `record[2*(C(n, 3)-(n-2))]` -/
def P17902577442175726455.Spec : Prop :=
  ∀ n, P17902577442175726455.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P18275314139518372002

`abs(∑[∑[a(n-1)+2]])` with `a(0)=4`
-/

namespace A159920.P18275314139518372002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159920.P18275314139518372002

namespace A159920

/-- `abs(∑[∑[a(n-1)+2]])` -/
def P18275314139518372002.Spec : Prop :=
  ∀ n, (P18275314139518372002.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P15069141769454503669

`floor(∑[∑[a(n-1)+2]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A159920.P15069141769454503669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159920.P15069141769454503669

namespace A159920

/-- `floor(∑[∑[a(n-1)+2]])` -/
def P15069141769454503669.Spec : Prop :=
  ∀ n, (P15069141769454503669.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P3922616415663377082

`and(-2, ∑[(n+2)²+n])`
-/

namespace A159920.P3922616415663377082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A159920.P3922616415663377082

namespace A159920

/-- `and(-2, ∑[(n+2)²+n])` -/
def P3922616415663377082.Spec : Prop :=
  ∀ n, P3922616415663377082.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P7579817678418427600

`-∑[2-lcm(n+2, n+3)]`
-/

namespace A159920.P7579817678418427600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.lcm (n + 2) (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159920.P7579817678418427600

namespace A159920

/-- `-∑[2-lcm(n+2, n+3)]` -/
def P7579817678418427600.Spec : Prop :=
  ∀ n, P7579817678418427600.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P17985045203207327676

`∑[(n+2)²]+C(n+1, 2)`
-/

namespace A159920.P17985045203207327676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) 2

end

end A159920.P17985045203207327676

namespace A159920

/-- `∑[(n+2)²]+C(n+1, 2)` -/
def P17985045203207327676.Spec : Prop :=
  ∀ n, (P17985045203207327676.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P10082734553829045606

`a(n-1)+(n+2)²+n` with `a(0)=4`
-/

namespace A159920.P10082734553829045606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + ((n + 2) ^ 2 + n)

end

end A159920.P10082734553829045606

namespace A159920

/-- `a(n-1)+(n+2)²+n` -/
def P10082734553829045606.Spec : Prop :=
  ∀ n, (P10082734553829045606.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P7814676793603384491

`∑[n+4+n]+a(n-1)` with `a(0)=4`
-/

namespace A159920.P7814676793603384491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4 + n

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A159920.P7814676793603384491

namespace A159920

/-- `∑[n+4+n]+a(n-1)` -/
def P7814676793603384491.Spec : Prop :=
  ∀ n, (P7814676793603384491.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P16618143367160036894

`record[a(n-1)+n*(n-3)]` with `a(0)=4`
-/

namespace A159920.P16618143367160036894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + (n : ℤ) * ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159920.P16618143367160036894

namespace A159920

/-- `record[a(n-1)+n*(n-3)]` -/
def P16618143367160036894.Spec : Prop :=
  ∀ n, P16618143367160036894.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P1557667626610180542

`-∑[2-record[(n-2)*(n-3)]]`
-/

namespace A159920.P1557667626610180542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159920.P1557667626610180542

namespace A159920

/-- `-∑[2-record[(n-2)*(n-3)]]` -/
def P1557667626610180542.Spec : Prop :=
  ∀ n, P1557667626610180542.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P11634835787489981967

`floor(∑[∑[2*(a(n-1)-n)]])` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A159920.P11634835787489981967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  2 * (f2 (n - 1) - (n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159920.P11634835787489981967

namespace A159920

/-- `floor(∑[∑[2*(a(n-1)-n)]])` -/
def P11634835787489981967.Spec : Prop :=
  ∀ n, P11634835787489981967.a n = A159920 (n + 2)

end A159920

/-! ## A159920.P4322288807568604098

`∑[(n+2)²]+∑[n%(n+1)]`
-/

namespace A159920.P4322288807568604098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A159920.P4322288807568604098

namespace A159920

/-- `∑[(n+2)²]+∑[n%(n+1)]` -/
def P4322288807568604098.Spec : Prop :=
  ∀ n, (P4322288807568604098.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P6499777201167860267

`2*(C(n+2, 2)+C(n+3, 3))`
-/

namespace A159920.P6499777201167860267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (n + 2) 2 + Nat.choose (n + 3) 3)

end

end A159920.P6499777201167860267

namespace A159920

/-- `2*(C(n+2, 2)+C(n+3, 3))` -/
def P6499777201167860267.Spec : Prop :=
  ∀ n, (P6499777201167860267.a n : ℤ) = A159920 (n + 2)

end A159920

/-! ## A159920.P389814279479271356

`a(n-1)+n*(n+5)+4` with `a(0)=4`
-/

namespace A159920.P389814279479271356
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + n * (n + 5) + 4

end

end A159920.P389814279479271356

namespace A159920

/-- `a(n-1)+n*(n+5)+4` -/
def P389814279479271356.Spec : Prop :=
  ∀ n, (P389814279479271356.a n : ℤ) = A159920 (n + 2)

end A159920

/-!
# A159923: Rectangular array read by antidiagonals: a(m,n) = greatest noncomposite (1 or prime) that divides both m and n.

The programs for A159923, the canonical program `A159923.P1227019017527381608` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159923 has offset 1).

The definition of A159923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159923.P7234132291053939827

`A006530(gcd(comp[∑[n]]-n, eq[1, floor(2*sqrt(n))%2]))`
-/

namespace A159923.P7234132291053939827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) (SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ))

end

end A159923.P7234132291053939827

namespace A159923

/-- `A006530(gcd(comp[∑[n]]-n, eq[1, floor(2*sqrt(n))%2]))` -/
def P7234132291053939827.Spec : Prop :=
  ∀ n, P7234132291053939827.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P3541159866370775845

`A006530(gcd(comp[∑[n]]+n, C(comp[∑[n]]-n, 2)-n))`
-/

namespace A159923.P3541159866370775845
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n : ℤ) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)))

end

end A159923.P3541159866370775845

namespace A159923

/-- `A006530(gcd(comp[∑[n]]+n, C(comp[∑[n]]-n, 2)-n))` -/
def P3541159866370775845.Spec : Prop :=
  ∀ n, P3541159866370775845.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P10062059933743821378

`A006530(gcd(1-C(∑[char[∑[n]]], 2)+n, abs(round(sqrt(2*(n+1)))²-(2*n+1))))`
-/

namespace A159923.P10062059933743821378
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|)

end

end A159923.P10062059933743821378

namespace A159923

/-- `A006530(gcd(1-C(∑[char[∑[n]]], 2)+n, abs(round(sqrt(2*(n+1)))²-(2*n+1))))` -/
def P10062059933743821378.Spec : Prop :=
  ∀ n, P10062059933743821378.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P1227019017527381608

`A006530(A003989(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A159923

/-- `A006530(A003989(n+1))` -/
def P1227019017527381608.Spec : Prop :=
  ∀ n, P1227019017527381608.a n = A159923 (n + 1)

theorem P1227019017527381608.correct : P1227019017527381608.Spec := by
  intro n
  simp only [A159923, Nat.add_sub_cancel]

end A159923

/-! ## A159923.P6523910029097587322

`A006530(A287957(n+1))`
-/

namespace A159923.P6523910029097587322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A287957 (n + 1)).toNat

end

end A159923.P6523910029097587322

namespace A159923

/-- `A006530(A287957(n+1))` -/
def P6523910029097587322.Spec : Prop :=
  ∀ n, P6523910029097587322.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P11003275844601962789

`A006530(A050873(comp[∑[n]]))`
-/

namespace A159923.P11003275844601962789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A050873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A159923.P11003275844601962789

namespace A159923

/-- `A006530(A050873(comp[∑[n]]))` -/
def P11003275844601962789.Spec : Prop :=
  ∀ n, P11003275844601962789.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P1172080299300782278

`A006530(A245717(comp[∑[n]]))`
-/

namespace A159923.P1172080299300782278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A245717 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A159923.P1172080299300782278

namespace A159923

/-- `A006530(A245717(comp[∑[n]]))` -/
def P1172080299300782278.Spec : Prop :=
  ∀ n, P1172080299300782278.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P17075544137320758871

`A284695(A287957(n+1)²)`
-/

namespace A159923.P17075544137320758871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A287957 (n + 1) ^ 2).toNat

end

end A159923.P17075544137320758871

namespace A159923

/-- `A284695(A287957(n+1)²)` -/
def P17075544137320758871.Spec : Prop :=
  ∀ n, P17075544137320758871.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P4233691245610268120

`A043276(A184097(n+1)+1)`
-/

namespace A159923.P4233691245610268120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A184097 (n + 1) + 1).toNat

end

end A159923.P4233691245610268120

namespace A159923

/-- `A043276(A184097(n+1)+1)` -/
def P4233691245610268120.Spec : Prop :=
  ∀ n, P4233691245610268120.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P11232739390033201764

`dr(A006530(A003989(1-(char[3]-n))))`
-/

namespace A159923.P11232739390033201764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A006530 (A003989 (1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))).toNat).toNat)

end

end A159923.P11232739390033201764

namespace A159923

/-- `dr(A006530(A003989(1-(char[3]-n))))` -/
def P11232739390033201764.Spec : Prop :=
  ∀ n, (P11232739390033201764.a n : ℤ) = A159923 (n + 1)

end A159923

/-! ## A159923.P13151539056823002190

`A006530(A003989(Δ[n²]-n))%8`
-/

namespace A159923.P13151539056823002190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A003989 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat) 8

end

end A159923.P13151539056823002190

namespace A159923

/-- `A006530(A003989(Δ[n²]-n))%8` -/
def P13151539056823002190.Spec : Prop :=
  ∀ n, P13151539056823002190.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P12309948538209479203

`A006530(A000010(A204116(n+1)))`
-/

namespace A159923.P12309948538209479203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A204116 (n + 1)).toNat).toNat

end

end A159923.P12309948538209479203

namespace A159923

/-- `A006530(A000010(A204116(n+1)))` -/
def P12309948538209479203.Spec : Prop :=
  ∀ n, P12309948538209479203.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P13830761969780941212

`A006530(A002260(A286101(n+1)))`
-/

namespace A159923.P13830761969780941212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002260 (A286101 (n + 1)).toNat).toNat

end

end A159923.P13830761969780941212

namespace A159923

/-- `A006530(A002260(A286101(n+1)))` -/
def P13830761969780941212.Spec : Prop :=
  ∀ n, P13830761969780941212.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P1131899511424397328

`A006530(gcd(A128227(n), A193592(n)))`
-/

namespace A159923.P1131899511424397328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A128227 n) (A193592 n))

end

end A159923.P1131899511424397328

namespace A159923

/-- `A006530(gcd(A128227(n), A193592(n)))` -/
def P1131899511424397328.Spec : Prop :=
  ∀ n, P1131899511424397328.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P15888028688317097328

`A338668(A338669(A287957(n+1)²))`
-/

namespace A159923.P15888028688317097328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338668 (A338669 (A287957 (n + 1) ^ 2).toNat).toNat

end

end A159923.P15888028688317097328

namespace A159923

/-- `A338668(A338669(A287957(n+1)²))` -/
def P15888028688317097328.Spec : Prop :=
  ∀ n, P15888028688317097328.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P10010854461112651017

`A006530(gcd(A003990(n+1), A049581(n)))`
-/

namespace A159923.P10010854461112651017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A003990 (n + 1)) (A049581 n))

end

end A159923.P10010854461112651017

namespace A159923

/-- `A006530(gcd(A003990(n+1), A049581(n)))` -/
def P10010854461112651017.Spec : Prop :=
  ∀ n, P10010854461112651017.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P928660911462222699

`A006530(gcd(A004736(n+1), A114327(n)))`
-/

namespace A159923.P928660911462222699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A004736 (n + 1)) (A114327 n))

end

end A159923.P928660911462222699

namespace A159923

/-- `A006530(gcd(A004736(n+1), A114327(n)))` -/
def P928660911462222699.Spec : Prop :=
  ∀ n, P928660911462222699.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P1467004754829943951

`A284695(A287957(n+1)*A287957(n+1))`
-/

namespace A159923.P1467004754829943951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (A287957 (n + 1) * A287957 (n + 1)).toNat

end

end A159923.P1467004754829943951

namespace A159923

/-- `A284695(A287957(n+1)*A287957(n+1))` -/
def P1467004754829943951.Spec : Prop :=
  ∀ n, P1467004754829943951.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P7657581846568185919

`A006530(A059896(n+1)/A089913(n+1))`
-/

namespace A159923.P7657581846568185919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A059896 (n + 1) : ℚ) / (A089913 (n + 1) : ℚ))).toNat

end

end A159923.P7657581846568185919

namespace A159923

/-- `A006530(A059896(n+1)/A089913(n+1))` -/
def P7657581846568185919.Spec : Prop :=
  ∀ n, P7657581846568185919.a n = A159923 (n + 1)

end A159923

/-! ## A159923.P14255628128648725166

`A006530(gcd(A025581(n)+1, A002260(n+1)))`
-/

namespace A159923.P14255628128648725166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A025581 n + 1) (A002260 (n + 1)))

end

end A159923.P14255628128648725166

namespace A159923

/-- `A006530(gcd(A025581(n)+1, A002260(n+1)))` -/
def P14255628128648725166.Spec : Prop :=
  ∀ n, P14255628128648725166.a n = A159923 (n + 1)

end A159923

/-!
# A159925: Row sums of triangle A159924.

The programs for A159925, there is no canonical definition to state claims against.
-/

/-! ## A159925.P2522326356052805122

`Δ[Δ[A159924(A152947(n+1))]]`
-/

namespace A159925.P2522326356052805122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (A152947 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159925.P2522326356052805122

/-! ## A159925.P13260349078431727543

`Δ[A159924(A028310(∑[n]+n))]`
-/

namespace A159925.P13260349078431727543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (A028310 (∑ j ∈ Finset.range (n + 1), f2 j + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159925.P13260349078431727543

/-! ## A159925.P1849615612515757811

`Δ[A159924(∑[n]+A000007(n)+n)]`
-/

namespace A159925.P1849615612515757811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (A000007 n + (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159925.P1849615612515757811

/-! ## A159925.P16615468630847785997

`Δ[A159924(A038722(A133263(n)))]`
-/

namespace A159925.P16615468630847785997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (A038722 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159925.P16615468630847785997

/-! ## A159925.P13817917098600751633

`Δ[record[A159924(n+2)%A159924(n+3)]]`
-/

namespace A159925.P13817917098600751633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159924 (n + 2)) (A159924 (n + 3))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159925.P13817917098600751633

/-!
# A159926: The sum of all terms in row 1 through m of triangle A159924.

The programs for A159926, there is no canonical definition to state claims against.
-/

/-! ## A159926.P10679902845664996088

`(n+2)*a(n-1)+1-a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A159926.P10679902845664996088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (n + 2 : ℤ) * a (n - 1) + (1 - a (n - 2))

end

end A159926.P10679902845664996088

/-! ## A159926.P4290105588389479848

`record[a(n-1)/n^-1-a(n-2)+1]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A159926.P4290105588389479848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) / (n : ℚ) ^ (-1 : ℤ) - f1 (n - 2) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159926.P4290105588389479848

/-! ## A159926.P14969417839308983419

`∑[A159925(n+1)]`
-/

namespace A159926.P14969417839308983419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159926.P14969417839308983419

/-! ## A159926.P14740974341863684796

`Δ[A159924(∑[n]+1)]`
-/

namespace A159926.P14740974341863684796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159926.P14740974341863684796

/-! ## A159926.P8768525064570860289

`Δ[record[A159924(n+1)]]`
-/

namespace A159926.P8768525064570860289
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159926.P8768525064570860289

/-! ## A159926.P6831705074809991989

`A159924(∑[n+2])-1`
-/

namespace A159926.P6831705074809991989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A159926.P6831705074809991989

/-! ## A159926.P1608708804605003336

`record[A159924(n+2)]-record[A159924(n+1)]`
-/

namespace A159926.P1608708804605003336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A159926.P1608708804605003336

/-!
# A159928: a(n) is the sum of the terms of row n of triangle A159927.

The programs for A159928, there is no canonical definition to state claims against.
-/

/-! ## A159928.P5846996704668980365

`Δ[(n+2)*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A159928.P5846996704668980365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (n + 2 : ℤ) * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159928.P5846996704668980365

/-! ## A159928.P14364402942218267325

`record[Δ[abs(A075374(n+1))]]`
-/

namespace A159928.P14364402942218267325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075374 (n + 1)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159928.P14364402942218267325

/-! ## A159928.P1800789159832683911

`Δ[Δ[A159927(C(n, 2)+1)]]`
-/

namespace A159928.P1800789159832683911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (Nat.choose n 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159928.P1800789159832683911

/-! ## A159928.P12858707114381511085

`Δ[Δ[A159927(A152947(n+1))]]`
-/

namespace A159928.P12858707114381511085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159927 (A152947 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159928.P12858707114381511085

/-! ## A159928.P15741972452582714078

`A056922(2*(n+1))-A056921(2*(n+1))`
-/

namespace A159928.P15741972452582714078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056922 (2 * (n + 1)) - A056921 (2 * (n + 1))

end

end A159928.P15741972452582714078

/-!
# A159929: INVERT transform of phi(n), A000010.

The programs for A159929, there is no canonical definition to state claims against.
-/

/-! ## A159929.P12944868386762963495

`A304969(n)+A065040(A317875(n+1))`
-/

namespace A159929.P12944868386762963495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304969 n + A065040 (A317875 (n + 1)).toNat

end

end A159929.P12944868386762963495

/-! ## A159929.P3864263244056807712

`A341022(A262877(2*n))+A304969(n)`
-/

namespace A159929.P3864263244056807712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341022 ((A262877 (2 * n)).toNat + 35) + A304969 n

end

end A159929.P3864263244056807712

/-! ## A159929.P14312344864116173731

`A342085(A005053(n))`
-/

namespace A159929.P14312344864116173731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342085 (A005053 n).toNat

end

end A159929.P14312344864116173731

/-! ## A159929.P6332418001398273741

`A325100(A224960(n))`
-/

namespace A159929.P6332418001398273741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325100 (A224960 n).toNat

end

end A159929.P6332418001398273741

/-!
# A159930: Triangle read by rows: a(1,1)=1. a(m,n) = a(m-1,n) + (sum of all terms in row m-1), for n<m. a(m,m) = sum of all terms in row m-1.

The programs for A159930, there is no canonical definition to state claims against.
-/

/-! ## A159930.P17713975053532099990

`A143122(A080036(n))/2`
-/

namespace A159930.P17713975053532099990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143122 (A080036 n).toNat : ℚ) / 2

end

end A159930.P17713975053532099990

/-!
# A159932: 

The programs for A159932, there is no canonical definition to state claims against.
-/

/-! ## A159932.P2290327900359558160

`Δ[record[A159931(n+1)]]`
-/

namespace A159932.P2290327900359558160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159931 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159932.P2290327900359558160

/-!
# A159934: Triangle, row sums = d(n) = A000005(n): M * Q; where M = an infinite lower Toeplitz matrix with A159933 in every column. Q = an infinite lower triangular matrix with d(n) shifted: (1, 1, 2, 2, 3, 2, 4, ...) as the main diagonal and the rest zeros.

The programs for A159934, there is no canonical definition to state claims against.
-/

/-! ## A159934.P16367665341468954543

`A020985(A145457(n))*A145462(n+6)`
-/

namespace A159934.P16367665341468954543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A145457 n).toNat * A145462 (n + 6)

end

end A159934.P16367665341468954543

/-! ## A159934.P17747279290605118827

`A033999(A320743(n+1))*A145462(n+6)`
-/

namespace A159934.P17747279290605118827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A320743 (n + 1)).toNat * A145462 (n + 6)

end

end A159934.P17747279290605118827

/-!
# A159936: Triangle read by rows, A051731 * A054533 * transpose(A101688), provided A101688 is read as a square array.

The programs for A159936, there is no canonical definition to state claims against.
-/

/-! ## A159936.P9599132233154294690

`A144328(n+1)-A151755(A192002(3*n+5))`
-/

namespace A159936.P9599132233154294690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - A151755 (A192002 (3 * n + 5)).toNat

end

end A159936.P9599132233154294690

/-! ## A159936.P3992229680051054474

`A165500(gcd(A334622(n), A348414(3*n+5)))`
-/

namespace A159936.P3992229680051054474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165500 (Int.gcd (A334622 n) (A348414 (3 * n + 5)))

end

end A159936.P3992229680051054474

/-! ## A159936.P13184251757018694014

`A053735(A053735(A113143(n)^3))`
-/

namespace A159936.P13184251757018694014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A053735 (A113143 n ^ 3).toNat).toNat

end

end A159936.P13184251757018694014

/-! ## A159936.P2940039857092629424

`A274917(A072025(n)%A335545(n))`
-/

namespace A159936.P2940039857092629424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274917 (Int.tmod (A072025 n) (A335545 n)).toNat

end

end A159936.P2940039857092629424

/-! ## A159936.P261731412027490534

`A000120(A294582(n)^A202053(n+1))`
-/

namespace A159936.P261731412027490534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A294582 n : ℚ) ^ (A202053 (n + 1) : ℤ))).toNat

end

end A159936.P261731412027490534

/-!
# A159937: Triangle read by rows, A054525 * A127478, as infinite lower triangular matrices.

The programs for A159937, the canonical program `A159937.P2281560375127821365` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159937 has offset 1).

The definition of A159937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159937.P2281560375127821365

`A054522(n+1)*A054523(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A159937

/-- `A054522(n+1)*A054523(n+1)` -/
def P2281560375127821365.Spec : Prop :=
  ∀ n, P2281560375127821365.a n = A159937 (n + 1)

theorem P2281560375127821365.correct : P2281560375127821365.Spec := by
  intro n
  simp only [A159937, Nat.add_sub_cancel]

end A159937

/-! ## A159937.P8730275164403055459

`A054523(n+1)*A054526(n+1)`
-/

namespace A159937.P8730275164403055459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A054526 (n + 1)

end

end A159937.P8730275164403055459

namespace A159937

/-- `A054523(n+1)*A054526(n+1)` -/
def P8730275164403055459.Spec : Prop :=
  ∀ n, P8730275164403055459.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P15174364897498079956

`A054523(n+1)*A054532(n+1)`
-/

namespace A159937.P15174364897498079956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A054532 (n + 1)

end

end A159937.P15174364897498079956

namespace A159937

/-- `A054523(n+1)*A054532(n+1)` -/
def P15174364897498079956.Spec : Prop :=
  ∀ n, P15174364897498079956.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P6281857379631521584

`A054523(n+1)*A372673(n+1)`
-/

namespace A159937.P6281857379631521584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (n + 1) * A372673 (n + 1)

end

end A159937.P6281857379631521584

namespace A159937

/-- `A054523(n+1)*A372673(n+1)` -/
def P6281857379631521584.Spec : Prop :=
  ∀ n, P6281857379631521584.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P4921127648806790819

`A127467(n+1)/A002260(n+1)`
-/

namespace A159937.P4921127648806790819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A159937.P4921127648806790819

namespace A159937

/-- `A127467(n+1)/A002260(n+1)` -/
def P4921127648806790819.Spec : Prop :=
  ∀ n, P4921127648806790819.a n = (A159937 (n + 1) : ℚ)

end A159937

/-! ## A159937.P11628008902268174476

`A127467(n+1)/A050873(n+1)`
-/

namespace A159937.P11628008902268174476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A159937.P11628008902268174476

namespace A159937

/-- `A127467(n+1)/A050873(n+1)` -/
def P11628008902268174476.Spec : Prop :=
  ∀ n, P11628008902268174476.a n = (A159937 (n + 1) : ℚ)

end A159937

/-! ## A159937.P10589097823972108359

`A127467(n+1)/A123275(n+1)`
-/

namespace A159937.P10589097823972108359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A123275 (n + 1) : ℚ)

end

end A159937.P10589097823972108359

namespace A159937

/-- `A127467(n+1)/A123275(n+1)` -/
def P10589097823972108359.Spec : Prop :=
  ∀ n, P10589097823972108359.a n = (A159937 (n + 1) : ℚ)

end A159937

/-! ## A159937.P9425644536634689638

`A127467(n+1)/A334230(n+1)`
-/

namespace A159937.P9425644536634689638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A334230 (n + 1) : ℚ)

end

end A159937.P9425644536634689638

namespace A159937

/-- `A127467(n+1)/A334230(n+1)` -/
def P9425644536634689638.Spec : Prop :=
  ∀ n, P9425644536634689638.a n = (A159937 (n + 1) : ℚ)

end A159937

/-! ## A159937.P15379177999263430795

`A127467(n+1)/A357554(n+1)`
-/

namespace A159937.P15379177999263430795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A357554 (n + 1) : ℚ)

end

end A159937.P15379177999263430795

namespace A159937

/-- `A127467(n+1)/A357554(n+1)` -/
def P15379177999263430795.Spec : Prop :=
  ∀ n, P15379177999263430795.a n = (A159937 (n + 1) : ℚ)

end A159937

/-! ## A159937.P10271957261438357272

`A000010(1-C(∑[char[∑[n]]], 2)+n)*A054523(n+1)`
-/

namespace A159937.P10271957261438357272
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)).toNat * A054523 (n + 1)

end

end A159937.P10271957261438357272

namespace A159937

/-- `A000010(1-C(∑[char[∑[n]]], 2)+n)*A054523(n+1)` -/
def P10271957261438357272.Spec : Prop :=
  ∀ n, P10271957261438357272.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P11957409134282396496

`A000010(A002260(n+1))*A054523(n+1)`
-/

namespace A159937.P11957409134282396496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002260 (n + 1)).toNat * A054523 (n + 1)

end

end A159937.P11957409134282396496

namespace A159937

/-- `A000010(A002260(n+1))*A054523(n+1)` -/
def P11957409134282396496.Spec : Prop :=
  ∀ n, P11957409134282396496.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P3565157678819128055

`A000010(A002262(n)+1)*A054523(n+1)`
-/

namespace A159937.P3565157678819128055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A002262 n + 1).toNat * A054523 (n + 1)

end

end A159937.P3565157678819128055

namespace A159937

/-- `A000010(A002262(n)+1)*A054523(n+1)` -/
def P3565157678819128055.Spec : Prop :=
  ∀ n, P3565157678819128055.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P14965388072021615996

`A000010(A010766(n+1))*A054522(n+1)`
-/

namespace A159937.P14965388072021615996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A010766 (n + 1)).toNat * A054522 (n + 1)

end

end A159937.P14965388072021615996

namespace A159937

/-- `A000010(A010766(n+1))*A054522(n+1)` -/
def P14965388072021615996.Spec : Prop :=
  ∀ n, P14965388072021615996.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P12315563251579123080

`A000010(A049834(n+1))*A054522(n+1)`
-/

namespace A159937.P12315563251579123080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049834 (n + 1)).toNat * A054522 (n + 1)

end

end A159937.P12315563251579123080

namespace A159937

/-- `A000010(A049834(n+1))*A054522(n+1)` -/
def P12315563251579123080.Spec : Prop :=
  ∀ n, P12315563251579123080.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P948623195071794665

`A000010(A050873(n+1))*A054523(n+1)`
-/

namespace A159937.P948623195071794665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A050873 (n + 1)).toNat * A054523 (n + 1)

end

end A159937.P948623195071794665

namespace A159937

/-- `A000010(A050873(n+1))*A054523(n+1)` -/
def P948623195071794665.Spec : Prop :=
  ∀ n, P948623195071794665.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P8665469326987630166

`A054522(n+1)*A054522(A286158(n+1))`
-/

namespace A159937.P8665469326987630166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (n + 1) * A054522 (A286158 (n + 1)).toNat

end

end A159937.P8665469326987630166

namespace A159937

/-- `A054522(n+1)*A054522(A286158(n+1))` -/
def P8665469326987630166.Spec : Prop :=
  ∀ n, P8665469326987630166.a n = A159937 (n + 1)

end A159937

/-! ## A159937.P1603646145742202036

`A127467(n+1)/A307662(n+1)`
-/

namespace A159937.P1603646145742202036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A307662 (n + 1) : ℚ)

end

end A159937.P1603646145742202036

namespace A159937

/-- `A127467(n+1)/A307662(n+1)` -/
def P1603646145742202036.Spec : Prop :=
  ∀ n, P1603646145742202036.a n = (A159937 (n + 1) : ℚ)

end A159937

/-! ## A159937.P4083138239015145986

`A127467(n+1)/A112544(n+1)`
-/

namespace A159937.P4083138239015145986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127467 (n + 1) : ℚ) / (A112544 (n + 1) : ℚ)

end

end A159937.P4083138239015145986

namespace A159937

/-- `A127467(n+1)/A112544(n+1)` -/
def P4083138239015145986.Spec : Prop :=
  ∀ n, P4083138239015145986.a n = (A159937 (n + 1) : ℚ)

end A159937

/-!
# A159938: The number of homogeneous trisubstituted linear alkanes.

The programs for A159938, the canonical program `A159938.P16777324736276566597` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159938 has offset 2).

The definition of A159938 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159938.P16777324736276566597

`(n+1)*((n+2)*(2*(n+2)-7)+12)/3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159938

/-- `(n+1)*((n+2)*(2*(n+2)-7)+12)/3` -/
def P16777324736276566597.Spec : Prop :=
  ∀ n, P16777324736276566597.a n = (A159938 (n + 2) : ℚ)

end A159938

/-! ## A159938.P1017191774959712390

`abs(∑[2*xor(-1, n²)])`
-/

namespace A159938.P1017191774959712390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (-1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A159938.P1017191774959712390

namespace A159938

/-- `abs(∑[2*xor(-1, n²)])` -/
def P1017191774959712390.Spec : Prop :=
  ∀ n, P1017191774959712390.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P4027430186694925782

`-∑[2*xor(-1, n²)]`
-/

namespace A159938.P4027430186694925782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (-1) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159938.P4027430186694925782

namespace A159938

/-- `-∑[2*xor(-1, n²)]` -/
def P4027430186694925782.Spec : Prop :=
  ∀ n, P4027430186694925782.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P13056589105998186466

`∑[ceil(2/acot(n)²)]+1`
-/

namespace A159938.P13056589105998186466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A159938.P13056589105998186466

namespace A159938

/-- `∑[ceil(2/acot(n)²)]+1` -/
def P13056589105998186466.Spec : Prop :=
  ∀ n, P13056589105998186466.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P17555930602769076030

`lcm(2, ∑[n*2*n+2])`
-/

namespace A159938.P17555930602769076030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159938.P17555930602769076030

namespace A159938

/-- `lcm(2, ∑[n*2*n+2])` -/
def P17555930602769076030.Spec : Prop :=
  ∀ n, (P17555930602769076030.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P10974234345305751561

`-∑[xor(n*2*n, -2)]`
-/

namespace A159938.P10974234345305751561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n * (2 * n) : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159938.P10974234345305751561

namespace A159938

/-- `-∑[xor(n*2*n, -2)]` -/
def P10974234345305751561.Spec : Prop :=
  ∀ n, P10974234345305751561.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P5130681786220763230

`∑[∑[ogf((2-2x+4x^2)/(1-2x+x^2))]]`
-/

namespace A159938.P5130681786220763230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159938.P5130681786220763230

namespace A159938

/-- `∑[∑[ogf((2-2x+4x^2)/(1-2x+x^2))]]` -/
def P5130681786220763230.Spec : Prop :=
  ∀ n, P5130681786220763230.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P17382625205552840744

`ogf((2-2x+4x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A159938.P17382625205552840744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, 4] [1, -4, 6, -4, 1] n

end

end A159938.P17382625205552840744

namespace A159938

/-- `ogf((2-2x+4x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17382625205552840744.Spec : Prop :=
  ∀ n, P17382625205552840744.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P10590761946125939573

`floor(∑[∑[a(n-1)+4]])` with `a(0)=2, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A159938.P10590761946125939573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159938.P10590761946125939573

namespace A159938

/-- `floor(∑[∑[a(n-1)+4]])` -/
def P10590761946125939573.Spec : Prop :=
  ∀ n, (P10590761946125939573.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P12138502767428485825

`∑[C(2*n, 2)+2]+∑[n]`
-/

namespace A159938.P12138502767428485825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A159938.P12138502767428485825

namespace A159938

/-- `∑[C(2*n, 2)+2]+∑[n]` -/
def P12138502767428485825.Spec : Prop :=
  ∀ n, (P12138502767428485825.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P12611156633069181199

`2*∑[∑[a(n-1)+2]]` with `a(0)=1, a(1)=1`
-/

namespace A159938.P12611156633069181199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159938.P12611156633069181199

namespace A159938

/-- `2*∑[∑[a(n-1)+2]]` -/
def P12611156633069181199.Spec : Prop :=
  ∀ n, (P12611156633069181199.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P5580221953085104450

`a(n-1)+2*(n²+1)` with `a(0)=2`
-/

namespace A159938.P5580221953085104450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * (n ^ 2 + 1)

end

end A159938.P5580221953085104450

namespace A159938

/-- `a(n-1)+2*(n²+1)` -/
def P5580221953085104450.Spec : Prop :=
  ∀ n, (P5580221953085104450.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P9079303905150101458

`floor(∑[4-∑[a(n-1)-4]])` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A159938.P9079303905150101458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159938.P9079303905150101458

namespace A159938

/-- `floor(∑[4-∑[a(n-1)-4]])` -/
def P9079303905150101458.Spec : Prop :=
  ∀ n, P9079303905150101458.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P13408318197115328393

`Δ[n*(C(n+1, 3)+n+1)]`
-/

namespace A159938.P13408318197115328393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n + 1) 3 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A159938.P13408318197115328393

namespace A159938

/-- `Δ[n*(C(n+1, 3)+n+1)]` -/
def P13408318197115328393.Spec : Prop :=
  ∀ n, P13408318197115328393.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P14250614703035275182

`∑[or(1, n*2*n)]+n+1`
-/

namespace A159938.P14250614703035275182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A159938.P14250614703035275182

namespace A159938

/-- `∑[or(1, n*2*n)]+n+1` -/
def P14250614703035275182.Spec : Prop :=
  ∀ n, (P14250614703035275182.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P7898461702668600040

`∑[xor(1, n*2*n)]+n+1`
-/

namespace A159938.P7898461702668600040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A159938.P7898461702668600040

namespace A159938

/-- `∑[xor(1, n*2*n)]+n+1` -/
def P7898461702668600040.Spec : Prop :=
  ∀ n, (P7898461702668600040.a n : ℤ) = A159938 (n + 2)

end A159938

/-! ## A159938.P18224365745948983501

`2*∑[record[(n-1)²]-2*n]`
-/

namespace A159938.P18224365745948983501
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159938.P18224365745948983501

namespace A159938

/-- `2*∑[record[(n-1)²]-2*n]` -/
def P18224365745948983501.Spec : Prop :=
  ∀ n, P18224365745948983501.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P1365056867968509379

`∑[(n-1)²]+∑[record[(n-1)²]]`
-/

namespace A159938.P1365056867968509379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A159938.P1365056867968509379

namespace A159938

/-- `∑[(n-1)²]+∑[record[(n-1)²]]` -/
def P1365056867968509379.Spec : Prop :=
  ∀ n, P1365056867968509379.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P7458724522720964317

`2*∑[2-∑[a(n-1)-2]]` with `a(0)=1`
-/

namespace A159938.P7458724522720964317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A159938.P7458724522720964317

namespace A159938

/-- `2*∑[2-∑[a(n-1)-2]]` -/
def P7458724522720964317.Spec : Prop :=
  ∀ n, P7458724522720964317.a n = A159938 (n + 2)

end A159938

/-! ## A159938.P8532659785974279111

`2*n*n+a(n-1)+2` with `a(0)=2`
-/

namespace A159938.P8532659785974279111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  2 * (n * n) + (a (n - 1) + 2)

end

end A159938.P8532659785974279111

namespace A159938

/-- `2*n*n+a(n-1)+2` -/
def P8532659785974279111.Spec : Prop :=
  ∀ n, (P8532659785974279111.a n : ℤ) = A159938 (n + 2)

end A159938

/-!
# A159939: Odd solutions of phi(sigma(k)) = sigma(phi(k)).

The programs for A159939, there is no canonical definition to state claims against.
-/

/-! ## A159939.P12377148567156648835

`∩[A033632(n+1), A143512(n+1)]`
-/

namespace A159939.P12377148567156648835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159939.P12377148567156648835

/-! ## A159939.P14716662705947787053

`∩[A033632(n+1), A379112(n+1)]`
-/

namespace A159939.P14716662705947787053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159939.P14716662705947787053

/-! ## A159939.P14517553156712853718

`∩[A033632(n+1), A352492(n+1)]`
-/

namespace A159939.P14517553156712853718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159939.P14517553156712853718

/-!
# A159940: The number of trisubstitution products with composition C_n H_(2n-1) X_2 Y.

The programs for A159940, the canonical program `A159940.P8091727123112620188` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159940 has offset 2).

The definition of A159940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159940.P10643734889724271420

`(n+2)*((n+2)*(2*(n+2)-9)+19)-14`
-/

namespace A159940.P10643734889724271420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n + 2 : ℤ) * ((2 * (n + 2) : ℤ) - 9) + 19) - 14

end

end A159940.P10643734889724271420

namespace A159940

/-- `(n+2)*((n+2)*(2*(n+2)-9)+19)-14` -/
def P10643734889724271420.Spec : Prop :=
  ∀ n, P10643734889724271420.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P8091727123112620188

`A159941(n+2)/2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159940

/-- `A159941(n+2)/2` -/
def P8091727123112620188.Spec : Prop :=
  ∀ n, P8091727123112620188.a n = (A159940 (n + 2) : ℚ)

end A159940

/-! ## A159940.P3334123520781809013

`Δ[2*n²+n+C(n²+1, 2)]`
-/

namespace A159940.P3334123520781809013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2 + n + Nat.choose (n ^ 2 + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A159940.P3334123520781809013

namespace A159940

/-- `Δ[2*n²+n+C(n²+1, 2)]` -/
def P3334123520781809013.Spec : Prop :=
  ∀ n, P3334123520781809013.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P2938849575550613141

`2*(∑[∑[ogf((6x-3x^2+3x^3)/(1-2x+x^2))]]+2)`
-/

namespace A159940.P2938849575550613141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -3, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A159940.P2938849575550613141

namespace A159940

/-- `2*(∑[∑[ogf((6x-3x^2+3x^3)/(1-2x+x^2))]]+2)` -/
def P2938849575550613141.Spec : Prop :=
  ∀ n, P2938849575550613141.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P9695165225841090246

`∑[2*(A005918(n)+1)]`
-/

namespace A159940.P9695165225841090246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005918 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159940.P9695165225841090246

namespace A159940

/-- `∑[2*(A005918(n)+1)]` -/
def P9695165225841090246.Spec : Prop :=
  ∀ n, P9695165225841090246.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P4888764159748690612

`∑[or(1, A005897(n))+3]`
-/

namespace A159940.P4888764159748690612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005897 n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159940.P4888764159748690612

namespace A159940

/-- `∑[or(1, A005897(n))+3]` -/
def P4888764159748690612.Spec : Prop :=
  ∀ n, P4888764159748690612.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P5262882802132800559

`2*(A173965(n+1)-n)`
-/

namespace A159940.P5262882802132800559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A173965 (n + 1) - (n : ℤ))

end

end A159940.P5262882802132800559

namespace A159940

/-- `2*(A173965(n+1)-n)` -/
def P5262882802132800559.Spec : Prop :=
  ∀ n, P5262882802132800559.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P15495466203546972064

`lcm(2, ∑[3*A005893(n)]+1)`
-/

namespace A159940.P15495466203546972064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005893 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A159940.P15495466203546972064

namespace A159940

/-- `lcm(2, ∑[3*A005893(n)]+1)` -/
def P15495466203546972064.Spec : Prop :=
  ∀ n, (P15495466203546972064.a n : ℤ) = A159940 (n + 2)

end A159940

/-! ## A159940.P12342912845694858489

`2*(A221574(n+1)-∑[n])`
-/

namespace A159940.P12342912845694858489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A221574 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A159940.P12342912845694858489

namespace A159940

/-- `2*(A221574(n+1)-∑[n])` -/
def P12342912845694858489.Spec : Prop :=
  ∀ n, P12342912845694858489.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P15958919467418330923

`2*(A063488(n+1)+n+1)`
-/

namespace A159940.P15958919467418330923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063488 (n + 1) + (n + 1 : ℤ))

end

end A159940.P15958919467418330923

namespace A159940

/-- `2*(A063488(n+1)+n+1)` -/
def P15958919467418330923.Spec : Prop :=
  ∀ n, P15958919467418330923.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P5093400591499637513

`(A300758(n)+A017617(n))/2`
-/

namespace A159940.P5093400591499637513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300758 n + A017617 n : ℚ) / 2

end

end A159940.P5093400591499637513

namespace A159940

/-- `(A300758(n)+A017617(n))/2` -/
def P5093400591499637513.Spec : Prop :=
  ∀ n, P5093400591499637513.a n = (A159940 (n + 2) : ℚ)

end A159940

/-! ## A159940.P14392202086205880251

`∑[A005897(n)*A057427(n)+4]`
-/

namespace A159940.P14392202086205880251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n * A057427 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159940.P14392202086205880251

namespace A159940

/-- `∑[A005897(n)*A057427(n)+4]` -/
def P14392202086205880251.Spec : Prop :=
  ∀ n, P14392202086205880251.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P7141469028863424450

`(A017353(n)+A005917(n+1))/2`
-/

namespace A159940.P7141469028863424450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017353 n + A005917 (n + 1) : ℚ) / 2

end

end A159940.P7141469028863424450

namespace A159940

/-- `(A017353(n)+A005917(n+1))/2` -/
def P7141469028863424450.Spec : Prop :=
  ∀ n, P7141469028863424450.a n = (A159940 (n + 2) : ℚ)

end A159940

/-! ## A159940.P7038734690340576602

`(A050492(n+1)+A017473(n))/2`
-/

namespace A159940.P7038734690340576602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050492 (n + 1) + A017473 n : ℚ) / 2

end

end A159940.P7038734690340576602

namespace A159940

/-- `(A050492(n+1)+A017473(n))/2` -/
def P7038734690340576602.Spec : Prop :=
  ∀ n, P7038734690340576602.a n = (A159940 (n + 2) : ℚ)

end A159940

/-! ## A159940.P6137906989278251048

`(A268201(n+1)+A017485(n))/2`
-/

namespace A159940.P6137906989278251048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268201 (n + 1) + A017485 n : ℚ) / 2

end

end A159940.P6137906989278251048

namespace A159940

/-- `(A268201(n+1)+A017485(n))/2` -/
def P6137906989278251048.Spec : Prop :=
  ∀ n, P6137906989278251048.a n = (A159940 (n + 2) : ℚ)

end A159940

/-! ## A159940.P5855490054765222337

`(A250352(n+1)+A119536(n))/2`
-/

namespace A159940.P5855490054765222337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250352 (n + 1) + A119536 n : ℚ) / 2

end

end A159940.P5855490054765222337

namespace A159940

/-- `(A250352(n+1)+A119536(n))/2` -/
def P5855490054765222337.Spec : Prop :=
  ∀ n, P5855490054765222337.a n = (A159940 (n + 2) : ℚ)

end A159940

/-! ## A159940.P11729223655223533234

`∑[A157532(n+1)+A005897(n)+1]`
-/

namespace A159940.P11729223655223533234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1) + (A005897 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159940.P11729223655223533234

namespace A159940

/-- `∑[A157532(n+1)+A005897(n)+1]` -/
def P11729223655223533234.Spec : Prop :=
  ∀ n, P11729223655223533234.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P10594934601678144122

`Δ[n*A006001(n)]`
-/

namespace A159940.P10594934601678144122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159940.P10594934601678144122

namespace A159940

/-- `Δ[n*A006001(n)]` -/
def P10594934601678144122.Spec : Prop :=
  ∀ n, P10594934601678144122.a n = A159940 (n + 2)

end A159940

/-! ## A159940.P12431077918312494377

`2*(Δ[A294070(n+1)]-n)`
-/

namespace A159940.P12431077918312494377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n - (n : ℤ))

end

end A159940.P12431077918312494377

namespace A159940

/-- `2*(Δ[A294070(n+1)]-n)` -/
def P12431077918312494377.Spec : Prop :=
  ∀ n, P12431077918312494377.a n = A159940 (n + 2)

end A159940

/-!
# A159941: Number of trisubstituted linear alkanes of composition C_n H_(2n-1) XYZ.

The programs for A159941, the canonical program `A159941.P14641014332245002269` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159941 has offset 2).

The definition of A159941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159941.P14641014332245002269

`2*(n+2)*((n+2)*(2*(n+2)-9)+19)-28`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159941

/-- `2*(n+2)*((n+2)*(2*(n+2)-9)+19)-28` -/
def P14641014332245002269.Spec : Prop :=
  ∀ n, P14641014332245002269.a n = A159941 (n + 2)

theorem P14641014332245002269.correct : P14641014332245002269.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel]

end A159941

/-! ## A159941.P2456369990241100758

`2*A159940(n+2)`
-/

namespace A159941.P2456369990241100758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A159940 (n + 2)

end

end A159941.P2456369990241100758

namespace A159941

/-- `2*A159940(n+2)` -/
def P2456369990241100758.Spec : Prop :=
  ∀ n, P2456369990241100758.a n = A159941 (n + 2)

end A159941

/-! ## A159941.P11039929423864301170

`lcm(2, Δ[(n+1)²+(n²+2)²])`
-/

namespace A159941.P11039929423864301170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + (n ^ 2 + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A159941.P11039929423864301170

namespace A159941

/-- `lcm(2, Δ[(n+1)²+(n²+2)²])` -/
def P11039929423864301170.Spec : Prop :=
  ∀ n, (P11039929423864301170.a n : ℤ) = A159941 (n + 2)

end A159941

/-! ## A159941.P15434226742347728979

`4*(∑[∑[ogf((6x-3x^2+3x^3)/(1-2x+x^2))]]+2)`
-/

namespace A159941.P15434226742347728979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -3, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A159941.P15434226742347728979

namespace A159941

/-- `4*(∑[∑[ogf((6x-3x^2+3x^3)/(1-2x+x^2))]]+2)` -/
def P15434226742347728979.Spec : Prop :=
  ∀ n, P15434226742347728979.a n = A159941 (n + 2)

end A159941

/-! ## A159941.P18202650022872220379

`Δ[A168668(n)+n²²]`
-/

namespace A159941.P18202650022872220379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P18202650022872220379

namespace A159941

/-- `Δ[A168668(n)+n²²]` -/
def P18202650022872220379.Spec : Prop :=
  ∀ n, P18202650022872220379.a n = A159941 (n + 2)

theorem P18202650022872220379.correct : P18202650022872220379.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P18202650022872220379.f1, A159941.P18202650022872220379.a, A159941.P14641014332245002269.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P6591842077896778699

`4*(A173965(n+1)-n)`
-/

namespace A159941.P6591842077896778699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A173965 (n + 1) - (n : ℤ))

end

end A159941.P6591842077896778699

namespace A159941

/-- `4*(A173965(n+1)-n)` -/
def P6591842077896778699.Spec : Prop :=
  ∀ n, P6591842077896778699.a n = A159941 (n + 2)

end A159941

/-! ## A159941.P6474398639211847939

`Δ[A304726(n)+(n+1)²]`
-/

namespace A159941.P6474398639211847939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304726 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P6474398639211847939

namespace A159941

/-- `Δ[A304726(n)+(n+1)²]` -/
def P6474398639211847939.Spec : Prop :=
  ∀ n, P6474398639211847939.a n = A159941 (n + 2)

theorem P6474398639211847939.correct : P6474398639211847939.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P6474398639211847939.f1, A159941.P6474398639211847939.a, A159941.P14641014332245002269.a, A304726, A304726.P3688958258049521962.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P2927108373075000280

`4*(A063488(n+1)+n+1)`
-/

namespace A159941.P2927108373075000280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A063488 (n + 1) + (n + 1 : ℤ))

end

end A159941.P2927108373075000280

namespace A159941

/-- `4*(A063488(n+1)+n+1)` -/
def P2927108373075000280.Spec : Prop :=
  ∀ n, P2927108373075000280.a n = A159941 (n + 2)

end A159941

/-! ## A159941.P11980812117447087085

`2*(A005898(n)+A004767(n))`
-/

namespace A159941.P11980812117447087085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005898 n + A004767 n)

end

end A159941.P11980812117447087085

namespace A159941

/-- `2*(A005898(n)+A004767(n))` -/
def P11980812117447087085.Spec : Prop :=
  ∀ n, P11980812117447087085.a n = A159941 (n + 2)

theorem P11980812117447087085.correct : P11980812117447087085.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P11980812117447087085.a, A159941.P14641014332245002269.a, A004767, A004767.P13352534504447192883.a, A005898, A005898.P8127451400230703254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P13764535797561501240

`2*(A055112(n)+A016957(n))`
-/

namespace A159941.P13764535797561501240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A055112 n + A016957 n)

end

end A159941.P13764535797561501240

namespace A159941

/-- `2*(A055112(n)+A016957(n))` -/
def P13764535797561501240.Spec : Prop :=
  ∀ n, P13764535797561501240.a n = A159941 (n + 2)

theorem P13764535797561501240.correct : P13764535797561501240.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P13764535797561501240.a, A159941.P14641014332245002269.a, A016957, A016957.P9941618694539595759.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P637762453996411682

`2*(A100503(n)+A037237(n))`
-/

namespace A159941.P637762453996411682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A100503 n + A037237 n)

end

end A159941.P637762453996411682

namespace A159941

/-- `2*(A100503(n)+A037237(n))` -/
def P637762453996411682.Spec : Prop :=
  ∀ n, P637762453996411682.a n = A159941 (n + 2)

end A159941

/-! ## A159941.P15455775384046664575

`2*(A144391(n+1)+A033562(n))`
-/

namespace A159941.P15455775384046664575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144391 (n + 1) + A033562 n)

end

end A159941.P15455775384046664575

namespace A159941

/-- `2*(A144391(n+1)+A033562(n))` -/
def P15455775384046664575.Spec : Prop :=
  ∀ n, P15455775384046664575.a n = A159941 (n + 2)

theorem P15455775384046664575.correct : P15455775384046664575.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P15455775384046664575.a, A159941.P14641014332245002269.a, A033562, A033562.P8318221385347379331.a, A144391, A144391.P10458149098222349615.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P8783882392894429493

`2*(A099721(n)+A091823(n+1))`
-/

namespace A159941.P8783882392894429493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A099721 n + A091823 (n + 1))

end

end A159941.P8783882392894429493

namespace A159941

/-- `2*(A099721(n)+A091823(n+1))` -/
def P8783882392894429493.Spec : Prop :=
  ∀ n, P8783882392894429493.a n = A159941 (n + 2)

theorem P8783882392894429493.correct : P8783882392894429493.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P8783882392894429493.a, A159941.P14641014332245002269.a, A091823, A091823.P12621649529631280262.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P14654831308059394514

`Δ[2*n*A006001(n)]`
-/

namespace A159941.P14654831308059394514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A006001 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P14654831308059394514

namespace A159941

/-- `Δ[2*n*A006001(n)]` -/
def P14654831308059394514.Spec : Prop :=
  ∀ n, P14654831308059394514.a n = A159941 (n + 2)

end A159941

/-! ## A159941.P10674895871693459641

`Δ[A082113(n)+Δ[n²]]`
-/

namespace A159941.P10674895871693459641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082113 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P10674895871693459641

namespace A159941

/-- `Δ[A082113(n)+Δ[n²]]` -/
def P10674895871693459641.Spec : Prop :=
  ∀ n, P10674895871693459641.a n = A159941 (n + 2)

theorem P10674895871693459641.correct : P10674895871693459641.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P10674895871693459641.f2, A159941.P10674895871693459641.f1, A159941.P10674895871693459641.a, A159941.P14641014332245002269.a, A082113, A082113.P7246514355658076769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P1044718839779410276

`Δ[A156798(n)+Δ[n²]]`
-/

namespace A159941.P1044718839779410276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156798 n + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P1044718839779410276

namespace A159941

/-- `Δ[A156798(n)+Δ[n²]]` -/
def P1044718839779410276.Spec : Prop :=
  ∀ n, P1044718839779410276.a n = A159941 (n + 2)

theorem P1044718839779410276.correct : P1044718839779410276.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P1044718839779410276.f2, A159941.P1044718839779410276.f1, A159941.P1044718839779410276.a, A159941.P14641014332245002269.a, A156798, A156798.P10525748190720154864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P3964399394208001427

`Δ[A082106(n)+(n+1)²]`
-/

namespace A159941.P3964399394208001427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082106 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P3964399394208001427

namespace A159941

/-- `Δ[A082106(n)+(n+1)²]` -/
def P3964399394208001427.Spec : Prop :=
  ∀ n, P3964399394208001427.a n = A159941 (n + 2)

theorem P3964399394208001427.correct : P3964399394208001427.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P3964399394208001427.f1, A159941.P3964399394208001427.a, A159941.P14641014332245002269.a, A082106, A082106.P6467182335173470423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P14897778061022827629

`Δ[A273982(n+1)+n²²]`
-/

namespace A159941.P14897778061022827629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273982 (n + 1) + ((n ^ 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P14897778061022827629

namespace A159941

/-- `Δ[A273982(n+1)+n²²]` -/
def P14897778061022827629.Spec : Prop :=
  ∀ n, P14897778061022827629.a n = A159941 (n + 2)

theorem P14897778061022827629.correct : P14897778061022827629.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P14897778061022827629.f1, A159941.P14897778061022827629.a, A159941.P14641014332245002269.a, A273982, A273982.P14215871611992905758.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-! ## A159941.P15752604921998839747

`Δ[A005492(n+4)-(n+1)²]`
-/

namespace A159941.P15752604921998839747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005492 (n + 4) - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159941.P15752604921998839747

namespace A159941

/-- `Δ[A005492(n+4)-(n+1)²]` -/
def P15752604921998839747.Spec : Prop :=
  ∀ n, P15752604921998839747.a n = A159941 (n + 2)

theorem P15752604921998839747.correct : P15752604921998839747.Spec := by
  intro n
  simp only [A159941, Nat.add_sub_cancel, A159941.P15752604921998839747.f1, A159941.P15752604921998839747.a, A159941.P14641014332245002269.a, A005492, A005492.P8751182643272297130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159941

/-!
# A159945: Let f be defined as in A159885. Then a(n) = max{A000120(f^i(2n+1)): 1 <= i <= A159885(n)}.

The programs for A159945, there is no canonical definition to state claims against.
-/

/-! ## A159945.P15823106868300366517

`A000120(A065672(3*n+5)-A015329(n+1))`
-/

namespace A159945.P15823106868300366517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A065672 (3 * n + 5) - A015329 (n + 1)).toNat

end

end A159945.P15823106868300366517

/-! ## A159945.P1105711780360867978

`A256757(A088699(n)*A232175(3*n+5))`
-/

namespace A159945.P1105711780360867978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256757 (A088699 n * A232175 (3 * n + 5)).toNat

end

end A159945.P1105711780360867978

/-! ## A159945.P15232647840201093458

`A256757(3*n+5)+A240467(A000045(n+3))`
-/

namespace A159945.P15232647840201093458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256757 (3 * n + 5) + A240467 (A000045 (n + 3)).toNat

end

end A159945.P15232647840201093458

/-! ## A159945.P14156885510023664111

`A256757(A013609(n)*A342768(3*n+5))`
-/

namespace A159945.P14156885510023664111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256757 (A013609 n * A342768 (3 * n + 5)).toNat

end

end A159945.P14156885510023664111

/-! ## A159945.P253635975167992482

`A256757(A269863(n+1)*A342768(3*n+5))`
-/

namespace A159945.P253635975167992482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256757 (A269863 (n + 1) * A342768 (3 * n + 5)).toNat

end

end A159945.P253635975167992482

/-!
# A159950: 

The programs for A159950, there is no canonical definition to state claims against.
-/

/-! ## A159950.P9982764231052891211

`A003266(A004766(n+1)+1)`
-/

namespace A159950.P9982764231052891211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003266 (A004766 (n + 1) + 1).toNat

end

end A159950.P9982764231052891211

/-!
# A159952: Skinny numbers (A061909) containing no 3's.

The programs for A159952, there is no canonical definition to state claims against.
-/

/-! ## A159952.P2217369613976524150

`lt[A045503(n), 11]`
-/

namespace A159952.P2217369613976524150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A159952.P2217369613976524150

/-! ## A159952.P9774159175374220404

`lt[A045512(n), 11]`
-/

namespace A159952.P9774159175374220404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A159952.P9774159175374220404

/-! ## A159952.P18410871195995465503

`lt[sqrt(A055014(n)), 9]`
-/

namespace A159952.P18410871195995465503
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055014 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A159952.P18410871195995465503

/-! ## A159952.P449068338016609146

`A007089(comp[26*(n+1)])`
-/

namespace A159952.P449068338016609146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A159952.P449068338016609146

/-! ## A159952.P17767581336091176262

`lt[A054899(A055012(n)), 2]`
-/

namespace A159952.P17767581336091176262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A055012 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A159952.P17767581336091176262

/-! ## A159952.P14977604786756599019

`lt[A003132(A235049(n)), 3]`
-/

namespace A159952.P14977604786756599019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A235049 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A159952.P14977604786756599019

/-! ## A159952.P6253478320487179925

`lt[A061602(A004176(n)), 6]`
-/

namespace A159952.P6253478320487179925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A004176 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A159952.P6253478320487179925

/-! ## A159952.P1853424861955323030

`eq[A067552(n), A102671(n)]`
-/

namespace A159952.P1853424861955323030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159952.P1853424861955323030

/-! ## A159952.P17004059572609755902

`eq[A067552(n), A316864(n)]`
-/

namespace A159952.P17004059572609755902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067552 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159952.P17004059572609755902

/-! ## A159952.P8981274563718835954

`eq[A025465(n+2), A176407(n)]`
-/

namespace A159952.P8981274563718835954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A159952.P8981274563718835954

/-!
# A159953: Values in A054973 larger than 1.

The programs for A159953, there is no canonical definition to state claims against.
-/

/-! ## A159953.P15902281828047264620

`A054973(A159886(n+1))`
-/

namespace A159953.P15902281828047264620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (A159886 (n + 1)).toNat

end

end A159953.P15902281828047264620

/-! ## A159953.P9451337242040887591

`A054973(lt[1, A054973(n+1)]+1)`
-/

namespace A159953.P9451337242040887591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A159953.P9451337242040887591

/-! ## A159953.P2304331923819072041

`A054973(∪[A007371(n+1), A258914(n+1)])`
-/

namespace A159953.P2304331923819072041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A159953.P2304331923819072041

/-! ## A159953.P5700569185129334097

`A054973(∪[A258914(n+1), A258931(n+1)])`
-/

namespace A159953.P5700569185129334097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258931 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A159953.P5700569185129334097

/-! ## A159953.P13581386183639107577

`A054973(record[gcd(A007609(n+7), A007609(n+8))])`
-/

namespace A159953.P13581386183639107577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007609 (n + 7)) (A007609 (n + 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A159953.P13581386183639107577

/-!
# A159955: Period 9: repeat [0, 1, 2, 1, 2, 0, 2, 0, 1].

The programs for A159955, the canonical program `A159955.P14615245663986400092` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159955 has offset 0).

The definition of A159955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159955.P14615245663986400092

`(n+floor(n/3))%3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159955

/-- `(n+floor(n/3))%3` -/
def P14615245663986400092.Spec : Prop :=
  ∀ n, P14615245663986400092.a n = A159955 n

theorem P14615245663986400092.correct : P14615245663986400092.Spec := by
  intro n
  simp only [A159955]

end A159955

/-!
# A159956: Period 16 : 0,1,2,3,1,2,3,0,2,3,0,1,3,0,1,2 .

The programs for A159956, the canonical program `A159956.P17540968659741795654` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159956 has offset 0).

The definition of A159956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159956.P17540968659741795654

`floor(5*n/4)%4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159956

/-- `floor(5*n/4)%4` -/
def P17540968659741795654.Spec : Prop :=
  ∀ n, P17540968659741795654.a n = A159956 n

theorem P17540968659741795654.correct : P17540968659741795654.Spec := by
  intro n
  simp only [A159956]

end A159956

/-!
# A159957: Period 25 : 0,1,2,3,4,1,2,3,4,0,2,3,4,0,1,3,4,0,1,2,4,0,1,2,3 .

The programs for A159957, the canonical program `A159957.P11991380976421592518` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159957 has offset 0).

The definition of A159957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159957.P11991380976421592518

`C(6*n, 5)%5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159957

/-- `C(6*n, 5)%5` -/
def P11991380976421592518.Spec : Prop :=
  ∀ n, (P11991380976421592518.a n : ℤ) = A159957 n

theorem P11991380976421592518.correct : P11991380976421592518.Spec := by
  intro n
  simp only [A159957]

end A159957

/-!
# A159958: Lodumo_3 of A053838 .

The programs for A159958, the canonical program `A159958.P5388450425677827811` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159958 has offset 0).

The definition of A159958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159958.P5388450425677827811

`A053838(n)-n%3+n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159958

/-- `A053838(n)-n%3+n` -/
def P5388450425677827811.Spec : Prop :=
  ∀ n, P5388450425677827811.a n = A159958 n

theorem P5388450425677827811.correct : P5388450425677827811.Spec := by
  intro n
  simp only [A159958]

end A159958

/-! ## A159958.P8960144033810613690

`A004128(n)%3+3*floor(n/3)`
-/

namespace A159958.P8960144033810613690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) 3 + 3 * ⌊(n : ℚ) / 3⌋

end

end A159958.P8960144033810613690

namespace A159958

/-- `A004128(n)%3+3*floor(n/3)` -/
def P8960144033810613690.Spec : Prop :=
  ∀ n, P8960144033810613690.a n = A159958 n

end A159958

/-! ## A159958.P8981710317283046042

`A007089(n)%3+3*floor(n/3)`
-/

namespace A159958.P8981710317283046042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 n) 3 + 3 * ⌊(n : ℚ) / 3⌋

end

end A159958.P8981710317283046042

namespace A159958

/-- `A007089(n)%3+3*floor(n/3)` -/
def P8981710317283046042.Spec : Prop :=
  ∀ n, P8981710317283046042.a n = A159958 n

end A159958

/-! ## A159958.P16270868958563205582

`A053838(n)+n-A010872(n)`
-/

namespace A159958.P16270868958563205582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + ((n : ℤ) - A010872 n)

end

end A159958.P16270868958563205582

namespace A159958

/-- `A053838(n)+n-A010872(n)` -/
def P16270868958563205582.Spec : Prop :=
  ∀ n, P16270868958563205582.a n = A159958 n

theorem P16270868958563205582.correct : P16270868958563205582.Spec := by
  intro n
  simp only [A159958, Nat.add_sub_cancel, A159958.P16270868958563205582.a, A159958.P5388450425677827811.a, A010872, A010872.P9752549328412734763.a, A053838, A053838.P12960240221396794079.a, A053735, A053735.P3640341592284089632.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159958

/-! ## A159958.P1468200662087178166

`A053838(n)+A008585(floor(n/3))`
-/

namespace A159958.P1468200662087178166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053838 n + A008585 ⌊(n : ℚ) / 3⌋.toNat

end

end A159958.P1468200662087178166

namespace A159958

/-- `A053838(n)+A008585(floor(n/3))` -/
def P1468200662087178166.Spec : Prop :=
  ∀ n, P1468200662087178166.a n = A159958 n

end A159958

/-! ## A159958.P6216265524248934687

`A026600(n+1)+n-A010882(n)`
-/

namespace A159958.P6216265524248934687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026600 (n + 1) + ((n : ℤ) - A010882 n)

end

end A159958.P6216265524248934687

namespace A159958

/-- `A026600(n+1)+n-A010882(n)` -/
def P6216265524248934687.Spec : Prop :=
  ∀ n, P6216265524248934687.a n = A159958 n

end A159958

/-! ## A159958.P16431472951484112649

`A010872(A004128(n))+n-A010872(n)`
-/

namespace A159958.P16431472951484112649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A004128 n).toNat + ((n : ℤ) - A010872 n)

end

end A159958.P16431472951484112649

namespace A159958

/-- `A010872(A004128(n))+n-A010872(n)` -/
def P16431472951484112649.Spec : Prop :=
  ∀ n, P16431472951484112649.a n = A159958 n

end A159958

/-! ## A159958.P10858702354077892462

`A010882(A004128(n))+n-A010882(n)`
-/

namespace A159958.P10858702354077892462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A004128 n).toNat + ((n : ℤ) - A010882 n)

end

end A159958.P10858702354077892462

namespace A159958

/-- `A010882(A004128(n))+n-A010882(n)` -/
def P10858702354077892462.Spec : Prop :=
  ∀ n, P10858702354077892462.a n = A159958 n

end A159958

/-! ## A159958.P18031361939208544595

`A090193(3*n+2)+6*floor(n/3)/2`
-/

namespace A159958.P18031361939208544595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090193 (3 * n + 2) : ℚ) + 6 * ((⌊(n : ℚ) / 3⌋ : ℚ) / 2)

end

end A159958.P18031361939208544595

namespace A159958

/-- `A090193(3*n+2)+6*floor(n/3)/2` -/
def P18031361939208544595.Spec : Prop :=
  ∀ n, P18031361939208544595.a n = (A159958 n : ℚ)

end A159958

/-! ## A159958.P17660415594392672741

`A010882(A007089(n))+n-A010882(n)`
-/

namespace A159958.P17660415594392672741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A007089 n).toNat + ((n : ℤ) - A010882 n)

end

end A159958.P17660415594392672741

namespace A159958

/-- `A010882(A007089(n))+n-A010882(n)` -/
def P17660415594392672741.Spec : Prop :=
  ∀ n, P17660415594392672741.a n = A159958 n

end A159958

/-!
# A159961: Cuban composites: composite numbers equal to the difference of two consecutive cubes.

The programs for A159961, the canonical program `A159961.P2276132974852648584` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159961 has offset 1).

The definition of A159961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8035 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159961.P15172118360908810250

`A003215(A257772(n+2))`
-/

namespace A159961.P15172118360908810250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (A257772 (n + 2)).toNat

end

end A159961.P15172118360908810250

namespace A159961

/-- `A003215(A257772(n+2))` -/
def P15172118360908810250.Spec : Prop :=
  ∀ n, P15172118360908810250.a n = A159961 (n + 1)

end A159961

/-! ## A159961.P2276132974852648584

`A003215(lt[1, A350090(n)])`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159961

/-- `A003215(lt[1, A350090(n)])` -/
def P2276132974852648584.Spec : Prop :=
  ∀ n, P2276132974852648584.a n = A159961 (n + 1)

theorem P2276132974852648584.correct : P2276132974852648584.Spec := by
  intro n
  simp only [A159961, Nat.add_sub_cancel]

end A159961

/-! ## A159961.P12687889211613806518

`A298125(A257772(n+2)+2)`
-/

namespace A159961.P12687889211613806518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (A257772 (n + 2) + 2).toNat

end

end A159961.P12687889211613806518

namespace A159961

/-- `A298125(A257772(n+2)+2)` -/
def P12687889211613806518.Spec : Prop :=
  ∀ n, P12687889211613806518.a n = A159961 (n + 1)

end A159961

/-! ## A159961.P17359491439474159215

`∩[A118886(n+1), A003215(n)]`
-/

namespace A159961.P17359491439474159215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P17359491439474159215

namespace A159961

/-- `∩[A118886(n+1), A003215(n)]` -/
def P17359491439474159215.Spec : Prop :=
  ∀ n, (P17359491439474159215.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P339689214755480750

`∩[A118886(n+1), A354343(n)]`
-/

namespace A159961.P339689214755480750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P339689214755480750

namespace A159961

/-- `∩[A118886(n+1), A354343(n)]` -/
def P339689214755480750.Spec : Prop :=
  ∀ n, (P339689214755480750.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P9250814735025308046

`∩[A118886(n+1), A298125(n+1)]`
-/

namespace A159961.P9250814735025308046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P9250814735025308046

namespace A159961

/-- `∩[A118886(n+1), A298125(n+1)]` -/
def P9250814735025308046.Spec : Prop :=
  ∀ n, (P9250814735025308046.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P7468497075586392907

`∩[A118886(n+1), A309805(n+1)]`
-/

namespace A159961.P7468497075586392907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P7468497075586392907

namespace A159961

/-- `∩[A118886(n+1), A309805(n+1)]` -/
def P7468497075586392907.Spec : Prop :=
  ∀ n, (P7468497075586392907.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P13578623192773564

`∩[A350704(n+1), A003215(n)]`
-/

namespace A159961.P13578623192773564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P13578623192773564

namespace A159961

/-- `∩[A350704(n+1), A003215(n)]` -/
def P13578623192773564.Spec : Prop :=
  ∀ n, (P13578623192773564.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P2792663237993948283

`∩[A350704(n+1), A007980(n)]`
-/

namespace A159961.P2792663237993948283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P2792663237993948283

namespace A159961

/-- `∩[A350704(n+1), A007980(n)]` -/
def P2792663237993948283.Spec : Prop :=
  ∀ n, (P2792663237993948283.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P14045755220373288802

`∩[A350704(n+1), A077043(n)]`
-/

namespace A159961.P14045755220373288802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P14045755220373288802

namespace A159961

/-- `∩[A350704(n+1), A077043(n)]` -/
def P14045755220373288802.Spec : Prop :=
  ∀ n, (P14045755220373288802.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P623148979294022487

`∩[A350704(n+1), A354343(n)]`
-/

namespace A159961.P623148979294022487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P623148979294022487

namespace A159961

/-- `∩[A350704(n+1), A354343(n)]` -/
def P623148979294022487.Spec : Prop :=
  ∀ n, (P623148979294022487.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P12765856595193411841

`∩[A350704(n+1), A389430(n)]`
-/

namespace A159961.P12765856595193411841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389430 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P12765856595193411841

namespace A159961

/-- `∩[A350704(n+1), A389430(n)]` -/
def P12765856595193411841.Spec : Prop :=
  ∀ n, (P12765856595193411841.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P2431464813999740228

`∩[A298125(n+1), A350704(n+1)]`
-/

namespace A159961.P2431464813999740228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P2431464813999740228

namespace A159961

/-- `∩[A298125(n+1), A350704(n+1)]` -/
def P2431464813999740228.Spec : Prop :=
  ∀ n, (P2431464813999740228.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P4128838019559381629

`∩[A309805(n+1), A350704(n+1)]`
-/

namespace A159961.P4128838019559381629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P4128838019559381629

namespace A159961

/-- `∩[A309805(n+1), A350704(n+1)]` -/
def P4128838019559381629.Spec : Prop :=
  ∀ n, (P4128838019559381629.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P14709566955558887968

`∩[A350704(n+1), A092094(n+4)]`
-/

namespace A159961.P14709566955558887968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092094 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A159961.P14709566955558887968

namespace A159961

/-- `∩[A350704(n+1), A092094(n+4)]` -/
def P14709566955558887968.Spec : Prop :=
  ∀ n, (P14709566955558887968.a n : ℤ) = A159961 (n + 1)

end A159961

/-! ## A159961.P13513113711019804395

`record[A171435(A003215(n+5))]`
-/

namespace A159961.P13513113711019804395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A003215 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A159961.P13513113711019804395

namespace A159961

/-- `record[A171435(A003215(n+5))]` -/
def P13513113711019804395.Spec : Prop :=
  ∀ n, P13513113711019804395.a n = A159961 (n + 1)

end A159961

/-! ## A159961.P1960368448371618059

`filter[A003215(n+1), A373977(#)]`
-/

namespace A159961.P1960368448371618059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A159961.P1960368448371618059

namespace A159961

/-- `filter[A003215(n+1), A373977(#)]` -/
def P1960368448371618059.Spec : Prop :=
  ∀ n, P1960368448371618059.a n = A159961 (n + 1)

end A159961

/-! ## A159961.P5374220767462115844

`filter[A354343(n+1), A373977(#)]`
-/

namespace A159961.P5374220767462115844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A159961.P5374220767462115844

namespace A159961

/-- `filter[A354343(n+1), A373977(#)]` -/
def P5374220767462115844.Spec : Prop :=
  ∀ n, P5374220767462115844.a n = A159961 (n + 1)

end A159961

/-! ## A159961.P6106160137009058694

`filter[A077043(n+2), A373977(#)]`
-/

namespace A159961.P6106160137009058694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A159961.P6106160137009058694

namespace A159961

/-- `filter[A077043(n+2), A373977(#)]` -/
def P6106160137009058694.Spec : Prop :=
  ∀ n, P6106160137009058694.a n = A159961 (n + 1)

end A159961

/-! ## A159961.P16486504310794602430

`filter[A298125(n+2), A373977(#)]`
-/

namespace A159961.P16486504310794602430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A159961.P16486504310794602430

namespace A159961

/-- `filter[A298125(n+2), A373977(#)]` -/
def P16486504310794602430.Spec : Prop :=
  ∀ n, P16486504310794602430.a n = A159961 (n + 1)

end A159961

/-!
# A159964: a(n) = 2^n*(1-n).

The programs for A159964, the canonical program `A159964.P12711502051530852782` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159964 has offset 0).

The definition of A159964 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(1-n)` (program `A159964.P12711502051530852782`, by `A159964.P12711502051530852782.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159964.P12711502051530852782

`2^n*(1-n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159964

/-- `2^n*(1-n)` -/
def P12711502051530852782.Spec : Prop :=
  ∀ n, P12711502051530852782.a n = A159964 n

theorem P12711502051530852782.correct : P12711502051530852782.Spec := by
  intro n
  simp only [A159964]

end A159964

/-! ## A159964.P16822186196041513305

`ogf((1-4x)/(1-4x+4x^2))`
-/

namespace A159964.P16822186196041513305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -4, 4] n

end

end A159964.P16822186196041513305

namespace A159964

/-- `ogf((1-4x)/(1-4x+4x^2))` -/
def P16822186196041513305.Spec : Prop :=
  ∀ n, P16822186196041513305.a n = A159964 n

end A159964

/-! ## A159964.P13236390388302629852

`-(2^n*xor(-1, -n))`
-/

namespace A159964.P13236390388302629852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 ^ n : ℤ) * Int.xor (-1) (-(n : ℤ)))

end

end A159964.P13236390388302629852

namespace A159964

/-- `-(2^n*xor(-1, -n))` -/
def P13236390388302629852.Spec : Prop :=
  ∀ n, P13236390388302629852.a n = A159964 n

end A159964

/-! ## A159964.P2162771479354933250

`2*a(n-1)-root(2, 1/n)` with `a(0)=1`
-/

namespace A159964.P2162771479354933250
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (2 : ℝ) ^ (1 / (1 / (n : ℚ) : ℝ))

end

end A159964.P2162771479354933250

namespace A159964

/-- `2*a(n-1)-root(2, 1/n)` -/
def P2162771479354933250.Spec : Prop :=
  ∀ n, P2162771479354933250.a n = (A159964 n : ℝ)

end A159964

/-! ## A159964.P12927820669782599088

`-(4*(a(n-2)-a(n-1)))` with `a(0)=1, a(1)=0`
-/

namespace A159964.P12927820669782599088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  -(4 * (a (n - 2) - a (n - 1)))

end

end A159964.P12927820669782599088

namespace A159964

/-- `-(4*(a(n-2)-a(n-1)))` -/
def P12927820669782599088.Spec : Prop :=
  ∀ n, P12927820669782599088.a n = A159964 n

theorem P12927820669782599088.correct : P12927820669782599088.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P12927820669782599088.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P12927820669782599088.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P9656670409993473888

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A159964.P9656670409993473888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A159964.P9656670409993473888

namespace A159964

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P9656670409993473888.Spec : Prop :=
  ∀ n, P9656670409993473888.a n = A159964 n

theorem P9656670409993473888.correct : P9656670409993473888.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P9656670409993473888.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P9656670409993473888.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P3018422333072894073

`ceil(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A159964.P3018422333072894073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A159964.P3018422333072894073

namespace A159964

/-- `ceil(4*(a(n-1)-a(n-2)))` -/
def P3018422333072894073.Spec : Prop :=
  ∀ n, P3018422333072894073.a n = A159964 n

theorem P3018422333072894073.correct : P3018422333072894073.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P3018422333072894073.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P3018422333072894073.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P14620005714123415485

`round(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A159964.P14620005714123415485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A159964.P14620005714123415485

namespace A159964

/-- `round(4*(a(n-1)-a(n-2)))` -/
def P14620005714123415485.Spec : Prop :=
  ∀ n, P14620005714123415485.a n = A159964 n

theorem P14620005714123415485.correct : P14620005714123415485.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P14620005714123415485.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P14620005714123415485.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P16140784254437245396

`Δ[4*(a(n-1)-a(n-2))]` with `a(0)=3, a(1)=4`
-/

namespace A159964.P16140784254437245396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159964.P16140784254437245396

namespace A159964

/-- `Δ[4*(a(n-1)-a(n-2))]` -/
def P16140784254437245396.Spec : Prop :=
  ∀ n, P16140784254437245396.a n = A159964 n

end A159964

/-! ## A159964.P2965363127458643890

`a(n-1)+a(n-1)-2^n` with `a(0)=1`
-/

namespace A159964.P2965363127458643890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - (2 ^ n : ℤ))

end

end A159964.P2965363127458643890

namespace A159964

/-- `a(n-1)+a(n-1)-2^n` -/
def P2965363127458643890.Spec : Prop :=
  ∀ n, P2965363127458643890.a n = A159964 n

theorem P2965363127458643890.correct : P2965363127458643890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P2965363127458643890.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P2965363127458643890.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P17083095435604708348

`a(n-1)-(2^n-a(n-1))` with `a(0)=1`
-/

namespace A159964.P17083095435604708348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((2 ^ n : ℤ) - a (n - 1))

end

end A159964.P17083095435604708348

namespace A159964

/-- `a(n-1)-(2^n-a(n-1))` -/
def P17083095435604708348.Spec : Prop :=
  ∀ n, P17083095435604708348.a n = A159964 n

theorem P17083095435604708348.correct : P17083095435604708348.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P17083095435604708348.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P17083095435604708348.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P17084596984897832198

`∑[4*(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=-1, a(2)=-4`
-/

namespace A159964.P17084596984897832198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, -4] fun n f1 =>
  4 * (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159964.P17084596984897832198

namespace A159964

/-- `∑[4*(a(n-1)-a(n-2))]` -/
def P17084596984897832198.Spec : Prop :=
  ∀ n, P17084596984897832198.a n = A159964 n

end A159964

/-! ## A159964.P9773562395951360019

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=1, a(1)=0`
-/

namespace A159964.P9773562395951360019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A159964.P9773562395951360019

namespace A159964

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P9773562395951360019.Spec : Prop :=
  ∀ n, P9773562395951360019.a n = (A159964 n : ℚ)

theorem P9773562395951360019.correct : P9773562395951360019.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P9773562395951360019.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P9773562395951360019.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P5701304165081382088

`4*(a(n-1)-(a(n-2)+1))+4` with `a(0)=1, a(1)=0`
-/

namespace A159964.P5701304165081382088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (a (n - 1) - (a (n - 2) + 1)) + 4

end

end A159964.P5701304165081382088

namespace A159964

/-- `4*(a(n-1)-(a(n-2)+1))+4` -/
def P5701304165081382088.Spec : Prop :=
  ∀ n, P5701304165081382088.a n = A159964 n

theorem P5701304165081382088.correct : P5701304165081382088.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P5701304165081382088.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P5701304165081382088.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P13967320166100437768

`4*(1-(a(n-2)-a(n-1)))-4` with `a(0)=1, a(1)=0`
-/

namespace A159964.P13967320166100437768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  4 * (1 - (a (n - 2) - a (n - 1))) - 4

end

end A159964.P13967320166100437768

namespace A159964

/-- `4*(1-(a(n-2)-a(n-1)))-4` -/
def P13967320166100437768.Spec : Prop :=
  ∀ n, P13967320166100437768.a n = A159964 n

theorem P13967320166100437768.correct : P13967320166100437768.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A159964, Nat.add_sub_cancel, A159964.P13967320166100437768.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A159964, Nat.add_sub_cancel, A159964.P13967320166100437768.a, A159964.P12711502051530852782.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A159964

/-! ## A159964.P15645003505766392170

`1-A000337(n)`
-/

namespace A159964.P15645003505766392170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000337 n

end

end A159964.P15645003505766392170

namespace A159964

/-- `1-A000337(n)` -/
def P15645003505766392170.Spec : Prop :=
  ∀ n, P15645003505766392170.a n = A159964 n

theorem P15645003505766392170.correct : P15645003505766392170.Spec := by
  intro n
  simp only [A159964, Nat.add_sub_cancel, A159964.P15645003505766392170.a, A159964.P12711502051530852782.a, A000337, A000337.P10298485350018343423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159964

/-! ## A159964.P7302679844366622471

`2-A048495(n)`
-/

namespace A159964.P7302679844366622471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A048495 n

end

end A159964.P7302679844366622471

namespace A159964

/-- `2-A048495(n)` -/
def P7302679844366622471.Spec : Prop :=
  ∀ n, P7302679844366622471.a n = A159964 n

theorem P7302679844366622471.correct : P7302679844366622471.Spec := by
  intro n
  simp only [A159964, Nat.add_sub_cancel, A159964.P7302679844366622471.a, A159964.P12711502051530852782.a, A048495, A048495.P13601989703998276379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159964

/-! ## A159964.P13098706985605583351

`1-∑[A001787(n)]`
-/

namespace A159964.P13098706985605583351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159964.P13098706985605583351

namespace A159964

/-- `1-∑[A001787(n)]` -/
def P13098706985605583351.Spec : Prop :=
  ∀ n, P13098706985605583351.a n = A159964 n

end A159964

/-! ## A159964.P11633950825524755658

`Δ[A172160(n+2)]`
-/

namespace A159964.P11633950825524755658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172160 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A159964.P11633950825524755658

namespace A159964

/-- `Δ[A172160(n+2)]` -/
def P11633950825524755658.Spec : Prop :=
  ∀ n, P11633950825524755658.a n = A159964 n

end A159964

/-!
# A159965: Riordan array (1/sqrt(1-4x), (1-2x-(1-3x)c(x))/(x*sqrt(1-4x))), c(x) the g.f. of A000108.

The programs for A159965, the canonical program `A159965.P4124214119171723381` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159965 has offset 0).

The definition of A159965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159965.P4124214119171723381

`C(2*row(n)+col(n), row(n)+2*col(n))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159965

/-- `C(2*row(n)+col(n), row(n)+2*col(n))` -/
def P4124214119171723381.Spec : Prop :=
  ∀ n, (P4124214119171723381.a n : ℤ) = A159965 n

theorem P4124214119171723381.correct : P4124214119171723381.Spec := by
  intro n
  simp only [A159965]

end A159965

/-! ## A159965.P13351060524147672347

`A193635(A061579(n))`
-/

namespace A159965.P13351060524147672347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A061579 n).toNat

end

end A159965.P13351060524147672347

namespace A159965

/-- `A193635(A061579(n))` -/
def P13351060524147672347.Spec : Prop :=
  ∀ n, P13351060524147672347.a n = A159965 n

end A159965

/-! ## A159965.P16435776623107062106

`A193635(A114327(n)+n)`
-/

namespace A159965.P16435776623107062106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A114327 n + (n : ℤ)).toNat

end

end A159965.P16435776623107062106

namespace A159965

/-- `A193635(A114327(n)+n)` -/
def P16435776623107062106.Spec : Prop :=
  ∀ n, P16435776623107062106.a n = A159965 n

end A159965

/-! ## A159965.P15169946773806357413

`A193635(∑[A198954(n)-1])`
-/

namespace A159965.P15169946773806357413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A159965.P15169946773806357413

namespace A159965

/-- `A193635(∑[A198954(n)-1])` -/
def P15169946773806357413.Spec : Prop :=
  ∀ n, P15169946773806357413.a n = A159965 n

end A159965

/-! ## A159965.P3254008698798244904

`A193635(A038722(n+1)-1)`
-/

namespace A159965.P3254008698798244904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A038722 (n + 1) - 1).toNat

end

end A159965.P3254008698798244904

namespace A159965

/-- `A193635(A038722(n+1)-1)` -/
def P3254008698798244904.Spec : Prop :=
  ∀ n, P3254008698798244904.a n = A159965 n

end A159965

/-! ## A159965.P12438185198871162647

`A193635(A093995(n+1)-(n+1))`
-/

namespace A159965.P12438185198871162647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A159965.P12438185198871162647

namespace A159965

/-- `A193635(A093995(n+1)-(n+1))` -/
def P12438185198871162647.Spec : Prop :=
  ∀ n, P12438185198871162647.a n = A159965 n

end A159965

/-! ## A159965.P3661005411276368233

`A193635(A002024(n+1)²-n-1)`
-/

namespace A159965.P3661005411276368233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A002024 (n + 1) ^ 2 - (n : ℤ) - 1).toNat

end

end A159965.P3661005411276368233

namespace A159965

/-- `A193635(A002024(n+1)²-n-1)` -/
def P3661005411276368233.Spec : Prop :=
  ∀ n, P3661005411276368233.a n = A159965 n

end A159965

/-! ## A159965.P551875571127999363

`A193635(A002378(n)%A014132(n+1))`
-/

namespace A159965.P551875571127999363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A159965.P551875571127999363

namespace A159965

/-- `A193635(A002378(n)%A014132(n+1))` -/
def P551875571127999363.Spec : Prop :=
  ∀ n, P551875571127999363.a n = A159965 n

end A159965

/-! ## A159965.P6183335887198397629

`A193635(A038722(n+2))`
-/

namespace A159965.P6183335887198397629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193635 (A038722 (n + 2)).toNat

end

end A159965.P6183335887198397629

namespace A159965

/-- `A193635(A038722(n+2))` -/
def P6183335887198397629.Spec : Prop :=
  ∀ n, P6183335887198397629.a n = A159965 n

end A159965

/-!
# A159966: Lodumo_4 of A102370 (sloping binary numbers).

The programs for A159966, the canonical program `A159966.P17580292504944609632` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159966 has offset 0).

The definition of A159966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159966.P17580292504944609632

`n-(1-(-1)^n)*(-1)^((2*n+1-(-1)^n)/4)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159966

/-- `n-(1-(-1)^n)*(-1)^((2*n+1-(-1)^n)/4)` -/
def P17580292504944609632.Spec : Prop :=
  ∀ n, P17580292504944609632.a n = (A159966 n : ℝ)

end A159966

/-! ## A159966.P5484177104461005384

`xor(n, Δ[or(1, n)])`
-/

namespace A159966.P5484177104461005384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A159966.P5484177104461005384

namespace A159966

/-- `xor(n, Δ[or(1, n)])` -/
def P5484177104461005384.Spec : Prop :=
  ∀ n, P5484177104461005384.a n = A159966 n

end A159966

/-! ## A159966.P10426268288844285258

`xor(n, Δ[and(n, -2)])`
-/

namespace A159966.P10426268288844285258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (f1 (n + 1) - f1 n)

end

end A159966.P10426268288844285258

namespace A159966

/-- `xor(n, Δ[and(n, -2)])` -/
def P10426268288844285258.Spec : Prop :=
  ∀ n, P10426268288844285258.a n = A159966 n

end A159966

/-! ## A159966.P3038153599201555636

`xor(n, 2*n%2)`
-/

namespace A159966.P3038153599201555636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n % 2))

end

end A159966.P3038153599201555636

namespace A159966

/-- `xor(n, 2*n%2)` -/
def P3038153599201555636.Spec : Prop :=
  ∀ n, (P3038153599201555636.a n : ℤ) = A159966 n

end A159966

/-! ## A159966.P5704612288559615448

`xor(n, 2*and(1, n))`
-/

namespace A159966.P5704612288559615448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * Nat.land 1 n)

end

end A159966.P5704612288559615448

namespace A159966

/-- `xor(n, 2*and(1, n))` -/
def P5704612288559615448.Spec : Prop :=
  ∀ n, (P5704612288559615448.a n : ℤ) = A159966 n

end A159966

/-! ## A159966.P1814223235974485274

`xor(n, lcm(2, and(1, n)))`
-/

namespace A159966.P1814223235974485274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.lcm 2 (Nat.land 1 n))

end

end A159966.P1814223235974485274

namespace A159966

/-- `xor(n, lcm(2, and(1, n)))` -/
def P1814223235974485274.Spec : Prop :=
  ∀ n, (P1814223235974485274.a n : ℤ) = A159966 n

end A159966

/-! ## A159966.P2616587802306357392

`xor(n, and(2, -n²))`
-/

namespace A159966.P2616587802306357392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (Int.land 2 (-(n ^ 2 : ℤ)))

end

end A159966.P2616587802306357392

namespace A159966

/-- `xor(n, and(2, -n²))` -/
def P2616587802306357392.Spec : Prop :=
  ∀ n, P2616587802306357392.a n = A159966 n

end A159966

/-! ## A159966.P10004993660853742929

`xor(n, 1-(-1)^n)`
-/

namespace A159966.P10004993660853742929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (1 - (-1) ^ n)

end

end A159966.P10004993660853742929

namespace A159966

/-- `xor(n, 1-(-1)^n)` -/
def P10004993660853742929.Spec : Prop :=
  ∀ n, P10004993660853742929.a n = A159966 n

end A159966

/-! ## A159966.P8941068248484110315

`Δ[and(2, n)+C(n, 2)]`
-/

namespace A159966.P8941068248484110315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A159966.P8941068248484110315

namespace A159966

/-- `Δ[and(2, n)+C(n, 2)]` -/
def P8941068248484110315.Spec : Prop :=
  ∀ n, P8941068248484110315.a n = A159966 n

end A159966

/-! ## A159966.P9170374622168938484

`abs(xor(-3, a(n-1)))` with `a(0)=0`
-/

namespace A159966.P9170374622168938484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |Int.xor (-3) (a (n - 1))|

end

end A159966.P9170374622168938484

namespace A159966

/-- `abs(xor(-3, a(n-1)))` -/
def P9170374622168938484.Spec : Prop :=
  ∀ n, P9170374622168938484.a n = A159966 n

end A159966

/-! ## A159966.P16688777957874936377

`-xor(-3, a(n-1))` with `a(0)=0`
-/

namespace A159966.P16688777957874936377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (-3) (a (n - 1))

end

end A159966.P16688777957874936377

namespace A159966

/-- `-xor(-3, a(n-1))` -/
def P16688777957874936377.Spec : Prop :=
  ∀ n, P16688777957874936377.a n = A159966 n

end A159966

/-! ## A159966.P11939145462887707315

`abs(xor(n, xor(1, n+1)-n))`
-/

namespace A159966.P11939145462887707315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((Nat.xor 1 (n + 1) : ℤ) - (n : ℤ))|

end

end A159966.P11939145462887707315

namespace A159966

/-- `abs(xor(n, xor(1, n+1)-n))` -/
def P11939145462887707315.Spec : Prop :=
  ∀ n, P11939145462887707315.a n = A159966 n

end A159966

/-! ## A159966.P16967525822506754968

`∑[2-a(n-2)]` with `a(0)=0, a(1)=3, a(2)=-1`
-/

namespace A159966.P16967525822506754968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -1] fun n f1 =>
  2 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159966.P16967525822506754968

namespace A159966

/-- `∑[2-a(n-2)]` -/
def P16967525822506754968.Spec : Prop :=
  ∀ n, P16967525822506754968.a n = A159966 n

end A159966

/-! ## A159966.P1358267422654600748

`ogf((3x-4x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A159966.P1358267422654600748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -4, 3] [1, -2, 2, -2, 1] n

end

end A159966.P1358267422654600748

namespace A159966

/-- `ogf((3x-4x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P1358267422654600748.Spec : Prop :=
  ∀ n, P1358267422654600748.a n = A159966 n

end A159966

/-! ## A159966.P2547395468621915166

`-xor(n-1, 2*gcd(2, n)-5)`
-/

namespace A159966.P2547395468621915166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) - 1) ((2 * Nat.gcd 2 n : ℤ) - 5)

end

end A159966.P2547395468621915166

namespace A159966

/-- `-xor(n-1, 2*gcd(2, n)-5)` -/
def P2547395468621915166.Spec : Prop :=
  ∀ n, P2547395468621915166.a n = A159966 n

end A159966

/-! ## A159966.P790180672997240716

`A263313(xor(1, n))`
-/

namespace A159966.P790180672997240716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (Nat.xor 1 n)

end

end A159966.P790180672997240716

namespace A159966

/-- `A263313(xor(1, n))` -/
def P790180672997240716.Spec : Prop :=
  ∀ n, P790180672997240716.a n = A159966 n

end A159966

/-! ## A159966.P13309910140155751686

`A263426(xor(2, n))`
-/

namespace A159966.P13309910140155751686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (Nat.xor 2 n)

end

end A159966.P13309910140155751686

namespace A159966

/-- `A263426(xor(2, n))` -/
def P13309910140155751686.Spec : Prop :=
  ∀ n, P13309910140155751686.a n = A159966 n

end A159966

/-! ## A159966.P11630166118410987112

`A263313(A004442(n))`
-/

namespace A159966.P11630166118410987112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 (A004442 n).toNat

end

end A159966.P11630166118410987112

namespace A159966

/-- `A263313(A004442(n))` -/
def P11630166118410987112.Spec : Prop :=
  ∀ n, P11630166118410987112.a n = A159966 n

end A159966

/-! ## A159966.P10356613620247802803

`A004444(A263313(n))`
-/

namespace A159966.P10356613620247802803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 (A263313 n).toNat

end

end A159966.P10356613620247802803

namespace A159966

/-- `A004444(A263313(n))` -/
def P10356613620247802803.Spec : Prop :=
  ∀ n, P10356613620247802803.a n = A159966 n

end A159966

/-! ## A159966.P7784328362277551931

`A263426(A004443(n))`
-/

namespace A159966.P7784328362277551931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263426 (A004443 n).toNat

end

end A159966.P7784328362277551931

namespace A159966

/-- `A263426(A004443(n))` -/
def P7784328362277551931.Spec : Prop :=
  ∀ n, P7784328362277551931.a n = A159966 n

end A159966

/-!
# A159972: Row sums of number triangle A159971.

The programs for A159972, the canonical program `A159972.P10557294459438984683` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159972 has offset 0).

The definition of A159972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159972.P11434386680909921461

`A090192(2*n-1)-a(n-1)` with `a(0)=1, a(1)=-1`
-/

namespace A159972.P11434386680909921461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  A090192 (2 * n - 1) - a (n - 1)

end

end A159972.P11434386680909921461

namespace A159972

/-- `A090192(2*n-1)-a(n-1)` -/
def P11434386680909921461.Spec : Prop :=
  ∀ n, P11434386680909921461.a n = A159972 n

end A159972

/-! ## A159972.P10557294459438984683

`A099324(n)-A062157(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A159972

/-- `A099324(n)-A062157(n)` -/
def P10557294459438984683.Spec : Prop :=
  ∀ n, P10557294459438984683.a n = A159972 n

theorem P10557294459438984683.correct : P10557294459438984683.Spec := by
  intro n
  simp only [A159972]

end A159972

/-! ## A159972.P14555260865641700945

`A099324(A028310(n))+(-1)^n`
-/

namespace A159972.P14555260865641700945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099324 (A028310 n).toNat + (-1) ^ n

end

end A159972.P14555260865641700945

namespace A159972

/-- `A099324(A028310(n))+(-1)^n` -/
def P14555260865641700945.Spec : Prop :=
  ∀ n, P14555260865641700945.a n = A159972 n

end A159972

/-! ## A159972.P17641248677293951834

`A062157(n-1)*A115140(n)-a(n-1)` with `a(0)=1`
-/

namespace A159972.P17641248677293951834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A062157 (n - 1) * A115140 n - a (n - 1)

end

end A159972.P17641248677293951834

namespace A159972

/-- `A062157(n-1)*A115140(n)-a(n-1)` -/
def P17641248677293951834.Spec : Prop :=
  ∀ n, P17641248677293951834.a n = A159972 n

end A159972

/-!
# A159973: Non-refactorable numbers: number of divisors of n does not divide n.

The programs for A159973, the canonical program `A159973.P17166764543627180430` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159973 has offset 1).

The definition of A159973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A159973.P17166764543627180430

`eq[0, A336040(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A159973

/-- `eq[0, A336040(n+1)]+1` -/
def P17166764543627180430.Spec : Prop :=
  ∀ n, (P17166764543627180430.a n : ℤ) = A159973 (n + 1)

theorem P17166764543627180430.correct : P17166764543627180430.Spec := by
  intro n
  simp only [A159973, Nat.add_sub_cancel]

end A159973

/-! ## A159973.P18332868631991215695

`lt[1, A090387(n+1)]+1`
-/

namespace A159973.P18332868631991215695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A159973.P18332868631991215695

namespace A159973

/-- `lt[1, A090387(n+1)]+1` -/
def P18332868631991215695.Spec : Prop :=
  ∀ n, (P18332868631991215695.a n : ℤ) = A159973 (n + 1)

end A159973

/-! ## A159973.P13788356051471952671

`lt[1, A298734(n+1)]+1`
-/

namespace A159973.P13788356051471952671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A159973.P13788356051471952671

namespace A159973

/-- `lt[1, A298734(n+1)]+1` -/
def P13788356051471952671.Spec : Prop :=
  ∀ n, (P13788356051471952671.a n : ℤ) = A159973 (n + 1)

end A159973

/-! ## A159973.P9883767810703076261

`lt[a(n%A000005(n))-1, 0]` with `a(0)=1`
-/

namespace A159973.P9883767810703076261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Int.tmod (n : ℤ) (A000005 n)).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A159973.P9883767810703076261

namespace A159973

/-- `lt[a(n%A000005(n))-1, 0]` -/
def P9883767810703076261.Spec : Prop :=
  ∀ n, (P9883767810703076261.a n : ℤ) = A159973 (n + 1)

end A159973

/-! ## A159973.P1951107419017654079

`lt[n, lcm(n, A000005(abs(1-n)+1))]`
-/

namespace A159973.P1951107419017654079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A000005 (|1 - (n : ℤ)| + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A159973.P1951107419017654079

namespace A159973

/-- `lt[n, lcm(n, A000005(abs(1-n)+1))]` -/
def P1951107419017654079.Spec : Prop :=
  ∀ n, (P1951107419017654079.a n : ℤ) = A159973 (n + 1)

end A159973

/-! ## A159973.P11855890817746081304

`comp[C(A122377(n+1), n)]`
-/

namespace A159973.P11855890817746081304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A122377 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A159973.P11855890817746081304

namespace A159973

/-- `comp[C(A122377(n+1), n)]` -/
def P11855890817746081304.Spec : Prop :=
  ∀ n, (P11855890817746081304.a n : ℤ) = A159973 (n + 1)

end A159973

/-! ## A159973.P10063159406041453337

`lt[0, A054008(n+1)]+1`
-/

namespace A159973.P10063159406041453337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A159973.P10063159406041453337

namespace A159973

/-- `lt[0, A054008(n+1)]+1` -/
def P10063159406041453337.Spec : Prop :=
  ∀ n, (P10063159406041453337.a n : ℤ) = A159973 (n + 1)

end A159973

/-! ## A159973.P14345515901876765190

`lt[1, A124332(n+1)]+1`
-/

namespace A159973.P14345515901876765190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A159973.P14345515901876765190

namespace A159973

/-- `lt[1, A124332(n+1)]+1` -/
def P14345515901876765190.Spec : Prop :=
  ∀ n, (P14345515901876765190.a n : ℤ) = A159973 (n + 1)

end A159973

/-!
# A159974: Triangle read by rows, M * Q; M = an infinite lower triangular Toeplitz matrix with (1, 1, 2, 3, 4, 5, ...) in every column. Q = a matrix with A034943: (1, 1, 2, 5, 12, 28, ...) as the main diagonal and the rest zeros.

The programs for A159974, there is no canonical definition to state claims against.
-/

/-! ## A159974.P6647909835775049000

`A137912(A348401(A143965(n)))`
-/

namespace A159974.P6647909835775049000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137912 (A348401 (A143965 n).toNat).toNat

end

end A159974.P6647909835775049000

/-! ## A159974.P5615248490680659801

`A178798(A334059(n))+A143866(n+1)`
-/

namespace A159974.P5615248490680659801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A334059 n).toNat + A143866 (n + 1)

end

end A159974.P5615248490680659801

/-! ## A159974.P16859345408139531548

`A178798(A334059(n))+A155002(n+1)`
-/

namespace A159974.P16859345408139531548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A334059 n).toNat + A155002 (n + 1)

end

end A159974.P16859345408139531548

/-! ## A159974.P239784469129635901

`A143866(n+1)-A101637(A143891(n))`
-/

namespace A159974.P239784469129635901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143866 (n + 1) - A101637 (A143891 n).toNat

end

end A159974.P239784469129635901

/-! ## A159974.P10329709704961302658

`A155002(n+1)-A101637(A143891(n))`
-/

namespace A159974.P10329709704961302658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155002 (n + 1) - A101637 (A143891 n).toNat

end

end A159974.P10329709704961302658

/-!
# A159975: Numerators (with multiplicity) of proper solutions up to 3-digit denominators of fractions with anomalous cancellation.

The programs for A159975, there is no canonical definition to state claims against.
-/

/-! ## A159975.P4771186332576728912

`A048388(n+1)+p?[A077870(n)]`
-/

namespace A159975.P4771186332576728912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048388 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A159975.P4771186332576728912

/-!
# A159977: a(n) = (smallest prime >= Fibonacci(n)) - Fibonacci(n).

The programs for A159977, there is no canonical definition to state claims against.
-/

/-! ## A159977.P3912183082349980791

`A138185(n+1)-A000045(n+1)`
-/

namespace A159977.P3912183082349980791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138185 (n + 1) - A000045 (n + 1)

end

end A159977.P3912183082349980791

/-! ## A159977.P10526660819408141174

`A138185(n+1)-(A000071(n+1)+1)`
-/

namespace A159977.P10526660819408141174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138185 (n + 1) - (A000071 (n + 1) + 1)

end

end A159977.P10526660819408141174

/-! ## A159977.P13679295239452754169

`A138185(n+1)-A103609(A004273(n+2))`
-/

namespace A159977.P13679295239452754169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138185 (n + 1) - A103609 (A004273 (n + 2)).toNat

end

end A159977.P13679295239452754169

/-! ## A159977.P79430777188870436

`A138185(n+1)-Δ[A000071(n+2)]`
-/

namespace A159977.P79430777188870436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138185 (n + 1) - (f1 (n + 1) - f1 n)

end

end A159977.P79430777188870436

/-! ## A159977.P1637102846732292626

`A138185(n+1)-Δ[A339572(2*n)]`
-/

namespace A159977.P1637102846732292626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138185 (n + 1) - (f1 (n + 1) - f1 n)

end

end A159977.P1637102846732292626

/-! ## A159977.P13582733102376594890

`A138185(n+1)-Δ[A115339(2*n+1)]`
-/

namespace A159977.P13582733102376594890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138185 (n + 1) - (f1 (n + 1) - f1 n)

end

end A159977.P13582733102376594890

/-!
# A159978: a(n) = (smallest prime > Fibonacci(n)) - Fibonacci(n).

The programs for A159978, the canonical program `A159978.P8849055192198304781` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159978 has offset 1).

The definition of A159978 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A159978.P8849055192198304781

`A013632(A000045(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A159978

/-- `A013632(A000045(n+1))` -/
def P8849055192198304781.Spec : Prop :=
  ∀ n, P8849055192198304781.a n = A159978 (n + 1)

theorem P8849055192198304781.correct : P8849055192198304781.Spec := by
  intro n
  simp only [A159978, Nat.add_sub_cancel]

end A159978

/-! ## A159978.P13643361288866525172

`A014208(n+1)-∑[A212804(n)]`
-/

namespace A159978.P13643361288866525172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A159978.P13643361288866525172

namespace A159978

/-- `A014208(n+1)-∑[A212804(n)]` -/
def P13643361288866525172.Spec : Prop :=
  ∀ n, P13643361288866525172.a n = A159978 (n + 1)

end A159978

/-! ## A159978.P11688870921941474367

`A014208(n+1)-A000045(n+1)`
-/

namespace A159978.P11688870921941474367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 1) - A000045 (n + 1)

end

end A159978.P11688870921941474367

namespace A159978

/-- `A014208(n+1)-A000045(n+1)` -/
def P11688870921941474367.Spec : Prop :=
  ∀ n, P11688870921941474367.a n = A159978 (n + 1)

end A159978

/-! ## A159978.P4393235561257239431

`A014208(n+1)-(A000071(n+1)+1)`
-/

namespace A159978.P4393235561257239431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 1) - (A000071 (n + 1) + 1)

end

end A159978.P4393235561257239431

namespace A159978

/-- `A014208(n+1)-(A000071(n+1)+1)` -/
def P4393235561257239431.Spec : Prop :=
  ∀ n, P4393235561257239431.a n = A159978 (n + 1)

end A159978

/-! ## A159978.P17753451403787785144

`A014208(n+1)-A103609(2*(n+1))`
-/

namespace A159978.P17753451403787785144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 1) - A103609 (2 * (n + 1))

end

end A159978.P17753451403787785144

namespace A159978

/-- `A014208(n+1)-A103609(2*(n+1))` -/
def P17753451403787785144.Spec : Prop :=
  ∀ n, P17753451403787785144.a n = A159978 (n + 1)

end A159978

/-! ## A159978.P11460826148374340596

`A014208(n+1)-A036355(A000217(n))`
-/

namespace A159978.P11460826148374340596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014208 (n + 1) - A036355 (A000217 n).toNat

end

end A159978.P11460826148374340596

namespace A159978

/-- `A014208(n+1)-A036355(A000217(n))` -/
def P11460826148374340596.Spec : Prop :=
  ∀ n, P11460826148374340596.a n = A159978 (n + 1)

end A159978

/-!
# A159981: Catalan numbers read modulo 4.

The programs for A159981, the canonical program `A159981.P12264337381134770081` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159981 has offset 0).

The definition of A159981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159981.P9576782034319443233

`A000108(n)%4`
-/

namespace A159981.P9576782034319443233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 4

end

end A159981.P9576782034319443233

namespace A159981

/-- `A000108(n)%4` -/
def P9576782034319443233.Spec : Prop :=
  ∀ n, P9576782034319443233.a n = A159981 n

end A159981

/-! ## A159981.P12264337381134770081

`(C(2*n, n)/(n+1))%4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159981

/-- `(C(2*n, n)/(n+1))%4` -/
def P12264337381134770081.Spec : Prop :=
  ∀ n, P12264337381134770081.a n = A159981 n

theorem P12264337381134770081.correct : P12264337381134770081.Spec := by
  intro n
  simp only [A159981]

end A159981

/-! ## A159981.P5719938024169935777

`∑[1-val(n+1, 2)]!%3`
-/

namespace A159981.P5719938024169935777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat % 3

end

end A159981.P5719938024169935777

namespace A159981

/-- `∑[1-val(n+1, 2)]!%3` -/
def P5719938024169935777.Spec : Prop :=
  ∀ n, (P5719938024169935777.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P6551469175702611116

`C(2, (n-∑[val(n+1, 2)])²)`
-/

namespace A159981.P6551469175702611116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2).toNat

end

end A159981.P6551469175702611116

namespace A159981

/-- `C(2, (n-∑[val(n+1, 2)])²)` -/
def P6551469175702611116.Spec : Prop :=
  ∀ n, (P6551469175702611116.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P8272238530773479598

`(2^(n-∑[val(n+1, 2)]))%4`
-/

namespace A159981.P8272238530773479598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))) 4

end

end A159981.P8272238530773479598

namespace A159981

/-- `(2^(n-∑[val(n+1, 2)]))%4` -/
def P8272238530773479598.Spec : Prop :=
  ∀ n, P8272238530773479598.a n = A159981 n

end A159981

/-! ## A159981.P15866790121952903004

`and(3, 2^(n-∑[val(n+1, 2)]))`
-/

namespace A159981.P15866790121952903004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)))

end

end A159981.P15866790121952903004

namespace A159981

/-- `and(3, 2^(n-∑[val(n+1, 2)]))` -/
def P15866790121952903004.Spec : Prop :=
  ∀ n, P15866790121952903004.a n = A159981 n

end A159981

/-! ## A159981.P10670871664349791872

`5%(gcd(2, n)*a(floor((n+1)/2)-1)+1)` with `a(0)=1`
-/

namespace A159981.P10670871664349791872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  5 % (Nat.gcd 2 n * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + 1)

end

end A159981.P10670871664349791872

namespace A159981

/-- `5%(gcd(2, n)*a(floor((n+1)/2)-1)+1)` -/
def P10670871664349791872.Spec : Prop :=
  ∀ n, (P10670871664349791872.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P13129126063788563909

`A048896(n)%4`
-/

namespace A159981.P13129126063788563909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048896 n) 4

end

end A159981.P13129126063788563909

namespace A159981

/-- `A048896(n)%4` -/
def P13129126063788563909.Spec : Prop :=
  ∀ n, P13129126063788563909.a n = A159981 n

end A159981

/-! ## A159981.P8822504008662376529

`A159987(n)%4`
-/

namespace A159981.P8822504008662376529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159987 n) 4

end

end A159981.P8822504008662376529

namespace A159981

/-- `A159987(n)%4` -/
def P8822504008662376529.Spec : Prop :=
  ∀ n, P8822504008662376529.a n = A159981 n

end A159981

/-! ## A159981.P15542539644893035713

`A159989(n)%4`
-/

namespace A159981.P15542539644893035713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159989 n) 4

end

end A159981.P15542539644893035713

namespace A159981

/-- `A159989(n)%4` -/
def P15542539644893035713.Spec : Prop :=
  ∀ n, P15542539644893035713.a n = A159981 n

end A159981

/-! ## A159981.P8435858595648864754

`A289682(n)%4`
-/

namespace A159981.P8435858595648864754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289682 n) 4

end

end A159981.P8435858595648864754

namespace A159981

/-- `A289682(n)%4` -/
def P8435858595648864754.Spec : Prop :=
  ∀ n, P8435858595648864754.a n = A159981 n

end A159981

/-! ## A159981.P17386550068573727820

`C(2, A048881(n)²)`
-/

namespace A159981.P17386550068573727820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A048881 n ^ 2).toNat

end

end A159981.P17386550068573727820

namespace A159981

/-- `C(2, A048881(n)²)` -/
def P17386550068573727820.Spec : Prop :=
  ∀ n, (P17386550068573727820.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P6882999453678285622

`C(2, A049501(n)²)`
-/

namespace A159981.P6882999453678285622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A049501 n ^ 2).toNat

end

end A159981.P6882999453678285622

namespace A159981

/-- `C(2, A049501(n)²)` -/
def P6882999453678285622.Spec : Prop :=
  ∀ n, (P6882999453678285622.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P3397204542667105153

`A151784(n+1)%4`
-/

namespace A159981.P3397204542667105153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151784 (n + 1)) 4

end

end A159981.P3397204542667105153

namespace A159981

/-- `A151784(n+1)%4` -/
def P3397204542667105153.Spec : Prop :=
  ∀ n, P3397204542667105153.a n = A159981 n

end A159981

/-! ## A159981.P946611142759995928

`A321319(n+1)%4`
-/

namespace A159981.P946611142759995928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321319 (n + 1)) 4

end

end A159981.P946611142759995928

namespace A159981

/-- `A321319(n+1)%4` -/
def P946611142759995928.Spec : Prop :=
  ∀ n, P946611142759995928.a n = A159981 n

end A159981

/-! ## A159981.P14042020012283854639

`C(2, A071055(n)/2)`
-/

namespace A159981.P14042020012283854639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (SequenceMachineLib.roundAway ((A071055 n : ℚ) / 2)).toNat

end

end A159981.P14042020012283854639

namespace A159981

/-- `C(2, A071055(n)/2)` -/
def P14042020012283854639.Spec : Prop :=
  ∀ n, (P14042020012283854639.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P5653313583487819231

`log2(dr(A079314(n+1)))`
-/

namespace A159981.P5653313583487819231
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (SequenceMachineLib.digitalRoot (A079314 (n + 1)) : ℝ)

end

end A159981.P5653313583487819231

namespace A159981

/-- `log2(dr(A079314(n+1)))` -/
def P5653313583487819231.Spec : Prop :=
  ∀ n, P5653313583487819231.a n = (A159981 n : ℝ)

end A159981

/-! ## A159981.P12415267120104902

`A000120(n+1)!%3`
-/

namespace A159981.P12415267120104902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 (n + 1)).toNat % 3

end

end A159981.P12415267120104902

namespace A159981

/-- `A000120(n+1)!%3` -/
def P12415267120104902.Spec : Prop :=
  ∀ n, (P12415267120104902.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P424982217544109492

`and(7, A273126(n+1)!)`
-/

namespace A159981.P424982217544109492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 7 (Nat.factorial (A273126 (n + 1)).toNat)

end

end A159981.P424982217544109492

namespace A159981

/-- `and(7, A273126(n+1)!)` -/
def P424982217544109492.Spec : Prop :=
  ∀ n, (P424982217544109492.a n : ℤ) = A159981 n

end A159981

/-! ## A159981.P5017148193816286954

`C(2, A000032(n-∑[val(n+1, 2)]))`
-/

namespace A159981.P5017148193816286954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000032 (n - ∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A159981.P5017148193816286954

namespace A159981

/-- `C(2, A000032(n-∑[val(n+1, 2)]))` -/
def P5017148193816286954.Spec : Prop :=
  ∀ n, (P5017148193816286954.a n : ℤ) = A159981 n

end A159981

/-!
# A159984: Catalan numbers read modulo 5 .

The programs for A159984, the canonical program `A159984.P17585041323714044277` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159984 has offset 0).

The definition of A159984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159984.P17585041323714044277

`A000108(n)%5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159984

/-- `A000108(n)%5` -/
def P17585041323714044277.Spec : Prop :=
  ∀ n, P17585041323714044277.a n = A159984 n

theorem P17585041323714044277.correct : P17585041323714044277.Spec := by
  intro n
  simp only [A159984]

end A159984

/-! ## A159984.P17415146282177504455

`A152669(n)%5`
-/

namespace A159984.P17415146282177504455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152669 n) 5

end

end A159984.P17415146282177504455

namespace A159984

/-- `A152669(n)%5` -/
def P17415146282177504455.Spec : Prop :=
  ∀ n, P17415146282177504455.a n = A159984 n

end A159984

/-! ## A159984.P16100551652965738638

`abs(A168491(n)%5)`
-/

namespace A159984.P16100551652965738638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 5|

end

end A159984.P16100551652965738638

namespace A159984

/-- `abs(A168491(n)%5)` -/
def P16100551652965738638.Spec : Prop :=
  ∀ n, P16100551652965738638.a n = A159984 n

end A159984

/-! ## A159984.P4386225510669286722

`A120588(n+1)%5`
-/

namespace A159984.P4386225510669286722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 5

end

end A159984.P4386225510669286722

namespace A159984

/-- `A120588(n+1)%5` -/
def P4386225510669286722.Spec : Prop :=
  ∀ n, P4386225510669286722.a n = A159984 n

end A159984

/-! ## A159984.P10953478438778329895

`(A120304(n)+2)%5`
-/

namespace A159984.P10953478438778329895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 5

end

end A159984.P10953478438778329895

namespace A159984

/-- `(A120304(n)+2)%5` -/
def P10953478438778329895.Spec : Prop :=
  ∀ n, P10953478438778329895.a n = A159984 n

theorem P10953478438778329895.correct : P10953478438778329895.Spec := by
  intro n
  simp only [A159984, Nat.add_sub_cancel, A159984.P10953478438778329895.a, A159984.P17585041323714044277.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159984

/-! ## A159984.P15763058927402116095

`A028303(2*n)%5`
-/

namespace A159984.P15763058927402116095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 5

end

end A159984.P15763058927402116095

namespace A159984

/-- `A028303(2*n)%5` -/
def P15763058927402116095.Spec : Prop :=
  ∀ n, P15763058927402116095.a n = A159984 n

end A159984

/-! ## A159984.P8377610886214069676

`A028304(2*n)%5`
-/

namespace A159984.P8377610886214069676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) 5

end

end A159984.P8377610886214069676

namespace A159984

/-- `A028304(2*n)%5` -/
def P8377610886214069676.Spec : Prop :=
  ∀ n, P8377610886214069676.a n = A159984 n

end A159984

/-! ## A159984.P588200555365667507

`A126120(2*n)%5`
-/

namespace A159984.P588200555365667507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) 5

end

end A159984.P588200555365667507

namespace A159984

/-- `A126120(2*n)%5` -/
def P588200555365667507.Spec : Prop :=
  ∀ n, P588200555365667507.a n = A159984 n

end A159984

/-! ## A159984.P12218400109758465414

`A126324(2*n)%5`
-/

namespace A159984.P12218400109758465414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) 5

end

end A159984.P12218400109758465414

namespace A159984

/-- `A126324(2*n)%5` -/
def P12218400109758465414.Spec : Prop :=
  ∀ n, P12218400109758465414.a n = A159984 n

end A159984

/-! ## A159984.P15491038178752732238

`A208355(2*n)%5`
-/

namespace A159984.P15491038178752732238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * n)) 5

end

end A159984.P15491038178752732238

namespace A159984

/-- `A208355(2*n)%5` -/
def P15491038178752732238.Spec : Prop :=
  ∀ n, P15491038178752732238.a n = A159984 n

end A159984

/-! ## A159984.P12454964829656230637

`A089408(2*n+1)%5`
-/

namespace A159984.P12454964829656230637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 (2 * n + 1)) 5

end

end A159984.P12454964829656230637

namespace A159984

/-- `A089408(2*n+1)%5` -/
def P12454964829656230637.Spec : Prop :=
  ∀ n, P12454964829656230637.a n = A159984 n

end A159984

/-! ## A159984.P2935333632736035983

`A097331(2*n+1)%5`
-/

namespace A159984.P2935333632736035983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) 5

end

end A159984.P2935333632736035983

namespace A159984

/-- `A097331(2*n+1)%5` -/
def P2935333632736035983.Spec : Prop :=
  ∀ n, P2935333632736035983.a n = A159984 n

end A159984

/-! ## A159984.P4833775371462983757

`abs(A182492(4*n+3))%5`
-/

namespace A159984.P4833775371462983757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182492 (4 * n + 3)| 5

end

end A159984.P4833775371462983757

namespace A159984

/-- `abs(A182492(4*n+3))%5` -/
def P4833775371462983757.Spec : Prop :=
  ∀ n, P4833775371462983757.a n = A159984 n

end A159984

/-! ## A159984.P13858893488089459249

`A099363(2*n)%5`
-/

namespace A159984.P13858893488089459249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099363 (2 * n)) 5

end

end A159984.P13858893488089459249

namespace A159984

/-- `A099363(2*n)%5` -/
def P13858893488089459249.Spec : Prop :=
  ∀ n, P13858893488089459249.a n = A159984 n

end A159984

/-! ## A159984.P5989855409959238557

`A057977(2*n)%5`
-/

namespace A159984.P5989855409959238557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 (2 * n)) 5

end

end A159984.P5989855409959238557

namespace A159984

/-- `A057977(2*n)%5` -/
def P5989855409959238557.Spec : Prop :=
  ∀ n, P5989855409959238557.a n = A159984 n

end A159984

/-! ## A159984.P1928493690187876329

`A089849(2*n+1)%5`
-/

namespace A159984.P1928493690187876329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089849 (2 * n + 1)) 5

end

end A159984.P1928493690187876329

namespace A159984

/-- `A089849(2*n+1)%5` -/
def P1928493690187876329.Spec : Prop :=
  ∀ n, P1928493690187876329.a n = A159984 n

end A159984

/-! ## A159984.P10946933660729700506

`(A001405(2*n)/(n+1))%5`
-/

namespace A159984.P10946933660729700506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001405 (2 * n) : ℚ) / (n + 1 : ℚ))) 5

end

end A159984.P10946933660729700506

namespace A159984

/-- `(A001405(2*n)/(n+1))%5` -/
def P10946933660729700506.Spec : Prop :=
  ∀ n, P10946933660729700506.a n = A159984 n

end A159984

/-! ## A159984.P3667307162748792326

`A051945(n)%5`
-/

namespace A159984.P3667307162748792326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051945 n) 5

end

end A159984.P3667307162748792326

namespace A159984

/-- `A051945(n)%5` -/
def P3667307162748792326.Spec : Prop :=
  ∀ n, P3667307162748792326.a n = A159984 n

end A159984

/-! ## A159984.P1426900322303900870

`(A028329(n)/(2*(n+1)))%5`
-/

namespace A159984.P1426900322303900870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A028329 n : ℚ) / (2 * (n + 1) : ℚ))) 5

end

end A159984.P1426900322303900870

namespace A159984

/-- `(A028329(n)/(2*(n+1)))%5` -/
def P1426900322303900870.Spec : Prop :=
  ∀ n, P1426900322303900870.a n = A159984 n

end A159984

/-! ## A159984.P1601931979543515389

`A050489(n)%5`
-/

namespace A159984.P1601931979543515389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050489 n) 5

end

end A159984.P1601931979543515389

namespace A159984

/-- `A050489(n)%5` -/
def P1601931979543515389.Spec : Prop :=
  ∀ n, P1601931979543515389.a n = A159984 n

end A159984

/-!
# A159986: Catalan numbers read modulo 7.

The programs for A159986, the canonical program `A159986.P10623672141925611723` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159986 has offset 0).

The definition of A159986 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159986.P10623672141925611723

`A000108(n)%7`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159986

/-- `A000108(n)%7` -/
def P10623672141925611723.Spec : Prop :=
  ∀ n, P10623672141925611723.a n = A159986 n

theorem P10623672141925611723.correct : P10623672141925611723.Spec := by
  intro n
  simp only [A159986]

end A159986

/-! ## A159986.P18366980139827876266

`abs(A168491(n)%7)`
-/

namespace A159986.P18366980139827876266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 7|

end

end A159986.P18366980139827876266

namespace A159986

/-- `abs(A168491(n)%7)` -/
def P18366980139827876266.Spec : Prop :=
  ∀ n, P18366980139827876266.a n = A159986 n

end A159986

/-! ## A159986.P16460954801294260062

`A120588(n+1)%7`
-/

namespace A159986.P16460954801294260062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 7

end

end A159986.P16460954801294260062

namespace A159986

/-- `A120588(n+1)%7` -/
def P16460954801294260062.Spec : Prop :=
  ∀ n, P16460954801294260062.a n = A159986 n

end A159986

/-! ## A159986.P9433651556300495090

`(A120304(n)+2)%7`
-/

namespace A159986.P9433651556300495090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 7

end

end A159986.P9433651556300495090

namespace A159986

/-- `(A120304(n)+2)%7` -/
def P9433651556300495090.Spec : Prop :=
  ∀ n, P9433651556300495090.a n = A159986 n

theorem P9433651556300495090.correct : P9433651556300495090.Spec := by
  intro n
  simp only [A159986, Nat.add_sub_cancel, A159986.P9433651556300495090.a, A159986.P10623672141925611723.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159986

/-! ## A159986.P4955863090260489849

`A028303(2*n)%7`
-/

namespace A159986.P4955863090260489849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 7

end

end A159986.P4955863090260489849

namespace A159986

/-- `A028303(2*n)%7` -/
def P4955863090260489849.Spec : Prop :=
  ∀ n, P4955863090260489849.a n = A159986 n

end A159986

/-! ## A159986.P4200842828787783579

`A028304(2*n)%7`
-/

namespace A159986.P4200842828787783579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) 7

end

end A159986.P4200842828787783579

namespace A159986

/-- `A028304(2*n)%7` -/
def P4200842828787783579.Spec : Prop :=
  ∀ n, P4200842828787783579.a n = A159986 n

end A159986

/-! ## A159986.P13773051186285856617

`A126120(2*n)%7`
-/

namespace A159986.P13773051186285856617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) 7

end

end A159986.P13773051186285856617

namespace A159986

/-- `A126120(2*n)%7` -/
def P13773051186285856617.Spec : Prop :=
  ∀ n, P13773051186285856617.a n = A159986 n

end A159986

/-! ## A159986.P4908646384396240503

`A126324(2*n)%7`
-/

namespace A159986.P4908646384396240503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) 7

end

end A159986.P4908646384396240503

namespace A159986

/-- `A126324(2*n)%7` -/
def P4908646384396240503.Spec : Prop :=
  ∀ n, P4908646384396240503.a n = A159986 n

end A159986

/-! ## A159986.P18090845571455261050

`A208355(2*n)%7`
-/

namespace A159986.P18090845571455261050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * n)) 7

end

end A159986.P18090845571455261050

namespace A159986

/-- `A208355(2*n)%7` -/
def P18090845571455261050.Spec : Prop :=
  ∀ n, P18090845571455261050.a n = A159986 n

end A159986

/-! ## A159986.P1048347997165526573

`A089408(2*n+1)%7`
-/

namespace A159986.P1048347997165526573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 (2 * n + 1)) 7

end

end A159986.P1048347997165526573

namespace A159986

/-- `A089408(2*n+1)%7` -/
def P1048347997165526573.Spec : Prop :=
  ∀ n, P1048347997165526573.a n = A159986 n

end A159986

/-! ## A159986.P6610852946224465565

`A097331(2*n+1)%7`
-/

namespace A159986.P6610852946224465565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) 7

end

end A159986.P6610852946224465565

namespace A159986

/-- `A097331(2*n+1)%7` -/
def P6610852946224465565.Spec : Prop :=
  ∀ n, P6610852946224465565.a n = A159986 n

end A159986

/-! ## A159986.P13982300409308849386

`(A263986(n)+A000045(n))%7`
-/

namespace A159986.P13982300409308849386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A000045 n) 7

end

end A159986.P13982300409308849386

namespace A159986

/-- `(A263986(n)+A000045(n))%7` -/
def P13982300409308849386.Spec : Prop :=
  ∀ n, P13982300409308849386.a n = A159986 n

theorem P13982300409308849386.correct : P13982300409308849386.Spec := by
  intro n
  simp only [A159986, Nat.add_sub_cancel, A159986.P13982300409308849386.a, A159986.P10623672141925611723.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A263986, A263986.P11008450882714767519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159986

/-! ## A159986.P3813034552173005402

`(A263986(n)+A212804(n+1))%7`
-/

namespace A159986.P3813034552173005402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A212804 (n + 1)) 7

end

end A159986.P3813034552173005402

namespace A159986

/-- `(A263986(n)+A212804(n+1))%7` -/
def P3813034552173005402.Spec : Prop :=
  ∀ n, P3813034552173005402.a n = A159986 n

end A159986

/-! ## A159986.P11535339237224807306

`(A263986(n)+A001611(n)-1)%7`
-/

namespace A159986.P11535339237224807306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + (A001611 n - 1)) 7

end

end A159986.P11535339237224807306

namespace A159986

/-- `(A263986(n)+A001611(n)-1)%7` -/
def P11535339237224807306.Spec : Prop :=
  ∀ n, P11535339237224807306.a n = A159986 n

theorem P11535339237224807306.correct : P11535339237224807306.Spec := by
  intro n
  simp only [A159986, Nat.add_sub_cancel, A159986.P11535339237224807306.a, A159986.P10623672141925611723.a, A000108, A000108.P17551949696095299361.a, A001611, A001611.P16593652898942925329.a, A263986, A263986.P11008450882714767519.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159986

/-! ## A159986.P17878305339774054825

`(A263986(n)+A103609(2*n))%7`
-/

namespace A159986.P17878305339774054825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A103609 (2 * n)) 7

end

end A159986.P17878305339774054825

namespace A159986

/-- `(A263986(n)+A103609(2*n))%7` -/
def P17878305339774054825.Spec : Prop :=
  ∀ n, P17878305339774054825.a n = A159986 n

end A159986

/-! ## A159986.P11032424078665572689

`(A263986(n)+lcm(A167808(n), A167816(n)))%7`
-/

namespace A159986.P11032424078665572689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + (Int.lcm (A167808 n) (A167816 n) : ℤ)) 7

end

end A159986.P11032424078665572689

namespace A159986

/-- `(A263986(n)+lcm(A167808(n), A167816(n)))%7` -/
def P11032424078665572689.Spec : Prop :=
  ∀ n, P11032424078665572689.a n = A159986 n

end A159986

/-! ## A159986.P16130533902139134240

`Δ[A155587(n)]%7`
-/

namespace A159986.P16130533902139134240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 7

end

end A159986.P16130533902139134240

namespace A159986

/-- `Δ[A155587(n)]%7` -/
def P16130533902139134240.Spec : Prop :=
  ∀ n, P16130533902139134240.a n = A159986 n

end A159986

/-! ## A159986.P10357259198035951591

`ceil(A068875(n)/2)%7`
-/

namespace A159986.P10357259198035951591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A068875 n : ℚ) / 2⌉ 7

end

end A159986.P10357259198035951591

namespace A159986

/-- `ceil(A068875(n)/2)%7` -/
def P10357259198035951591.Spec : Prop :=
  ∀ n, P10357259198035951591.a n = A159986 n

end A159986

/-! ## A159986.P7640318863527572958

`ceil(A131428(n)/2)%7`
-/

namespace A159986.P7640318863527572958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A131428 n : ℚ) / 2⌉ 7

end

end A159986.P7640318863527572958

namespace A159986

/-- `ceil(A131428(n)/2)%7` -/
def P7640318863527572958.Spec : Prop :=
  ∀ n, P7640318863527572958.a n = A159986 n

end A159986

/-!
# A159987: Catalan numbers read modulo 8.

The programs for A159987, the canonical program `A159987.P16458229168628515628` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159987 has offset 0).

The definition of A159987 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159987.P16458229168628515628

`A000108(n)%8`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159987

/-- `A000108(n)%8` -/
def P16458229168628515628.Spec : Prop :=
  ∀ n, P16458229168628515628.a n = A159987 n

theorem P16458229168628515628.correct : P16458229168628515628.Spec := by
  intro n
  simp only [A159987]

end A159987

/-! ## A159987.P18264325475443909403

`A289682(n)%8`
-/

namespace A159987.P18264325475443909403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289682 n) 8

end

end A159987.P18264325475443909403

namespace A159987

/-- `A289682(n)%8` -/
def P18264325475443909403.Spec : Prop :=
  ∀ n, P18264325475443909403.a n = A159987 n

end A159987

/-! ## A159987.P16679214607751408865

`A010877(A289682(n))`
-/

namespace A159987.P16679214607751408865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A289682 n).toNat

end

end A159987.P16679214607751408865

namespace A159987

/-- `A010877(A289682(n))` -/
def P16679214607751408865.Spec : Prop :=
  ∀ n, P16679214607751408865.a n = A159987 n

end A159987

/-! ## A159987.P17821808629806382720

`and(A001533(n), A289682(n))`
-/

namespace A159987.P17821808629806382720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001533 n) (A289682 n)

end

end A159987.P17821808629806382720

namespace A159987

/-- `and(A001533(n), A289682(n))` -/
def P17821808629806382720.Spec : Prop :=
  ∀ n, P17821808629806382720.a n = A159987 n

end A159987

/-! ## A159987.P16970390843709760696

`and(A289682(n), A348643(n))`
-/

namespace A159987.P16970390843709760696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289682 n) (A348643 n)

end

end A159987.P16970390843709760696

namespace A159987

/-- `and(A289682(n), A348643(n))` -/
def P16970390843709760696.Spec : Prop :=
  ∀ n, P16970390843709760696.a n = A159987 n

end A159987

/-! ## A159987.P9148636514143356416

`and(A044242(n+1), A289682(n))`
-/

namespace A159987.P9148636514143356416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A044242 (n + 1)) (A289682 n)

end

end A159987.P9148636514143356416

namespace A159987

/-- `and(A044242(n+1), A289682(n))` -/
def P9148636514143356416.Spec : Prop :=
  ∀ n, P9148636514143356416.a n = A159987 n

end A159987

/-! ## A159987.P17515243941666516596

`and(A141194(n+1), A289682(n))`
-/

namespace A159987.P17515243941666516596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141194 (n + 1)) (A289682 n)

end

end A159987.P17515243941666516596

namespace A159987

/-- `and(A141194(n+1), A289682(n))` -/
def P17515243941666516596.Spec : Prop :=
  ∀ n, P17515243941666516596.a n = A159987 n

end A159987

/-! ## A159987.P6337317467927672505

`and(A142037(n+1), A289682(n))`
-/

namespace A159987.P6337317467927672505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142037 (n + 1)) (A289682 n)

end

end A159987.P6337317467927672505

namespace A159987

/-- `and(A142037(n+1), A289682(n))` -/
def P6337317467927672505.Spec : Prop :=
  ∀ n, P6337317467927672505.a n = A159987 n

end A159987

/-! ## A159987.P1398286386261869442

`and(A142044(n+1), A289682(n))`
-/

namespace A159987.P1398286386261869442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142044 (n + 1)) (A289682 n)

end

end A159987.P1398286386261869442

namespace A159987

/-- `and(A142044(n+1), A289682(n))` -/
def P1398286386261869442.Spec : Prop :=
  ∀ n, P1398286386261869442.a n = A159987 n

end A159987

/-! ## A159987.P11364342996581428960

`and(A142400(n+1), A289682(n))`
-/

namespace A159987.P11364342996581428960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142400 (n + 1)) (A289682 n)

end

end A159987.P11364342996581428960

namespace A159987

/-- `and(A142400(n+1), A289682(n))` -/
def P11364342996581428960.Spec : Prop :=
  ∀ n, P11364342996581428960.a n = A159987 n

end A159987

/-! ## A159987.P12224945785659533127

`and(A142405(n+1), A289682(n))`
-/

namespace A159987.P12224945785659533127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142405 (n + 1)) (A289682 n)

end

end A159987.P12224945785659533127

namespace A159987

/-- `and(A142405(n+1), A289682(n))` -/
def P12224945785659533127.Spec : Prop :=
  ∀ n, P12224945785659533127.a n = A159987 n

end A159987

/-! ## A159987.P1467757536926720811

`and(A142928(n+1), A289682(n))`
-/

namespace A159987.P1467757536926720811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142928 (n + 1)) (A289682 n)

end

end A159987.P1467757536926720811

namespace A159987

/-- `and(A142928(n+1), A289682(n))` -/
def P1467757536926720811.Spec : Prop :=
  ∀ n, P1467757536926720811.a n = A159987 n

end A159987

/-! ## A159987.P717221425020930896

`and(A142935(n+1), A289682(n))`
-/

namespace A159987.P717221425020930896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142935 (n + 1)) (A289682 n)

end

end A159987.P717221425020930896

namespace A159987

/-- `and(A142935(n+1), A289682(n))` -/
def P717221425020930896.Spec : Prop :=
  ∀ n, P717221425020930896.a n = A159987 n

end A159987

/-! ## A159987.P5549629868666827978

`and(A142942(n+1), A289682(n))`
-/

namespace A159987.P5549629868666827978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142942 (n + 1)) (A289682 n)

end

end A159987.P5549629868666827978

namespace A159987

/-- `and(A142942(n+1), A289682(n))` -/
def P5549629868666827978.Spec : Prop :=
  ∀ n, P5549629868666827978.a n = A159987 n

end A159987

/-! ## A159987.P2590104839669393019

`and(A142950(n+1), A289682(n))`
-/

namespace A159987.P2590104839669393019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A142950 (n + 1)) (A289682 n)

end

end A159987.P2590104839669393019

namespace A159987

/-- `and(A142950(n+1), A289682(n))` -/
def P2590104839669393019.Spec : Prop :=
  ∀ n, P2590104839669393019.a n = A159987 n

end A159987

/-! ## A159987.P15092108750269144863

`and(A182346(n+1), A289682(n))`
-/

namespace A159987.P15092108750269144863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A182346 (n + 1)) (A289682 n)

end

end A159987.P15092108750269144863

namespace A159987

/-- `and(A182346(n+1), A289682(n))` -/
def P15092108750269144863.Spec : Prop :=
  ∀ n, P15092108750269144863.a n = A159987 n

end A159987

/-! ## A159987.P17467648807102131740

`and(A289682(n), A339582(n+1))`
-/

namespace A159987.P17467648807102131740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289682 n) (A339582 (n + 1))

end

end A159987.P17467648807102131740

namespace A159987

/-- `and(A289682(n), A339582(n+1))` -/
def P17467648807102131740.Spec : Prop :=
  ∀ n, P17467648807102131740.a n = A159987 n

end A159987

/-! ## A159987.P9744420329782063432

`and(A139634(A289682(n)+1), A289682(n))`
-/

namespace A159987.P9744420329782063432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139634 (A289682 n + 1).toNat) (A289682 n)

end

end A159987.P9744420329782063432

namespace A159987

/-- `and(A139634(A289682(n)+1), A289682(n))` -/
def P9744420329782063432.Spec : Prop :=
  ∀ n, P9744420329782063432.a n = A159987 n

end A159987

/-! ## A159987.P5119565542861874421

`and(A289682(n), A341539(n+2))`
-/

namespace A159987.P5119565542861874421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289682 n) (A341539 (n + 2))

end

end A159987.P5119565542861874421

namespace A159987

/-- `and(A289682(n), A341539(n+2))` -/
def P5119565542861874421.Spec : Prop :=
  ∀ n, P5119565542861874421.a n = A159987 n

end A159987

/-! ## A159987.P1188037806583276410

`and(A135570(n), A289682(n))`
-/

namespace A159987.P1188037806583276410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135570 n) (A289682 n)

end

end A159987.P1188037806583276410

namespace A159987

/-- `and(A135570(n), A289682(n))` -/
def P1188037806583276410.Spec : Prop :=
  ∀ n, P1188037806583276410.a n = A159987 n

end A159987

/-!
# A159988: Catalan numbers read modulo 11 .

The programs for A159988, the canonical program `A159988.P1909233444926346523` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159988 has offset 0).

The definition of A159988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159988.P1909233444926346523

`A000108(n)%11`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159988

/-- `A000108(n)%11` -/
def P1909233444926346523.Spec : Prop :=
  ∀ n, P1909233444926346523.a n = A159988 n

theorem P1909233444926346523.correct : P1909233444926346523.Spec := by
  intro n
  simp only [A159988]

end A159988

/-! ## A159988.P6394157568617255552

`abs(A168491(n)%11)`
-/

namespace A159988.P6394157568617255552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 11|

end

end A159988.P6394157568617255552

namespace A159988

/-- `abs(A168491(n)%11)` -/
def P6394157568617255552.Spec : Prop :=
  ∀ n, P6394157568617255552.a n = A159988 n

end A159988

/-! ## A159988.P13362696771604346073

`A120588(n+1)%11`
-/

namespace A159988.P13362696771604346073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 11

end

end A159988.P13362696771604346073

namespace A159988

/-- `A120588(n+1)%11` -/
def P13362696771604346073.Spec : Prop :=
  ∀ n, P13362696771604346073.a n = A159988 n

end A159988

/-! ## A159988.P3065671776682755236

`(A120304(n)+2)%11`
-/

namespace A159988.P3065671776682755236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 11

end

end A159988.P3065671776682755236

namespace A159988

/-- `(A120304(n)+2)%11` -/
def P3065671776682755236.Spec : Prop :=
  ∀ n, P3065671776682755236.a n = A159988 n

theorem P3065671776682755236.correct : P3065671776682755236.Spec := by
  intro n
  simp only [A159988, Nat.add_sub_cancel, A159988.P3065671776682755236.a, A159988.P1909233444926346523.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159988

/-! ## A159988.P8247444420631931004

`A028303(2*n)%11`
-/

namespace A159988.P8247444420631931004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 11

end

end A159988.P8247444420631931004

namespace A159988

/-- `A028303(2*n)%11` -/
def P8247444420631931004.Spec : Prop :=
  ∀ n, P8247444420631931004.a n = A159988 n

end A159988

/-! ## A159988.P14790725732497233912

`A126120(2*n)%11`
-/

namespace A159988.P14790725732497233912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) 11

end

end A159988.P14790725732497233912

namespace A159988

/-- `A126120(2*n)%11` -/
def P14790725732497233912.Spec : Prop :=
  ∀ n, P14790725732497233912.a n = A159988 n

end A159988

/-! ## A159988.P15074131547561755358

`A097331(Δ[n²])%11`
-/

namespace A159988.P15074131547561755358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 11

end

end A159988.P15074131547561755358

namespace A159988

/-- `A097331(Δ[n²])%11` -/
def P15074131547561755358.Spec : Prop :=
  ∀ n, P15074131547561755358.a n = A159988 n

end A159988

/-! ## A159988.P3118056390833524143

`(A263986(n)+A000045(n))%11`
-/

namespace A159988.P3118056390833524143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A000045 n) 11

end

end A159988.P3118056390833524143

namespace A159988

/-- `(A263986(n)+A000045(n))%11` -/
def P3118056390833524143.Spec : Prop :=
  ∀ n, P3118056390833524143.a n = A159988 n

theorem P3118056390833524143.correct : P3118056390833524143.Spec := by
  intro n
  simp only [A159988, Nat.add_sub_cancel, A159988.P3118056390833524143.a, A159988.P1909233444926346523.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A263986, A263986.P11008450882714767519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159988

/-! ## A159988.P18176432664601852920

`(A263986(n)+A212804(n+1))%11`
-/

namespace A159988.P18176432664601852920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + A212804 (n + 1)) 11

end

end A159988.P18176432664601852920

namespace A159988

/-- `(A263986(n)+A212804(n+1))%11` -/
def P18176432664601852920.Spec : Prop :=
  ∀ n, P18176432664601852920.a n = A159988 n

end A159988

/-! ## A159988.P7161471581565279808

`(A263986(n)+A001611(n)-1)%11`
-/

namespace A159988.P7161471581565279808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + (A001611 n - 1)) 11

end

end A159988.P7161471581565279808

namespace A159988

/-- `(A263986(n)+A001611(n)-1)%11` -/
def P7161471581565279808.Spec : Prop :=
  ∀ n, P7161471581565279808.a n = A159988 n

theorem P7161471581565279808.correct : P7161471581565279808.Spec := by
  intro n
  simp only [A159988, Nat.add_sub_cancel, A159988.P7161471581565279808.a, A159988.P1909233444926346523.a, A000108, A000108.P17551949696095299361.a, A001611, A001611.P16593652898942925329.a, A263986, A263986.P11008450882714767519.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159988

/-! ## A159988.P5175015570154250410

`(A263986(n)+Δ[A001611(n+1)])%11`
-/

namespace A159988.P5175015570154250410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263986 n + (f1 (n + 1) - f1 n)) 11

end

end A159988.P5175015570154250410

namespace A159988

/-- `(A263986(n)+Δ[A001611(n+1)])%11` -/
def P5175015570154250410.Spec : Prop :=
  ∀ n, P5175015570154250410.a n = A159988 n

end A159988

/-! ## A159988.P15201095460021376771

`ceil(A068875(n)/2)%11`
-/

namespace A159988.P15201095460021376771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A068875 n : ℚ) / 2⌉ 11

end

end A159988.P15201095460021376771

namespace A159988

/-- `ceil(A068875(n)/2)%11` -/
def P15201095460021376771.Spec : Prop :=
  ∀ n, P15201095460021376771.a n = A159988 n

end A159988

/-! ## A159988.P14841634876716257697

`(A068875(n)/(A057427(n)+1))%11`
-/

namespace A159988.P14841634876716257697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A068875 n : ℚ) / (A057427 n + 1 : ℚ))) 11

end

end A159988.P14841634876716257697

namespace A159988

/-- `(A068875(n)/(A057427(n)+1))%11` -/
def P14841634876716257697.Spec : Prop :=
  ∀ n, P14841634876716257697.a n = A159988 n

end A159988

/-! ## A159988.P14828815298162749620

`(A068875(n)/A020639(A004277(n)))%11`
-/

namespace A159988.P14828815298162749620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A068875 n : ℚ) / (A020639 (A004277 n).toNat : ℚ))) 11

end

end A159988.P14828815298162749620

namespace A159988

/-- `(A068875(n)/A020639(A004277(n)))%11` -/
def P14828815298162749620.Spec : Prop :=
  ∀ n, P14828815298162749620.a n = A159988 n

end A159988

/-! ## A159988.P17833757812664045257

`A057977(A004277(n))%11`
-/

namespace A159988.P17833757812664045257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 (A004277 n).toNat) 11

end

end A159988.P17833757812664045257

namespace A159988

/-- `A057977(A004277(n))%11` -/
def P17833757812664045257.Spec : Prop :=
  ∀ n, P17833757812664045257.a n = A159988 n

end A159988

/-! ## A159988.P16035426454869248547

`A050490(n)%11`
-/

namespace A159988.P16035426454869248547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050490 n) 11

end

end A159988.P16035426454869248547

namespace A159988

/-- `A050490(n)%11` -/
def P16035426454869248547.Spec : Prop :=
  ∀ n, P16035426454869248547.a n = A159988 n

end A159988

/-! ## A159988.P12766441784585199672

`A028364(∑[n])%11`
-/

namespace A159988.P12766441784585199672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028364 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A159988.P12766441784585199672

namespace A159988

/-- `A028364(∑[n])%11` -/
def P12766441784585199672.Spec : Prop :=
  ∀ n, P12766441784585199672.a n = A159988 n

end A159988

/-! ## A159988.P6739079988070286193

`A009766(∑[n]+n)%11`
-/

namespace A159988.P6739079988070286193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009766 (∑ j ∈ Finset.range (n + 1), f1 j + n)) 11

end

end A159988.P6739079988070286193

namespace A159988

/-- `A009766(∑[n]+n)%11` -/
def P6739079988070286193.Spec : Prop :=
  ∀ n, P6739079988070286193.a n = A159988 n

end A159988

/-! ## A159988.P2542456959599436170

`(C(2*n, n)/(n+1))%11`
-/

namespace A159988.P2542456959599436170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))) 11

end

end A159988.P2542456959599436170

namespace A159988

/-- `(C(2*n, n)/(n+1))%11` -/
def P2542456959599436170.Spec : Prop :=
  ∀ n, P2542456959599436170.a n = A159988 n

end A159988

/-! ## A159988.P17334460278174167354

`A085880(∑[n])%11`
-/

namespace A159988.P17334460278174167354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085880 (∑ j ∈ Finset.range (n + 1), f1 j)) 11

end

end A159988.P17334460278174167354

namespace A159988

/-- `A085880(∑[n])%11` -/
def P17334460278174167354.Spec : Prop :=
  ∀ n, P17334460278174167354.a n = A159988 n

end A159988

/-!
# A159989: Catalan numbers read modulo 12.

The programs for A159989, the canonical program `A159989.P6743413061247156764` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159989 has offset 0).

The definition of A159989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A159989.P6743413061247156764

`A000108(n)%12`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A159989

/-- `A000108(n)%12` -/
def P6743413061247156764.Spec : Prop :=
  ∀ n, P6743413061247156764.a n = A159989 n

theorem P6743413061247156764.correct : P6743413061247156764.Spec := by
  intro n
  simp only [A159989]

end A159989

/-! ## A159989.P4773572211291729352

`abs(A168491(n)%12)`
-/

namespace A159989.P4773572211291729352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 12|

end

end A159989.P4773572211291729352

namespace A159989

/-- `abs(A168491(n)%12)` -/
def P4773572211291729352.Spec : Prop :=
  ∀ n, P4773572211291729352.a n = A159989 n

end A159989

/-! ## A159989.P16179587346282940359

`A120588(n+1)%12`
-/

namespace A159989.P16179587346282940359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 12

end

end A159989.P16179587346282940359

namespace A159989

/-- `A120588(n+1)%12` -/
def P16179587346282940359.Spec : Prop :=
  ∀ n, P16179587346282940359.a n = A159989 n

end A159989

/-! ## A159989.P16913780688558009769

`(A120304(n)+2)%12`
-/

namespace A159989.P16913780688558009769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120304 n + 2) 12

end

end A159989.P16913780688558009769

namespace A159989

/-- `(A120304(n)+2)%12` -/
def P16913780688558009769.Spec : Prop :=
  ∀ n, P16913780688558009769.a n = A159989 n

theorem P16913780688558009769.correct : P16913780688558009769.Spec := by
  intro n
  simp only [A159989, Nat.add_sub_cancel, A159989.P16913780688558009769.a, A159989.P6743413061247156764.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A159989

/-! ## A159989.P16539833796684432455

`A028303(2*n)%12`
-/

namespace A159989.P16539833796684432455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 12

end

end A159989.P16539833796684432455

namespace A159989

/-- `A028303(2*n)%12` -/
def P16539833796684432455.Spec : Prop :=
  ∀ n, P16539833796684432455.a n = A159989 n

end A159989

/-! ## A159989.P11548711587310244300

`A097331(2*n+1)%12`
-/

namespace A159989.P11548711587310244300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) 12

end

end A159989.P11548711587310244300

namespace A159989

/-- `A097331(2*n+1)%12` -/
def P11548711587310244300.Spec : Prop :=
  ∀ n, P11548711587310244300.a n = A159989 n

end A159989

/-! ## A159989.P13994339197375089733

`abs(A090192(2*n+1)%12)`
-/

namespace A159989.P13994339197375089733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A090192 (2 * n + 1)) 12|

end

end A159989.P13994339197375089733

namespace A159989

/-- `abs(A090192(2*n+1)%12)` -/
def P13994339197375089733.Spec : Prop :=
  ∀ n, P13994339197375089733.a n = A159989 n

end A159989

/-! ## A159989.P16861920363506977722

`A028304(A004277(n))%12`
-/

namespace A159989.P16861920363506977722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (A004277 n).toNat) 12

end

end A159989.P16861920363506977722

namespace A159989

/-- `A028304(A004277(n))%12` -/
def P16861920363506977722.Spec : Prop :=
  ∀ n, P16861920363506977722.a n = A159989 n

end A159989

/-! ## A159989.P17181065811463708435

`Δ[A155587(n)]%12`
-/

namespace A159989.P17181065811463708435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 12

end

end A159989.P17181065811463708435

namespace A159989

/-- `Δ[A155587(n)]%12` -/
def P17181065811463708435.Spec : Prop :=
  ∀ n, P17181065811463708435.a n = A159989 n

end A159989

/-! ## A159989.P3214908301555886835

`A057977(A005843(n))%12`
-/

namespace A159989.P3214908301555886835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 (A005843 n).toNat) 12

end

end A159989.P3214908301555886835

namespace A159989

/-- `A057977(A005843(n))%12` -/
def P3214908301555886835.Spec : Prop :=
  ∀ n, P3214908301555886835.a n = A159989 n

end A159989

/-! ## A159989.P1645518818726857632

`(A001700(n)/(2*n+1))%12`
-/

namespace A159989.P1645518818726857632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001700 n : ℚ) / (2 * n + 1 : ℚ))) 12

end

end A159989.P1645518818726857632

namespace A159989

/-- `(A001700(n)/(2*n+1))%12` -/
def P1645518818726857632.Spec : Prop :=
  ∀ n, P1645518818726857632.a n = A159989 n

end A159989

/-! ## A159989.P9174576516443938155

`A050491(n)%12`
-/

namespace A159989.P9174576516443938155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050491 n) 12

end

end A159989.P9174576516443938155

namespace A159989

/-- `A050491(n)%12` -/
def P9174576516443938155.Spec : Prop :=
  ∀ n, P9174576516443938155.a n = A159989 n

end A159989

/-! ## A159989.P3291729774385298611

`A039599(∑[n])%12`
-/

namespace A159989.P3291729774385298611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039599 (∑ j ∈ Finset.range (n + 1), f1 j)) 12

end

end A159989.P3291729774385298611

namespace A159989

/-- `A039599(∑[n])%12` -/
def P3291729774385298611.Spec : Prop :=
  ∀ n, P3291729774385298611.a n = A159989 n

end A159989

/-! ## A159989.P8054337124020864215

`A124644(∑[n])%12`
-/

namespace A159989.P8054337124020864215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124644 (∑ j ∈ Finset.range (n + 1), f1 j)) 12

end

end A159989.P8054337124020864215

namespace A159989

/-- `A124644(∑[n])%12` -/
def P8054337124020864215.Spec : Prop :=
  ∀ n, P8054337124020864215.a n = A159989 n

end A159989

/-! ## A159989.P14142219578691559928

`A028364(A000217(n))%12`
-/

namespace A159989.P14142219578691559928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028364 (A000217 n).toNat) 12

end

end A159989.P14142219578691559928

namespace A159989

/-- `A028364(A000217(n))%12` -/
def P14142219578691559928.Spec : Prop :=
  ∀ n, P14142219578691559928.a n = A159989 n

end A159989

/-! ## A159989.P15312735546933867779

`A033184(A000124(n))%12`
-/

namespace A159989.P15312735546933867779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033184 (A000124 n).toNat) 12

end

end A159989.P15312735546933867779

namespace A159989

/-- `A033184(A000124(n))%12` -/
def P15312735546933867779.Spec : Prop :=
  ∀ n, P15312735546933867779.a n = A159989 n

end A159989

/-! ## A159989.P10775229806190563346

`A033184(A133263(n))%12`
-/

namespace A159989.P10775229806190563346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033184 (A133263 n).toNat) 12

end

end A159989.P10775229806190563346

namespace A159989

/-- `A033184(A133263(n))%12` -/
def P10775229806190563346.Spec : Prop :=
  ∀ n, P10775229806190563346.a n = A159989 n

end A159989

/-! ## A159989.P15858018623395983338

`A086810(A000096(n))%12`
-/

namespace A159989.P15858018623395983338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086810 (A000096 n).toNat) 12

end

end A159989.P15858018623395983338

namespace A159989

/-- `A086810(A000096(n))%12` -/
def P15858018623395983338.Spec : Prop :=
  ∀ n, P15858018623395983338.a n = A159989 n

end A159989

/-! ## A159989.P5052939393550856559

`(C(2*n, n)/(n+1))%12`
-/

namespace A159989.P5052939393550856559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))) 12

end

end A159989.P5052939393550856559

namespace A159989

/-- `(C(2*n, n)/(n+1))%12` -/
def P5052939393550856559.Spec : Prop :=
  ∀ n, P5052939393550856559.a n = A159989 n

end A159989

/-!
# A159991: Powers of 60: a(n) = 60^n.

The programs for A159991, the canonical program `A159991.P2801738279987820056` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A159991 has offset 0).

The definition of A159991 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60^n` (program `A159991.P2801738279987820056`, by `A159991.P2801738279987820056.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A159991.P2801738279987820056

`60^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A159991

/-- `60^n` -/
def P2801738279987820056.Spec : Prop :=
  ∀ n, (P2801738279987820056.a n : ℤ) = A159991 n

theorem P2801738279987820056.correct : P2801738279987820056.Spec := by
  intro n
  simp only [A159991]

end A159991

/-!
# A159993: Denominator of Sum_{k=0..n} A159990(k)/A159991(k), numerator=A159992.

The programs for A159993, there is no canonical definition to state claims against.
-/

/-! ## A159993.P17142060179487949950

`A324922(10^n)/A092392(n)`
-/

namespace A159993.P17142060179487949950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324922 (10 ^ n) : ℚ) / (A092392 n : ℚ)

end

end A159993.P17142060179487949950

/-!
# A159995: 

The programs for A159995, there is no canonical definition to state claims against.
-/

/-! ## A159995.P17910034093730023835

`A159993(n)^3`
-/

namespace A159995.P17910034093730023835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159993 n ^ 3

end

end A159995.P17910034093730023835

/-!
# A159999: Number of numbers not greater than n occurring in Collatz (3x+1) trajectory starting with n.

The programs for A159999, there is no canonical definition to state claims against.
-/

/-! ## A159999.P11036012420083582559

`n+1-A246436(n+1)`
-/

namespace A159999.P11036012420083582559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A246436 (n + 1)

end

end A159999.P11036012420083582559

/-! ## A159999.P7617691720782513399

`A076228(n+1)+1`
-/

namespace A159999.P7617691720782513399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076228 (n + 1) + 1

end

end A159999.P7617691720782513399

/-! ## A159999.P17847051660353171313

`A008908(n+1)-A222597(n+1)`
-/

namespace A159999.P17847051660353171313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A222597 (n + 1)

end

end A159999.P17847051660353171313

/-! ## A159999.P7529512530563364836

`A008908(n+1)+1-A213204(n+1)`
-/

namespace A159999.P7529512530563364836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) + (1 - A213204 (n + 1))

end

end A159999.P7529512530563364836

/-! ## A159999.P14646675047268694726

`A006577(n+1)+1-A222597(n+1)`
-/

namespace A159999.P14646675047268694726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A222597 (n + 1))

end

end A159999.P14646675047268694726

