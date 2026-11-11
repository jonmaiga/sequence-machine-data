import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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
# A375900: E.g.f. satisfies A(x) = 1 / (1 + log(1 - x * A(x)^(1/3)))^3.

The programs for A375900, there is no canonical definition to state claims against.
-/

/-! ## A375900.P2345509948339275138

`A067535(A346555(n+1)+A057500(n+2))`
-/

namespace A375900.P2345509948339275138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (A346555 (n + 1) + A057500 (n + 2)).toNat

end

end A375900.P2345509948339275138

/-!
# A375904: E.g.f. satisfies A(x) = (1 - log(1 - x * A(x)^(1/2)))^2.

The programs for A375904, there is no canonical definition to state claims against.
-/

/-! ## A375904.P7690274034439276274

`A224399(A026119(n))`
-/

namespace A375904.P7690274034439276274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224399 (A026119 n).toNat

end

end A375904.P7690274034439276274

/-!
# A375905: E.g.f. satisfies A(x) = (1 - log(1 - x * A(x)^(1/3)))^3.

The programs for A375905, there is no canonical definition to state claims against.
-/

/-! ## A375905.P7664745629871047885

`A133310(A113351(n)+1)`
-/

namespace A375905.P7664745629871047885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A113351 n + 1).toNat

end

end A375905.P7664745629871047885

/-!
# A375906: Positions of primes in the sequence of numbers of the form 2^t * 3^u + 1 (A055600).

The programs for A375906, there is no canonical definition to state claims against.
-/

/-! ## A375906.P17677373122447388792

`record[A322026(A006093(n+1))]`
-/

namespace A375906.P17677373122447388792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375906.P17677373122447388792

/-! ## A375906.P15267384289201374560

`A322026(A005109(n+1)-1)`
-/

namespace A375906.P15267384289201374560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A005109 (n + 1) - 1).toNat

end

end A375906.P15267384289201374560

/-! ## A375906.P12698524486594536053

`record[A322026(record[A000010(n+1)])]`
-/

namespace A375906.P12698524486594536053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375906.P12698524486594536053

/-! ## A375906.P16503694932367802280

`eq[1, A001222(A055600(n+1))]+1`
-/

namespace A375906.P16503694932367802280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055600 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375906.P16503694932367802280

/-! ## A375906.P16464048515054813487

`eq[1, A001222(1+A003586(n+1))]+1`
-/

namespace A375906.P16464048515054813487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 + A003586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375906.P16464048515054813487

/-!
# A375912: Primes p such that p*nextprime(p)+1 and p + nextprime(p)+1 are both perfect squares where nextprime(p) is the smallest prime that is larger than p.

The programs for A375912, there is no canonical definition to state claims against.
-/

/-! ## A375912.P2542511185199106095

`p?[p?[∑[or(1, n)]]-2]`
-/

namespace A375912.P2542511185199106095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P2542511185199106095

/-! ## A375912.P1011533049448372156

`A166564(Δ[n²])`
-/

namespace A375912.P1011533049448372156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A375912.P1011533049448372156

/-! ## A375912.P17106710334803612404

`p?[record[A252096(n+1)]]`
-/

namespace A375912.P17106710334803612404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252096 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P17106710334803612404

/-! ## A375912.P5983332546935395080

`p?[p?[A000982(n)]-2]`
-/

namespace A375912.P5983332546935395080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P5983332546935395080

/-! ## A375912.P5286953206339355617

`p?[p?[A001844(n)]-2]`
-/

namespace A375912.P5286953206339355617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A375912.P5286953206339355617

/-!
# A375914: Base-5 Euler-Jacobi pseudoprimes: odd composite k coprime to 5 such that 5^((k-1)/2) == (5/k) (mod k), where (5/k) is the Jacobi symbol (or Kronecker symbol).

The programs for A375914, there is no canonical definition to state claims against.
-/

/-! ## A375914.P16169073054859870686

`∪[A020231(1+n), A375915(n+1)]`
-/

namespace A375914.P16169073054859870686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020231 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375914.P16169073054859870686

/-! ## A375914.P3457360215085071216

`∪[A375915(n+1), A375916(n+1)]`
-/

namespace A375914.P3457360215085071216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375914.P3457360215085071216

/-! ## A375914.P13391204123817063299

`A262052(A351870(n)+2)`
-/

namespace A375914.P13391204123817063299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (A351870 n + 2).toNat

end

end A375914.P13391204123817063299

/-! ## A375914.P14522479084782199953

`record[A262052(A348389(n+2))]`
-/

namespace A375914.P14522479084782199953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (A348389 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375914.P14522479084782199953

/-! ## A375914.P1444017741844928368

`A262052(C(A085079(n+1), n)+1)`
-/

namespace A375914.P1444017741844928368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262052 (Nat.choose (A085079 (n + 1)).toNat n + 1)

end

end A375914.P1444017741844928368

/-!
# A375915: Composite numbers k == 1, 9 (mod 10) such that 5^((k-1)/2) == 1 (mod k).

The programs for A375915, there is no canonical definition to state claims against.
-/

/-! ## A375915.P7473813261034259643

`record[A375914(n+1)/A347964(A262052(n+1))]`
-/

namespace A375915.P7473813261034259643
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375914 (n + 1) : ℚ) / (A347964 (A262052 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375915.P7473813261034259643

/-! ## A375915.P3741252853709906738

`A375914(∑[A309861(n)!])`
-/

namespace A375915.P3741252853709906738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375915.P3741252853709906738

/-!
# A375917: Composite numbers k == 1, 11 (mod 12) such that 3^((k-1)/2) == 1 (mod k).

The programs for A375917, there is no canonical definition to state claims against.
-/

/-! ## A375917.P9421802341992430603

`filter[A329705(n+1), A373978(#)]`
-/

namespace A375917.P9421802341992430603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373978 (f1 j).toNat = 1) n)

end

end A375917.P9421802341992430603

/-!
# A375918: Composite numbers k == 5, 7 (mod 12) such that 3^((k-1)/2) == -1 (mod k).

The programs for A375918, there is no canonical definition to state claims against.
-/

/-! ## A375918.P17680383432161097317

`record[A020229(A066099(3*n+2))]`
-/

namespace A375918.P17680383432161097317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (A066099 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375918.P17680383432161097317

/-! ## A375918.P10066133058253642872

`record[A020229(∏{e}[A347578(n)+1, #+1])]`
-/

namespace A375918.P10066133058253642872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347578 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020229 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375918.P10066133058253642872

/-!
# A375921: a(n) = LCM(1,2, ..., 2n+1)/6.

The programs for A375921, the canonical program `A375921.P491962245321920222` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375921 has offset 1).

The definition of A375921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375921.P491962245321920222

`A003418(2*(n+1)+1)/6`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375921

/-- `A003418(2*(n+1)+1)/6` -/
def P491962245321920222.Spec : Prop :=
  ∀ n, P491962245321920222.a n = (A375921 (n + 1) : ℚ)

end A375921

/-! ## A375921.P4625856677379292920

`lcm(a(n-1), ∑[(2*n+1)²])` with `a(0)=1`
-/

namespace A375921.P4625856677379292920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375921.P4625856677379292920

namespace A375921

/-- `lcm(a(n-1), ∑[(2*n+1)²])` -/
def P4625856677379292920.Spec : Prop :=
  ∀ n, (P4625856677379292920.a n : ℤ) = A375921 (n + 1)

end A375921

/-! ## A375921.P5499483247378481567

`A076100(2+n)/6`
-/

namespace A375921.P5499483247378481567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076100 (2 + n) : ℚ) / 6

end

end A375921.P5499483247378481567

namespace A375921

/-- `A076100(2+n)/6` -/
def P5499483247378481567.Spec : Prop :=
  ∀ n, P5499483247378481567.a n = (A375921 (n + 1) : ℚ)

end A375921

/-! ## A375921.P17565665839038507353

`A025555(2*(n+1))/3`
-/

namespace A375921.P17565665839038507353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025555 (2 * (n + 1)) : ℚ) / 3

end

end A375921.P17565665839038507353

namespace A375921

/-- `A025555(2*(n+1))/3` -/
def P17565665839038507353.Spec : Prop :=
  ∀ n, P17565665839038507353.a n = (A375921 (n + 1) : ℚ)

end A375921

/-! ## A375921.P14997542158797737634

`A073618(2*(n+2))/3`
-/

namespace A375921.P14997542158797737634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073618 (2 * (n + 2)) : ℚ) / 3

end

end A375921.P14997542158797737634

namespace A375921

/-- `A073618(2*(n+2))/3` -/
def P14997542158797737634.Spec : Prop :=
  ∀ n, P14997542158797737634.a n = (A375921 (n + 1) : ℚ)

end A375921

/-!
# A375923: Number of permutations of size n which are both two-clumped and co-two-clumped.

The programs for A375923, there is no canonical definition to state claims against.
-/

/-! ## A375923.P5231372633489218973

`∑[A028310(A129323(n))]-A129323(n)`
-/

namespace A375923.P5231372633489218973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A129323 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129323 n

end

end A375923.P5231372633489218973

/-! ## A375923.P10957604764885271848

`A000142(n)-A178334(A059167(n))+1`
-/

namespace A375923.P10957604764885271848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A178334 (A059167 n).toNat + 1

end

end A375923.P10957604764885271848

/-! ## A375923.P14972213189461785612

`A081753(or(A156016(n+1)/3, A055999(n)))`
-/

namespace A375923.P14972213189461785612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (Int.lor (SequenceMachineLib.roundAway ((A156016 (n + 1) : ℚ) / 3)) (A055999 n)).toNat

end

end A375923.P14972213189461785612

/-!
# A375924: Number A(n,k) of partitions of [n] such that the element sum of each block is one more than a multiple of k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A375924, there is no canonical definition to state claims against.
-/

/-! ## A375924.P12125413639325766535

`A326680(n+2)+A118514(A245397(n))`
-/

namespace A375924.P12125413639325766535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326680 (n + 2) + A118514 (A245397 n).toNat

end

end A375924.P12125413639325766535

/-! ## A375924.P9916662422055750077

`A190615(lcm(A062383(n), A244142(n)))`
-/

namespace A375924.P9916662422055750077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190615 (Int.lcm (A062383 n) (A244142 n))

end

end A375924.P9916662422055750077

/-! ## A375924.P10697987249180611609

`and(A318231(A290569(n)), A365623(n))`
-/

namespace A375924.P10697987249180611609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A318231 (A290569 n).toNat) (A365623 n)

end

end A375924.P10697987249180611609

/-! ## A375924.P13859667617586576712

`C(A333805(A100346(n+2)), A286471(n+1))`
-/

namespace A375924.P13859667617586576712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333805 (A100346 (n + 2)).toNat).toNat (A286471 (n + 1)).toNat

end

end A375924.P13859667617586576712

/-!
# A375925: Squares visited by a king moving on a walled, spirally numbered board, where a wall must be jumped on each move, always to the lowest available unvisited square.

The programs for A375925, there is no canonical definition to state claims against.
-/

/-! ## A375925.P10261225613484257518

`A383185(n)+1`
-/

namespace A375925.P10261225613484257518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383185 n + 1

end

end A375925.P10261225613484257518

/-! ## A375925.P7808841537314553170

`A008619(2*A383185(n))`
-/

namespace A375925.P7808841537314553170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A383185 n).toNat

end

end A375925.P7808841537314553170

/-! ## A375925.P218655567215313169

`A029579(2*A383185(n))`
-/

namespace A375925.P218655567215313169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A383185 n).toNat

end

end A375925.P218655567215313169

/-! ## A375925.P16993619791990578763

`A103221(6*A383185(n))`
-/

namespace A375925.P16993619791990578763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (6 * A383185 n).toNat

end

end A375925.P16993619791990578763

/-! ## A375925.P1652049776863552324

`1-A057428(n)*A383185(n)`
-/

namespace A375925.P1652049776863552324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A383185 n

end

end A375925.P1652049776863552324

/-! ## A375925.P17935046859923074022

`2*A383185(n)-(A004526(2*A383185(n))-1)`
-/

namespace A375925.P17935046859923074022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A383185 n - (A004526 (2 * A383185 n).toNat - 1)

end

end A375925.P17935046859923074022

/-!
# A375926: Numbers k such that A018252(k+1) = A018252(k) + 1. In other words, the k-th nonprime number is 1 less than the next.

The programs for A375926, there is no canonical definition to state claims against.
-/

/-! ## A375926.P1071930990320318958

`record[A205793(3+n)]`
-/

namespace A375926.P1071930990320318958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205793 (3 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375926.P1071930990320318958

/-! ## A375926.P15123243301285255231

`comp[A073170(1+n)]`
-/

namespace A375926.P15123243301285255231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P15123243301285255231

/-! ## A375926.P7091282740137334884

`eq[1, runs[A326077(n)]]`
-/

namespace A375926.P7091282740137334884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326077 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375926.P7091282740137334884

/-! ## A375926.P11634823454870847386

`comp[n-A284114(n)]`
-/

namespace A375926.P11634823454870847386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284114 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P11634823454870847386

/-! ## A375926.P15209539035560078813

`A375929(1+n)+1`
-/

namespace A375926.P15209539035560078813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375929 (1 + n) + 1

end

end A375926.P15209539035560078813

/-! ## A375926.P8189832648696314534

`comp[Δ[A082500(n+1)]]`
-/

namespace A375926.P8189832648696314534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P8189832648696314534

/-! ## A375926.P18129887451469168426

`comp[record[A047814(n)]-n]`
-/

namespace A375926.P18129887451469168426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375926.P18129887451469168426

/-! ## A375926.P10934052731001985436

`∑[A373403(n+1)]+1`
-/

namespace A375926.P10934052731001985436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A375926.P10934052731001985436

/-! ## A375926.P6442621884003854799

`comp[A065890(n+1)]+1`
-/

namespace A375926.P6442621884003854799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375926.P6442621884003854799

/-! ## A375926.P14375604206783366835

`(A068780(n+1)+n)/2`
-/

namespace A375926.P14375604206783366835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068780 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A375926.P14375604206783366835

/-!
# A375927: Numbers k such that A005117(k+1) - A005117(k) = 1. In other words, the k-th squarefree number is 1 less than the next.

The programs for A375927, the canonical program `A375927.P3509821031608274898` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375927 has offset 1).

The definition of A375927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375927.P4231144493539514082

`comp[A375930(n+1)-1]+1`
-/

namespace A375927.P4231144493539514082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375930 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375927.P4231144493539514082

namespace A375927

