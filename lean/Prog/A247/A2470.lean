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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
# A247000: Maximal number of palindromes in a circular binary word of length n.

The programs for A247000, there is no canonical definition to state claims against.
-/

/-! ## A247000.P1698970067045931442

`floor(sqrt(∑[A358229(3*n+1)]))`
-/

namespace A247000.P1698970067045931442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358229 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247000.P1698970067045931442

/-! ## A247000.P6480947859481927305

`floor(∑[root(A134769(n+1), 12)])`
-/

namespace A247000.P6480947859481927305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A134769 (n + 1) : ℝ) ^ (1 / (12 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A247000.P6480947859481927305

/-! ## A247000.P1992233068325961541

`A070939(A117824(n))+n`
-/

namespace A247000.P1992233068325961541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A117824 n).toNat + (n : ℤ)

end

end A247000.P1992233068325961541

/-! ## A247000.P18133884225993149217

`A039836(A337334(n))+n`
-/

namespace A247000.P18133884225993149217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A337334 n).toNat + (n : ℤ)

end

end A247000.P18133884225993149217

/-! ## A247000.P17355193745596353698

`∑[A160385(A278703(4*(n+1)))]`
-/

namespace A247000.P17355193745596353698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A278703 (4 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247000.P17355193745596353698

/-!
# A247001: A246335(2^n-1).

The programs for A247001, there is no canonical definition to state claims against.
-/

/-! ## A247001.P15352355672918317948

`A246335(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247001.P15352355672918317948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246335 (2 ^ n - 1)

end

end A247001.P15352355672918317948

/-!
# A247002: A164982(2^n).

The programs for A247002, there is no canonical definition to state claims against.
-/

/-! ## A247002.P6309638851422545124

`A164982(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247002.P6309638851422545124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164982 (2 ^ n)

end

end A247002.P6309638851422545124

/-! ## A247002.P14071113563126581031

`record[A164982(A001316(n))]`
-/

namespace A247002.P14071113563126581031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164982 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247002.P14071113563126581031

/-!
# A247004: Denominator of (n+4)/gcd(n, 4)^2, a 16-periodic sequence that associates A061037 with A106617.

The programs for A247004, the canonical program `A247004.P4723544119326151029` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247004 has offset 0).

The definition of A247004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247004.P4723544119326151029

`gcd(16, 4-n)%7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247004

/-- `gcd(16, 4-n)%7` -/
def P4723544119326151029.Spec : Prop :=
  ∀ n, (P4723544119326151029.a n : ℤ) = A247004 n

theorem P4723544119326151029.correct : P4723544119326151029.Spec := by
  intro n
  simp only [A247004]

end A247004

/-!
# A247008: Number of permutations on [n] admitting a tenth root.

The programs for A247008, there is no canonical definition to state claims against.
-/

/-! ## A247008.P15966113802191130374

`A247005(eq[10, A025581(n)])`
-/

namespace A247008.P15966113802191130374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247008.P15966113802191130374

/-! ## A247008.P2526401428386386861

`A247005(eq[11, A193739(n)])`
-/

namespace A247008.P2526401428386386861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247008.P2526401428386386861

/-! ## A247008.P6314708960174586645

`A247005(A155212(n+7)-3)`
-/

namespace A247008.P6314708960174586645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (A155212 (n + 7) - 3).toNat

end

end A247008.P6314708960174586645

/-! ## A247008.P11753196165353277902

`A247005(eq[10, A144257(n+1)])`
-/

namespace A247008.P11753196165353277902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247008.P11753196165353277902

/-! ## A247008.P2751058338852321033

`A247005(eq[11, A004736(n+1)])`
-/

namespace A247008.P2751058338852321033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247008.P2751058338852321033

/-!
# A247009: Number of permutations on [n] that are the n-th power of a permutation.

The programs for A247009, there is no canonical definition to state claims against.
-/

/-! ## A247009.P6901024367039231821

`A247005(∑[4*n])`
-/

namespace A247009.P6901024367039231821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247009.P6901024367039231821

/-! ## A247009.P9700695985956293936

`or(A000007(n), A247005(A046092(n)))`
-/

namespace A247009.P9700695985956293936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A247005 (A046092 n).toNat)

end

end A247009.P9700695985956293936

/-! ## A247009.P1560820579578385748

`A000041(A094497(n))*A247005(A046092(n))`
-/

namespace A247009.P1560820579578385748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A094497 n).toNat * A247005 (A046092 n).toNat

end

end A247009.P1560820579578385748

/-! ## A247009.P494250386838123492

`A001221(A067829(n+2))*A247005(A046092(n))`
-/

namespace A247009.P494250386838123492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A067829 (n + 2)).toNat * A247005 (A046092 n).toNat

end

end A247009.P494250386838123492

/-! ## A247009.P12007735101227293224

`A001221(A028815(n+1)-1)*A247005(A046092(n))`
-/

namespace A247009.P12007735101227293224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A028815 (n + 1) - 1).toNat * A247005 (A046092 n).toNat

end

end A247009.P12007735101227293224

/-!
# A247010: Primes p such that (p-3)/2 and 2*p+3 are both prime.

The programs for A247010, there is no canonical definition to state claims against.
-/

/-! ## A247010.P3271510516661147687

`2*A023242(n+1)+3`
-/

namespace A247010.P3271510516661147687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023242 (n + 1) + 3

end

end A247010.P3271510516661147687

/-! ## A247010.P6699886173027974566

`p?[A023216(n+1)+A023216(n+1)+3]`
-/

namespace A247010.P6699886173027974566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1) + (A023216 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247010.P6699886173027974566

/-! ## A247010.P2984762532182164213

`∩[A023204(n+1), A089531(n+1)]`
-/

namespace A247010.P2984762532182164213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247010.P2984762532182164213

/-! ## A247010.P14877315137247995932

`∩[A023204(n+1), A129069(n+1)]`
-/

namespace A247010.P14877315137247995932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247010.P14877315137247995932

/-! ## A247010.P11272986552659629147

`A159482(A023242(n+1)+3)`
-/

namespace A247010.P11272986552659629147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159482 (A023242 (n + 1) + 3).toNat

end

end A247010.P11272986552659629147

/-! ## A247010.P16154374293282013172

`A070846(A023242(n+1)+1)`
-/

namespace A247010.P16154374293282013172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A023242 (n + 1) + 1).toNat

end

end A247010.P16154374293282013172

/-! ## A247010.P15461744026972501625

`∩[A067076(n+1), A089531(n+1)]`
-/

namespace A247010.P15461744026972501625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247010.P15461744026972501625

/-! ## A247010.P6773217966613989883

`A020482(A023242(n+1)+3)`
-/

namespace A247010.P6773217966613989883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A023242 (n + 1) + 3).toNat

end

end A247010.P6773217966613989883

/-! ## A247010.P9017965919824734665

`A005818(A023242(n+1))`
-/

namespace A247010.P9017965919824734665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (A023242 (n + 1)).toNat

end

end A247010.P9017965919824734665

/-! ## A247010.P5699779119043745315

`A060308(A023242(n+1)+2)`
-/

namespace A247010.P5699779119043745315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A023242 (n + 1) + 2).toNat

end

end A247010.P5699779119043745315

/-!
# A247011: Numbers n for which A242719(n) = (prime(n) + 2)^2 + 1.

The programs for A247011, there is no canonical definition to state claims against.
-/

/-! ## A247011.P12341514676184182627

`A340770(n+3)-A296082(A079848(n+1))`
-/

namespace A247011.P12341514676184182627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340770 (n + 3) - A296082 (A079848 (n + 1)).toNat

end

end A247011.P12341514676184182627

/-! ## A247011.P2876070558103952226

`A000720(A128550(n+3))%A088510(n+1)²`
-/

namespace A247011.P2876070558103952226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A128550 (n + 3)).toNat) (A088510 (n + 1) ^ 2)

end

end A247011.P2876070558103952226

/-! ## A247011.P3059336564114477816

`A000720(A128550(n+3))+C(n, A250216(n+1))`
-/

namespace A247011.P3059336564114477816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A128550 (n + 3)).toNat + (Nat.choose n (A250216 (n + 1)).toNat : ℤ)

end

end A247011.P3059336564114477816

/-! ## A247011.P9978688280390001854

`A000720(A128550(n+3))%A262149(A341291(n))`
-/

namespace A247011.P9978688280390001854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A128550 (n + 3)).toNat) (A262149 (A341291 n).toNat)

end

end A247011.P9978688280390001854

/-! ## A247011.P16127488221706416964

`A143759(A049450(n+2))+A000720(A128550(n+3))`
-/

namespace A247011.P16127488221706416964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143759 (A049450 (n + 2)).toNat + A000720 (A128550 (n + 3)).toNat

end

end A247011.P16127488221706416964

/-! ## A247011.P17520717260810630094

`A001222(A092195(n+1))*A000720(A128550(n+3))`
-/

namespace A247011.P17520717260810630094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A092195 (n + 1)).toNat * A000720 (A128550 (n + 3)).toNat

end

end A247011.P17520717260810630094

/-! ## A247011.P15594202603413438352

`A340770(n+3)-A000041(A000038(n)*A339166(n))`
-/

namespace A247011.P15594202603413438352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340770 (n + 3) - A000041 (A000038 n * A339166 n).toNat

end

end A247011.P15594202603413438352

/-! ## A247011.P14810985151382600229

`A340770(n+3)-A014963(A318262(n+1))`
-/

namespace A247011.P14810985151382600229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340770 (n + 3) - A014963 (A318262 (n + 1)).toNat

end

end A247011.P14810985151382600229

/-! ## A247011.P10179198428812254330

`A000720(A128550(n+3))*A161381(A057944(n))`
-/

namespace A247011.P10179198428812254330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A128550 (n + 3)).toNat * A161381 (A057944 n).toNat

end

end A247011.P10179198428812254330

/-!
# A247013: Consider the prime factors, with multiplicity, in ascending order, of a composite number not ending in 0. Take their sum and repeat the process deleting the minimum number and adding the previous sum. The sequence lists the numbers that after some iterations reach a sum equal to the reverse of themselves.

The programs for A247013, there is no canonical definition to state claims against.
-/

/-! ## A247013.P5833714194203098537

`A108631(A283603(n))`
-/

namespace A247013.P5833714194203098537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108631 (A283603 n).toNat

end

end A247013.P5833714194203098537

/-!
# A247014: Number of binary centrosymmetric matrices of size n X n.

The programs for A247014, the canonical program `A247014.P13063591398842416797` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247014 has offset 0).

The definition of A247014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247014.P13063591398842416797

`2^A000982(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247014

/-- `2^A000982(n)` -/
def P13063591398842416797.Spec : Prop :=
  ∀ n, P13063591398842416797.a n = (A247014 n : ℚ)

end A247014

/-! ## A247014.P14546052727423867800

`2^ceil(n²/2)`
-/

namespace A247014.P14546052727423867800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n ^ 2 : ℚ) / 2⌉ : ℤ)

end

end A247014.P14546052727423867800

namespace A247014

/-- `2^ceil(n²/2)` -/
def P14546052727423867800.Spec : Prop :=
  ∀ n, P14546052727423867800.a n = (A247014 n : ℚ)

end A247014

/-! ## A247014.P18092219907637887426

`∏[ceil(2^or(1, n-1))]`
-/

namespace A247014.P18092219907637887426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247014.P18092219907637887426

namespace A247014

/-- `∏[ceil(2^or(1, n-1))]` -/
def P18092219907637887426.Spec : Prop :=
  ∀ n, P18092219907637887426.a n = A247014 n

end A247014

/-! ## A247014.P11924627071623734151

