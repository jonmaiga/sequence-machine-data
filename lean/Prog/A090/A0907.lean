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
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A090700: a(n) is the smallest number which is simultaneously a prime, the sum of 2 distinct primes, the sum of 3 distinct primes, ... and the sum of n distinct primes.

The programs for A090700, there is no canonical definition to state claims against.
-/

/-! ## A090700.P12143058531822287534

`A103651(A028488(n+1)+n)`
-/

namespace A090700.P12143058531822287534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103651 (A028488 (n + 1) + (n : ℤ)).toNat

end

end A090700.P12143058531822287534

/-! ## A090700.P13405728253285303915

`∩[A109150(n+1), A262392(n)]`
-/

namespace A090700.P13405728253285303915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262392 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090700.P13405728253285303915

/-!
# A090701: a(n) is the minimal number k such that every binary word of length n can be divided into k palindromes.

The programs for A090701, the canonical program `A090701.P294140338646066515` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090701 has offset 1).

The definition of A090701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090701.P3861196558893348979

`∑[char[A298474(n+1)-1]]`
-/

namespace A090701.P3861196558893348979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298474 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090701.P3861196558893348979

namespace A090701

/-- `∑[char[A298474(n+1)-1]]` -/
def P3861196558893348979.Spec : Prop :=
  ∀ n, (P3861196558893348979.a n : ℤ) = A090701 (n + 1)

end A090701

/-! ## A090701.P5880231303616541102

`A008619(A302404(char[10]+n))`
-/

namespace A090701.P5880231303616541102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A302404 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A090701.P5880231303616541102

namespace A090701

/-- `A008619(A302404(char[10]+n))` -/
def P5880231303616541102.Spec : Prop :=
  ∀ n, P5880231303616541102.a n = A090701 (n + 1)

end A090701

/-! ## A090701.P14912639116852331695

`or(char[10], A008619(A302404(n)))`
-/

namespace A090701.P14912639116852331695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A008619 (A302404 n).toNat)

end

end A090701.P14912639116852331695

namespace A090701

/-- `or(char[10], A008619(A302404(n)))` -/
def P14912639116852331695.Spec : Prop :=
  ∀ n, P14912639116852331695.a n = A090701 (n + 1)

end A090701

/-! ## A090701.P294140338646066515

`round(∑[A098181(n)]/A001651(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090701

/-- `round(∑[A098181(n)]/A001651(n+1))` -/
def P294140338646066515.Spec : Prop :=
  ∀ n, P294140338646066515.a n = A090701 (n + 1)

theorem P294140338646066515.correct : P294140338646066515.Spec := by
  intro n
  simp only [A090701, Nat.add_sub_cancel]

end A090701

/-! ## A090701.P9313611907287015426

`A123919(n+3)+char[10]`
-/

namespace A090701.P9313611907287015426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A090701.P9313611907287015426

namespace A090701

/-- `A123919(n+3)+char[10]` -/
def P9313611907287015426.Spec : Prop :=
  ∀ n, P9313611907287015426.a n = A090701 (n + 1)

end A090701

/-!
# A090702: a(n) is the minimal number k such that every binary word of length n can be transformed into a palindrome or an antipalindrome by deleting at most k letters.

The programs for A090702, there is no canonical definition to state claims against.
-/

/-! ## A090702.P10447085022488219828

`comp[∑[5-gcd(3, n)]]-n`
-/

namespace A090702.P10447085022488219828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (Nat.gcd 3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A090702.P10447085022488219828

/-! ## A090702.P6535827718848727471

`∑[char[∑[C(3, n%3)]+1]]`
-/

namespace A090702.P6535827718848727471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090702.P6535827718848727471

/-! ## A090702.P7714619336247409125

`comp[∑[∑[n+2]%5]]-n`
-/

namespace A090702.P7714619336247409125
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A090702.P7714619336247409125

/-! ## A090702.P8880813821629675263

`∑[char[a(n-3)+7]]` with `a(0)=2, a(1)=5, a(2)=8`
-/

namespace A090702.P8880813821629675263
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 8] fun n f2 =>
  f2 (n - 3) + 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090702.P8880813821629675263

/-! ## A090702.P12268406164636281323

`∑[1-((2-n)%7)²%3]`
-/

namespace A090702.P12268406164636281323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (Int.tmod (2 - (n : ℤ)) 7 ^ 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090702.P12268406164636281323

/-!
# A090703: Numbers k such that k*k! + 1 is prime.

The programs for A090703, there is no canonical definition to state claims against.
-/

/-! ## A090703.P12740759316276629058

`A049432(n+1)-1`
-/

namespace A090703.P12740759316276629058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049432 (n + 1) - 1

end

end A090703.P12740759316276629058

/-! ## A090703.P11082243223810649049

`abs(A049432(A348553(n))-1)`
-/

namespace A090703.P11082243223810649049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049432 (A348553 n).toNat - 1|

end

end A090703.P11082243223810649049

/-! ## A090703.P16682235682830461004

`record[A049432(A126759(n))-1]`
-/

namespace A090703.P16682235682830461004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049432 (A126759 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090703.P16682235682830461004

/-! ## A090703.P6763142448760322742

`A057428(n+1)+A049432(n+1)`
-/

namespace A090703.P6763142448760322742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049432 (n + 1)

end

end A090703.P6763142448760322742

/-! ## A090703.P4938529982967272359

`A260196(n+2)+A049432(n+1)`
-/

namespace A090703.P4938529982967272359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A049432 (n + 1)

end

end A090703.P4938529982967272359

/-!
# A090704: Numbers k such that k*k! - 1 is prime.

The programs for A090704, there is no canonical definition to state claims against.
-/

/-! ## A090704.P1240039619503640114

`A049433(n+1)-1`
-/

namespace A090704.P1240039619503640114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049433 (n + 1) - 1

end

end A090704.P1240039619503640114

/-! ## A090704.P14986438350271659526

`A057428(n+1)+A049433(n+1)`
-/

namespace A090704.P14986438350271659526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A049433 (n + 1)

end

end A090704.P14986438350271659526

/-! ## A090704.P17253664391331746588

`A153881(n+2)+A049433(n+1)`
-/

namespace A090704.P17253664391331746588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A049433 (n + 1)

end

end A090704.P17253664391331746588

/-! ## A090704.P8772913668044024131

`A260196(n+2)+A049433(n+1)`
-/

namespace A090704.P8772913668044024131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A049433 (n + 1)

end

end A090704.P8772913668044024131

/-! ## A090704.P12134204457448467647

`A257075(A005472(n+1))+A049433(n+1)`
-/

namespace A090704.P12134204457448467647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 (A005472 (n + 1)).toNat + A049433 (n + 1)

end

end A090704.P12134204457448467647

/-!
# A090705: Lexicographically earliest permutation of squarefree numbers with mu(a(n)) = -(-1)^n, where mu = A008683.

The programs for A090705, there is no canonical definition to state claims against.
-/

/-! ## A090705.P9837081970777754477

`A350033(comp[3*n])`
-/

namespace A090705.P9837081970777754477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350033 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A090705.P9837081970777754477

/-! ## A090705.P9202315632519379595

`A085653(a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A090705.P9202315632519379595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A085653 (a (n - 2)).toNat

end

end A090705.P9202315632519379595

/-! ## A090705.P14364846134013030434

`A093316(a(n-2))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A090705.P14364846134013030434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A093316 (a (n - 2)).toNat + a (n - 2)

end

end A090705.P14364846134013030434

/-! ## A090705.P1581230613159183601

`filter[A350033(n+1), A008966(#)]`
-/

namespace A090705.P1581230613159183601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A090705.P1581230613159183601

/-! ## A090705.P15467942559456051857

`A102510(record[∏{p}[n, #]])`
-/

namespace A090705.P15467942559456051857
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102510 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A090705.P15467942559456051857

/-!
# A090706: Number of numbers having in binary representation the same number of zeros and ones as n has.

The programs for A090706, the canonical program `A090706.P11114919675259605533` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090706 has offset 0).

The definition of A090706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090706.P11114919675259605533

`C(floor(log2(n+1)), A080791(n))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A090706

/-- `C(floor(log2(n+1)), A080791(n))` -/
def P11114919675259605533.Spec : Prop :=
  ∀ n, (P11114919675259605533.a n : ℤ) = A090706 n

theorem P11114919675259605533.correct : P11114919675259605533.Spec := by
  intro n
  simp only [A090706]

end A090706

/-! ## A090706.P13847099304921401305

`A060351(A073137(n))`
-/

namespace A090706.P13847099304921401305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A073137 n).toNat

end

end A090706.P13847099304921401305

namespace A090706

/-- `A060351(A073137(n))` -/
def P13847099304921401305.Spec : Prop :=
  ∀ n, P13847099304921401305.a n = A090706 n

end A090706

/-! ## A090706.P17051375461455190135

`A060351(A073138(n))`
-/

namespace A090706.P17051375461455190135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A073138 n).toNat

end

end A090706.P17051375461455190135

namespace A090706

/-- `A060351(A073138(n))` -/
def P17051375461455190135.Spec : Prop :=
  ∀ n, P17051375461455190135.a n = A090706 n

end A090706

/-! ## A090706.P3359077485131279770

`A178244(A004526(and(n, n-1)))`
-/

namespace A090706.P3359077485131279770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A004526 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A090706.P3359077485131279770

namespace A090706

/-- `A178244(A004526(and(n, n-1)))` -/
def P3359077485131279770.Spec : Prop :=
  ∀ n, P3359077485131279770.a n = A090706 n

end A090706

/-! ## A090706.P12302407177944493432

`A209861(2*n+1)-A209861(2*n)`
-/

namespace A090706.P12302407177944493432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209861 (2 * n + 1) - A209861 (2 * n)

end

end A090706.P12302407177944493432

namespace A090706

/-- `A209861(2*n+1)-A209861(2*n)` -/
def P12302407177944493432.Spec : Prop :=
  ∀ n, P12302407177944493432.a n = A090706 n

end A090706

/-! ## A090706.P1599248184849541931

`A375216(A073139(n)+A073137(n))`
-/

namespace A090706.P1599248184849541931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A073139 n + A073137 n).toNat

end

end A090706.P1599248184849541931

namespace A090706

/-- `A375216(A073139(n)+A073137(n))` -/
def P1599248184849541931.Spec : Prop :=
  ∀ n, P1599248184849541931.a n = A090706 n

end A090706

/-! ## A090706.P3077151903337038542

`C(A023416(A053644(n)), A023416(n))`
-/

namespace A090706.P3077151903337038542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023416 (A053644 n).toNat).toNat (A023416 n).toNat

end

end A090706.P3077151903337038542

namespace A090706

/-- `C(A023416(A053644(n)), A023416(n))` -/
def P3077151903337038542.Spec : Prop :=
  ∀ n, (P3077151903337038542.a n : ℤ) = A090706 n

end A090706

/-! ## A090706.P4368568076555472744

`A028310(C(A000523(n+1), A023416(n)))`
-/

namespace A090706.P4368568076555472744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A000523 (n + 1)).toNat (A023416 n).toNat)

end

end A090706.P4368568076555472744

namespace A090706

/-- `A028310(C(A000523(n+1), A023416(n)))` -/
def P4368568076555472744.Spec : Prop :=
  ∀ n, P4368568076555472744.a n = A090706 n

end A090706

/-! ## A090706.P16357754974568585905

`A007318(A000217(A070939(n))-A000120(n))`
-/

namespace A090706.P16357754974568585905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (A070939 n).toNat - A000120 n).toNat

end

end A090706.P16357754974568585905

namespace A090706

/-- `A007318(A000217(A070939(n))-A000120(n))` -/
def P16357754974568585905.Spec : Prop :=
  ∀ n, P16357754974568585905.a n = A090706 n

end A090706

/-! ## A090706.P6762176828086813346

`A178244(A257697(n))`
-/

namespace A090706.P6762176828086813346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A257697 n).toNat

end

end A090706.P6762176828086813346

namespace A090706

/-- `A178244(A257697(n))` -/
def P6762176828086813346.Spec : Prop :=
  ∀ n, P6762176828086813346.a n = A090706 n

end A090706

/-! ## A090706.P15982461562121095747

`A125644(2*A073137(n))`
-/

namespace A090706.P15982461562121095747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125644 (2 * A073137 n).toNat

end

end A090706.P15982461562121095747

namespace A090706

/-- `A125644(2*A073137(n))` -/
def P15982461562121095747.Spec : Prop :=
  ∀ n, P15982461562121095747.a n = A090706 n

end A090706

/-! ## A090706.P3888684785262234253

`C(A000523(2*(n+1))-1, A023416(2*n+1))`
-/

namespace A090706.P3888684785262234253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000523 (2 * (n + 1)) - 1).toNat (A023416 (2 * n + 1)).toNat

end

end A090706.P3888684785262234253

namespace A090706

/-- `C(A000523(2*(n+1))-1, A023416(2*n+1))` -/
def P3888684785262234253.Spec : Prop :=
  ∀ n, (P3888684785262234253.a n : ℤ) = A090706 n

end A090706

/-! ## A090706.P1238437810619180584

`A292895(A378959(n))`
-/

namespace A090706.P1238437810619180584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292895 (A378959 n).toNat

end

end A090706.P1238437810619180584

namespace A090706

/-- `A292895(A378959(n))` -/
def P1238437810619180584.Spec : Prop :=
  ∀ n, P1238437810619180584.a n = A090706 n

end A090706

/-!
# A090707: Primes whose decimal representation is a valid number in base 4 and interpreted as such is again a prime.

The programs for A090707, there is no canonical definition to state claims against.
-/

/-! ## A090707.P4659738493923507726

`∩[A004678(n+1), A107715(n+1)]`
-/

namespace A090707.P4659738493923507726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P4659738493923507726

/-! ## A090707.P1439448459681319232

`∩[A004678(n+1), A036956(n+1)]`
-/

namespace A090707.P1439448459681319232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P1439448459681319232

/-! ## A090707.P9716338547145111838

`∩[A004678(n+1), A036958(n+1)]`
-/

namespace A090707.P9716338547145111838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P9716338547145111838

/-! ## A090707.P7817866977227719160

`∩[A004678(n+1), A160337(n+1)]`
-/

namespace A090707.P7817866977227719160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P7817866977227719160

/-! ## A090707.P2900133184127029754

`A007090(A065722(n+1))`
-/

namespace A090707.P2900133184127029754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A065722 (n + 1)).toNat

end

end A090707.P2900133184127029754

/-! ## A090707.P15038688986964088313

`A007090(p?[A036955(n+1)])`
-/

namespace A090707.P15038688986964088313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A090707.P15038688986964088313

/-! ## A090707.P13597388606239554696

`A007090(record[A006530(A036955(n+1))])`
-/

namespace A090707.P13597388606239554696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A036955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090707.P13597388606239554696

/-! ## A090707.P3494700251832778641

`A007090(record[A014963(A036955(n+1))])`
-/

namespace A090707.P3494700251832778641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A036955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A090707.P3494700251832778641

/-! ## A090707.P3290393247566589253

`A004678(∑{p}[A065722(n+1), A049084(#)])`
-/

namespace A090707.P3290393247566589253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A049084 p).toNat

end

end A090707.P3290393247566589253

/-! ## A090707.P492158756682257180

`∩[A004678(n+1), A036960(n+1)]`
-/

namespace A090707.P492158756682257180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P492158756682257180

/-! ## A090707.P538267566678003488

`∩[A004678(n+1), A038617(n+1)]`
-/

namespace A090707.P538267566678003488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P538267566678003488

/-! ## A090707.P11861330188142120557

`∩[A004678(n+1), A038616(n+1)]`
-/

namespace A090707.P11861330188142120557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090707.P11861330188142120557

/-! ## A090707.P4157720443624632771

`p?[A004678(n+1)]`
-/

namespace A090707.P4157720443624632771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P4157720443624632771

/-! ## A090707.P5035535955713247976

`p?[A007090(A209259(n))]`
-/

namespace A090707.P5035535955713247976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P5035535955713247976

/-! ## A090707.P11787741258909795115

`p?[A007090(comp[A103164(n)])]`
-/

namespace A090707.P11787741258909795115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P11787741258909795115

/-! ## A090707.P5406813966831903452

`p?[A007090(A000040(n+1))]`
-/

namespace A090707.P5406813966831903452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P5406813966831903452

/-! ## A090707.P5481257755140491897

`p?[A007090(A005180(n+1))]`
-/

namespace A090707.P5481257755140491897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A005180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P5481257755140491897

/-! ## A090707.P314949383998173583

`p?[A007090(A008578(n+1))]`
-/

namespace A090707.P314949383998173583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P314949383998173583

/-! ## A090707.P10656938986696472659

`p?[A007090(comp[A018252(n+1)])]`
-/

namespace A090707.P10656938986696472659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P10656938986696472659

/-! ## A090707.P13979382496254002738

`p?[A007090(p?[A244224(2*n)])]`
-/

namespace A090707.P13979382496254002738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244224 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090707.P13979382496254002738

/-!
# A090708: Primes whose decimal representation is a valid number in base 5 and interpreted as such is again a prime.

The programs for A090708, there is no canonical definition to state claims against.
-/

/-! ## A090708.P10286927155627540603

`∩[A004679(n+1), A036956(n+1)]`
-/

namespace A090708.P10286927155627540603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036956 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P10286927155627540603

/-! ## A090708.P17724552114782794957

`∩[A004679(n+1), A036958(n+1)]`
-/

namespace A090708.P17724552114782794957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P17724552114782794957

/-! ## A090708.P6132741123236954437

`∩[A004679(n+1), A038617(n+1)]`
-/

namespace A090708.P6132741123236954437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P6132741123236954437

/-! ## A090708.P3820910309460459578

`∩[A004679(n+1), A036960(n+1)]`
-/

namespace A090708.P3820910309460459578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P3820910309460459578

/-! ## A090708.P8139375691326728393

`∩[A004679(n+1), A038616(n+1)]`
-/

namespace A090708.P8139375691326728393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P8139375691326728393

/-! ## A090708.P3990943665141601562

`p?[A004679(n+1)]`
-/

namespace A090708.P3990943665141601562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090708.P3990943665141601562

/-! ## A090708.P9178899409820736831

`∩[A004679(n+1), A038615(n+1)]`
-/

namespace A090708.P9178899409820736831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P9178899409820736831

/-! ## A090708.P11835882653784084976

`∩[A004679(n+1), A156756(n+1)]`
-/

namespace A090708.P11835882653784084976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P11835882653784084976

/-! ## A090708.P5542428877061212049

`∩[A004679(n+1), A244392(n+1)]`
-/

namespace A090708.P5542428877061212049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P5542428877061212049

/-! ## A090708.P9976647889066615017

`∩[A004679(n+1), A386358(n+1)]`
-/

namespace A090708.P9976647889066615017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P9976647889066615017

/-! ## A090708.P8994671347694440830

`∩[A004679(n+1), A036962(n+1)]`
-/

namespace A090708.P8994671347694440830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P8994671347694440830

/-! ## A090708.P274493229894359880

`∩[A004679(n+1), A386351(n+1)]`
-/

namespace A090708.P274493229894359880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P274493229894359880

/-! ## A090708.P3906036958867431326

`∩[A004679(n+1), A386353(n+1)]`
-/

namespace A090708.P3906036958867431326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P3906036958867431326

/-! ## A090708.P5180090204990561699

`∩[A004679(n+1), A386354(n+1)]`
-/

namespace A090708.P5180090204990561699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P5180090204990561699

/-! ## A090708.P8365213924011781360

`∩[A004679(n+1), A386356(n+1)]`
-/

namespace A090708.P8365213924011781360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P8365213924011781360

/-! ## A090708.P5501440760814086123

`∩[A004679(n+1), A386357(n+1)]`
-/

namespace A090708.P5501440760814086123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090708.P5501440760814086123

/-! ## A090708.P5245993464135474607

`A007091(A065723(n+1))`
-/

namespace A090708.P5245993464135474607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A065723 (n + 1)).toNat

end

end A090708.P5245993464135474607

/-! ## A090708.P12545004966046446372

`p?[A007091(A000040(n+1))]`
-/

namespace A090708.P12545004966046446372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090708.P12545004966046446372

/-! ## A090708.P8464721917384278222

`p?[A007091(A000430(n+1))]`
-/

namespace A090708.P8464721917384278222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A000430 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090708.P8464721917384278222

/-! ## A090708.P8964312654068742423

`p?[A007091(A008578(n+1))]`
-/

namespace A090708.P8964312654068742423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090708.P8964312654068742423

/-!
# A090709: Primes whose decimal representation is a valid number in base 6 and interpreted as such is again a prime.

The programs for A090709, there is no canonical definition to state claims against.
-/

/-! ## A090709.P17107094294918999301

`∩[A004680(n+1), A036958(n+1)]`
-/

namespace A090709.P17107094294918999301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P17107094294918999301

/-! ## A090709.P12063514631910901996

`∩[A004680(n+1), A038617(n+1)]`
-/

namespace A090709.P12063514631910901996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P12063514631910901996

/-! ## A090709.P4673664529450173347

`∩[A004680(n+1), A036960(n+1)]`
-/

namespace A090709.P4673664529450173347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P4673664529450173347

/-! ## A090709.P467997026381387953

`∩[A004680(n+1), A038616(n+1)]`
-/

namespace A090709.P467997026381387953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P467997026381387953

/-! ## A090709.P1543027397488354793

`p?[A004680(n+1)]`
-/

namespace A090709.P1543027397488354793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090709.P1543027397488354793

/-! ## A090709.P16916829561300092165

`∩[A004680(n+1), A386358(n+1)]`
-/

namespace A090709.P16916829561300092165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P16916829561300092165

/-! ## A090709.P15149997689064119773

`∩[A004680(n+1), A038615(n+1)]`
-/

namespace A090709.P15149997689064119773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P15149997689064119773

/-! ## A090709.P8817022560946569190

`∩[A004680(n+1), A036962(n+1)]`
-/

namespace A090709.P8817022560946569190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P8817022560946569190

/-! ## A090709.P9856735520333948248

`∩[A004680(n+1), A386354(n+1)]`
-/

namespace A090709.P9856735520333948248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P9856735520333948248

/-! ## A090709.P13544536720963072094

`∩[A004680(n+1), A386356(n+1)]`
-/

namespace A090709.P13544536720963072094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P13544536720963072094

/-! ## A090709.P12008213898728302003

`∩[A004680(n+1), A386357(n+1)]`
-/

namespace A090709.P12008213898728302003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P12008213898728302003

/-! ## A090709.P4106885075064465557

`∩[A004680(n+1), A386355(n+1)]`
-/

namespace A090709.P4106885075064465557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P4106885075064465557

/-! ## A090709.P7162762166057596086

`∩[A004680(n+1), A038614(n+1)]`
-/

namespace A090709.P7162762166057596086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P7162762166057596086

/-! ## A090709.P11646949037482804553

`∩[A004680(n+1), A380468(n+1)]`
-/

namespace A090709.P11646949037482804553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P11646949037482804553

/-! ## A090709.P11258744954514575542

`∩[A004680(n+1), A042986(n+1)]`
-/

namespace A090709.P11258744954514575542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090709.P11258744954514575542

/-! ## A090709.P6460628807105217947

`p?[A007092(A209259(n))]`
-/

namespace A090709.P6460628807105217947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A209259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090709.P6460628807105217947

/-! ## A090709.P9506800587282164982

`A007092(A065724(n+1))`
-/

namespace A090709.P9506800587282164982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A065724 (n + 1)).toNat

end

end A090709.P9506800587282164982

/-! ## A090709.P2814903151206706867

`p?[A007092(A000040(n+1))]`
-/

namespace A090709.P2814903151206706867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090709.P2814903151206706867

/-! ## A090709.P13711674339701240864

`p?[A007092(A001751(n+1))]`
-/

namespace A090709.P13711674339701240864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A001751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090709.P13711674339701240864

/-!
# A090710: Primes with digits less than 7 whose decimal representation is also a prime when interpreted in base 7.

The programs for A090710, the canonical program `A090710.P79863525791221557` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090710 has offset 1).

The definition of A090710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090710.P79863525791221557

`p?[A004681(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A090710

/-- `p?[A004681(n+1)]` -/
def P79863525791221557.Spec : Prop :=
  ∀ n, P79863525791221557.a n = A090710 (n + 1)

theorem P79863525791221557.correct : P79863525791221557.Spec := by
  intro n
  simp only [A090710, Nat.add_sub_cancel]

end A090710

/-! ## A090710.P11061736259450483853

`∩[A004681(n+1), A036960(n+1)]`
-/

namespace A090710.P11061736259450483853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P11061736259450483853

namespace A090710

/-- `∩[A004681(n+1), A036960(n+1)]` -/
def P11061736259450483853.Spec : Prop :=
  ∀ n, (P11061736259450483853.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P7845027728409935539

`∩[A004681(n+1), A038616(n+1)]`
-/

namespace A090710.P7845027728409935539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P7845027728409935539

namespace A090710

/-- `∩[A004681(n+1), A038616(n+1)]` -/
def P7845027728409935539.Spec : Prop :=
  ∀ n, (P7845027728409935539.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P7653817064305768126

`∩[A004681(n+1), A038617(n+1)]`
-/

namespace A090710.P7653817064305768126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P7653817064305768126

namespace A090710

/-- `∩[A004681(n+1), A038617(n+1)]` -/
def P7653817064305768126.Spec : Prop :=
  ∀ n, (P7653817064305768126.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P14917686050802989913

`∩[A004681(n+1), A156756(n+1)]`
-/

namespace A090710.P14917686050802989913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P14917686050802989913

namespace A090710

/-- `∩[A004681(n+1), A156756(n+1)]` -/
def P14917686050802989913.Spec : Prop :=
  ∀ n, (P14917686050802989913.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P16658704770271522727

`∩[A004681(n+1), A386358(n+1)]`
-/

namespace A090710.P16658704770271522727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P16658704770271522727

namespace A090710

/-- `∩[A004681(n+1), A386358(n+1)]` -/
def P16658704770271522727.Spec : Prop :=
  ∀ n, (P16658704770271522727.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P11545728908568369033

`∩[A004681(n+1), A038615(n+1)]`
-/

namespace A090710.P11545728908568369033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P11545728908568369033

namespace A090710

/-- `∩[A004681(n+1), A038615(n+1)]` -/
def P11545728908568369033.Spec : Prop :=
  ∀ n, (P11545728908568369033.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P8481630221216448384

`∩[A004681(n+1), A386357(n+1)]`
-/

namespace A090710.P8481630221216448384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P8481630221216448384

namespace A090710

/-- `∩[A004681(n+1), A386357(n+1)]` -/
def P8481630221216448384.Spec : Prop :=
  ∀ n, (P8481630221216448384.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P12917788954187482308

`∩[A004681(n+1), A036962(n+1)]`
-/

namespace A090710.P12917788954187482308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036962 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P12917788954187482308

namespace A090710

/-- `∩[A004681(n+1), A036962(n+1)]` -/
def P12917788954187482308.Spec : Prop :=
  ∀ n, (P12917788954187482308.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P16432370068385941114

`∩[A004681(n+1), A042986(n+1)]`
-/

namespace A090710.P16432370068385941114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P16432370068385941114

namespace A090710

/-- `∩[A004681(n+1), A042986(n+1)]` -/
def P16432370068385941114.Spec : Prop :=
  ∀ n, (P16432370068385941114.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P12061095584511709087

`∩[A000040(n+1), A004681(n+1)]`
-/

namespace A090710.P12061095584511709087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P12061095584511709087

namespace A090710

/-- `∩[A000040(n+1), A004681(n+1)]` -/
def P12061095584511709087.Spec : Prop :=
  ∀ n, (P12061095584511709087.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P12124709386858258954

`∩[A004681(n+1), A008578(n+1)]`
-/

namespace A090710.P12124709386858258954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P12124709386858258954

namespace A090710

/-- `∩[A004681(n+1), A008578(n+1)]` -/
def P12124709386858258954.Spec : Prop :=
  ∀ n, (P12124709386858258954.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P11426434020425628460

`∩[A004681(n+1), A033946(n+1)]`
-/

namespace A090710.P11426434020425628460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P11426434020425628460

namespace A090710

/-- `∩[A004681(n+1), A033946(n+1)]` -/
def P11426434020425628460.Spec : Prop :=
  ∀ n, (P11426434020425628460.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P16696754591704730789

`∩[A004681(n+1), A046022(n+1)]`
-/

namespace A090710.P16696754591704730789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P16696754591704730789

namespace A090710

/-- `∩[A004681(n+1), A046022(n+1)]` -/
def P16696754591704730789.Spec : Prop :=
  ∀ n, (P16696754591704730789.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P13073728185727958223

`∩[A004681(n+1), A051948(n+1)]`
-/

namespace A090710.P13073728185727958223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P13073728185727958223

namespace A090710

/-- `∩[A004681(n+1), A051948(n+1)]` -/
def P13073728185727958223.Spec : Prop :=
  ∀ n, (P13073728185727958223.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P8759665558407003053

`∩[A004681(n+1), A053813(n+1)]`
-/

namespace A090710.P8759665558407003053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P8759665558407003053

namespace A090710

/-- `∩[A004681(n+1), A053813(n+1)]` -/
def P8759665558407003053.Spec : Prop :=
  ∀ n, (P8759665558407003053.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P10828936941315892497

`∩[A004681(n+1), A060634(n+1)]`
-/

namespace A090710.P10828936941315892497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P10828936941315892497

namespace A090710

/-- `∩[A004681(n+1), A060634(n+1)]` -/
def P10828936941315892497.Spec : Prop :=
  ∀ n, (P10828936941315892497.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P5029827396506141290

`∩[A004681(n+1), A062972(n+1)]`
-/

namespace A090710.P5029827396506141290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P5029827396506141290

namespace A090710

/-- `∩[A004681(n+1), A062972(n+1)]` -/
def P5029827396506141290.Spec : Prop :=
  ∀ n, (P5029827396506141290.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P10739032730247765140

`∩[A004681(n+1), A067126(n+1)]`
-/

namespace A090710.P10739032730247765140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P10739032730247765140

namespace A090710

/-- `∩[A004681(n+1), A067126(n+1)]` -/
def P10739032730247765140.Spec : Prop :=
  ∀ n, (P10739032730247765140.a n : ℤ) = A090710 (n + 1)

end A090710

/-! ## A090710.P5816458326404232070

`∩[A004681(n+1), A116974(n+1)]`
-/

namespace A090710.P5816458326404232070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090710.P5816458326404232070

namespace A090710

/-- `∩[A004681(n+1), A116974(n+1)]` -/
def P5816458326404232070.Spec : Prop :=
  ∀ n, (P5816458326404232070.a n : ℤ) = A090710 (n + 1)

end A090710

/-!
# A090711: Primes whose base-11 expansion is a (valid) decimal expansion of a prime.

The programs for A090711, there is no canonical definition to state claims against.
-/

/-! ## A090711.P15665086847025601828

`p?[A031216(n+1)]`
-/

namespace A090711.P15665086847025601828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090711.P15665086847025601828

/-! ## A090711.P17962709092051280590

`∩[A348283(n+1), A031216(n+1)]`
-/

namespace A090711.P17962709092051280590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P17962709092051280590

/-! ## A090711.P5662294031063755804

`∩[A000040(n+1), A031216(n+1)]`
-/

namespace A090711.P5662294031063755804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P5662294031063755804

/-! ## A090711.P13767055044507226775

`∩[A008578(n+1), A031216(n+1)]`
-/

namespace A090711.P13767055044507226775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P13767055044507226775

/-! ## A090711.P8290326960417267990

`∩[A031216(n+1), A033946(n+1)]`
-/

namespace A090711.P8290326960417267990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P8290326960417267990

/-! ## A090711.P9296909948122984689

`∩[A031216(n+1), A046022(n+1)]`
-/

namespace A090711.P9296909948122984689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P9296909948122984689

/-! ## A090711.P12215759699815304021

`∩[A031216(n+1), A051948(n+1)]`
-/

namespace A090711.P12215759699815304021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P12215759699815304021

/-! ## A090711.P4800315832090903277

`∩[A031216(n+1), A053813(n+1)]`
-/

namespace A090711.P4800315832090903277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P4800315832090903277

/-! ## A090711.P3596157237889352565

`∩[A031216(n+1), A066050(n+1)]`
-/

namespace A090711.P3596157237889352565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P3596157237889352565

/-! ## A090711.P9115398866075341140

`∩[A031216(n+1), A067126(n+1)]`
-/

namespace A090711.P9115398866075341140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P9115398866075341140

/-! ## A090711.P10812728281695856813

`∩[A031216(n+1), A106118(n+1)]`
-/

namespace A090711.P10812728281695856813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P10812728281695856813

/-! ## A090711.P1824548771067487759

`∩[A031216(n+1), A116974(n+1)]`
-/

namespace A090711.P1824548771067487759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P1824548771067487759

/-! ## A090711.P1865078862932760829

`∩[A031216(n+1), A158611(n+1)]`
-/

namespace A090711.P1865078862932760829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P1865078862932760829

/-! ## A090711.P17120780063076184039

`∩[A031216(n+1), A175787(n+1)]`
-/

namespace A090711.P17120780063076184039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P17120780063076184039

/-! ## A090711.P2595740888541290731

`∩[A031216(n+1), A182986(n+1)]`
-/

namespace A090711.P2595740888541290731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P2595740888541290731

/-! ## A090711.P17366776689967822235

`∩[A031216(n+1), A284696(n+1)]`
-/

namespace A090711.P17366776689967822235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P17366776689967822235

/-! ## A090711.P449563355141571442

`∩[A326715(n+1), A031216(n+1)]`
-/

namespace A090711.P449563355141571442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P449563355141571442

/-! ## A090711.P15079280182487734273

`∩[A031216(n+1), A132630(n+1)]`
-/

namespace A090711.P15079280182487734273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P15079280182487734273

/-! ## A090711.P1622789063083259312

`∩[A031216(n+1), A182140(n+1)]`
-/

namespace A090711.P1622789063083259312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P1622789063083259312

/-! ## A090711.P14795364406492860121

`∩[A031216(n+1), A176165(n+1)]`
-/

namespace A090711.P14795364406492860121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090711.P14795364406492860121

/-!
# A090712: Primes whose base-13 expansion is a (valid) decimal expansion of a prime.

The programs for A090712, there is no canonical definition to state claims against.
-/

/-! ## A090712.P3233393408394611483

`p?[A031345(n+1)]`
-/

namespace A090712.P3233393408394611483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090712.P3233393408394611483

/-! ## A090712.P13990246075592657075

`∩[A031345(n+1), A373789(n+1)]`
-/

namespace A090712.P13990246075592657075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373789 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P13990246075592657075

/-! ## A090712.P1000137524153392069

`∩[A031345(n+1), A348283(n+1)]`
-/

namespace A090712.P1000137524153392069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P1000137524153392069

/-! ## A090712.P647403020265404945

`∩[A000040(n+1), A031345(n+1)]`
-/

namespace A090712.P647403020265404945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P647403020265404945

/-! ## A090712.P6543026379636490941

`∩[A031345(n+1), A106118(n+1)]`
-/

namespace A090712.P6543026379636490941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P6543026379636490941

/-! ## A090712.P16485176327691480661

`∩[A008578(n+1), A031345(n+1)]`
-/

namespace A090712.P16485176327691480661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P16485176327691480661

/-! ## A090712.P8505687713652135848

`∩[A031345(n+1), A033946(n+1)]`
-/

namespace A090712.P8505687713652135848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P8505687713652135848

/-! ## A090712.P16979455208447826298

`∩[A031345(n+1), A046022(n+1)]`
-/

namespace A090712.P16979455208447826298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P16979455208447826298

/-! ## A090712.P3721774220068444630

`∩[A031345(n+1), A053813(n+1)]`
-/

namespace A090712.P3721774220068444630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P3721774220068444630

/-! ## A090712.P9212378364643236733

`∩[A031345(n+1), A062972(n+1)]`
-/

namespace A090712.P9212378364643236733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P9212378364643236733

/-! ## A090712.P14491076099763814154

`∩[A031345(n+1), A066050(n+1)]`
-/

namespace A090712.P14491076099763814154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P14491076099763814154

/-! ## A090712.P8462995821852572757

`∩[A031345(n+1), A067126(n+1)]`
-/

namespace A090712.P8462995821852572757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P8462995821852572757

/-! ## A090712.P15129249813415764841

`∩[A031345(n+1), A116974(n+1)]`
-/

namespace A090712.P15129249813415764841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P15129249813415764841

/-! ## A090712.P7732249668116131600

`∩[A031345(n+1), A158611(n+1)]`
-/

namespace A090712.P7732249668116131600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P7732249668116131600

/-! ## A090712.P12515118419831832542

`∩[A031345(n+1), A175787(n+1)]`
-/

namespace A090712.P12515118419831832542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P12515118419831832542

/-! ## A090712.P3664319069329443439

`∩[A031345(n+1), A182986(n+1)]`
-/

namespace A090712.P3664319069329443439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P3664319069329443439

/-! ## A090712.P7950558003902938255

`∩[A031345(n+1), A251595(n+1)]`
-/

namespace A090712.P7950558003902938255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P7950558003902938255

/-! ## A090712.P14814479002091149171

`∩[A031345(n+1), A326715(n+1)]`
-/

namespace A090712.P14814479002091149171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P14814479002091149171

/-! ## A090712.P7889700101778595060

`∩[A031345(n+1), A348440(n+1)]`
-/

namespace A090712.P7889700101778595060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090712.P7889700101778595060

/-!
# A090713: Primes whose base-17 expansion is a (valid) decimal expansion of a prime.

The programs for A090713, there is no canonical definition to state claims against.
-/

/-! ## A090713.P7238763172249768134

`record[A079068(record[A144680(n+3)²])]`
-/

namespace A090713.P7238763172249768134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144680 (n + 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090713.P7238763172249768134

/-! ## A090713.P8891744724379050787

`∩[A062326(n+1), A130676(n+1)]`
-/

namespace A090713.P8891744724379050787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130676 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090713.P8891744724379050787

/-!
# A090715: Primes which are also prime if their base 31 representation is interpreted as a base 10 number.

The programs for A090715, there is no canonical definition to state claims against.
-/

/-! ## A090715.P14470969541058398680

`p?[∑[A045995(A252867(n))]]`
-/

namespace A090715.P14470969541058398680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045995 (A252867 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090715.P14470969541058398680

/-! ## A090715.P14940051787607249641

`p?[∑[A169991(A172273(n))]]`
-/

namespace A090715.P14940051787607249641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169991 (A172273 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090715.P14940051787607249641

/-! ## A090715.P17368130155389810069

`A153014(n+1)+A095066(A152971(n))`
-/

namespace A090715.P17368130155389810069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153014 (n + 1) + A095066 (A152971 n).toNat

end

end A090715.P17368130155389810069

/-!
# A090717: Primes which are also prime if their base 64 representation is interpreted as a base 10 number.

The programs for A090717, there is no canonical definition to state claims against.
-/

/-! ## A090717.P4071711887683493390

`p?[A028903(A092909(n+1))]`
-/

namespace A090717.P4071711887683493390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A092909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090717.P4071711887683493390

/-! ## A090717.P5347029360677733734

`p?[A004862(n+1)*A026386(A010325(n))]`
-/

namespace A090717.P5347029360677733734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004862 (n + 1) * A026386 (A010325 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090717.P5347029360677733734

/-! ## A090717.P10525512347565296268

`p?[∑[A040790(A038654(n+1))]]`
-/

namespace A090717.P10525512347565296268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040790 (A038654 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090717.P10525512347565296268

/-!
# A090718: Let p run through the primes; write p in base 10 and then interpret it in base 128 getting a number q; if q is prime then adjoin q to the sequence.

The programs for A090718, there is no canonical definition to state claims against.
-/

/-! ## A090718.P16594902321753930367

`A171045(∑[A099575(2^n+n)])`
-/

namespace A090718.P16594902321753930367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099575 (2 ^ n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171045 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090718.P16594902321753930367

/-! ## A090718.P17274725974841193226

`p?[A004873(n+1)*A124389(n)]`
-/

namespace A090718.P17274725974841193226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1) * A124389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090718.P17274725974841193226

/-! ## A090718.P11204119788585403981

`p?[A004873(n+1)*A146531(n)]`
-/

namespace A090718.P11204119788585403981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004873 (n + 1) * A146531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090718.P11204119788585403981

/-!
# A090719: Primes whose representation in base 256 can be interpreted as a decimal prime.

The programs for A090719, there is no canonical definition to state claims against.
-/

/-! ## A090719.P12676819562533933228

`p?[A102489(A092909(n+1))]`
-/

namespace A090719.P12676819562533933228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (A092909 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090719.P12676819562533933228

/-! ## A090719.P13802649304360305044

`record[p?[A004885(A304717(n+1))]]`
-/

namespace A090719.P13802649304360305044
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (A304717 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090719.P13802649304360305044

/-! ## A090719.P7029767908395913294

`p?[Δ[A004895(n+1)]*A004885(n+1)]`
-/

namespace A090719.P7029767908395913294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004895 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A004885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090719.P7029767908395913294

/-! ## A090719.P16233195725113141790

`p?[(A175064(n+1)-1)*A004885(n+1)]`
-/

namespace A090719.P16233195725113141790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175064 (n + 1) - 1) * A004885 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090719.P16233195725113141790

/-!
# A090720: Primes whose representation in base 512 can be interpreted as a decimal prime.

The programs for A090720, there is no canonical definition to state claims against.
-/

/-! ## A090720.P2251786995719506793

`p?[A004896(n+1)-A028384(n)]`
-/

namespace A090720.P2251786995719506793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004896 (n + 1) - A028384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090720.P2251786995719506793

/-! ## A090720.P6710410300964660426

`A007659(n+1)%∑[A126098(2*(n+2))]`
-/

namespace A090720.P6710410300964660426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126098 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007659 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090720.P6710410300964660426

/-!
# A090721: Primes whose representation in base 1024 can be interpreted as a decimal prime.

The programs for A090721, there is no canonical definition to state claims against.
-/

/-! ## A090721.P15073330861163675537

`p?[A004905(∑[A340811(n)])]`
-/

namespace A090721.P15073330861163675537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090721.P15073330861163675537

/-! ## A090721.P15992256020323824964

`record[p?[A004905(A143694(n+1))]]`
-/

namespace A090721.P15992256020323824964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (A143694 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090721.P15992256020323824964

/-! ## A090721.P6771034202980344857

`p?[A004906(n+1)*A040735(n)]`
-/

namespace A090721.P6771034202980344857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004906 (n + 1) * A040735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090721.P6771034202980344857

/-! ## A090721.P8259203138291867159

`p?[A004905(n+1)*A286852(n)]`
-/

namespace A090721.P8259203138291867159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004905 (n + 1) * A286852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090721.P8259203138291867159

/-!
# A090722: a(n) = if 10 - Mod(Prime(n),10) == {1,3,7,9} respectively then {1,2,3,0}.

The programs for A090722, the canonical program `A090722.P4706722054819847709` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090722 has offset 4).

The definition of A090722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090722.P4706722054819847709

`round(sqrt(A138401(n+4)%10))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090722

/-- `round(sqrt(A138401(n+4)%10))` -/
def P4706722054819847709.Spec : Prop :=
  ∀ n, P4706722054819847709.a n = A090722 (n + 4)

theorem P4706722054819847709.correct : P4706722054819847709.Spec := by
  intro n
  simp only [A090722, Nat.add_sub_cancel]

end A090722

/-! ## A090722.P3163769564881565231

`A100019(A005097(n+3))%5`
-/

namespace A090722.P3163769564881565231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100019 (A005097 (n + 3)).toNat) 5