/-- `comp[A375930(n+1)-1]+1` -/
def P4231144493539514082.Spec : Prop :=
  ∀ n, (P4231144493539514082.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P12301904606625077532

`comp[∑[A120992(n+1)]-1]+1`
-/

namespace A375927.P12301904606625077532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375927.P12301904606625077532

namespace A375927

/-- `comp[∑[A120992(n+1)]-1]+1` -/
def P12301904606625077532.Spec : Prop :=
  ∀ n, (P12301904606625077532.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P3509821031608274898

`comp[A013929(n+1)-(n+2)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A375927

/-- `comp[A013929(n+1)-(n+2)]+1` -/
def P3509821031608274898.Spec : Prop :=
  ∀ n, (P3509821031608274898.a n : ℤ) = A375927 (n + 1)

theorem P3509821031608274898.correct : P3509821031608274898.Spec := by
  intro n
  simp only [A375927, Nat.add_sub_cancel]

end A375927

/-! ## A375927.P10329635571236986446

`A013928(A007674(n+1)+1)`
-/

namespace A375927.P10329635571236986446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A007674 (n + 1) + 1).toNat

end

end A375927.P10329635571236986446

namespace A375927

/-- `A013928(A007674(n+1)+1)` -/
def P10329635571236986446.Spec : Prop :=
  ∀ n, P10329635571236986446.a n = A375927 (n + 1)

end A375927

/-! ## A375927.P12832980331924479384

`eq[1, A076259(1+n)]+1`
-/

namespace A375927.P12832980331924479384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375927.P12832980331924479384

namespace A375927

/-- `eq[1, A076259(1+n)]+1` -/
def P12832980331924479384.Spec : Prop :=
  ∀ n, (P12832980331924479384.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P4577352826189577177

`eq[1, A399088(n+1)]+1`
-/

namespace A375927.P4577352826189577177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375927.P4577352826189577177

namespace A375927

/-- `eq[1, A399088(n+1)]+1` -/
def P4577352826189577177.Spec : Prop :=
  ∀ n, (P4577352826189577177.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P14701531372651244413

`lt[A076259(n+1), 2]+1`
-/

namespace A375927.P14701531372651244413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A375927.P14701531372651244413

namespace A375927

/-- `lt[A076259(n+1), 2]+1` -/
def P14701531372651244413.Spec : Prop :=
  ∀ n, (P14701531372651244413.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P3189960512624195677

`lt[A399089(n+2), 2]+1`
-/

namespace A375927.P3189960512624195677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399089 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A375927.P3189960512624195677

namespace A375927

/-- `lt[A399089(n+2), 2]+1` -/
def P3189960512624195677.Spec : Prop :=
  ∀ n, (P3189960512624195677.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P4288732140990383755

`eq[1, Δ[record[∏{p}[n, #]]]]+1`
-/

namespace A375927.P4288732140990383755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f5 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375927.P4288732140990383755

namespace A375927

/-- `eq[1, Δ[record[∏{p}[n, #]]]]+1` -/
def P4288732140990383755.Spec : Prop :=
  ∀ n, (P4288732140990383755.a n : ℤ) = A375927 (n + 1)

end A375927

/-! ## A375927.P2780590901208576650

`A100112(A007674(n+1))`
-/

namespace A375927.P2780590901208576650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A007674 (n + 1)).toNat

end

end A375927.P2780590901208576650

namespace A375927

/-- `A100112(A007674(n+1))` -/
def P2780590901208576650.Spec : Prop :=
  ∀ n, P2780590901208576650.a n = A375927 (n + 1)

end A375927

/-! ## A375927.P3665084490512846752

`record[A027656(2*n)/A076259(n+1)]`
-/

namespace A375927.P3665084490512846752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027656 (2 * n) : ℚ) / (A076259 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375927.P3665084490512846752

namespace A375927

/-- `record[A027656(2*n)/A076259(n+1)]` -/
def P3665084490512846752.Spec : Prop :=
  ∀ n, P3665084490512846752.a n = (A375927 (n + 1) : ℚ)

end A375927

/-! ## A375927.P2950907974539487238

`A262869(A295243(n+1))`
-/

namespace A375927.P2950907974539487238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A295243 (n + 1)).toNat

end

end A375927.P2950907974539487238

namespace A375927

/-- `A262869(A295243(n+1))` -/
def P2950907974539487238.Spec : Prop :=
  ∀ n, P2950907974539487238.a n = A375927 (n + 1)

end A375927

/-!
# A375928: Positions of adjacent non-prime-powers (exclusive) differing by more than 1.

The programs for A375928, there is no canonical definition to state claims against.
-/

/-! ## A375928.P14978607237326008461

`∑[A110969(1+n)]`
-/

namespace A375928.P14978607237326008461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110969 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375928.P14978607237326008461

/-! ## A375928.P5001066786269529973

`record[Δ[A305976(n+1)]]`
-/

namespace A375928.P5001066786269529973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P5001066786269529973

/-! ## A375928.P11965721590784578436

`record[A322841(n+1)+1]`
-/

namespace A375928.P11965721590784578436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322841 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P11965721590784578436

/-! ## A375928.P4891762725158833446

`lt[1, A375708(1+n)]+1`
-/

namespace A375928.P4891762725158833446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375708 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375928.P4891762725158833446

/-! ## A375928.P12215984371054421449

`∑[runs[A361102(n+1)-n]]`
-/

namespace A375928.P12215984371054421449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375928.P12215984371054421449

/-! ## A375928.P11990267733091512568

`record[n-A330292(n+1)]+1`
-/

namespace A375928.P11990267733091512568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A330292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A375928.P11990267733091512568

/-! ## A375928.P324837054105752991

`record[A356068(A047994(n+1))]`
-/

namespace A375928.P324837054105752991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A047994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P324837054105752991

/-! ## A375928.P8082950028032522110

`record[A356068(A068794(n+1))]`
-/

namespace A375928.P8082950028032522110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (A068794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P8082950028032522110

/-! ## A375928.P6594982619479641939

`record[A000961(n+1)-A254667(n)]`
-/

namespace A375928.P6594982619479641939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1) - A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P6594982619479641939

/-! ## A375928.P16184228544576960448

`record[A034699(n+1)-A025528(n+1)]`
-/

namespace A375928.P16184228544576960448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1) - A025528 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375928.P16184228544576960448

/-!
# A375929: Numbers k such that A002808(k+1) = A002808(k) + 1. In other words, the k-th composite number is 1 less than the next.

The programs for A375929, there is no canonical definition to state claims against.
-/

/-! ## A375929.P589031635175308093

`A375926(n+1)-1`
-/

namespace A375929.P589031635175308093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375926 (n + 1) - 1

end

end A375929.P589031635175308093

/-! ## A375929.P10227233702583616812

`comp[p?[2*n+1]-(n+3)]`
-/

namespace A375929.P10227233702583616812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - (n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375929.P10227233702583616812

/-! ## A375929.P9481999849721230311

`∑[A373403(1+n)]`
-/

namespace A375929.P9481999849721230311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373403 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375929.P9481999849721230311

/-! ## A375929.P15629249486904283241

`comp[A065890(1+n)]`
-/

namespace A375929.P15629249486904283241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375929.P15629249486904283241

/-! ## A375929.P14450504914848606699

`comp[A162177(1+n)]`
-/

namespace A375929.P14450504914848606699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375929.P14450504914848606699

/-! ## A375929.P2161263434829525788

`eq[1, runs[A336416(n)]]`
-/

namespace A375929.P2161263434829525788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336416 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375929.P2161263434829525788

/-! ## A375929.P9729549826851386321

`eq[1, A065310(n+1)]`
-/

namespace A375929.P9729549826851386321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375929.P9729549826851386321

/-! ## A375929.P15899952529517761203

`eq[1, A054546(n+2)]`
-/

namespace A375929.P15899952529517761203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375929.P15899952529517761203

/-! ## A375929.P9308763837904929033

`∑[runs[A053543(n+1)]]`
-/

namespace A375929.P9308763837904929033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053543 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375929.P9308763837904929033

/-! ## A375929.P14321263981912903788

`∑[runs[A056608(n+1)]]`
-/

namespace A375929.P14321263981912903788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375929.P14321263981912903788

/-!
# A375930: Numbers k such that A005117(k+1) - A005117(k) > 1. In other words, the k-th squarefree number is more than 1 less than the next.

The programs for A375930, the canonical program `A375930.P15385512110871666` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375930 has offset 1).

The definition of A375930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375930.P13558226022880810214

`∑[A120992(1+n)]`
-/

namespace A375930.P13558226022880810214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P13558226022880810214

namespace A375930

/-- `∑[A120992(1+n)]` -/
def P13558226022880810214.Spec : Prop :=
  ∀ n, P13558226022880810214.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P15385512110871666

`lt[1, runs[A013928(n+1)]]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A375930

/-- `lt[1, runs[A013928(n+1)]]` -/
def P15385512110871666.Spec : Prop :=
  ∀ n, (P15385512110871666.a n : ℤ) = A375930 (n + 1)

theorem P15385512110871666.correct : P15385512110871666.Spec := by
  intro n
  simp only [A375930, Nat.add_sub_cancel]

end A375930

/-! ## A375930.P13330083011362245160

`∑[runs[A005117(1+n)-n]]`
-/

namespace A375930.P13330083011362245160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (1 + n) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P13330083011362245160

namespace A375930

/-- `∑[runs[A005117(1+n)-n]]` -/
def P13330083011362245160.Spec : Prop :=
  ∀ n, (P13330083011362245160.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P6229842817952172574

`A013928(A053806(n+1))`
-/

namespace A375930.P6229842817952172574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A053806 (n + 1)).toNat

end

end A375930.P6229842817952172574

namespace A375930

/-- `A013928(A053806(n+1))` -/
def P6229842817952172574.Spec : Prop :=
  ∀ n, P6229842817952172574.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P85812950449695553

`A013928(A376164(n+1))`
-/

namespace A375930.P85812950449695553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A376164 (n + 1)).toNat

end

end A375930.P85812950449695553

namespace A375930

/-- `A013928(A376164(n+1))` -/
def P85812950449695553.Spec : Prop :=
  ∀ n, P85812950449695553.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P11789253573527057730

`A013928(A373415(n+1)+1)`
-/

namespace A375930.P11789253573527057730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A373415 (n + 1) + 1).toNat

end

end A375930.P11789253573527057730

namespace A375930

/-- `A013928(A373415(n+1)+1)` -/
def P11789253573527057730.Spec : Prop :=
  ∀ n, P11789253573527057730.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P11839113447215552003

`A013928(A072284(n+2))`
-/

namespace A375930.P11839113447215552003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A072284 (n + 2)).toNat

end

end A375930.P11839113447215552003

namespace A375930

/-- `A013928(A072284(n+2))` -/
def P11839113447215552003.Spec : Prop :=
  ∀ n, P11839113447215552003.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P15635054697434325103

`A013928(A162902(2*(n+1)))`
-/

namespace A375930.P15635054697434325103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A162902 (2 * (n + 1))).toNat

end

end A375930.P15635054697434325103

namespace A375930

/-- `A013928(A162902(2*(n+1)))` -/
def P15635054697434325103.Spec : Prop :=
  ∀ n, P15635054697434325103.a n = A375930 (n + 1)

end A375930

/-! ## A375930.P11504581340796346268

`eq[1, A389412(n+2)]+2`
-/

namespace A375930.P11504581340796346268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389412 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A375930.P11504581340796346268

namespace A375930

/-- `eq[1, A389412(n+2)]+2` -/
def P11504581340796346268.Spec : Prop :=
  ∀ n, (P11504581340796346268.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P16925052508545755240

`∑[runs[A243348(n+1)]]`
-/

namespace A375930.P16925052508545755240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P16925052508545755240

namespace A375930

/-- `∑[runs[A243348(n+1)]]` -/
def P16925052508545755240.Spec : Prop :=
  ∀ n, (P16925052508545755240.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P15250931154907535761

`lt[1, A076259(n+1)]+1`
-/

namespace A375930.P15250931154907535761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375930.P15250931154907535761

namespace A375930

/-- `lt[1, A076259(n+1)]+1` -/
def P15250931154907535761.Spec : Prop :=
  ∀ n, (P15250931154907535761.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P16448214411267577752

`lt[1, A399088(n+1)]+1`
-/

namespace A375930.P16448214411267577752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375930.P16448214411267577752

namespace A375930

/-- `lt[1, A399088(n+1)]+1` -/
def P16448214411267577752.Spec : Prop :=
  ∀ n, (P16448214411267577752.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P3331631418875412564

`lt[1, A399089(n+2)]+1`
-/

namespace A375930.P3331631418875412564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399089 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A375930.P3331631418875412564

namespace A375930

/-- `lt[1, A399089(n+2)]+1` -/
def P3331631418875412564.Spec : Prop :=
  ∀ n, (P3331631418875412564.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P4060511645869131643

`∑[runs[A243351(n+1)-n]]`
-/

namespace A375930.P4060511645869131643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243351 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375930.P4060511645869131643

namespace A375930

/-- `∑[runs[A243351(n+1)-n]]` -/
def P4060511645869131643.Spec : Prop :=
  ∀ n, (P4060511645869131643.a n : ℤ) = A375930 (n + 1)

end A375930

/-! ## A375930.P14696282730350652601

`A100112(A373415(n+1))`
-/

namespace A375930.P14696282730350652601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100112 (A373415 (n + 1)).toNat

end

end A375930.P14696282730350652601

namespace A375930

/-- `A100112(A373415(n+1))` -/
def P14696282730350652601.Spec : Prop :=
  ∀ n, P14696282730350652601.a n = A375930 (n + 1)

end A375930

/-!
# A375931: The product of the prime powers in the prime factorization of n that have an exponent that is equal to the maximum exponent in this factorization.

The programs for A375931, the canonical program `A375931.P9740495412486584682` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375931 has offset 1).

The definition of A375931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A261969, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375931.P16168222377896143920

`(n+1)/A375932(n+1)`
-/

namespace A375931.P16168222377896143920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A375932 (n + 1) : ℚ)

end

end A375931.P16168222377896143920

namespace A375931

/-- `(n+1)/A375932(n+1)` -/
def P16168222377896143920.Spec : Prop :=
  ∀ n, P16168222377896143920.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P9740495412486584682

`A261969(n+1)^A051903(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A375931

/-- `A261969(n+1)^A051903(n+1)` -/
def P9740495412486584682.Spec : Prop :=
  ∀ n, P9740495412486584682.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P16315087746845718527

`A261969(n+1)^A061395(A181819(n+1))`
-/

namespace A375931.P16315087746845718527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A061395 (A181819 (n + 1)).toNat : ℤ)

end

end A375931.P16315087746845718527

namespace A375931

/-- `A261969(n+1)^A061395(A181819(n+1))` -/
def P16315087746845718527.Spec : Prop :=
  ∀ n, P16315087746845718527.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P2165238223003471772

`A261969(n+1)^(A070941(A297404(n+1))-1)`
-/

namespace A375931.P2165238223003471772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261969 (n + 1) : ℚ) ^ (A070941 (A297404 (n + 1)).toNat - 1 : ℤ)

end

end A375931.P2165238223003471772

namespace A375931

/-- `A261969(n+1)^(A070941(A297404(n+1))-1)` -/
def P2165238223003471772.Spec : Prop :=
  ∀ n, P2165238223003471772.a n = (A375931 (n + 1) : ℚ)

end A375931

/-! ## A375931.P8373180725441681542

`A010766(A375932(n+1)+A000217(n))`
-/

namespace A375931.P8373180725441681542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A375932 (n + 1) + A000217 n).toNat

end

end A375931.P8373180725441681542

namespace A375931

/-- `A010766(A375932(n+1)+A000217(n))` -/
def P8373180725441681542.Spec : Prop :=
  ∀ n, P8373180725441681542.a n = A375931 (n + 1)

end A375931

/-! ## A375931.P826224907937677593

`gcd(n+1, A351365(A085731(n+1)))`
-/

namespace A375931.P826224907937677593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A351365 (A085731 (n + 1)).toNat)