`∏[4*a(n-2)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A247014.P11924627071623734151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A247014.P11924627071623734151

namespace A247014

/-- `∏[4*a(n-2)]` -/
def P11924627071623734151.Spec : Prop :=
  ∀ n, (P11924627071623734151.a n : ℤ) = A247014 n

end A247014

/-! ## A247014.P4030455682447497124

`2*2^∑[or(1, n-1)]`
-/

namespace A247014.P4030455682447497124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A247014.P4030455682447497124

namespace A247014

/-- `2*2^∑[or(1, n-1)]` -/
def P4030455682447497124.Spec : Prop :=
  ∀ n, P4030455682447497124.a n = (A247014 n : ℚ)

end A247014

/-!
# A247015: Number of integers x smaller than n and that satisfy sigma(x)/x > sigma(n)/n where sigma is the sum of divisors.

The programs for A247015, there is no canonical definition to state claims against.
-/

/-! ## A247015.P8836120588904749797

`A025581(eq[A002024(n+1), A256440(n+1)])`
-/

namespace A247015.P8836120588904749797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A247015.P8836120588904749797

/-! ## A247015.P14887312511832109697

`A241972(n+1)-A336562((n+1)^A010121(n²))`
-/

namespace A247015.P14887312511832109697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (n + 1) - A336562 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A010121 (n ^ 2) : ℤ))).toNat

end

end A247015.P14887312511832109697

/-! ## A247015.P3594261634507403104

`A241972(A187829(n+1))-A336562(n+1)`
-/

namespace A247015.P3594261634507403104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (A187829 (n + 1)).toNat - A336562 (n + 1)

end

end A247015.P3594261634507403104

/-! ## A247015.P17942941840811983712

`xor(A241972(n+1), A336562(A187829(n+1)))`
-/

namespace A247015.P17942941840811983712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A241972 (n + 1)) (A336562 (A187829 (n + 1)).toNat)

end

end A247015.P17942941840811983712

/-! ## A247015.P9099534972738877430

`A241972(A187829(n+1))-A004526(A250261(n))`
-/

namespace A247015.P9099534972738877430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241972 (A187829 (n + 1)).toNat - A004526 (A250261 n).toNat

end

end A247015.P9099534972738877430

/-!
# A247016: Triangular numbers A000217 composed of only curved digits {0, 2, 3, 5, 6, 8, 9}.

The programs for A247016, there is no canonical definition to state claims against.
-/

/-! ## A247016.P6323052643424111764

`∩[A028374(n+1), A000217(n)]`
-/

namespace A247016.P6323052643424111764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247016.P6323052643424111764

/-! ## A247016.P18180148608705970618

`∩[A028374(n+1), A253145(n)]`
-/

namespace A247016.P18180148608705970618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247016.P18180148608705970618

/-! ## A247016.P2063447588784488687

`eq[n, A222242(A222224(A049780(n)))]`
-/

namespace A247016.P2063447588784488687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 (A222224 (A049780 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247016.P2063447588784488687

/-! ## A247016.P11962861982141172245

`eq[n, A245300(A222224(A222221(n)))]`
-/

namespace A247016.P11962861982141172245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 (A222224 (A222221 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247016.P11962861982141172245

/-! ## A247016.P92693725975529653

`record[A256697(A028374(n+1))]`
-/

namespace A247016.P92693725975529653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256697 (A028374 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247016.P92693725975529653

/-!
# A247018: Numbers of the form 3*z^2 + z + 3 for some integer z.

The programs for A247018, the canonical program `A247018.P7588788488724441560` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247018 has offset 1).

The definition of A247018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247018.P7588788488724441560

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=3, a(1)=5, a(2)=7, a(3)=13, a(4)=17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247018

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P7588788488724441560.Spec : Prop :=
  ∀ n, P7588788488724441560.a n = A247018 (n + 1)

theorem P7588788488724441560.correct : P7588788488724441560.Spec := by
  intro n
  simp only [A247018, Nat.add_sub_cancel]

end A247018

/-! ## A247018.P2719971460986888171

`∑[lcm(2, n)]+3`
-/

namespace A247018.P2719971460986888171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A247018.P2719971460986888171

namespace A247018

/-- `∑[lcm(2, n)]+3` -/
def P2719971460986888171.Spec : Prop :=
  ∀ n, (P2719971460986888171.a n : ℤ) = A247018 (n + 1)

end A247018

/-! ## A247018.P3242243306500859334

`2*∑[gcd(n, ∑[n])]+3`
-/

namespace A247018.P3242243306500859334
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A247018.P3242243306500859334

namespace A247018

/-- `2*∑[gcd(n, ∑[n])]+3` -/
def P3242243306500859334.Spec : Prop :=
  ∀ n, (P3242243306500859334.a n : ℤ) = A247018 (n + 1)

end A247018

/-! ## A247018.P8785476115760839057

`∑[n*(n%2+1)]+3`
-/

namespace A247018.P8785476115760839057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A247018.P8785476115760839057

namespace A247018

/-- `∑[n*(n%2+1)]+3` -/
def P8785476115760839057.Spec : Prop :=
  ∀ n, (P8785476115760839057.a n : ℤ) = A247018 (n + 1)

end A247018

/-! ## A247018.P11709122631245563088

`Δ[n*floor((n/2)²)]+3`
-/

namespace A247018.P11709122631245563088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A247018.P11709122631245563088

namespace A247018

/-- `Δ[n*floor((n/2)²)]+3` -/
def P11709122631245563088.Spec : Prop :=
  ∀ n, P11709122631245563088.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P9286864863765871838

`∑[C(n, a(n-1))+n]` with `a(0)=3, a(1)=2, a(2)=2`
-/

namespace A247018.P9286864863765871838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2] fun n f1 =>
  Nat.choose n (f1 (n - 1)) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247018.P9286864863765871838

namespace A247018

/-- `∑[C(n, a(n-1))+n]` -/
def P9286864863765871838.Spec : Prop :=
  ∀ n, (P9286864863765871838.a n : ℤ) = A247018 (n + 1)

end A247018

/-! ## A247018.P14592498029371136711

`∑[n*gcd(1-n, a(n-2))]` with `a(0)=3, a(1)=2`
-/

namespace A247018.P14592498029371136711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  n * Int.gcd (1 - (n : ℤ)) (f1 (n - 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247018.P14592498029371136711

namespace A247018

/-- `∑[n*gcd(1-n, a(n-2))]` -/
def P14592498029371136711.Spec : Prop :=
  ∀ n, (P14592498029371136711.a n : ℤ) = A247018 (n + 1)

end A247018

/-! ## A247018.P9533913018624456942

`floor(a(n-1)+n*gcd(2, n+1))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A247018.P9533913018624456942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + n * Nat.gcd 2 (n + 1)

end

end A247018.P9533913018624456942

namespace A247018

/-- `floor(a(n-1)+n*gcd(2, n+1))` -/
def P9533913018624456942.Spec : Prop :=
  ∀ n, (P9533913018624456942.a n : ℤ) = A247018 (n + 1)

end A247018

/-! ## A247018.P15293119746763266801

`∑[2*n*(n-1)/a(n-1)]` with `a(0)=3, a(1)=2`
-/

namespace A247018.P15293119746763266801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  (2 * n : ℚ) * (((n : ℤ) - 1 : ℚ) / f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247018.P15293119746763266801

namespace A247018

/-- `∑[2*n*(n-1)/a(n-1)]` -/
def P15293119746763266801.Spec : Prop :=
  ∀ n, P15293119746763266801.a n = (A247018 (n + 1) : ℚ)

end A247018

/-! ## A247018.P16485363501196005540

`(A319384(n)+5)/2`
-/

namespace A247018.P16485363501196005540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319384 n + 5 : ℚ) / 2

end

end A247018.P16485363501196005540

namespace A247018

/-- `(A319384(n)+5)/2` -/
def P16485363501196005540.Spec : Prop :=
  ∀ n, P16485363501196005540.a n = (A247018 (n + 1) : ℚ)

end A247018

/-! ## A247018.P16541336663126811577

`or(1, A152749(n)+2)`
-/

namespace A247018.P16541336663126811577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A152749 n + 2)

end

end A247018.P16541336663126811577

namespace A247018

/-- `or(1, A152749(n)+2)` -/
def P16541336663126811577.Spec : Prop :=
  ∀ n, P16541336663126811577.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P15262701885870015188

`Δ[n*(A033638(n)+2)]`
-/

namespace A247018.P15262701885870015188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A033638 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247018.P15262701885870015188

namespace A247018

/-- `Δ[n*(A033638(n)+2)]` -/
def P15262701885870015188.Spec : Prop :=
  ∀ n, P15262701885870015188.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P3846347183482196161

`A000265(A329482(n+2)-2*n)`
-/

namespace A247018.P3846347183482196161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A329482 (n + 2) - (2 * n : ℤ)).toNat

end

end A247018.P3846347183482196161

namespace A247018

/-- `A000265(A329482(n+2)-2*n)` -/
def P3846347183482196161.Spec : Prop :=
  ∀ n, P3846347183482196161.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P9513820372075853852

`A144396(A319390(n))`
-/

namespace A247018.P9513820372075853852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A319390 n).toNat

end

end A247018.P9513820372075853852

namespace A247018

/-- `A144396(A319390(n))` -/
def P9513820372075853852.Spec : Prop :=
  ∀ n, P9513820372075853852.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P11227354643985856671

`A060747(A001318(n)+2)`
-/

namespace A247018.P11227354643985856671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A001318 n + 2).toNat

end

end A247018.P11227354643985856671

namespace A247018

/-- `A060747(A001318(n)+2)` -/
def P11227354643985856671.Spec : Prop :=
  ∀ n, P11227354643985856671.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P7266057070868430311

`A005408(∑[A026741(n)]+1)`
-/

namespace A247018.P7266057070868430311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A247018.P7266057070868430311

namespace A247018

/-- `A005408(∑[A026741(n)]+1)` -/
def P7266057070868430311.Spec : Prop :=
  ∀ n, P7266057070868430311.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P8179654387764033603

`A004273(∑[A026741(n)]+2)`
-/

namespace A247018.P8179654387764033603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A247018.P8179654387764033603

namespace A247018

/-- `A004273(∑[A026741(n)]+2)` -/
def P8179654387764033603.Spec : Prop :=
  ∀ n, P8179654387764033603.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P11744566221712920841

`A004273(A152749(n)/2+2)`
-/

namespace A247018.P11744566221712920841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A152749 n : ℚ) / 2 + 2)).toNat

end

end A247018.P11744566221712920841

namespace A247018

/-- `A004273(A152749(n)/2+2)` -/
def P11744566221712920841.Spec : Prop :=
  ∀ n, P11744566221712920841.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P18399075824551852303

`A165754(A152749(n))`
-/

namespace A247018.P18399075824551852303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A152749 n).toNat

end

end A247018.P18399075824551852303

namespace A247018

/-- `A165754(A152749(n))` -/
def P18399075824551852303.Spec : Prop :=
  ∀ n, P18399075824551852303.a n = A247018 (n + 1)

end A247018

/-! ## A247018.P12808714772661345135

`A109613(2*(A001318(n)+1))`
-/

namespace A247018.P12808714772661345135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * (A001318 n + 1)).toNat

end

end A247018.P12808714772661345135

namespace A247018

/-- `A109613(2*(A001318(n)+1))` -/
def P12808714772661345135.Spec : Prop :=
  ∀ n, P12808714772661345135.a n = A247018 (n + 1)

end A247018

/-!
# A247021: Triangular numbers composed of only digits with line segments or both line segments and curves {1, 2, 4, 5, 7}.

The programs for A247021, there is no canonical definition to state claims against.
-/

/-! ## A247021.P11921655623489356918

`∩[or(1, n)*ceil(n/2), A082741(n+1)]`
-/

namespace A247021.P11921655623489356918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247021.P11921655623489356918

/-! ## A247021.P11538884418617769164

`∩[A082741(n+1), A000217(n)]`
-/

namespace A247021.P11538884418617769164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247021.P11538884418617769164

/-! ## A247021.P12246948868591826120

`∩[A014493(n+1), A082741(n+1)]`
-/

namespace A247021.P12246948868591826120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247021.P12246948868591826120

/-! ## A247021.P16011540080162699606

`∩[A082741(n+1), A129966(n+1)]`
-/

namespace A247021.P16011540080162699606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247021.P16011540080162699606

/-! ## A247021.P2195889867924825106

`∩[A082741(n+1), A376000(n+1)]`
-/

namespace A247021.P2195889867924825106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247021.P2195889867924825106

/-!
# A247022: Integers m such that there is exactly one k < m with sigma(k)/k > sigma(m)/m, sigma(m) being the sum of the divisors of m.

The programs for A247022, there is no canonical definition to state claims against.
-/

/-! ## A247022.P11210375677975300040

`eq[1, A247015(n+1)]+1`
-/

namespace A247022.P11210375677975300040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A247022.P11210375677975300040

/-! ## A247022.P3008474768954008939

`eq[1, A247015(A028310(n))]`
-/

namespace A247022.P3008474768954008939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A247022.P3008474768954008939

/-! ## A247022.P16573454055170163648

`A000203(eq[1, A247015(n+1)])`
-/

namespace A247022.P16573454055170163648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247022.P16573454055170163648

/-! ## A247022.P4494183930842335923

`A017665(eq[1, A247015(n+1)])`
-/

namespace A247022.P4494183930842335923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247022.P4494183930842335923

/-! ## A247022.P11682549781658141129

`A048250(eq[1, A247015(n+1)])`
-/

namespace A247022.P11682549781658141129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A247022.P11682549781658141129

/-!
# A247023: Riordan array (1/(1-2*x), x*C(x)) where C(x) is the o.g.f. of Catalan numbers A000108.

The programs for A247023, there is no canonical definition to state claims against.
-/

/-! ## A247023.P8472990512157333129

`A201634(A061579(n))`
-/

namespace A247023.P8472990512157333129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 (A061579 n).toNat

end

end A247023.P8472990512157333129

/-! ## A247023.P5184776528388400771

`A201634(∑[A198954(n)-1])`
-/

namespace A247023.P5184776528388400771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247023.P5184776528388400771

/-! ## A247023.P853016954914168091

`A201634(A038722(n+1)-1)`
-/

namespace A247023.P853016954914168091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 (A038722 (n + 1) - 1).toNat

end

end A247023.P853016954914168091

/-! ## A247023.P2242086620192115406

`A201634(A002024(n+1)²-(n+1))`
-/

namespace A247023.P2242086620192115406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A247023.P2242086620192115406

/-! ## A247023.P6058229644704110728

`A201634(A038722(n+2))`
-/

namespace A247023.P6058229644704110728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 (A038722 (n + 2)).toNat

end

end A247023.P6058229644704110728

/-!
# A247025: Lengths of prefixes of the infinite string of digits repeat(1379) that are prime.

The programs for A247025, there is no canonical definition to state claims against.
-/

/-! ## A247025.P5806624946668065426

`filter[A267551(2*n), A010055(#)]`
-/

namespace A247025.P5806624946668065426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267551 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A247025.P5806624946668065426

/-!
# A247026: Number A(n,k) of endofunctions on [n] that are the k-th power of an endofunction; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A247026, there is no canonical definition to state claims against.
-/

/-! ## A247026.P878796906540667110

`A245501(n)+A000122(A244212(n+1))`
-/

namespace A247026.P878796906540667110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n + A000122 (A244212 (n + 1)).toNat

end

end A247026.P878796906540667110

/-! ## A247026.P3530244389458943837

`A245501(n)+A002448(A375705(n+1))`
-/

namespace A247026.P3530244389458943837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 n + A002448 (A375705 (n + 1)).toNat

end

end A247026.P3530244389458943837

/-!
# A247028: Primes in tetranacci sequence A001631.

The programs for A247028, there is no canonical definition to state claims against.
-/

/-! ## A247028.P17714625689508070298

`A001631(A247027(n+1))`
-/

namespace A247028.P17714625689508070298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001631 (A247027 (n + 1)).toNat

end

end A247028.P17714625689508070298

/-!
# A247033: Numbers of the form (3^k - 3)/k.

The programs for A247033, there is no canonical definition to state claims against.
-/

/-! ## A247033.P13971671006735724779

`A000203(A080119(n+1))%A056995(n+1)`
-/

namespace A247033.P13971671006735724779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A080119 (n + 1)).toNat) (A056995 (n + 1))

end

end A247033.P13971671006735724779

/-!
# A247035: Expansion of 2*(x+1)*(x^4+6*x^3+5*x^2+6*x+1)/(x^6-18*x^3+1).

The programs for A247035, the canonical program `A247035.P773850154838743938` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247035 has offset 0).

The definition of A247035 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+14x+22x^2+22x^3+14x^4+2x^5)/(1-18x^3+x^6))` (program `A247035.P773850154838743938`, by `A247035.P773850154838743938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247035.P773850154838743938