end

end A090722.P3163769564881565231

namespace A090722

/-- `A100019(A005097(n+3))%5` -/
def P3163769564881565231.Spec : Prop :=
  ∀ n, P3163769564881565231.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P8847856256368110861

`A222251(A171013(n+4))%5`
-/

namespace A090722.P8847856256368110861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222251 (A171013 (n + 4)).toNat) 5

end

end A090722.P8847856256368110861

namespace A090722

/-- `A222251(A171013(n+4))%5` -/
def P8847856256368110861.Spec : Prop :=
  ∀ n, P8847856256368110861.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P3717638004203624599

`A051744(A086304(n+1))%5`
-/

namespace A090722.P3717638004203624599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051744 (A086304 (n + 1)).toNat) 5

end

end A090722.P3717638004203624599

namespace A090722

/-- `A051744(A086304(n+1))%5` -/
def P3717638004203624599.Spec : Prop :=
  ∀ n, P3717638004203624599.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P3966666620924359289

`A047448(A065091(n+3))%4`
-/

namespace A090722.P3966666620924359289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047448 (A065091 (n + 3)).toNat) 4

end

end A090722.P3966666620924359289

namespace A090722

/-- `A047448(A065091(n+3))%4` -/
def P3966666620924359289.Spec : Prop :=
  ∀ n, P3966666620924359289.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P13996675936456388905

`A047448(A000040(n+4))%4`
-/

namespace A090722.P13996675936456388905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047448 (A000040 (n + 4)).toNat) 4

end

end A090722.P13996675936456388905

namespace A090722

/-- `A047448(A000040(n+4))%4` -/
def P13996675936456388905.Spec : Prop :=
  ∀ n, P13996675936456388905.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P7773542310505221847

`A222210(A171049(n+4))%5`
-/

namespace A090722.P7773542310505221847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222210 (A171049 (n + 4)).toNat) 5

end

end A090722.P7773542310505221847

namespace A090722

/-- `A222210(A171049(n+4))%5` -/
def P7773542310505221847.Spec : Prop :=
  ∀ n, P7773542310505221847.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P4344189945877322443

`A222210(A171055(n+4))%5`
-/

namespace A090722.P4344189945877322443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222210 (A171055 (n + 4)).toNat) 5

end

end A090722.P4344189945877322443

namespace A090722

/-- `A222210(A171055(n+4))%5` -/
def P4344189945877322443.Spec : Prop :=
  ∀ n, P4344189945877322443.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P16014557304535334596

`(A090724(n+4)+2+n)%4`
-/

namespace A090722.P16014557304535334596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090724 (n + 4) + 2 + (n : ℤ)) 4

end

end A090722.P16014557304535334596

namespace A090722

/-- `(A090724(n+4)+2+n)%4` -/
def P16014557304535334596.Spec : Prop :=
  ∀ n, P16014557304535334596.a n = A090722 (n + 4)

end A090722

/-! ## A090722.P14335278989417844218

`A047448(A090417(n+1))%4`
-/

namespace A090722.P14335278989417844218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047448 (A090417 (n + 1)).toNat) 4

end

end A090722.P14335278989417844218

namespace A090722

/-- `A047448(A090417(n+1))%4` -/
def P14335278989417844218.Spec : Prop :=
  ∀ n, P14335278989417844218.a n = A090722 (n + 4)

end A090722

/-!
# A090723: a(1) = 1; for n > 1, number of partitions of n into distinct odd parts such that the two largest parts differ by 2.

The programs for A090723, there is no canonical definition to state claims against.
-/

/-! ## A090723.P10912375686537234174

`abs(char[1]+Δ[A298596(n)])`
-/

namespace A090723.P10912375686537234174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)|

end

end A090723.P10912375686537234174

/-! ## A090723.P9502018930407612430

`lcm(Δ[A298596(n)], A105812(n))`
-/

namespace A090723.P9502018930407612430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A105812 n)

end

end A090723.P9502018930407612430

/-! ## A090723.P2146669607529079708

`(char[1]+Δ[A298596(n)])*A010892(3*(n+1))`
-/