end

end A375931.P826224907937677593

namespace A375931

/-- `gcd(n+1, A351365(A085731(n+1)))` -/
def P826224907937677593.Spec : Prop :=
  ∀ n, (P826224907937677593.a n : ℤ) = A375931 (n + 1)

end A375931

/-!
# A375932: The largest unitary k-free divisor of n where k = A051903(n) is the maximum exponent in the prime factorization of n.

The programs for A375932, the canonical program `A375932.P15622445158983307868` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375932 has offset 1).

The definition of A375932 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A375931, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375932.P15622445158983307868

`(n+1)/A375931(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A375932

/-- `(n+1)/A375931(n+1)` -/
def P15622445158983307868.Spec : Prop :=
  ∀ n, P15622445158983307868.a n = (A375932 (n + 1) : ℚ)

end A375932

/-! ## A375932.P14221400544485751956

`(1+n)/A261969(1+n)^A051903(n+1)`
-/

namespace A375932.P14221400544485751956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A261969 (1 + n) : ℚ) ^ (A051903 (n + 1) : ℤ)

end

end A375932.P14221400544485751956

namespace A375932

/-- `(1+n)/A261969(1+n)^A051903(n+1)` -/
def P14221400544485751956.Spec : Prop :=
  ∀ n, P14221400544485751956.a n = (A375932 (n + 1) : ℚ)

end A375932

/-! ## A375932.P5208457536229154879

`gcd(n+1, A000578(A066636(n+1)))`
-/

namespace A375932.P5208457536229154879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000578 (A066636 (n + 1)).toNat)

end

end A375932.P5208457536229154879

namespace A375932

/-- `gcd(n+1, A000578(A066636(n+1)))` -/
def P5208457536229154879.Spec : Prop :=
  ∀ n, (P5208457536229154879.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P14044519913162432847

`gcd(∑[2*n], A066636((n+1)²/∏{p}[n+1, #]))`
-/

namespace A375932.P14044519913162432847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A066636 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat)

end

end A375932.P14044519913162432847

namespace A375932

/-- `gcd(∑[2*n], A066636((n+1)²/∏{p}[n+1, #]))` -/
def P14044519913162432847.Spec : Prop :=
  ∀ n, (P14044519913162432847.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P16100606278779693456

`A066636(lcm(A066636(n+1), A375931(n+1)))`
-/

namespace A375932.P16100606278779693456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (Int.lcm (A066636 (n + 1)) (A375931 (n + 1)))

end

end A375932.P16100606278779693456

namespace A375932

/-- `A066636(lcm(A066636(n+1), A375931(n+1)))` -/
def P16100606278779693456.Spec : Prop :=
  ∀ n, P16100606278779693456.a n = A375932 (n + 1)

end A375932

/-! ## A375932.P4169308593460591726

`gcd(n+1, A066636((n+1)²))`
-/

namespace A375932.P4169308593460591726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A066636 ((n + 1) ^ 2))

end

end A375932.P4169308593460591726

namespace A375932

/-- `gcd(n+1, A066636((n+1)²))` -/
def P4169308593460591726.Spec : Prop :=
  ∀ n, (P4169308593460591726.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P9268038406517843270

`A066636(A285769(n+1)/A304328(n+1))`
-/

namespace A375932.P9268038406517843270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (SequenceMachineLib.roundAway ((A285769 (n + 1) : ℚ) / (A304328 (n + 1) : ℚ))).toNat

end

end A375932.P9268038406517843270

namespace A375932

/-- `A066636(A285769(n+1)/A304328(n+1))` -/
def P9268038406517843270.Spec : Prop :=
  ∀ n, P9268038406517843270.a n = A375932 (n + 1)

end A375932

/-! ## A375932.P1962802519000781734

`A006530(A066636(n+1)%A184399(n+1))`
-/

namespace A375932.P1962802519000781734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.tmod (A066636 (n + 1)) (A184399 (n + 1))).toNat

end

end A375932.P1962802519000781734

namespace A375932

/-- `A006530(A066636(n+1)%A184399(n+1))` -/
def P1962802519000781734.Spec : Prop :=
  ∀ n, P1962802519000781734.a n = A375932 (n + 1)

end A375932

/-! ## A375932.P12015392810926758029

`gcd(A066636(n+1), A106741(A166247(n+1)))`
-/

namespace A375932.P12015392810926758029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A066636 (n + 1)) (A106741 (A166247 (n + 1)).toNat)

end

end A375932.P12015392810926758029

namespace A375932

/-- `gcd(A066636(n+1), A106741(A166247(n+1)))` -/
def P12015392810926758029.Spec : Prop :=
  ∀ n, (P12015392810926758029.a n : ℤ) = A375932 (n + 1)

end A375932

/-! ## A375932.P9993828891621025104

`A006530(A066636(n+1)^3)`
-/

namespace A375932.P9993828891621025104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066636 (n + 1) ^ 3).toNat

end

end A375932.P9993828891621025104

namespace A375932

/-- `A006530(A066636(n+1)^3)` -/
def P9993828891621025104.Spec : Prop :=
  ∀ n, P9993828891621025104.a n = A375932 (n + 1)

end A375932

/-!
# A375933: The second-largest exponent in the prime factorization of n, or 0 if it does not exist.

The programs for A375933, the canonical program `A375933.P3247189904836465685` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375933 has offset 1).

The definition of A375933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051903, A375932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375933.P3247189904836465685