`ogf((2+14x+22x^2+22x^3+14x^4+2x^5)/(1-18x^3+x^6))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247035

/-- `ogf((2+14x+22x^2+22x^3+14x^4+2x^5)/(1-18x^3+x^6))` -/
def P773850154838743938.Spec : Prop :=
  ∀ n, P773850154838743938.a n = A247035 n

theorem P773850154838743938.correct : P773850154838743938.Spec := by
  intro n
  simp only [A247035]

end A247035

/-! ## A247035.P17810496355780343605

`A000032(2*n+1)*A040278(2*n+1)/2`
-/

namespace A247035.P17810496355780343605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) * A040278 (2 * n + 1) : ℚ) / 2

end

end A247035.P17810496355780343605

namespace A247035

/-- `A000032(2*n+1)*A040278(2*n+1)/2` -/
def P17810496355780343605.Spec : Prop :=
  ∀ n, P17810496355780343605.a n = (A247035 n : ℚ)

end A247035

/-! ## A247035.P4631477804951013385

`A075796(n+1)%(6*A002878(n))`
-/

namespace A247035.P4631477804951013385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075796 (n + 1)) (6 * A002878 n)

end

end A247035.P4631477804951013385

namespace A247035

/-- `A075796(n+1)%(6*A002878(n))` -/
def P4631477804951013385.Spec : Prop :=
  ∀ n, P4631477804951013385.a n = A247035 n

end A247035

/-! ## A247035.P11362295948209902927

`A156279(2*n+1)-A007947(A156279(2*n+1))`
-/

namespace A247035.P11362295948209902927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156279 (2 * n + 1) - A007947 (A156279 (2 * n + 1)).toNat

end

end A247035.P11362295948209902927

namespace A247035

/-- `A156279(2*n+1)-A007947(A156279(2*n+1))` -/
def P11362295948209902927.Spec : Prop :=
  ∀ n, P11362295948209902927.a n = A247035 n

end A247035

/-! ## A247035.P11329734894352500724

`2*A129527(A002878(n))`
-/

namespace A247035.P11329734894352500724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A129527 (A002878 n).toNat

end

end A247035.P11329734894352500724

namespace A247035

/-- `2*A129527(A002878(n))` -/
def P11329734894352500724.Spec : Prop :=
  ∀ n, P11329734894352500724.a n = A247035 n

end A247035

/-!
# A247045: Triangle read by rows: T(n,k) = least number m > 0 such that m^k in base n contains exactly k distinct digits, 1 <= k <= n.

The programs for A247045, there is no canonical definition to state claims against.
-/

/-! ## A247045.P17687150301681021862

`A100910(A364914(n)+2)+A092080(n+1)`
-/

namespace A247045.P17687150301681021862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100910 (A364914 n + 2).toNat + A092080 (n + 1)

end

end A247045.P17687150301681021862

/-! ## A247045.P988275283343330365

`A131818(A129322(n+1)^A198329(n+1))`
-/

namespace A247045.P988275283343330365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (SequenceMachineLib.roundAway ((A129322 (n + 1) : ℚ) ^ (A198329 (n + 1) : ℤ))).toNat

end

end A247045.P988275283343330365

/-! ## A247045.P16428349359668716562

`A300655(A094615(n))`
-/

namespace A247045.P16428349359668716562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (A094615 n).toNat

end

end A247045.P16428349359668716562

/-! ## A247045.P1380520915457142805

`A070014(5*A013615(n))`
-/

namespace A247045.P1380520915457142805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070014 (5 * A013615 n).toNat

end

end A247045.P1380520915457142805

/-! ## A247045.P15864495523287914310

`A342753(A211788(n+1))+A193588(n)`
-/

namespace A247045.P15864495523287914310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A211788 (n + 1)).toNat + A193588 n

end

end A247045.P15864495523287914310

/-!
# A247047: Numbers k such that k^2 contains exactly 2 distinct digits and k^3 contains exactly 3 distinct digits.

The programs for A247047, there is no canonical definition to state claims against.
-/

/-! ## A247047.P12984373840080813079

`∩[A016069(n+1), A155146(n+1)]`
-/

namespace A247047.P12984373840080813079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247047.P12984373840080813079

/-! ## A247047.P2958290881306530963

`∩[eq[2, A309432(n)], A155146(n+1)]`
-/

namespace A247047.P2958290881306530963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A247047.P2958290881306530963

/-!
# A247049: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,0) to (n,k), where 0 >= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247049, the canonical program `A247049.P13080191214481174710` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247049 has offset 0).

The definition of A247049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247049.P13080191214481174710

`a(n-3)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247049

/-- `a(n-3)+a(n-6)` -/
def P13080191214481174710.Spec : Prop :=
  ∀ n, (P13080191214481174710.a n : ℤ) = A247049 n

theorem P13080191214481174710.correct : P13080191214481174710.Spec := by
  intro n
  simp only [A247049]

end A247049

/-! ## A247049.P5770557091420503001

`A212804(ceil(n/3))`
-/

namespace A247049.P5770557091420503001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 ⌈(n : ℚ) / 3⌉.toNat

end

end A247049.P5770557091420503001

namespace A247049

/-- `A212804(ceil(n/3))` -/
def P5770557091420503001.Spec : Prop :=
  ∀ n, P5770557091420503001.a n = A247049 n

end A247049

/-! ## A247049.P5219058928248310983

`A000045(abs(floor((n-1)/3)))`
-/

namespace A247049.P5219058928248310983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |⌊((n : ℤ) - 1 : ℚ) / 3⌋|.toNat

end

end A247049.P5219058928248310983

namespace A247049

/-- `A000045(abs(floor((n-1)/3)))` -/
def P5219058928248310983.Spec : Prop :=
  ∀ n, P5219058928248310983.a n = A247049 n

end A247049

/-! ## A247049.P8685908980931516289

`A247309(A105637(n))`
-/

namespace A247049.P8685908980931516289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A105637 n).toNat

end

end A247049.P8685908980931516289

namespace A247049

/-- `A247309(A105637(n))` -/
def P8685908980931516289.Spec : Prop :=
  ∀ n, P8685908980931516289.a n = A247049 n

end A247049

/-! ## A247049.P13094676124116798878

`A247309(A137719(n))`
-/

namespace A247049.P13094676124116798878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (A137719 n).toNat

end

end A247049.P13094676124116798878

namespace A247049

/-- `A247309(A137719(n))` -/
def P13094676124116798878.Spec : Prop :=
  ∀ n, P13094676124116798878.a n = A247049 n

end A247049

/-! ## A247049.P14724005189043348495

`A118658(A008615(2*n))/2`
-/

namespace A247049.P14724005189043348495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (A008615 (2 * n)).toNat : ℚ) / 2

end

end A247049.P14724005189043348495

namespace A247049

/-- `A118658(A008615(2*n))/2` -/
def P14724005189043348495.Spec : Prop :=
  ∀ n, P14724005189043348495.a n = (A247049 n : ℚ)

end A247049

/-! ## A247049.P1920497993142550901

`abs(Δ[A000045(A008611(n+1))])`
-/

namespace A247049.P1920497993142550901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A247049.P1920497993142550901

namespace A247049

/-- `abs(Δ[A000045(A008611(n+1))])` -/
def P1920497993142550901.Spec : Prop :=
  ∀ n, P1920497993142550901.a n = A247049 n

end A247049

/-! ## A247049.P8976425182399583170

`A118658(A103221(2*n+1))/2`
-/

namespace A247049.P8976425182399583170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 (A103221 (2 * n + 1)).toNat : ℚ) / 2

end

end A247049.P8976425182399583170

namespace A247049

/-- `A118658(A103221(2*n+1))/2` -/
def P8976425182399583170.Spec : Prop :=
  ∀ n, P8976425182399583170.a n = (A247049 n : ℚ)

end A247049

/-! ## A247049.P8224802565931653540

`A247050(n+3)-A247051(n)`
-/

namespace A247049.P8224802565931653540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (n + 3) - A247051 n

end

end A247049.P8224802565931653540

namespace A247049

/-- `A247050(n+3)-A247051(n)` -/
def P8224802565931653540.Spec : Prop :=
  ∀ n, P8224802565931653540.a n = A247049 n

end A247049

/-! ## A247049.P12758289627392505615

`A123736(A004396(n+1)+n²)`
-/

namespace A247049.P12758289627392505615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 (A004396 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A247049.P12758289627392505615

namespace A247049

/-- `A123736(A004396(n+1)+n²)` -/
def P12758289627392505615.Spec : Prop :=
  ∀ n, P12758289627392505615.a n = A247049 n

end A247049

/-!
# A247050: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,1) to (n,k), where 0 >= k <= 2, consisting of segments given by the vectors (,1,1), (1,2), (1,-1).

The programs for A247050, the canonical program `A247050.P18232162876544826186` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247050 has offset 0).

The definition of A247050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247050.P18232162876544826186

`2*a(n-6)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=0, a(7)=2, a(8)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247050

/-- `2*a(n-6)+a(n-9)` -/
def P18232162876544826186.Spec : Prop :=
  ∀ n, (P18232162876544826186.a n : ℤ) = A247050 n

theorem P18232162876544826186.correct : P18232162876544826186.Spec := by
  intro n
  simp only [A247050]

end A247050

/-! ## A247050.P16560120595022755932

`A000045(∑[a(n-3)²])-a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A247050.P16560120595022755932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 3)

end

end A247050.P16560120595022755932

namespace A247050

/-- `A000045(∑[a(n-3)²])-a(n-3)` -/
def P16560120595022755932.Spec : Prop :=
  ∀ n, P16560120595022755932.a n = A247050 n

end A247050

/-! ## A247050.P6405977279089409644

`A000045(∑[floor(a(n-3))])-a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A247050.P6405977279089409644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 3)

end

end A247050.P6405977279089409644

namespace A247050

/-- `A000045(∑[floor(a(n-3))])-a(n-3)` -/
def P6405977279089409644.Spec : Prop :=
  ∀ n, P6405977279089409644.a n = A247050 n

end A247050

/-! ## A247050.P13382816641329928204

`A000045(∑[A000045(a(n-3))])-a(n-3)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A247050.P13382816641329928204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  A000045 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - a (n - 3)

end

end A247050.P13382816641329928204

namespace A247050

/-- `A000045(∑[A000045(a(n-3))])-a(n-3)` -/
def P13382816641329928204.Spec : Prop :=
  ∀ n, P13382816641329928204.a n = A247050 n

end A247050

/-! ## A247050.P1396647604304594294

`A247051(n+3)`
-/

namespace A247050.P1396647604304594294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247051 (n + 3)

end

end A247050.P1396647604304594294

namespace A247050

/-- `A247051(n+3)` -/
def P1396647604304594294.Spec : Prop :=
  ∀ n, P1396647604304594294.a n = A247050 n

end A247050

/-! ## A247050.P14895667958531583875

`A247049(n)-A075193(n)%2`
-/

namespace A247050.P14895667958531583875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 n - Int.tmod (A075193 n) 2

end

end A247050.P14895667958531583875

namespace A247050

/-- `A247049(n)-A075193(n)%2` -/
def P14895667958531583875.Spec : Prop :=
  ∀ n, P14895667958531583875.a n = A247050 n

end A247050

/-!
# A247051: Rectangular array read upwards by columns: T = T(n,k) = number of paths from (0,2) to (n,k), where 0 <= k <= 2, consisting of segments given by the vectors (1,1), (1,2), (1,-1).

The programs for A247051, the canonical program `A247051.P1256998068142214065` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247051 has offset 0).

The definition of A247051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247051.P1256998068142214065