namespace A090723.P2146669607529079708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298596 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)) * A010892 (3 * (n + 1))

end

end A090723.P2146669607529079708

/-! ## A090723.P52998892419750274

`A116927(A028309(n+1)+1)`
-/

namespace A090723.P52998892419750274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116927 (A028309 (n + 1) + 1).toNat

end

end A090723.P52998892419750274

/-! ## A090723.P2157918596457850076

`A124761(xor(5, A007284(n)))`
-/

namespace A090723.P2157918596457850076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (Int.xor 5 (A007284 n)).toNat

end

end A090723.P2157918596457850076

/-!
# A090725: Primes whose representation in base 16 has no alphabetic characters.

The programs for A090725, there is no canonical definition to state claims against.
-/

/-! ## A090725.P11372030776380435299

`p?[A102489(n)]`
-/

namespace A090725.P11372030776380435299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090725.P11372030776380435299

/-! ## A090725.P12584324590965479365

`record[A006530(A102489(n+2))]`
-/

namespace A090725.P12584324590965479365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102489 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090725.P12584324590965479365

/-! ## A090725.P13383296415135350836

`filter[A102489(n+1), A010051(#)]`
-/

namespace A090725.P13383296415135350836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A090725.P13383296415135350836

/-! ## A090725.P17068462039039066195

`∩[A000040(n+1), A102489(n)]`
-/

namespace A090725.P17068462039039066195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090725.P17068462039039066195

/-! ## A090725.P14358588599408998970

`record[A020639(A102489(n+1)+1)]`
-/

namespace A090725.P14358588599408998970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102489 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090725.P14358588599408998970

/-! ## A090725.P3725178340451634998

`filter[A102489(n+2), A080339(#)]`
-/

namespace A090725.P3725178340451634998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A090725.P3725178340451634998

/-! ## A090725.P10582046579751882913

`∩[A240960(n+1), A102489(n)]`
-/

namespace A090725.P10582046579751882913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090725.P10582046579751882913

/-! ## A090725.P17100673424226419711

`∩[A385492(n+1), A102489(n)]`
-/

namespace A090725.P17100673424226419711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090725.P17100673424226419711

/-!
# A090727: a(n) = 16a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 16.

The programs for A090727, the canonical program `A090727.P8229929483819381010` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090727 has offset 0).

The definition of A090727 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-a(n-2)` (program `A090727.P8229929483819381010`, by `A090727.P8229929483819381010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090727.P8229929483819381010

`16*a(n-1)-a(n-2)` with `a(0)=2, a(1)=16`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090727

/-- `16*a(n-1)-a(n-2)` -/
def P8229929483819381010.Spec : Prop :=
  ∀ n, P8229929483819381010.a n = A090727 n

theorem P8229929483819381010.correct : P8229929483819381010.Spec := by
  intro n
  simp only [A090727]

end A090727

/-! ## A090727.P1237383137970143067

`2*A001081(n)`
-/

namespace A090727.P1237383137970143067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001081 n

end

end A090727.P1237383137970143067

namespace A090727

/-- `2*A001081(n)` -/
def P1237383137970143067.Spec : Prop :=
  ∀ n, P1237383137970143067.a n = A090727 n

end A090727

/-! ## A090727.P11246491450033265738

`ogf((2-16x)/(1-16x+x^2))`
-/

namespace A090727.P11246491450033265738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -16] [1, -16, 1] n

end

end A090727.P11246491450033265738

namespace A090727

/-- `ogf((2-16x)/(1-16x+x^2))` -/
def P11246491450033265738.Spec : Prop :=
  ∀ n, P11246491450033265738.a n = A090727 n

end A090727

/-! ## A090727.P369960234007641862

`(8+sqrt(63))^n+(8-sqrt(63))^n`
-/

namespace A090727.P369960234007641862
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 + Real.sqrt (63 : ℝ)) ^ n + (8 - Real.sqrt (63 : ℝ)) ^ n

end

end A090727.P369960234007641862

namespace A090727

/-- `(8+sqrt(63))^n+(8-sqrt(63))^n` -/
def P369960234007641862.Spec : Prop :=
  ∀ n, P369960234007641862.a n = (A090727 n : ℝ)

theorem P369960234007641862.correct : P369960234007641862.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090727, Nat.add_sub_cancel, A090727.P369960234007641862.a, A090727.P8229929483819381010.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090727, Nat.add_sub_cancel, A090727.P369960234007641862.a, A090727.P8229929483819381010.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090727

/-! ## A090727.P7724777862955940434

`abs(a(n-1)/(1/4)²-a(n-2))` with `a(0)=2, a(1)=16`
-/

namespace A090727.P7724777862955940434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 16] fun n a =>
  |a (n - 1) / ((1 : ℚ) / 4) ^ 2 - a (n - 2)|

end

end A090727.P7724777862955940434

namespace A090727

/-- `abs(a(n-1)/(1/4)²-a(n-2))` -/
def P7724777862955940434.Spec : Prop :=
  ∀ n, P7724777862955940434.a n = (A090727 n : ℚ)

end A090727

/-! ## A090727.P6075861407492125888

`floor(a(n-1)/(1/4)²-a(n-2))` with `a(0)=2, a(1)=16`
-/

namespace A090727.P6075861407492125888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16] fun n a =>
  ⌊(a (n - 1) : ℚ) / ((1 : ℚ) / 4) ^ 2 - (a (n - 2) : ℚ)⌋

end

end A090727.P6075861407492125888

namespace A090727

/-- `floor(a(n-1)/(1/4)²-a(n-2))` -/
def P6075861407492125888.Spec : Prop :=
  ∀ n, P6075861407492125888.a n = A090727 n

end A090727

/-! ## A090727.P7542538494120318440

`ceil(a(n-1)/(1/4)²-a(n-2))` with `a(0)=2, a(1)=16`
-/

namespace A090727.P7542538494120318440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 16] fun n a =>
  ⌈(a (n - 1) : ℚ) / ((1 : ℚ) / 4) ^ 2 - (a (n - 2) : ℚ)⌉

end

end A090727.P7542538494120318440

namespace A090727

/-- `ceil(a(n-1)/(1/4)²-a(n-2))` -/
def P7542538494120318440.Spec : Prop :=
  ∀ n, P7542538494120318440.a n = A090727 n

end A090727

/-! ## A090727.P17710398607548122857

`A204516(3*(n+1))`
-/

namespace A090727.P17710398607548122857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204516 (3 * (n + 1))

end

end A090727.P17710398607548122857

namespace A090727

/-- `A204516(3*(n+1))` -/
def P17710398607548122857.Spec : Prop :=
  ∀ n, P17710398607548122857.a n = A090727 n

end A090727

/-! ## A090727.P6286073572703754905

`lcm(A001081(n)+A001081(n), A000034(n))`
-/

namespace A090727.P6286073572703754905
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001081 n + A001081 n) (A000034 n)

end

end A090727.P6286073572703754905

namespace A090727

/-- `lcm(A001081(n)+A001081(n), A000034(n))` -/
def P6286073572703754905.Spec : Prop :=
  ∀ n, (P6286073572703754905.a n : ℤ) = A090727 n

end A090727

/-! ## A090727.P17045729748373789507

`2*(A041110(2*n+1)-A041110(2*n))`
-/

namespace A090727.P17045729748373789507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041110 (2 * n + 1) - A041110 (2 * n))

end

end A090727.P17045729748373789507

namespace A090727

/-- `2*(A041110(2*n+1)-A041110(2*n))` -/
def P17045729748373789507.Spec : Prop :=
  ∀ n, P17045729748373789507.a n = A090727 n

end A090727

/-!
# A090728: a(n) = 20*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 20.

The programs for A090728, the canonical program `A090728.P7869236324471757852` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090728 has offset 0).

The definition of A090728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-a(n-2)` (program `A090728.P7869236324471757852`, by `A090728.P7869236324471757852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090728.P7869236324471757852

`20*a(n-1)-a(n-2)` with `a(0)=2, a(1)=20`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090728

/-- `20*a(n-1)-a(n-2)` -/
def P7869236324471757852.Spec : Prop :=
  ∀ n, P7869236324471757852.a n = A090728 n

theorem P7869236324471757852.correct : P7869236324471757852.Spec := by
  intro n
  simp only [A090728]

end A090728

/-! ## A090728.P5128275316370538238

`ogf((2-20x)/(1-20x+x^2))`
-/

namespace A090728.P5128275316370538238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -20] [1, -20, 1] n

end

end A090728.P5128275316370538238

namespace A090728

/-- `ogf((2-20x)/(1-20x+x^2))` -/
def P5128275316370538238.Spec : Prop :=
  ∀ n, P5128275316370538238.a n = A090728 n

end A090728

/-! ## A090728.P1138602176185268046

`(10+3*sqrt(11))^n+(10-3*sqrt(11))^n`
-/

namespace A090728.P1138602176185268046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (10 + 3 * Real.sqrt (11 : ℝ)) ^ n + (10 - 3 * Real.sqrt (11 : ℝ)) ^ n

end

end A090728.P1138602176185268046

namespace A090728

/-- `(10+3*sqrt(11))^n+(10-3*sqrt(11))^n` -/
def P1138602176185268046.Spec : Prop :=
  ∀ n, P1138602176185268046.a n = (A090728 n : ℝ)

theorem P1138602176185268046.correct : P1138602176185268046.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090728, Nat.add_sub_cancel, A090728.P1138602176185268046.a, A090728.P7869236324471757852.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090728, Nat.add_sub_cancel, A090728.P1138602176185268046.a, A090728.P7869236324471757852.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090728

/-! ## A090728.P7944883881811991331

`2*A001085(n)`
-/

namespace A090728.P7944883881811991331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001085 n

end

end A090728.P7944883881811991331

namespace A090728

/-- `2*A001085(n)` -/
def P7944883881811991331.Spec : Prop :=
  ∀ n, P7944883881811991331.a n = A090728 n

end A090728

/-! ## A090728.P8157166929687918429

`lcm(2, record[Δ[A221762(n+1)]])`
-/

namespace A090728.P8157166929687918429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221762 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A090728.P8157166929687918429

namespace A090728

/-- `lcm(2, record[Δ[A221762(n+1)]])` -/
def P8157166929687918429.Spec : Prop :=
  ∀ n, (P8157166929687918429.a n : ℤ) = A090728 n

end A090728

/-! ## A090728.P17985045971146714273

`2*(A075839(n+1)-9*A075843(n))`
-/

namespace A090728.P17985045971146714273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075839 (n + 1) - 9 * A075843 n)

end

end A090728.P17985045971146714273

namespace A090728

/-- `2*(A075839(n+1)-9*A075843(n))` -/
def P17985045971146714273.Spec : Prop :=
  ∀ n, P17985045971146714273.a n = A090728 n

end A090728

/-! ## A090728.P14711337958982771717

`2*(A041178(2*n+1)-A041178(2*n))`
-/

namespace A090728.P14711337958982771717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041178 (2 * n + 1) - A041178 (2 * n))

end

end A090728.P14711337958982771717

namespace A090728

/-- `2*(A041178(2*n+1)-A041178(2*n))` -/
def P14711337958982771717.Spec : Prop :=
  ∀ n, P14711337958982771717.a n = A090728 n

end A090728

/-! ## A090728.P11175280799464458714

`2*(2*A198947(2*n+1)-A221763(2*n+1))`
-/

namespace A090728.P11175280799464458714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A198947 (2 * n + 1) - A221763 (2 * n + 1))

end

end A090728.P11175280799464458714

namespace A090728

/-- `2*(2*A198947(2*n+1)-A221763(2*n+1))` -/
def P11175280799464458714.Spec : Prop :=
  ∀ n, P11175280799464458714.a n = A090728 n

end A090728

/-! ## A090728.P3882764401429674374

`2*A322836(A000217(n+11)-11)`
-/

namespace A090728.P3882764401429674374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A322836 (A000217 (n + 11) - 11).toNat

end

end A090728.P3882764401429674374

namespace A090728

/-- `2*A322836(A000217(n+11)-11)` -/
def P3882764401429674374.Spec : Prop :=
  ∀ n, P3882764401429674374.a n = A090728 n

end A090728

/-!
# A090729: a(n) = 21a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 21.

The programs for A090729, the canonical program `A090729.P3831322520534250089` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090729 has offset 0).

The definition of A090729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `21*a(n-1)-a(n-2)` (program `A090729.P3831322520534250089`, by `A090729.P3831322520534250089.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090729.P3831322520534250089

`21*a(n-1)-a(n-2)` with `a(0)=2, a(1)=21`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090729

/-- `21*a(n-1)-a(n-2)` -/
def P3831322520534250089.Spec : Prop :=
  ∀ n, P3831322520534250089.a n = A090729 n

theorem P3831322520534250089.correct : P3831322520534250089.Spec := by
  intro n
  simp only [A090729]

end A090729

/-! ## A090729.P9253996154265979051

`ogf((2-21x)/(1-21x+x^2))`
-/

namespace A090729.P9253996154265979051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -21] [1, -21, 1] n

end

end A090729.P9253996154265979051

namespace A090729

/-- `ogf((2-21x)/(1-21x+x^2))` -/
def P9253996154265979051.Spec : Prop :=
  ∀ n, P9253996154265979051.a n = A090729 n

end A090729

/-! ## A090729.P3356158220123719833

`A060964(eq[21, A002262(n)])`
-/

namespace A090729.P3356158220123719833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090729.P3356158220123719833

namespace A090729

/-- `A060964(eq[21, A002262(n)])` -/
def P3356158220123719833.Spec : Prop :=
  ∀ n, P3356158220123719833.a n = A090729 n

end A090729

/-! ## A090729.P512878029986222455

`A060964(eq[22, A002260(n+1)])`
-/

namespace A090729.P512878029986222455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090729.P512878029986222455

namespace A090729

/-- `A060964(eq[22, A002260(n+1)])` -/
def P512878029986222455.Spec : Prop :=
  ∀ n, P512878029986222455.a n = A090729 n

end A090729

/-! ## A090729.P12312237846493520387

`A060964(eq[22, A134868(n+1)])`
-/

namespace A090729.P12312237846493520387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090729.P12312237846493520387

namespace A090729

/-- `A060964(eq[22, A134868(n+1)])` -/
def P12312237846493520387.Spec : Prop :=
  ∀ n, P12312237846493520387.a n = A090729 n

end A090729

/-! ## A090729.P4208083980488510702

`((21+sqrt(437))^n+(21-sqrt(437))^n)/2^n`
-/

namespace A090729.P4208083980488510702
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((21 + Real.sqrt (437 : ℝ)) ^ n + (21 - Real.sqrt (437 : ℝ)) ^ n) / (2 ^ n : ℝ)

end

end A090729.P4208083980488510702

namespace A090729

/-- `((21+sqrt(437))^n+(21-sqrt(437))^n)/2^n` -/
def P4208083980488510702.Spec : Prop :=
  ∀ n, P4208083980488510702.a n = (A090729 n : ℝ)

theorem P4208083980488510702.correct : P4208083980488510702.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090729, Nat.add_sub_cancel, A090729.P4208083980488510702.a, A090729.P3831322520534250089.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090729, Nat.add_sub_cancel, A090729.P4208083980488510702.a, A090729.P3831322520534250089.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090729

/-!
# A090730: a(n) = 22*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 22.

The programs for A090730, the canonical program `A090730.P11564087786267980059` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090730 has offset 0).

The definition of A090730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `22*a(n-1)-a(n-2)` (program `A090730.P11564087786267980059`, by `A090730.P11564087786267980059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090730.P11564087786267980059

`22*a(n-1)-a(n-2)` with `a(0)=2, a(1)=22`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090730

/-- `22*a(n-1)-a(n-2)` -/
def P11564087786267980059.Spec : Prop :=
  ∀ n, P11564087786267980059.a n = A090730 n

theorem P11564087786267980059.correct : P11564087786267980059.Spec := by
  intro n
  simp only [A090730]

end A090730

/-! ## A090730.P12471425286829821171

`2*A077422(n)`
-/

namespace A090730.P12471425286829821171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077422 n

end

end A090730.P12471425286829821171

namespace A090730

/-- `2*A077422(n)` -/
def P12471425286829821171.Spec : Prop :=
  ∀ n, P12471425286829821171.a n = A090730 n

end A090730

/-! ## A090730.P7483839078582108848

`ogf((2-22x)/(1-22x+x^2))`
-/

namespace A090730.P7483839078582108848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -22] [1, -22, 1] n

end

end A090730.P7483839078582108848

namespace A090730

/-- `ogf((2-22x)/(1-22x+x^2))` -/
def P7483839078582108848.Spec : Prop :=
  ∀ n, P7483839078582108848.a n = A090730 n

end A090730

/-! ## A090730.P15244565324607613968

`(11+2*sqrt(30))^n+(11-2*sqrt(30))^n`
-/

namespace A090730.P15244565324607613968
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 + 2 * Real.sqrt (30 : ℝ)) ^ n + (11 - 2 * Real.sqrt (30 : ℝ)) ^ n

end

end A090730.P15244565324607613968

namespace A090730

/-- `(11+2*sqrt(30))^n+(11-2*sqrt(30))^n` -/
def P15244565324607613968.Spec : Prop :=
  ∀ n, P15244565324607613968.a n = (A090730 n : ℝ)

theorem P15244565324607613968.correct : P15244565324607613968.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090730, Nat.add_sub_cancel, A090730.P15244565324607613968.a, A090730.P11564087786267980059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A090730, Nat.add_sub_cancel, A090730.P15244565324607613968.a, A090730.P11564087786267980059.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A090730

/-! ## A090730.P6361710799379831961

`or(2, 4*A322707(n))`
-/

namespace A090730.P6361710799379831961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (4 * A322707 n)

end

end A090730.P6361710799379831961

namespace A090730

/-- `or(2, 4*A322707(n))` -/
def P6361710799379831961.Spec : Prop :=
  ∀ n, P6361710799379831961.a n = A090730 n

end A090730

/-! ## A090730.P7886473082701188945

`2*A153318(A004273(n))`
-/

namespace A090730.P7886473082701188945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153318 (A004273 n).toNat

end

end A090730.P7886473082701188945

namespace A090730

/-- `2*A153318(A004273(n))` -/
def P7886473082701188945.Spec : Prop :=
  ∀ n, P7886473082701188945.a n = A090730 n

end A090730

/-! ## A090730.P17001193387116495177

`2*(A041218(2*n+1)-A041218(2*n))`
-/

namespace A090730.P17001193387116495177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041218 (2 * n + 1) - A041218 (2 * n))

end

end A090730.P17001193387116495177

namespace A090730

/-- `2*(A041218(2*n+1)-A041218(2*n))` -/
def P17001193387116495177.Spec : Prop :=
  ∀ n, P17001193387116495177.a n = A090730 n

end A090730

/-!
# A090731: a(n) = 23a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 23.

The programs for A090731, the canonical program `A090731.P14130489889869903197` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090731 has offset 0).

The definition of A090731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*a(n-1)-a(n-2)` (program `A090731.P14130489889869903197`, by `A090731.P14130489889869903197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090731.P14130489889869903197

`23*a(n-1)-a(n-2)` with `a(0)=2, a(1)=23`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090731

/-- `23*a(n-1)-a(n-2)` -/
def P14130489889869903197.Spec : Prop :=
  ∀ n, P14130489889869903197.a n = A090731 n

theorem P14130489889869903197.correct : P14130489889869903197.Spec := by
  intro n
  simp only [A090731]

end A090731

/-! ## A090731.P13306983305195452479

`ogf((2-23x)/(1-23x+x^2))`
-/

namespace A090731.P13306983305195452479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -23] [1, -23, 1] n

end

end A090731.P13306983305195452479

namespace A090731

/-- `ogf((2-23x)/(1-23x+x^2))` -/
def P13306983305195452479.Spec : Prop :=
  ∀ n, P13306983305195452479.a n = A090731 n

end A090731

/-! ## A090731.P15140422515419582662

`(2/(23+5*sqrt(21)))^n+((23+5*sqrt(21))/2)^n`
-/

namespace A090731.P15140422515419582662
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 / (23 + 5 * Real.sqrt (21 : ℝ))) ^ n + ((23 + 5 * Real.sqrt (21 : ℝ)) / 2) ^ n

end

end A090731.P15140422515419582662

namespace A090731

/-- `(2/(23+5*sqrt(21)))^n+((23+5*sqrt(21))/2)^n` -/
def P15140422515419582662.Spec : Prop :=
  ∀ n, P15140422515419582662.a n = (A090731 n : ℝ)

end A090731

/-! ## A090731.P8971631559073261781

`A003501(2*n)`
-/

namespace A090731.P8971631559073261781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 (2 * n)

end

end A090731.P8971631559073261781

namespace A090731

/-- `A003501(2*n)` -/
def P8971631559073261781.Spec : Prop :=
  ∀ n, P8971631559073261781.a n = A090731 n

end A090731

/-! ## A090731.P12915278508007157292

`or(2, Δ[A004254(abs(n+1-3*n))])`
-/

namespace A090731.P12915278508007157292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 |(n + 1 : ℤ) - (3 * n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A090731.P12915278508007157292

namespace A090731

/-- `or(2, Δ[A004254(abs(n+1-3*n))])` -/
def P12915278508007157292.Spec : Prop :=
  ∀ n, P12915278508007157292.a n = A090731 n

end A090731

/-! ## A090731.P7451920756095600705

`record[A003501(A014681(n))]`
-/

namespace A090731.P7451920756095600705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003501 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090731.P7451920756095600705

namespace A090731

/-- `record[A003501(A014681(n))]` -/
def P7451920756095600705.Spec : Prop :=
  ∀ n, P7451920756095600705.a n = A090731 n

end A090731

/-! ## A090731.P9776940896739778895

`or(2, A003501(A005843(n)))`
-/

namespace A090731.P9776940896739778895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A003501 (A005843 n).toNat)

end

end A090731.P9776940896739778895

namespace A090731

/-- `or(2, A003501(A005843(n)))` -/
def P9776940896739778895.Spec : Prop :=
  ∀ n, P9776940896739778895.a n = A090731 n

end A090731

/-!
# A090732: a(n) = 24a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 24.

The programs for A090732, the canonical program `A090732.P14867937342530533409` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090732 has offset 0).

The definition of A090732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*a(n-1)-a(n-2)` (program `A090732.P14867937342530533409`, by `A090732.P14867937342530533409.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090732.P14867937342530533409

`24*a(n-1)-a(n-2)` with `a(0)=2, a(1)=24`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090732

/-- `24*a(n-1)-a(n-2)` -/
def P14867937342530533409.Spec : Prop :=
  ∀ n, P14867937342530533409.a n = A090732 n

theorem P14867937342530533409.correct : P14867937342530533409.Spec := by
  intro n
  simp only [A090732]

end A090732

/-! ## A090732.P11451079879232996468

`2*A077424(n)`
-/

namespace A090732.P11451079879232996468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077424 n

end

end A090732.P11451079879232996468

namespace A090732

/-- `2*A077424(n)` -/
def P11451079879232996468.Spec : Prop :=
  ∀ n, P11451079879232996468.a n = A090732 n

end A090732

/-! ## A090732.P16710202636995447342

`ogf((2-24x)/(1-24x+x^2))`
-/

namespace A090732.P16710202636995447342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -24] [1, -24, 1] n

end

end A090732.P16710202636995447342

namespace A090732

/-- `ogf((2-24x)/(1-24x+x^2))` -/
def P16710202636995447342.Spec : Prop :=
  ∀ n, P16710202636995447342.a n = A090732 n

end A090732

/-! ## A090732.P16832783338379515496

`lcm(gcd(8, A090316(n)), A077424(n))`
-/

namespace A090732.P16832783338379515496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.gcd 8 (A090316 n) : ℤ) (A077424 n)

end

end A090732.P16832783338379515496

namespace A090732