`A051903(A375932(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A375933

/-- `A051903(A375932(n+1))` -/
def P3247189904836465685.Spec : Prop :=
  ∀ n, P3247189904836465685.a n = A375933 (n + 1)

theorem P3247189904836465685.correct : P3247189904836465685.Spec := by
  intro n
  simp only [A375933, Nat.add_sub_cancel]

end A375933

/-! ## A375933.P16512419063613487659

`val(A328400(1+n), 3)`
-/

namespace A375933.P16512419063613487659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A328400 (1 + n)).toNat 3

end

end A375933.P16512419063613487659

namespace A375933

/-- `val(A328400(1+n), 3)` -/
def P16512419063613487659.Spec : Prop :=
  ∀ n, (P16512419063613487659.a n : ℤ) = A375933 (n + 1)

end A375933

/-! ## A375933.P15744008534898741158

`A257992(A328400(1+n))`
-/

namespace A375933.P15744008534898741158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A328400 (1 + n)).toNat

end

end A375933.P15744008534898741158

namespace A375933

/-- `A257992(A328400(1+n))` -/
def P15744008534898741158.Spec : Prop :=
  ∀ n, P15744008534898741158.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P15967184560772710642

`A051903((n+1)/A375931(n+1))`
-/

namespace A375933.P15967184560772710642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A375931 (n + 1) : ℚ))).toNat

end

end A375933.P15967184560772710642

namespace A375933

/-- `A051903((n+1)/A375931(n+1))` -/
def P15967184560772710642.Spec : Prop :=
  ∀ n, P15967184560772710642.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P5738400307377847061

`A051903(n+1)-A067029(A238745(n+1))`
-/

namespace A375933.P5738400307377847061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P5738400307377847061

namespace A375933

/-- `A051903(n+1)-A067029(A238745(n+1))` -/
def P5738400307377847061.Spec : Prop :=
  ∀ n, P5738400307377847061.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P5709520692105439296

`A067132(n+1)-1-A067029(A238745(n+1))`
-/

namespace A375933.P5709520692105439296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (n + 1) - 1 - A067029 (A238745 (n + 1)).toNat

end

end A375933.P5709520692105439296

namespace A375933

/-- `A067132(n+1)-1-A067029(A238745(n+1))` -/
def P5709520692105439296.Spec : Prop :=
  ∀ n, P5709520692105439296.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P5463436318011614561

`val(A046523(n+1), 2)-A067029(A238745(n+1))`
-/

namespace A375933.P5463436318011614561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A046523 (n + 1)).toNat 2 : ℤ) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P5463436318011614561

namespace A375933

/-- `val(A046523(n+1), 2)-A067029(A238745(n+1))` -/
def P5463436318011614561.Spec : Prop :=
  ∀ n, P5463436318011614561.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P11178458752279416846

`val(A359600(n+1), 3)-A067029(A238745(n+1))`
-/

namespace A375933.P11178458752279416846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A359600 (n + 1)).toNat 3 : ℤ) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P11178458752279416846

namespace A375933

/-- `val(A359600(n+1), 3)-A067029(A238745(n+1))` -/
def P11178458752279416846.Spec : Prop :=
  ∀ n, P11178458752279416846.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P6372288814478746079

`val(A278254(n+1), 4)-A067029(A238745(n+1))`
-/

namespace A375933.P6372288814478746079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A278254 (n + 1)).toNat 4 : ℤ) - A067029 (A238745 (n + 1)).toNat

end

end A375933.P6372288814478746079

namespace A375933

/-- `val(A278254(n+1), 4)-A067029(A238745(n+1))` -/
def P6372288814478746079.Spec : Prop :=
  ∀ n, P6372288814478746079.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P10232850139954965059

`A392276(A375932(n+1)²)`
-/

namespace A375933.P10232850139954965059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (A375932 (n + 1) ^ 2).toNat

end

end A375933.P10232850139954965059

namespace A375933

/-- `A392276(A375932(n+1)²)` -/
def P10232850139954965059.Spec : Prop :=
  ∀ n, P10232850139954965059.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P10632289721683485904

`A339823(A328400(n+1)²)`
-/

namespace A375933.P10632289721683485904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (A328400 (n + 1) ^ 2).toNat

end

end A375933.P10632289721683485904

namespace A375933

/-- `A339823(A328400(n+1)²)` -/
def P10632289721683485904.Spec : Prop :=
  ∀ n, P10632289721683485904.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P2421339508033545677

`val(A107754(A329601(n+1)), 2)`
-/

namespace A375933.P2421339508033545677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A107754 (A329601 (n + 1)).toNat).toNat 2

end

end A375933.P2421339508033545677

namespace A375933

/-- `val(A107754(A329601(n+1)), 2)` -/
def P2421339508033545677.Spec : Prop :=
  ∀ n, (P2421339508033545677.a n : ℤ) = A375933 (n + 1)

end A375933

/-! ## A375933.P17148433510880477780

`A339823(A328400((n+1)²))`
-/

namespace A375933.P17148433510880477780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339823 (A328400 ((n + 1) ^ 2)).toNat

end

end A375933.P17148433510880477780

namespace A375933

/-- `A339823(A328400((n+1)²))` -/
def P17148433510880477780.Spec : Prop :=
  ∀ n, P17148433510880477780.a n = A375933 (n + 1)

end A375933

/-! ## A375933.P4982969877945321278

`A392276(A375932((n+1)²))`
-/

namespace A375933.P4982969877945321278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392276 (A375932 ((n + 1) ^ 2)).toNat

end

end A375933.P4982969877945321278

namespace A375933

/-- `A392276(A375932((n+1)²))` -/
def P4982969877945321278.Spec : Prop :=
  ∀ n, P4982969877945321278.a n = A375933 (n + 1)

end A375933

/-!
# A375934: Numbers whose prime factorization has a second-largest exponent that equals 1.

The programs for A375934, the canonical program `A375934.P9875740353671820697` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375934 has offset 1).

The definition of A375934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9855 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375934.P9875740353671820697

`filter[A375142(n+1), A389905(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A375934

/-- `filter[A375142(n+1), A389905(#)]` -/
def P9875740353671820697.Spec : Prop :=
  ∀ n, P9875740353671820697.a n = A375934 (n + 1)

theorem P9875740353671820697.correct : P9875740353671820697.Spec := by
  intro n
  simp only [A375934, Nat.add_sub_cancel]

end A375934

/-! ## A375934.P10924120593514860410

`filter[A323055(1+n), A389905(#)]`
-/

namespace A375934.P10924120593514860410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A375934.P10924120593514860410

namespace A375934

/-- `filter[A323055(1+n), A389905(#)]` -/
def P10924120593514860410.Spec : Prop :=
  ∀ n, P10924120593514860410.a n = A375934 (n + 1)

end A375934

/-! ## A375934.P6776300855652072301

`∩[A323055(n+1), A375142(n+1)]`
-/

namespace A375934.P6776300855652072301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P6776300855652072301

namespace A375934

/-- `∩[A323055(n+1), A375142(n+1)]` -/
def P6776300855652072301.Spec : Prop :=
  ∀ n, (P6776300855652072301.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P14092612869316458666

`∩[A303946(n+1), A375142(n+1)]`
-/

namespace A375934.P14092612869316458666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P14092612869316458666

namespace A375934

/-- `∩[A303946(n+1), A375142(n+1)]` -/
def P14092612869316458666.Spec : Prop :=
  ∀ n, (P14092612869316458666.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P15585878043949720235

`∩[A059404(n+1), A375142(n+1)]`
-/

namespace A375934.P15585878043949720235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P15585878043949720235

namespace A375934

/-- `∩[A059404(n+1), A375142(n+1)]` -/
def P15585878043949720235.Spec : Prop :=
  ∀ n, (P15585878043949720235.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P13655469659169212218

`∩[A106543(n+1), A375142(n+1)]`
-/

namespace A375934.P13655469659169212218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P13655469659169212218

namespace A375934

/-- `∩[A106543(n+1), A375142(n+1)]` -/
def P13655469659169212218.Spec : Prop :=
  ∀ n, (P13655469659169212218.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P9302059402460058719

`eq[2, A006667(A328400(n+1))]+1`
-/

namespace A375934.P9302059402460058719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A328400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375934.P9302059402460058719

namespace A375934

/-- `eq[2, A006667(A328400(n+1))]+1` -/
def P9302059402460058719.Spec : Prop :=
  ∀ n, (P9302059402460058719.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P7854328304265263284

`∩[A052485(n+1), A323055(n+1)]`
-/

namespace A375934.P7854328304265263284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P7854328304265263284

namespace A375934

/-- `∩[A052485(n+1), A323055(n+1)]` -/
def P7854328304265263284.Spec : Prop :=
  ∀ n, (P7854328304265263284.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P16099068059366139463

`∩[A052485(n+1), A375142(n+1)]`
-/

namespace A375934.P16099068059366139463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P16099068059366139463

namespace A375934

/-- `∩[A052485(n+1), A375142(n+1)]` -/
def P16099068059366139463.Spec : Prop :=
  ∀ n, (P16099068059366139463.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P9916321481322950386

`∩[A007916(n+1), A375142(n+1)]`
-/

namespace A375934.P9916321481322950386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A375934.P9916321481322950386

namespace A375934

/-- `∩[A007916(n+1), A375142(n+1)]` -/
def P9916321481322950386.Spec : Prop :=
  ∀ n, (P9916321481322950386.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P11465243878648525606

`eq[1, A375933(n+1)]+1`
-/

namespace A375934.P11465243878648525606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375934.P11465243878648525606

namespace A375934

/-- `eq[1, A375933(n+1)]+1` -/
def P11465243878648525606.Spec : Prop :=
  ∀ n, (P11465243878648525606.a n : ℤ) = A375934 (n + 1)

end A375934

/-! ## A375934.P15852833590622839602

`filter[A002808(n+1), A375933(#)]`
-/

namespace A375934.P15852833590622839602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A375933 (f1 j).toNat = 1) n)

end

end A375934.P15852833590622839602

namespace A375934

/-- `filter[A002808(n+1), A375933(#)]` -/
def P15852833590622839602.Spec : Prop :=
  ∀ n, P15852833590622839602.a n = A375934 (n + 1)

end A375934

/-! ## A375934.P49385816450588255

`filter[A375142(n+1), A132350(#)]`
-/

namespace A375934.P49385816450588255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A375934.P49385816450588255

namespace A375934

/-- `filter[A375142(n+1), A132350(#)]` -/
def P49385816450588255.Spec : Prop :=
  ∀ n, P49385816450588255.a n = A375934 (n + 1)

end A375934

/-! ## A375934.P11025034782378809784

`eq[1, A051903(A375932(n+1))]+1`
-/

namespace A375934.P11025034782378809784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A375932 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A375934.P11025034782378809784

namespace A375934

/-- `eq[1, A051903(A375932(n+1))]+1` -/
def P11025034782378809784.Spec : Prop :=
  ∀ n, (P11025034782378809784.a n : ℤ) = A375934 (n + 1)

end A375934

/-!
# A375936: Prime numbers p such that there exists a base b < 10 in which p is written as a number that is divisible by p when read as a decimal number.

The programs for A375936, there is no canonical definition to state claims against.
-/

/-! ## A375936.P349765988181019872

`A178991(A268349(n))`
-/

namespace A375936.P349765988181019872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178991 (A268349 n).toNat

end

end A375936.P349765988181019872

/-!
# A375937: Odd numbers which are the largest odd number in their Collatz trajectory.

The programs for A375937, there is no canonical definition to state claims against.
-/

/-! ## A375937.P16637932488655590251

`record[A082983(n)]`
-/

namespace A375937.P16637932488655590251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375937.P16637932488655590251

/-! ## A375937.P10453303029848481958

`eq[n, A075684(A000265(n+1))]`
-/

namespace A375937.P10453303029848481958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375937.P10453303029848481958

/-! ## A375937.P12817770950923512118

`lt[A025586(lcm(2, 3*n+1)/2), lcm(4, 3*n+2)/4]`
-/

namespace A375937.P12817770950923512118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.roundAway ((Nat.lcm 2 (3 * n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (3 * n + 2) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A375937.P12817770950923512118

/-! ## A375937.P15827367890572338197

`A096605(A176869(n+1))`
-/

namespace A375937.P15827367890572338197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096605 (A176869 (n + 1)).toNat

end

end A375937.P15827367890572338197

/-! ## A375937.P9047928027594274294

`lt[A025586(lcm(2, 3*n+1)/2), A165988(n)]`
-/

namespace A375937.P9047928027594274294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.roundAway ((Nat.lcm 2 (3 * n + 1) : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165988 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375937.P9047928027594274294

/-! ## A375937.P2486766183114669929

`record[A004273(2*n+3)-A025586(3*n+4)]`
-/

namespace A375937.P2486766183114669929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n + 3) - A025586 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375937.P2486766183114669929

/-! ## A375937.P6478042807118567597

`eq[n, A075684(A051724(3*(n+1)))]`
-/

namespace A375937.P6478042807118567597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075684 (A051724 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A375937.P6478042807118567597

/-! ## A375937.P4204725272765267054

`record[gcd(A025586(n+1), A087232(n+1))]`
-/

namespace A375937.P4204725272765267054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025586 (n + 1)) (A087232 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375937.P4204725272765267054

/-!
# A375939: Number of partitions of [n] such that the element sum of each block is one more than a multiple of four.

The programs for A375939, there is no canonical definition to state claims against.
-/

/-! ## A375939.P6280354521401984718

`A375924(A055999(n+2)+1)`
-/

namespace A375939.P6280354521401984718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A055999 (n + 2) + 1).toNat

end

end A375939.P6280354521401984718

/-! ## A375939.P1785629928815222056

`A375924(A034856(n+4)-3)`
-/

namespace A375939.P1785629928815222056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A034856 (n + 4) - 3).toNat

end

end A375939.P1785629928815222056

/-! ## A375939.P13843529501770019285

`A375924(A000217(n+4)+n)`
-/

namespace A375939.P13843529501770019285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A375939.P13843529501770019285

/-! ## A375939.P8596805038733338571

`A375924(Δ[Δ[A022815(n+1)]])`
-/

namespace A375939.P8596805038733338571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (f1 (n + 1) - f1 n).toNat

end

end A375939.P8596805038733338571

/-! ## A375939.P12826473853553130595

`A375924(A317439(n+5)+A052905(n))`
-/

namespace A375939.P12826473853553130595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A317439 (n + 5) + A052905 n).toNat

end

end A375939.P12826473853553130595

/-!
# A375940: Number of partitions of [n] such that the element sum of each block is one more than a multiple of five.

The programs for A375940, there is no canonical definition to state claims against.
-/

/-! ## A375940.P14422203461160634899

`A375924(eq[6, row(n)+1-col(n)])`
-/

namespace A375940.P14422203461160634899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375940.P14422203461160634899

/-! ## A375940.P3784728831359742705

`A375924(A056119(n)+15)`
-/

namespace A375940.P3784728831359742705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A056119 n + 15).toNat

end

end A375940.P3784728831359742705

/-! ## A375940.P10778631526262536045

`A375924(A052905(n+3)-1)`
-/

namespace A375940.P10778631526262536045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A052905 (n + 3) - 1).toNat

end

end A375940.P10778631526262536045

/-! ## A375940.P11175754277684048751

`A375924(A087156(2*(n+2))+A000124(n+4))`
-/

namespace A375940.P11175754277684048751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A087156 (2 * (n + 2)) + A000124 (n + 4)).toNat

end

end A375940.P11175754277684048751

/-!
# A375941: Number of partitions of [n] such that the element sum of each block is one more than a multiple of six.

The programs for A375941, there is no canonical definition to state claims against.
-/

/-! ## A375941.P10499910659100782362

`A375924(eq[6, A193592(n)]-1)`
-/

namespace A375941.P10499910659100782362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A375941.P10499910659100782362

/-! ## A375941.P11603280670164743616

`A375924(A112355(n+4)+n)`
-/

namespace A375941.P11603280670164743616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A112355 (n + 4) + (n : ℤ)).toNat

end

end A375941.P11603280670164743616

/-! ## A375941.P17274500529874379082

`A193592(A000108(n))-A373387(n)`
-/

namespace A375941.P17274500529874379082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A000108 n).toNat - A373387 n

end

end A375941.P17274500529874379082

/-! ## A375941.P1558193685683969821

`A025581(A144200(n+3)+A000108(n))`
-/

namespace A375941.P1558193685683969821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A144200 (n + 3) + A000108 n).toNat

end

end A375941.P1558193685683969821

/-! ## A375941.P4656459056645388068

`A025581(A124762(2*n)+A000108(n))`
-/

namespace A375941.P4656459056645388068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A124762 (2 * n) + A000108 n).toNat

end

end A375941.P4656459056645388068

/-!
# A375942: Number of partitions of [n] such that the element sum of each block is one more than a multiple of seven.

The programs for A375942, there is no canonical definition to state claims against.
-/

/-! ## A375942.P18415363947953755147

`A375924(A221921(2*n+7)+A000217(n))`
-/

namespace A375942.P18415363947953755147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A221921 (2 * n + 7) + A000217 n).toNat

end

end A375942.P18415363947953755147

/-! ## A375942.P14867347117739613660

`∑{d}[A182172(A231651(n+2)), #]`
-/

namespace A375942.P14867347117739613660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182172 (A231651 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A375942.P14867347117739613660

/-! ## A375942.P15406939966823823050

`A339087(A365377(n)%A005191(n))`
-/

namespace A375942.P15406939966823823050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339087 (Int.tmod (A365377 n) (A005191 n)).toNat

end

end A375942.P15406939966823823050

/-! ## A375942.P3619702712958858338

`and(A143763(A102276(n)), A208453(n))`
-/

namespace A375942.P3619702712958858338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143763 (A102276 n).toNat) (A208453 n)

end

end A375942.P3619702712958858338

/-! ## A375942.P14389152900254704458

`A339059(A053637(n+1)-A339059(n))`
-/

namespace A375942.P14389152900254704458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339059 (A053637 (n + 1) - A339059 n).toNat

end

end A375942.P14389152900254704458

/-!
# A375943: Number of partitions of [n] such that the element sum of each block is one more than a multiple of eight.

The programs for A375943, there is no canonical definition to state claims against.
-/

/-! ## A375943.P11203076140502981391

`A375924(A000217(n+9)-9)`
-/

namespace A375943.P11203076140502981391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000217 (n + 9) - 9).toNat

end

end A375943.P11203076140502981391

/-!
# A375945: Expansion of e.g.f. 1 / (1 + 2 * log(1 - x))^(3/2).

The programs for A375945, there is no canonical definition to state claims against.
-/

/-! ## A375945.P7026460333151632748

`A059561(A135746(n+1))`
-/

namespace A375945.P7026460333151632748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A135746 (n + 1)).toNat

end

end A375945.P7026460333151632748

/-!
# A375948: Expansion of e.g.f. 1 / (3 - 2 * exp(x))^(3/2).

The programs for A375948, there is no canonical definition to state claims against.
-/

/-! ## A375948.P6378678343669571733

`A020639(A381186(n))*A380259(n)`
-/

namespace A375948.P6378678343669571733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A381186 n).toNat * A380259 n

end

end A375948.P6378678343669571733

/-!
# A375949: Expansion of e.g.f. 1 / (4 - 3 * exp(x))^(4/3).

The programs for A375949, there is no canonical definition to state claims against.
-/

/-! ## A375949.P8644556392972638703

`A008574(A081624(n)-A341027(n))`
-/

namespace A375949.P8644556392972638703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A081624 n - A341027 (n + 220)).toNat

end

end A375949.P8644556392972638703

/-!
# A375953: Expansion of e.g.f. 1 / (1 + 2 * log(1 - x))^(5/2).

The programs for A375953, there is no canonical definition to state claims against.
-/

/-! ## A375953.P9391115777833322562

`A003144(A141006(n))-A157051(n)`
-/

namespace A375953.P9391115777833322562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003144 (A141006 n).toNat - A157051 n

end

end A375953.P9391115777833322562

/-!
# A375955: T(n,k) for n >= 1, k <= n is the maximum value in the intersection of the Collatz trajectories of n and k, where a trajectory ends when it reaches 1. T(n,k) is a triangle read by rows.

The programs for A375955, there is no canonical definition to state claims against.
-/

/-! ## A375955.P5238337641731924249

`A299150(A387597(n)+A002260(n+1))`
-/

namespace A375955.P5238337641731924249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A387597 n + A002260 (n + 1)).toNat

end

end A375955.P5238337641731924249

/-! ## A375955.P7337858224924947541

`A183760(2*A119265(n+1))`
-/

namespace A375955.P7337858224924947541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183760 (2 * A119265 (n + 1)).toNat

end

end A375955.P7337858224924947541

/-! ## A375955.P6146585676956616880

`2^A276342(A103438(n))`
-/

namespace A375955.P6146585676956616880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A276342 (A103438 n).toNat : ℤ)

end

end A375955.P6146585676956616880

/-! ## A375955.P5903455754630967711

`∏{e}[A049682(A116925(n)), #]`
-/