`A247049(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A247051

/-- `A247049(n)-a(n-3)` -/
def P1256998068142214065.Spec : Prop :=
  ∀ n, P1256998068142214065.a n = A247051 n

theorem P1256998068142214065.correct : P1256998068142214065.Spec := by
  intro n
  simp only [A247051]

end A247051

/-! ## A247051.P4863998840500537520

`A247050(abs(3-A028310(n)))`
-/

namespace A247051.P4863998840500537520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 |3 - A028310 n|.toNat

end

end A247051.P4863998840500537520

namespace A247051

/-- `A247050(abs(3-A028310(n)))` -/
def P4863998840500537520.Spec : Prop :=
  ∀ n, P4863998840500537520.a n = A247051 n

end A247051

/-! ## A247051.P18220522092657672483

`A247049(n+3)-A247050(n)`
-/

namespace A247051.P18220522092657672483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 (n + 3) - A247050 n

end

end A247051.P18220522092657672483

namespace A247051

/-- `A247049(n+3)-A247050(n)` -/
def P18220522092657672483.Spec : Prop :=
  ∀ n, P18220522092657672483.a n = A247051 n

end A247051

/-! ## A247051.P10276968250520049521

`A247050(n+6)-2*A247050(n)`
-/

namespace A247051.P10276968250520049521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (n + 6) - 2 * A247050 n

end

end A247051.P10276968250520049521

namespace A247051

/-- `A247050(n+6)-2*A247050(n)` -/
def P10276968250520049521.Spec : Prop :=
  ∀ n, P10276968250520049521.a n = A247051 n

end A247051

/-! ## A247051.P3022770149992810475

`A247050(n+3)-A212804(ceil(n/3))`
-/

namespace A247051.P3022770149992810475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247050 (n + 3) - A212804 ⌈(n : ℚ) / 3⌉.toNat

end

end A247051.P3022770149992810475

namespace A247051

/-- `A247050(n+3)-A212804(ceil(n/3))` -/
def P3022770149992810475.Spec : Prop :=
  ∀ n, P3022770149992810475.a n = A247051 n

end A247051

/-!
# A247052: Primes composed of only digits with line segments or both line segments and curves {1, 2, 4, 5, 7}.

The programs for A247052, the canonical program `A247052.P1782642490212678067` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247052 has offset 1).

The definition of A247052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 912 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247052.P1782642490212678067

`p?[A082741(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A247052

/-- `p?[A082741(n+1)]` -/
def P1782642490212678067.Spec : Prop :=
  ∀ n, P1782642490212678067.a n = A247052 (n + 1)

theorem P1782642490212678067.correct : P1782642490212678067.Spec := by
  intro n
  simp only [A247052, Nat.add_sub_cancel]

end A247052

/-! ## A247052.P13853729250468413710

`∩[A036962(n+1), A082741(n+1)]`
-/

namespace A247052.P13853729250468413710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P13853729250468413710

namespace A247052

/-- `∩[A036962(n+1), A082741(n+1)]` -/
def P13853729250468413710.Spec : Prop :=
  ∀ n, (P13853729250468413710.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P852558669083542447

`∩[A038611(n+1), A082741(n+1)]`
-/

namespace A247052.P852558669083542447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P852558669083542447

namespace A247052

/-- `∩[A038611(n+1), A082741(n+1)]` -/
def P852558669083542447.Spec : Prop :=
  ∀ n, (P852558669083542447.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P2232840432103423486

`∩[A038616(n+1), A082741(n+1)]`
-/

namespace A247052.P2232840432103423486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P2232840432103423486

namespace A247052

/-- `∩[A038616(n+1), A082741(n+1)]` -/
def P2232840432103423486.Spec : Prop :=
  ∀ n, (P2232840432103423486.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P8853188513735562006

`∩[A038617(n+1), A082741(n+1)]`
-/

namespace A247052.P8853188513735562006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P8853188513735562006

namespace A247052

/-- `∩[A038617(n+1), A082741(n+1)]` -/
def P8853188513735562006.Spec : Prop :=
  ∀ n, (P8853188513735562006.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P12263007995085274324

`∩[A045349(n+1), A082741(n+1)]`
-/

namespace A247052.P12263007995085274324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P12263007995085274324

namespace A247052

/-- `∩[A045349(n+1), A082741(n+1)]` -/
def P12263007995085274324.Spec : Prop :=
  ∀ n, (P12263007995085274324.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P4080499300262717406

`∩[A038614(n+1), A082741(n+1)]`
-/

namespace A247052.P4080499300262717406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P4080499300262717406

namespace A247052

/-- `∩[A038614(n+1), A082741(n+1)]` -/
def P4080499300262717406.Spec : Prop :=
  ∀ n, (P4080499300262717406.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P1554981450526644691

`∩[A038618(n+1), A082741(n+1)]`
-/

namespace A247052.P1554981450526644691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P1554981450526644691

namespace A247052

/-- `∩[A038618(n+1), A082741(n+1)]` -/
def P1554981450526644691.Spec : Prop :=
  ∀ n, (P1554981450526644691.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P14717906011204657399

`∩[A042986(n+1), A082741(n+1)]`
-/

namespace A247052.P14717906011204657399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P14717906011204657399

namespace A247052

/-- `∩[A042986(n+1), A082741(n+1)]` -/
def P14717906011204657399.Spec : Prop :=
  ∀ n, (P14717906011204657399.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P3345091260821578655

`∩[A045348(n+1), A082741(n+1)]`
-/

namespace A247052.P3345091260821578655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P3345091260821578655

namespace A247052

/-- `∩[A045348(n+1), A082741(n+1)]` -/
def P3345091260821578655.Spec : Prop :=
  ∀ n, (P3345091260821578655.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P6349898293187338884

`record[p?[A082741(2-(A030451(n)-n))]]`
-/

namespace A247052.P6349898293187338884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (2 - (A030451 n - (n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247052.P6349898293187338884

namespace A247052

/-- `record[p?[A082741(2-(A030451(n)-n))]]` -/
def P6349898293187338884.Spec : Prop :=
  ∀ n, P6349898293187338884.a n = A247052 (n + 1)

end A247052

/-! ## A247052.P8858799546125533458

`∩[A001729(n+1), A038611(n+1)]`
-/

namespace A247052.P8858799546125533458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P8858799546125533458

namespace A247052

/-- `∩[A001729(n+1), A038611(n+1)]` -/
def P8858799546125533458.Spec : Prop :=
  ∀ n, (P8858799546125533458.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P2218468397174262547

`∩[A001729(n+1), A386321(n+1)]`
-/

namespace A247052.P2218468397174262547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P2218468397174262547

namespace A247052

/-- `∩[A001729(n+1), A386321(n+1)]` -/
def P2218468397174262547.Spec : Prop :=
  ∀ n, (P2218468397174262547.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P6873980023322261165

`∩[A001729(n+1), A386341(n+1)]`
-/

namespace A247052.P6873980023322261165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P6873980023322261165

namespace A247052

/-- `∩[A001729(n+1), A386341(n+1)]` -/
def P6873980023322261165.Spec : Prop :=
  ∀ n, (P6873980023322261165.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P4167147503466771311

`∩[A001729(n+1), A386343(n+1)]`
-/

namespace A247052.P4167147503466771311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P4167147503466771311

namespace A247052

/-- `∩[A001729(n+1), A386343(n+1)]` -/
def P4167147503466771311.Spec : Prop :=
  ∀ n, (P4167147503466771311.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P4986880040597142801

`∩[A001729(n+1), A386344(n+1)]`
-/

namespace A247052.P4986880040597142801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P4986880040597142801

namespace A247052

/-- `∩[A001729(n+1), A386344(n+1)]` -/
def P4986880040597142801.Spec : Prop :=
  ∀ n, (P4986880040597142801.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P17006017248311305823

`∩[A076805(n+1), A082741(n+1)]`
-/

namespace A247052.P17006017248311305823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247052.P17006017248311305823

namespace A247052

/-- `∩[A076805(n+1), A082741(n+1)]` -/
def P17006017248311305823.Spec : Prop :=
  ∀ n, (P17006017248311305823.a n : ℤ) = A247052 (n + 1)

end A247052

/-! ## A247052.P16425636014468752835

`record[A006530(A082741(n+2))]`
-/

namespace A247052.P16425636014468752835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A082741 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247052.P16425636014468752835

namespace A247052

/-- `record[A006530(A082741(n+2))]` -/
def P16425636014468752835.Spec : Prop :=
  ∀ n, P16425636014468752835.a n = A247052 (n + 1)

end A247052

/-! ## A247052.P12114280448197351817

`record[A020639(A082741(n+3))]`
-/

namespace A247052.P12114280448197351817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A082741 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247052.P12114280448197351817

namespace A247052

/-- `record[A020639(A082741(n+3))]` -/
def P12114280448197351817.Spec : Prop :=
  ∀ n, P12114280448197351817.a n = A247052 (n + 1)

end A247052

/-! ## A247052.P4190568899129657014

`filter[A082741(n+1), A010051(#)]`
-/

namespace A247052.P4190568899129657014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A247052.P4190568899129657014

namespace A247052

/-- `filter[A082741(n+1), A010051(#)]` -/
def P4190568899129657014.Spec : Prop :=
  ∀ n, P4190568899129657014.a n = A247052 (n + 1)

end A247052

/-!
# A247053: Number of endofunctions on [n] that are the 6th power of an endofunction.

The programs for A247053, there is no canonical definition to state claims against.
-/

/-! ## A247053.P16484241090094298634

`A185726(a(n-1)+2)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A247053.P16484241090094298634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A185726 (a (n - 1) + 2).toNat

end

end A247053.P16484241090094298634

/-! ## A247053.P14065506116122374016

`A281965(A150925(n))`
-/

namespace A247053.P14065506116122374016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281965 (A150925 n).toNat

end

end A247053.P14065506116122374016

/-!
# A247055: Number of endofunctions on [n] that are the 8th power of an endofunction.

The programs for A247055, there is no canonical definition to state claims against.
-/

/-! ## A247055.P2965548324050668064

`A275385(n*(1-(∑{digits}[n, #]-n)))`
-/

namespace A247055.P2965548324050668064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275385 ((n : ℤ) * (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)))).toNat

end

end A247055.P2965548324050668064

/-! ## A247055.P8671590323885470523

`A275385(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A247055.P8671590323885470523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275385 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A247055.P8671590323885470523

/-! ## A247055.P12514042654604783202

`A275385(A051022(n))`
-/

namespace A247055.P12514042654604783202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275385 (A051022 n).toNat

end

end A247055.P12514042654604783202

/-! ## A247055.P11365640838450372176

`A275385(A349423(n))`
-/

namespace A247055.P11365640838450372176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275385 (A349423 n).toNat

end

end A247055.P11365640838450372176

/-! ## A247055.P7334391754245811949

`A275385(A004882(n+1))`
-/

namespace A247055.P7334391754245811949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275385 (A004882 (n + 1)).toNat

end

end A247055.P7334391754245811949

/-!
# A247056: Number of endofunctions on [n] that are the 9th power of an endofunction.

The programs for A247056, there is no canonical definition to state claims against.
-/

/-! ## A247056.P18109207049178569888

`A291111(n)+A245505(n)%A245252(n)`
-/

namespace A247056.P18109207049178569888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291111 n + Int.tmod (A245505 n) (A245252 n)

end

end A247056.P18109207049178569888

/-! ## A247056.P2416515379219253663

`A291111(n)+A245505(n)^A326698(n+5)`
-/

namespace A247056.P2416515379219253663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291111 n : ℚ) + (A245505 n : ℚ) ^ (A326698 (n + 5) : ℤ)

end

end A247056.P2416515379219253663

/-!
# A247057: Number of endofunctions on [n] that are the 10th power of an endofunction.

The programs for A247057, there is no canonical definition to state claims against.
-/

/-! ## A247057.P7409410457668193328

`A163328(A104420(n!))`
-/

namespace A247057.P7409410457668193328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A104420 (Nat.factorial n)).toNat

end

end A247057.P7409410457668193328

/-! ## A247057.P8521204257535180293

`A127938(A007836(n+1))`
-/

namespace A247057.P8521204257535180293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127938 (A007836 (n + 1)).toNat

end

end A247057.P8521204257535180293

/-!
# A247059: Number of endofunctions on [n] that are the n-th power of an endofunction.

The programs for A247059, there is no canonical definition to state claims against.
-/

/-! ## A247059.P4234409851682560575

`A247026(∑[4*n])`
-/

namespace A247059.P4234409851682560575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247059.P4234409851682560575

/-! ## A247059.P5136842559670646381

`A110657(A294395(n)+3)`
-/

namespace A247059.P5136842559670646381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A294395 n + 3).toNat

end

end A247059.P5136842559670646381

/-!
# A247060: Dynamic Betting Game D(n,4,1).

The programs for A247060, the canonical program `A247060.P1106024907964628196` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247060 has offset 1).

The definition of A247060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247060.P1106024907964628196

`floor(8*(n+1)/5)+2*floor(4*(n+1)/5)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247060

/-- `floor(8*(n+1)/5)+2*floor(4*(n+1)/5)` -/
def P1106024907964628196.Spec : Prop :=
  ∀ n, P1106024907964628196.a n = A247060 (n + 1)

theorem P1106024907964628196.correct : P1106024907964628196.Spec := by
  intro n
  simp only [A247060, Nat.add_sub_cancel]

end A247060

/-! ## A247060.P2515100971812940639

`∑[abs(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4, a(4)=4`
-/

namespace A247060.P2515100971812940639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P2515100971812940639

namespace A247060

/-- `∑[abs(a(n-5))]` -/
def P2515100971812940639.Spec : Prop :=
  ∀ n, (P2515100971812940639.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P6274830085292677768

`∑[dr(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4, a(4)=4`
-/

namespace A247060.P6274830085292677768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4, 4] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 5) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P6274830085292677768

namespace A247060

/-- `∑[dr(a(n-5))]` -/
def P6274830085292677768.Spec : Prop :=
  ∀ n, (P6274830085292677768.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P8357086807917301399

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A247060.P8357086807917301399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P8357086807917301399

namespace A247060

/-- `∑[floor(a(n-5))]` -/
def P8357086807917301399.Spec : Prop :=
  ∀ n, (P8357086807917301399.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P6135517522140738885

`∑[ceil(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4, a(4)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A247060.P6135517522140738885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P6135517522140738885

namespace A247060

/-- `∑[ceil(a(n-5))]` -/
def P6135517522140738885.Spec : Prop :=
  ∀ n, (P6135517522140738885.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P6258642616678843325

`∑[round(a(n-5))]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4, a(4)=4`

`round` is left out, it is the identity on integers.
-/

namespace A247060.P6258642616678843325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P6258642616678843325

namespace A247060

/-- `∑[round(a(n-5))]` -/
def P6258642616678843325.Spec : Prop :=
  ∀ n, (P6258642616678843325.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P18389357356163440046

`∑[a(n-5)%5]` with `a(0)=1, a(1)=4, a(2)=3, a(3)=4, a(4)=4`
-/

namespace A247060.P18389357356163440046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 3, 4, 4] fun n f1 =>
  f1 (n - 5) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P18389357356163440046

namespace A247060

/-- `∑[a(n-5)%5]` -/
def P18389357356163440046.Spec : Prop :=
  ∀ n, (P18389357356163440046.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P13857615696615911362

`∑[5-gcd(4, 1-(n+1)%5)]`
-/

namespace A247060.P13857615696615911362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Int.gcd 4 (1 - (((n + 1) % 5 : ℕ) : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P13857615696615911362

namespace A247060

/-- `∑[5-gcd(4, 1-(n+1)%5)]` -/
def P13857615696615911362.Spec : Prop :=
  ∀ n, P13857615696615911362.a n = A247060 (n + 1)

end A247060

/-! ## A247060.P9865057206151693774

`∑[(A098077(n+1)-1)%5]`
-/

namespace A247060.P9865057206151693774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098077 (n + 1) - 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247060.P9865057206151693774

namespace A247060

/-- `∑[(A098077(n+1)-1)%5]` -/
def P9865057206151693774.Spec : Prop :=
  ∀ n, P9865057206151693774.a n = A247060 (n + 1)

end A247060

/-! ## A247060.P13712255537673166256

`A042948(A047416(n+2))`
-/

namespace A247060.P13712255537673166256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047416 (n + 2)).toNat

end

end A247060.P13712255537673166256

namespace A247060

/-- `A042948(A047416(n+2))` -/
def P13712255537673166256.Spec : Prop :=
  ∀ n, P13712255537673166256.a n = A247060 (n + 1)

end A247060

/-! ## A247060.P10776910926247092594

`A247062(A047486(n+2))`
-/

namespace A247060.P10776910926247092594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (A047486 (n + 2)).toNat

end

end A247060.P10776910926247092594

namespace A247060

/-- `A247062(A047486(n+2))` -/
def P10776910926247092594.Spec : Prop :=
  ∀ n, P10776910926247092594.a n = A247060 (n + 1)

end A247060

/-! ## A247060.P16220577767380849354

`∩[A247062(n+1), A042948(n)]`
-/

namespace A247060.P16220577767380849354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247060.P16220577767380849354

namespace A247060

/-- `∩[A247062(n+1), A042948(n)]` -/
def P16220577767380849354.Spec : Prop :=
  ∀ n, (P16220577767380849354.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P5523175631503293596

`∩[A100832(n+1), A247062(n+1)]`
-/

namespace A247060.P5523175631503293596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247060.P5523175631503293596

namespace A247060

/-- `∩[A100832(n+1), A247062(n+1)]` -/
def P5523175631503293596.Spec : Prop :=
  ∀ n, (P5523175631503293596.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P9832601471949130094

`A047467(A047497(n+2))/2`
-/

namespace A247060.P9832601471949130094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047467 (A047497 (n + 2)).toNat : ℚ) / 2

end

end A247060.P9832601471949130094

namespace A247060

/-- `A047467(A047497(n+2))/2` -/
def P9832601471949130094.Spec : Prop :=
  ∀ n, P9832601471949130094.a n = (A247060 (n + 1) : ℚ)

end A247060

/-! ## A247060.P8938855203800533483

`∩[A047494(n+1), A247062(n+1)]`
-/

namespace A247060.P8938855203800533483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247060.P8938855203800533483

namespace A247060

/-- `∩[A047494(n+1), A247062(n+1)]` -/
def P8938855203800533483.Spec : Prop :=
  ∀ n, (P8938855203800533483.a n : ℤ) = A247060 (n + 1)

end A247060

/-! ## A247060.P13344268857687969728

`filter[A247062(n+1), A133872(#)]`
-/

namespace A247060.P13344268857687969728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A247060.P13344268857687969728

namespace A247060

/-- `filter[A247062(n+1), A133872(#)]` -/
def P13344268857687969728.Spec : Prop :=
  ∀ n, P13344268857687969728.a n = A247060 (n + 1)

end A247060

/-!
# A247061: Dynamic Betting Game D(n,5,1).

The programs for A247061, the canonical program `A247061.P14698585717288267455` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247061 has offset 1).

The definition of A247061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247061.P14698585717288267455

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=16, a(3)=17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247061

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P14698585717288267455.Spec : Prop :=
  ∀ n, P14698585717288267455.a n = A247061 (n + 1)

theorem P14698585717288267455.correct : P14698585717288267455.Spec := by
  intro n
  simp only [A247061, Nat.add_sub_cancel]

end A247061

/-! ## A247061.P4756335990110922465

`a(n-3)+16` with `a(0)=1, a(1)=8, a(2)=16`
-/

namespace A247061.P4756335990110922465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 16] fun n a =>
  a (n - 3) + 16

end

end A247061.P4756335990110922465

namespace A247061

/-- `a(n-3)+16` -/
def P4756335990110922465.Spec : Prop :=
  ∀ n, (P4756335990110922465.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P1280494098957766270

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A247061.P1280494098957766270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P1280494098957766270

namespace A247061

/-- `∑[abs(a(n-3))]` -/
def P1280494098957766270.Spec : Prop :=
  ∀ n, (P1280494098957766270.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P7875985146565539297

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A247061.P7875985146565539297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P7875985146565539297

namespace A247061

/-- `∑[dr(a(n-3))]` -/
def P7875985146565539297.Spec : Prop :=
  ∀ n, (P7875985146565539297.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P8733763922763310490

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=7, a(2)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A247061.P8733763922763310490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P8733763922763310490

namespace A247061

/-- `∑[floor(a(n-3))]` -/
def P8733763922763310490.Spec : Prop :=
  ∀ n, (P8733763922763310490.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P8497767669942134962

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=7, a(2)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A247061.P8497767669942134962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P8497767669942134962

namespace A247061

/-- `∑[ceil(a(n-3))]` -/
def P8497767669942134962.Spec : Prop :=
  ∀ n, (P8497767669942134962.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P3645560488017564647

`∑[round(a(n-3))]` with `a(0)=1, a(1)=7, a(2)=8`

`round` is left out, it is the identity on integers.
-/

namespace A247061.P3645560488017564647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P3645560488017564647

namespace A247061

/-- `∑[round(a(n-3))]` -/
def P3645560488017564647.Spec : Prop :=
  ∀ n, (P3645560488017564647.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P16892048336048767321

`∑[a(n-3)%9]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A247061.P16892048336048767321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  f1 (n - 3) % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P16892048336048767321

namespace A247061

/-- `∑[a(n-3)%9]` -/
def P16892048336048767321.Spec : Prop :=
  ∀ n, (P16892048336048767321.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P3116396293953115190

`∑[∑[ogf((1+7x+8x^2)/(1+x+x^2))]]`
-/

namespace A247061.P3116396293953115190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 8] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P3116396293953115190

namespace A247061

/-- `∑[∑[ogf((1+7x+8x^2)/(1+x+x^2))]]` -/
def P3116396293953115190.Spec : Prop :=
  ∀ n, P3116396293953115190.a n = A247061 (n + 1)

end A247061

/-! ## A247061.P13148086474340511325

`∑[a(n-3)^gcd(3, n)]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A247061.P13148086474340511325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  f1 (n - 3) ^ Nat.gcd 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P13148086474340511325

namespace A247061

/-- `∑[a(n-3)^gcd(3, n)]` -/
def P13148086474340511325.Spec : Prop :=
  ∀ n, (P13148086474340511325.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P5695266582301410577

`∑[ceil(log2(48*n%3+1))+1]`
-/

namespace A247061.P5695266582301410577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((48 * (n % 3) + 1 : ℕ) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P5695266582301410577

namespace A247061

/-- `∑[ceil(log2(48*n%3+1))+1]` -/
def P5695266582301410577.Spec : Prop :=
  ∀ n, P5695266582301410577.a n = A247061 (n + 1)

end A247061

/-! ## A247061.P11739533887985820194

`record[3*and(n+1, n+2)+n+1]`
-/

namespace A247061.P11739533887985820194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.land (n + 1) (n + 2) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247061.P11739533887985820194

namespace A247061

/-- `record[3*and(n+1, n+2)+n+1]` -/
def P11739533887985820194.Spec : Prop :=
  ∀ n, (P11739533887985820194.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P10110478660921735266

`∑[2*a(n-3)-a(n-3)]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A247061.P10110478660921735266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  2 * f1 (n - 3) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P10110478660921735266

namespace A247061

/-- `∑[2*a(n-3)-a(n-3)]` -/
def P10110478660921735266.Spec : Prop :=
  ∀ n, P10110478660921735266.a n = A247061 (n + 1)

end A247061

/-! ## A247061.P4001383341418604836

`∑[gcd(1-a(n-2), a(n-3))]` with `a(0)=1, a(1)=7, a(2)=8`
-/

namespace A247061.P4001383341418604836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 8] fun n f1 =>
  Int.gcd (1 - (f1 (n - 2) : ℤ)) (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247061.P4001383341418604836

namespace A247061

/-- `∑[gcd(1-a(n-2), a(n-3))]` -/
def P4001383341418604836.Spec : Prop :=
  ∀ n, (P4001383341418604836.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P15735279303759704116

`∪[A022144(n), A158057(n)]`
-/

namespace A247061.P15735279303759704116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158057 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247061.P15735279303759704116

namespace A247061

/-- `∪[A022144(n), A158057(n)]` -/
def P15735279303759704116.Spec : Prop :=
  ∀ n, (P15735279303759704116.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P11999123311601923678

`∪[A319281(n+1), A022144(n)]`
-/

namespace A247061.P11999123311601923678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247061.P11999123311601923678

namespace A247061

/-- `∪[A319281(n+1), A022144(n)]` -/
def P11999123311601923678.Spec : Prop :=
  ∀ n, (P11999123311601923678.a n : ℤ) = A247061 (n + 1)

end A247061

/-! ## A247061.P7885800452040125441

`2*A047616(n+2)-A010872(n+1)`
-/

namespace A247061.P7885800452040125441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047616 (n + 2) - A010872 (n + 1)

end

end A247061.P7885800452040125441

namespace A247061

/-- `2*A047616(n+2)-A010872(n+1)` -/
def P7885800452040125441.Spec : Prop :=
  ∀ n, P7885800452040125441.a n = A247061 (n + 1)

end A247061

/-! ## A247061.P1758138362884653961

`record[A016777(and(n+2, n+1))+n]`
-/

namespace A247061.P1758138362884653961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (Nat.land (n + 2) (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247061.P1758138362884653961

namespace A247061

/-- `record[A016777(and(n+2, n+1))+n]` -/
def P1758138362884653961.Spec : Prop :=
  ∀ n, P1758138362884653961.a n = A247061 (n + 1)

end A247061

/-! ## A247061.P6306225538780273253

`A047393(A042968(n+2))`
-/

namespace A247061.P6306225538780273253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A042968 (n + 2)).toNat

end

end A247061.P6306225538780273253

namespace A247061

/-- `A047393(A042968(n+2))` -/
def P6306225538780273253.Spec : Prop :=
  ∀ n, P6306225538780273253.a n = A247061 (n + 1)

end A247061

/-! ## A247061.P10982221150438614868

`A247060(A047220(n+2))`
-/

namespace A247061.P10982221150438614868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247060 (A047220 (n + 2)).toNat

end

end A247061.P10982221150438614868

namespace A247061

/-- `A247060(A047220(n+2))` -/
def P10982221150438614868.Spec : Prop :=
  ∀ n, P10982221150438614868.a n = A247061 (n + 1)

end A247061

/-!
# A247062: Dynamic Betting Game D(n,5,2).

The programs for A247062, the canonical program `A247062.P12532838072401886417` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247062 has offset 1).

The definition of A247062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247062.P12532838072401886417

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=6, a(4)=8, a(5)=11, a(6)=12, a(7)=16, a(8)=17`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247062

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P12532838072401886417.Spec : Prop :=
  ∀ n, P12532838072401886417.a n = A247062 (n + 1)

theorem P12532838072401886417.correct : P12532838072401886417.Spec := by
  intro n
  simp only [A247062, Nat.add_sub_cancel]

end A247062

/-! ## A247062.P13453560430983639816

`lt[A124762(n), A124762(A392710(n+1))]`
-/

namespace A247062.P13453560430983639816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A392710 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247062.P13453560430983639816

namespace A247062

/-- `lt[A124762(n), A124762(A392710(n+1))]` -/
def P13453560430983639816.Spec : Prop :=
  ∀ n, (P13453560430983639816.a n : ℤ) = A247062 (n + 1)

end A247062

/-! ## A247062.P4930466694175255288

`lt[A002610(n+4), A000002(A000930(n))]`
-/

namespace A247062.P4930466694175255288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002610 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A000930 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247062.P4930466694175255288

namespace A247062

/-- `lt[A002610(n+4), A000002(A000930(n))]` -/
def P4930466694175255288.Spec : Prop :=
  ∀ n, (P4930466694175255288.a n : ℤ) = A247062 (n + 1)

end A247062

/-! ## A247062.P15637550678389726263

`lt[A002610(n+4), A010060(A002625(n))]`
-/

namespace A247062.P15637550678389726263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002610 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A002625 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247062.P15637550678389726263

namespace A247062

/-- `lt[A002610(n+4), A010060(A002625(n))]` -/
def P15637550678389726263.Spec : Prop :=
  ∀ n, (P15637550678389726263.a n : ℤ) = A247062 (n + 1)

end A247062

/-! ## A247062.P15579918667862135047

`lt[A002610(n+4), A000002(A032020(n))]`
-/

namespace A247062.P15579918667862135047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002610 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A032020 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247062.P15579918667862135047

namespace A247062

/-- `lt[A002610(n+4), A000002(A032020(n))]` -/
def P15579918667862135047.Spec : Prop :=
  ∀ n, (P15579918667862135047.a n : ℤ) = A247062 (n + 1)

end A247062

/-!
# A247063: Dynamic Betting Game D(n,5,3).

The programs for A247063, the canonical program `A247063.P9146444378838029023` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247063 has offset 1).

The definition of A247063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247063.P9146444378838029023

`comp[n%3*or(7, n)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247063

/-- `comp[n%3*or(7, n)]` -/
def P9146444378838029023.Spec : Prop :=
  ∀ n, (P9146444378838029023.a n : ℤ) = A247063 (n + 1)

theorem P9146444378838029023.correct : P9146444378838029023.Spec := by
  intro n
  simp only [A247063, Nat.add_sub_cancel]

end A247063

/-! ## A247063.P17240915597818806747

`∪[A047454(n+1), A247161(n+1)]`
-/

namespace A247063.P17240915597818806747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P17240915597818806747

namespace A247063

/-- `∪[A047454(n+1), A247161(n+1)]` -/
def P17240915597818806747.Spec : Prop :=
  ∀ n, (P17240915597818806747.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P4677541070696050568

`∪[A047455(n+1), A247161(n+1)]`
-/

namespace A247063.P4677541070696050568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P4677541070696050568

namespace A247063

/-- `∪[A047455(n+1), A247161(n+1)]` -/
def P4677541070696050568.Spec : Prop :=
  ∀ n, (P4677541070696050568.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P14500469052163351107

`∪[A047473(n+1), A247161(n+1)]`
-/

namespace A247063.P14500469052163351107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P14500469052163351107

namespace A247063

/-- `∪[A047473(n+1), A247161(n+1)]` -/
def P14500469052163351107.Spec : Prop :=
  ∀ n, (P14500469052163351107.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P66683489545110276

`∪[A047475(n+1), A247161(n+1)]`
-/

namespace A247063.P66683489545110276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P66683489545110276

namespace A247063

/-- `∪[A047475(n+1), A247161(n+1)]` -/
def P66683489545110276.Spec : Prop :=
  ∀ n, (P66683489545110276.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P5673143624613064044

`∪[A047603(n+1), A247062(n+1)]`
-/

namespace A247063.P5673143624613064044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P5673143624613064044

namespace A247063

/-- `∪[A047603(n+1), A247062(n+1)]` -/
def P5673143624613064044.Spec : Prop :=
  ∀ n, (P5673143624613064044.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P9083572275526260967

`∪[A047596(n+1), A247161(n+1)]`
-/

namespace A247063.P9083572275526260967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P9083572275526260967

namespace A247063

/-- `∪[A047596(n+1), A247161(n+1)]` -/
def P9083572275526260967.Spec : Prop :=
  ∀ n, (P9083572275526260967.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P1950755687136403488

`∪[A047603(n+1), A247161(n+1)]`
-/

namespace A247063.P1950755687136403488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P1950755687136403488

namespace A247063

/-- `∪[A047603(n+1), A247161(n+1)]` -/
def P1950755687136403488.Spec : Prop :=
  ∀ n, (P1950755687136403488.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P1512754208764639160

`∪[A047604(n+1), A247161(n+1)]`
-/

namespace A247063.P1512754208764639160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P1512754208764639160

namespace A247063

/-- `∪[A047604(n+1), A247161(n+1)]` -/
def P1512754208764639160.Spec : Prop :=
  ∀ n, (P1512754208764639160.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P888627251676777121

`∪[A047606(n+1), A247161(n+1)]`
-/

namespace A247063.P888627251676777121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P888627251676777121

namespace A247063

/-- `∪[A047606(n+1), A247161(n+1)]` -/
def P888627251676777121.Spec : Prop :=
  ∀ n, (P888627251676777121.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P12684681371885704311

`∪[A085833(n+1), A247161(n+1)]`
-/

namespace A247063.P12684681371885704311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085833 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247063.P12684681371885704311

namespace A247063

/-- `∪[A085833(n+1), A247161(n+1)]` -/
def P12684681371885704311.Spec : Prop :=
  ∀ n, (P12684681371885704311.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P4404184275102674426

`record[A087810(A080513(n))+n]`
-/

namespace A247063.P4404184275102674426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087810 (A080513 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247063.P4404184275102674426

namespace A247063

/-- `record[A087810(A080513(n))+n]` -/
def P4404184275102674426.Spec : Prop :=
  ∀ n, P4404184275102674426.a n = A247063 (n + 1)

end A247063

/-! ## A247063.P15921531861997796899

`record[n+1-A131743(A131739(n))]`
-/

namespace A247063.P15921531861997796899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A131743 (A131739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247063.P15921531861997796899

namespace A247063

/-- `record[n+1-A131743(A131739(n))]` -/
def P15921531861997796899.Spec : Prop :=
  ∀ n, P15921531861997796899.a n = A247063 (n + 1)

end A247063

/-! ## A247063.P6400458055425102541

`record[n-a(A136480(n))]` with `a(0)=1, a(1)=1`
-/

namespace A247063.P6400458055425102541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - f1 (A136480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247063.P6400458055425102541

namespace A247063

/-- `record[n-a(A136480(n))]` -/
def P6400458055425102541.Spec : Prop :=
  ∀ n, P6400458055425102541.a n = A247063 (n + 1)

end A247063

/-! ## A247063.P14554067961201966716

`eq[A004525(A228371(n+1)), A057427(n)]`
-/

namespace A247063.P14554067961201966716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A228371 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247063.P14554067961201966716

namespace A247063

/-- `eq[A004525(A228371(n+1)), A057427(n)]` -/
def P14554067961201966716.Spec : Prop :=
  ∀ n, (P14554067961201966716.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P1406265005131063973

`eq[A000007(n), A061989(A228371(n+1))]`
-/

namespace A247063.P1406265005131063973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061989 (A228371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247063.P1406265005131063973

namespace A247063

/-- `eq[A000007(n), A061989(A228371(n+1))]` -/
def P1406265005131063973.Spec : Prop :=
  ∀ n, (P1406265005131063973.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P18187388271161382722

`eq[A000038(n), A061989(A228371(n+1))]`
-/

namespace A247063.P18187388271161382722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061989 (A228371 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247063.P18187388271161382722

namespace A247063

/-- `eq[A000038(n), A061989(A228371(n+1))]` -/
def P18187388271161382722.Spec : Prop :=
  ∀ n, (P18187388271161382722.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P8786538697268678384

`eq[A000007(n), A289792(A158572(n+2))]`
-/

namespace A247063.P8786538697268678384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289792 (A158572 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247063.P8786538697268678384

namespace A247063

/-- `eq[A000007(n), A289792(A158572(n+2))]` -/
def P8786538697268678384.Spec : Prop :=
  ∀ n, (P8786538697268678384.a n : ℤ) = A247063 (n + 1)

end A247063

/-! ## A247063.P14734145615687339863

`record[A065033(A243109(n)-A089309(n))]`
-/

namespace A247063.P14734145615687339863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A243109 n - A089309 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247063.P14734145615687339863

namespace A247063

/-- `record[A065033(A243109(n)-A089309(n))]` -/
def P14734145615687339863.Spec : Prop :=
  ∀ n, P14734145615687339863.a n = A247063 (n + 1)

end A247063

/-! ## A247063.P13355750953343103306

`record[A002264(n)-A259825(A051724(n))]`
-/

namespace A247063.P13355750953343103306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n - A259825 (A051724 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247063.P13355750953343103306

namespace A247063

/-- `record[A002264(n)-A259825(A051724(n))]` -/
def P13355750953343103306.Spec : Prop :=
  ∀ n, P13355750953343103306.a n = A247063 (n + 1)

end A247063

/-!
# A247064: Dynamic Betting Game D(n,5,4).

The programs for A247064, the canonical program `A247064.P12761510194397783891` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247064 has offset 1).

The definition of A247064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247064.P12761510194397783891

`floor(32*(n+1)/31)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247064

/-- `floor(32*(n+1)/31)` -/
def P12761510194397783891.Spec : Prop :=
  ∀ n, P12761510194397783891.a n = A247064 (n + 1)

theorem P12761510194397783891.correct : P12761510194397783891.Spec := by
  intro n
  simp only [A247064, Nat.add_sub_cancel]

end A247064

/-! ## A247064.P12016600495307568125

`∑[gcd(31, n+1)%29]`
-/

namespace A247064.P12016600495307568125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 31 (n + 1) % 29

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247064.P12016600495307568125

namespace A247064

/-- `∑[gcd(31, n+1)%29]` -/
def P12016600495307568125.Spec : Prop :=
  ∀ n, (P12016600495307568125.a n : ℤ) = A247064 (n + 1)

end A247064

/-! ## A247064.P6076619083901600864

`comp[(16*n+15)*n%2]`
-/

namespace A247064.P6076619083901600864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (16 * n + 15) * (n % 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247064.P6076619083901600864

namespace A247064

/-- `comp[(16*n+15)*n%2]` -/
def P6076619083901600864.Spec : Prop :=
  ∀ n, (P6076619083901600864.a n : ℤ) = A247064 (n + 1)

end A247064

/-! ## A247064.P13882598250930398796

`comp[lt[10*n, (n+2)*(xor(n, n+1)+1)/4]]`
-/

namespace A247064.P13882598250930398796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (Nat.xor n (n + 1) + 1) : ℚ) / 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A247064.P13882598250930398796

namespace A247064

/-- `comp[lt[10*n, (n+2)*(xor(n, n+1)+1)/4]]` -/
def P13882598250930398796.Spec : Prop :=
  ∀ n, (P13882598250930398796.a n : ℤ) = A247064 (n + 1)

end A247064

/-! ## A247064.P17464097621131937981

`∑[2-A011588(n+1)²]`
-/

namespace A247064.P17464097621131937981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A011588 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247064.P17464097621131937981

namespace A247064

/-- `∑[2-A011588(n+1)²]` -/
def P17464097621131937981.Spec : Prop :=
  ∀ n, P17464097621131937981.a n = A247064 (n + 1)

end A247064

/-! ## A247064.P10074118535818799960

`comp[A249674(n)+comp[2*(n+1)]]`
-/

namespace A247064.P10074118535818799960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247064.P10074118535818799960

namespace A247064

/-- `comp[A249674(n)+comp[2*(n+1)]]` -/
def P10074118535818799960.Spec : Prop :=
  ∀ n, (P10074118535818799960.a n : ℤ) = A247064 (n + 1)

end A247064

/-! ## A247064.P4526545185601536433

`comp[A000035(n)*A004771(2*n+1)]`
-/

namespace A247064.P4526545185601536433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A004771 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247064.P4526545185601536433

namespace A247064

/-- `comp[A000035(n)*A004771(2*n+1)]` -/
def P4526545185601536433.Spec : Prop :=
  ∀ n, (P4526545185601536433.a n : ℤ) = A247064 (n + 1)

end A247064

/-! ## A247064.P17633223082614418925

`∑[∑[A014040(n+1)]+2]`
-/

namespace A247064.P17633223082614418925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247064.P17633223082614418925

namespace A247064

/-- `∑[∑[A014040(n+1)]+2]` -/
def P17633223082614418925.Spec : Prop :=
  ∀ n, P17633223082614418925.a n = A247064 (n + 1)

end A247064

/-! ## A247064.P14434963810900491704

`A085141(A244096(n+4))`
-/

namespace A247064.P14434963810900491704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (A244096 (n + 4)).toNat

end

end A247064.P14434963810900491704

namespace A247064

/-- `A085141(A244096(n+4))` -/
def P14434963810900491704.Spec : Prop :=
  ∀ n, P14434963810900491704.a n = A247064 (n + 1)

end A247064

/-!
# A247065: Dynamic Betting Game D(n,6,1).

The programs for A247065, the canonical program `A247065.P15269821073471818849` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247065 has offset 1).

The definition of A247065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247065.P15269821073471818849

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=16, a(2)=24, a(3)=32, a(4)=40, a(5)=49, a(6)=64, a(7)=65`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247065

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P15269821073471818849.Spec : Prop :=
  ∀ n, P15269821073471818849.a n = A247065 (n + 1)

theorem P15269821073471818849.correct : P15269821073471818849.Spec := by
  intro n
  simp only [A247065, Nat.add_sub_cancel]

end A247065

/-! ## A247065.P52460052248418707

`A247061(floor(cot(7/(12*n+6)))+1)`
-/

namespace A247065.P52460052248418707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (⌊Real.cot (7 / (12 * n + 6 : ℚ) : ℝ)⌋ + 1).toNat

end

end A247065.P52460052248418707

namespace A247065

/-- `A247061(floor(cot(7/(12*n+6)))+1)` -/
def P52460052248418707.Spec : Prop :=
  ∀ n, P52460052248418707.a n = A247065 (n + 1)

end A247065

/-! ## A247065.P17029030495751633021

`A247061(A082977(n+2))`
-/

namespace A247065.P17029030495751633021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (A082977 (n + 2)).toNat

end

end A247065.P17029030495751633021

namespace A247065

/-- `A247061(A082977(n+2))` -/
def P17029030495751633021.Spec : Prop :=
  ∀ n, P17029030495751633021.a n = A247065 (n + 1)

end A247065

/-! ## A247065.P2172312563118200656

`A247061(A083026(n+1)+1)`
-/

namespace A247065.P2172312563118200656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (A083026 (n + 1) + 1).toNat

end

end A247065.P2172312563118200656

namespace A247065

/-- `A247061(A083026(n+1)+1)` -/
def P2172312563118200656.Spec : Prop :=
  ∀ n, P2172312563118200656.a n = A247065 (n + 1)

end A247065

/-! ## A247065.P6354256237228333335

`A247061(A057359(n+1)+n+1)`
-/

namespace A247065.P6354256237228333335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (A057359 (n + 1) + (n + 1 : ℤ)).toNat

end

end A247065.P6354256237228333335

namespace A247065

/-- `A247061(A057359(n+1)+n+1)` -/
def P6354256237228333335.Spec : Prop :=
  ∀ n, P6354256237228333335.a n = A247065 (n + 1)

end A247065

/-!
# A247068: Primes whose base-2 expansion has no two consecutive 1's.

The programs for A247068, the canonical program `A247068.P6299063819757752497` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247068 has offset 1).

The definition of A247068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 707 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247068.P17648889393603130771

`p?[A324639(n+1)]`
-/

namespace A247068.P17648889393603130771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247068.P17648889393603130771

namespace A247068

/-- `p?[A324639(n+1)]` -/
def P17648889393603130771.Spec : Prop :=
  ∀ n, P17648889393603130771.a n = A247068 (n + 1)

end A247068

/-! ## A247068.P9733517029014668426

`∩[A095287(n+1), A324639(n+1)]`
-/

namespace A247068.P9733517029014668426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P9733517029014668426

namespace A247068

/-- `∩[A095287(n+1), A324639(n+1)]` -/
def P9733517029014668426.Spec : Prop :=
  ∀ n, (P9733517029014668426.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P8782284387654826720

`∩[A095315(n+1), A324639(n+1)]`
-/

namespace A247068.P8782284387654826720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P8782284387654826720

namespace A247068

/-- `∩[A095315(n+1), A324639(n+1)]` -/
def P8782284387654826720.Spec : Prop :=
  ∀ n, (P8782284387654826720.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P14993693902835957717

`∩[A080165(n+1), A324639(n+1)]`
-/

namespace A247068.P14993693902835957717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P14993693902835957717

namespace A247068

/-- `∩[A080165(n+1), A324639(n+1)]` -/
def P14993693902835957717.Spec : Prop :=
  ∀ n, (P14993693902835957717.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P6299063819757752497

`p?[A003714(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A247068

/-- `p?[A003714(n)]` -/
def P6299063819757752497.Spec : Prop :=
  ∀ n, P6299063819757752497.a n = A247068 (n + 1)

theorem P6299063819757752497.correct : P6299063819757752497.Spec := by
  intro n
  simp only [A247068, Nat.add_sub_cancel]

end A247068

/-! ## A247068.P16396312639451966278

`p?[∑[A129761(n)]]`
-/

namespace A247068.P16396312639451966278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247068.P16396312639451966278

namespace A247068

/-- `p?[∑[A129761(n)]]` -/
def P16396312639451966278.Spec : Prop :=
  ∀ n, P16396312639451966278.a n = A247068 (n + 1)

end A247068

/-! ## A247068.P15886426084862642046

`∩[A080165(n+1), A003714(n)]`
-/

namespace A247068.P15886426084862642046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P15886426084862642046

namespace A247068

/-- `∩[A080165(n+1), A003714(n)]` -/
def P15886426084862642046.Spec : Prop :=
  ∀ n, (P15886426084862642046.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P4109463048738036954

`∩[A095287(n+1), A003714(n)]`
-/

namespace A247068.P4109463048738036954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P4109463048738036954

namespace A247068

/-- `∩[A095287(n+1), A003714(n)]` -/
def P4109463048738036954.Spec : Prop :=
  ∀ n, (P4109463048738036954.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P3588636295712905198

`∩[A095315(n+1), A003714(n)]`
-/

namespace A247068.P3588636295712905198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P3588636295712905198

namespace A247068

/-- `∩[A095315(n+1), A003714(n)]` -/
def P3588636295712905198.Spec : Prop :=
  ∀ n, (P3588636295712905198.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P9487647763297739847

`∩[A080165(n+1), A164707(n+1)]`
-/

namespace A247068.P9487647763297739847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P9487647763297739847

namespace A247068

/-- `∩[A080165(n+1), A164707(n+1)]` -/
def P9487647763297739847.Spec : Prop :=
  ∀ n, (P9487647763297739847.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P5219001443392644604

`∩[A095287(n+1), A164707(n+1)]`
-/

namespace A247068.P5219001443392644604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P5219001443392644604

namespace A247068

/-- `∩[A095287(n+1), A164707(n+1)]` -/
def P5219001443392644604.Spec : Prop :=
  ∀ n, (P5219001443392644604.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P14649621098423830131

`p?[record[and(2*n+1, -(n+1))]]`
-/

namespace A247068.P14649621098423830131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (-(n + 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247068.P14649621098423830131

namespace A247068

/-- `p?[record[and(2*n+1, -(n+1))]]` -/
def P14649621098423830131.Spec : Prop :=
  ∀ n, P14649621098423830131.a n = A247068 (n + 1)

end A247068

/-! ## A247068.P15919378394958035387

`∩[A002313(n+1), A003714(n)]`
-/

namespace A247068.P15919378394958035387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P15919378394958035387

namespace A247068

/-- `∩[A002313(n+1), A003714(n)]` -/
def P15919378394958035387.Spec : Prop :=
  ∀ n, (P15919378394958035387.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P6248786622373651398

`∩[A109515(n+1), A003714(n)]`
-/

namespace A247068.P6248786622373651398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P6248786622373651398

namespace A247068

/-- `∩[A109515(n+1), A003714(n)]` -/
def P6248786622373651398.Spec : Prop :=
  ∀ n, (P6248786622373651398.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P2927406040964783067

`∩[A266987(n+1), A003714(n)]`
-/

namespace A247068.P2927406040964783067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P2927406040964783067

namespace A247068

/-- `∩[A266987(n+1), A003714(n)]` -/
def P2927406040964783067.Spec : Prop :=
  ∀ n, (P2927406040964783067.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P18227011031226313713

`∩[A002313(n+1), A164707(n+1)]`
-/

namespace A247068.P18227011031226313713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P18227011031226313713

namespace A247068

/-- `∩[A002313(n+1), A164707(n+1)]` -/
def P18227011031226313713.Spec : Prop :=
  ∀ n, (P18227011031226313713.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P14060928090329571893

`∩[A002313(n+1), A324639(n+1)]`
-/

namespace A247068.P14060928090329571893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P14060928090329571893

namespace A247068

/-- `∩[A002313(n+1), A324639(n+1)]` -/
def P14060928090329571893.Spec : Prop :=
  ∀ n, (P14060928090329571893.a n : ℤ) = A247068 (n + 1)

end A247068

/-! ## A247068.P12510765127797215346

`∩[A164707(n+1), A266987(n+1)]`
-/

namespace A247068.P12510765127797215346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247068.P12510765127797215346

namespace A247068

/-- `∩[A164707(n+1), A266987(n+1)]` -/
def P12510765127797215346.Spec : Prop :=
  ∀ n, (P12510765127797215346.a n : ℤ) = A247068 (n + 1)

end A247068

/-!
# A247071: Numbers n such that 2^n-1 has only one primitive prime factor, sorted according to the magnitude of the corresponding prime.

The programs for A247071, there is no canonical definition to state claims against.
-/

/-! ## A247071.P9885232902892205214

`A002326((A144755(n+2)-1)/2)`
-/

namespace A247071.P9885232902892205214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (SequenceMachineLib.roundAway ((A144755 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A247071.P9885232902892205214

/-! ## A247071.P12098263685009926227

`A007733(A144755(n+2))`
-/

namespace A247071.P12098263685009926227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A144755 (n + 2)).toNat

end

end A247071.P12098263685009926227

/-! ## A247071.P12338403030363572488

`A054703(p?[A144755(n+2)])`
-/

namespace A247071.P12338403030363572488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144755 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A247071.P12338403030363572488

/-! ## A247071.P4545859499186917700

`A024222(A144755(n+2)+1)`
-/

namespace A247071.P4545859499186917700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024222 (A144755 (n + 2) + 1).toNat

end

end A247071.P4545859499186917700

/-! ## A247071.P17639677705259388528

`A118106(2*A144755(n+2))`
-/

namespace A247071.P17639677705259388528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118106 (2 * A144755 (n + 2)).toNat

end

end A247071.P17639677705259388528

/-!
# A247072: Smallest Wieferich prime (> sqrt(n)) in base n.

The programs for A247072, there is no canonical definition to state claims against.
-/

/-! ## A247072.P3176653811016352277

`A096082(n+1)-A215879((n+2)!)`
-/

namespace A247072.P3176653811016352277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096082 (n + 1) - A215879 (Nat.factorial (n + 2))

end

end A247072.P3176653811016352277

/-! ## A247072.P16310438373641825744

`A096082(A353269(a(n-1)+16)+n+1)` with `a(0)=2`
-/

namespace A247072.P16310438373641825744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A096082 (A353269 (a (n - 1) + 16).toNat + (n + 1 : ℤ)).toNat

end

end A247072.P16310438373641825744

/-!
# A247073: Triangle read by rows: T(n,k) is the number of k-th prime powers up to 2^n, for k = 1 to n.

The programs for A247073, there is no canonical definition to state claims against.
-/

/-! ## A247073.P1072591553612535507

`A124769(A110135(n))+A106235(n+1)`
-/

namespace A247073.P1072591553612535507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A110135 n).toNat + A106235 (n + 1)

end

end A247073.P1072591553612535507

/-! ## A247073.P11518938249739478435

`A346873(n+1)+A174847(A119502(n))`
-/

namespace A247073.P11518938249739478435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346873 (n + 1) + A174847 (A119502 n).toNat

end

end A247073.P11518938249739478435

/-! ## A247073.P13888913669294621481

`A192064(A124496(n+1))+A106235(n+1)`
-/

namespace A247073.P13888913669294621481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192064 (A124496 (n + 1)).toNat + A106235 (n + 1)

end

end A247073.P13888913669294621481

/-! ## A247073.P17998340250891050381

`A196383(A143291(n+2)+A143276(n+1))`
-/

namespace A247073.P17998340250891050381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196383 (A143291 (n + 2) + A143276 (n + 1)).toNat

end

end A247073.P17998340250891050381

/-! ## A247073.P6250135915111209240

`A066633(n+1)-A281116(A058313(n+1))`
-/

namespace A247073.P6250135915111209240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066633 (n + 1) - A281116 (A058313 (n + 1)).toNat

end

end A247073.P6250135915111209240

/-!
# A247074: a(n) = phi(n)/(Product_{primes p dividing n } gcd(p - 1, n - 1)).

The programs for A247074, the canonical program `A247074.P11215480859319137546` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247074 has offset 1).

The definition of A247074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247074.P11174698925400702803

`∑{d}[n+1, A340146(#)]`
-/

namespace A247074.P11174698925400702803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340146 d

end

end A247074.P11174698925400702803

namespace A247074

/-- `∑{d}[n+1, A340146(#)]` -/
def P11174698925400702803.Spec : Prop :=
  ∀ n, P11174698925400702803.a n = A247074 (n + 1)

end A247074

/-! ## A247074.P1287193648648202640

`A000010(n+1)/A063994(n+1)`
-/

namespace A247074.P1287193648648202640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ)

end

end A247074.P1287193648648202640

namespace A247074

/-- `A000010(n+1)/A063994(n+1)` -/
def P1287193648648202640.Spec : Prop :=
  ∀ n, P1287193648648202640.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P4643655711585582603

`A160595(n+1)/A318829(n+1)`
-/

namespace A247074.P4643655711585582603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160595 (n + 1) : ℚ) / (A318829 (n + 1) : ℚ)

end

end A247074.P4643655711585582603

namespace A247074

/-- `A160595(n+1)/A318829(n+1)` -/
def P4643655711585582603.Spec : Prop :=
  ∀ n, P4643655711585582603.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P11215480859319137546

`(A109606(n+1)+1)/A063994(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A247074

/-- `(A109606(n+1)+1)/A063994(n+1)` -/
def P11215480859319137546.Spec : Prop :=
  ∀ n, P11215480859319137546.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P6689322793185392680

`A000010(n+1)/(A348259(n+1)+1)`
-/

namespace A247074.P6689322793185392680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A348259 (n + 1) + 1 : ℚ)

end

end A247074.P6689322793185392680

namespace A247074

/-- `A000010(n+1)/(A348259(n+1)+1)` -/
def P6689322793185392680.Spec : Prop :=
  ∀ n, P6689322793185392680.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P12129041079785065014

`A318840(n+1)/A063994(n+1)+1`
-/

namespace A247074.P12129041079785065014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318840 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ) + 1

end

end A247074.P12129041079785065014

namespace A247074

/-- `A318840(n+1)/A063994(n+1)+1` -/
def P12129041079785065014.Spec : Prop :=
  ∀ n, P12129041079785065014.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P14740790910413090

`(A318830(n+1)+A049559(n+1))/A063994(n+1)`
-/

namespace A247074.P14740790910413090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318830 (n + 1) + A049559 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ)

end

end A247074.P14740790910413090

namespace A247074

/-- `(A318830(n+1)+A049559(n+1))/A063994(n+1)` -/
def P14740790910413090.Spec : Prop :=
  ∀ n, P14740790910413090.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P7824536484821966544

`A000010(n+1)/(A340191(n+1)+A340190(n+1))`
-/

namespace A247074.P7824536484821966544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A340191 (n + 1) + A340190 (n + 1) : ℚ)

end

end A247074.P7824536484821966544

namespace A247074

/-- `A000010(n+1)/(A340191(n+1)+A340190(n+1))` -/
def P7824536484821966544.Spec : Prop :=
  ∀ n, P7824536484821966544.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P2328829045075544195

`A000010(n+1)/(A000010(n+1)-A318840(n+1))`
-/

namespace A247074.P2328829045075544195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A000010 (n + 1) - A318840 (n + 1) : ℚ)

end

end A247074.P2328829045075544195

namespace A247074

/-- `A000010(n+1)/(A000010(n+1)-A318840(n+1))` -/
def P2328829045075544195.Spec : Prop :=
  ∀ n, P2328829045075544195.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P10804619512223840364

`(A319340(n+1)-A023900(n+1))/A063994(n+1)`
-/

namespace A247074.P10804619512223840364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319340 (n + 1) - A023900 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ)

end

end A247074.P10804619512223840364

namespace A247074

/-- `(A319340(n+1)-A023900(n+1))/A063994(n+1)` -/
def P10804619512223840364.Spec : Prop :=
  ∀ n, P10804619512223840364.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P10852850507171116334

`A000010(n+1)/(A340188(n+1)-A340187(n+1))`
-/

namespace A247074.P10852850507171116334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A340188 (n + 1) - A340187 (n + 1) : ℚ)

end

end A247074.P10852850507171116334

namespace A247074

/-- `A000010(n+1)/(A340188(n+1)-A340187(n+1))` -/
def P10852850507171116334.Spec : Prop :=
  ∀ n, P10852850507171116334.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P1687217168302446030

`A049559(n+1)/A063994(n+1)*A160595(n+1)`
-/

namespace A247074.P1687217168302446030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049559 (n + 1) : ℚ) / (A063994 (n + 1) : ℚ) * (A160595 (n + 1) : ℚ)

end

end A247074.P1687217168302446030

namespace A247074

/-- `A049559(n+1)/A063994(n+1)*A160595(n+1)` -/
def P1687217168302446030.Spec : Prop :=
  ∀ n, P1687217168302446030.a n = (A247074 (n + 1) : ℚ)

end A247074

/-! ## A247074.P14328182677250826968

`A000010(n+1)/(A049559(n+1)*A318829(n+1))`
-/

namespace A247074.P14328182677250826968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A049559 (n + 1) * A318829 (n + 1) : ℚ)

end

end A247074.P14328182677250826968

namespace A247074

/-- `A000010(n+1)/(A049559(n+1)*A318829(n+1))` -/
def P14328182677250826968.Spec : Prop :=
  ∀ n, P14328182677250826968.a n = (A247074 (n + 1) : ℚ)

end A247074

/-!
# A247076: Number of tilings of a 5 X 2n rectangle using 2n pentominoes of shape P.

The programs for A247076, the canonical program `A247076.P4456819890333174592` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247076 has offset 0).

The definition of A247076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247076.P4456819890333174592

`2*a(n-1)+2*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=20`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A247076

/-- `2*a(n-1)+2*a(n-2)+5*a(n-3)` -/
def P4456819890333174592.Spec : Prop :=
  ∀ n, (P4456819890333174592.a n : ℤ) = A247076 n

theorem P4456819890333174592.correct : P4456819890333174592.Spec := by
  intro n
  simp only [A247076]

end A247076

/-! ## A247076.P14706326969643017979

`ogf((-1+x^3)/(-1+2x+2x^2+5x^3))`
-/

namespace A247076.P14706326969643017979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -2, -2, -5] n

end

end A247076.P14706326969643017979

namespace A247076

/-- `ogf((-1+x^3)/(-1+2x+2x^2+5x^3))` -/
def P14706326969643017979.Spec : Prop :=
  ∀ n, P14706326969643017979.a n = A247076 n

end A247076

/-! ## A247076.P15186974994459983319

`A247706(n*(2*n+3))`
-/

namespace A247076.P15186974994459983319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247706 (n * (2 * n + 3))

end

end A247076.P15186974994459983319

namespace A247076

/-- `A247706(n*(2*n+3))` -/
def P15186974994459983319.Spec : Prop :=
  ∀ n, P15186974994459983319.a n = A247076 n

end A247076

/-! ## A247076.P7565792285420220175

`record[A247706(A000096(n))]`
-/

namespace A247076.P7565792285420220175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247706 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247076.P7565792285420220175

namespace A247076

/-- `record[A247706(A000096(n))]` -/
def P7565792285420220175.Spec : Prop :=
  ∀ n, P7565792285420220175.a n = A247076 n

end A247076

/-! ## A247076.P7912974191798534231

`record[A247706(record[A061579(n)])]`
-/

namespace A247076.P7912974191798534231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247706 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247076.P7912974191798534231

namespace A247076

/-- `record[A247706(record[A061579(n)])]` -/
def P7912974191798534231.Spec : Prop :=
  ∀ n, P7912974191798534231.a n = A247076 n

end A247076

/-! ## A247076.P6826633404766698517

`record[gcd(A092921(n), A247706(n))]`
-/

namespace A247076.P6826633404766698517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 n) (A247706 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247076.P6826633404766698517

namespace A247076

/-- `record[gcd(A092921(n), A247706(n))]` -/
def P6826633404766698517.Spec : Prop :=
  ∀ n, (P6826633404766698517.a n : ℤ) = A247076 n

end A247076

/-!
# A247078: Numbers for which the harmonic mean of nontrivial divisors is an integer.

The programs for A247078, there is no canonical definition to state claims against.
-/

/-! ## A247078.P13059338735671494047

`∪[A001248(n+1), A247079(n+1)]`
-/

namespace A247078.P13059338735671494047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247078.P13059338735671494047

/-! ## A247078.P8397789350872264059

`∪[A000040(n+1)², A247079(n+1)]%A260248(3*n+1)`
-/

namespace A247078.P8397789350872264059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A260248 (3 * n + 1))

end

end A247078.P8397789350872264059

/-! ## A247078.P1319564329496624957

`A000027(∪[A000040(n+1)², A247079(n+1)])`
-/

namespace A247078.P1319564329496624957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A247078.P1319564329496624957

/-! ## A247078.P6064528459368327453

`A000027(∪[A049001(n+1)+2, A247079(n+1)])`
-/

namespace A247078.P6064528459368327453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A247078.P6064528459368327453

/-! ## A247078.P16339980375397540697

`∪[A000040(n+1)², A247079(n+1)]%A240803(n+1)`
-/

namespace A247078.P16339980375397540697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A240803 (n + 1))

end

end A247078.P16339980375397540697

/-!
# A247079: Numbers for which the harmonic mean of nontrivial divisors is an integer and which are not a square of prime numbers.

The programs for A247079, there is no canonical definition to state claims against.
-/

/-! ## A247079.P10612804594992320518

`filter[A247078(n+1), A324903(#)]`
-/

namespace A247079.P10612804594992320518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A247079.P10612804594992320518

/-! ## A247079.P13753909133165530166

`filter[A247078(n+1), A379118(#)]`
-/

namespace A247079.P13753909133165530166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379118 (f1 j).toNat = 1) n)

end

end A247079.P13753909133165530166

/-! ## A247079.P6623253239841151016

`filter[A247078(n+2), A354108(#)]`
-/

namespace A247079.P6623253239841151016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A247079.P6623253239841151016

/-! ## A247079.P10563260366379004602

`filter[A247078(n+1), A049240(#)]`
-/

namespace A247079.P10563260366379004602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A247079.P10563260366379004602

/-!
# A247081: Positive integers k such that the numerator of the harmonic mean of the nontrivial divisors of k is equal to k.

The programs for A247081, there is no canonical definition to state claims against.
-/

/-! ## A247081.P379716374225447391

`∩[A023886(n+1), A028767(n+1)]`
-/

namespace A247081.P379716374225447391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247081.P379716374225447391

/-!
# A247082: E.g.f.: (8 - 7*cosh(x)) / (13 - 12*cosh(x)).

The programs for A247082, there is no canonical definition to state claims against.
-/

/-! ## A247082.P9934568655525006153

`A050351(2*n)`
-/

namespace A247082.P9934568655525006153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 (2 * n)

end

end A247082.P9934568655525006153

/-! ## A247082.P8952889054211311748

`record[A050351(n)/(-1)^n]`
-/

namespace A247082.P8952889054211311748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050351 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247082.P8952889054211311748

/-! ## A247082.P7460020599722386315

`ceil(A004123(2*n+1)/2)`
-/

namespace A247082.P7460020599722386315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004123 (2 * n + 1) : ℚ) / 2⌉

end

end A247082.P7460020599722386315

/-! ## A247082.P6560627780933706359

`record[A050351(A056944(n))]`
-/

namespace A247082.P6560627780933706359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 (A056944 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247082.P6560627780933706359

/-! ## A247082.P12004268321678354207

`A032111(A004277(n))-1`
-/

namespace A247082.P12004268321678354207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032111 (A004277 n).toNat - 1

end

end A247082.P12004268321678354207

/-!
# A247083: a(n) = 0 for n <= 0: Starting with n=1, a(n) = 1 + the sum of the digital sums of a(0) through a(n-3).

The programs for A247083, the canonical program `A247083.P17136360663830774539` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247083 has offset 0).

The definition of A247083 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A247083.P17136360663830774539

`a(n-1)+A007953(a(n-3))` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247083

/-- `a(n-1)+A007953(a(n-3))` -/
def P17136360663830774539.Spec : Prop :=
  ∀ n, P17136360663830774539.a n = A247083 n

theorem P17136360663830774539.correct : P17136360663830774539.Spec := by
  intro n
  simp only [A247083]

end A247083

/-! ## A247083.P6741415505735110266

`∑[A007953(A135851(A187829(n+1)))]`
-/

namespace A247083.P6741415505735110266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A135851 (A187829 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247083.P6741415505735110266

namespace A247083

/-- `∑[A007953(A135851(A187829(n+1)))]` -/
def P6741415505735110266.Spec : Prop :=
  ∀ n, P6741415505735110266.a n = A247083 n

end A247083

/-!
# A247085: a(n) = A253174(2^n).

The programs for A247085, there is no canonical definition to state claims against.
-/

/-! ## A247085.P9116412713132371059

`A253174(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247085.P9116412713132371059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253174 (2 ^ n)

end

end A247085.P9116412713132371059

/-! ## A247085.P6108203851892512333

`abs(A253174(A000079(n)))`
-/

namespace A247085.P6108203851892512333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253174 (A000079 n).toNat|

end

end A247085.P6108203851892512333

/-! ## A247085.P15303057113116707308

`abs(A253174(sqrt(A000302(n))))`
-/

namespace A247085.P15303057113116707308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253174 (SequenceMachineLib.roundAway (Real.sqrt (A000302 n : ℝ))).toNat|

end

end A247085.P15303057113116707308

/-! ## A247085.P1072080889519742057

`abs(A253174(∑[A011782(n)]))`
-/

namespace A247085.P1072080889519742057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253174 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A247085.P1072080889519742057

/-! ## A247085.P13259234926717219172

`abs(A253174(Δ[A000051(n)]))`
-/

namespace A247085.P13259234926717219172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A253174 (f1 (n + 1) - f1 n).toNat|

end

end A247085.P13259234926717219172

/-!
# A247086: Integers k such that numerator and denominator of sigma(k)/k are both prime.

The programs for A247086, there is no canonical definition to state claims against.
-/

/-! ## A247086.P3818246431502112852

`2*A139394(∏[n+3]+6*4^n+1)`
-/

namespace A247086.P3818246431502112852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139394 (∏ j ∈ Finset.range (n + 1), f1 j + 6 * 4 ^ n + 1)

end

end A247086.P3818246431502112852

/-!
# A247087: a(n) = pi(phi(p(P(n)))) = A000720(A000010(A000041(A000040(n)))).

The programs for A247087, there is no canonical definition to state claims against.
-/

/-! ## A247087.P16858021847259769332

`A000720(A000010(A000041(A000040(n+1))))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A247087.P16858021847259769332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A000041 (A000040 (n + 1)).toNat).toNat).toNat

end

end A247087.P16858021847259769332

/-! ## A247087.P15636368151491452810

`A070804(A058698(n+1))`
-/

namespace A247087.P15636368151491452810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A058698 (n + 1)).toNat

end

end A247087.P15636368151491452810

/-! ## A247087.P1230913083210666758

`A000720(A000010(∑[A182739(n+1)]))`
-/

namespace A247087.P1230913083210666758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A247087.P1230913083210666758

/-! ## A247087.P6693320077638138989

`A000720(A000010(A000041(A008578(n+2))))`
-/

namespace A247087.P6693320077638138989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 (A000041 (A008578 (n + 2)).toNat).toNat).toNat

end

end A247087.P6693320077638138989

/-! ## A247087.P17503556261730885253

`A070804(A000041(A000040(n+1)))`
-/

namespace A247087.P17503556261730885253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (A000041 (A000040 (n + 1)).toNat).toNat

end

end A247087.P17503556261730885253

/-!
# A247089: Initial members of prime quadruples (p, p+2, p+30, p+32).

The programs for A247089, there is no canonical definition to state claims against.
-/

/-! ## A247089.P13050520094112808817

`6*A173088(n+1)-1`
-/

namespace A247089.P13050520094112808817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A173088 (n + 1) - 1

end

end A247089.P13050520094112808817

/-! ## A247089.P10625396098383409783

`A008683(A007918(n))+6*A173088(n+1)`
-/

namespace A247089.P10625396098383409783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007918 n).toNat + 6 * A173088 (n + 1)

end

end A247089.P10625396098383409783

/-! ## A247089.P7995761531668057808

`A189048(A001405(C(3, n))+2)+6*A173088(n+1)`
-/

namespace A247089.P7995761531668057808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189048 (A001405 (Nat.choose 3 n) + 2).toNat + 6 * A173088 (n + 1)

end

end A247089.P7995761531668057808

/-! ## A247089.P7369943954373200310

`A081729(p?[2*n+1])+6*A173088(n+1)`
-/

namespace A247089.P7369943954373200310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + 6 * A173088 (n + 1)

end

end A247089.P7369943954373200310

/-! ## A247089.P6044692453940419243

`A008683(A184856(n+1))+6*A173088(n+1)`
-/

namespace A247089.P6044692453940419243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A184856 (n + 1)).toNat + 6 * A173088 (n + 1)

end

end A247089.P6044692453940419243

/-! ## A247089.P13146561279828053322

`A114592(A117368(n+2))+6*A173088(n+1)`
-/

namespace A247089.P13146561279828053322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A117368 (n + 2)).toNat + 6 * A173088 (n + 1)

end

end A247089.P13146561279828053322

/-! ## A247089.P560983876168288874

`A008683(A215317(n+1))+6*A173088(n+1)`
-/

namespace A247089.P560983876168288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A215317 (n + 1)).toNat + 6 * A173088 (n + 1)

end

end A247089.P560983876168288874

/-! ## A247089.P13779878543892466140

`∩[A049481(n+1)-2, A049481(n+1)]`
-/

namespace A247089.P13779878543892466140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247089.P13779878543892466140

/-! ## A247089.P13669050860511749096

`A049481(eq[2, A049481(n+2)-A049481(n+1)]+1)`
-/

namespace A247089.P13669050860511749096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (n + 2) - A049481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A247089.P13669050860511749096

/-! ## A247089.P15147623577217552434

`A107745(A173088(n+1))`
-/

namespace A247089.P15147623577217552434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107745 (A173088 (n + 1)).toNat

end

end A247089.P15147623577217552434

/-!
# A247090: Eric Rowland's generalization of A132199 as a rectangular array A read by upward antidiagonals.

The programs for A247090, there is no canonical definition to state claims against.
-/

/-! ## A247090.P14935090734601381126

`gcd(A013632(A231246(n+1)), A105438(n))`
-/

namespace A247090.P14935090734601381126
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A013632 (A231246 (n + 1)).toNat) (A105438 n)

end

end A247090.P14935090734601381126

/-! ## A247090.P13187907279663106069

`gcd(A060264(A304336(n)), A285935(n))`
-/

namespace A247090.P13187907279663106069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060264 (A304336 n).toNat) (A285935 n)

end

end A247090.P13187907279663106069

/-! ## A247090.P1695751860875718810

`gcd(A048471(A297321(n))!, A048471(n))`
-/

namespace A247090.P1695751860875718810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A048471 (A297321 n).toNat).toNat : ℤ) (A048471 n)

end

end A247090.P1695751860875718810

/-! ## A247090.P16311682360021380832

`gcd(A084956(A027948(n)), A234575(n+1))`
-/

namespace A247090.P16311682360021380832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084956 (A027948 n).toNat) (A234575 (n + 1))

end

end A247090.P16311682360021380832

/-! ## A247090.P726207966845503232

`gcd(A300670(n+1), A317952(A300700(n)))`
-/

namespace A247090.P726207966845503232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300670 (n + 1)) (A317952 (A300700 n).toNat)

end

end A247090.P726207966845503232

/-!
# A247091: Least k such that k*n+1 is a prime divisor of Fibonacci(k).

The programs for A247091, there is no canonical definition to state claims against.
-/

/-! ## A247091.P16501654895214790497

`(A168171(n+1)-1)/(n+1)`
-/

namespace A247091.P16501654895214790497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168171 (n + 1) - 1 : ℚ) / (n + 1 : ℚ)

end

end A247091.P16501654895214790497

/-! ## A247091.P4905770016200696645

`xor(1, A168171(n+1))/A000027(n+1)`
-/

namespace A247091.P4905770016200696645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 1 (A168171 (n + 1)) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A247091.P4905770016200696645

/-! ## A247091.P13474786629595581485

`and(-2, A168171(n+1))/A028310(n+1)`
-/

namespace A247091.P13474786629595581485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A168171 (n + 1)) : ℚ) / (A028310 (n + 1) : ℚ)

end

end A247091.P13474786629595581485

/-! ## A247091.P11528669518218764547

`and(-2, A168171(n+1))/A028242(2*n)`
-/

namespace A247091.P11528669518218764547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A168171 (n + 1)) : ℚ) / (A028242 (2 * n) : ℚ)

end

end A247091.P11528669518218764547

/-! ## A247091.P12371103526876740244

`and(-2, A168171(n+1))/gcd(n+1, A027903(n))`
-/

namespace A247091.P12371103526876740244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (A168171 (n + 1)) : ℚ) / (Int.gcd (n + 1 : ℤ) (A027903 n) : ℚ)

end

end A247091.P12371103526876740244

/-! ## A247091.P2648611465624477474

`A000010(A168171(n+1))/(n+1)`
-/

namespace A247091.P2648611465624477474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A168171 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A247091.P2648611465624477474

/-! ## A247091.P2591014837191476623

`A003958(A168171(n+1))/A000027(n+1)`
-/

namespace A247091.P2591014837191476623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003958 (A168171 (n + 1)).toNat : ℚ) / (A000027 (n + 1) : ℚ)

end

end A247091.P2591014837191476623

/-!
# A247092: Limiting sequence obtained by taking the sequence of Mersenne numbers 2^n-1, n=1,2,...(A000225) and applying an infinite process which is described in the comments.

The programs for A247092, there is no canonical definition to state claims against.
-/

/-! ## A247092.P11590166816238778642

`xor(record[A047814(n)], A246553(n+1))`
-/

namespace A247092.P11590166816238778642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A246553 (n + 1))

end

end A247092.P11590166816238778642

/-! ## A247092.P17769571755097421092

`xor(A182986(n+1), A246553(n+1))`
-/

namespace A247092.P17769571755097421092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A182986 (n + 1)) (A246553 (n + 1))

end

end A247092.P17769571755097421092

/-! ## A247092.P6881613026213108056

`xor(record[A008472(n+1)], A246553(n+1))`
-/

namespace A247092.P6881613026213108056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A246553 (n + 1))

end

end A247092.P6881613026213108056

/-! ## A247092.P2487472177953292495

`xor(A001414(A008578(n+1)), A246553(n+1))`
-/

namespace A247092.P2487472177953292495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001414 (A008578 (n + 1)).toNat) (A246553 (n + 1))

end

end A247092.P2487472177953292495

/-! ## A247092.P16505482270134941783

`A000079(A053186(∑[n+1]))%A000079(n+1)`
-/

namespace A247092.P16505482270134941783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A053186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat) (A000079 (n + 1))

end

end A247092.P16505482270134941783

/-!
# A247094: Integers of the form (2^k + 1)/(2k + 1).

The programs for A247094, there is no canonical definition to state claims against.
-/

/-! ## A247094.P14157754543635043050

`record[gcd(A007582(n), A178738(n+1))]`
-/

namespace A247094.P14157754543635043050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007582 n) (A178738 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247094.P14157754543635043050

/-! ## A247094.P12339016417184069777

`record[A278968(n+1)+A000007(A278957(n))]`
-/

namespace A247094.P12339016417184069777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278968 (n + 1) + A000007 (A278957 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247094.P12339016417184069777

/-!
# A247096: Numbers n such that (n^2 - 2) and (n^2 + 2) are not squarefree.

The programs for A247096, there is no canonical definition to state claims against.
-/

/-! ## A247096.P17885764420143972440

`∩[A227897(n+1), A228140(n+1)]`
-/

namespace A247096.P17885764420143972440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247096.P17885764420143972440

/-!
# A247097: a(n) = least integer m such that prime(n)+m and prime(n+1)+m are prime.

The programs for A247097, there is no canonical definition to state claims against.
-/

/-! ## A247097.P11462618408053681976

`A258576(n+2)-A241461(A258567(n+1))`
-/

namespace A247097.P11462618408053681976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258576 (n + 2) - A241461 (A258567 (n + 1)).toNat

end

end A247097.P11462618408053681976

/-!
# A247099: Numbers which are the sum or difference of two fifth powers.

The programs for A247099, there is no canonical definition to state claims against.
-/

/-! ## A247099.P476175924655237314

`∪[A004842(n+1), A181124(n+1)]`
-/

namespace A247099.P476175924655237314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247099.P476175924655237314

/-! ## A247099.P2446573792165705557

`∪[A020896(n), A152045(n+1)]`
-/

namespace A247099.P2446573792165705557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020896 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247099.P2446573792165705557

/-! ## A247099.P13700027468402697465

`∪[A003347(n+1), A152045(n+1)]`
-/

namespace A247099.P13700027468402697465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247099.P13700027468402697465

/-! ## A247099.P5651738648818446607

`∪[A004842(n+1), A152045(n+1)]`
-/

namespace A247099.P5651738648818446607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A247099.P5651738648818446607