/-- `lcm(gcd(8, A090316(n)), A077424(n))` -/
def P16832783338379515496.Spec : Prop :=
  ∀ n, (P16832783338379515496.a n : ℤ) = A090732 n

end A090732

/-! ## A090732.P6159426736017929391

`record[2*gcd(A027656(n), A041262(n))]`
-/

namespace A090732.P6159426736017929391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A027656 n) (A041262 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090732.P6159426736017929391

namespace A090732

/-- `record[2*gcd(A027656(n), A041262(n))]` -/
def P6159426736017929391.Spec : Prop :=
  ∀ n, (P6159426736017929391.a n : ℤ) = A090732 n

end A090732

/-! ## A090732.P9265294400235908763

`A159664(n+1)+A159664(A028310(n))`
-/

namespace A090732.P9265294400235908763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159664 (n + 1) + A159664 (A028310 n).toNat

end

end A090732.P9265294400235908763

namespace A090732

/-- `A159664(n+1)+A159664(A028310(n))` -/
def P9265294400235908763.Spec : Prop :=
  ∀ n, P9265294400235908763.a n = A090732 n

end A090732

/-! ## A090732.P12524744902669233147

`2*(A041262(2*n+1)-A041262(2*n))`
-/

namespace A090732.P12524744902669233147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A041262 (2 * n + 1) - A041262 (2 * n))

end

end A090732.P12524744902669233147

namespace A090732

/-- `2*(A041262(2*n+1)-A041262(2*n))` -/
def P12524744902669233147.Spec : Prop :=
  ∀ n, P12524744902669233147.a n = A090732 n

end A090732

/-! ## A090732.P8941065098729002287

`A077424(n)+A077424(n)%A090248(n)`
-/

namespace A090732.P8941065098729002287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077424 n + Int.tmod (A077424 n) (A090248 n)

end

end A090732.P8941065098729002287

namespace A090732

/-- `A077424(n)+A077424(n)%A090248(n)` -/
def P8941065098729002287.Spec : Prop :=
  ∀ n, P8941065098729002287.a n = A090732 n

end A090732

/-!
# A090733: a(n) = 25*a(n-1) - a(n-2), starting with a(0) = 2 and a(1) = 25.

The programs for A090733, the canonical program `A090733.P17060607527050291154` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090733 has offset 0).

The definition of A090733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `25*a(n-1)-a(n-2)` (program `A090733.P17060607527050291154`, by `A090733.P17060607527050291154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A090733.P17060607527050291154

`25*a(n-1)-a(n-2)` with `a(0)=2, a(1)=25`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090733

/-- `25*a(n-1)-a(n-2)` -/
def P17060607527050291154.Spec : Prop :=
  ∀ n, P17060607527050291154.a n = A090733 n

theorem P17060607527050291154.correct : P17060607527050291154.Spec := by
  intro n
  simp only [A090733]

end A090733

/-! ## A090733.P13804383929730448291

`ogf((2-25x)/(1-25x+x^2))`
-/

namespace A090733.P13804383929730448291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -25] [1, -25, 1] n

end

end A090733.P13804383929730448291

namespace A090733

/-- `ogf((2-25x)/(1-25x+x^2))` -/
def P13804383929730448291.Spec : Prop :=
  ∀ n, P13804383929730448291.a n = A090733 n

end A090733

/-! ## A090733.P3640215599746509523

`ceil(a(n-1)/(1/5)²-a(n-2))` with `a(0)=2, a(1)=25`
-/

namespace A090733.P3640215599746509523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 25] fun n a =>
  ⌈(a (n - 1) : ℚ) / ((1 : ℚ) / 5) ^ 2 - (a (n - 2) : ℚ)⌉

end

end A090733.P3640215599746509523

namespace A090733

/-- `ceil(a(n-1)/(1/5)²-a(n-2))` -/
def P3640215599746509523.Spec : Prop :=
  ∀ n, P3640215599746509523.a n = A090733 n

end A090733

/-! ## A090733.P2094070698898126241

`round(a(n-1)/(1/5)²-a(n-2))` with `a(0)=2, a(1)=25`
-/

namespace A090733.P2094070698898126241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 25] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 5) ^ 2 - (a (n - 2) : ℚ))

end

end A090733.P2094070698898126241

namespace A090733

/-- `round(a(n-1)/(1/5)²-a(n-2))` -/
def P2094070698898126241.Spec : Prop :=
  ∀ n, P2094070698898126241.a n = A090733 n

end A090733

/-! ## A090733.P1225022784963320980

`floor(A097780(2*n)/A097780(n))+1`
-/

namespace A090733.P1225022784963320980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097780 (2 * n) : ℚ) / (A097780 n : ℚ)⌋ + 1

end

end A090733.P1225022784963320980

namespace A090733

/-- `floor(A097780(2*n)/A097780(n))+1` -/
def P1225022784963320980.Spec : Prop :=
  ∀ n, P1225022784963320980.a n = A090733 n

end A090733

/-!
# A090735: Number of positive squarefree numbers <= n that can be expressed as a sum of 2 squares > 0.

The programs for A090735, the canonical program `A090735.P3181232905764454533` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090735 has offset 1).

The definition of A090735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090735.P3181232905764454533

`∑[char[A020893(n+2)-1]]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090735

/-- `∑[char[A020893(n+2)-1]]` -/
def P3181232905764454533.Spec : Prop :=
  ∀ n, (P3181232905764454533.a n : ℤ) = A090735 (n + 1)

theorem P3181232905764454533.correct : P3181232905764454533.Spec := by
  intro n
  simp only [A090735, Nat.add_sub_cancel]

end A090735

/-! ## A090735.P16426611666155487829

`∑[C(A048153(n+1), ∑[n])]-1`
-/

namespace A090735.P16426611666155487829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048153 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A090735.P16426611666155487829

namespace A090735

/-- `∑[C(A048153(n+1), ∑[n])]-1` -/
def P16426611666155487829.Spec : Prop :=
  ∀ n, P16426611666155487829.a n = A090735 (n + 1)

end A090735

/-! ## A090735.P1560679917157687828

`∑[char[A020893(A152271(n))-1]]-1`
-/

namespace A090735.P1560679917157687828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020893 (A152271 n).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A090735.P1560679917157687828

namespace A090735

/-- `∑[char[A020893(A152271(n))-1]]-1` -/
def P1560679917157687828.Spec : Prop :=
  ∀ n, P1560679917157687828.a n = A090735 (n + 1)

end A090735

/-! ## A090735.P15627932832546637423

`∑[C(A048153(n+1), A179865(n+1))]`
-/

namespace A090735.P15627932832546637423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048153 (n + 1)).toNat (A179865 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090735.P15627932832546637423

namespace A090735

/-- `∑[C(A048153(n+1), A179865(n+1))]` -/
def P15627932832546637423.Spec : Prop :=
  ∀ n, (P15627932832546637423.a n : ℤ) = A090735 (n + 1)

end A090735

/-! ## A090735.P11687267784190230623

`∑[and(A008966(n+1), A227781(n+1))]`
-/

namespace A090735.P11687267784190230623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008966 (n + 1)) (A227781 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090735.P11687267784190230623

namespace A090735

/-- `∑[and(A008966(n+1), A227781(n+1))]` -/
def P11687267784190230623.Spec : Prop :=
  ∀ n, P11687267784190230623.a n = A090735 (n + 1)

end A090735

/-! ## A090735.P16963648077370200569

`∑[A073424(A048153(n+1))]`
-/

namespace A090735.P16963648077370200569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A048153 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090735.P16963648077370200569

namespace A090735

/-- `∑[A073424(A048153(n+1))]` -/
def P16963648077370200569.Spec : Prop :=
  ∀ n, P16963648077370200569.a n = A090735 (n + 1)

end A090735

/-!
# A090736: Number of positive integers <= n that can be expressed as a sum of 2 coprime squares > 0.

The programs for A090736, the canonical program `A090736.P14073947983549201074` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090736 has offset 1).

The definition of A090736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090736.P14073947983549201074

`∑[floor(atan(A000095(n+1)))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A090736

/-- `∑[floor(atan(A000095(n+1)))]` -/
def P14073947983549201074.Spec : Prop :=
  ∀ n, P14073947983549201074.a n = A090736 (n + 1)

theorem P14073947983549201074.correct : P14073947983549201074.Spec := by
  intro n
  simp only [A090736, Nat.add_sub_cancel]

end A090736

/-! ## A090736.P1891237220550803781

`∑[char[A008784(n+2)-1]]`
-/

namespace A090736.P1891237220550803781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P1891237220550803781

namespace A090736

/-- `∑[char[A008784(n+2)-1]]` -/
def P1891237220550803781.Spec : Prop :=
  ∀ n, (P1891237220550803781.a n : ℤ) = A090736 (n + 1)

end A090736

/-! ## A090736.P12928433801212390484

`∑[char[A037942(n+2)-1]]`
-/

namespace A090736.P12928433801212390484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037942 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P12928433801212390484

namespace A090736

/-- `∑[char[A037942(n+2)-1]]` -/
def P12928433801212390484.Spec : Prop :=
  ∀ n, (P12928433801212390484.a n : ℤ) = A090736 (n + 1)

end A090736

/-! ## A090736.P741871111207649920

`Δ[n²]-∑[gcd(2, A007897(n+1))]`
-/

namespace A090736.P741871111207649920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007897 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A090736.P741871111207649920

namespace A090736

/-- `Δ[n²]-∑[gcd(2, A007897(n+1))]` -/
def P741871111207649920.Spec : Prop :=
  ∀ n, P741871111207649920.a n = A090736 (n + 1)

end A090736

/-! ## A090736.P15222094788757206432

`∑[A001221(or(1, A000095(n+1)))]`
-/

namespace A090736.P15222094788757206432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor 1 (A000095 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P15222094788757206432

namespace A090736

/-- `∑[A001221(or(1, A000095(n+1)))]` -/
def P15222094788757206432.Spec : Prop :=
  ∀ n, P15222094788757206432.a n = A090736 (n + 1)

end A090736

/-! ## A090736.P14683418149128838979

`∑[∑{p}[A000095(n+1), A000010(#)]]`
-/

namespace A090736.P14683418149128838979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A000010 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P14683418149128838979

namespace A090736

/-- `∑[∑{p}[A000095(n+1), A000010(#)]]` -/
def P14683418149128838979.Spec : Prop :=
  ∀ n, P14683418149128838979.a n = A090736 (n + 1)

end A090736

/-! ## A090736.P10693727929980091019

`∑[∑{p}[A000095(n+1), A001222(#)]]`
-/

namespace A090736.P10693727929980091019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A001222 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P10693727929980091019

namespace A090736

/-- `∑[∑{p}[A000095(n+1), A001222(#)]]` -/
def P10693727929980091019.Spec : Prop :=
  ∀ n, P10693727929980091019.a n = A090736 (n + 1)

end A090736

/-! ## A090736.P8365725366386355096

`∑[A001222(∏{p}[A000095(n+1), #])]`
-/

namespace A090736.P8365725366386355096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P8365725366386355096

namespace A090736

/-- `∑[A001222(∏{p}[A000095(n+1), #])]` -/
def P8365725366386355096.Spec : Prop :=
  ∀ n, P8365725366386355096.a n = A090736 (n + 1)

end A090736

/-! ## A090736.P2933374059942374306

`∑[and(1, A275786(n+1))]-1`
-/

namespace A090736.P2933374059942374306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A275786 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A090736.P2933374059942374306

namespace A090736

/-- `∑[and(1, A275786(n+1))]-1` -/
def P2933374059942374306.Spec : Prop :=
  ∀ n, P2933374059942374306.a n = A090736 (n + 1)

end A090736

/-! ## A090736.P8765398590676966385

`∑[A055094(n+1)%2]`
-/

namespace A090736.P8765398590676966385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055094 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090736.P8765398590676966385

namespace A090736

/-- `∑[A055094(n+1)%2]` -/
def P8765398590676966385.Spec : Prop :=
  ∀ n, P8765398590676966385.a n = A090736 (n + 1)

end A090736

/-!
# A090737: Triangle of Eulerian numbers modulo 3.

The programs for A090737, the canonical program `A090737.P10847885528079715946` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090737 has offset 1).

The definition of A090737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A090737.P7049392432891375562

`A169623(n)%3`
-/

namespace A090737.P7049392432891375562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 n) 3

end

end A090737.P7049392432891375562

namespace A090737

/-- `A169623(n)%3` -/
def P7049392432891375562.Spec : Prop :=
  ∀ n, P7049392432891375562.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P7584866050383088379

`A209417(n+1)%3`
-/

namespace A090737.P7584866050383088379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209417 (n + 1)) 3

end

end A090737.P7584866050383088379

namespace A090737

/-- `A209417(n+1)%3` -/
def P7584866050383088379.Spec : Prop :=
  ∀ n, P7584866050383088379.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P10847885528079715946