namespace A375955.P5903455754630967711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049682 (A116925 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A375955.P5903455754630967711

/-! ## A375955.P531576413426430580

`A367626((A000217(n²)+8)*col(n)+1)`
-/

namespace A375955.P531576413426430580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367626 ((A000217 (n ^ 2) + 8) * (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A375955.P531576413426430580

/-!
# A375957: Number of partitions of [n] such that the element sum of each block is one more than a multiple of ten.

The programs for A375957, there is no canonical definition to state claims against.
-/

/-! ## A375957.P4488821507632338865

`A375924(A000217(n+11)-11)`
-/

namespace A375957.P4488821507632338865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000217 (n + 11) - 11).toNat

end

end A375957.P4488821507632338865

/-! ## A375957.P4454308803783353997

`A375924(A000096(n+9)+n+1)`
-/

namespace A375957.P4454308803783353997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A000096 (n + 9) + (n + 1 : ℤ)).toNat

end

end A375957.P4454308803783353997

/-! ## A375957.P13463975991817665503

`A375924(A052905(n+7)+n+5)`
-/

namespace A375957.P13463975991817665503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375924 (A052905 (n + 7) + (n + 5 : ℤ)).toNat

end

end A375957.P13463975991817665503

/-!
# A375959: Partial products of A006257.

The programs for A375959, there is no canonical definition to state claims against.
-/

/-! ## A375959.P9425661406187788736

`∏[(a(n-1)+1)%n+1]` with `a(0)=1`
-/

namespace A375959.P9425661406187788736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (f1 (n - 1) + 1) % n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P9425661406187788736

/-! ## A375959.P3156080266287554352

`∏[2*a(floor(n/2))-(-1)^n]` with `a(0)=1, a(1)=1`
-/

namespace A375959.P3156080266287554352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P3156080266287554352

/-! ## A375959.P6135187328517249102

`∏[or(1, 2*n-2^ceil(log2(n+1))+1)]`
-/

namespace A375959.P6135187328517249102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway ((2 * n : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P6135187328517249102

/-! ## A375959.P8986986733830274723

`∏[abs(n-A035327(n))]`
-/

namespace A375959.P8986986733830274723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A035327 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P8986986733830274723

/-! ## A375959.P8817728734980130428

`a(n-1)*A006257(n)` with `a(0)=1`
-/

namespace A375959.P8817728734980130428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A006257 n

end

end A375959.P8817728734980130428

/-! ## A375959.P14341009601655505341

`∏[(2*n)%A062383(n)+1]`
-/

namespace A375959.P14341009601655505341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A062383 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P14341009601655505341

/-! ## A375959.P7119344617673248798

`a(n-1)*A053645(2*n+1)` with `a(0)=1`
-/

namespace A375959.P7119344617673248798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A053645 (2 * n + 1)

end

end A375959.P7119344617673248798

/-! ## A375959.P14542583766667686661

`a(n-1)*A266539(2*n+1)` with `a(0)=1`
-/

namespace A375959.P14542583766667686661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A266539 (2 * n + 1)

end

end A375959.P14542583766667686661

/-! ## A375959.P964318550401029576

`∏[A028310(A006257(n))]`
-/

namespace A375959.P964318550401029576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P964318550401029576

/-! ## A375959.P14589171491440606103

`∏[A004277(n)-A003817(n)]`
-/

namespace A375959.P14589171491440606103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A375959.P14589171491440606103

/-!
# A375960: Numbers whose product of proper divisors is a cube.

The programs for A375960, the canonical program `A375960.P3119828855472581405` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375960 has offset 1).

The definition of A375960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375960.P3119828855472581405

`∪[A211338(1+n), ∑[A003215(n)]]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A375960

/-- `∪[A211338(1+n), ∑[A003215(n)]]` -/
def P3119828855472581405.Spec : Prop :=
  ∀ n, (P3119828855472581405.a n : ℤ) = A375960 (n + 1)

theorem P3119828855472581405.correct : P3119828855472581405.Spec := by
  intro n
  simp only [A375960, Nat.add_sub_cancel]

end A375960

/-! ## A375960.P12434256052564896173

`∪[A000040(n+1), A229972(n+1)]`
-/

namespace A375960.P12434256052564896173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P12434256052564896173

namespace A375960

/-- `∪[A000040(n+1), A229972(n+1)]` -/
def P12434256052564896173.Spec : Prop :=
  ∀ n, (P12434256052564896173.a n : ℤ) = A375960 (n + 1)

end A375960

/-! ## A375960.P1244288800629103838

`∪[A008578(n+1), A229972(n+1)]`
-/

namespace A375960.P1244288800629103838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P1244288800629103838

namespace A375960

/-- `∪[A008578(n+1), A229972(n+1)]` -/
def P1244288800629103838.Spec : Prop :=
  ∀ n, (P1244288800629103838.a n : ℤ) = A375960 (n + 1)

end A375960

/-! ## A375960.P17057325261624596250

`∪[A030059(n+1), A229972(n+1)]`
-/

namespace A375960.P17057325261624596250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A375960.P17057325261624596250

namespace A375960

/-- `∪[A030059(n+1), A229972(n+1)]` -/
def P17057325261624596250.Spec : Prop :=
  ∀ n, (P17057325261624596250.a n : ℤ) = A375960 (n + 1)

end A375960

/-!
# A375961: 2-adic valuation of 6*n + 2.

The programs for A375961, the canonical program `A375961.P871565758720273220` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375961 has offset 0).

The definition of A375961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375961.P11016166873367121581

`val(6*n+2, 2)`
-/

namespace A375961.P11016166873367121581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (6 * n + 2) 2

end

end A375961.P11016166873367121581

namespace A375961

/-- `val(6*n+2, 2)` -/
def P11016166873367121581.Spec : Prop :=
  ∀ n, (P11016166873367121581.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P871565758720273220

`A371093(n)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A375961

/-- `A371093(n)+1` -/
def P871565758720273220.Spec : Prop :=
  ∀ n, P871565758720273220.a n = A375961 n

theorem P871565758720273220.correct : P871565758720273220.Spec := by
  intro n
  simp only [A375961]

end A375961

/-! ## A375961.P2809971119406027399

`A087229(n)-1`
-/

namespace A375961.P2809971119406027399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 n - 1

end

end A375961.P2809971119406027399

namespace A375961

/-- `A087229(n)-1` -/
def P2809971119406027399.Spec : Prop :=
  ∀ n, P2809971119406027399.a n = A375961 n

end A375961

/-! ## A375961.P5112462208812669920

`A007814(6*n+2)`
-/

namespace A375961.P5112462208812669920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (6 * n + 2)

end

end A375961.P5112462208812669920

namespace A375961

/-- `A007814(6*n+2)` -/
def P5112462208812669920.Spec : Prop :=
  ∀ n, P5112462208812669920.a n = A375961 n

end A375961

/-! ## A375961.P11190452369128055969

`1+val(n+Δ[n²], 2)`
-/

namespace A375961.P11190452369128055969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.valuation ((n : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat 2

end

end A375961.P11190452369128055969

namespace A375961

/-- `1+val(n+Δ[n²], 2)` -/
def P11190452369128055969.Spec : Prop :=
  ∀ n, (P11190452369128055969.a n : ℤ) = A375961 n

end A375961

/-! ## A375961.P7581576997910983358

`A330393(2*A371093(n))`
-/

namespace A375961.P7581576997910983358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330393 (2 * A371093 n).toNat

end

end A375961.P7581576997910983358

namespace A375961

/-- `A330393(2*A371093(n))` -/
def P7581576997910983358.Spec : Prop :=
  ∀ n, P7581576997910983358.a n = A375961 n

end A375961

/-! ## A375961.P2376256938357850465

`A371092(2*A371093(n))`
-/

namespace A375961.P2376256938357850465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371092 (2 * A371093 n).toNat

end

end A375961.P2376256938357850465

namespace A375961

/-- `A371092(2*A371093(n))` -/
def P2376256938357850465.Spec : Prop :=
  ∀ n, P2376256938357850465.a n = A375961 n

end A375961

/-! ## A375961.P12016466411247877520

`A322584(3*n+1)`
-/

namespace A375961.P12016466411247877520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322584 (3 * n + 1)

end

end A375961.P12016466411247877520

namespace A375961

/-- `A322584(3*n+1)` -/
def P12016466411247877520.Spec : Prop :=
  ∀ n, P12016466411247877520.a n = A375961 n

end A375961

/-! ## A375961.P14637355018659209378

`A072078(3*n+1)`
-/

namespace A375961.P14637355018659209378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (3 * n + 1)

end

end A375961.P14637355018659209378

namespace A375961

/-- `A072078(3*n+1)` -/
def P14637355018659209378.Spec : Prop :=
  ∀ n, P14637355018659209378.a n = A375961 n

end A375961

/-! ## A375961.P6237490343163625931

`A085058(3*n)-1`
-/

namespace A375961.P6237490343163625931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (3 * n) - 1

end

end A375961.P6237490343163625931

namespace A375961

/-- `A085058(3*n)-1` -/
def P6237490343163625931.Spec : Prop :=
  ∀ n, P6237490343163625931.a n = A375961 n

end A375961

/-! ## A375961.P1103524766744420140

`A087230(2*n)-1`
-/

namespace A375961.P1103524766744420140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087230 (2 * n) - 1

end

end A375961.P1103524766744420140

namespace A375961

/-- `A087230(2*n)-1` -/
def P1103524766744420140.Spec : Prop :=
  ∀ n, P1103524766744420140.a n = A375961 n

end A375961

/-! ## A375961.P12363236952847655654

`A268727(A396059(n))`
-/

namespace A375961.P12363236952847655654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 (A396059 n).toNat

end

end A375961.P12363236952847655654

namespace A375961

/-- `A268727(A396059(n))` -/
def P12363236952847655654.Spec : Prop :=
  ∀ n, P12363236952847655654.a n = A375961 n

end A375961

/-! ## A375961.P1118802524529626245

`A001511(A065621(n+1)+2)`
-/

namespace A375961.P1118802524529626245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A065621 (n + 1) + 2).toNat

end

end A375961.P1118802524529626245

namespace A375961

/-- `A001511(A065621(n+1)+2)` -/
def P1118802524529626245.Spec : Prop :=
  ∀ n, P1118802524529626245.a n = A375961 n

end A375961

/-! ## A375961.P15103654292581420196

`A001511(A003188(2*n)+1)`
-/

namespace A375961.P15103654292581420196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003188 (2 * n) + 1).toNat

end

end A375961.P15103654292581420196

namespace A375961

/-- `A001511(A003188(2*n)+1)` -/
def P15103654292581420196.Spec : Prop :=
  ∀ n, P15103654292581420196.a n = A375961 n

end A375961

/-! ## A375961.P9780606011621136409

`A001511(3*n+1)`
-/

namespace A375961.P9780606011621136409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (3 * n + 1)

end

end A375961.P9780606011621136409

namespace A375961

/-- `A001511(3*n+1)` -/
def P9780606011621136409.Spec : Prop :=
  ∀ n, P9780606011621136409.a n = A375961 n

end A375961

/-! ## A375961.P11373887470998067304

`A089309(A271114(n))`
-/

namespace A375961.P11373887470998067304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A271114 n).toNat

end

end A375961.P11373887470998067304

namespace A375961

/-- `A089309(A271114(n))` -/
def P11373887470998067304.Spec : Prop :=
  ∀ n, P11373887470998067304.a n = A375961 n

end A375961

/-! ## A375961.P16661860102101046259

`A375782(A016813(n))`
-/

namespace A375961.P16661860102101046259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375782 (A016813 n).toNat

end

end A375961.P16661860102101046259

namespace A375961

/-- `A375782(A016813(n))` -/
def P16661860102101046259.Spec : Prop :=
  ∀ n, P16661860102101046259.a n = A375961 n

end A375961

/-! ## A375961.P17624551623841629877

`A375782(A004767(n)-2)`
-/

namespace A375961.P17624551623841629877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375782 (A004767 n - 2).toNat

end

end A375961.P17624551623841629877

namespace A375961

/-- `A375782(A004767(n)-2)` -/
def P17624551623841629877.Spec : Prop :=
  ∀ n, P17624551623841629877.a n = A375961 n

end A375961

/-! ## A375961.P17265440577783151610

`A050603(A048726(n))`
-/

namespace A375961.P17265440577783151610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A048726 n).toNat

end

end A375961.P17265440577783151610

namespace A375961

/-- `A050603(A048726(n))` -/
def P17265440577783151610.Spec : Prop :=
  ∀ n, P17265440577783151610.a n = A375961 n

end A375961

/-! ## A375961.P10722204793509085409

`A067029(A048724(2*n)+2)`
-/

namespace A375961.P10722204793509085409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A048724 (2 * n) + 2).toNat

end

end A375961.P10722204793509085409

namespace A375961

/-- `A067029(A048724(2*n)+2)` -/
def P10722204793509085409.Spec : Prop :=
  ∀ n, P10722204793509085409.a n = A375961 n

end A375961

/-!
# A375962: Numbers whose product of proper divisors is not a cube.

The programs for A375962, the canonical program `A375962.P14051908958568052838` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375962 has offset 1).

The definition of A375962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375962.P1753128465878550443

`comp[A375960(n+1)-1]+1`
-/

namespace A375962.P1753128465878550443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375962.P1753128465878550443

namespace A375962

/-- `comp[A375960(n+1)-1]+1` -/
def P1753128465878550443.Spec : Prop :=
  ∀ n, (P1753128465878550443.a n : ℤ) = A375962 (n + 1)

end A375962

/-! ## A375962.P14051908958568052838

`∩[A018252(n+1), comp[A375960(n+1)]]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A375962

/-- `∩[A018252(n+1), comp[A375960(n+1)]]` -/
def P14051908958568052838.Spec : Prop :=
  ∀ n, (P14051908958568052838.a n : ℤ) = A375962 (n + 1)

theorem P14051908958568052838.correct : P14051908958568052838.Spec := by
  intro n
  simp only [A375962, Nat.add_sub_cancel]

end A375962

/-! ## A375962.P13427689819907582789

`∩[A018252(n+1), comp[A229972(n+1)]]`
-/

namespace A375962.P13427689819907582789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229972 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A375962.P13427689819907582789

namespace A375962

/-- `∩[A018252(n+1), comp[A229972(n+1)]]` -/
def P13427689819907582789.Spec : Prop :=
  ∀ n, (P13427689819907582789.a n : ℤ) = A375962 (n + 1)

end A375962

/-! ## A375962.P4454565690178393920

`eq[char[A375960(1+n)], A000007(n)]`
-/

namespace A375962.P4454565690178393920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375960 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A375962.P4454565690178393920

namespace A375962

/-- `eq[char[A375960(1+n)], A000007(n)]` -/
def P4454565690178393920.Spec : Prop :=
  ∀ n, (P4454565690178393920.a n : ℤ) = A375962 (n + 1)

end A375962

/-! ## A375962.P15222135526016932274

`lt[A145676(A389762(n+3)), A003415(n)]`
-/

namespace A375962.P15222135526016932274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145676 (A389762 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375962.P15222135526016932274

namespace A375962

/-- `lt[A145676(A389762(n+3)), A003415(n)]` -/
def P15222135526016932274.Spec : Prop :=
  ∀ n, (P15222135526016932274.a n : ℤ) = A375962 (n + 1)

end A375962

/-!
# A375966: Powers of 3 alternating with powers of 4.

The programs for A375966, the canonical program `A375966.P5315892783615141827` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375966 has offset 0).

The definition of A375966 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375966.P9441247109705119281

`ogf((1+x-4x^2-3x^3)/(1-7x^2+12x^4))`
-/

namespace A375966.P9441247109705119281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4, -3] [1, 0, -7, 0, 12] n

end

end A375966.P9441247109705119281

namespace A375966

/-- `ogf((1+x-4x^2-3x^3)/(1-7x^2+12x^4))` -/
def P9441247109705119281.Spec : Prop :=
  ∀ n, P9441247109705119281.a n = A375966 n

end A375966

/-! ## A375966.P5315892783615141827

`7*a(n-2)-12*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375966

/-- `7*a(n-2)-12*a(n-4)` -/
def P5315892783615141827.Spec : Prop :=
  ∀ n, P5315892783615141827.a n = A375966 n

theorem P5315892783615141827.correct : P5315892783615141827.Spec := by
  intro n
  simp only [A375966]

end A375966

/-! ## A375966.P13684544247856365933

`(4*3^(n/2)*A059841(n)-(-2)^n+2^n)/4`
-/

namespace A375966.P13684544247856365933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 * (3 : ℝ) ^ ((n : ℚ) / 2 : ℝ) * (A059841 n : ℝ) - ((-2) ^ n : ℝ) + (2 ^ n : ℝ)) / 4

end

end A375966.P13684544247856365933

namespace A375966

/-- `(4*3^(n/2)*A059841(n)-(-2)^n+2^n)/4` -/
def P13684544247856365933.Spec : Prop :=
  ∀ n, P13684544247856365933.a n = (A375966 n : ℝ)

end A375966

/-! ## A375966.P15647428518167225248

`(3+n%2)^floor(n/2)`
-/

namespace A375966.P15647428518167225248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + n % 2 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A375966.P15647428518167225248

namespace A375966

/-- `(3+n%2)^floor(n/2)` -/
def P15647428518167225248.Spec : Prop :=
  ∀ n, P15647428518167225248.a n = (A375966 n : ℚ)

end A375966

/-! ## A375966.P2260540604860435784

`(5-gcd(2, n))^floor(n/2)`
-/

namespace A375966.P2260540604860435784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (Nat.gcd 2 n : ℤ) : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A375966.P2260540604860435784

namespace A375966

/-- `(5-gcd(2, n))^floor(n/2)` -/
def P2260540604860435784.Spec : Prop :=
  ∀ n, P2260540604860435784.a n = (A375966 n : ℚ)

end A375966

/-! ## A375966.P9856282242872785200

`(and(1, n)+3)^floor(n/2)`
-/

namespace A375966.P9856282242872785200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A375966.P9856282242872785200

namespace A375966

/-- `(and(1, n)+3)^floor(n/2)` -/
def P9856282242872785200.Spec : Prop :=
  ∀ n, P9856282242872785200.a n = (A375966 n : ℚ)

end A375966

/-! ## A375966.P12928860146328209526

`(and(1, n)+3)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A375966.P12928860146328209526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.land 1 n + 3) * a (n - 2)

end

end A375966.P12928860146328209526

namespace A375966

/-- `(and(1, n)+3)*a(n-2)` -/
def P12928860146328209526.Spec : Prop :=
  ∀ n, (P12928860146328209526.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P11935096602046587615

`(3-(2-n)%2)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A375966.P11935096602046587615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (3 - Int.tmod (2 - (n : ℤ)) 2) * a (n - 2)

end

end A375966.P11935096602046587615

namespace A375966

/-- `(3-(2-n)%2)*a(n-2)` -/
def P11935096602046587615.Spec : Prop :=
  ∀ n, P11935096602046587615.a n = A375966 n

end A375966

/-! ## A375966.P18402899357526631738

`A118263(A001651(n+1))`
-/

namespace A375966.P18402899357526631738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A001651 (n + 1)).toNat

end

end A375966.P18402899357526631738

namespace A375966

/-- `A118263(A001651(n+1))` -/
def P18402899357526631738.Spec : Prop :=
  ∀ n, P18402899357526631738.a n = A375966 n

end A375966

/-! ## A375966.P15541125929754982627

`A118263(A032766(n)+1)`
-/

namespace A375966.P15541125929754982627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A032766 n + 1).toNat

end

end A375966.P15541125929754982627

namespace A375966

/-- `A118263(A032766(n)+1)` -/
def P15541125929754982627.Spec : Prop :=
  ∀ n, P15541125929754982627.a n = A375966 n

end A375966

/-! ## A375966.P8635113295678685441

`A118263(A097482(n+1))`
-/

namespace A375966.P8635113295678685441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A097482 (n + 1)).toNat

end

end A375966.P8635113295678685441

namespace A375966

/-- `A118263(A097482(n+1))` -/
def P8635113295678685441.Spec : Prop :=
  ∀ n, P8635113295678685441.a n = A375966 n

end A375966

/-! ## A375966.P5473385136884777653

`A118263(A114119(n)-1)`
-/

namespace A375966.P5473385136884777653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A114119 n - 1).toNat

end

end A375966.P5473385136884777653

namespace A375966

/-- `A118263(A114119(n)-1)` -/
def P5473385136884777653.Spec : Prop :=
  ∀ n, P5473385136884777653.a n = A375966 n

end A375966

/-! ## A375966.P3723415917155055537

`gcd(A131575(n)², A254006(n))`
-/

namespace A375966.P3723415917155055537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131575 n ^ 2) (A254006 n)

end

end A375966.P3723415917155055537

namespace A375966

/-- `gcd(A131575(n)², A254006(n))` -/
def P3723415917155055537.Spec : Prop :=
  ∀ n, (P3723415917155055537.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P6968577967433739155

`A118263(A007494(n+1)-1)`
-/

namespace A375966.P6968577967433739155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A007494 (n + 1) - 1).toNat

end

end A375966.P6968577967433739155

namespace A375966

/-- `A118263(A007494(n+1)-1)` -/
def P6968577967433739155.Spec : Prop :=
  ∀ n, P6968577967433739155.a n = A375966 n

end A375966

/-! ## A375966.P12131673481080444419

`A118263(A294732(n+3)-1)`
-/

namespace A375966.P12131673481080444419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118263 (A294732 (n + 3) - 1).toNat

end

end A375966.P12131673481080444419

namespace A375966

/-- `A118263(A294732(n+3)-1)` -/
def P12131673481080444419.Spec : Prop :=
  ∀ n, P12131673481080444419.a n = A375966 n

end A375966

/-! ## A375966.P6953499187894637655

`A258439(A227906(n))`
-/

namespace A375966.P6953499187894637655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (A227906 n).toNat

end

end A375966.P6953499187894637655

namespace A375966

/-- `A258439(A227906(n))` -/
def P6953499187894637655.Spec : Prop :=
  ∀ n, P6953499187894637655.a n = A375966 n

end A375966

/-! ## A375966.P14264166384442837360

`A051128(A165157(n+1))`
-/

namespace A375966.P14264166384442837360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A165157 (n + 1)).toNat

end

end A375966.P14264166384442837360

namespace A375966

/-- `A051128(A165157(n+1))` -/
def P14264166384442837360.Spec : Prop :=
  ∀ n, P14264166384442837360.a n = A375966 n

end A375966

/-! ## A375966.P9020118734443250954

`gcd(A092270(n), A282022(n))`
-/

namespace A375966.P9020118734443250954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092270 n) (A282022 n)

end

end A375966.P9020118734443250954

namespace A375966

/-- `gcd(A092270(n), A282022(n))` -/
def P9020118734443250954.Spec : Prop :=
  ∀ n, (P9020118734443250954.a n : ℤ) = A375966 n

end A375966

/-! ## A375966.P12880590531456400843

`a(n-2)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A375966.P12880590531456400843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 2) ^ 2 / a (n - 4)

end

end A375966.P12880590531456400843

namespace A375966

/-- `a(n-2)²/a(n-4)` -/
def P12880590531456400843.Spec : Prop :=
  ∀ n, P12880590531456400843.a n = (A375966 n : ℚ)

end A375966

/-!
# A375967: a(n) is the least number > n with the same digit average as n.

The programs for A375967, there is no canonical definition to state claims against.
-/

/-! ## A375967.P779300018115846774

`A161561(A100800(n+1))`
-/

namespace A375967.P779300018115846774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A100800 (n + 1)).toNat

end

end A375967.P779300018115846774

/-! ## A375967.P17177401880867946601

`A161561(A110725(n+1))`
-/

namespace A375967.P17177401880867946601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A110725 (n + 1)).toNat

end

end A375967.P17177401880867946601

/-! ## A375967.P17841658886582468857

`A161561(A169919(n+1))`
-/

namespace A375967.P17841658886582468857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A169919 (n + 1)).toNat

end

end A375967.P17841658886582468857

/-! ## A375967.P11816773923470722507

`A161561(A169921(n+1))`
-/

namespace A375967.P11816773923470722507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A169921 (n + 1)).toNat

end

end A375967.P11816773923470722507

/-! ## A375967.P10689058643860900354

`A161561(A292512(n+1))`
-/

namespace A375967.P10689058643860900354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A292512 (n + 1)).toNat

end

end A375967.P10689058643860900354

/-!
# A375969: Lexicographically earliest sequence of nonnegative integers with distinct digit averages.

The programs for A375969, there is no canonical definition to state claims against.
-/

/-! ## A375969.P8271887577685926528

`record[A375968(n)]`
-/

namespace A375969.P8271887577685926528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375969.P8271887577685926528

/-! ## A375969.P8225579067052832401

`eq[A106620(n), A375968(n)]`
-/

namespace A375969.P8225579067052832401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375969.P8225579067052832401

/-! ## A375969.P1623744791475118458

`A375968(eq[n, A375968(n)])`
-/

namespace A375969.P1623744791475118458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A375969.P1623744791475118458

/-! ## A375969.P4056544758492325207

`comp[A375967(n+1)]`
-/

namespace A375969.P4056544758492325207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375969.P4056544758492325207

/-! ## A375969.P16301091828157439451

`lt[A000045(n), A206268(A375968(n)+2)]`
-/

namespace A375969.P16301091828157439451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206268 (A375968 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A375969.P16301091828157439451

/-!
# A375970: a(n) is the largest number k such that k^2 divides the square pyramidal number A000330(n).

The programs for A375970, the canonical program `A375970.P9061839122044189861` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375970 has offset 1).

The definition of A375970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375970.P9061839122044189861

`A000188(A000330(n+1))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375970

/-- `A000188(A000330(n+1))` -/
def P9061839122044189861.Spec : Prop :=
  ∀ n, P9061839122044189861.a n = A375970 (n + 1)

theorem P9061839122044189861.correct : P9061839122044189861.Spec := by
  intro n
  simp only [A375970, Nat.add_sub_cancel]

end A375970

/-! ## A375970.P10295068499833638662

`sqrt(A008833(∑[(n+1)²]))`
-/

namespace A375970.P10295068499833638662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008833 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A375970.P10295068499833638662

namespace A375970

/-- `sqrt(A008833(∑[(n+1)²]))` -/
def P10295068499833638662.Spec : Prop :=
  ∀ n, P10295068499833638662.a n = (A375970 (n + 1) : ℝ)

end A375970

/-! ## A375970.P16118934885296197590

`A000188(∑[(1+n)²])`
-/

namespace A375970.P16118934885296197590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375970.P16118934885296197590

namespace A375970

/-- `A000188(∑[(1+n)²])` -/
def P16118934885296197590.Spec : Prop :=
  ∀ n, P16118934885296197590.a n = A375970 (n + 1)

end A375970

/-! ## A375970.P17467045435641859459

`A071773(∑[(n+1)²])`
-/

namespace A375970.P17467045435641859459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375970.P17467045435641859459

namespace A375970

/-- `A071773(∑[(n+1)²])` -/
def P17467045435641859459.Spec : Prop :=
  ∀ n, P17467045435641859459.a n = A375970 (n + 1)

end A375970

/-! ## A375970.P15269492736654420140

`A308993(∑[(n+1)²])`
-/

namespace A375970.P15269492736654420140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308993 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A375970.P15269492736654420140

namespace A375970

/-- `A308993(∑[(n+1)²])` -/
def P15269492736654420140.Spec : Prop :=
  ∀ n, P15269492736654420140.a n = A375970 (n + 1)

end A375970

/-!
# A375971: Positions of records in A375970.

The programs for A375971, there is no canonical definition to state claims against.
-/

/-! ## A375971.P12674153508279872574

`A345915(2*a(n-1))` with `a(0)=1, a(1)=7, a(2)=12, a(3)=24`
-/

namespace A375971.P12674153508279872574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 12, 24] fun n a =>
  A345915 (2 * a (n - 1)).toNat

end

end A375971.P12674153508279872574

/-!
# A375972: a(n) = binomial(n,k(n)), where k(2) = 1, k(n) = k(n-1) + (a(n-1) mod 2).

The programs for A375972, the canonical program `A375972.P18053615468605080457` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375972 has offset 2).

The definition of A375972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375972.P18053615468605080457

`C(n+2, A078881(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A375972

/-- `C(n+2, A078881(n+1))` -/
def P18053615468605080457.Spec : Prop :=
  ∀ n, (P18053615468605080457.a n : ℤ) = A375972 (n + 2)

theorem P18053615468605080457.correct : P18053615468605080457.Spec := by
  intro n
  simp only [A375972, Nat.add_sub_cancel]

end A375972

/-! ## A375972.P767799898629123612

`C(n+2, A162751(n+1))`
-/

namespace A375972.P767799898629123612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A162751 (n + 1)).toNat

end

end A375972.P767799898629123612

namespace A375972

/-- `C(n+2, A162751(n+1))` -/
def P767799898629123612.Spec : Prop :=
  ∀ n, (P767799898629123612.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P13721984734810609423

`C(n+2, A006165(n+2))`
-/

namespace A375972.P13721984734810609423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A006165 (n + 2)).toNat

end

end A375972.P13721984734810609423

namespace A375972

/-- `C(n+2, A006165(n+2))` -/
def P13721984734810609423.Spec : Prop :=
  ∀ n, (P13721984734810609423.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P11589254811627613121

`C(n+2, A060973(n+2))`
-/

namespace A375972.P11589254811627613121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A060973 (n + 2)).toNat

end

end A375972.P11589254811627613121

namespace A375972

/-- `C(n+2, A060973(n+2))` -/
def P11589254811627613121.Spec : Prop :=
  ∀ n, (P11589254811627613121.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P13871017302405754054

`C(n+2, A352228(n+3))`
-/

namespace A375972.P13871017302405754054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A352228 (n + 3)).toNat

end

end A375972.P13871017302405754054

namespace A375972

/-- `C(n+2, A352228(n+3))` -/
def P13871017302405754054.Spec : Prop :=
  ∀ n, (P13871017302405754054.a n : ℤ) = A375972 (n + 2)

end A375972

/-! ## A375972.P7779802543133980650

`C(n+2, A306390(n+3))`
-/

namespace A375972.P7779802543133980650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (A306390 (n + 3)).toNat

end

end A375972.P7779802543133980650

namespace A375972

/-- `C(n+2, A306390(n+3))` -/
def P7779802543133980650.Spec : Prop :=
  ∀ n, (P7779802543133980650.a n : ℤ) = A375972 (n + 2)

end A375972

/-!
# A375973: Record values in A375970.

The programs for A375973, there is no canonical definition to state claims against.
-/

/-! ## A375973.P4425799419854759099

`A375970(A375971(n+1))`
-/

namespace A375973.P4425799419854759099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (A375971 (n + 1)).toNat

end

end A375973.P4425799419854759099

/-! ## A375973.P14692518316599776196

`record[A375970(n+1)]`
-/

namespace A375973.P14692518316599776196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375973.P14692518316599776196

/-!
# A375974: Primes p_1 where products m of k = 4 consecutive primes p_1..p_k are such that only p_1 < m^(1/k).

The programs for A375974, there is no canonical definition to state claims against.
-/

/-! ## A375974.P1650858082674932668

`A145300(A075422(n+1))`
-/

namespace A375974.P1650858082674932668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145300 (A075422 (n + 1)).toNat

end

end A375974.P1650858082674932668

/-!
# A375976: Sum of squares of the decimal digits of 2^n.

The programs for A375976, the canonical program `A375976.P12460029172972807041` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375976 has offset 0).

The definition of A375976 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003132, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A375976.P12460029172972807041

`A003132(A000079(n))`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375976

/-- `A003132(A000079(n))` -/
def P12460029172972807041.Spec : Prop :=
  ∀ n, P12460029172972807041.a n = A375976 n

theorem P12460029172972807041.correct : P12460029172972807041.Spec := by
  intro n
  simp only [A375976]

end A375976

/-! ## A375976.P10331954751453253880

`∑{digits}[A028909(n), #²]`
-/

namespace A375976.P10331954751453253880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x ^ 2).sum

end

end A375976.P10331954751453253880

namespace A375976

/-- `∑{digits}[A028909(n), #²]` -/
def P10331954751453253880.Spec : Prop :=
  ∀ n, (P10331954751453253880.a n : ℤ) = A375976 n

end A375976

/-! ## A375976.P885121794953689242

`∑{digits}[2^n, #²]`
-/

namespace A375976.P885121794953689242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ 2).sum

end

end A375976.P885121794953689242

namespace A375976

/-- `∑{digits}[2^n, #²]` -/
def P885121794953689242.Spec : Prop :=
  ∀ n, (P885121794953689242.a n : ℤ) = A375976 n

end A375976

/-! ## A375976.P6240161951757348166