`A290453(A007401(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A090737

/-- `A290453(A007401(n+1))` -/
def P10847885528079715946.Spec : Prop :=
  ∀ n, P10847885528079715946.a n = A090737 (n + 1)

theorem P10847885528079715946.correct : P10847885528079715946.Spec := by
  intro n
  simp only [A090737, Nat.add_sub_cancel]

end A090737

/-! ## A090737.P8450230999663587001

`A188587(n)%3`
-/

namespace A090737.P8450230999663587001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188587 n) 3

end

end A090737.P8450230999663587001

namespace A090737

/-- `A188587(n)%3` -/
def P8450230999663587001.Spec : Prop :=
  ∀ n, P8450230999663587001.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P4846583543186548582

`A008292(n+1)%3`
-/

namespace A090737.P4846583543186548582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008292 (n + 1)) 3

end

end A090737.P4846583543186548582

namespace A090737

/-- `A008292(n+1)%3` -/
def P4846583543186548582.Spec : Prop :=
  ∀ n, P4846583543186548582.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P9814384838048169861

`A123125(comp[∑[n]])%3`
-/

namespace A090737.P9814384838048169861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123125 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) 3

end

end A090737.P9814384838048169861

namespace A090737

/-- `A123125(comp[∑[n]])%3` -/
def P9814384838048169861.Spec : Prop :=
  ∀ n, P9814384838048169861.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P4446313560322622534

`A173018(lt[A048993(n), A049020(n)])%3`
-/

namespace A090737.P4446313560322622534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P4446313560322622534

namespace A090737

/-- `A173018(lt[A048993(n), A049020(n)])%3` -/
def P4446313560322622534.Spec : Prop :=
  ∀ n, P4446313560322622534.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P11489133153372255036

`A173018(lt[A057427(n), A049020(n)])%3`
-/

namespace A090737.P11489133153372255036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P11489133153372255036

namespace A090737

/-- `A173018(lt[A057427(n), A049020(n)])%3` -/
def P11489133153372255036.Spec : Prop :=
  ∀ n, P11489133153372255036.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P5441929768801590861

`A173018(lt[A090181(n), A049020(n)])%3`
-/

namespace A090737.P5441929768801590861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P5441929768801590861

namespace A090737

/-- `A173018(lt[A090181(n), A049020(n)])%3` -/
def P5441929768801590861.Spec : Prop :=
  ∀ n, P5441929768801590861.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P13648140067302917295

`A173018(lt[A057427(n), A108087(n)])%3`
-/

namespace A090737.P13648140067302917295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P13648140067302917295

namespace A090737

/-- `A173018(lt[A057427(n), A108087(n)])%3` -/
def P13648140067302917295.Spec : Prop :=
  ∀ n, P13648140067302917295.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P14979577698787089450

`A173018(lt[A122935(n), A049020(n)])%3`
-/

namespace A090737.P14979577698787089450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P14979577698787089450

namespace A090737

/-- `A173018(lt[A122935(n), A049020(n)])%3` -/
def P14979577698787089450.Spec : Prop :=
  ∀ n, P14979577698787089450.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P16218378765493800621

`A173018(lt[A000007(n), A173018(n)])%3`
-/

namespace A090737.P16218378765493800621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P16218378765493800621

namespace A090737

/-- `A173018(lt[A000007(n), A173018(n)])%3` -/
def P16218378765493800621.Spec : Prop :=
  ∀ n, P16218378765493800621.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P11523240493555439847

`A173018(lt[A057427(n), A259691(n)])%3`
-/

namespace A090737.P11523240493555439847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) 3

end

end A090737.P11523240493555439847

namespace A090737

/-- `A173018(lt[A057427(n), A259691(n)])%3` -/
def P11523240493555439847.Spec : Prop :=
  ∀ n, P11523240493555439847.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P13198567583254484947

`A176204(n)%3`
-/

namespace A090737.P13198567583254484947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176204 n) 3

end

end A090737.P13198567583254484947

namespace A090737

/-- `A176204(n)%3` -/
def P13198567583254484947.Spec : Prop :=
  ∀ n, P13198567583254484947.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P18238511950772146571

`A141697(n+1)%3`
-/

namespace A090737.P18238511950772146571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141697 (n + 1)) 3

end

end A090737.P18238511950772146571

namespace A090737

/-- `A141697(n+1)%3` -/
def P18238511950772146571.Spec : Prop :=
  ∀ n, P18238511950772146571.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P1204614253036376150

`A144698(n+4)%A174971(n)`
-/

namespace A090737.P1204614253036376150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144698 (n + 4)) (A174971 n)

end

end A090737.P1204614253036376150

namespace A090737

/-- `A144698(n+4)%A174971(n)` -/
def P1204614253036376150.Spec : Prop :=
  ∀ n, P1204614253036376150.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P1887524315481376445

`A257606(n)%3`
-/

namespace A090737.P1887524315481376445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257606 n) 3

end

end A090737.P1887524315481376445

namespace A090737

/-- `A257606(n)%3` -/
def P1887524315481376445.Spec : Prop :=
  ∀ n, P1887524315481376445.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P7430823553517241844

`A173018(lt[1, A061356(n+2)])%3`
-/

namespace A090737.P7430823553517241844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061356 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173018 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) 3

end

end A090737.P7430823553517241844

namespace A090737

/-- `A173018(lt[1, A061356(n+2)])%3` -/
def P7430823553517241844.Spec : Prop :=
  ∀ n, P7430823553517241844.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P18363328264597482097

`A142459(n+1)%3`
-/

namespace A090737.P18363328264597482097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142459 (n + 1)) 3

end

end A090737.P18363328264597482097

namespace A090737

/-- `A142459(n+1)%3` -/
def P18363328264597482097.Spec : Prop :=
  ∀ n, P18363328264597482097.a n = A090737 (n + 1)

end A090737

/-! ## A090737.P9929143730477646939

`A154336(n)%3`
-/

namespace A090737.P9929143730477646939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154336 n) 3

end

end A090737.P9929143730477646939

namespace A090737

/-- `A154336(n)%3` -/
def P9929143730477646939.Spec : Prop :=
  ∀ n, P9929143730477646939.a n = A090737 (n + 1)

end A090737

/-!
# A090739: Exponent of 2 in 9^n - 1.

The programs for A090739, the canonical program `A090739.P11795774143711516918` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090739 has offset 1).

The definition of A090739 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090739.P15347381345346078401

`val(n+1, 2)+3`
-/

namespace A090739.P15347381345346078401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 3

end

end A090739.P15347381345346078401

namespace A090739

/-- `val(n+1, 2)+3` -/
def P15347381345346078401.Spec : Prop :=
  ∀ n, (P15347381345346078401.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P11795774143711516918

`A007814(n+1)+3`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090739

/-- `A007814(n+1)+3` -/
def P11795774143711516918.Spec : Prop :=
  ∀ n, P11795774143711516918.a n = A090739 (n + 1)

theorem P11795774143711516918.correct : P11795774143711516918.Spec := by
  intro n
  simp only [A090739, Nat.add_sub_cancel]

end A090739

/-! ## A090739.P5251726022945949775

`2*A000005(4*(n+1))/(A000005(4*(n+1))-A000005(n+1))`
-/

namespace A090739.P5251726022945949775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000005 (4 * (n + 1)) : ℚ) / (A000005 (4 * (n + 1)) - A000005 (n + 1) : ℚ)

end

end A090739.P5251726022945949775

namespace A090739

/-- `2*A000005(4*(n+1))/(A000005(4*(n+1))-A000005(n+1))` -/
def P5251726022945949775.Spec : Prop :=
  ∀ n, P5251726022945949775.a n = (A090739 (n + 1) : ℚ)

end A090739

/-! ## A090739.P17873151912522188306

`val(record[(8*(1-n))²], 4)`
-/

namespace A090739.P17873151912522188306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * (1 - (n : ℤ))) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 4

end

end A090739.P17873151912522188306

namespace A090739

/-- `val(record[(8*(1-n))²], 4)` -/
def P17873151912522188306.Spec : Prop :=
  ∀ n, (P17873151912522188306.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P7765446849959070641

`val(Δ[or(1, 2*n)²], 2)`
-/

namespace A090739.P7765446849959070641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2

end

end A090739.P7765446849959070641

namespace A090739

/-- `val(Δ[or(1, 2*n)²], 2)` -/
def P7765446849959070641.Spec : Prop :=
  ∀ n, (P7765446849959070641.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P6324937583849987407

`floor(log2(xor(n, n+1)))+3`
-/

namespace A090739.P6324937583849987407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.xor n (n + 1)) + 3

end

end A090739.P6324937583849987407

namespace A090739

/-- `floor(log2(xor(n, n+1)))+3` -/
def P6324937583849987407.Spec : Prop :=
  ∀ n, (P6324937583849987407.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P13911326260010375302

`log2(xor(n, n+1)+1)+2`
-/

namespace A090739.P13911326260010375302
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ) + 2

end

end A090739.P13911326260010375302

namespace A090739

/-- `log2(xor(n, n+1)+1)+2` -/
def P13911326260010375302.Spec : Prop :=
  ∀ n, P13911326260010375302.a n = (A090739 (n + 1) : ℝ)

end A090739

/-! ## A090739.P8911980299624169291

`val(4-Δ[-(2*n)²], 2)`
-/

namespace A090739.P8911980299624169291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (4 - (f1 (n + 1) - f1 n)).toNat 2

end

end A090739.P8911980299624169291

namespace A090739

/-- `val(4-Δ[-(2*n)²], 2)` -/
def P8911980299624169291.Spec : Prop :=
  ∀ n, (P8911980299624169291.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P3201685340033295621

`log2(or(n, n+1)-n)+3`
-/

namespace A090739.P3201685340033295621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℝ) + 3

end

end A090739.P3201685340033295621

namespace A090739

/-- `log2(or(n, n+1)-n)+3` -/
def P3201685340033295621.Spec : Prop :=
  ∀ n, P3201685340033295621.a n = (A090739 (n + 1) : ℝ)

end A090739

/-! ## A090739.P17565927128442285780

`∑{e}[xor(n, -(n+2)), #+2]`
-/

namespace A090739.P17565927128442285780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n + 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A090739.P17565927128442285780

namespace A090739

/-- `∑{e}[xor(n, -(n+2)), #+2]` -/
def P17565927128442285780.Spec : Prop :=
  ∀ n, (P17565927128442285780.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P13611664415647410667

`log2(and(n+1, -(n+1)))+3`
-/

namespace A090739.P13611664415647410667
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 3

end

end A090739.P13611664415647410667

namespace A090739

/-- `log2(and(n+1, -(n+1)))+3` -/
def P13611664415647410667.Spec : Prop :=
  ∀ n, P13611664415647410667.a n = (A090739 (n + 1) : ℝ)

end A090739

/-! ## A090739.P740071178310786128

`log2(n+1-and(n, n+1))+3`
-/

namespace A090739.P740071178310786128
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℝ) + 3

end

end A090739.P740071178310786128

namespace A090739

/-- `log2(n+1-and(n, n+1))+3` -/
def P740071178310786128.Spec : Prop :=
  ∀ n, P740071178310786128.a n = (A090739 (n + 1) : ℝ)

end A090739

/-! ## A090739.P11952090893610737411

`∑{e}[and(n+1, -(n+1)), #]+3`
-/

namespace A090739.P11952090893610737411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 3

end

end A090739.P11952090893610737411

namespace A090739

/-- `∑{e}[and(n+1, -(n+1)), #]+3` -/
def P11952090893610737411.Spec : Prop :=
  ∀ n, (P11952090893610737411.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P2326500524033301767

`∑{e}[or(n+1, -(n+1)), #]+3`
-/

namespace A090739.P2326500524033301767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 3

end

end A090739.P2326500524033301767

namespace A090739

/-- `∑{e}[or(n+1, -(n+1)), #]+3` -/
def P2326500524033301767.Spec : Prop :=
  ∀ n, (P2326500524033301767.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P18417558423341898125

`Δ[A120738(n)]`
-/

namespace A090739.P18417558423341898125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090739.P18417558423341898125

namespace A090739

/-- `Δ[A120738(n)]` -/
def P18417558423341898125.Spec : Prop :=
  ∀ n, P18417558423341898125.a n = A090739 (n + 1)

end A090739

/-! ## A090739.P7413164597048645916

`A085058(n)+1`
-/

namespace A090739.P7413164597048645916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n + 1

end

end A090739.P7413164597048645916

namespace A090739

/-- `A085058(n)+1` -/
def P7413164597048645916.Spec : Prop :=
  ∀ n, P7413164597048645916.a n = A090739 (n + 1)

theorem P7413164597048645916.correct : P7413164597048645916.Spec := by
  intro n
  simp only [A090739, Nat.add_sub_cancel, A090739.P7413164597048645916.a, A090739.P11795774143711516918.a, A007814, A007814.P13537437864234730737.a, A085058, A085058.P14130226451424256143.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A090739

/-! ## A090739.P16316160253850880141

`floor(log2(A059161(n)))`
-/

namespace A090739.P16316160253850880141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A059161 n).toNat

end

end A090739.P16316160253850880141

namespace A090739

/-- `floor(log2(A059161(n)))` -/
def P16316160253850880141.Spec : Prop :=
  ∀ n, (P16316160253850880141.a n : ℤ) = A090739 (n + 1)

end A090739

/-! ## A090739.P9899808766334366994

`log2(A037239(n+1))`
-/

namespace A090739.P9899808766334366994
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A037239 (n + 1) : ℝ)

end

end A090739.P9899808766334366994

namespace A090739

/-- `log2(A037239(n+1))` -/
def P9899808766334366994.Spec : Prop :=
  ∀ n, P9899808766334366994.a n = (A090739 (n + 1) : ℝ)

end A090739

/-! ## A090739.P17458858096043605641

`Δ[A005187(n)]+2`
-/

namespace A090739.P17458858096043605641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A090739.P17458858096043605641

namespace A090739

/-- `Δ[A005187(n)]+2` -/
def P17458858096043605641.Spec : Prop :=
  ∀ n, P17458858096043605641.a n = A090739 (n + 1)

end A090739

/-! ## A090739.P2110632918228920224

`Δ[A011371(n)]+3`
-/

namespace A090739.P2110632918228920224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A090739.P2110632918228920224

namespace A090739

/-- `Δ[A011371(n)]+3` -/
def P2110632918228920224.Spec : Prop :=
  ∀ n, P2110632918228920224.a n = A090739 (n + 1)

end A090739

/-!
# A090740: Exponent of 2 in 3^n - 1.

The programs for A090740, the canonical program `A090740.P6461673759266152283` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090740 has offset 1).

The definition of A090740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090740.P6461673759266152283

`A007814(n+1)+A059841(n+1)+1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A090740

/-- `A007814(n+1)+A059841(n+1)+1` -/
def P6461673759266152283.Spec : Prop :=
  ∀ n, P6461673759266152283.a n = A090740 (n + 1)

theorem P6461673759266152283.correct : P6461673759266152283.Spec := by
  intro n
  simp only [A090740, Nat.add_sub_cancel]

end A090740

/-! ## A090740.P3491059583082210247

`A337923(3*(n+1))`
-/

namespace A090740.P3491059583082210247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (3 * (n + 1))

end

end A090740.P3491059583082210247

namespace A090740

/-- `A337923(3*(n+1))` -/
def P3491059583082210247.Spec : Prop :=
  ∀ n, P3491059583082210247.a n = A090740 (n + 1)

end A090740

/-! ## A090740.P2983350442291441448

`val(A000045(3*(n+1)), 2)`
-/

namespace A090740.P2983350442291441448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000045 (3 * (n + 1))).toNat 2

end

end A090740.P2983350442291441448

namespace A090740

/-- `val(A000045(3*(n+1)), 2)` -/
def P2983350442291441448.Spec : Prop :=
  ∀ n, (P2983350442291441448.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P5994543931448372202

`val(∑[∑[4*n]+2], 2)`
-/

namespace A090740.P5994543931448372202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A090740.P5994543931448372202

namespace A090740

/-- `val(∑[∑[4*n]+2], 2)` -/
def P5994543931448372202.Spec : Prop :=
  ∀ n, (P5994543931448372202.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P6765692184176586966

`ceil(log2(2*xor(n, n+1)))`
-/

namespace A090740.P6765692184176586966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * Nat.xor n (n + 1) : ℝ)⌉

end

end A090740.P6765692184176586966

namespace A090740

/-- `ceil(log2(2*xor(n, n+1)))` -/
def P6765692184176586966.Spec : Prop :=
  ∀ n, P6765692184176586966.a n = A090740 (n + 1)

end A090740

/-! ## A090740.P706056645962611808

`round(log2(2*xor(n, n+1)))`
-/

namespace A090740.P706056645962611808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (2 * Nat.xor n (n + 1) : ℝ))

end

end A090740.P706056645962611808

namespace A090740

/-- `round(log2(2*xor(n, n+1)))` -/
def P706056645962611808.Spec : Prop :=
  ∀ n, P706056645962611808.a n = A090740 (n + 1)

end A090740

/-! ## A090740.P14132618538871625947

`val(∑[3^(n%2)], 2)+1`
-/

namespace A090740.P14132618538871625947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A090740.P14132618538871625947

namespace A090740

/-- `val(∑[3^(n%2)], 2)+1` -/
def P14132618538871625947.Spec : Prop :=
  ∀ n, (P14132618538871625947.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P3917096497442843115

`val(record[xor(2, n)+1], 2)+1`
-/

namespace A090740.P3917096497442843115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 + 1

end

end A090740.P3917096497442843115

namespace A090740

/-- `val(record[xor(2, n)+1], 2)+1` -/
def P3917096497442843115.Spec : Prop :=
  ∀ n, (P3917096497442843115.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P9384328719096682337

`val(∑[eq[n, or(5, n)]], 2)+1`
-/

namespace A090740.P9384328719096682337
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 + 1

end

end A090740.P9384328719096682337

namespace A090740

/-- `val(∑[eq[n, or(5, n)]], 2)+1` -/
def P9384328719096682337.Spec : Prop :=
  ∀ n, (P9384328719096682337.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P13268189414522973093

`val(n+1, 2)+gcd(2, n+1)`
-/

namespace A090740.P13268189414522973093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + Nat.gcd 2 (n + 1)

end

end A090740.P13268189414522973093

namespace A090740

/-- `val(n+1, 2)+gcd(2, n+1)` -/
def P13268189414522973093.Spec : Prop :=
  ∀ n, (P13268189414522973093.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P14477287002143227578

`and(1, n)+1+val(n+1, 2)`
-/

namespace A090740.P14477287002143227578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + SequenceMachineLib.valuation (n + 1) 2

end

end A090740.P14477287002143227578

namespace A090740

/-- `and(1, n)+1+val(n+1, 2)` -/
def P14477287002143227578.Spec : Prop :=
  ∀ n, (P14477287002143227578.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P13304085894184352085

`val(or(1, n+1)+n, 2)+1`
-/

namespace A090740.P13304085894184352085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor 1 (n + 1) + n) 2 + 1

end

end A090740.P13304085894184352085

namespace A090740

/-- `val(or(1, n+1)+n, 2)+1` -/
def P13304085894184352085.Spec : Prop :=
  ∀ n, (P13304085894184352085.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P10604531996417057413

`log2(xor(n+1, or(1, n))+1)+1`
-/

namespace A090740.P10604531996417057413
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.xor (n + 1) (Nat.lor 1 n) + 1 : ℝ) + 1

end

end A090740.P10604531996417057413

namespace A090740

/-- `log2(xor(n+1, or(1, n))+1)+1` -/
def P10604531996417057413.Spec : Prop :=
  ∀ n, P10604531996417057413.a n = (A090740 (n + 1) : ℝ)

end A090740

/-! ## A090740.P6521081440413582988

`∏{e}[and(n+1, -(n+1)), #+2]`
-/

namespace A090740.P6521081440413582988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A090740.P6521081440413582988

namespace A090740

/-- `∏{e}[and(n+1, -(n+1)), #+2]` -/
def P6521081440413582988.Spec : Prop :=
  ∀ n, (P6521081440413582988.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P4708651600628022714

`∏{e}[or(n+1, -(n+1)), #+2]`
-/

namespace A090740.P4708651600628022714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A090740.P4708651600628022714

namespace A090740

/-- `∏{e}[or(n+1, -(n+1)), #+2]` -/
def P4708651600628022714.Spec : Prop :=
  ∀ n, (P4708651600628022714.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P6057734386922817990

`log2(A074723(n+1))`
-/

namespace A090740.P6057734386922817990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A074723 (n + 1) : ℝ)

end

end A090740.P6057734386922817990

namespace A090740

/-- `log2(A074723(n+1))` -/
def P6057734386922817990.Spec : Prop :=
  ∀ n, P6057734386922817990.a n = (A090740 (n + 1) : ℝ)

end A090740

/-! ## A090740.P18289524761058365359

`val(A053698(n), 2)+1`
-/

namespace A090740.P18289524761058365359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053698 n).toNat 2 + 1

end

end A090740.P18289524761058365359

namespace A090740

/-- `val(A053698(n), 2)+1` -/
def P18289524761058365359.Spec : Prop :=
  ∀ n, (P18289524761058365359.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P1560138371277835315

`val(A091573(n), 2)+1`
-/

namespace A090740.P1560138371277835315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A091573 n).toNat 2 + 1

end

end A090740.P1560138371277835315

namespace A090740

/-- `val(A091573(n), 2)+1` -/
def P1560138371277835315.Spec : Prop :=
  ∀ n, (P1560138371277835315.a n : ℤ) = A090740 (n + 1)

end A090740

/-! ## A090740.P1492038906432470627

`A085058(n)/gcd(2, n)`
-/

namespace A090740.P1492038906432470627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085058 n : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A090740.P1492038906432470627

namespace A090740

/-- `A085058(n)/gcd(2, n)` -/
def P1492038906432470627.Spec : Prop :=
  ∀ n, P1492038906432470627.a n = (A090740 (n + 1) : ℚ)

end A090740

/-! ## A090740.P15900121077502638734

`A163400(xor(n, n+1))`
-/

namespace A090740.P15900121077502638734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163400 (Nat.xor n (n + 1))

end

end A090740.P15900121077502638734

namespace A090740

/-- `A163400(xor(n, n+1))` -/
def P15900121077502638734.Spec : Prop :=
  ∀ n, P15900121077502638734.a n = A090740 (n + 1)

end A090740

/-!
# A090741: Maximum number of transversals in a Latin square of order n.

The programs for A090741, there is no canonical definition to state claims against.
-/

/-! ## A090741.P7394116144691030060

`A287644(n+1)+A240606(A001934(n))`
-/

namespace A090741.P7394116144691030060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287644 (n + 1) + A240606 (A001934 n).toNat

end

end A090741.P7394116144691030060

/-! ## A090741.P704385369439987335

`A348271(A250120(n))+A287644(n+1)`
-/

namespace A090741.P704385369439987335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348271 (A250120 n).toNat + A287644 (n + 1)

end

end A090741.P704385369439987335

/-! ## A090741.P3532818483582869828

`A287644(n+1)+A083925(A002808(n+1))`
-/

namespace A090741.P3532818483582869828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287644 (n + 1) + A083925 (A002808 (n + 1)).toNat

end

end A090741.P3532818483582869828

/-! ## A090741.P14962955600389023740

`A287644(n+1)+A062688(A089540(n+1))`
-/

namespace A090741.P14962955600389023740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287644 (n + 1) + A062688 (A089540 (n + 1)).toNat

end

end A090741.P14962955600389023740

/-! ## A090741.P9576043035644180656

`A287644(n+1)+A048735(A130335(n+1))`
-/

namespace A090741.P9576043035644180656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287644 (n + 1) + A048735 (A130335 (n + 1)).toNat

end

end A090741.P9576043035644180656

/-!
# A090744: Consider numbers of the form ...53197531975319753, whose digits read from the right are 3,5,7,9,1,3,5,7,9,1,3,... Sequence gives lengths of these numbers that are primes.

The programs for A090744, there is no canonical definition to state claims against.
-/

/-! ## A090744.P9768822964516224132

`A213806(a(n-1))+a(n-1)*a(n-1)` with `a(0)=1`
-/

namespace A090744.P9768822964516224132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213806 (a (n - 1)).toNat + a (n - 1) * a (n - 1)

end

end A090744.P9768822964516224132

/-!
# A090747: a(n) = A028491(n) - 1.

The programs for A090747, there is no canonical definition to state claims against.
-/

/-! ## A090747.P12146730763962097163

`A028491(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090747.P12146730763962097163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028491 (n + 1) - 1

end

end A090747.P12146730763962097163

/-! ## A090747.P1964859428150071813

`xor(1, A028491(C(n+1, n)))`
-/

namespace A090747.P1964859428150071813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A028491 (Nat.choose (n + 1) n))

end

end A090747.P1964859428150071813

/-! ## A090747.P15690566273804396837

`abs(1-A028491(Δ[n²]-n))`
-/

namespace A090747.P15690566273804396837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A028491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A090747.P15690566273804396837

/-! ## A090747.P6912021217958797892

`xor(1, A028491(or(1, 2*n)-n))`
-/

namespace A090747.P6912021217958797892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A028491 (Nat.lor 1 (2 * n) - n))

end

end A090747.P6912021217958797892

/-! ## A090747.P2390088178038430301

`record[A028491(A065648(n))-1]`
-/

namespace A090747.P2390088178038430301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028491 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090747.P2390088178038430301

/-!
# A090748: Numbers k such that 2^(k+1) - 1 is prime.

The programs for A090748, there is no canonical definition to state claims against.
-/

/-! ## A090748.P464645915782635148

`A000043(n+1)-1`
-/

namespace A090748.P464645915782635148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (n + 1) - 1

end

end A090748.P464645915782635148

/-! ## A090748.P11705123214182709775

`A153798(n+1)+1`
-/

namespace A090748.P11705123214182709775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 1

end

end A090748.P11705123214182709775

/-! ## A090748.P7936206871547316460

`A050475(n+1)-2`
-/

namespace A090748.P7936206871547316460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - 2

end

end A090748.P7936206871547316460

/-! ## A090748.P10573429069047212515

`A134713(n+1)+n`
-/

namespace A090748.P10573429069047212515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134713 (n + 1) + (n : ℤ)

end

end A090748.P10573429069047212515

/-! ## A090748.P12891127796672551153

`floor(sqrt(A139115(n+1)))`
-/

namespace A090748.P12891127796672551153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A139115 (n + 1))

end

end A090748.P12891127796672551153

/-!
# A090749: a(n) = 12 * C(2n+1,n-5) / (n+7).

The programs for A090749, the canonical program `A090749.P3173448819452688393` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090749 has offset 5).

The definition of A090749 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090749.P3173448819452688393

`12*C(2*(n+5)+1, n)/(n+12)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090749

/-- `12*C(2*(n+5)+1, n)/(n+12)` -/
def P3173448819452688393.Spec : Prop :=
  ∀ n, P3173448819452688393.a n = (A090749 (n + 5) : ℚ)

end A090749

/-! ## A090749.P4958545489785694175

`A000589(n+6)-(A001392(n+5)+A000589(n+5))`
-/

namespace A090749.P4958545489785694175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000589 (n + 6) - (A001392 (n + 5) + A000589 (n + 5))

end

end A090749.P4958545489785694175

namespace A090749

/-- `A000589(n+6)-(A001392(n+5)+A000589(n+5))` -/
def P4958545489785694175.Spec : Prop :=
  ∀ n, P4958545489785694175.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P922356452579791067

`A128899(A000096(n+5)+7)`
-/

namespace A090749.P922356452579791067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (A000096 (n + 5) + 7).toNat

end

end A090749.P922356452579791067

namespace A090749

/-- `A128899(A000096(n+5)+7)` -/
def P922356452579791067.Spec : Prop :=
  ∀ n, P922356452579791067.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P3922759788233769393

`A257501(∑[n+2]+4)`
-/

namespace A090749.P3922759788233769393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257501 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A090749.P3922759788233769393

namespace A090749

/-- `A257501(∑[n+2]+4)` -/
def P3922759788233769393.Spec : Prop :=
  ∀ n, P3922759788233769393.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P10595930236874427679

`A257501(A167614(n+1))+A000007(n+1)`
-/

namespace A090749.P10595930236874427679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257501 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A090749.P10595930236874427679

namespace A090749

/-- `A257501(A167614(n+1))+A000007(n+1)` -/
def P10595930236874427679.Spec : Prop :=
  ∀ n, P10595930236874427679.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P10778094249774522616

`A039598(A167614(n+4)+2)`
-/

namespace A090749.P10778094249774522616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A167614 (n + 4) + 2).toNat

end

end A090749.P10778094249774522616

namespace A090749

/-- `A039598(A167614(n+4)+2)` -/
def P10778094249774522616.Spec : Prop :=
  ∀ n, P10778094249774522616.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P2042991265973975884

`A039598(eq[5, A144328(n+1)])`
-/

namespace A090749.P2042991265973975884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090749.P2042991265973975884

namespace A090749

/-- `A039598(eq[5, A144328(n+1)])` -/
def P2042991265973975884.Spec : Prop :=
  ∀ n, P2042991265973975884.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P18373216641695219694

`A128899(eq[6, A002262(n)])`
-/

namespace A090749.P18373216641695219694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A090749.P18373216641695219694

namespace A090749

/-- `A128899(eq[6, A002262(n)])` -/
def P18373216641695219694.Spec : Prop :=
  ∀ n, P18373216641695219694.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P3733625320000589363

`A050166(Δ[A026054(n+3)])`
-/

namespace A090749.P3733625320000589363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (f1 (n + 1) - f1 n).toNat

end

end A090749.P3733625320000589363

namespace A090749

/-- `A050166(Δ[A026054(n+3)])` -/
def P3733625320000589363.Spec : Prop :=
  ∀ n, P3733625320000589363.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P6356386638769637425

`A050166(A052905(n+3)-1)`
-/

namespace A090749.P6356386638769637425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A052905 (n + 3) - 1).toNat

end

end A090749.P6356386638769637425

namespace A090749

/-- `A050166(A052905(n+3)-1)` -/
def P6356386638769637425.Spec : Prop :=
  ∀ n, P6356386638769637425.a n = A090749 (n + 5)

end A090749

/-! ## A090749.P5882750254678095133

`A128899(eq[32, A130321(n)]+12)`
-/

namespace A090749.P5882750254678095133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 12)

end

end A090749.P5882750254678095133

namespace A090749

/-- `A128899(eq[32, A130321(n)]+12)` -/
def P5882750254678095133.Spec : Prop :=
  ∀ n, P5882750254678095133.a n = A090749 (n + 5)

end A090749

/-!
# A090750: Number of Moufang loops of order n which are not groups.

The programs for A090750, there is no canonical definition to state claims against.
-/

/-! ## A090750.P10518719553571983881

`A241471(A340786(3*(n+1)))`
-/

namespace A090750.P10518719553571983881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241471 (A340786 (3 * (n + 1))).toNat

end

end A090750.P10518719553571983881

/-! ## A090750.P5742279279298463625

`5%A140639(A319002(n+1))`
-/

namespace A090750.P5742279279298463625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A140639 (A319002 (n + 1)).toNat)

end

end A090750.P5742279279298463625

/-! ## A090750.P8345188336483234984

`A001203(10^∑{e}[n+1, #])*A078128(2*n+5)`
-/

namespace A090750.P8345188336483234984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001203 (10 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) * A078128 (2 * n + 5)

end

end A090750.P8345188336483234984

/-! ## A090750.P9812980065035883386

`A198192(A137510(3*n+5)%val(1-Δ[-n²], 2))`
-/

namespace A090750.P9812980065035883386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198192 (Int.tmod (A137510 (3 * n + 5)) (SequenceMachineLib.valuation (1 - (f1 (n + 1) - f1 n)).toNat 2 : ℤ)).toNat

end

end A090750.P9812980065035883386

/-! ## A090750.P8611433181627559678

`A014083(A288807(n)+A002262(n))`
-/

namespace A090750.P8611433181627559678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A288807 n + A002262 n).toNat

end

end A090750.P8611433181627559678

/-!
# A090752: Number of compositions (ordered partitions) of n whereby at most 1 increase is allowed and this increase must be by 1.

The programs for A090752, there is no canonical definition to state claims against.
-/

/-! ## A090752.P18312241640973038941

`∑[A000070(n)]-A076276(n+1)`
-/

namespace A090752.P18312241640973038941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A076276 (n + 1)

end

end A090752.P18312241640973038941

/-! ## A090752.P795249053380422644

`Δ[A000070(n)]+A014153(n)-A006128(n+1)`
-/

namespace A090752.P795249053380422644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A014153 n - A006128 (n + 1))

end

end A090752.P795249053380422644

/-! ## A090752.P17140603852997158862

`record[A114099(n)]+A014153(n)-A006128(n+1)`
-/

namespace A090752.P17140603852997158862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A014153 n - A006128 (n + 1))

end

end A090752.P17140603852997158862

/-! ## A090752.P3156921418897267948

`A000041(n+1)+A014153(n)-A006128(n+1)`
-/

namespace A090752.P3156921418897267948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A014153 n - A006128 (n + 1))

end

end A090752.P3156921418897267948

/-! ## A090752.P1007162687805395067

`A014153(n+1)-(A006128(n+1)+A000070(n))`
-/

namespace A090752.P1007162687805395067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014153 (n + 1) - (A006128 (n + 1) + A000070 n)

end

end A090752.P1007162687805395067

/-!
# A090753: Coefficients of power series A(x) such that n-th term of A(x)^n = n!*n*x^(n-1), for n>0.

The programs for A090753, there is no canonical definition to state claims against.
-/

/-! ## A090753.P12975670831642934288

`A348615(n)+A105661(A099969(n))`
-/

namespace A090753.P12975670831642934288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348615 n + A105661 (A099969 n).toNat

end

end A090753.P12975670831642934288

/-! ## A090753.P9075365653570480284

`A110128(n)*A136756(A117574(n+1))`
-/

namespace A090753.P9075365653570480284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110128 n * A136756 (A117574 (n + 1)).toNat

end

end A090753.P9075365653570480284

/-! ## A090753.P7600123170897057954

`A250248(A110128(n)*A114731(n+1))`
-/

namespace A090753.P7600123170897057954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250248 (A110128 n * A114731 (n + 1)).toNat

end

end A090753.P7600123170897057954

/-!
# A090754: Numerator of the expansion of e^(x + x^2 + x^3 + x^4).

The programs for A090754, there is no canonical definition to state claims against.
-/

/-! ## A090754.P14532466649331410631

`A090755(n)/A000142(n)*A193930(n)`
-/

namespace A090754.P14532466649331410631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090755 n : ℚ) / (A000142 n : ℚ) * (A193930 n : ℚ)

end

end A090754.P14532466649331410631

/-! ## A090754.P14713167936269352426

`A193930(n)/A003557(A282124(n))`
-/

namespace A090754.P14713167936269352426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193930 n : ℚ) / (A003557 (A282124 n).toNat : ℚ)

end

end A090754.P14713167936269352426