`∑{digits}[2^n, A001105(#)]/2`
-/

namespace A375976.P6240161951757348166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2

end

end A375976.P6240161951757348166

namespace A375976

/-- `∑{digits}[2^n, A001105(#)]/2` -/
def P6240161951757348166.Spec : Prop :=
  ∀ n, P6240161951757348166.a n = (A375976 n : ℚ)

end A375976

/-! ## A375976.P8432116614625918089

`ceil(∑{digits}[A000079(n), A001105(#)]/2)`
-/

namespace A375976.P8432116614625918089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001105 x).sum : ℤ) : ℚ) / 2⌉

end

end A375976.P8432116614625918089

namespace A375976

/-- `ceil(∑{digits}[A000079(n), A001105(#)]/2)` -/
def P8432116614625918089.Spec : Prop :=
  ∀ n, P8432116614625918089.a n = A375976 n

end A375976

/-!
# A375977: Number of subsets of {1,2,...,n} such that no two elements differ by 2 or 5.

The programs for A375977, the canonical program `A375977.P10645777519740405941` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375977 has offset 0).

The definition of A375977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375977.P10645777519740405941

`ogf((1+x+2x^2+x^3+x^4+3x^5+x^6-x^7-x^10)/(1-x-x^3+x^5-x^6-2x^7+x^8-x^10+x^11))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375977

/-- `ogf((1+x+2x^2+x^3+x^4+3x^5+x^6-x^7-x^10)/(1-x-x^3+x^5-x^6-2x^7+x^8-x^10+x^11))` -/
def P10645777519740405941.Spec : Prop :=
  ∀ n, P10645777519740405941.a n = A375977 n

theorem P10645777519740405941.correct : P10645777519740405941.Spec := by
  intro n
  simp only [A375977]

end A375977

/-! ## A375977.P684860152015142008

`A343779(A086566(n+1))`
-/

namespace A375977.P684860152015142008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A086566 (n + 1)).toNat

end

end A375977.P684860152015142008

namespace A375977

/-- `A343779(A086566(n+1))` -/
def P684860152015142008.Spec : Prop :=
  ∀ n, P684860152015142008.a n = A375977 n

end A375977

/-! ## A375977.P13234317704179623931

`A343779(A235213(n+2))`
-/

namespace A375977.P13234317704179623931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A235213 (n + 2)).toNat

end

end A375977.P13234317704179623931

namespace A375977

/-- `A343779(A235213(n+2))` -/
def P13234317704179623931.Spec : Prop :=
  ∀ n, P13234317704179623931.a n = A375977 n

end A375977

/-! ## A375977.P8338303377238774295

`∑[A367329(∑[A013610(n)])]`
-/

namespace A375977.P8338303377238774295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367329 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375977.P8338303377238774295

namespace A375977

/-- `∑[A367329(∑[A013610(n)])]` -/
def P8338303377238774295.Spec : Prop :=
  ∀ n, P8338303377238774295.a n = A375977 n

end A375977

/-! ## A375977.P15788891844893779943

`∑[A018261(∑[A364912(n)])]`
-/

namespace A375977.P15788891844893779943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018261 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375977.P15788891844893779943

namespace A375977

/-- `∑[A018261(∑[A364912(n)])]` -/
def P15788891844893779943.Spec : Prop :=
  ∀ n, P15788891844893779943.a n = A375977 n

end A375977

/-!
# A375978: Number of subsets of {1,2,...,n} such that no two elements differ by 3 or 5.

The programs for A375978, the canonical program `A375978.P13685730888670647969` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375978 has offset 0).

The definition of A375978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375978.P13685730888670647969

`ogf((1+x+x^2+3x^3+x^4+x^5-x^6-3x^7-4x^8-3x^9-2x^10-x^11)/(1-x-x^2+x^3-x^4+x^5-x^6-x^7-x^8+x^9+x^10+x^11+x^12))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375978

/-- `ogf((1+x+x^2+3x^3+x^4+x^5-x^6-3x^7-4x^8-3x^9-2x^10-x^11)/(1-x-x^2+x^3-x^4+x^5-x^6-x^7-x^8+x^9+x^10+x^11+x^12))` -/
def P13685730888670647969.Spec : Prop :=
  ∀ n, P13685730888670647969.a n = A375978 n

theorem P13685730888670647969.correct : P13685730888670647969.Spec := by
  intro n
  simp only [A375978]

end A375978

/-! ## A375978.P9655502773875699132

`A353430(2*n+3)+comp[∑[n+2]-3]`
-/

namespace A375978.P9655502773875699132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353430 (2 * n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A375978.P9655502773875699132

namespace A375978

/-- `A353430(2*n+3)+comp[∑[n+2]-3]` -/
def P9655502773875699132.Spec : Prop :=
  ∀ n, P9655502773875699132.a n = A375978 n

end A375978

/-! ## A375978.P11375173100231598305

`A337769(A046185(n))`
-/

namespace A375978.P11375173100231598305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A046185 n).toNat

end

end A375978.P11375173100231598305

namespace A375978

/-- `A337769(A046185(n))` -/
def P11375173100231598305.Spec : Prop :=
  ∀ n, P11375173100231598305.a n = A375978 n

end A375978

/-! ## A375978.P10031850383004706992

`A337769(A005282(n+1))`
-/

namespace A375978.P10031850383004706992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A005282 (n + 1)).toNat

end

end A375978.P10031850383004706992

namespace A375978

/-- `A337769(A005282(n+1))` -/
def P10031850383004706992.Spec : Prop :=
  ∀ n, P10031850383004706992.a n = A375978 n

end A375978

/-! ## A375978.P1286513775774125697

`A337769(A259964(n+1))`
-/

namespace A375978.P1286513775774125697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337769 (A259964 (n + 1)).toNat

end

end A375978.P1286513775774125697

namespace A375978

/-- `A337769(A259964(n+1))` -/
def P1286513775774125697.Spec : Prop :=
  ∀ n, P1286513775774125697.a n = A375978 n

end A375978

/-!
# A375979: Number of subsets of {1,2,...,n} such that no two elements differ by 4 or 5.

The programs for A375979, the canonical program `A375979.P4318871453343099553` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375979 has offset 0).

The definition of A375979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375979.P4318871453343099553

`ogf((1+x+2x^2+3x^3+7x^4+6x^5+3x^6-x^7-3x^8-6x^9-5x^10-3x^11)/(1-x-x^3+x^4-x^6-x^7-2x^8-3x^9+x^10+2x^11+3x^12))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375979

/-- `ogf((1+x+2x^2+3x^3+7x^4+6x^5+3x^6-x^7-3x^8-6x^9-5x^10-3x^11)/(1-x-x^3+x^4-x^6-x^7-2x^8-3x^9+x^10+2x^11+3x^12))` -/
def P4318871453343099553.Spec : Prop :=
  ∀ n, P4318871453343099553.a n = A375979 n

theorem P4318871453343099553.correct : P4318871453343099553.Spec := by
  intro n
  simp only [A375979]

end A375979

/-! ## A375979.P11803373254874111874

`A049445(A020899(n+1)%A096347(2*n+3))`
-/

namespace A375979.P11803373254874111874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049445 (Int.tmod (A020899 (n + 1)) (A096347 (2 * n + 3))).toNat

end

end A375979.P11803373254874111874

namespace A375979

/-- `A049445(A020899(n+1)%A096347(2*n+3))` -/
def P11803373254874111874.Spec : Prop :=
  ∀ n, P11803373254874111874.a n = A375979 n

end A375979

/-! ## A375979.P4643705121750564181

`A049445(A020899(n+1))%A227285(2*n+5)`
-/

namespace A375979.P4643705121750564181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049445 (A020899 (n + 1)).toNat) (A227285 (2 * n + 5))

end

end A375979.P4643705121750564181

namespace A375979

/-- `A049445(A020899(n+1))%A227285(2*n+5)` -/
def P4643705121750564181.Spec : Prop :=
  ∀ n, P4643705121750564181.a n = A375979 n

end A375979

/-! ## A375979.P9282904129188347098

`A049445(A020899(n+1))%A086566(A374737(n))`
-/

namespace A375979.P9282904129188347098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049445 (A020899 (n + 1)).toNat) (A086566 (A374737 n).toNat)

end

end A375979.P9282904129188347098

namespace A375979

/-- `A049445(A020899(n+1))%A086566(A374737(n))` -/
def P9282904129188347098.Spec : Prop :=
  ∀ n, P9282904129188347098.a n = A375979 n

end A375979

/-!
# A375980: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 2, or 5.

The programs for A375980, the canonical program `A375980.P11129936878851640901` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375980 has offset 0).

The definition of A375980 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375980.P17572448108812218149

`ogf((1+x+x^2+x^5)/(1-x-x^3+x^5-x^6))`
-/

namespace A375980.P17572448108812218149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 0, 0, 1] [1, -1, 0, -1, 0, 1, -1] n

end

end A375980.P17572448108812218149

namespace A375980

/-- `ogf((1+x+x^2+x^5)/(1-x-x^3+x^5-x^6))` -/
def P17572448108812218149.Spec : Prop :=
  ∀ n, P17572448108812218149.a n = A375980 n

end A375980

/-! ## A375980.P11129936878851640901

`a(n-1)+a(n-3)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=6, a(5)=9`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375980

/-- `a(n-1)+a(n-3)-a(n-5)+a(n-6)` -/
def P11129936878851640901.Spec : Prop :=
  ∀ n, P11129936878851640901.a n = A375980 n

theorem P11129936878851640901.correct : P11129936878851640901.Spec := by
  intro n
  simp only [A375980]

end A375980

/-! ## A375980.P7138831603139809292

`record[A000196(A336269(n))]`
-/

namespace A375980.P7138831603139809292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336269 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A375980.P7138831603139809292

namespace A375980

/-- `record[A000196(A336269(n))]` -/
def P7138831603139809292.Spec : Prop :=
  ∀ n, P7138831603139809292.a n = A375980 n

end A375980

/-! ## A375980.P1469727030804095060

`A071626(A115975(n+1)+A114901(2*(n+1)))`
-/

namespace A375980.P1469727030804095060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A115975 (n + 1) + A114901 (2 * (n + 1))).toNat

end

end A375980.P1469727030804095060

namespace A375980

/-- `A071626(A115975(n+1)+A114901(2*(n+1)))` -/
def P1469727030804095060.Spec : Prop :=
  ∀ n, P1469727030804095060.a n = A375980 n

end A375980

/-! ## A375980.P2712934576540938070

`A000196(xor(A064989(n+1), A193286(3*n+2)))`
-/

namespace A375980.P2712934576540938070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A064989 (n + 1)) (A193286 (3 * n + 2))).toNat

end

end A375980.P2712934576540938070

namespace A375980

/-- `A000196(xor(A064989(n+1), A193286(3*n+2)))` -/
def P2712934576540938070.Spec : Prop :=
  ∀ n, P2712934576540938070.a n = A375980 n

end A375980

/-!
# A375981: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 4, or 5.

The programs for A375981, the canonical program `A375981.P15671498257521818381` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375981 has offset 0).

The definition of A375981 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375981.P15671498257521818381

`ogf((1+x+x^2+x^3+2x^4+2x^5-x^8-x^9-x^10)/(1-x-x^3+x^4-x^6-x^8+x^11))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375981

/-- `ogf((1+x+x^2+x^3+2x^4+2x^5-x^8-x^9-x^10)/(1-x-x^3+x^4-x^6-x^8+x^11))` -/
def P15671498257521818381.Spec : Prop :=
  ∀ n, P15671498257521818381.a n = A375981 n

theorem P15671498257521818381.correct : P15671498257521818381.Spec := by
  intro n
  simp only [A375981]

end A375981

/-! ## A375981.P277021522894510604

`A357409(A175305(n+1))`
-/

namespace A375981.P277021522894510604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357409 (A175305 (n + 1)).toNat

end

end A375981.P277021522894510604

namespace A375981

/-- `A357409(A175305(n+1))` -/
def P277021522894510604.Spec : Prop :=
  ∀ n, P277021522894510604.a n = A375981 n

end A375981

/-! ## A375981.P8672339270511942510

`∑[A200651(∑[A370169(n)])]`
-/

namespace A375981.P8672339270511942510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200651 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375981.P8672339270511942510

namespace A375981

/-- `∑[A200651(∑[A370169(n)])]` -/
def P8672339270511942510.Spec : Prop :=
  ∀ n, P8672339270511942510.a n = A375981 n

end A375981

/-! ## A375981.P5895934633984971458

`∑[row(A002963(A032132(n+1)))]`
-/

namespace A375981.P5895934633984971458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A002963 (A032132 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375981.P5895934633984971458

namespace A375981

/-- `∑[row(A002963(A032132(n+1)))]` -/
def P5895934633984971458.Spec : Prop :=
  ∀ n, (P5895934633984971458.a n : ℤ) = A375981 n

end A375981

/-! ## A375981.P10072277023198330070

`∑[A000120(A289653(n+1)+1)]`
-/

namespace A375981.P10072277023198330070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289653 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375981.P10072277023198330070

namespace A375981

/-- `∑[A000120(A289653(n+1)+1)]` -/
def P10072277023198330070.Spec : Prop :=
  ∀ n, P10072277023198330070.a n = A375981 n

end A375981

/-!
# A375982: Number of subsets of {1,2,...,n} such that no two elements differ by 2, 3, or 5.

The programs for A375982, the canonical program `A375982.P8431970366474756801` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375982 has offset 0).

The definition of A375982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375982.P8431970366474756801

`ogf((1+x+2x^2+2x^3+x^4+2x^5-x^7-x^8-x^9-x^10)/(1-x-x^4+x^5-x^6-x^7+x^11))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375982

/-- `ogf((1+x+2x^2+2x^3+x^4+2x^5-x^7-x^8-x^9-x^10)/(1-x-x^4+x^5-x^6-x^7+x^11))` -/
def P8431970366474756801.Spec : Prop :=
  ∀ n, P8431970366474756801.a n = A375982 n

theorem P8431970366474756801.correct : P8431970366474756801.Spec := by
  intro n
  simp only [A375982]

end A375982

/-! ## A375982.P16944150744823950502

`∑[A163352(∑[A336022(n+1)])]`
-/

namespace A375982.P16944150744823950502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336022 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375982.P16944150744823950502

namespace A375982

/-- `∑[A163352(∑[A336022(n+1)])]` -/
def P16944150744823950502.Spec : Prop :=
  ∀ n, P16944150744823950502.a n = A375982 n

end A375982

/-!
# A375983: Number of subsets of {1,2,...,n} such that no two elements differ by 2, 4, or 5.

The programs for A375983, the canonical program `A375983.P8616890972294068502` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375983 has offset 0).

The definition of A375983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375983.P13820092449939639798

`ogf((1+x+2x^2+x^3+2x^4+x^5-x^7-x^8-x^9)/(1-x-x^3+x^4-x^6-x^7+x^10))`
-/

namespace A375983.P13820092449939639798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 1, 2, 1, 0, -1, -1, -1] [1, -1, 0, -1, 1, 0, -1, -1, 0, 0, 1] n

end

end A375983.P13820092449939639798

namespace A375983

/-- `ogf((1+x+2x^2+x^3+2x^4+x^5-x^7-x^8-x^9)/(1-x-x^3+x^4-x^6-x^7+x^10))` -/
def P13820092449939639798.Spec : Prop :=
  ∀ n, P13820092449939639798.a n = A375983 n

end A375983

/-! ## A375983.P8616890972294068502

`a(n-1)+a(n-3)-a(n-4)+a(n-6)+a(n-7)-a(n-10)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=9, a(5)=12, a(6)=15, a(7)=20, a(8)=28, a(9)=40`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375983

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-6)+a(n-7)-a(n-10)` -/
def P8616890972294068502.Spec : Prop :=
  ∀ n, P8616890972294068502.a n = A375983 n

theorem P8616890972294068502.correct : P8616890972294068502.Spec := by
  intro n
  simp only [A375983]

end A375983

/-! ## A375983.P7623374561832999388

`A347623(∑[∑[A053445(n)]])`
-/

namespace A375983.P7623374561832999388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375983.P7623374561832999388

namespace A375983

/-- `A347623(∑[∑[A053445(n)]])` -/
def P7623374561832999388.Spec : Prop :=
  ∀ n, P7623374561832999388.a n = A375983 n

end A375983

/-! ## A375983.P33275003958600929

`∑[A070080(A382181(n)+3)]`
-/

namespace A375983.P33275003958600929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (A382181 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375983.P33275003958600929

namespace A375983

/-- `∑[A070080(A382181(n)+3)]` -/
def P33275003958600929.Spec : Prop :=
  ∀ n, P33275003958600929.a n = A375983 n

end A375983

/-! ## A375983.P18276728191405706245

`∑[∑[A037856(A087110(n+3))]]`
-/

namespace A375983.P18276728191405706245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A087110 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375983.P18276728191405706245

namespace A375983

/-- `∑[∑[A037856(A087110(n+3))]]` -/
def P18276728191405706245.Spec : Prop :=
  ∀ n, P18276728191405706245.a n = A375983 n

end A375983

/-!
# A375984: Number of subsets of {1,2,...,n} such that no two elements differ by 3, 4, or 5.

The programs for A375984, the canonical program `A375984.P2292174793063052379` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375984 has offset 0).

The definition of A375984 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375984.P5826077828316890559

`ogf((1+x+2x^2+4x^3+4x^4+4x^5+3x^6+2x^7)/(1-x-x^6-x^7-2x^8))`
-/

namespace A375984.P5826077828316890559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 4, 4, 4, 3, 2] [1, -1, 0, 0, 0, 0, -1, -1, -2] n

end

end A375984.P5826077828316890559

namespace A375984

/-- `ogf((1+x+2x^2+4x^3+4x^4+4x^5+3x^6+2x^7)/(1-x-x^6-x^7-2x^8))` -/
def P5826077828316890559.Spec : Prop :=
  ∀ n, P5826077828316890559.a n = A375984 n

end A375984

/-! ## A375984.P2292174793063052379

`a(n-1)+a(n-6)+a(n-7)+2*a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=12, a(5)=16, a(6)=20, a(7)=25`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375984

/-- `a(n-1)+a(n-6)+a(n-7)+2*a(n-8)` -/
def P2292174793063052379.Spec : Prop :=
  ∀ n, (P2292174793063052379.a n : ℤ) = A375984 n

theorem P2292174793063052379.correct : P2292174793063052379.Spec := by
  intro n
  simp only [A375984]

end A375984

/-! ## A375984.P17467665124885548224

`A286044(A002805(n+1))+A160408(n+1)`
-/

namespace A375984.P17467665124885548224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286044 (A002805 (n + 1)).toNat + A160408 (n + 1)

end

end A375984.P17467665124885548224

namespace A375984

/-- `A286044(A002805(n+1))+A160408(n+1)` -/
def P17467665124885548224.Spec : Prop :=
  ∀ n, P17467665124885548224.a n = A375984 n

end A375984

/-! ## A375984.P2219949313217449066

`A376665(∑[∑[A275973(n+1)]])`
-/

namespace A375984.P2219949313217449066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376665 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375984.P2219949313217449066

namespace A375984

/-- `A376665(∑[∑[A275973(n+1)]])` -/
def P2219949313217449066.Spec : Prop :=
  ∀ n, P2219949313217449066.a n = A375984 n

end A375984

/-! ## A375984.P2381022486212489010

`∑[A179751(∏[A171528(n+1)])]`
-/

namespace A375984.P2381022486212489010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171528 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179751 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375984.P2381022486212489010

namespace A375984

/-- `∑[A179751(∏[A171528(n+1)])]` -/
def P2381022486212489010.Spec : Prop :=
  ∀ n, P2381022486212489010.a n = A375984 n

end A375984

/-!
# A375985: Number of subsets of {1,2,...,n} such that no two elements differ by 1, 3, 4, or 5.

The programs for A375985, the canonical program `A375985.P12001066988126278054` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375985 has offset 0).

The definition of A375985 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375985.P17667769860596151497

`ogf((1+x+x^2+2x^3+2x^4+2x^5+x^6+x^7)/(1-x-x^6-x^8))`
-/

namespace A375985.P17667769860596151497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 2, 2, 2, 1, 1] [1, -1, 0, 0, 0, 0, -1, 0, -1] n

end

end A375985.P17667769860596151497

namespace A375985

/-- `ogf((1+x+x^2+2x^3+2x^4+2x^5+x^6+x^7)/(1-x-x^6-x^8))` -/
def P17667769860596151497.Spec : Prop :=
  ∀ n, P17667769860596151497.a n = A375985 n

end A375985

/-! ## A375985.P12001066988126278054

`a(n-1)+a(n-6)+a(n-8)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=9, a(6)=11, a(7)=14`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375985

/-- `a(n-1)+a(n-6)+a(n-8)` -/
def P12001066988126278054.Spec : Prop :=
  ∀ n, (P12001066988126278054.a n : ℤ) = A375985 n

theorem P12001066988126278054.correct : P12001066988126278054.Spec := by
  intro n
  simp only [A375985]

end A375985

/-! ## A375985.P8498814903701412089

`∑[∑[A160381(A188775(n+1))]]`
-/

namespace A375985.P8498814903701412089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (A188775 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A375985.P8498814903701412089

namespace A375985

/-- `∑[∑[A160381(A188775(n+1))]]` -/
def P8498814903701412089.Spec : Prop :=
  ∀ n, P8498814903701412089.a n = A375985 n

end A375985

/-! ## A375985.P588469401699280466

`A293230(n)-A124762(A201625(n+1))`
-/

namespace A375985.P588469401699280466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293230 n - A124762 (A201625 (n + 1)).toNat

end

end A375985.P588469401699280466

namespace A375985

/-- `A293230(n)-A124762(A201625(n+1))` -/
def P588469401699280466.Spec : Prop :=
  ∀ n, P588469401699280466.a n = A375985 n

end A375985

/-! ## A375985.P3505932532593702999

`A000196(A000196(n)+∑[A018547(n+2)])`
-/

namespace A375985.P3505932532593702999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000196 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A375985.P3505932532593702999

namespace A375985

/-- `A000196(A000196(n)+∑[A018547(n+2)])` -/
def P3505932532593702999.Spec : Prop :=
  ∀ n, P3505932532593702999.a n = A375985 n

end A375985

/-!
# A375988: Expansion of e.g.f. (1 + 3 * log(1 - x))^(4/3).

The programs for A375988, there is no canonical definition to state claims against.
-/

/-! ## A375988.P331708335931575879

`A370382(a(n-1))` with `a(0)=1, a(1)=-4, a(2)=0, a(3)=12`
-/

namespace A375988.P331708335931575879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 0, 12] fun n a =>
  A370382 (a (n - 1)).toNat

end

end A375988.P331708335931575879

/-!
# A375989: Expansion of e.g.f. (1 + 3 * log(1 - x))^(5/3).

The programs for A375989, there is no canonical definition to state claims against.
-/

/-! ## A375989.P4085271392796133269

`(5+A051903(A276086(a(n-1)+1)))*a(n-1)` with `a(0)=1, a(1)=-5, a(2)=5`
-/

namespace A375989.P4085271392796133269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -5, 5] fun n a =>
  (5 + A051903 (A276086 (a (n - 1) + 1).toNat).toNat) * a (n - 1)

end

end A375989.P4085271392796133269

/-!
# A375992: Expansion of e.g.f. (4 - 3 * exp(x))^(4/3).

The programs for A375992, there is no canonical definition to state claims against.
-/

/-! ## A375992.P17603655512391942349

`A196085(a(n-1)+n²)` with `a(0)=1, a(1)=-4, a(2)=0`
-/

namespace A375992.P17603655512391942349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -4, 0] fun n a =>
  A196085 (a (n - 1) + (n ^ 2 : ℤ)).toNat

end

end A375992.P17603655512391942349

/-!
# A375993: Expansion of e.g.f. (4 - 3 * exp(x))^(5/3).

The programs for A375993, there is no canonical definition to state claims against.
-/

/-! ## A375993.P10350009227400834719

`A219973(n)+A056141(A047701(2*(n+2)))`
-/

namespace A375993.P10350009227400834719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219973 n + A056141 (A047701 (2 * (n + 2))).toNat

end

end A375993.P10350009227400834719

/-!
# A375995: Number of subwords of the form UUUU in nondecreasing Dyck paths of length 2n.

The programs for A375995, the canonical program `A375995.P4901459552373564344` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375995 has offset 0).

The definition of A375995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A375995.P4901459552373564344

`ogf((x^4+x^5-x^6)/(1-6x+11x^2-6x^3+x^4))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A375995

/-- `ogf((x^4+x^5-x^6)/(1-6x+11x^2-6x^3+x^4))` -/
def P4901459552373564344.Spec : Prop :=
  ∀ n, P4901459552373564344.a n = A375995 n

theorem P4901459552373564344.correct : P4901459552373564344.Spec := by
  intro n
  simp only [A375995]

end A375995

/-! ## A375995.P15161825320857366283

`A127036(A293064(n))`
-/

namespace A375995.P15161825320857366283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127036 (A293064 n).toNat

end

end A375995.P15161825320857366283

namespace A375995

/-- `A127036(A293064(n))` -/
def P15161825320857366283.Spec : Prop :=
  ∀ n, P15161825320857366283.a n = A375995 n

end A375995

/-! ## A375995.P13913408739573620464

`A065719(A129369(n))`
-/

namespace A375995.P13913408739573620464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A129369 n).toNat

end

end A375995.P13913408739573620464

namespace A375995

/-- `A065719(A129369(n))` -/
def P13913408739573620464.Spec : Prop :=
  ∀ n, P13913408739573620464.a n = A375995 n

end A375995

/-! ## A375995.P13945905624132972561

`A165927(A217699(n))`
-/

namespace A375995.P13945905624132972561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165927 (A217699 n).toNat

end

end A375995.P13945905624132972561

namespace A375995

/-- `A165927(A217699(n))` -/
def P13945905624132972561.Spec : Prop :=
  ∀ n, P13945905624132972561.a n = A375995 n

end A375995

/-!
# A375996: Number of integers y > 0 such that y < (n/2+x)*sqrt(3) and y < (n/2-x)*sqrt(3).

The programs for A375996, there is no canonical definition to state claims against.
-/

/-! ## A375996.P5337186366029748483

`floor(Δ[A028310(n^3)]/7)`
-/

namespace A375996.P5337186366029748483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 7⌋

end

end A375996.P5337186366029748483

/-! ## A375996.P8077279963638192150

`floor(Δ[A077752(n^3)^3]/7)`
-/

namespace A375996.P8077279963638192150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077752 (n ^ 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 7⌋

end

end A375996.P8077279963638192150

/-! ## A375996.P12493995493832426088

`floor((A003215(n)*A296121(A106856(3*n+2))+1)/7)`
-/

namespace A375996.P12493995493832426088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003215 n * A296121 (A106856 (3 * n + 2)).toNat + 1 : ℚ) / 7⌋

end

end A375996.P12493995493832426088

/-! ## A375996.P4257361234349370708

`A333348(A045943(n))%A004068(A004068(n+2))`
-/

namespace A375996.P4257361234349370708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333348 (A045943 n).toNat) (A004068 (A004068 (n + 2)).toNat)

end

end A375996.P4257361234349370708

/-! ## A375996.P6081635846917527810

`floor((A003215(n)*A296121(A005471(n+1))+1)/7)`
-/

namespace A375996.P6081635846917527810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003215 n * A296121 (A005471 (n + 1)).toNat + 1 : ℚ) / 7⌋

end

end A375996.P6081635846917527810

/-!
# A375999: Narayana numbers (A001263), sorted, duplicates removed.

The programs for A375999, the canonical program `A375999.P7786675138920784206` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A375999 has offset 1).

The definition of A375999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A375999.P7786675138920784206

`lt[0, char[A001263(n+1)]]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A375999

/-- `lt[0, char[A001263(n+1)]]` -/
def P7786675138920784206.Spec : Prop :=
  ∀ n, (P7786675138920784206.a n : ℤ) = A375999 (n + 1)

theorem P7786675138920784206.correct : P7786675138920784206.Spec := by
  intro n
  simp only [A375999, Nat.add_sub_cancel]

end A375999

/-! ## A375999.P2385429972706798155

`eq[1, char[A001263(n+2)]]`
-/

namespace A375999.P2385429972706798155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A375999.P2385429972706798155

namespace A375999

/-- `eq[1, char[A001263(n+2)]]` -/
def P2385429972706798155.Spec : Prop :=
  ∀ n, (P2385429972706798155.a n : ℤ) = A375999 (n + 1)

end A375999

/-! ## A375999.P542994146244765786

`comp[comp[A001263(n+5)]-1]+1`
-/

namespace A375999.P542994146244765786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 5)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A375999.P542994146244765786

namespace A375999

/-- `comp[comp[A001263(n+5)]-1]+1` -/
def P542994146244765786.Spec : Prop :=
  ∀ n, (P542994146244765786.a n : ℤ) = A375999 (n + 1)

end A375999

/-! ## A375999.P10876086142982299328

`comp[A254667(comp[A001263(n+1)])]`
-/

namespace A375999.P10876086142982299328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375999.P10876086142982299328

namespace A375999

/-- `comp[A254667(comp[A001263(n+1)])]` -/
def P10876086142982299328.Spec : Prop :=
  ∀ n, (P10876086142982299328.a n : ℤ) = A375999 (n + 1)

end A375999

/-! ## A375999.P17697442920121807938

`comp[comp[A001263(n+1)]%A076805(n+1)]`
-/

namespace A375999.P17697442920121807938
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) (A076805 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A375999.P17697442920121807938

namespace A375999

/-- `comp[comp[A001263(n+1)]%A076805(n+1)]` -/
def P17697442920121807938.Spec : Prop :=
  ∀ n, (P17697442920121807938.a n : ℤ) = A375999 (n + 1)

end A375999