/-! ## A090754.P2665734119859098714

`A193930(n)/A038500(A275312(n))`
-/

namespace A090754.P2665734119859098714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193930 n : ℚ) / (A038500 (A275312 n).toNat : ℚ)

end

end A090754.P2665734119859098714

/-! ## A090754.P15988583219245033246

`A193930(n)/A361012(A369231(n))`
-/

namespace A090754.P15988583219245033246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193930 n : ℚ) / (A361012 (A369231 n).toNat : ℚ)

end

end A090754.P15988583219245033246

/-!
# A090755: Denominator of the expansion of e^(x + x^2 + x^3 + x^4).

The programs for A090755, there is no canonical definition to state claims against.
-/

/-! ## A090755.P4618449332310770688

`A000142(n)*A090754(n)/A193930(n)`
-/

namespace A090755.P4618449332310770688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n * A090754 n : ℚ) / (A193930 n : ℚ)

end

end A090755.P4618449332310770688

/-! ## A090755.P1658303935734881535

`A000142(n)/gcd(3, A201740(n+1))`
-/

namespace A090755.P1658303935734881535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd 3 (A201740 (n + 1)) : ℚ)

end

end A090755.P1658303935734881535

/-! ## A090755.P13369331745104109643

`A000142(n)/A003557(A282124(n))`
-/

namespace A090755.P13369331745104109643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A003557 (A282124 n).toNat : ℚ)

end

end A090755.P13369331745104109643

/-! ## A090755.P7745078018519991081

`A000142(n)/A038500(A275312(n))`
-/

namespace A090755.P7745078018519991081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A038500 (A275312 n).toNat : ℚ)

end

end A090755.P7745078018519991081

/-! ## A090755.P17071644648478617930

`lcm(A000120(A005316(n)), A067653(n))`
-/

namespace A090755.P17071644648478617930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000120 (A005316 n).toNat) (A067653 n)

end

end A090755.P17071644648478617930

/-!
# A090756: Numbers m of form 5k+1 such that binomial(m-1,(m-1)/5) == 1 (mod m).

The programs for A090756, there is no canonical definition to state claims against.
-/

/-! ## A090756.P14940177510298606809

`∪[p?[5*n+1], A299400(A141176(n+1))]`
-/

namespace A090756.P14940177510298606809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299400 (A141176 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A090756.P14940177510298606809

/-!
# A090758: Numbers k which occur exactly twice in A001600.

The programs for A090758, there is no canonical definition to state claims against.
-/

/-! ## A090758.P13051059231322813538

`∩[A090759(n+1), comp[A090761(n+1)]]`
-/

namespace A090758.P13051059231322813538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090759 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A090758.P13051059231322813538

/-!
# A090759: Numbers n which occur at least twice in A001600.

The programs for A090759, there is no canonical definition to state claims against.
-/

/-! ## A090759.P9242692747082278508

`∪[A090758(n+1), A090761(n+1)]%A335316(3*n+2)`
-/

namespace A090759.P9242692747082278508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A335316 (3 * n + 2))

end

end A090759.P9242692747082278508

/-! ## A090759.P16174453462504445493

`∪[A090761(n+1), A090758(n+1)]%A348867(2*(n+2))`
-/

namespace A090759.P16174453462504445493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090758 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A348867 (2 * (n + 2)))

end

end A090759.P16174453462504445493

/-! ## A090759.P7309345572664584466

`∪[A090758(n+1), A090761(n+1)]%A090761(n+1)`
-/

namespace A090759.P7309345572664584466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A090761 (n + 1))

end

end A090759.P7309345572664584466

/-! ## A090759.P11624029239180751431

`∪[A090758(n+1), A090760(n+1)]%A090758(2*n+3)`
-/

namespace A090759.P11624029239180751431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090760 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A090758 (2 * n + 3))

end

end A090759.P11624029239180751431

/-! ## A090759.P2651984504120553542

`∪[A090758(n+1), A090760(n+1)]%A090760(n+1)`
-/

namespace A090759.P2651984504120553542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090760 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A090760 (n + 1))

end

end A090759.P2651984504120553542

/-!
# A090760: Numbers n which occur exactly three times in A001600.

The programs for A090760, there is no canonical definition to state claims against.
-/

/-! ## A090760.P7146359065072253638

`A090761(∑[A025177(n)!])`
-/

namespace A090760.P7146359065072253638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025177 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A090760.P7146359065072253638

/-! ## A090760.P17878722284114497687

`A090761(A138908(n)*A292638(n+1))`
-/

namespace A090760.P17878722284114497687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (A138908 n * A292638 (n + 1)).toNat

end

end A090760.P17878722284114497687

/-! ## A090760.P14002885675837930362

`A090761(C(A292638(n+1), A138908(n)))`
-/

namespace A090760.P14002885675837930362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (Nat.choose (A292638 (n + 1)).toNat (A138908 n).toNat)

end

end A090760.P14002885675837930362

/-! ## A090760.P11186995947134744176

`A090761(A110030(n+1)*A292638(n+1))`
-/

namespace A090760.P11186995947134744176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (A110030 (n + 1) * A292638 (n + 1)).toNat

end

end A090760.P11186995947134744176

/-! ## A090760.P11721588100886275654

`A090761(C(A292638(n+1), A110030(n+1)))`
-/

namespace A090760.P11721588100886275654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090761 (Nat.choose (A292638 (n + 1)).toNat (A110030 (n + 1)).toNat)

end

end A090760.P11721588100886275654

/-!
# A090763: a(n) = (3*n+3)!/(3*n!*(2*n+2)!).

The programs for A090763, the canonical program `A090763.P10945600944732506763` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090763 has offset 0).

The definition of A090763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090763.P13678849806896724278

`(n+1)*A025174(n+1)`
-/

namespace A090763.P13678849806896724278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A025174 (n + 1)

end

end A090763.P13678849806896724278

namespace A090763

/-- `(n+1)*A025174(n+1)` -/
def P13678849806896724278.Spec : Prop :=
  ∀ n, P13678849806896724278.a n = A090763 n

end A090763

/-! ## A090763.P10945600944732506763

`(n+1)*A005809(n+1)/3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A090763

/-- `(n+1)*A005809(n+1)/3` -/
def P10945600944732506763.Spec : Prop :=
  ∀ n, P10945600944732506763.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P15174915471264579587

`3*(3*n+1)*(3*n+2)*a(n-1)/(2*n*(2*n+1))` with `a(0)=1`
-/

namespace A090763.P15174915471264579587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 * (3 * n + 1) * (3 * n + 2) : ℚ) * a (n - 1) / (2 * n * (2 * n + 1) : ℚ)

end

end A090763.P15174915471264579587

namespace A090763

/-- `3*(3*n+1)*(3*n+2)*a(n-1)/(2*n*(2*n+1))` -/
def P15174915471264579587.Spec : Prop :=
  ∀ n, P15174915471264579587.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P8588703721132645598

`(3*n+3)!/(3*n!*(2*n+2)!)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A090763.P8588703721132645598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n + 3) : ℚ) / (3 * Nat.factorial n * Nat.factorial (2 * n + 2) : ℚ)

end

end A090763.P8588703721132645598

namespace A090763

/-- `(3*n+3)!/(3*n!*(2*n+2)!)` -/
def P8588703721132645598.Spec : Prop :=
  ∀ n, P8588703721132645598.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P18332435227353419287

`(n+1)*Δ[A024719(n)]`
-/

namespace A090763.P18332435227353419287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A090763.P18332435227353419287

namespace A090763

/-- `(n+1)*Δ[A024719(n)]` -/
def P18332435227353419287.Spec : Prop :=
  ∀ n, P18332435227353419287.a n = A090763 n

end A090763

/-! ## A090763.P4319442764455141026

`(n+1)*A127040(2*n)`
-/

namespace A090763.P4319442764455141026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127040 (2 * n)

end

end A090763.P4319442764455141026

namespace A090763

/-- `(n+1)*A127040(2*n)` -/
def P4319442764455141026.Spec : Prop :=
  ∀ n, P4319442764455141026.a n = A090763 n

end A090763

/-! ## A090763.P6174034198119148347

`(n+1)*A099578(Δ[n²])`
-/

namespace A090763.P6174034198119148347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A099578 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A090763.P6174034198119148347

namespace A090763

/-- `(n+1)*A099578(Δ[n²])` -/
def P6174034198119148347.Spec : Prop :=
  ∀ n, P6174034198119148347.a n = A090763 n

end A090763

/-! ## A090763.P14102756065064689663

`∑[3*n+1]*A006013(n)`
-/

namespace A090763.P14102756065064689663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A006013 n

end

end A090763.P14102756065064689663

namespace A090763

/-- `∑[3*n+1]*A006013(n)` -/
def P14102756065064689663.Spec : Prop :=
  ∀ n, P14102756065064689663.a n = A090763 n

end A090763

/-! ## A090763.P4901228529889027275

`(n+1)/2*A165817(n+1)`
-/

namespace A090763.P4901228529889027275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A165817 (n + 1) : ℚ)

end

end A090763.P4901228529889027275

namespace A090763

/-- `(n+1)/2*A165817(n+1)` -/
def P4901228529889027275.Spec : Prop :=
  ∀ n, P4901228529889027275.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P3317673122743745121

`(n+1)*A227726(n+1)/4`
-/

namespace A090763.P3317673122743745121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A227726 (n + 1) : ℚ) / 4)

end

end A090763.P3317673122743745121

namespace A090763

/-- `(n+1)*A227726(n+1)/4` -/
def P3317673122743745121.Spec : Prop :=
  ∀ n, P3317673122743745121.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P11011973400230921546

`∑[(n+1)²]*A000139(n+1)`
-/

namespace A090763.P11011973400230921546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000139 (n + 1)

end

end A090763.P11011973400230921546

namespace A090763

/-- `∑[(n+1)²]*A000139(n+1)` -/
def P11011973400230921546.Spec : Prop :=
  ∀ n, P11011973400230921546.a n = A090763 n

end A090763

/-! ## A090763.P1409474263511091396

`Δ[A004188(n)]*A001764(n)`
-/

namespace A090763.P1409474263511091396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001764 n

end

end A090763.P1409474263511091396

namespace A090763

/-- `Δ[A004188(n)]*A001764(n)` -/
def P1409474263511091396.Spec : Prop :=
  ∀ n, P1409474263511091396.a n = A090763 n

end A090763

/-! ## A090763.P7635634504826301533

`A001764(n)*A060544(n+1)`
-/

namespace A090763.P7635634504826301533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A060544 (n + 1)

end

end A090763.P7635634504826301533

namespace A090763

/-- `A001764(n)*A060544(n+1)` -/
def P7635634504826301533.Spec : Prop :=
  ∀ n, P7635634504826301533.a n = A090763 n

end A090763

/-! ## A090763.P6015359286713649450

`A001504(n)/2*A001764(n)`
-/

namespace A090763.P6015359286713649450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001504 n : ℚ) / 2 * (A001764 n : ℚ)

end

end A090763.P6015359286713649450

namespace A090763

/-- `A001504(n)/2*A001764(n)` -/
def P6015359286713649450.Spec : Prop :=
  ∀ n, P6015359286713649450.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P1136389829121518239

`A000217(A016777(n))*A001764(n)`
-/

namespace A090763.P1136389829121518239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016777 n).toNat * A001764 n

end

end A090763.P1136389829121518239

namespace A090763

/-- `A000217(A016777(n))*A001764(n)` -/
def P1136389829121518239.Spec : Prop :=
  ∀ n, P1136389829121518239.a n = A090763 n

end A090763

/-! ## A090763.P4840741187307454174

`A001764(n)*A161680(A016789(n))`
-/

namespace A090763.P4840741187307454174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A161680 (A016789 n).toNat

end

end A090763.P4840741187307454174

namespace A090763

/-- `A001764(n)*A161680(A016789(n))` -/
def P4840741187307454174.Spec : Prop :=
  ∀ n, P4840741187307454174.a n = A090763 n

end A090763

/-! ## A090763.P954083639442062509

`record[A008611(n)*A025174(A008611(n))]`
-/

namespace A090763.P954083639442062509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A025174 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090763.P954083639442062509

namespace A090763

/-- `record[A008611(n)*A025174(A008611(n))]` -/
def P954083639442062509.Spec : Prop :=
  ∀ n, P954083639442062509.a n = A090763 n

end A090763

/-! ## A090763.P12809708462688218296

`A001764(n)/2*A008133(A017221(n))`
-/

namespace A090763.P12809708462688218296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001764 n : ℚ) / 2 * (A008133 (A017221 n).toNat : ℚ)

end

end A090763.P12809708462688218296

namespace A090763

/-- `A001764(n)/2*A008133(A017221(n))` -/
def P12809708462688218296.Spec : Prop :=
  ∀ n, P12809708462688218296.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P8269992666606776637

`A144485(n)/2`
-/

namespace A090763.P8269992666606776637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144485 n : ℚ) / 2

end

end A090763.P8269992666606776637

namespace A090763

/-- `A144485(n)/2` -/
def P8269992666606776637.Spec : Prop :=
  ∀ n, P8269992666606776637.a n = (A090763 n : ℚ)

end A090763

/-! ## A090763.P9941784250987596448

`(n+1)*C(3*n+2, n)`
-/

namespace A090763.P9941784250987596448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (3 * n + 2) n

end

end A090763.P9941784250987596448

namespace A090763

/-- `(n+1)*C(3*n+2, n)` -/
def P9941784250987596448.Spec : Prop :=
  ∀ n, (P9941784250987596448.a n : ℤ) = A090763 n

end A090763

/-!
# A090764: Number of partitions of n with two sorts of part 1.

The programs for A090764, there is no canonical definition to state claims against.
-/

/-! ## A090764.P14390388006128773685

`2*a(n-1)+A000041(n)-A000041(n-1)` with `a(0)=1`
-/

namespace A090764.P14390388006128773685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A000041 n - A000041 (n - 1)

end

end A090764.P14390388006128773685

/-! ## A090764.P7088399476734299143

`∑[A320733(n)]`
-/

namespace A090764.P7088399476734299143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090764.P7088399476734299143

/-! ## A090764.P12994503102399778246

`A002865(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A090764.P12994503102399778246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002865 n + 2 * a (n - 1)

end

end A090764.P12994503102399778246

/-! ## A090764.P8880780911722501086

`Δ[A000041(abs(1-n))]+2*a(n-1)` with `a(0)=1`
-/

namespace A090764.P8880780911722501086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A090764.P8880780911722501086

/-! ## A090764.P17201769777638106377

`2*A320733(n)-A002865(n)`
-/

namespace A090764.P17201769777638106377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320733 n - A002865 n

end

end A090764.P17201769777638106377

/-! ## A090764.P12417039671257839593

`A320733(n+1)-A002865(n+1)`
-/

namespace A090764.P12417039671257839593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320733 (n + 1) - A002865 (n + 1)

end

end A090764.P12417039671257839593

/-! ## A090764.P17626231640973491920

`∑[A002865(n)/A000079(n)]*A000079(n)`
-/

namespace A090764.P17626231640973491920
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002865 n : ℚ) / (A000079 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000079 n : ℚ)

end

end A090764.P17626231640973491920

/-! ## A090764.P3692104869902116537

`A320733(n+1)+A000041(n)-A000041(n+1)`
-/

namespace A090764.P3692104869902116537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320733 (n + 1) + (A000041 n - A000041 (n + 1))

end

end A090764.P3692104869902116537

/-! ## A090764.P15688200763025477300

`Δ[A000041(n-1)+2*a(n-1)]` with `a(0)=0`
-/

namespace A090764.P15688200763025477300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000041 (n - 1) + 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090764.P15688200763025477300

/-! ## A090764.P4082848161627020857

`A259401(n+1)-(A320733(n+1)+A259401(n))`
-/

namespace A090764.P4082848161627020857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259401 (n + 1) - (A320733 (n + 1) + A259401 n)

end

end A090764.P4082848161627020857

/-! ## A090764.P12497543394723095058

`A116598(∑[n])+a(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A090764.P12497543394723095058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A116598 (∑ j ∈ Finset.range (n + 1), f1 j) + (a (n - 1) + a (n - 1))

end

end A090764.P12497543394723095058

/-! ## A090764.P15879590355124953967

`∑[A292745(∑[n+3])]`
-/

namespace A090764.P15879590355124953967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292745 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090764.P15879590355124953967

/-!
# A090767: Numbers of the form 3*x*y*z + 2(x*y + y*z + z*x) + (x + y + z) for x, y, z positive integers.

The programs for A090767, there is no canonical definition to state claims against.
-/

/-! ## A090767.P6178694090302211009

`A057354(A277870(n+1))%A277877(n+2)`
-/

namespace A090767.P6178694090302211009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057354 (A277870 (n + 1)).toNat) (A277877 (n + 2))

end

end A090767.P6178694090302211009

/-!
# A090770: a(n) = 2^(n^2 + 2n + 1)*Product_{j=1..n} (4^j - 1).

The programs for A090770, there is no canonical definition to state claims against.
-/

/-! ## A090770.P7381824837598033214

`4*C(4^n, 2)*a(n-1)` with `a(0)=2`
-/

namespace A090770.P7381824837598033214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * (Nat.choose (4 ^ n) 2 * a (n - 1))

end

end A090770.P7381824837598033214

/-! ## A090770.P84940903513518632

`4*((4^n)²-4^n)/2*a(n-1)` with `a(0)=2`
-/

namespace A090770.P84940903513518632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 * ((((4 ^ n) ^ 2 : ℤ) - (4 ^ n : ℤ) : ℚ) / 2 * a (n - 1))

end

end A090770.P84940903513518632

/-! ## A090770.P1752540184858045420

`A027638(n)/2`
-/

namespace A090770.P1752540184858045420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027638 n : ℚ) / 2

end

end A090770.P1752540184858045420

/-! ## A090770.P14459543339416999586

`A003956(n)/4`
-/

namespace A090770.P14459543339416999586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003956 n : ℚ) / 4

end

end A090770.P14459543339416999586

/-! ## A090770.P18077699139743245546

`A028666(n)+A001308(n+1)`
-/

namespace A090770.P18077699139743245546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028666 n + A001308 (n + 1)

end

end A090770.P18077699139743245546

/-!
# A090771: Numbers that are congruent to {1, 9} mod 10.

The programs for A090771, the canonical program `A090771.P16871393916389809469` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090771 has offset 1).

The definition of A090771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090771.P16871393916389809469

`a(n-2)+10` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090771

/-- `a(n-2)+10` -/
def P16871393916389809469.Spec : Prop :=
  ∀ n, (P16871393916389809469.a n : ℤ) = A090771 (n + 1)

theorem P16871393916389809469.correct : P16871393916389809469.Spec := by
  intro n
  simp only [A090771, Nat.add_sub_cancel]

end A090771

/-! ## A090771.P4856166578752588288

`10*n-a(n-1)` with `a(0)=1`
-/

namespace A090771.P4856166578752588288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (10 * n : ℤ) - a (n - 1)

end

end A090771.P4856166578752588288

namespace A090771

/-- `10*n-a(n-1)` -/
def P4856166578752588288.Spec : Prop :=
  ∀ n, P4856166578752588288.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P9424333647047405367

`(10*(n+1)+3*(-1)^(n+1)-5)/2`
-/

namespace A090771.P9424333647047405367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) + 3 * (-1) ^ (n + 1) - 5 : ℚ) / 2

end

end A090771.P9424333647047405367

namespace A090771

/-- `(10*(n+1)+3*(-1)^(n+1)-5)/2` -/
def P9424333647047405367.Spec : Prop :=
  ∀ n, P9424333647047405367.a n = (A090771 (n + 1) : ℚ)

theorem P9424333647047405367.correct : P9424333647047405367.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A090771, Nat.add_sub_cancel, A090771.P9424333647047405367.a, A090771.P16871393916389809469.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A090771, Nat.add_sub_cancel, A090771.P9424333647047405367.a, A090771.P16871393916389809469.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A090771

/-! ## A090771.P14766477539083775163

`sqrt(10*A132356(n)+1)`
-/

namespace A090771.P14766477539083775163
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (10 * A132356 n + 1 : ℝ)

end

end A090771.P14766477539083775163

namespace A090771

/-- `sqrt(10*A132356(n)+1)` -/
def P14766477539083775163.Spec : Prop :=
  ∀ n, P14766477539083775163.a n = (A090771 (n + 1) : ℝ)

end A090771

/-! ## A090771.P8972214808170234254

`sqrt(40*A057569(n+1)+1)`
-/

namespace A090771.P8972214808170234254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (40 * A057569 (n + 1) + 1 : ℝ)

end

end A090771.P8972214808170234254

namespace A090771

/-- `sqrt(40*A057569(n+1)+1)` -/
def P8972214808170234254.Spec : Prop :=
  ∀ n, P8972214808170234254.a n = (A090771 (n + 1) : ℝ)

end A090771

/-! ## A090771.P12198074091427173428

`∑[7^(n%2)]+n`
-/

namespace A090771.P12198074091427173428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A090771.P12198074091427173428

namespace A090771

/-- `∑[7^(n%2)]+n` -/
def P12198074091427173428.Spec : Prop :=
  ∀ n, (P12198074091427173428.a n : ℤ) = A090771 (n + 1)

end A090771

/-! ## A090771.P7974728486632168829

`∑[7^and(1, n)]+n`
-/

namespace A090771.P7974728486632168829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A090771.P7974728486632168829

namespace A090771

/-- `∑[7^and(1, n)]+n` -/
def P7974728486632168829.Spec : Prop :=
  ∀ n, (P7974728486632168829.a n : ℤ) = A090771 (n + 1)

end A090771

/-! ## A090771.P2162864704630462099

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=8, a(2)=2`
-/

namespace A090771.P2162864704630462099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090771.P2162864704630462099

namespace A090771

/-- `∑[abs(a(n-2))]` -/
def P2162864704630462099.Spec : Prop :=
  ∀ n, (P2162864704630462099.a n : ℤ) = A090771 (n + 1)

end A090771

/-! ## A090771.P13392815508103591769

`∑[10-a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A090771.P13392815508103591769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090771.P13392815508103591769

namespace A090771

/-- `∑[10-a(n-1)]` -/
def P13392815508103591769.Spec : Prop :=
  ∀ n, P13392815508103591769.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P6266219983824475455

`∑[8/gcd(2, n)²]-1`
-/

namespace A090771.P6266219983824475455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 / (Nat.gcd 2 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A090771.P6266219983824475455

namespace A090771

/-- `∑[8/gcd(2, n)²]-1` -/
def P6266219983824475455.Spec : Prop :=
  ∀ n, P6266219983824475455.a n = (A090771 (n + 1) : ℚ)

end A090771

/-! ## A090771.P15722292115054104191

`record[and(n+1, -7)]+n`
-/

namespace A090771.P15722292115054104191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A090771.P15722292115054104191

namespace A090771

/-- `record[and(n+1, -7)]+n` -/
def P15722292115054104191.Spec : Prop :=
  ∀ n, P15722292115054104191.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P15025756240361510984

`∑[∑[ogf((1+8x+x^2)/(1+x))]]`
-/

namespace A090771.P15025756240361510984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090771.P15025756240361510984

namespace A090771

/-- `∑[∑[ogf((1+8x+x^2)/(1+x))]]` -/
def P15025756240361510984.Spec : Prop :=
  ∀ n, P15025756240361510984.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P10854468889938661476

`ogf((1+8x+x^2)/(1-x-x^2+x^3))`
-/

namespace A090771.P10854468889938661476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 1] [1, -1, -1, 1] n

end

end A090771.P10854468889938661476

namespace A090771

/-- `ogf((1+8x+x^2)/(1-x-x^2+x^3))` -/
def P10854468889938661476.Spec : Prop :=
  ∀ n, P10854468889938661476.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P4929859316533335860

`10-floor(-a(n-2))` with `a(0)=1, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A090771.P4929859316533335860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  10 - (-a (n - 2))

end

end A090771.P4929859316533335860

namespace A090771

/-- `10-floor(-a(n-2))` -/
def P4929859316533335860.Spec : Prop :=
  ∀ n, P4929859316533335860.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P10939590316653165229

`10-ceil(-a(n-2))` with `a(0)=1, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A090771.P10939590316653165229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  10 - (-a (n - 2))

end

end A090771.P10939590316653165229

namespace A090771

/-- `10-ceil(-a(n-2))` -/
def P10939590316653165229.Spec : Prop :=
  ∀ n, P10939590316653165229.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P15301540164664668676

`10-round(-a(n-2))` with `a(0)=1, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A090771.P15301540164664668676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  10 - (-a (n - 2))

end

end A090771.P15301540164664668676

namespace A090771

/-- `10-round(-a(n-2))` -/
def P15301540164664668676.Spec : Prop :=
  ∀ n, P15301540164664668676.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P15553726317205786243

`5-(gcd(4, n²)-5*n)`
-/

namespace A090771.P15553726317205786243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ((Nat.gcd 4 (n ^ 2) : ℤ) - (5 * n : ℤ))

end

end A090771.P15553726317205786243

namespace A090771

/-- `5-(gcd(4, n²)-5*n)` -/
def P15553726317205786243.Spec : Prop :=
  ∀ n, P15553726317205786243.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P1207975558769684306

`record[or(6, n-1)]+n+2`
-/

namespace A090771.P1207975558769684306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 2 : ℤ)

end

end A090771.P1207975558769684306

namespace A090771

/-- `record[or(6, n-1)]+n+2` -/
def P1207975558769684306.Spec : Prop :=
  ∀ n, P1207975558769684306.a n = A090771 (n + 1)

end A090771

/-! ## A090771.P14791471879927114537

`lt[or(6, n-1), n]+n+1`
-/

namespace A090771.P14791471879927114537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (n + 1)

end

end A090771.P14791471879927114537

namespace A090771

/-- `lt[or(6, n-1), n]+n+1` -/
def P14791471879927114537.Spec : Prop :=
  ∀ n, (P14791471879927114537.a n : ℤ) = A090771 (n + 1)

end A090771

/-! ## A090771.P10976783841652588771

`eq[n-1, or(6, n-1)]+n+1`
-/

namespace A090771.P10976783841652588771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + (n + 1)

end

end A090771.P10976783841652588771

namespace A090771

/-- `eq[n-1, or(6, n-1)]+n+1` -/
def P10976783841652588771.Spec : Prop :=
  ∀ n, (P10976783841652588771.a n : ℤ) = A090771 (n + 1)

end A090771

/-!
# A090772: Numbers that are congruent to {2, 8} mod 10.

The programs for A090772, the canonical program `A090772.P10942626292826432355` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090772 has offset 1).

The definition of A090772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090772.P10942626292826432355

`10*n-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090772

/-- `10*n-a(n-1)` -/
def P10942626292826432355.Spec : Prop :=
  ∀ n, P10942626292826432355.a n = A090772 (n + 1)

theorem P10942626292826432355.correct : P10942626292826432355.Spec := by
  intro n
  simp only [A090772, Nat.add_sub_cancel]

end A090772

/-! ## A090772.P17962327837396897168

`2*A047209(n+1)`
-/

namespace A090772.P17962327837396897168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047209 (n + 1)

end

end A090772.P17962327837396897168

namespace A090772

/-- `2*A047209(n+1)` -/
def P17962327837396897168.Spec : Prop :=
  ∀ n, P17962327837396897168.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P7829808479161159729

`a(n-1)+A226294(n+1)` with `a(0)=2`
-/

namespace A090772.P7829808479161159729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A226294 (n + 1)

end

end A090772.P7829808479161159729

namespace A090772

/-- `a(n-1)+A226294(n+1)` -/
def P7829808479161159729.Spec : Prop :=
  ∀ n, P7829808479161159729.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P4970447175100694651

`a(n-2)+10` with `a(0)=2, a(1)=8`
-/

namespace A090772.P4970447175100694651
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n a =>
  a (n - 2) + 10

end

end A090772.P4970447175100694651

namespace A090772

/-- `a(n-2)+10` -/
def P4970447175100694651.Spec : Prop :=
  ∀ n, (P4970447175100694651.a n : ℤ) = A090772 (n + 1)

end A090772

/-! ## A090772.P7409831015535230699

`and(5*n+3, -2)`
-/

namespace A090772.P7409831015535230699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (5 * n + 3 : ℤ) (-2)

end

end A090772.P7409831015535230699

namespace A090772

/-- `and(5*n+3, -2)` -/
def P7409831015535230699.Spec : Prop :=
  ∀ n, P7409831015535230699.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P10828051831715609257

`3-or(1, -(5*n))`
-/

namespace A090772.P10828051831715609257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.lor 1 (-(5 * n : ℤ))

end

end A090772.P10828051831715609257

namespace A090772

/-- `3-or(1, -(5*n))` -/
def P10828051831715609257.Spec : Prop :=
  ∀ n, P10828051831715609257.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P6330637524523313276

`Δ[floor(5/2*n²)]`
-/

namespace A090772.P6330637524523313276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A090772.P6330637524523313276

namespace A090772

/-- `Δ[floor(5/2*n²)]` -/
def P6330637524523313276.Spec : Prop :=
  ∀ n, P6330637524523313276.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P6245086685062926586

`or(1, 5*n+1)+1`
-/

namespace A090772.P6245086685062926586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 1) + 1

end

end A090772.P6245086685062926586

namespace A090772

/-- `or(1, 5*n+1)+1` -/
def P6245086685062926586.Spec : Prop :=
  ∀ n, (P6245086685062926586.a n : ℤ) = A090772 (n + 1)

end A090772

/-! ## A090772.P12759512879894367454

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=6, a(2)=4`
-/

namespace A090772.P12759512879894367454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 6, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090772.P12759512879894367454

namespace A090772

/-- `∑[abs(a(n-2))]` -/
def P12759512879894367454.Spec : Prop :=
  ∀ n, (P12759512879894367454.a n : ℤ) = A090772 (n + 1)

end A090772

/-! ## A090772.P14994273074728032801

`∑[10-a(n-1)]` with `a(0)=2, a(1)=6`
-/

namespace A090772.P14994273074728032801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090772.P14994273074728032801

namespace A090772

/-- `∑[10-a(n-1)]` -/
def P14994273074728032801.Spec : Prop :=
  ∀ n, P14994273074728032801.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P8869671730034118737

`5*n+n%2+2`
-/

namespace A090772.P8869671730034118737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + (n % 2 + 2)

end

end A090772.P8869671730034118737

namespace A090772

/-- `5*n+n%2+2` -/
def P8869671730034118737.Spec : Prop :=
  ∀ n, (P8869671730034118737.a n : ℤ) = A090772 (n + 1)

end A090772

/-! ## A090772.P12837313830326184294

`5*n-gcd(2, n)+4`
-/

namespace A090772.P12837313830326184294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - (Nat.gcd 2 n : ℤ) + 4

end

end A090772.P12837313830326184294

namespace A090772

/-- `5*n-gcd(2, n)+4` -/
def P12837313830326184294.Spec : Prop :=
  ∀ n, P12837313830326184294.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P1243392554233867055

`and(1, n)+5*n+2`
-/

namespace A090772.P1243392554233867055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (5 * n + 2)

end

end A090772.P1243392554233867055

namespace A090772

/-- `and(1, n)+5*n+2` -/
def P1243392554233867055.Spec : Prop :=
  ∀ n, (P1243392554233867055.a n : ℤ) = A090772 (n + 1)

end A090772

/-! ## A090772.P119433350852039077

`∑[∑[ogf((2+6x+2x^2)/(1+x))]]`
-/

namespace A090772.P119433350852039077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090772.P119433350852039077

namespace A090772

/-- `∑[∑[ogf((2+6x+2x^2)/(1+x))]]` -/
def P119433350852039077.Spec : Prop :=
  ∀ n, P119433350852039077.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P13837329959213576590

`ogf((2+6x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A090772.P13837329959213576590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 2] [1, -1, -1, 1] n

end

end A090772.P13837329959213576590

namespace A090772

/-- `ogf((2+6x+2x^2)/(1-x-x^2+x^3))` -/
def P13837329959213576590.Spec : Prop :=
  ∀ n, P13837329959213576590.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P3703950704087598199

`10-floor(-a(n-2))` with `a(0)=2, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A090772.P3703950704087598199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  10 - (-a (n - 2))

end

end A090772.P3703950704087598199

namespace A090772

/-- `10-floor(-a(n-2))` -/
def P3703950704087598199.Spec : Prop :=
  ∀ n, P3703950704087598199.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P3791814510150596369

`10-ceil(-a(n-2))` with `a(0)=2, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A090772.P3791814510150596369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  10 - (-a (n - 2))

end

end A090772.P3791814510150596369

namespace A090772

/-- `10-ceil(-a(n-2))` -/
def P3791814510150596369.Spec : Prop :=
  ∀ n, P3791814510150596369.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P9762835266273661470

`10-round(-a(n-2))` with `a(0)=2, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A090772.P9762835266273661470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  10 - (-a (n - 2))

end

end A090772.P9762835266273661470

namespace A090772

/-- `10-round(-a(n-2))` -/
def P9762835266273661470.Spec : Prop :=
  ∀ n, P9762835266273661470.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P14097052845766928797

`6*n-and(n-2, -2)`
-/

namespace A090772.P14097052845766928797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - Int.land ((n : ℤ) - 2) (-2)

end

end A090772.P14097052845766928797

namespace A090772

/-- `6*n-and(n-2, -2)` -/
def P14097052845766928797.Spec : Prop :=
  ∀ n, P14097052845766928797.a n = A090772 (n + 1)

end A090772

/-! ## A090772.P17240144780577475865

`record[(n+2)²%10+n-2]`
-/

namespace A090772.P17240144780577475865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 % 10 : ℕ) : ℤ) + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090772.P17240144780577475865

namespace A090772

/-- `record[(n+2)²%10+n-2]` -/
def P17240144780577475865.Spec : Prop :=
  ∀ n, P17240144780577475865.a n = A090772 (n + 1)

end A090772

/-!
# A090773: Numbers that are congruent to {4, 6} mod 10.

The programs for A090773, the canonical program `A090773.P7859955218790376141` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090773 has offset 1).

The definition of A090773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090773.P7859955218790376141

`10*n-a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090773

/-- `10*n-a(n-1)` -/
def P7859955218790376141.Spec : Prop :=
  ∀ n, P7859955218790376141.a n = A090773 (n + 1)

theorem P7859955218790376141.correct : P7859955218790376141.Spec := by
  intro n
  simp only [A090773, Nat.add_sub_cancel]

end A090773

/-! ## A090773.P5571711277401751153

`5*(n+1)-5/2-3*(-1)^(n+1)/2`
-/

namespace A090773.P5571711277401751153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℚ) - (5 : ℚ) / 2 - (3 * (-1) ^ (n + 1) : ℚ) / 2

end

end A090773.P5571711277401751153

namespace A090773

/-- `5*(n+1)-5/2-3*(-1)^(n+1)/2` -/
def P5571711277401751153.Spec : Prop :=
  ∀ n, P5571711277401751153.a n = (A090773 (n + 1) : ℚ)

theorem P5571711277401751153.correct : P5571711277401751153.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A090773, Nat.add_sub_cancel, A090773.P5571711277401751153.a, A090773.P7859955218790376141.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A090773, Nat.add_sub_cancel, A090773.P5571711277401751153.a, A090773.P7859955218790376141.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A090773

/-! ## A090773.P398611327816368222

`2*A047221(n+1)`
-/

namespace A090773.P398611327816368222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047221 (n + 1)

end

end A090773.P398611327816368222

namespace A090773

/-- `2*A047221(n+1)` -/
def P398611327816368222.Spec : Prop :=
  ∀ n, P398611327816368222.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P18346469837059181278

`∑[10-a(n-1)]` with `a(0)=4, a(1)=2`
-/

namespace A090773.P18346469837059181278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P18346469837059181278

namespace A090773

/-- `∑[10-a(n-1)]` -/
def P18346469837059181278.Spec : Prop :=
  ∀ n, P18346469837059181278.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P10359746118489673593

`∑[∑[ogf((4+2x+4x^2)/(1+x))]]`
-/

namespace A090773.P10359746118489673593
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P10359746118489673593

namespace A090773

/-- `∑[∑[ogf((4+2x+4x^2)/(1+x))]]` -/
def P10359746118489673593.Spec : Prop :=
  ∀ n, P10359746118489673593.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P2404697763454892999

`ogf((4+2x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A090773.P2404697763454892999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 2, 4] [1, -1, -1, 1] n

end

end A090773.P2404697763454892999

namespace A090773

/-- `ogf((4+2x+4x^2)/(1-x-x^2+x^3))` -/
def P2404697763454892999.Spec : Prop :=
  ∀ n, P2404697763454892999.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P16462823097467497928

`2*(record[lcm(3, n+1)]-(2*n+1))`
-/

namespace A090773.P16462823097467497928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 * n + 1 : ℤ))

end

end A090773.P16462823097467497928

namespace A090773

/-- `2*(record[lcm(3, n+1)]-(2*n+1))` -/
def P16462823097467497928.Spec : Prop :=
  ∀ n, P16462823097467497928.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P1392000232082144116

`∑[A040015(n)]`
-/

namespace A090773.P1392000232082144116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P1392000232082144116

namespace A090773

/-- `∑[A040015(n)]` -/
def P1392000232082144116.Spec : Prop :=
  ∀ n, P1392000232082144116.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P5612052158004684163

`∑[dr(A040168(n))]`
-/

namespace A090773.P5612052158004684163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040168 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P5612052158004684163

namespace A090773

/-- `∑[dr(A040168(n))]` -/
def P5612052158004684163.Spec : Prop :=
  ∀ n, (P5612052158004684163.a n : ℤ) = A090773 (n + 1)

end A090773

/-! ## A090773.P13478001636392562878

`∑[dr(A040465(n))]`
-/

namespace A090773.P13478001636392562878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040465 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P13478001636392562878

namespace A090773

/-- `∑[dr(A040465(n))]` -/
def P13478001636392562878.Spec : Prop :=
  ∀ n, (P13478001636392562878.a n : ℤ) = A090773 (n + 1)

end A090773

/-! ## A090773.P6176392937678502533

`∑[dr(A040482(n))]`
-/

namespace A090773.P6176392937678502533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040482 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P6176392937678502533

namespace A090773

/-- `∑[dr(A040482(n))]` -/
def P6176392937678502533.Spec : Prop :=
  ∀ n, (P6176392937678502533.a n : ℤ) = A090773 (n + 1)

end A090773

/-! ## A090773.P397755824184176322

`∑[dr(A040483(n))]`
-/

namespace A090773.P397755824184176322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040483 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P397755824184176322

namespace A090773

/-- `∑[dr(A040483(n))]` -/
def P397755824184176322.Spec : Prop :=
  ∀ n, (P397755824184176322.a n : ℤ) = A090773 (n + 1)

end A090773

/-! ## A090773.P15348066858795561149

`∑[dr(A040960(n))]`
-/

namespace A090773.P15348066858795561149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040960 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P15348066858795561149

namespace A090773

/-- `∑[dr(A040960(n))]` -/
def P15348066858795561149.Spec : Prop :=
  ∀ n, (P15348066858795561149.a n : ℤ) = A090773 (n + 1)

end A090773

/-! ## A090773.P12312533512885522683

`sqrt(A273373(n+1))`
-/

namespace A090773.P12312533512885522683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A273373 (n + 1) : ℝ)

end

end A090773.P12312533512885522683

namespace A090773

/-- `sqrt(A273373(n+1))` -/
def P12312533512885522683.Spec : Prop :=
  ∀ n, P12312533512885522683.a n = (A090773 (n + 1) : ℝ)

end A090773

/-! ## A090773.P12208264048911397884

`∑[2*A040005(n)]`
-/

namespace A090773.P12208264048911397884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P12208264048911397884

namespace A090773

/-- `∑[2*A040005(n)]` -/
def P12208264048911397884.Spec : Prop :=
  ∀ n, P12208264048911397884.a n = A090773 (n + 1)

end A090773

/-! ## A090773.P4666496256664256656

`∑[A040059(n)/2]`
-/

namespace A090773.P4666496256664256656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040059 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P4666496256664256656

namespace A090773

/-- `∑[A040059(n)/2]` -/
def P4666496256664256656.Spec : Prop :=
  ∀ n, P4666496256664256656.a n = (A090773 (n + 1) : ℚ)

end A090773

/-! ## A090773.P15812999616624234318

`∑[A040135(n)/3]`
-/

namespace A090773.P15812999616624234318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040135 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P15812999616624234318

namespace A090773

/-- `∑[A040135(n)/3]` -/
def P15812999616624234318.Spec : Prop :=
  ∀ n, P15812999616624234318.a n = (A090773 (n + 1) : ℚ)

end A090773

/-! ## A090773.P12064888456096547988

`∑[A040243(n)/4]`
-/

namespace A090773.P12064888456096547988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040243 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P12064888456096547988

namespace A090773

/-- `∑[A040243(n)/4]` -/
def P12064888456096547988.Spec : Prop :=
  ∀ n, P12064888456096547988.a n = (A090773 (n + 1) : ℚ)

end A090773

/-! ## A090773.P14242815125738863318

`∑[A040383(n)/5]`
-/

namespace A090773.P14242815125738863318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040383 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P14242815125738863318

namespace A090773

/-- `∑[A040383(n)/5]` -/
def P14242815125738863318.Spec : Prop :=
  ∀ n, P14242815125738863318.a n = (A090773 (n + 1) : ℚ)

end A090773

/-! ## A090773.P10786386450175176372

`∑[A029623(a(n-1))]` with `a(0)=4`
-/

namespace A090773.P10786386450175176372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A029623 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A090773.P10786386450175176372

namespace A090773

/-- `∑[A029623(a(n-1))]` -/
def P10786386450175176372.Spec : Prop :=
  ∀ n, P10786386450175176372.a n = A090773 (n + 1)

end A090773

/-!
# A090777: Numbers k such that sigma(k) divides k^2.

The programs for A090777, there is no canonical definition to state claims against.
-/

/-! ## A090777.P10459998653672492404

`A300906(A029574(n)+A005097(n+1))`
-/

namespace A090777.P10459998653672492404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300906 (A029574 n + A005097 (n + 1)).toNat

end

end A090777.P10459998653672492404

/-! ## A090777.P6718430878526726687

`filter[A300906(n+1), A168030(#)]`
-/

namespace A090777.P6718430878526726687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168030 (f1 j).toNat = 1) n)

end

end A090777.P6718430878526726687

/-!
# A090778: Numbers k such that phi(k) divides k*(k - phi(k)).

The programs for A090778, there is no canonical definition to state claims against.
-/

/-! ## A090778.P14698579275221928153

`∪[A007694(n+1), A275245(n+1)]`
-/

namespace A090778.P14698579275221928153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090778.P14698579275221928153

/-! ## A090778.P3850342553794315299

`∪[A068997(n+1), A275245(n+1)]`
-/

namespace A090778.P3850342553794315299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090778.P3850342553794315299

/-! ## A090778.P10271463714685079276

`∪[A275245(n+1), A333978(n+1)]`
-/

namespace A090778.P10271463714685079276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090778.P10271463714685079276

/-! ## A090778.P1165944770536665958

`record[gcd(n+1, (n+1)²%A000010(n+1))]`
-/

namespace A090778.P1165944770536665958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod ((n + 1) ^ 2 : ℤ) (A000010 (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090778.P1165944770536665958

/-! ## A090778.P15039853811432504176

`eq[0, (n+1)²%A000010(n+1)]+1`
-/

namespace A090778.P15039853811432504176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) ^ 2 : ℤ) (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A090778.P15039853811432504176

/-! ## A090778.P4487159831246861117

`record[∑{d}[n+1, gcd((n+1)², A000010(#))]]`
-/

namespace A090778.P4487159831246861117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.gcd ((n + 1) ^ 2 : ℤ) (A000010 d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A090778.P4487159831246861117

/-! ## A090778.P279445973572707993

`eq[n²%A000010(A060000(n+1)), A000007(n)]`
-/

namespace A090778.P279445973572707993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A000010 (A060000 (n + 1)).toNat)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090778.P279445973572707993

/-! ## A090778.P1032660575102733809

`∪[A064527(n+1), A275245(n+1)]`
-/

namespace A090778.P1032660575102733809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275245 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A090778.P1032660575102733809

/-!
# A090780: a(n) = n*Product_{p prime, p|n} (p - 1)/2.

The programs for A090780, the canonical program `A090780.P1948436138477558002` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090780 has offset 1).

The definition of A090780 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A299822, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A090780.P1948436138477558002

`A299822(n+1)/2^A001221(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A090780

/-- `A299822(n+1)/2^A001221(n+1)` -/
def P1948436138477558002.Spec : Prop :=
  ∀ n, P1948436138477558002.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P5168818353820070110

`A000010(n+1)*A007947(n+1)/2^A001221(n+1)`
-/

namespace A090780.P5168818353820070110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A007947 (n + 1) : ℚ) / (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A090780.P5168818353820070110

namespace A090780

/-- `A000010(n+1)*A007947(n+1)/2^A001221(n+1)` -/
def P5168818353820070110.Spec : Prop :=
  ∀ n, P5168818353820070110.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P8183246825954840058

`(n+1)*A023900(n+1)/(A076479(n+1)*A034444(n+1))`
-/

namespace A090780.P8183246825954840058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A023900 (n + 1) : ℚ) / (A076479 (n + 1) * A034444 (n + 1) : ℚ)

end

end A090780.P8183246825954840058

namespace A090780

/-- `(n+1)*A023900(n+1)/(A076479(n+1)*A034444(n+1))` -/
def P8183246825954840058.Spec : Prop :=
  ∀ n, P8183246825954840058.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P4572780523927820732

`(n+1)*∏{p}[n+1, A000010(#)/2]`
-/

namespace A090780.P4572780523927820732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A000010 p : ℚ) / 2)

end

end A090780.P4572780523927820732

namespace A090780

/-- `(n+1)*∏{p}[n+1, A000010(#)/2]` -/
def P4572780523927820732.Spec : Prop :=
  ∀ n, P4572780523927820732.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P16189126273064186322

`A000010(n+1)/∏{p}[n+1, 2/#]`
-/

namespace A090780.P16189126273064186322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 2 / (p : ℚ))

end

end A090780.P16189126273064186322

namespace A090780

/-- `A000010(n+1)/∏{p}[n+1, 2/#]` -/
def P16189126273064186322.Spec : Prop :=
  ∀ n, P16189126273064186322.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P12451281367813399028

`A089692(n+1)*A204455(n+1)`
-/

namespace A090780.P12451281367813399028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089692 (n + 1) * A204455 (n + 1)

end

end A090780.P12451281367813399028

namespace A090780

/-- `A089692(n+1)*A204455(n+1)` -/
def P12451281367813399028.Spec : Prop :=
  ∀ n, P12451281367813399028.a n = A090780 (n + 1)

end A090780

/-! ## A090780.P6058702923289032556

`A248003(n+1)/A003557(n+1)`
-/

namespace A090780.P6058702923289032556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248003 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A090780.P6058702923289032556

namespace A090780

/-- `A248003(n+1)/A003557(n+1)` -/
def P6058702923289032556.Spec : Prop :=
  ∀ n, P6058702923289032556.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P6739134226108031480

`A299822(n+1)/A034444(n+1)`
-/

namespace A090780.P6739134226108031480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299822 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A090780.P6739134226108031480

namespace A090780

/-- `A299822(n+1)/A034444(n+1)` -/
def P6739134226108031480.Spec : Prop :=
  ∀ n, P6739134226108031480.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P3455006069827855124

`A000010(n+1)*A007947(n+1)/A034444(n+1)`
-/

namespace A090780.P3455006069827855124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A007947 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ)

end

end A090780.P3455006069827855124

namespace A090780

/-- `A000010(n+1)*A007947(n+1)/A034444(n+1)` -/
def P3455006069827855124.Spec : Prop :=
  ∀ n, P3455006069827855124.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P8580282310727230717

`A000010(n+1)*A204455(n+1)/A000005(A204455(n+1))`
-/

namespace A090780.P8580282310727230717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) * A204455 (n + 1) : ℚ) / (A000005 (A204455 (n + 1)).toNat : ℚ)

end

end A090780.P8580282310727230717

namespace A090780

/-- `A000010(n+1)*A204455(n+1)/A000005(A204455(n+1))` -/
def P8580282310727230717.Spec : Prop :=
  ∀ n, P8580282310727230717.a n = (A090780 (n + 1) : ℚ)

end A090780

/-! ## A090780.P7814912600682069713

`A046073(A354258(n+1))`
-/

namespace A090780.P7814912600682069713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (A354258 (n + 1)).toNat

end

end A090780.P7814912600682069713

namespace A090780

/-- `A046073(A354258(n+1))` -/
def P7814912600682069713.Spec : Prop :=
  ∀ n, P7814912600682069713.a n = A090780 (n + 1)

end A090780

/-!
# A090781: Numbers that can be expressed as the difference of the squares of primes in just one distinct way.

The programs for A090781, there is no canonical definition to state claims against.
-/

/-! ## A090781.P13924081006177302509

`A124865(A325457(n+1)%A134702(n+1))`
-/

namespace A090781.P13924081006177302509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (Int.tmod (A325457 (n + 1)) (A134702 (n + 1))).toNat

end

end A090781.P13924081006177302509

/-! ## A090781.P16308172751392182657

`A124865(A033948(n+1)%A119293(n+1))`
-/

namespace A090781.P16308172751392182657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (Int.tmod (A033948 (n + 1)) (A119293 (n + 1))).toNat

end

end A090781.P16308172751392182657

/-! ## A090781.P15357488482404725107

`A124865(A033948(n+1))%A092002(3*n+1)`
-/

namespace A090781.P15357488482404725107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124865 (A033948 (n + 1)).toNat) (A092002 (3 * n + 1))

end

end A090781.P15357488482404725107

/-! ## A090781.P7224531057894223814

`∩[A124865(n+1), A241145(n+1)]`
-/

namespace A090781.P7224531057894223814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090781.P7224531057894223814

/-!
# A090782: Numbers that can be expressed as the difference of the squares of primes in just three distinct ways.

The programs for A090782, there is no canonical definition to state claims against.
-/

/-! ## A090782.P8358303467150505138

`A168469(A371728(n+2))`
-/

namespace A090782.P8358303467150505138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168469 (A371728 (n + 2)).toNat

end

end A090782.P8358303467150505138

/-! ## A090782.P18296793799643833767

`A168469(or(5, A031495(n+1)))`
-/

namespace A090782.P18296793799643833767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168469 (Int.lor 5 (A031495 (n + 1))).toNat

end

end A090782.P18296793799643833767

/-!
# A090784: Numbers that can be expressed as the difference of the squares of consecutive primes in just two distinct ways.

The programs for A090784, there is no canonical definition to state claims against.
-/

/-! ## A090784.P17155867999868504432

`A078667(A353866(n+1)%A352229(n+1))`
-/

namespace A090784.P17155867999868504432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078667 (Int.tmod (A353866 (n + 1)) (A352229 (n + 1))).toNat

end

end A090784.P17155867999868504432

/-!
# A090785: Numbers that can be expressed as the difference of the squares of consecutive primes in just one way.

The programs for A090785, there is no canonical definition to state claims against.
-/

/-! ## A090785.P4325791871472082386

`A213022(A078010(2*(n+2))-A301682(n))`
-/

namespace A090785.P4325791871472082386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213022 (A078010 (2 * (n + 2)) - A301682 n).toNat

end

end A090785.P4325791871472082386

/-!
# A090786: Least nonnegative integer k such that n! + n + k + 1 is prime.

The programs for A090786, there is no canonical definition to state claims against.
-/

/-! ## A090786.P6113525494328940912

`A037153(n-a(2%n))-(n+1)` with `a(0)=0`
-/

namespace A090786.P6113525494328940912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A037153 ((n : ℤ) - a (2 % n)).toNat - (n + 1 : ℤ)

end

end A090786.P6113525494328940912

/-! ## A090786.P12395017525304218756

`A037153(C(n, n²)+n)-(C(n, n²)+n)-1`
-/

namespace A090786.P12395017525304218756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (Nat.choose n (n ^ 2) + n) - (Nat.choose n (n ^ 2) + n : ℤ) - 1

end

end A090786.P12395017525304218756

/-! ## A090786.P6623718180937670277

`A023443(A037153(C(n, n²)+n)-(C(n, n²)+n))`
-/

namespace A090786.P6623718180937670277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A037153 (Nat.choose n (n ^ 2) + n) - (Nat.choose n (n ^ 2) + n : ℤ)).toNat

end

end A090786.P6623718180937670277

/-! ## A090786.P11150464141837286428

`A037153(A028310(n))-(A028310(n)+1)`
-/

namespace A090786.P11150464141837286428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (A028310 n).toNat - (A028310 n + 1)

end

end A090786.P11150464141837286428

/-! ## A090786.P16771033284622781458

`A037153(A233583(n+1))-(A233583(n+1)+1)`
-/

namespace A090786.P16771033284622781458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (A233583 (n + 1)).toNat - (A233583 (n + 1) + 1)

end

end A090786.P16771033284622781458

/-! ## A090786.P9634374118403818023

`A037153(A028310(n))-A001281(A103517(n))`
-/

namespace A090786.P9634374118403818023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037153 (A028310 n).toNat - A001281 (A103517 n).toNat

end

end A090786.P9634374118403818023

/-! ## A090786.P7813868227499683471

`A343593(n)-1`
-/

namespace A090786.P7813868227499683471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343593 n - 1

end

end A090786.P7813868227499683471

/-! ## A090786.P4449935766959977326

`A023443(A343593(n))`
-/

namespace A090786.P4449935766959977326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A343593 n).toNat

end

end A090786.P4449935766959977326

/-! ## A090786.P951941347665235278

`A023444(A343593(n)+1)`
-/

namespace A090786.P951941347665235278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A343593 n + 1).toNat

end

end A090786.P951941347665235278

/-! ## A090786.P11541006825489194005

`A289207(A343593(n)+1)`
-/

namespace A090786.P11541006825489194005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A343593 n + 1).toNat

end

end A090786.P11541006825489194005

/-!
# A090787: Number of ways to get n by evaluating 1 (+ or *) 2 (+ or *) 3 ... (+ or *) m for some positive integer m. No parentheses are allowed and the usual order of precedence (* before +) is followed.

The programs for A090787, there is no canonical definition to state claims against.
-/

/-! ## A090787.P13682346744622862938

`and(A048671(A161948(n+1)), A052128(n+1))`
-/

namespace A090787.P13682346744622862938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048671 (A161948 (n + 1)).toNat) (A052128 (n + 1))

end

end A090787.P13682346744622862938

/-! ## A090787.P17442268901535773936

`and(A052128(n+1), A065648(A343495(n+1)))`
-/

namespace A090787.P17442268901535773936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052128 (n + 1)) (A065648 (A343495 (n + 1)).toNat)

end

end A090787.P17442268901535773936

/-! ## A090787.P2004959714700864310

`and(A048671(A161948(n+1)), A293810(n+1))`
-/

namespace A090787.P2004959714700864310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048671 (A161948 (n + 1)).toNat) (A293810 (n + 1))

end

end A090787.P2004959714700864310

/-! ## A090787.P7172344506180711976

`and(A048671(A161948(n+1)), A327499(n+1))`
-/

namespace A090787.P7172344506180711976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048671 (A161948 (n + 1)).toNat) (A327499 (n + 1))

end

end A090787.P7172344506180711976

/-! ## A090787.P13262474466676086101

`and(A065648(A343495(n+1)), A293810(n+1))`
-/

namespace A090787.P13262474466676086101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065648 (A343495 (n + 1)).toNat) (A293810 (n + 1))

end

end A090787.P13262474466676086101

/-!
# A090789: Even numbers n such that 37^2 (the square of the first irregular prime) divides the numerator of Bernoulli(n).

The programs for A090789, there is no canonical definition to state claims against.
-/

/-! ## A090789.P2294303985104104

`2*A092230(n+1)`
-/

namespace A090789.P2294303985104104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092230 (n + 1)

end

end A090789.P2294303985104104

/-! ## A090789.P13559407143620430509

`6*A092230(Δ[n²]-n)/3`
-/

namespace A090789.P13559407143620430509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A092230 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 3)

end

end A090789.P13559407143620430509

/-! ## A090789.P5846471753895249938

`A092230(C(n+1, n))+A092230(n+1)`
-/

namespace A090789.P5846471753895249938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092230 (Nat.choose (n + 1) n) + A092230 (n + 1)

end

end A090789.P5846471753895249938

/-!
# A090790: Numbers r arising in A090791.

The programs for A090790, there is no canonical definition to state claims against.
-/

/-! ## A090790.P2071203557905233685

`A281246(n+1)-1`
-/

namespace A090790.P2071203557905233685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281246 (n + 1) - 1

end

end A090790.P2071203557905233685

/-! ## A090790.P13146309221560725429

`A035112(n+1)-2`
-/

namespace A090790.P13146309221560725429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035112 (n + 1) - 2

end

end A090790.P13146309221560725429

/-! ## A090790.P10978542704290664823

`A090800(floor(9*n/8)+2)`
-/

namespace A090790.P10978542704290664823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090800 (⌊9 * ((n : ℚ) / 8)⌋ + 2).toNat

end

end A090790.P10978542704290664823

/-! ## A090790.P776734865806230596

`A023444(A035112(n+1))`
-/

namespace A090790.P776734865806230596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A035112 (n + 1)).toNat

end

end A090790.P776734865806230596

/-! ## A090790.P11648018260181380784

`A004442(A281246(n+1))`
-/

namespace A090790.P11648018260181380784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A281246 (n + 1)).toNat

end

end A090790.P11648018260181380784

/-!
# A090791: Minimal numbers n such that numerator(Bernoulli(2*n)/(2*n)) is different from numerator(Bernoulli(2*n)/(2*n*(2*n-r))) for some integer r.

The programs for A090791, there is no canonical definition to state claims against.
-/

/-! ## A090791.P16039173109890500175

`A090793(comp[∑[n+8]]+1)`
-/

namespace A090791.P16039173109890500175
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090793 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A090791.P16039173109890500175

/-! ## A090791.P4585989968578827837

`filter[A090793(n+1), A005171(#)]`
-/

namespace A090791.P4585989968578827837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A090791.P4585989968578827837

/-! ## A090791.P5928576203525678930

`filter[A090793(n+1), A066247(#)]`
-/

namespace A090791.P5928576203525678930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A090791.P5928576203525678930

/-! ## A090791.P4010459206597966028

`filter[A090793(n+1), A143731(#)]`
-/

namespace A090791.P4010459206597966028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A090791.P4010459206597966028

/-! ## A090791.P5168671232777809216

`filter[A090793(n+1), A174898(#)]`
-/

namespace A090791.P5168671232777809216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A090791.P5168671232777809216

/-!
# A090792: a(0)=1; for n>0, a(n)=a([n/2])+a([n/4])+a([n/8]).

The programs for A090792, the canonical program `A090792.P5759872612488381957` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A090792 has offset 0).

The definition of A090792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A090792.P5759872612488381957

`a(floor(n/2))+a(floor(n/4))+a(floor(n/8))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A090792

/-- `a(floor(n/2))+a(floor(n/4))+a(floor(n/8))` -/
def P5759872612488381957.Spec : Prop :=
  ∀ n, (P5759872612488381957.a n : ℤ) = A090792 n

theorem P5759872612488381957.correct : P5759872612488381957.Spec := by
  intro n
  simp only [A090792]

end A090792

/-! ## A090792.P15760003123724454943

`A000213(ceil(log2(record[xor(3, n)])))`
-/

namespace A090792.P15760003123724454943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 ⌈Real.logb 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌉.toNat

end

end A090792.P15760003123724454943

namespace A090792

/-- `A000213(ceil(log2(record[xor(3, n)])))` -/
def P15760003123724454943.Spec : Prop :=
  ∀ n, P15760003123724454943.a n = A090792 n

end A090792

/-! ## A090792.P15403792021722166632

`A000213(ceil(log2(n+1))+2)`
-/

namespace A090792.P15403792021722166632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 2).toNat

end

end A090792.P15403792021722166632

namespace A090792

/-- `A000213(ceil(log2(n+1))+2)` -/
def P15403792021722166632.Spec : Prop :=
  ∀ n, P15403792021722166632.a n = A090792 n

end A090792

/-! ## A090792.P9510091982614527404

`A288465(ceil(log2(n+1)))-1`
-/

namespace A090792.P9510091982614527404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat - 1

end

end A090792.P9510091982614527404

namespace A090792

/-- `A288465(ceil(log2(n+1)))-1` -/
def P9510091982614527404.Spec : Prop :=
  ∀ n, P9510091982614527404.a n = A090792 n

end A090792

/-! ## A090792.P4290800802388273805

`A027082(ceil(log2(n+1))+66)`
-/

namespace A090792.P4290800802388273805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (⌈Real.logb 2 (n + 1 : ℝ)⌉ + 66).toNat

end

end A090792.P4290800802388273805

namespace A090792

/-- `A027082(ceil(log2(n+1))+66)` -/
def P4290800802388273805.Spec : Prop :=
  ∀ n, P4290800802388273805.a n = A090792 n

end A090792

/-! ## A090792.P11195392917638016159

`A289199(2*a(floor(n/2)))` with `a(0)=1, a(1)=3`
-/

namespace A090792.P11195392917638016159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A289199 (2 * a ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A090792.P11195392917638016159

namespace A090792

/-- `A289199(2*a(floor(n/2)))` -/
def P11195392917638016159.Spec : Prop :=
  ∀ n, P11195392917638016159.a n = A090792 n

end A090792

/-! ## A090792.P13890873766187976594

`or(1, A164204(A029837(n+1)))`
-/

namespace A090792.P13890873766187976594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A164204 (A029837 (n + 1)).toNat)

end

end A090792.P13890873766187976594

namespace A090792

/-- `or(1, A164204(A029837(n+1)))` -/
def P13890873766187976594.Spec : Prop :=
  ∀ n, P13890873766187976594.a n = A090792 n

end A090792

/-! ## A090792.P15287096607068118639

`or(1, A000213(A070939(4*n)))`
-/

namespace A090792.P15287096607068118639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000213 (A070939 (4 * n)).toNat)

end

end A090792.P15287096607068118639

namespace A090792

/-- `or(1, A000213(A070939(4*n)))` -/
def P15287096607068118639.Spec : Prop :=
  ∀ n, P15287096607068118639.a n = A090792 n

end A090792

/-! ## A090792.P12928122594743726388

`A221446(A000124(∑[char[2^n]]))`
-/

namespace A090792.P12928122594743726388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221446 (A000124 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A090792.P12928122594743726388

namespace A090792

/-- `A221446(A000124(∑[char[2^n]]))` -/
def P12928122594743726388.Spec : Prop :=
  ∀ n, P12928122594743726388.a n = A090792 n

end A090792

/-! ## A090792.P16443963843166483846

`or(1, A000213(A007456(2*n+1)))`
-/

namespace A090792.P16443963843166483846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000213 (A007456 (2 * n + 1)).toNat)

end

end A090792.P16443963843166483846

namespace A090792

/-- `or(1, A000213(A007456(2*n+1)))` -/
def P16443963843166483846.Spec : Prop :=
  ∀ n, P16443963843166483846.a n = A090792 n

end A090792

/-!
# A090793: Minimal numbers n such that numerator(Bernoulli(2*n)/(2*n)) is different from numerator(Bernoulli(2*n)/(2*n*(2*n-r))) for some integer r and the first m irregular primes including irregularity index > 1.

The programs for A090793, there is no canonical definition to state claims against.
-/

/-! ## A090793.P17774740855926014661

`A090798(n+1)+A090800(n+2)/2`
-/

namespace A090793.P17774740855926014661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090798 (n + 1) : ℚ) + (A090800 (n + 2) : ℚ) / 2

end

end A090793.P17774740855926014661

/-! ## A090793.P3168502204300537731

`A090798(n+1)+A004525(A090800(n+2))`
-/

namespace A090793.P3168502204300537731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (n + 1) + A004525 (A090800 (n + 2)).toNat

end

end A090793.P3168502204300537731

/-! ## A090793.P7478879217536871807

`A090798(n+1)+A004525(A308765(n+1)-2)`
-/

namespace A090793.P7478879217536871807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (n + 1) + A004525 (A308765 (n + 1) - 2).toNat

end

end A090793.P7478879217536871807

/-! ## A090793.P16666586852064675296

`A090798(n+1)+A014682(A308765(n+1)-2)`
-/

namespace A090793.P16666586852064675296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090798 (n + 1) + A014682 (A308765 (n + 1) - 2).toNat

end

end A090793.P16666586852064675296

/-! ## A090793.P3758866632625960260

`A273943(A308765(n+1)-2)+A090798(n+1)`
-/

namespace A090793.P3758866632625960260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A308765 (n + 1) - 2).toNat + A090798 (n + 1)

end

end A090793.P3758866632625960260

/-! ## A090793.P9017602180319934820

`A014682(A308765(n+1))+A000010(A090798(n+1))`
-/

namespace A090793.P9017602180319934820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A308765 (n + 1)).toNat + A000010 (A090798 (n + 1)).toNat

end

end A090793.P9017602180319934820

/-! ## A090793.P10415652924859225517

`A123108(A090800(n+2))+A090798(A000027(n+1))`
-/

namespace A090793.P10415652924859225517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A090800 (n + 2)).toNat + A090798 (A000027 (n + 1)).toNat

end

end A090793.P10415652924859225517

/-!
# A090794: Number of partitions of n such that the number of different parts is odd.

The programs for A090794, there is no canonical definition to state claims against.
-/

/-! ## A090794.P9695527125622931697

`(A000041(n+1)-A104575(n+1))/2`
-/

namespace A090794.P9695527125622931697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 (n + 1) - A104575 (n + 1) : ℚ) / 2

end

end A090794.P9695527125622931697

/-! ## A090794.P6984893896071183745

`A092306(n+1)-A104575(n+1)`
-/

namespace A090794.P6984893896071183745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092306 (n + 1) - A104575 (n + 1)

end

end A090794.P6984893896071183745

/-! ## A090794.P4274869936512251399

`A000041(n+1)-A092306(n+1)`
-/

namespace A090794.P4274869936512251399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A092306 (n + 1)

end

end A090794.P4274869936512251399

/-! ## A090794.P2625773413853926611

`Δ[A000070(n)]-A092306(n+1)`
-/

namespace A090794.P2625773413853926611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092306 (n + 1)

end

end A090794.P2625773413853926611

/-! ## A090794.P6136754712023100498

`record[A035363(n)]-A092306(n+1)`
-/

namespace A090794.P6136754712023100498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A092306 (n + 1)

end

end A090794.P6136754712023100498

/-! ## A090794.P8140185330879978308

`record[A035444(n)]-A092306(n+1)`
-/

namespace A090794.P8140185330879978308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A092306 (n + 1)

end

end A090794.P8140185330879978308

/-! ## A090794.P15617030943105477016

`sqrt(A001255(n+1))-A092306(n+1)`
-/

namespace A090794.P15617030943105477016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 (n + 1) : ℝ) - (A092306 (n + 1) : ℝ)

end

end A090794.P15617030943105477016

/-!
# A090796: Denominator(Bernoulli(n-1) + 1/n)=30, where n runs through the primes.

The programs for A090796, there is no canonical definition to state claims against.
-/

/-! ## A090796.P15495366110524682619

`eq[A051717(n), A249674(n)]`
-/

namespace A090796.P15495366110524682619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090796.P15495366110524682619

/-! ## A090796.P5490546048076169141

`eq[A008597(2*n), A051717(n)]`
-/

namespace A090796.P5490546048076169141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090796.P5490546048076169141

/-! ## A090796.P7032798707812016909

`eq[A008592(n), A277087(A185048(n+1))]`
-/

namespace A090796.P7032798707812016909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277087 (A185048 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090796.P7032798707812016909

/-! ## A090796.P13256165408347961459

`eq[A008706(A008458(n)), A051717(n)]`
-/

namespace A090796.P13256165408347961459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090796.P13256165408347961459

/-! ## A090796.P12582830207931058076

`eq[A008597(n), A172087(n)]`
-/

namespace A090796.P12582830207931058076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090796.P12582830207931058076

/-!
# A090797: Denominator(Bernoulli(n-1) + 1/n)=42, where n runs through the primes.

The programs for A090797, there is no canonical definition to state claims against.
-/

/-! ## A090797.P10595017019324740463

`p?[43*(n+1)-lcm(n+1, A027642(n))]`
-/

namespace A090797.P10595017019324740463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (43 * (n + 1) : ℤ) - (Int.lcm (n + 1 : ℤ) (A027642 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090797.P10595017019324740463

/-! ## A090797.P11613869400983416080

`eq[A008589(A008458(n)), A051717(n)]`
-/

namespace A090797.P11613869400983416080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090797.P11613869400983416080

/-! ## A090797.P14755609408907842985

`eq[A008603(n), A172087(n)]`
-/

namespace A090797.P14755609408907842985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172087 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090797.P14755609408907842985

/-! ## A090797.P16365875070845906796

`p?[A145325(n+1)+A145285(3*n+4)]`
-/

namespace A090797.P16365875070845906796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145325 (n + 1) + A145285 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A090797.P16365875070845906796

/-! ## A090797.P15680535970392486472

`eq[A008458(A168102(n)), A051717(n)]`
-/

namespace A090797.P15680535970392486472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A168102 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A090797.P15680535970392486472

/-!
# A090798: Irregular primes in the ratio numerator(Bernoulli(2*n)/(2*n)) / numerator(Bernoulli(2*n)/(2*n*(2*n-r))) when these numerators are different and n is a minimum for some integer r. Duplication indicates irregularity index > 1.

The programs for A090798, there is no canonical definition to state claims against.
-/

/-! ## A090798.P1844588645452015462

`A090793(n+1)-A090800(n+2)/2`
-/

namespace A090798.P1844588645452015462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090793 (n + 1) : ℚ) - (A090800 (n + 2) : ℚ) / 2

end

end A090798.P1844588645452015462

/-! ## A090798.P8918871482409891693

`A090793(n+1)+A001057(A090800(n+2))`
-/

namespace A090798.P8918871482409891693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090793 (n + 1) + A001057 (A090800 (n + 2)).toNat

end

end A090798.P8918871482409891693

/-! ## A090798.P10831609176833099865

`A000928(∑[A097325(A020701(n))])`
-/

namespace A090798.P10831609176833099865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A020701 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090798.P10831609176833099865

/-! ## A090798.P15298071986576017103

`A000928(∑[A049240(A204380(n+1))])`
-/

namespace A090798.P15298071986576017103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A204380 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A090798.P15298071986576017103

/-! ## A090798.P17325238897160312449

`A000928((C(7, n)%2+n)%A289324(n+4))`
-/

namespace A090798.P17325238897160312449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000928 (Int.tmod ((Nat.choose 7 n % 2 + n : ℕ) : ℤ) (A289324 (n + 4))).toNat

end

end A090798.P17325238897160312449

/-!
# A090799: Denominator(Bernoulli(n-1) + 1/n)=66, where n runs through the primes.

The programs for A090799, there is no canonical definition to state claims against.
-/

/-! ## A090799.P10145191689568224967

`∩[A100860(n+1), A339463(n+1)]`
-/

namespace A090799.P10145191689568224967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A090799.P10145191689568224967

