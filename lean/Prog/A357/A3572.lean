import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A357202: Coefficients in the power series A(x) such that: A(x)^2 = Sum_{n=-oo..+oo} x^n * (1 - x^(n+1))^(n+1) * A(x)^n.

The programs for A357202, there is no canonical definition to state claims against.
-/

/-! ## A357202.P18049469260665881344

`A342750(A005773(n))`
-/

namespace A357202.P18049469260665881344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A005773 n).toNat

end

end A357202.P18049469260665881344

/-! ## A357202.P3832569306312812594

`A196526(4*n!)+A005044(n)`
-/

namespace A357202.P3832569306312812594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196526 (4 * Nat.factorial n) + A005044 n

end

end A357202.P3832569306312812594

/-!
# A357203: Coefficients in the power series A(x) such that: A(x)^3 = Sum_{n=-oo..+oo} x^n * (1 - x^(n+1))^(n+1) * A(x)^n.

The programs for A357203, there is no canonical definition to state claims against.
-/

/-! ## A357203.P13208205302932283814

`A269364(∑[A008288(n+1)]^(n-1))`
-/

namespace A357203.P13208205302932283814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269364 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A357203.P13208205302932283814

/-! ## A357203.P11894300012856965427

`A276952(A053604(n)+A002293(n))`
-/

namespace A357203.P11894300012856965427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276952 (A053604 n + A002293 n).toNat

end

end A357203.P11894300012856965427

/-!
# A357204: Coefficients in the power series A(x) such that: A(x)^4 = Sum_{n=-oo..+oo} x^n * (1 - x^(n+1))^(n+1) * A(x)^n.

The programs for A357204, there is no canonical definition to state claims against.
-/

/-! ## A357204.P12735240917921833178

`A000045(n+1)*A112975(A321733(n))`
-/

namespace A357204.P12735240917921833178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A112975 (A321733 n).toNat

end

end A357204.P12735240917921833178

/-!
# A357205: Coefficients in the power series A(x) such that: A(x)^5 = Sum_{n=-oo..+oo} x^n * (1 - x^(n+1))^(n+1) * A(x)^n.

The programs for A357205, there is no canonical definition to state claims against.
-/

/-! ## A357205.P7576244522727448010

`A365316(C(2*n+1, n+3))`
-/

namespace A357205.P7576244522727448010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365316 (Nat.choose (2 * n + 1) (n + 3))

end

end A357205.P7576244522727448010

/-!
# A357206: Coefficients in the power series A(x) such that: x*A(x)^2 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A357206, there is no canonical definition to state claims against.
-/

/-! ## A357206.P7456672569150113171

`A080513(A353405(3*n+1))-A346126(n+1)`
-/

namespace A357206.P7456672569150113171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A353405 (3 * n + 1)).toNat - A346126 (n + 1)

end

end A357206.P7456672569150113171

/-!
# A357207: Coefficients in the power series A(x) such that: x*A(x)^3 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A357207, there is no canonical definition to state claims against.
-/

/-! ## A357207.P2819367636224792502

`A078018(n)+A049336(A068875(n))`
-/

namespace A357207.P2819367636224792502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078018 n + A049336 (A068875 n).toNat

end

end A357207.P2819367636224792502

/-!
# A357208: Coefficients in the power series A(x) such that: x*A(x)^4 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A357208, there is no canonical definition to state claims against.
-/

/-! ## A357208.P1712640596552834074

`A048247(A000949(n))`
-/

namespace A357208.P1712640596552834074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048247 (A000949 n).toNat

end

end A357208.P1712640596552834074

/-!
# A357209: Coefficients in the power series A(x) such that: x*A(x)^5 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)/2) * A(x)^n.

The programs for A357209, there is no canonical definition to state claims against.
-/

/-! ## A357209.P18397461276894560752

`A175508(A215715(n)+n)`
-/

namespace A357209.P18397461276894560752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175508 (A215715 n + (n : ℤ)).toNat

end

end A357209.P18397461276894560752

/-!
# A357210: a(n) = Sum_{k=1..n} prime(k/gcd(n,k)).

The programs for A357210, there is no canonical definition to state claims against.
-/

/-! ## A357210.P14427889711924162551

`∑{d}[n+1, A127413(#)]`
-/

namespace A357210.P14427889711924162551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A127413 d

end

end A357210.P14427889711924162551

/-!
# A357212: a(n) = number of nonempty subsets of {1,2,...,n} having a partition into two subsets with the same sum of elements.

The programs for A357212, there is no canonical definition to state claims against.
-/

/-! ## A357212.P3115515495409907760

`∑[A232466(n+1)]`
-/

namespace A357212.P3115515495409907760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357212.P3115515495409907760

/-! ## A357212.P840032726356075139

`∑[abs(Δ[A371791(n)])]`
-/

namespace A357212.P840032726356075139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371791 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357212.P840032726356075139

/-! ## A357212.P16691616738858150833

`A371791(n+1)-1`
-/

namespace A357212.P16691616738858150833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371791 (n + 1) - 1

end

end A357212.P16691616738858150833

/-! ## A357212.P11150370504753180689

`∑[2^n-A371793(n+1)]`
-/

namespace A357212.P11150370504753180689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357212.P11150370504753180689

/-! ## A357212.P6055052193169422802

`∑[2^n]-A371792(n+1)`
-/

namespace A357212.P6055052193169422802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A371792 (n + 1)

end

end A357212.P6055052193169422802

/-!
# A357213: Triangular array read by rows: T(n, k) = number of subsets s of {1, 2, ..., n} such max(s) - min(s) = k, for n >= 1, 0 <= k <= n-1.

The programs for A357213, the canonical program `A357213.P15462031759184962589` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357213 has offset 1).

The definition of A357213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357213.P17049998911584600838

`A130128(n+1)/(2-char[∑[n]])`
-/

namespace A357213.P17049998911584600838
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130128 (n + 1) : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A357213.P17049998911584600838

namespace A357213

/-- `A130128(n+1)/(2-char[∑[n]])` -/
def P17049998911584600838.Spec : Prop :=
  ∀ n, P17049998911584600838.a n = (A357213 (n + 1) : ℚ)

end A357213

/-! ## A357213.P12134077566710769809

`(row(n)-col(n)+1)*A011782(col(n))`
-/

namespace A357213.P12134077566710769809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * A011782 (SequenceMachineLib.triCol n)

end

end A357213.P12134077566710769809

namespace A357213

/-- `(row(n)-col(n)+1)*A011782(col(n))` -/
def P12134077566710769809.Spec : Prop :=
  ∀ n, P12134077566710769809.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P9859471524085304960

`(C(comp[∑[n]]-n, 2)-n)*A232089(n)`
-/

namespace A357213.P9859471524085304960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A232089 n

end

end A357213.P9859471524085304960

namespace A357213

/-- `(C(comp[∑[n]]-n, 2)-n)*A232089(n)` -/
def P9859471524085304960.Spec : Prop :=
  ∀ n, P9859471524085304960.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P15462031759184962589

`A004736(n+1)*A232089(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357213

/-- `A004736(n+1)*A232089(n)` -/
def P15462031759184962589.Spec : Prop :=
  ∀ n, P15462031759184962589.a n = A357213 (n + 1)

theorem P15462031759184962589.correct : P15462031759184962589.Spec := by
  intro n
  simp only [A357213, Nat.add_sub_cancel]

end A357213

/-! ## A357213.P9936522316613825228

`A000463(A099375(n))*A232089(n)`
-/

namespace A357213.P9936522316613825228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat * A232089 n

end

end A357213.P9936522316613825228

namespace A357213

/-- `A000463(A099375(n))*A232089(n)` -/
def P9936522316613825228.Spec : Prop :=
  ∀ n, P9936522316613825228.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P14614558870726982426

`A004736(n+1)*A011782(A002262(n))`
-/

namespace A357213.P14614558870726982426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A011782 (A002262 n).toNat

end

end A357213.P14614558870726982426

namespace A357213

/-- `A004736(n+1)*A011782(A002262(n))` -/
def P14614558870726982426.Spec : Prop :=
  ∀ n, P14614558870726982426.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P10747684092815787199

`A296612(∑[2*n]%comp[∑[n]])`
-/

namespace A357213.P10747684092815787199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A357213.P10747684092815787199

namespace A357213

/-- `A296612(∑[2*n]%comp[∑[n]])` -/
def P10747684092815787199.Spec : Prop :=
  ∀ n, P10747684092815787199.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P2605034255946500067

`A296612(∑[char[∑[n]]]²-(n+1))`
-/

namespace A357213.P2605034255946500067
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296612 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A357213.P2605034255946500067

namespace A357213

/-- `A296612(∑[char[∑[n]]]²-(n+1))` -/
def P2605034255946500067.Spec : Prop :=
  ∀ n, P2605034255946500067.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P12135745059741814172

`A004736(n+1)*A026741(A059268(n))`
-/

namespace A357213.P12135745059741814172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A026741 (A059268 n).toNat

end

end A357213.P12135745059741814172

namespace A357213

/-- `A004736(n+1)*A026741(A059268(n))` -/
def P12135745059741814172.Spec : Prop :=
  ∀ n, P12135745059741814172.a n = A357213 (n + 1)

end A357213

/-! ## A357213.P4587372356463872471

`A220370(A130328(n))`
-/

namespace A357213.P4587372356463872471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220370 (A130328 n).toNat

end

end A357213.P4587372356463872471

namespace A357213

/-- `A220370(A130328(n))` -/
def P4587372356463872471.Spec : Prop :=
  ∀ n, P4587372356463872471.a n = A357213 (n + 1)

end A357213

/-!
# A357214: a(n) = number of subsets S of {1, 2, ..., n} such that every number in S is a composite.

The programs for A357214, the canonical program `A357214.P17117338288475535915` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357214 has offset 1).

The definition of A357214 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357214.P17117338288475535915

`2^A065855(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A357214

/-- `2^A065855(n+1)` -/
def P17117338288475535915.Spec : Prop :=
  ∀ n, P17117338288475535915.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P9590839235549687797

`2^(n-A000720(n+1))`
-/

namespace A357214.P9590839235549687797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A000720 (n + 1) : ℤ)

end

end A357214.P9590839235549687797

namespace A357214

/-- `2^(n-A000720(n+1))` -/
def P9590839235549687797.Spec : Prop :=
  ∀ n, P9590839235549687797.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P1491827552999615002

`2^∑[floor(atan(∑{e}[n+1, #]))]`
-/

namespace A357214.P1491827552999615002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A357214.P1491827552999615002

namespace A357214

/-- `2^∑[floor(atan(∑{e}[n+1, #]))]` -/
def P1491827552999615002.Spec : Prop :=
  ∀ n, P1491827552999615002.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P7225944031043635309

`∏[2-∑{e}[n+1, #]!%2]`
-/

namespace A357214.P7225944031043635309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A357214.P7225944031043635309

namespace A357214

/-- `∏[2-∑{e}[n+1, #]!%2]` -/
def P7225944031043635309.Spec : Prop :=
  ∀ n, P7225944031043635309.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P16044114509832646917

`∏[Δ[A171511(n+1)]]`
-/

namespace A357214.P16044114509832646917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171511 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A357214.P16044114509832646917

namespace A357214

/-- `∏[Δ[A171511(n+1)]]` -/
def P16044114509832646917.Spec : Prop :=
  ∀ n, P16044114509832646917.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P8793955636801584373

`2^∑[A066247(n+1)]`
-/

namespace A357214.P8793955636801584373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A357214.P8793955636801584373

namespace A357214

/-- `2^∑[A066247(n+1)]` -/
def P8793955636801584373.Spec : Prop :=
  ∀ n, P8793955636801584373.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P10495206244114585383

`2^(A062298(n+1)-1)`
-/

namespace A357214.P10495206244114585383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A062298 (n + 1) - 1 : ℤ)

end

end A357214.P10495206244114585383

namespace A357214

/-- `2^(A062298(n+1)-1)` -/
def P10495206244114585383.Spec : Prop :=
  ∀ n, P10495206244114585383.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P9149043826883169255

`2^(n-A230980(n+1))`
-/

namespace A357214.P9149043826883169255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A230980 (n + 1) : ℤ)

end

end A357214.P9149043826883169255

namespace A357214

/-- `2^(n-A230980(n+1))` -/
def P9149043826883169255.Spec : Prop :=
  ∀ n, P9149043826883169255.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P11822766443365523699

`∏[∏{e}[A085392(n+1)², #]]`
-/

namespace A357214.P11822766443365523699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A357214.P11822766443365523699

namespace A357214

/-- `∏[∏{e}[A085392(n+1)², #]]` -/
def P11822766443365523699.Spec : Prop :=
  ∀ n, (P11822766443365523699.a n : ℤ) = A357214 (n + 1)

end A357214

/-! ## A357214.P16563702215410712078

`2^(n+1-A036234(n+1))`
-/

namespace A357214.P16563702215410712078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 1 : ℤ) - A036234 (n + 1) : ℤ)

end

end A357214.P16563702215410712078

namespace A357214

/-- `2^(n+1-A036234(n+1))` -/
def P16563702215410712078.Spec : Prop :=
  ∀ n, P16563702215410712078.a n = (A357214 (n + 1) : ℚ)

end A357214

/-! ## A357214.P3631250986274980806

`A000079(A065855(n+1))`
-/

namespace A357214.P3631250986274980806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A065855 (n + 1)).toNat

end

end A357214.P3631250986274980806

namespace A357214

/-- `A000079(A065855(n+1))` -/
def P3631250986274980806.Spec : Prop :=
  ∀ n, P3631250986274980806.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P831642663142471460

`A011782(A062298(n+1))`
-/

namespace A357214.P831642663142471460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A062298 (n + 1)).toNat

end

end A357214.P831642663142471460

namespace A357214

/-- `A011782(A062298(n+1))` -/
def P831642663142471460.Spec : Prop :=
  ∀ n, P831642663142471460.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P7902720635353366133

`A048675(A065308(n+1))`
-/

namespace A357214.P7902720635353366133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A065308 (n + 1)).toNat

end

end A357214.P7902720635353366133

namespace A357214

/-- `A048675(A065308(n+1))` -/
def P7902720635353366133.Spec : Prop :=
  ∀ n, P7902720635353366133.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P15840953882366404391

`A034008(A086936(n+2))`
-/

namespace A357214.P15840953882366404391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A086936 (n + 2)).toNat

end

end A357214.P15840953882366404391

namespace A357214

/-- `A034008(A086936(n+2))` -/
def P15840953882366404391.Spec : Prop :=
  ∀ n, P15840953882366404391.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P16227299847502534684

`A085086(A113646(n+2))`
-/

namespace A357214.P16227299847502534684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085086 (A113646 (n + 2)).toNat

end

end A357214.P16227299847502534684

namespace A357214

/-- `A085086(A113646(n+2))` -/
def P16227299847502534684.Spec : Prop :=
  ∀ n, P16227299847502534684.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P1683613705171778214

`A000079(A062298(n+1)-1)`
-/

namespace A357214.P1683613705171778214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A062298 (n + 1) - 1).toNat

end

end A357214.P1683613705171778214

namespace A357214

/-- `A000079(A062298(n+1)-1)` -/
def P1683613705171778214.Spec : Prop :=
  ∀ n, P1683613705171778214.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P3384943918297545503

`A048656(A065308(n+1)-1)`
-/

namespace A357214.P3384943918297545503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (A065308 (n + 1) - 1).toNat

end

end A357214.P3384943918297545503

namespace A357214

/-- `A048656(A065308(n+1)-1)` -/
def P3384943918297545503.Spec : Prop :=
  ∀ n, P3384943918297545503.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P2572925437118550692

`A000079(n-A000720(n+1))`
-/

namespace A357214.P2572925437118550692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A000720 (n + 1)).toNat

end

end A357214.P2572925437118550692

namespace A357214

/-- `A000079(n-A000720(n+1))` -/
def P2572925437118550692.Spec : Prop :=
  ∀ n, P2572925437118550692.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P17990294927333013666

`A000079(n-A230980(n+1))`
-/

namespace A357214.P17990294927333013666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((n : ℤ) - A230980 (n + 1)).toNat

end

end A357214.P17990294927333013666

namespace A357214

/-- `A000079(n-A230980(n+1))` -/
def P17990294927333013666.Spec : Prop :=
  ∀ n, P17990294927333013666.a n = A357214 (n + 1)

end A357214

/-! ## A357214.P14103015665418576557

`A011782(∑[1-A010051(n+1)])`
-/

namespace A357214.P14103015665418576557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357214.P14103015665418576557

namespace A357214

/-- `A011782(∑[1-A010051(n+1)])` -/
def P14103015665418576557.Spec : Prop :=
  ∀ n, P14103015665418576557.a n = A357214 (n + 1)

end A357214

/-!
# A357215: a(n) = number of nonempty subsets S of {1, 2, ..., n} that contain only primes.

The programs for A357215, the canonical program `A357215.P13758064934684103236` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357215 has offset 1).

The definition of A357215 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357215.P13758064934684103236

`2^A000720(n+1)-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357215

/-- `2^A000720(n+1)-1` -/
def P13758064934684103236.Spec : Prop :=
  ∀ n, P13758064934684103236.a n = (A357215 (n + 1) : ℚ)

end A357215

/-! ## A357215.P16321600772690299995

`∏[char[eq[1, ∑{e}[n+1, #]]]+1]-1`
-/

namespace A357215.P16321600772690299995
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A357215.P16321600772690299995

namespace A357215

/-- `∏[char[eq[1, ∑{e}[n+1, #]]]+1]-1` -/
def P16321600772690299995.Spec : Prop :=
  ∀ n, P16321600772690299995.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P9579365796685260759

`2^∑[char[eq[1, ∑{e}[n+1, #]]]]-1`
-/

namespace A357215.P9579365796685260759
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), Nat.factorization (f5 n) p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A357215.P9579365796685260759

namespace A357215

/-- `2^∑[char[eq[1, ∑{e}[n+1, #]]]]-1` -/
def P9579365796685260759.Spec : Prop :=
  ∀ n, P9579365796685260759.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P14554937266149918164

`2^∑[C(C(2, ∑{e}[n+1, #]), 2)]-1`
-/

namespace A357215.P14554937266149918164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A357215.P14554937266149918164

namespace A357215

/-- `2^∑[C(C(2, ∑{e}[n+1, #]), 2)]-1` -/
def P14554937266149918164.Spec : Prop :=
  ∀ n, P14554937266149918164.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P2746103520860603639

`∏[∑{p}[n+1, C(#, n+1)]+1]-1`
-/

namespace A357215.P2746103520860603639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A357215.P2746103520860603639

namespace A357215

/-- `∏[∑{p}[n+1, C(#, n+1)]+1]-1` -/
def P2746103520860603639.Spec : Prop :=
  ∀ n, P2746103520860603639.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P6795263665366012431

`2^∑[∑{p}[n+1, val(#, n+1)]]-1`
-/

namespace A357215.P6795263665366012431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A357215.P6795263665366012431

namespace A357215

/-- `2^∑[∑{p}[n+1, val(#, n+1)]]-1` -/
def P6795263665366012431.Spec : Prop :=
  ∀ n, P6795263665366012431.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P17101142444024971551

`2^∑[∑{p}[n+1, C(#, n+1)]]-1`
-/

namespace A357215.P17101142444024971551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A357215.P17101142444024971551

namespace A357215

/-- `2^∑[∑{p}[n+1, C(#, n+1)]]-1` -/
def P17101142444024971551.Spec : Prop :=
  ∀ n, P17101142444024971551.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P13660497992055412203

`2^∑[C(n, ∏{e}[n+1, n*#])]-1`
-/

namespace A357215.P13660497992055412203
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∏ p ∈ Nat.primeFactors (f2 n), n * Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A357215.P13660497992055412203

namespace A357215

/-- `2^∑[C(n, ∏{e}[n+1, n*#])]-1` -/
def P13660497992055412203.Spec : Prop :=
  ∀ n, P13660497992055412203.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P9968855203254546533

`A048656(n+1)-1`
-/

namespace A357215.P9968855203254546533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048656 (n + 1) - 1

end

end A357215.P9968855203254546533

namespace A357215

/-- `A048656(n+1)-1` -/
def P9968855203254546533.Spec : Prop :=
  ∀ n, P9968855203254546533.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P14600383033799435221

`∏[Δ[A095117(n)]]-1`
-/

namespace A357215.P14600383033799435221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A357215.P14600383033799435221

namespace A357215

/-- `∏[Δ[A095117(n)]]-1` -/
def P14600383033799435221.Spec : Prop :=
  ∀ n, P14600383033799435221.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P268757594551790059

`∏[ceil(ratio[A151800(n)])]-1`
-/

namespace A357215.P268757594551790059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A357215.P268757594551790059

namespace A357215

/-- `∏[ceil(ratio[A151800(n)])]-1` -/
def P268757594551790059.Spec : Prop :=
  ∀ n, P268757594551790059.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P3594474333263990562

`2^A230980(n+1)-1`
-/

namespace A357215.P3594474333263990562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A230980 (n + 1) : ℤ) - 1

end

end A357215.P3594474333263990562

namespace A357215

/-- `2^A230980(n+1)-1` -/
def P3594474333263990562.Spec : Prop :=
  ∀ n, P3594474333263990562.a n = (A357215 (n + 1) : ℚ)

end A357215

/-! ## A357215.P12997892546773793268

`∏[Δ[A064427(n+1)]]-1`
-/

namespace A357215.P12997892546773793268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A357215.P12997892546773793268

namespace A357215

/-- `∏[Δ[A064427(n+1)]]-1` -/
def P12997892546773793268.Spec : Prop :=
  ∀ n, P12997892546773793268.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P11724414164208837383

`A000225(A000720(n+1))`
-/

namespace A357215.P11724414164208837383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000720 (n + 1)).toNat

end

end A357215.P11724414164208837383

namespace A357215

/-- `A000225(A000720(n+1))` -/
def P11724414164208837383.Spec : Prop :=
  ∀ n, P11724414164208837383.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P767665076807224974

`A000225(A230980(n+1))`
-/

namespace A357215.P767665076807224974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A230980 (n + 1)).toNat

end

end A357215.P767665076807224974

namespace A357215

/-- `A000225(A230980(n+1))` -/
def P767665076807224974.Spec : Prop :=
  ∀ n, P767665076807224974.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P1163644645439432362

`A324714(A066169(n+1))`
-/

namespace A357215.P1163644645439432362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324714 (A066169 (n + 1)).toNat

end

end A357215.P1163644645439432362

namespace A357215

/-- `A324714(A066169(n+1))` -/
def P1163644645439432362.Spec : Prop :=
  ∀ n, P1163644645439432362.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P9853715501815767414

`A324714(A151800(n+1))`
-/

namespace A357215.P9853715501815767414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324714 (A151800 (n + 1)).toNat

end

end A357215.P9853715501815767414

namespace A357215

/-- `A324714(A151800(n+1))` -/
def P9853715501815767414.Spec : Prop :=
  ∀ n, P9853715501815767414.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P5470723906875706106

`A322994(A276000(n+1))`
-/

namespace A357215.P5470723906875706106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322994 (A276000 (n + 1)).toNat

end

end A357215.P5470723906875706106

namespace A357215

/-- `A322994(A276000(n+1))` -/
def P5470723906875706106.Spec : Prop :=
  ∀ n, P5470723906875706106.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P17238869087422445172

`A243071(A136548(n+2))`
-/

namespace A357215.P17238869087422445172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A136548 (n + 2)).toNat

end

end A357215.P17238869087422445172

namespace A357215

/-- `A243071(A136548(n+2))` -/
def P17238869087422445172.Spec : Prop :=
  ∀ n, P17238869087422445172.a n = A357215 (n + 1)

end A357215

/-! ## A357215.P2404917894315675649

`A011782(A036234(n+1))-1`
-/

namespace A357215.P2404917894315675649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A036234 (n + 1)).toNat - 1

end

end A357215.P2404917894315675649

namespace A357215

/-- `A011782(A036234(n+1))-1` -/
def P2404917894315675649.Spec : Prop :=
  ∀ n, P2404917894315675649.a n = A357215 (n + 1)

end A357215

/-!
# A357216: Table read by antidiagonals: T(n,k) (n >= 3, k >= 0) is the number of regions in an n-gon when k internal n-gons are drawn between the n*k points that divide each side into k+1 equal parts.

The programs for A357216, there is no canonical definition to state claims against.
-/

/-! ## A357216.P7013500802481815228

`A357254(n+3)+1-A357235(n+3)`
-/

namespace A357216.P7013500802481815228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357254 (n + 3) + (1 - A357235 (n + 3))

end

end A357216.P7013500802481815228

/-! ## A357216.P4451769158771488964

`A357254(n+3)+A024000(A357235(n+3))`
-/

namespace A357216.P4451769158771488964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357254 (n + 3) + A024000 (A357235 (n + 3)).toNat

end

end A357216.P4451769158771488964

/-!
# A357217: Array read by descending antidiagonals: T(n,k) is the number of cycles of the permutation given by the order of elimination in the Josephus problem for n numbers and a count of k; n, k >= 1.

The programs for A357217, there is no canonical definition to state claims against.
-/

/-! ## A357217.P4404798923417488239

`gcd(A057145(n+2), A061395(A158116(n)))`
-/

namespace A357217.P4404798923417488239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057145 (n + 2)) (A061395 (A158116 n).toNat)

end

end A357217.P4404798923417488239

/-! ## A357217.P17328663987484373859

`gcd(A126885(n), A379542(A253563(n)))`
-/

namespace A357217.P17328663987484373859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126885 n) (A379542 (A253563 n).toNat)

end

end A357217.P17328663987484373859

/-! ## A357217.P5082868719743775168

`A324668(or(A324646(n+1), A324684(n)))`
-/

namespace A357217.P5082868719743775168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324668 (Int.lor (A324646 (n + 1)) (A324684 n)).toNat

end

end A357217.P5082868719743775168

/-! ## A357217.P3107144637057130225

`A050873(n+1)+A007814(A156289(n+1))`
-/

namespace A357217.P3107144637057130225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) + A007814 (A156289 (n + 1)).toNat

end

end A357217.P3107144637057130225

/-! ## A357217.P925656203496405345

`A112544(n+1)-A351555(A001599(n+2))`
-/

namespace A357217.P925656203496405345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) - A351555 (A001599 (n + 2)).toNat

end

end A357217.P925656203496405345

/-!
# A357218: Primes p such that T(p) - 2 is prime, where T(p) is the triangular number (A000217) with index p.

The programs for A357218, there is no canonical definition to state claims against.
-/

/-! ## A357218.P15378813592361843483

`filter[A376206(n+1), A068716(#)]`
-/

namespace A357218.P15378813592361843483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A068716 (f1 j).toNat = 1) n)

end

end A357218.P15378813592361843483

/-! ## A357218.P5891997491872051707

`filter[A376206(n+1), A079260(#)]`
-/

namespace A357218.P5891997491872051707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079260 (f1 j).toNat = 1) n)

end

end A357218.P5891997491872051707

/-! ## A357218.P3290766017993611514

`filter[A376206(n+1), A133872(#)]`
-/

namespace A357218.P3290766017993611514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A357218.P3290766017993611514

/-! ## A357218.P5938821244446072480

`filter[A376206(n+1), A229062(#)]`
-/

namespace A357218.P5938821244446072480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A357218.P5938821244446072480

/-! ## A357218.P9232132018082670729

`filter[A376206(n+1), A255817(#)]`
-/

namespace A357218.P9232132018082670729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A255817 (f1 j).toNat = 1) n)

end

end A357218.P9232132018082670729

/-!
# A357219: Primes of the form T(p) - 2 where T(p) is the triangular number (A000217) with prime index p in A357218.

The programs for A357219, there is no canonical definition to state claims against.
-/

/-! ## A357219.P6440866172397656469

`A000217(A357218(n+1))-2`
-/

namespace A357219.P6440866172397656469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A357218 (n + 1)).toNat - 2

end

end A357219.P6440866172397656469

/-! ## A357219.P17913103845903501394

`∩[A096333(n+1), A124199(n+1)]`
-/

namespace A357219.P17913103845903501394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P17913103845903501394

/-! ## A357219.P15017735331971266061

`∩[A096333(n+1), A187677(n+1)]`
-/

namespace A357219.P15017735331971266061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P15017735331971266061

/-! ## A357219.P3241638337837071174

`∩[A091823(n+1), A096333(n+1)]`
-/

namespace A357219.P3241638337837071174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P3241638337837071174

/-! ## A357219.P8485130325897946428

`∩[A096333(n+1), A275660(n+1)]`
-/

namespace A357219.P8485130325897946428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P8485130325897946428

/-! ## A357219.P9788743344547149477

`A054254(A357218(n+1))`
-/

namespace A357219.P9788743344547149477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 (A357218 (n + 1)).toNat

end

end A357219.P9788743344547149477

/-! ## A357219.P17417231852962790008

`A034856(A357218(n+1)-1)`
-/

namespace A357219.P17417231852962790008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (A357218 (n + 1) - 1).toNat

end

end A357219.P17417231852962790008

/-! ## A357219.P15591459405596025788

`∩[A054254(n), A096333(n+1)]`
-/

namespace A357219.P15591459405596025788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P15591459405596025788

/-! ## A357219.P5392198844271589026

`∩[A096333(n+1), A266665(n)]`
-/

namespace A357219.P5392198844271589026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P5392198844271589026

/-! ## A357219.P3135082844306036524

`∩[A034856(n+1), A096333(n+1)]`
-/

namespace A357219.P3135082844306036524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P3135082844306036524

/-! ## A357219.P6282751855192358839

`∩[A096333(n+1), A162761(n+1)]`
-/

namespace A357219.P6282751855192358839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162761 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P6282751855192358839

/-! ## A357219.P2876289994655126022

`∩[A096333(n+1), A186752(n+1)]`
-/

namespace A357219.P2876289994655126022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P2876289994655126022

/-! ## A357219.P922138263745593870

`∩[A054254(A002144(n+1)), A187677(n+1)]`
-/

namespace A357219.P922138263745593870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 (A002144 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P922138263745593870

/-! ## A357219.P15605620205699054435

`∩[A187677(n+1), A054254(A055131(n)/3)]`
-/

namespace A357219.P15605620205699054435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 (SequenceMachineLib.roundAway ((A055131 n : ℚ) / 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P15605620205699054435

/-! ## A357219.P392386974430135813

`∩[A187677(n+1), A176126(A055131(n)/3)]`
-/

namespace A357219.P392386974430135813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (SequenceMachineLib.roundAway ((A055131 n : ℚ) / 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P392386974430135813

/-! ## A357219.P7472232360375901427

`∩[A054254(A152680(n+1)+1), A187677(n+1)]`
-/

namespace A357219.P7472232360375901427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 (A152680 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P7472232360375901427

/-! ## A357219.P14026869336079453245

`∩[A176126(A152680(n+1)+1), A187677(n+1)]`
-/

namespace A357219.P14026869336079453245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (A152680 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P14026869336079453245

/-! ## A357219.P3734279286628826534

`∩[A054254(4*A005098(n+1)+1), A187677(n+1)]`
-/

namespace A357219.P3734279286628826534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054254 (4 * A005098 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P3734279286628826534

/-! ## A357219.P3111238301167392203

`∩[A176126(4*A005098(n+1)+1), A187677(n+1)]`
-/

namespace A357219.P3111238301167392203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176126 (4 * A005098 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P3111238301167392203

/-! ## A357219.P13438810426957777649

`∩[A096333(n+1), A101881(n)]`
-/

namespace A357219.P13438810426957777649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101881 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357219.P13438810426957777649

/-!
# A357220: a(n) = coefficient of x^n in Sum_{n>=0} x^n/(1 - x*C(x)^n), where C(x) = 1/(1 - x*C(x)) is a g.f. of the Catalan numbers (A000108).

The programs for A357220, there is no canonical definition to state claims against.
-/

/-! ## A357220.P3343855515360832361

`A303401(A111288(n+4))+A279552(n)`
-/

namespace A357220.P3343855515360832361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303401 (A111288 (n + 4)).toNat + A279552 n

end

end A357220.P3343855515360832361

/-! ## A357220.P1899233398469818418

`or(A241476(n+1), A360925(A178078(n)))`
-/

namespace A357220.P1899233398469818418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A241476 (n + 1)) (A360925 (A178078 n).toNat)

end

end A357220.P1899233398469818418

/-! ## A357220.P15751509606616858378

`A332072(2*a(n-1))` with `a(0)=1`
-/

namespace A357220.P15751509606616858378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332072 (2 * a (n - 1)).toNat

end

end A357220.P15751509606616858378

/-!
# A357221: Coefficients in the power series A(x) such that: x*A(x) = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)) * A(x)^n.

The programs for A357221, there is no canonical definition to state claims against.
-/

/-! ## A357221.P12568334555972608586

`A165640(A016064(n))`
-/

namespace A357221.P12568334555972608586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A016064 n).toNat

end

end A357221.P12568334555972608586

/-! ## A357221.P9951222514907262455

`A165640(A003500(n)-1)`
-/

namespace A357221.P9951222514907262455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (A003500 n - 1).toNat

end

end A357221.P9951222514907262455

/-! ## A357221.P3309283340815434222

`A165640(xor(3, A003500(n)))`
-/

namespace A357221.P3309283340815434222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (Int.xor 3 (A003500 n)).toNat

end

end A357221.P3309283340815434222

/-!
# A357222: Coefficients in the power series A(x) such that: x*A(x)^2 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)) * A(x)^n.

The programs for A357222, there is no canonical definition to state claims against.
-/

/-! ## A357222.P11471874829960612080

`A352226(2*A352236(n))`
-/

namespace A357222.P11471874829960612080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (2 * A352236 n).toNat

end

end A357222.P11471874829960612080

/-! ## A357222.P6044722978898333504

`A352226(lcm(2, A352236(n)))`
-/

namespace A357222.P6044722978898333504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (Int.lcm 2 (A352236 n))

end

end A357222.P6044722978898333504

/-!
# A357223: Coefficients in the power series A(x) such that: x*A(x)^3 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)) * A(x)^n.

The programs for A357223, there is no canonical definition to state claims against.
-/

/-! ## A357223.P16548068923470332976

`A004526(A072948(n)+A001223(n+1))`
-/

namespace A357223.P16548068923470332976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A072948 n + A001223 (n + 1)).toNat

end

end A357223.P16548068923470332976

/-! ## A357223.P3992135216420367293

`A195120(A160832(n)+A006632(n+1))`
-/

namespace A357223.P3992135216420367293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A160832 n + A006632 (n + 1)).toNat

end

end A357223.P3992135216420367293

/-!
# A357224: Coefficients in the power series A(x) such that: x*A(x)^4 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)) * A(x)^n.

The programs for A357224, there is no canonical definition to state claims against.
-/

/-! ## A357224.P3551978525502915919

`∑{d}[ceil(∏{p}[(2*n)!, n²/#]), A000203(#)]`
-/

namespace A357224.P3551978525502915919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f2 n), (n ^ 2 : ℚ) / (p : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 d

end

end A357224.P3551978525502915919

/-!
# A357225: Coefficients in the power series A(x) such that: x*A(x)^5 = Sum_{n=-oo..+oo} (-1)^n * x^(n*(n+1)) * A(x)^n.

The programs for A357225, there is no canonical definition to state claims against.
-/

/-! ## A357225.P7183804102021929565

`A054353(A001168(n)²)`
-/

namespace A357225.P7183804102021929565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A001168 n ^ 2).toNat

end

end A357225.P7183804102021929565

/-! ## A357225.P9257305135526822070

`A054353(A071969(n)²)`
-/

namespace A357225.P9257305135526822070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A071969 n ^ 2).toNat

end

end A357225.P9257305135526822070

/-!
# A357227: a(n) = coefficient of x^n, n >= 0, in A(x) such that: 1 = Sum_{n=-oo..+oo} x^n * (2*A(x) - x^n)^(n-1).

The programs for A357227, there is no canonical definition to state claims against.
-/

/-! ## A357227.P1877187472203271712

`A082996(A275781(n+4))+1`
-/

namespace A357227.P1877187472203271712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082996 (A275781 (n + 4)).toNat + 1

end

end A357227.P1877187472203271712

/-! ## A357227.P15804771008060296304

`A110654(A379083(n)-A370583(n))`
-/

namespace A357227.P15804771008060296304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A379083 n - A370583 n).toNat

end

end A357227.P15804771008060296304

/-!
# A357228: a(n) = coefficient of x^(2*n-1)/(2*n-1)! in the odd function A(x) = Integral Product_{n>=1} 1/(1 - x^(2*n))^((2*n-1)/(2*n)) dx.

The programs for A357228, there is no canonical definition to state claims against.
-/

/-! ## A357228.P14877185391528379921

`A001147(n)*A004273(A361277(∑[4*n]))`
-/

namespace A357228.P14877185391528379921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 n * A004273 (A361277 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A357228.P14877185391528379921

/-!
# A357231: a(n) = coefficient of x^(2*n)/(2*n)! in the expansion of the even function C(x) = sqrt(1 + S(x)^2) where S(x) is defined by A357230.

The programs for A357231, there is no canonical definition to state claims against.
-/

/-! ## A357231.P1091938231112030119

`A270672(A000699(n)²)+1`
-/

namespace A357231.P1091938231112030119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270672 (A000699 n ^ 2).toNat + 1

end

end A357231.P1091938231112030119

/-!
# A357232: a(n) = coefficient of x^n, n >= 0, in A(x) such that: 2 = Sum_{n=-oo..+oo} (-1)^n * x^n * (2*A(x) + x^n)^(2*n+1).

The programs for A357232, there is no canonical definition to state claims against.
-/

/-! ## A357232.P16868088469167368793

`A007094(A377467(n)+A206178(n))`
-/

namespace A357232.P16868088469167368793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A377467 n + A206178 n).toNat

end

end A357232.P16868088469167368793

/-!
# A357233: a(n) = coefficient of x^n in power series A(x) such that: 0 = Sum_{n>=0} (-1)^n * x^(n*(n-1)/2) * A(x)^(n*(n+1)/2).

The programs for A357233, there is no canonical definition to state claims against.
-/

/-! ## A357233.P14883892935895832472

`A010059(A006603(n))+A006605(n)`
-/

namespace A357233.P14883892935895832472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A006603 n).toNat + A006605 n

end

end A357233.P14883892935895832472

/-! ## A357233.P16961550154821374388

`A046660(A001858(n))+A006605(n)`
-/

namespace A357233.P16961550154821374388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A001858 n).toNat + A006605 n

end

end A357233.P16961550154821374388

/-! ## A357233.P16563128927424139232

`A025442(A054726(n))+A006605(n)`
-/

namespace A357233.P16563128927424139232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A054726 n).toNat + A006605 n

end

end A357233.P16563128927424139232

/-!
# A357235: Table read by antidiagonals: T(n,k) (n >= 3, k >= 0) is the number of vertices in an n-gon when k internal n-gons are drawn between the n*k points that divide each side into k+1 equal parts.

The programs for A357235, there is no canonical definition to state claims against.
-/

/-! ## A357235.P17951657450788285804

`A357254(n+3)+1-A357216(n+3)`
-/

namespace A357235.P17951657450788285804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357254 (n + 3) + (1 - A357216 (n + 3))

end

end A357235.P17951657450788285804

/-! ## A357235.P15950625554263506118

`A357254(n+3)+A024000(A357216(n+3))`
-/

namespace A357235.P15950625554263506118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357254 (n + 3) + A024000 (A357216 (n + 3)).toNat

end

end A357235.P15950625554263506118

/-!
# A357236: Number of compositions (ordered partitions) of n into distinct semiprimes.

The programs for A357236, there is no canonical definition to state claims against.
-/

/-! ## A357236.P9621359141052969153

`A004216(C(A151741(n+1), A112020(n))+1)`
-/

namespace A357236.P9621359141052969153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (Nat.choose (A151741 (n + 1)).toNat (A112020 n).toNat + 1)

end

end A357236.P9621359141052969153

/-! ## A357236.P7699559864375876237

`A280544(n)%A210976(A010078(2*(n+2)))`
-/

namespace A357236.P7699559864375876237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280544 n) (A210976 (A010078 (2 * (n + 2))).toNat)

end

end A357236.P7699559864375876237

/-! ## A357236.P18372979714261522876

`A352827(2*(n+2))%A001222(A217347(2*(n+1)))`
-/

namespace A357236.P18372979714261522876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352827 (2 * (n + 2))) (A001222 (A217347 (2 * (n + 1))).toNat)

end

end A357236.P18372979714261522876

/-! ## A357236.P15925802129580384590

`C(A344612(2*(n+2)), A154748(A068853(2*(n+1))))`
-/

namespace A357236.P15925802129580384590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A344612 (2 * (n + 2))).toNat (A154748 (A068853 (2 * (n + 1))).toNat).toNat

end

end A357236.P15925802129580384590

/-! ## A357236.P6235511891677408231

`A089224(A267617(2*(n+2)))`
-/

namespace A357236.P6235511891677408231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089224 (A267617 (2 * (n + 2))).toNat

end

end A357236.P6235511891677408231

/-!
# A357237: Number of compositions (ordered partitions) of n into distinct parts of the form 2^j - 1.

The programs for A357237, there is no canonical definition to state claims against.
-/

/-! ## A357237.P4405635623287354814

`A338848(A354047(n))`
-/

namespace A357237.P4405635623287354814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338848 (A354047 n).toNat

end

end A357237.P4405635623287354814

/-! ## A357237.P3625540796266417439

`A080468(n+2)!*A079559(n)`
-/

namespace A357237.P3625540796266417439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A080468 (n + 2)).toNat : ℤ) * A079559 n

end

end A357237.P3625540796266417439

/-! ## A357237.P18280514389107180418

`A151866(n)%2*A000142(A080468(n+2))`
-/

namespace A357237.P18280514389107180418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151866 n) 2 * A000142 (A080468 (n + 2)).toNat

end

end A357237.P18280514389107180418

/-! ## A357237.P16868720523646680726

`char[A155689(n+1)]*A000142(A080468(n+2))`
-/

namespace A357237.P16868720523646680726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155689 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000142 (A080468 (n + 2)).toNat

end

end A357237.P16868720523646680726

/-! ## A357237.P9568392618099212904

`A000120(A213714(n)^A352825(n+1))`
-/

namespace A357237.P9568392618099212904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A213714 n : ℚ) ^ (A352825 (n + 1) : ℤ))).toNat

end

end A357237.P9568392618099212904

/-!
# A357238: Inverse Moebius transform of tribonacci numbers (A000073).

The programs for A357238, the canonical program `A357238.P1681123937721153411` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357238 has offset 1).

The definition of A357238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 380 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357238.P1681123937721153411

`∑{d}[n+1, A000073(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357238

/-- `∑{d}[n+1, A000073(#)]` -/
def P1681123937721153411.Spec : Prop :=
  ∀ n, P1681123937721153411.a n = A357238 (n + 1)

theorem P1681123937721153411.correct : P1681123937721153411.Spec := by
  intro n
  simp only [A357238, Nat.add_sub_cancel]

end A357238

/-! ## A357238.P12838933213758713344

`∑{d}[n+1, A354784(#)/2]`
-/

namespace A357238.P12838933213758713344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A354784 d : ℚ) / 2

end

end A357238.P12838933213758713344

namespace A357238

/-- `∑{d}[n+1, A354784(#)/2]` -/
def P12838933213758713344.Spec : Prop :=
  ∀ n, P12838933213758713344.a n = (A357238 (n + 1) : ℚ)

end A357238

/-! ## A357238.P10183898190464817614

`∑{d}[n+1, sqrt(A085697(#))]`
-/

namespace A357238.P10183898190464817614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A085697 d : ℝ)

end

end A357238.P10183898190464817614

namespace A357238

/-- `∑{d}[n+1, sqrt(A085697(#))]` -/
def P10183898190464817614.Spec : Prop :=
  ∀ n, P10183898190464817614.a n = (A357238 (n + 1) : ℝ)

end A357238

/-! ## A357238.P5128109020310823425

`∑{d}[n+1, A004086(A102125(#))]`
-/

namespace A357238.P5128109020310823425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A004086 (A102125 d).toNat

end

end A357238.P5128109020310823425

namespace A357238

/-- `∑{d}[n+1, A004086(A102125(#))]` -/
def P5128109020310823425.Spec : Prop :=
  ∀ n, P5128109020310823425.a n = A357238 (n + 1)

end A357238

/-! ## A357238.P7548209647394405003

`A181578(A307057(n+1))`
-/

namespace A357238.P7548209647394405003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A307057 (n + 1)).toNat

end

end A357238.P7548209647394405003

namespace A357238

/-- `A181578(A307057(n+1))` -/
def P7548209647394405003.Spec : Prop :=
  ∀ n, P7548209647394405003.a n = A357238 (n + 1)

end A357238

/-!
# A357239: Inverse Moebius transform of tetranacci number (A000078).

The programs for A357239, the canonical program `A357239.P6265313027198735255` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357239 has offset 1).

The definition of A357239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 354 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357239.P6265313027198735255

`∑{d}[n+1, A000078(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357239

/-- `∑{d}[n+1, A000078(#)]` -/
def P6265313027198735255.Spec : Prop :=
  ∀ n, P6265313027198735255.a n = A357239 (n + 1)

theorem P6265313027198735255.correct : P6265313027198735255.Spec := by
  intro n
  simp only [A357239, Nat.add_sub_cancel]

end A357239

/-! ## A357239.P4958856316271609855

`Δ[A257639(A148384(n))]`
-/

namespace A357239.P4958856316271609855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A148384 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357239.P4958856316271609855

namespace A357239

/-- `Δ[A257639(A148384(n))]` -/
def P4958856316271609855.Spec : Prop :=
  ∀ n, P4958856316271609855.a n = A357239 (n + 1)

end A357239

/-! ## A357239.P16734064739048941134

`A000196(floor(Δ[A000085(n)]/2))`
-/

namespace A357239.P16734064739048941134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌊(f1 (n + 1) - f1 n : ℚ) / 2⌋.toNat

end

end A357239.P16734064739048941134

namespace A357239

/-- `A000196(floor(Δ[A000085(n)]/2))` -/
def P16734064739048941134.Spec : Prop :=
  ∀ n, P16734064739048941134.a n = A357239 (n + 1)

end A357239

/-! ## A357239.P11601196357430155078

`A241065(∑[record[A217956(n+1)]])`
-/

namespace A357239.P11601196357430155078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217956 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241065 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357239.P11601196357430155078

namespace A357239

/-- `A241065(∑[record[A217956(n+1)]])` -/
def P11601196357430155078.Spec : Prop :=
  ∀ n, P11601196357430155078.a n = A357239 (n + 1)

end A357239

/-! ## A357239.P18072375014139725105

`A275947(n)+A000196(A283109(n))`
-/

namespace A357239.P18072375014139725105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275947 n + A000196 (A283109 n).toNat

end

end A357239.P18072375014139725105

namespace A357239

/-- `A275947(n)+A000196(A283109(n))` -/
def P18072375014139725105.Spec : Prop :=
  ∀ n, P18072375014139725105.a n = A357239 (n + 1)

end A357239

/-!
# A357244: E.g.f. satisfies A(x) * log(A(x)) = 2 * (exp(x) - 1).

The programs for A357244, there is no canonical definition to state claims against.
-/

/-! ## A357244.P9986076831114544629

`∑[A046692(A108798(n))]`
-/

namespace A357244.P9986076831114544629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (A108798 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357244.P9986076831114544629

/-!
# A357247: E.g.f. satisfies A(x) * log(A(x)) = x * exp(-x).

The programs for A357247, there is no canonical definition to state claims against.
-/

/-! ## A357247.P261532695616417405

`A359759(A133263(n)-1)`
-/

namespace A357247.P261532695616417405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359759 (A133263 n - 1).toNat

end

end A357247.P261532695616417405

/-! ## A357247.P12600121438644478864

`or(1, A359759(A000124(n)))`
-/

namespace A357247.P12600121438644478864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A359759 (A000124 n).toNat)

end

end A357247.P12600121438644478864

/-! ## A357247.P15001803055218062463

`A359759(eq[1, A244116(n)])`
-/

namespace A357247.P15001803055218062463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357247.P15001803055218062463

/-! ## A357247.P565988393839683175

`A359759(A000124(A000007(n)+n))`
-/

namespace A357247.P565988393839683175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359759 (A000124 (A000007 n + (n : ℤ)).toNat).toNat

end

end A357247.P565988393839683175

/-! ## A357247.P2821494757848326128

`A359759(A000124(n)%A010575(n))`
-/

namespace A357247.P2821494757848326128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359759 (Int.tmod (A000124 n) (A010575 n)).toNat

end

end A357247.P2821494757848326128

/-!
# A357249: a(n) = A139315(n)*n.

The programs for A357249, there is no canonical definition to state claims against.
-/

/-! ## A357249.P1708423730698174611

`A139315(n+2)*(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357249.P1708423730698174611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139315 (n + 2) * (n + 2 : ℤ)

end

end A357249.P1708423730698174611

/-! ## A357249.P5066224156460486357

`A058321(n)*A139315(n+2)`
-/

namespace A357249.P5066224156460486357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058321 n * A139315 (n + 2)

end

end A357249.P5066224156460486357

/-! ## A357249.P6671861177749762506

`A139315(n+2)/A028310(n+2)^-1`
-/

namespace A357249.P6671861177749762506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139315 (n + 2) : ℚ) / (A028310 (n + 2) : ℚ) ^ (-1 : ℤ)

end

end A357249.P6671861177749762506

/-! ## A357249.P5535721932271590307

`A129902(gcd(A095921(n+1), A139315(n+2)))`
-/

namespace A357249.P5535721932271590307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129902 (Int.gcd (A095921 (n + 1)) (A139315 (n + 2)))

end

end A357249.P5535721932271590307

/-!
# A357250: Number of quaternary steady words of length n (with respect to the permutations of symbols).

The programs for A357250, there is no canonical definition to state claims against.
-/

/-! ## A357250.P11550581417218377596

`A164001(n+1)+A010051(A108169(n))`
-/

namespace A357250.P11550581417218377596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) + A010051 (A108169 n).toNat

end

end A357250.P11550581417218377596

/-! ## A357250.P4918579361542889137

`A164001(n+1)+A064911(A177209(n))`
-/

namespace A357250.P4918579361542889137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1) + A064911 (A177209 n).toNat

end

end A357250.P4918579361542889137

/-! ## A357250.P9096785314584557289

`or(A010051(A000108(n)), A164001(n+1))`
-/

namespace A357250.P9096785314584557289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A000108 n).toNat) (A164001 (n + 1))

end

end A357250.P9096785314584557289

/-! ## A357250.P5604525904070025405

`or(A059841(A091500(n)), A117598(n+1))`
-/

namespace A357250.P5604525904070025405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A091500 n).toNat) (A117598 (n + 1))

end

end A357250.P5604525904070025405

/-! ## A357250.P2920582148671441160

`or(A164001(n+1), A336352(A271894(n)))`
-/

namespace A357250.P2920582148671441160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A164001 (n + 1)) (A336352 (A271894 n).toNat)

end

end A357250.P2920582148671441160

/-!
# A357251: a(n) = Sum_{1<=i<=j<=n} prime(i)*prime(j).

The programs for A357251, the canonical program `A357251.P3468567000620855618` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357251 has offset 1).

The definition of A357251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357251.P3468567000620855618

`A065762(n+1)/2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A357251

/-- `A065762(n+1)/2` -/
def P3468567000620855618.Spec : Prop :=
  ∀ n, P3468567000620855618.a n = (A357251 (n + 1) : ℚ)

end A357251

/-! ## A357251.P13272430688700015771

`A024447(n+1)+A024450(n+1)`
-/

namespace A357251.P13272430688700015771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + A024450 (n + 1)

end

end A357251.P13272430688700015771

namespace A357251

/-- `A024447(n+1)+A024450(n+1)` -/
def P13272430688700015771.Spec : Prop :=
  ∀ n, P13272430688700015771.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P16970857901296239796

`(A007504(n+1)²+A024450(n+1))/2`
-/

namespace A357251.P16970857901296239796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007504 (n + 1) ^ 2 + A024450 (n + 1) : ℚ) / 2

end

end A357251.P16970857901296239796

namespace A357251

/-- `(A007504(n+1)²+A024450(n+1))/2` -/
def P16970857901296239796.Spec : Prop :=
  ∀ n, P16970857901296239796.a n = (A357251 (n + 1) : ℚ)

end A357251

/-! ## A357251.P12437526344932483556

`∑[A143215(n+1)]`
-/

namespace A357251.P12437526344932483556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P12437526344932483556

namespace A357251

/-- `∑[A143215(n+1)]` -/
def P12437526344932483556.Spec : Prop :=
  ∀ n, P12437526344932483556.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P18313372407899545168

`∑[A034956(n+1)+A008837(n+1)]`
-/

namespace A357251.P18313372407899545168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034956 (n + 1) + A008837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P18313372407899545168

namespace A357251

/-- `∑[A034956(n+1)+A008837(n+1)]` -/
def P18313372407899545168.Spec : Prop :=
  ∀ n, P18313372407899545168.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P17072639863425774810

`A024450(n+1)+A065595(n+1)/2`
-/

namespace A357251.P17072639863425774810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 1) : ℚ) + (A065595 (n + 1) : ℚ) / 2

end

end A357251.P17072639863425774810

namespace A357251

/-- `A024450(n+1)+A065595(n+1)/2` -/
def P17072639863425774810.Spec : Prop :=
  ∀ n, P17072639863425774810.a n = (A357251 (n + 1) : ℚ)

end A357251

/-! ## A357251.P733612898256021300

`A024447(n+1)+∑[A000040(n+1)²]`
-/

namespace A357251.P733612898256021300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024447 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P733612898256021300

namespace A357251

/-- `A024447(n+1)+∑[A000040(n+1)²]` -/
def P733612898256021300.Spec : Prop :=
  ∀ n, P733612898256021300.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P14006328417738343916

`∑[A339194(n+1)+A000040(n+1)²]`
-/

namespace A357251.P14006328417738343916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339194 (n + 1) + A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P14006328417738343916

namespace A357251

/-- `∑[A339194(n+1)+A000040(n+1)²]` -/
def P14006328417738343916.Spec : Prop :=
  ∀ n, P14006328417738343916.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P8084343017895420142

`A007504(n+1)*A007504(n+1)-A024447(n+1)`
-/

namespace A357251.P8084343017895420142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A007504 (n + 1) - A024447 (n + 1)

end

end A357251.P8084343017895420142

namespace A357251

/-- `A007504(n+1)*A007504(n+1)-A024447(n+1)` -/
def P8084343017895420142.Spec : Prop :=
  ∀ n, P8084343017895420142.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P11513099745369392812

`∑[A007504(n+1)*A008578(n+2)]`
-/

namespace A357251.P11513099745369392812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P11513099745369392812

namespace A357251

/-- `∑[A007504(n+1)*A008578(n+2)]` -/
def P11513099745369392812.Spec : Prop :=
  ∀ n, P11513099745369392812.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P10393435184569583523

`∑[∑[A182986(n+2)]*A182986(n+2)]`
-/

namespace A357251.P10393435184569583523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A182986 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P10393435184569583523

namespace A357251

/-- `∑[∑[A182986(n+2)]*A182986(n+2)]` -/
def P10393435184569583523.Spec : Prop :=
  ∀ n, P10393435184569583523.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P11961549091767789454

`∑[record[A006530(n+2)]*A007504(n+1)]`
-/

namespace A357251.P11961549091767789454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P11961549091767789454

namespace A357251

/-- `∑[record[A006530(n+2)]*A007504(n+1)]` -/
def P11961549091767789454.Spec : Prop :=
  ∀ n, P11961549091767789454.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P17549352905023628783

`∑[record[A020639(n+2)]*A007504(n+1)]`
-/

namespace A357251.P17549352905023628783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A007504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P17549352905023628783

namespace A357251

/-- `∑[record[A020639(n+2)]*A007504(n+1)]` -/
def P17549352905023628783.Spec : Prop :=
  ∀ n, P17549352905023628783.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P2561255699508976486

`∑[A007504(n+1)*A073846(2*(n+1))]`
-/

namespace A357251.P2561255699508976486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) * A073846 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P2561255699508976486

namespace A357251

/-- `∑[A007504(n+1)*A073846(2*(n+1))]` -/
def P2561255699508976486.Spec : Prop :=
  ∀ n, P2561255699508976486.a n = A357251 (n + 1)

end A357251

/-! ## A357251.P12280737003262433383

`∑[A301707(A000040(n+1))]`
-/

namespace A357251.P12280737003262433383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301707 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357251.P12280737003262433383

namespace A357251

/-- `∑[A301707(A000040(n+1))]` -/
def P12280737003262433383.Spec : Prop :=
  ∀ n, P12280737003262433383.a n = A357251 (n + 1)

end A357251

/-!
# A357252: Primes in A357251.

The programs for A357252, there is no canonical definition to state claims against.
-/

/-! ## A357252.P17047076463113786355

`p?[A357251(n+1)]`
-/

namespace A357252.P17047076463113786355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A357252.P17047076463113786355

/-!
# A357253: a(n) is the largest prime < 6*n.

The programs for A357253, the canonical program `A357253.P3258899309952835822` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357253 has offset 1).

The definition of A357253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357253.P3258899309952835822

`A007917(6*(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357253

/-- `A007917(6*(n+1))` -/
def P3258899309952835822.Spec : Prop :=
  ∀ n, P3258899309952835822.a n = A357253 (n + 1)

theorem P3258899309952835822.correct : P3258899309952835822.Spec := by
  intro n
  simp only [A357253, Nat.add_sub_cancel]

end A357253

/-! ## A357253.P13552220234802372552

`A000040(A100637(2*n+1))`
-/

namespace A357253.P13552220234802372552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A100637 (2 * n + 1)).toNat

end

end A357253.P13552220234802372552

namespace A357253

/-- `A000040(A100637(2*n+1))` -/
def P13552220234802372552.Spec : Prop :=
  ∀ n, P13552220234802372552.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P850196498966236588

`A000040(A000720(6*(n+1)))`
-/

namespace A357253.P850196498966236588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (6 * (n + 1))).toNat

end

end A357253.P850196498966236588

namespace A357253

/-- `A000040(A000720(6*(n+1)))` -/
def P850196498966236588.Spec : Prop :=
  ∀ n, P850196498966236588.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P769785575630318363

`A000040(A099801(2*n+n+2))`
-/

namespace A357253.P769785575630318363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A099801 (2 * n + (n + 2))).toNat

end

end A357253.P769785575630318363

namespace A357253

/-- `A000040(A099801(2*n+n+2))` -/
def P769785575630318363.Spec : Prop :=
  ∀ n, P769785575630318363.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P10128500717780213035

`A081259(2*(n+1))`
-/

namespace A357253.P10128500717780213035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081259 (2 * (n + 1))

end

end A357253.P10128500717780213035

namespace A357253

/-- `A081259(2*(n+1))` -/
def P10128500717780213035.Spec : Prop :=
  ∀ n, P10128500717780213035.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P15980298751502497661

`A118749(2*(n+1))`
-/

namespace A357253.P15980298751502497661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118749 (2 * (n + 1))

end

end A357253.P15980298751502497661

namespace A357253

/-- `A118749(2*(n+1))` -/
def P15980298751502497661.Spec : Prop :=
  ∀ n, P15980298751502497661.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P11770442892370842797

`A060265(3*(n+1))`
-/

namespace A357253.P11770442892370842797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (3 * (n + 1))

end

end A357253.P11770442892370842797

namespace A357253

/-- `A060265(3*(n+1))` -/
def P11770442892370842797.Spec : Prop :=
  ∀ n, P11770442892370842797.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P10997556705279451283

`A060308(3*(n+1))`
-/

namespace A357253.P10997556705279451283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (3 * (n + 1))

end

end A357253.P10997556705279451283

namespace A357253

/-- `A060308(3*(n+1))` -/
def P10997556705279451283.Spec : Prop :=
  ∀ n, P10997556705279451283.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P3491533693823841589

`A335285(A016933(n+1))`
-/

namespace A357253.P3491533693823841589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335285 (A016933 (n + 1)).toNat

end

end A357253.P3491533693823841589

namespace A357253

/-- `A335285(A016933(n+1))` -/
def P3491533693823841589.Spec : Prop :=
  ∀ n, P3491533693823841589.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P14511380761304160499

`A064989(A118755(n+1))`
-/

namespace A357253.P14511380761304160499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A118755 (n + 1)).toNat

end

end A357253.P14511380761304160499

namespace A357253

/-- `A064989(A118755(n+1))` -/
def P14511380761304160499.Spec : Prop :=
  ∀ n, P14511380761304160499.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P4901736689094735721

`A136548(6*(n+1))`
-/

namespace A357253.P4901736689094735721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (6 * (n + 1))

end

end A357253.P4901736689094735721

namespace A357253

/-- `A136548(6*(n+1))` -/
def P4901736689094735721.Spec : Prop :=
  ∀ n, P4901736689094735721.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P18031370243227142813

`A055377(A017641(n))`
-/

namespace A357253.P18031370243227142813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A017641 n).toNat

end

end A357253.P18031370243227142813

namespace A357253

/-- `A055377(A017641(n))` -/
def P18031370243227142813.Spec : Prop :=
  ∀ n, P18031370243227142813.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P14245415018528460239

`A055377(A017653(n))`
-/

namespace A357253.P14245415018528460239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A017653 n).toNat

end

end A357253.P14245415018528460239

namespace A357253

/-- `A055377(A017653(n))` -/
def P14245415018528460239.Spec : Prop :=
  ∀ n, P14245415018528460239.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P10349952270847683890

`A055377(A008594(n+1))`
-/

namespace A357253.P10349952270847683890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A008594 (n + 1)).toNat

end

end A357253.P10349952270847683890

namespace A357253

/-- `A055377(A008594(n+1))` -/
def P10349952270847683890.Spec : Prop :=
  ∀ n, P10349952270847683890.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P13117570907157382976

`A055377(A017533(n+1))`
-/

namespace A357253.P13117570907157382976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A017533 (n + 1)).toNat

end

end A357253.P13117570907157382976

namespace A357253

/-- `A055377(A017533(n+1))` -/
def P13117570907157382976.Spec : Prop :=
  ∀ n, P13117570907157382976.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P13921688519831431327

`A055377(2*A016969(n))`
-/

namespace A357253.P13921688519831431327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (2 * A016969 n).toNat

end

end A357253.P13921688519831431327

namespace A357253

/-- `A055377(2*A016969(n))` -/
def P13921688519831431327.Spec : Prop :=
  ∀ n, P13921688519831431327.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P8549481284979825863

`A055377(A016957(2*n+1))`
-/

namespace A357253.P8549481284979825863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A016957 (2 * n + 1)).toNat

end

end A357253.P8549481284979825863

namespace A357253

/-- `A055377(A016957(2*n+1))` -/
def P8549481284979825863.Spec : Prop :=
  ∀ n, P8549481284979825863.a n = A357253 (n + 1)

end A357253

/-! ## A357253.P6426499288876108882

`A120303(3*(n+1))`
-/

namespace A357253.P6426499288876108882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120303 (3 * (n + 1))

end

end A357253.P6426499288876108882

namespace A357253

/-- `A120303(3*(n+1))` -/
def P6426499288876108882.Spec : Prop :=
  ∀ n, P6426499288876108882.a n = A357253 (n + 1)

end A357253

/-!
# A357254: Table read by antidiagonals: T(n,k) (n >= 3, k >= 0) is the number of edges in an n-gon when k internal n-gons are drawn between the n*k points that divide each side into k+1 equal parts.

The programs for A357254, there is no canonical definition to state claims against.
-/

/-! ## A357254.P16021970126355105619

`A357216(n+3)+A357235(n+3)-1`
-/

namespace A357254.P16021970126355105619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357216 (n + 3) + (A357235 (n + 3) - 1)

end

end A357254.P16021970126355105619

/-! ## A357254.P4157862360652165355

`A357216(n+3)+A023443(A357235(n+3))`
-/

namespace A357254.P4157862360652165355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357216 (n + 3) + A023443 (A357235 (n + 3)).toNat

end

end A357254.P4157862360652165355

/-! ## A357254.P18261841539987424163

`A199969(A357235(n+3)+A357216(n+3))`
-/

namespace A357254.P18261841539987424163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A357235 (n + 3) + A357216 (n + 3)).toNat

end

end A357254.P18261841539987424163

/-!
# A357255: Triangular array: row n gives the recurrence coefficients for the sequence (c(k) = number of subsets of {1,2,...,n} that have at least k-1 elements) for k >= 1.

The programs for A357255, the canonical program `A357255.P2198704498230772364` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357255 has offset 1).

The definition of A357255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357255.P2198704498230772364

`(-1)^col(n)*(C(row(n)+1, col(n)+1)+C(row(n), col(n)))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357255

/-- `(-1)^col(n)*(C(row(n)+1, col(n)+1)+C(row(n), col(n)))` -/
def P2198704498230772364.Spec : Prop :=
  ∀ n, P2198704498230772364.a n = A357255 (n + 1)

theorem P2198704498230772364.correct : P2198704498230772364.Spec := by
  intro n
  simp only [A357255, Nat.add_sub_cancel]

end A357255

/-! ## A357255.P3805832358698365767

`A277078(n)-A277078(comp[∑[n]])`
-/

namespace A357255.P3805832358698365767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277078 n - A277078 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A357255.P3805832358698365767

namespace A357255

/-- `A277078(n)-A277078(comp[∑[n]])` -/
def P3805832358698365767.Spec : Prop :=
  ∀ n, P3805832358698365767.a n = A357255 (n + 1)

end A357255

/-! ## A357255.P12659473727764658150

`(A066667(n)+A021009(n))/A094587(n)`
-/

namespace A357255.P12659473727764658150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066667 n + A021009 n : ℚ) / (A094587 n : ℚ)

end

end A357255.P12659473727764658150

namespace A357255

/-- `(A066667(n)+A021009(n))/A094587(n)` -/
def P12659473727764658150.Spec : Prop :=
  ∀ n, P12659473727764658150.a n = (A357255 (n + 1) : ℚ)

end A357255

/-!
# A357259: a(n) is the number of 2 X 2 Euclid-reduced matrices having determinant n.

The programs for A357259, there is no canonical definition to state claims against.
-/

/-! ## A357259.P13412588479058277490

`A038548(n+1)+A079667(n+1)`
-/

namespace A357259.P13412588479058277490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + A079667 (n + 1)

end

end A357259.P13412588479058277490

/-! ## A357259.P14109545655005298437

`A079667(n+1)+A072670(n)+1`
-/

namespace A357259.P14109545655005298437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A072670 n + 1)

end

end A357259.P14109545655005298437

/-! ## A357259.P16613805098780052317

`A079667(n+1)+Δ[A132106(n)/2]`
-/

namespace A357259.P16613805098780052317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079667 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)

end

end A357259.P16613805098780052317

/-! ## A357259.P13166993037511621882

`ceil(A079667(n+1)+A000005(n+1)/2)`
-/

namespace A357259.P13166993037511621882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079667 (n + 1) : ℚ) + (A000005 (n + 1) : ℚ) / 2⌉

end

end A357259.P13166993037511621882

/-! ## A357259.P17967466027331603400

`A079667(n+1)+floor((A000005(C(n+1, n))+1)/2)`
-/

namespace A357259.P17967466027331603400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + ⌊(A000005 (Nat.choose (n + 1) n) + 1 : ℚ) / 2⌋

end

end A357259.P17967466027331603400

/-! ## A357259.P13076017980190505620

`A079667(n+1)+A065033(A000005(n+1))`
-/

namespace A357259.P13076017980190505620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + A065033 (A000005 (n + 1)).toNat

end

end A357259.P13076017980190505620

/-! ## A357259.P16349014407075616229

`A079667(n+1)+A004526(A000005(n+1)+1)`
-/

namespace A357259.P16349014407075616229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + A004526 (A000005 (n + 1) + 1).toNat

end

end A357259.P16349014407075616229

/-! ## A357259.P3793216628412944867

`A246552(2*A000005(n+1))+A079667(n+1)`
-/

namespace A357259.P3793216628412944867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (2 * A000005 (n + 1)).toNat + A079667 (n + 1)

end

end A357259.P3793216628412944867

/-! ## A357259.P12307481420139118611

`A079667(n+1)+A349005(n+1)-A060866(n+1)`
-/

namespace A357259.P12307481420139118611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079667 (n + 1) + (A349005 (n + 1) - A060866 (n + 1))

end

end A357259.P12307481420139118611

/-!
# A357260: a(n) is the number of 2 X 2 Euclid-reduced matrices having coprime elements and determinant n.

The programs for A357260, there is no canonical definition to state claims against.
-/

/-! ## A357260.P4476901366963605473

`∑{d}[n+1, A271102(#)*A357259((n+1)/#)]`
-/

namespace A357260.P4476901366963605473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A357259 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A357260.P4476901366963605473

/-! ## A357260.P8318175582995614789

`A216829(A000079(n))-A007814(n+1)`
-/

namespace A357260.P8318175582995614789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216829 (A000079 n).toNat - A007814 (n + 1)

end

end A357260.P8318175582995614789

/-! ## A357260.P15836955403896436421

`A133622(n+1)+A080791(A084623(n+1))`
-/

namespace A357260.P15836955403896436421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1) + A080791 (A084623 (n + 1)).toNat

end

end A357260.P15836955403896436421

/-! ## A357260.P5155453393563297857

`A287374(n+1)-A211100(A000740(n+1))`
-/

namespace A357260.P5155453393563297857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287374 (n + 1) - A211100 (A000740 (n + 1)).toNat

end

end A357260.P5155453393563297857

/-!
# A357261: a(n) is the number of blocks in the bottom row after adding n blocks to the preceding structure of rows. See Comments and Example sections for more details.

The programs for A357261, there is no canonical definition to state claims against.
-/

/-! ## A357261.P372577863490852185

`A233269(A286879(n+2))`
-/

namespace A357261.P372577863490852185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233269 (A286879 (n + 2)).toNat

end

end A357261.P372577863490852185

/-!
# A357264: Circumference of the n X n giraffe graph.

The programs for A357264, there is no canonical definition to state claims against.
-/

/-! ## A357264.P7580174375302185603

`A325797(2*(n+2))+A325797(A325781(3*n+1))`
-/

namespace A357264.P7580174375302185603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325797 (2 * (n + 2)) + A325797 (A325781 (3 * n + 1)).toNat

end

end A357264.P7580174375302185603

/-!
# A357265: Expansion of e.g.f. -LambertW(x * log(1-x)).

The programs for A357265, there is no canonical definition to state claims against.
-/

/-! ## A357265.P452324090048487841

`A052830(A298671(n))`
-/

namespace A357265.P452324090048487841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052830 (A298671 n).toNat

end

end A357265.P452324090048487841

/-! ## A357265.P7762800943834001846

`A368869(A211438(n))`
-/

namespace A357265.P7762800943834001846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368869 (A211438 n).toNat

end

end A357265.P7762800943834001846

/-!
# A357267: Expansion of e.g.f. -LambertW(x * (1 - exp(x))).

The programs for A357267, there is no canonical definition to state claims against.
-/

/-! ## A357267.P8866895454904662675

`(25*n)%A371284(2^n)`
-/

namespace A357267.P8866895454904662675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (25 * n : ℤ) (A371284 (2 ^ n))

end

end A357267.P8866895454904662675

/-! ## A357267.P8012311528197479015

`Δ[and(n!, A296407(n))]+n`
-/

namespace A357267.P8012311528197479015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (A296407 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A357267.P8012311528197479015

/-!
# A357268: If n is a power of 2, a(n) = n. Otherwise, if 2^j is the greatest power of 2 not exceeding n, and if k = n - 2^j, then a(n) is the smallest m*a(k) which has not occurred already, where m is an odd number.

The programs for A357268, there is no canonical definition to state claims against.
-/

/-! ## A357268.P11311113400351146330

`A005940(n+1)-A178999(A179008(3*n+1))`
-/

namespace A357268.P11311113400351146330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) - A178999 (A179008 (3 * n + 1)).toNat

end

end A357268.P11311113400351146330

/-!
# A357270: a(n) = s(n) mod prime(n+1), where s = A143293.

The programs for A357270, there is no canonical definition to state claims against.
-/

/-! ## A357270.P9672802742632058051

`∑[A002110(n)]%Δ[A007504(n)]`
-/

namespace A357270.P9672802742632058051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A357270.P9672802742632058051

/-! ## A357270.P5854511584064922529

`A143293(n)%ratio[A002110(n)]`
-/

namespace A357270.P5854511584064922529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143293 n) (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A357270.P5854511584064922529

/-! ## A357270.P13905195752417011336

`(A392863(n+1)-A392863(n))/A002110(n)`
-/

namespace A357270.P13905195752417011336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392863 (n + 1) - A392863 n : ℚ) / (A002110 n : ℚ)

end

end A357270.P13905195752417011336

/-!
# A357273: Integers m whose decimal expansion is a prefix of the concatenation of the divisors of m.

The programs for A357273, there is no canonical definition to state claims against.
-/

/-! ## A357273.P12829536484548707656

`A229301(A037090(n))`
-/

namespace A357273.P12829536484548707656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A037090 n).toNat

end

end A357273.P12829536484548707656

/-!
# A357274: List of primitive triples for integer-sided triangles with angles A < B < C and C = 2*Pi/3 = 120 degrees.

The programs for A357274, there is no canonical definition to state claims against.
-/

/-! ## A357274.P11221259630510799443

`A335893(A047259(n+1))`
-/

namespace A357274.P11221259630510799443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (A047259 (n + 1)).toNat

end

end A357274.P11221259630510799443

/-! ## A357274.P7130045748006919391

`A335893(A131042(Δ[n²]))`
-/

namespace A357274.P7130045748006919391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (A131042 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A357274.P7130045748006919391

/-!
# A357275: Smallest side of integer-sided primitive triangles whose angles satisfy A < B < C = 2*Pi/3.

The programs for A357275, there is no canonical definition to state claims against.
-/

/-! ## A357275.P17933437944143861553

`A357278(n+1)-(A357277(n+1)+A357276(n+1))`
-/

namespace A357275.P17933437944143861553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357278 (n + 1) - (A357277 (n + 1) + A357276 (n + 1))

end

end A357275.P17933437944143861553

/-! ## A357275.P7796351801588158990

`A335894(Δ[n²])`
-/

namespace A357275.P7796351801588158990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A357275.P7796351801588158990

/-! ## A357275.P4059165646348192770

`A335896(2*(n+1))-A357276(n+1)`
-/

namespace A357275.P4059165646348192770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335896 (2 * (n + 1)) - A357276 (n + 1)

end

end A357275.P4059165646348192770

/-! ## A357275.P14175538569345617317

`A058281(3*n)*A335894(2*n+1)`
-/

namespace A357275.P14175538569345617317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (3 * n) * A335894 (2 * n + 1)

end

end A357275.P14175538569345617317

/-! ## A357275.P15688266019804110724

`A335894(2*n+1)%A064262(n+1)`
-/

namespace A357275.P15688266019804110724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335894 (2 * n + 1)) (A064262 (n + 1))

end

end A357275.P15688266019804110724

/-! ## A357275.P2199661864514088991

`A335896(2*n+1)%A357276(n+1)`
-/

namespace A357275.P2199661864514088991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335896 (2 * n + 1)) (A357276 (n + 1))

end

end A357275.P2199661864514088991

/-! ## A357275.P9748457780441931788

`A335896(2*(n+1))-A335894(2*(n+1))`
-/

namespace A357275.P9748457780441931788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335896 (2 * (n + 1)) - A335894 (2 * (n + 1))

end

end A357275.P9748457780441931788

/-! ## A357275.P8381735724514508064

`A335897(2*n+1)-(A335896(2*(n+1))+A335895(2*(n+1)))`
-/

namespace A357275.P8381735724514508064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335897 (2 * n + 1) - (A335896 (2 * (n + 1)) + A335895 (2 * (n + 1)))

end

end A357275.P8381735724514508064

/-! ## A357275.P141618481525270024

`A357274(3*n+1)`
-/

namespace A357275.P141618481525270024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357274 (3 * n + 1)

end

end A357275.P141618481525270024

/-! ## A357275.P1588683987537317997

`A335893(6*n+1)`
-/

namespace A357275.P1588683987537317997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (6 * n + 1)

end

end A357275.P1588683987537317997

/-!
# A357276: Middle side of integer-sided primitive triangles whose angles satisfy A < B < C = 2*Pi/3 = 120 degrees.

The programs for A357276, there is no canonical definition to state claims against.
-/

/-! ## A357276.P12608521444166295417

`A357278(n+1)-(A357277(n+1)+A357275(n+1))`
-/

namespace A357276.P12608521444166295417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357278 (n + 1) - (A357277 (n + 1) + A357275 (n + 1))

end

end A357276.P12608521444166295417

/-! ## A357276.P14072430631823372558

`A335894(2*(n+1))`
-/

namespace A357276.P14072430631823372558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335894 (2 * (n + 1))

end

end A357276.P14072430631823372558

/-! ## A357276.P11519771630066418124

`A335896(2*(n+1))-A357275(n+1)`
-/

namespace A357276.P11519771630066418124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335896 (2 * (n + 1)) - A357275 (n + 1)

end

end A357276.P11519771630066418124

/-! ## A357276.P8196501379429084335

`A335894(Δ[n²]+1)%A136073(n+1)`
-/

namespace A357276.P8196501379429084335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat) (A136073 (n + 1))

end

end A357276.P8196501379429084335

/-! ## A357276.P16670195727795453456

`A335897(2*(n+1))-(A335896(2*(n+1))+A335895(2*(n+1)))`
-/

namespace A357276.P16670195727795453456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335897 (2 * (n + 1)) - (A335896 (2 * (n + 1)) + A335895 (2 * (n + 1)))

end

end A357276.P16670195727795453456

/-! ## A357276.P10144618009647109460

`A357274(3*n+2)`
-/

namespace A357276.P10144618009647109460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357274 (3 * n + 2)

end

end A357276.P10144618009647109460

/-! ## A357276.P11973645612937736547

`A335893(6*n+4)`
-/

namespace A357276.P11973645612937736547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335893 (6 * n + 4)

end

end A357276.P11973645612937736547

/-!
# A357277: Largest side c of primitive triples, in nondecreasing order, for integer-sided triangles with angles A < B < C = 2*Pi/3 = 120 degrees.

The programs for A357277, there is no canonical definition to state claims against.
-/

/-! ## A357277.P9263426114001769192

`A357278(n+1)-(A357276(n+1)+A357275(n+1))`
-/

namespace A357277.P9263426114001769192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357278 (n + 1) - (A357276 (n + 1) + A357275 (n + 1))

end

end A357277.P9263426114001769192

/-! ## A357277.P8047459366754169672

`A335895(Δ[n²])`
-/

namespace A357277.P8047459366754169672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335895 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A357277.P8047459366754169672

/-! ## A357277.P8529893101491476753

`or(1, A335895(2*(n+1)))`
-/

namespace A357277.P8529893101491476753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A335895 (2 * (n + 1)))

end

end A357277.P8529893101491476753

/-! ## A357277.P4375656021465685394

`abs(1-A335895(2*n+1))+1`
-/

namespace A357277.P4375656021465685394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A335895 (2 * n + 1)| + 1

end

end A357277.P4375656021465685394

/-! ## A357277.P14015576483097811184

`and(-1, A335895(A005408(n)))`
-/

namespace A357277.P14015576483097811184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A335895 (A005408 n).toNat)

end

end A357277.P14015576483097811184

/-! ## A357277.P9991715602403110175

`A335895(2*n+1)+A000007(n+1)`
-/

namespace A357277.P9991715602403110175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335895 (2 * n + 1) + A000007 (n + 1)

end

end A357277.P9991715602403110175

/-! ## A357277.P3483337159444544877

`A335895(2*(n+1))%A335897(n+1)`
-/

namespace A357277.P3483337159444544877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335895 (2 * (n + 1))) (A335897 (n + 1))

end

end A357277.P3483337159444544877

/-! ## A357277.P11178175067807010160

`A335895(2*n+1)+A319691(2*(n+1))`
-/

namespace A357277.P11178175067807010160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335895 (2 * n + 1) + A319691 (2 * (n + 1))

end

end A357277.P11178175067807010160

/-! ## A357277.P8512328131758110195

`A335895(2*n+1)+A335896(2*n+1)-A335896(2*(n+1))`
-/

namespace A357277.P8512328131758110195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335895 (2 * n + 1) + (A335896 (2 * n + 1) - A335896 (2 * (n + 1)))

end

end A357277.P8512328131758110195

/-! ## A357277.P10326544127225843175

`A357274(3*(n+1))`
-/

namespace A357277.P10326544127225843175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357274 (3 * (n + 1))

end

end A357277.P10326544127225843175

/-!
# A357278: Perimeters of primitive integer-sided triangles with angles A < B < C = 2*Pi/3 = 120 degrees.

The programs for A357278, there is no canonical definition to state claims against.
-/

/-! ## A357278.P14761616974160781945

`A357275(n+1)+A357276(n+1)+A357277(n+1)`
-/

namespace A357278.P14761616974160781945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357275 (n + 1) + A357276 (n + 1) + A357277 (n + 1)

end

end A357278.P14761616974160781945

/-! ## A357278.P12397438082096943692

`A357277(n+1)+A335896(2*(n+1))`
-/

namespace A357278.P12397438082096943692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357277 (n + 1) + A335896 (2 * (n + 1))

end

end A357278.P12397438082096943692

/-! ## A357278.P16520764032702076335

`A335896(2*(n+1))+A335895(2*(n+1))`
-/

namespace A357278.P16520764032702076335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335896 (2 * (n + 1)) + A335895 (2 * (n + 1))

end

end A357278.P16520764032702076335

/-! ## A357278.P16754439502923800051

`A335897(2*n+1)-A335894(2*n+1)`
-/

namespace A357278.P16754439502923800051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335897 (2 * n + 1) - A335894 (2 * n + 1)

end

end A357278.P16754439502923800051

/-! ## A357278.P10544288219146533730

`A335894(2*n+1)+A335895(2*(n+1))+A335894(2*(n+1))`
-/

namespace A357278.P10544288219146533730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335894 (2 * n + 1) + (A335895 (2 * (n + 1)) + A335894 (2 * (n + 1)))

end

end A357278.P10544288219146533730

/-!
# A357281: The numbers of a square spiral with 1 in the center, lying at integer points of the right branch of the parabola y=n^2.

The programs for A357281, the canonical program `A357281.P8437385253292673437` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357281 has offset 0).

The definition of A357281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357281.P8437385253292673437

`4*n^4+3*n²+n+1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357281

/-- `4*n^4+3*n²+n+1` -/
def P8437385253292673437.Spec : Prop :=
  ∀ n, (P8437385253292673437.a n : ℤ) = A357281 n

theorem P8437385253292673437.correct : P8437385253292673437.Spec := by
  intro n
  simp only [A357281]

end A357281

/-! ## A357281.P11110793530159031053

`(A178390(2*n)+A069894(n))/4`
-/

namespace A357281.P11110793530159031053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178390 (2 * n) + A069894 n : ℚ) / 4

end

end A357281.P11110793530159031053

namespace A357281

/-- `(A178390(2*n)+A069894(n))/4` -/
def P11110793530159031053.Spec : Prop :=
  ∀ n, P11110793530159031053.a n = (A357281 n : ℚ)

theorem P11110793530159031053.correct : P11110793530159031053.Spec := by
  intro n
  simp only [A357281, Nat.add_sub_cancel, A357281.P11110793530159031053.a, A357281.P8437385253292673437.a, A069894, A069894.P6207372148760126868.a, A178390, A178390.P15794302857108467485.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357281

/-! ## A357281.P17805698184990963409

`floor((2*(A033954(n²)+n)+3)/2)`
-/

namespace A357281.P17805698184990963409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (A033954 (n ^ 2) + (n : ℤ)) + 3 : ℚ) / 2⌋

end

end A357281.P17805698184990963409

namespace A357281

/-- `floor((2*(A033954(n²)+n)+3)/2)` -/
def P17805698184990963409.Spec : Prop :=
  ∀ n, P17805698184990963409.a n = A357281 n

end A357281

/-! ## A357281.P4954665954946445183

`A000027(A033954(n²)+n+1)`
-/

namespace A357281.P4954665954946445183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033954 (n ^ 2) + (n : ℤ) + 1).toNat

end

end A357281.P4954665954946445183

namespace A357281

/-- `A000027(A033954(n²)+n+1)` -/
def P4954665954946445183.Spec : Prop :=
  ∀ n, P4954665954946445183.a n = A357281 n

end A357281

/-! ## A357281.P13866552498612232210

`A000027(A058331(n)+A006528(2*n))`
-/

namespace A357281.P13866552498612232210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A058331 n + A006528 (2 * n)).toNat

end

end A357281.P13866552498612232210

namespace A357281

/-- `A000027(A058331(n)+A006528(2*n))` -/
def P13866552498612232210.Spec : Prop :=
  ∀ n, P13866552498612232210.a n = A357281 n

end A357281

/-!
# A357282: a(n) = number of subsets S of {1,2,...,n} having more than 1 element such that (difference between least two elements of S) = difference between greatest two elements of S.

The programs for A357282, the canonical program `A357282.P13157617072613635839` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357282 has offset 0).

The definition of A357282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357282.P982172275846373389

`∑[A340849(log2(A011782(n)))]`
-/

namespace A357282.P982172275846373389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357282.P982172275846373389

namespace A357282

/-- `∑[A340849(log2(A011782(n)))]` -/
def P982172275846373389.Spec : Prop :=
  ∀ n, P982172275846373389.a n = A357282 n

end A357282

/-! ## A357282.P13157617072613635839

`∑[A340849(A057428(n)+n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A357282

/-- `∑[A340849(A057428(n)+n)]` -/
def P13157617072613635839.Spec : Prop :=
  ∀ n, P13157617072613635839.a n = A357282 n

theorem P13157617072613635839.correct : P13157617072613635839.Spec := by
  intro n
  simp only [A357282]

end A357282

/-! ## A357282.P16784132183696320007

`∑[A000975(A289207(n))+n]-n`
-/

namespace A357282.P16784132183696320007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A289207 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A357282.P16784132183696320007

namespace A357282

/-- `∑[A000975(A289207(n))+n]-n` -/
def P16784132183696320007.Spec : Prop :=
  ∀ n, P16784132183696320007.a n = A357282 n

end A357282

/-! ## A357282.P735562711564017710

`∑[A340849(n)]-A340849(n)`
-/

namespace A357282.P735562711564017710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A340849 n

end

end A357282.P735562711564017710

namespace A357282

/-- `∑[A340849(n)]-A340849(n)` -/
def P735562711564017710.Spec : Prop :=
  ∀ n, P735562711564017710.a n = A357282 n

end A357282

/-! ## A357282.P14099949559491080757

`A084172(n)-A014844(n)`
-/

namespace A357282.P14099949559491080757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084172 n - A014844 n

end

end A357282.P14099949559491080757

namespace A357282

/-- `A084172(n)-A014844(n)` -/
def P14099949559491080757.Spec : Prop :=
  ∀ n, P14099949559491080757.a n = A357282 n

end A357282

/-!
# A357283: a(n) = number of subsets S of {1,2,...,n} having more than 1 element such that (sum of least two elements of S) < max(S).

The programs for A357283, the canonical program `A357283.P17984273283071694433` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357283 has offset 0).

The definition of A357283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357283.P13684646384786211705

`2*A357284(n)`
-/

namespace A357283.P13684646384786211705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357284 n

end

end A357283.P13684646384786211705

namespace A357283

/-- `2*A357284(n)` -/
def P13684646384786211705.Spec : Prop :=
  ∀ n, P13684646384786211705.a n = A357283 n

end A357283

/-! ## A357283.P17984273283071694433

`∑[A027556(abs(1-n))]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357283

/-- `∑[A027556(abs(1-n))]` -/
def P17984273283071694433.Spec : Prop :=
  ∀ n, P17984273283071694433.a n = A357283 n

theorem P17984273283071694433.correct : P17984273283071694433.Spec := by
  intro n
  simp only [A357283]

end A357283

/-! ## A357283.P3111144173797834451

`A233411(n)-∑[∏[2-n%2]-2]`
-/

namespace A357283.P3111144173797834451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357283.P3111144173797834451

namespace A357283

/-- `A233411(n)-∑[∏[2-n%2]-2]` -/
def P3111144173797834451.Spec : Prop :=
  ∀ n, P3111144173797834451.a n = A357283 n

end A357283

/-! ## A357283.P11907909257907909759

`A100314(n)-A063757(n)`
-/

namespace A357283.P11907909257907909759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100314 n - A063757 n

end

end A357283.P11907909257907909759

namespace A357283

/-- `A100314(n)-A063757(n)` -/
def P11907909257907909759.Spec : Prop :=
  ∀ n, P11907909257907909759.a n = A357283 n

end A357283

/-! ## A357283.P6936739735750230523

`∑[∑[A233411(A289207(n))]]`
-/

namespace A357283.P6936739735750230523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 (A289207 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357283.P6936739735750230523

namespace A357283

/-- `∑[∑[A233411(A289207(n))]]` -/
def P6936739735750230523.Spec : Prop :=
  ∀ n, P6936739735750230523.a n = A357283 n

end A357283

/-! ## A357283.P10946855048016744298

`A000079(n)+n-∑[A052955(n)]`
-/

namespace A357283.P10946855048016744298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A357283.P10946855048016744298

namespace A357283

/-- `A000079(n)+n-∑[A052955(n)]` -/
def P10946855048016744298.Spec : Prop :=
  ∀ n, P10946855048016744298.a n = A357283 n

end A357283

/-! ## A357283.P8425539367071386816

`A357284(A005843(n)/2)+A357284(n)`
-/

namespace A357283.P8425539367071386816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357284 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A357284 n

end

end A357283.P8425539367071386816

namespace A357283

/-- `A357284(A005843(n)/2)+A357284(n)` -/
def P8425539367071386816.Spec : Prop :=
  ∀ n, P8425539367071386816.a n = A357283 n

end A357283

/-! ## A357283.P10875498107049025264

`A000225(n)+A247619(n)-A247905(n)`
-/

namespace A357283.P10875498107049025264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A247619 n - A247905 n)

end

end A357283.P10875498107049025264

namespace A357283

/-- `A000225(n)+A247619(n)-A247905(n)` -/
def P10875498107049025264.Spec : Prop :=
  ∀ n, P10875498107049025264.a n = A357283 n

end A357283

/-! ## A357283.P14991279728082833532

`A357284(A005843(n)-n)+A357284(n)`
-/

namespace A357283.P14991279728082833532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357284 (A005843 n - (n : ℤ)).toNat + A357284 n

end

end A357283.P14991279728082833532

namespace A357283

/-- `A357284(A005843(n)-n)+A357284(n)` -/
def P14991279728082833532.Spec : Prop :=
  ∀ n, P14991279728082833532.a n = A357283 n

end A357283

/-! ## A357283.P4365984132203269408

`∑[A027556(n)]-A027556(n)`
-/

namespace A357283.P4365984132203269408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027556 n

end

end A357283.P4365984132203269408

namespace A357283

/-- `∑[A027556(n)]-A027556(n)` -/
def P4365984132203269408.Spec : Prop :=
  ∀ n, P4365984132203269408.a n = A357283 n

end A357283

/-! ## A357283.P97542794968025162

`∑[A274230(n)]+n-A000225(n)`
-/

namespace A357283.P97542794968025162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A000225 n)

end

end A357283.P97542794968025162

namespace A357283

/-- `∑[A274230(n)]+n-A000225(n)` -/
def P97542794968025162.Spec : Prop :=
  ∀ n, P97542794968025162.a n = A357283 n

end A357283

/-! ## A357283.P15559797344317320464

`A116702(n+1)-A184052(n)`
-/

namespace A357283.P15559797344317320464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116702 (n + 1) - A184052 n

end

end A357283.P15559797344317320464

namespace A357283

/-- `A116702(n+1)-A184052(n)` -/
def P15559797344317320464.Spec : Prop :=
  ∀ n, P15559797344317320464.a n = A357283 n

end A357283

/-!
# A357284: a(n) = (1/2)*A357283(n).

The programs for A357284, the canonical program `A357284.P2693136668523446039` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357284 has offset 0).

The definition of A357284 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A357283, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357284.P2693136668523446039

`1/2*A357283(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A357284

/-- `1/2*A357283(n)` -/
def P2693136668523446039.Spec : Prop :=
  ∀ n, P2693136668523446039.a n = (A357284 n : ℚ)

end A357284

/-! ## A357284.P15542168068969729276

`∑[A274230(floor(n-atan(n)))]`
-/

namespace A357284.P15542168068969729276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357284.P15542168068969729276

namespace A357284

/-- `∑[A274230(floor(n-atan(n)))]` -/
def P15542168068969729276.Spec : Prop :=
  ∀ n, P15542168068969729276.a n = A357284 n

end A357284

/-! ## A357284.P6720526342590105856

`∑[∑[A233411(A289207(n))/2]]`
-/

namespace A357284.P6720526342590105856
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233411 (A289207 n).toNat : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357284.P6720526342590105856

namespace A357284

/-- `∑[∑[A233411(A289207(n))/2]]` -/
def P6720526342590105856.Spec : Prop :=
  ∀ n, P6720526342590105856.a n = (A357284 n : ℚ)

end A357284

/-! ## A357284.P14756210112440109574

`A357283(n)/2`
-/

namespace A357284.P14756210112440109574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357283 n : ℚ) / 2

end

end A357284.P14756210112440109574

namespace A357284

/-- `A357283(n)/2` -/
def P14756210112440109574.Spec : Prop :=
  ∀ n, P14756210112440109574.a n = (A357284 n : ℚ)

end A357284

/-! ## A357284.P15564744766095846731

`(A100314(n)-A063757(n))/2`
-/

namespace A357284.P15564744766095846731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100314 n - A063757 n : ℚ) / 2

end

end A357284.P15564744766095846731

namespace A357284

/-- `(A100314(n)-A063757(n))/2` -/
def P15564744766095846731.Spec : Prop :=
  ∀ n, P15564744766095846731.a n = (A357284 n : ℚ)

end A357284

/-! ## A357284.P8098079926515170852

`(∑[A027556(n)]-A027556(n))/2`
-/

namespace A357284.P8098079926515170852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A027556 n : ℤ) : ℚ) / 2

end

end A357284.P8098079926515170852

namespace A357284

/-- `(∑[A027556(n)]-A027556(n))/2` -/
def P8098079926515170852.Spec : Prop :=
  ∀ n, P8098079926515170852.a n = (A357284 n : ℚ)

end A357284

/-! ## A357284.P12157391102048228784

`(A116702(n+1)-A184052(n))/2`
-/

namespace A357284.P12157391102048228784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116702 (n + 1) - A184052 n : ℚ) / 2

end

end A357284.P12157391102048228784

namespace A357284

/-- `(A116702(n+1)-A184052(n))/2` -/
def P12157391102048228784.Spec : Prop :=
  ∀ n, P12157391102048228784.a n = (A357284 n : ℚ)

end A357284

/-!
# A357285: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least three elements of S) < max(S).

The programs for A357285, there is no canonical definition to state claims against.
-/

/-! ## A357285.P1157291535541950222

`8*A357286(n)`
-/

namespace A357285.P1157291535541950222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A357286 n

end

end A357285.P1157291535541950222

/-! ## A357285.P14658495667186662472

`A008590(A357286(n))`
-/

namespace A357285.P14658495667186662472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A357286 n).toNat

end

end A357285.P14658495667186662472

/-! ## A357285.P11175811802014188206

`A218882(eq[1, A108731(n)])`
-/

namespace A357285.P11175811802014188206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A357285.P11175811802014188206

/-! ## A357285.P9124059593317366904

`A218882(lt[A218853(n), 1])`
-/

namespace A357285.P9124059593317366904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218853 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218882 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A357285.P9124059593317366904

/-! ## A357285.P1514261499962494608

`and(-4, A121854(A075851(n)))`
-/

namespace A357285.P1514261499962494608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A121854 (A075851 n).toNat)

end

end A357285.P1514261499962494608

/-!
# A357286: a(n) = (1/8)*A357285.

The programs for A357286, there is no canonical definition to state claims against.
-/

/-! ## A357286.P5434561685418738712

`A357285(n)/8`
-/

namespace A357286.P5434561685418738712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357285 n : ℚ) / 8

end

end A357286.P5434561685418738712

/-! ## A357286.P4611825491664051557

`A110962(A357285(n)+1)`
-/

namespace A357286.P4611825491664051557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A357285 n + 1).toNat

end

end A357286.P4611825491664051557

/-! ## A357286.P8389564953052758449

`A110962(or(1, A357285(n)))`
-/

namespace A357286.P8389564953052758449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (Int.lor 1 (A357285 n)).toNat

end

end A357286.P8389564953052758449

/-! ## A357286.P17660377252009054881

`A110962(xor(1, A357285(n)))`
-/

namespace A357286.P17660377252009054881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (Int.xor 1 (A357285 n)).toNat

end

end A357286.P17660377252009054881

/-! ## A357286.P13479264585051079392

`A006085(A357285(n))`
-/

namespace A357286.P13479264585051079392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A357285 n).toNat

end

end A357286.P13479264585051079392

/-!
# A357287: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least three elements of S) = max(S).

The programs for A357287, there is no canonical definition to state claims against.
-/

/-! ## A357287.P12415891505639266197

`4*A357288(n)`
-/

namespace A357287.P12415891505639266197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A357288 n

end

end A357287.P12415891505639266197

/-! ## A357287.P6236321015087129991

`4*(Δ[A357286(n)]-A357286(n))`
-/

namespace A357287.P6236321015087129991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n - A357286 n)

end

end A357287.P6236321015087129991

/-! ## A357287.P10471970008881725982

`4*(A357286(n+1)-2*A357286(n))`
-/

namespace A357287.P10471970008881725982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A357286 (n + 1) - 2 * A357286 n)

end

end A357287.P10471970008881725982

/-! ## A357287.P9453294131269694947

`4*(Δ[A357285(n)/8]-A357285(n)/8)`
-/

namespace A357287.P9453294131269694947
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357285 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n - (A357285 n : ℚ) / 8)

end

end A357287.P9453294131269694947

/-! ## A357287.P1719743041650445317

`A008586(A357288(n))`
-/

namespace A357287.P1719743041650445317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A357288 n).toNat

end

end A357287.P1719743041650445317

/-!
# A357288: a(n) = (1/4)*A357287(n).

The programs for A357288, there is no canonical definition to state claims against.
-/

/-! ## A357288.P15479658473583548522

`1/4*A357287(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A357288.P15479658473583548522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A357287 n : ℚ)

end

end A357288.P15479658473583548522

/-! ## A357288.P5494406915409155799

`A357287(n)/4`
-/

namespace A357288.P5494406915409155799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357287 n : ℚ) / 4

end

end A357288.P5494406915409155799

/-! ## A357288.P6257167129679291181

`Δ[A357286(n)]-A357286(n)`
-/

namespace A357288.P6257167129679291181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A357286 n

end

end A357288.P6257167129679291181

/-! ## A357288.P6802651435629206066

`A357286(n+1)-2*A357286(n)`
-/

namespace A357288.P6802651435629206066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357286 (n + 1) - 2 * A357286 n

end

end A357288.P6802651435629206066

/-! ## A357288.P12008774343120129955

`Δ[A357285(n)/8]-A357285(n)/8`
-/

namespace A357288.P12008774343120129955
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357285 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A357285 n : ℚ) / 8

end

end A357288.P12008774343120129955

/-!
# A357289: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least three elements of S) > max(S).

The programs for A357289, there is no canonical definition to state claims against.
-/

/-! ## A357289.P2294089025887545607

`∑[∑[A211261(A003483(n))]]`
-/

namespace A357289.P2294089025887545607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211261 (A003483 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357289.P2294089025887545607

/-!
# A357290: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) > difference between greatest two elements of S.

The programs for A357290, the canonical program `A357290.P18279799306496443475` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357290 has offset 0).

The definition of A357290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357290.P18279799306496443475

`A002662(n)-A357291(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357290

/-- `A002662(n)-A357291(n+1)` -/
def P18279799306496443475.Spec : Prop :=
  ∀ n, P18279799306496443475.a n = A357290 n

theorem P18279799306496443475.correct : P18279799306496443475.Spec := by
  intro n
  simp only [A357290]

end A357290

/-! ## A357290.P12518545535851072093

`∑[∑[A090620(A027437(n))]]`
-/

namespace A357290.P12518545535851072093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A027437 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357290.P12518545535851072093

namespace A357290

/-- `∑[∑[A090620(A027437(n))]]` -/
def P12518545535851072093.Spec : Prop :=
  ∀ n, P12518545535851072093.a n = A357290 n

end A357290

/-! ## A357290.P176000241856184637

`A002662(n)-A007326(A032563(n+1))`
-/

namespace A357290.P176000241856184637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n - A007326 (A032563 (n + 1)).toNat

end

end A357290.P176000241856184637

namespace A357290

/-- `A002662(n)-A007326(A032563(n+1))` -/
def P176000241856184637.Spec : Prop :=
  ∀ n, P176000241856184637.a n = A357290 n

end A357290

/-!
# A357291: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) < difference between greatest two elements of S.

The programs for A357291, the canonical program `A357291.P12469756725940001131` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357291 has offset 0).

The definition of A357291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357291.P275291588760232138

`∑[A357292(abs(1-n))]`
-/

namespace A357291.P275291588760232138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357292 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357291.P275291588760232138

namespace A357291

/-- `∑[A357292(abs(1-n))]` -/
def P275291588760232138.Spec : Prop :=
  ∀ n, P275291588760232138.a n = A357291 n

end A357291

/-! ## A357291.P10313333514468386901

`A357292(n)-A211540(n)`
-/

namespace A357291.P10313333514468386901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357292 n - A211540 n

end

end A357291.P10313333514468386901

namespace A357291

/-- `A357292(n)-A211540(n)` -/
def P10313333514468386901.Spec : Prop :=
  ∀ n, P10313333514468386901.a n = A357291 n

theorem P10313333514468386901.correct : P10313333514468386901.Spec := by
  intro n
  simp only [A357291, Nat.add_sub_cancel, A357291.P10313333514468386901.a, A357291.P12469756725940001131.a, A211540, A211540.P9449273519256082514.a, A289207, A289207.P4353291363742306282.a, A357292, A357292.P7346233877380800263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A357291

/-! ## A357291.P12469756725940001131

`A211540(A289207(n+1))+2*a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357291

/-- `A211540(A289207(n+1))+2*a(n-1)` -/
def P12469756725940001131.Spec : Prop :=
  ∀ n, P12469756725940001131.a n = A357291 n

theorem P12469756725940001131.correct : P12469756725940001131.Spec := by
  intro n
  simp only [A357291]

end A357291

/-! ## A357291.P6756848602722110371

`∑[floor(A023105(n)/7)]-A211540(n)`
-/

namespace A357291.P6756848602722110371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023105 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211540 n

end

end A357291.P6756848602722110371

namespace A357291

/-- `∑[floor(A023105(n)/7)]-A211540(n)` -/
def P6756848602722110371.Spec : Prop :=
  ∀ n, P6756848602722110371.a n = A357291 n

end A357291

/-! ## A357291.P1976204801126484804

`∑[round(A135351(n)/7)]-A211540(n)`
-/

namespace A357291.P1976204801126484804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135351 n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A211540 n

end

end A357291.P1976204801126484804

namespace A357291

/-- `∑[round(A135351(n)/7)]-A211540(n)` -/
def P1976204801126484804.Spec : Prop :=
  ∀ n, P1976204801126484804.a n = A357291 n

end A357291

/-! ## A357291.P18399187576699366986

`round(2^n/21-n²/12+n/6)`
-/

namespace A357291.P18399187576699366986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 21 - (n ^ 2 : ℚ) / 12 + (n : ℚ) / 6)

end

end A357291.P18399187576699366986

namespace A357291

/-- `round(2^n/21-n²/12+n/6)` -/
def P18399187576699366986.Spec : Prop :=
  ∀ n, P18399187576699366986.a n = A357291 n

end A357291

/-!
# A357292: a(n) = number of subsets S of {1,2,...,n} having more than 2 elements such that (sum of least two elements of S) = difference between greatest two elements of S.

The programs for A357292, the canonical program `A357292.P7346233877380800263` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357292 has offset 0).

The definition of A357292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357292.P7346233877380800263

`A357291(n)+A211540(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357292

/-- `A357291(n)+A211540(n)` -/
def P7346233877380800263.Spec : Prop :=
  ∀ n, P7346233877380800263.a n = A357292 n

theorem P7346233877380800263.correct : P7346233877380800263.Spec := by
  intro n
  simp only [A357292]

end A357292

/-! ## A357292.P9951513686110593426

`Δ[A357291(n)]`
-/

namespace A357292.P9951513686110593426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357292.P9951513686110593426

namespace A357292

/-- `Δ[A357291(n)]` -/
def P9951513686110593426.Spec : Prop :=
  ∀ n, P9951513686110593426.a n = A357292 n

end A357292

/-! ## A357292.P3012525953078514396

`A357291(n+1)-A357291(n)`
-/

namespace A357292.P3012525953078514396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357291 (n + 1) - A357291 n

end

end A357292.P3012525953078514396

namespace A357292

/-- `A357291(n+1)-A357291(n)` -/
def P3012525953078514396.Spec : Prop :=
  ∀ n, P3012525953078514396.a n = A357292 n

end A357292

/-! ## A357292.P14146573157569951876

`∑[floor(A023105(n)/7)]`
-/

namespace A357292.P14146573157569951876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023105 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357292.P14146573157569951876

namespace A357292

/-- `∑[floor(A023105(n)/7)]` -/
def P14146573157569951876.Spec : Prop :=
  ∀ n, P14146573157569951876.a n = A357292 n

end A357292

/-! ## A357292.P6396957330128491914

`∑[round(A135351(n)/7)]`
-/

namespace A357292.P6396957330128491914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A135351 n : ℚ) / 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357292.P6396957330128491914

namespace A357292

/-- `∑[round(A135351(n)/7)]` -/
def P6396957330128491914.Spec : Prop :=
  ∀ n, P6396957330128491914.a n = A357292 n

end A357292

/-!
# A357293: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} Stirling2(n,k*j).

The programs for A357293, there is no canonical definition to state claims against.
-/

/-! ## A357293.P13068684416948898270

`A131138(A357119(n))`
-/

namespace A357293.P13068684416948898270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A357119 n).toNat

end

end A357293.P13068684416948898270

/-! ## A357293.P915481012888517428

`A357869(n)/A256009(A318191(n))`
-/

namespace A357293.P915481012888517428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357869 n : ℚ) / (A256009 (A318191 n).toNat : ℚ)

end

end A357293.P915481012888517428

/-! ## A357293.P7489693704720189687

`A357869(n)/A001221(A357864(3*n+4))`
-/

namespace A357293.P7489693704720189687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357869 n : ℚ) / (A001221 (A357864 (3 * n + 4)).toNat : ℚ)

end

end A357293.P7489693704720189687

/-! ## A357293.P2307713738817258715

`A240600(A357881(n))`
-/

namespace A357293.P2307713738817258715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240600 (A357881 n).toNat

end

end A357293.P2307713738817258715

/-! ## A357293.P3548834570411996275

`A285189(A357868(n))`
-/

namespace A357293.P3548834570411996275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A357868 n).toNat

end

end A357293.P3548834570411996275

/-!
# A357294: Number of integral quantales on n elements, up to isomorphism.

The programs for A357294, there is no canonical definition to state claims against.
-/

/-! ## A357294.P10538284675204804088

`A350944(a(n-1)-1+n)` with `a(0)=1`
-/

namespace A357294.P10538284675204804088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A350944 (a (n - 1) - 1 + (n : ℤ)).toNat

end

end A357294.P10538284675204804088

/-! ## A357294.P9997902478225241114

`A255072(A027851(n))`
-/

namespace A357294.P9997902478225241114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A027851 n).toNat

end

end A357294.P9997902478225241114

/-!
# A357295: Number of balanced quantales on n elements, up to isomorphism.

The programs for A357295, there is no canonical definition to state claims against.
-/

/-! ## A357295.P10863982065294789116

`A276633(A002835(∑[n]))`
-/

namespace A357295.P10863982065294789116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276633 (A002835 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A357295.P10863982065294789116

/-!
# A357296: Expansion of e.g.f. Sum_{k>0} x^k / (k! * (1 - x^k/k)).

The programs for A357296, there is no canonical definition to state claims against.
-/

/-! ## A357296.P11308772438065424824

`A056023(A061095(n+1))`
-/

namespace A357296.P11308772438065424824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A061095 (n + 1)).toNat

end

end A357296.P11308772438065424824

/-! ## A357296.P15444591739193881483

`A383589(A061095(n+1))+A105516(n)`
-/

namespace A357296.P15444591739193881483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383589 (A061095 (n + 1)).toNat + A105516 n

end

end A357296.P15444591739193881483

/-! ## A357296.P8478718674300783025

`A351984(n+1)+A266535(A273133(n+1))`
-/

namespace A357296.P8478718674300783025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351984 (n + 1) + A266535 (A273133 (n + 1)).toNat

end

end A357296.P8478718674300783025

/-!
# A357298: Triangle read by rows where all entries in every even row are 1's and the entries in every odd row alternate between 0 (start/end) and 1.

The programs for A357298, the canonical program `A357298.P3720640209611923252` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357298 has offset 1).

The definition of A357298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357298.P3720640209611923252

`1/2+1/2*(-1)^((row(n)+1)*(col(n)+1))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357298

/-- `1/2+1/2*(-1)^((row(n)+1)*(col(n)+1))` -/
def P3720640209611923252.Spec : Prop :=
  ∀ n, P3720640209611923252.a n = (A357298 (n + 1) : ℚ)

end A357298

/-! ## A357298.P17345515270742129026

`C(row(n)%2, (col(n)+1)%2)`
-/

namespace A357298.P17345515270742129026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n % 2) ((SequenceMachineLib.triCol n + 1) % 2)

end

end A357298.P17345515270742129026

namespace A357298

/-- `C(row(n)%2, (col(n)+1)%2)` -/
def P17345515270742129026.Spec : Prop :=
  ∀ n, (P17345515270742129026.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P1940749660012556791

`and(1, C(comp[∑[n]]+n+1, 3)+1)`
-/

namespace A357298.P1940749660012556791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 1)) 3 + 1)

end

end A357298.P1940749660012556791

namespace A357298

/-- `and(1, C(comp[∑[n]]+n+1, 3)+1)` -/
def P1940749660012556791.Spec : Prop :=
  ∀ n, (P1940749660012556791.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P16026714281372002310

`and(1, comp[∑[n]]+n)^a(n-1)` with `a(0)=0`
-/

namespace A357298.P16026714281372002310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) ^ a (n - 1)

end

end A357298.P16026714281372002310

namespace A357298

/-- `and(1, comp[∑[n]]+n)^a(n-1)` -/
def P16026714281372002310.Spec : Prop :=
  ∀ n, (P16026714281372002310.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P13406517826926543222

`C((comp[∑[n]]+n)%2, a(n-1))` with `a(0)=0`
-/

namespace A357298.P13406517826926543222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) % 2) (a (n - 1))

end

end A357298.P13406517826926543222

namespace A357298

/-- `C((comp[∑[n]]+n)%2, a(n-1))` -/
def P13406517826926543222.Spec : Prop :=
  ∀ n, (P13406517826926543222.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P9101690300000609352

`char[n+1-C(∑[char[∑[n]]], 2)+n]`
-/

namespace A357298.P9101690300000609352
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2 : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A357298.P9101690300000609352

namespace A357298

/-- `char[n+1-C(∑[char[∑[n]]], 2)+n]` -/
def P9101690300000609352.Spec : Prop :=
  ∀ n, (P9101690300000609352.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P11101060017239669996

`(C(∑[char[∑[n]]+10]+4, 3)+1)%2`
-/

namespace A357298.P11101060017239669996
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 4) 3 + 1) % 2

end

end A357298.P11101060017239669996

namespace A357298

/-- `(C(∑[char[∑[n]]+10]+4, 3)+1)%2` -/
def P11101060017239669996.Spec : Prop :=
  ∀ n, (P11101060017239669996.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P3280945441764507197

`1-char[(n+2-comp[∑[n]])²+n+n]`
-/

namespace A357298.P3280945441764507197
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)) ^ 2 + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357298.P3280945441764507197

namespace A357298

/-- `1-char[(n+2-comp[∑[n]])²+n+n]` -/
def P3280945441764507197.Spec : Prop :=
  ∀ n, P3280945441764507197.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P7328138595771460930

`gcd(n-C(∑[char[∑[n]]], 2), comp[∑[n]]-n)%2`
-/

namespace A357298.P7328138595771460930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)) % 2

end

end A357298.P7328138595771460930

namespace A357298

/-- `gcd(n-C(∑[char[∑[n]]], 2), comp[∑[n]]-n)%2` -/
def P7328138595771460930.Spec : Prop :=
  ∀ n, (P7328138595771460930.a n : ℤ) = A357298 (n + 1)

end A357298

/-! ## A357298.P5592803203464036952

`A003986(n)%2`
-/

namespace A357298.P5592803203464036952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003986 n) 2

end

end A357298.P5592803203464036952

namespace A357298

/-- `A003986(n)%2` -/
def P5592803203464036952.Spec : Prop :=
  ∀ n, P5592803203464036952.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P4790657011042071459

`A059036(n)%2`
-/

namespace A357298.P4790657011042071459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059036 n) 2

end

end A357298.P4790657011042071459

namespace A357298

/-- `A059036(n)%2` -/
def P4790657011042071459.Spec : Prop :=
  ∀ n, P4790657011042071459.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P302688915610871451

`A073254(n)%2`
-/

namespace A357298.P302688915610871451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073254 n) 2

end

end A357298.P302688915610871451

namespace A357298

/-- `A073254(n)%2` -/
def P302688915610871451.Spec : Prop :=
  ∀ n, P302688915610871451.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P5957994976755491079

`A080098(n)%2`
-/

namespace A357298.P5957994976755491079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080098 n) 2

end

end A357298.P5957994976755491079

namespace A357298

/-- `A080098(n)%2` -/
def P5957994976755491079.Spec : Prop :=
  ∀ n, P5957994976755491079.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P5457269994465680698

`A083381(n)%2`
-/

namespace A357298.P5457269994465680698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083381 n) 2

end

end A357298.P5457269994465680698

namespace A357298

/-- `A083381(n)%2` -/
def P5457269994465680698.Spec : Prop :=
  ∀ n, P5457269994465680698.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P6048454496744568788

`A103823(n)%2`
-/

namespace A357298.P6048454496744568788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103823 n) 2

end

end A357298.P6048454496744568788

namespace A357298

/-- `A103823(n)%2` -/
def P6048454496744568788.Spec : Prop :=
  ∀ n, P6048454496744568788.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P6046627632702041227

`A109004(n)%2`
-/

namespace A357298.P6046627632702041227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109004 n) 2

end

end A357298.P6046627632702041227

namespace A357298

/-- `A109004(n)%2` -/
def P6046627632702041227.Spec : Prop :=
  ∀ n, P6046627632702041227.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P308334136440463146

`A127561(n)%2`
-/

namespace A357298.P308334136440463146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127561 n) 2

end

end A357298.P308334136440463146

namespace A357298

/-- `A127561(n)%2` -/
def P308334136440463146.Spec : Prop :=
  ∀ n, P308334136440463146.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P14975036538755210947

`A132111(n)%2`
-/

namespace A357298.P14975036538755210947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132111 n) 2

end

end A357298.P14975036538755210947

namespace A357298

/-- `A132111(n)%2` -/
def P14975036538755210947.Spec : Prop :=
  ∀ n, P14975036538755210947.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P17232750115398129594

`A159797(n)%2`
-/

namespace A357298.P17232750115398129594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159797 n) 2

end

end A357298.P17232750115398129594

namespace A357298

/-- `A159797(n)%2` -/
def P17232750115398129594.Spec : Prop :=
  ∀ n, P17232750115398129594.a n = A357298 (n + 1)

end A357298

/-! ## A357298.P17802821343594315211

`A162611(n)%2`
-/

namespace A357298.P17802821343594315211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162611 n) 2

end

end A357298.P17802821343594315211

namespace A357298

/-- `A162611(n)%2` -/
def P17802821343594315211.Spec : Prop :=
  ∀ n, P17802821343594315211.a n = A357298 (n + 1)

end A357298

/-!
# A357299: a(n) is the number of divisors of n whose first digit equals the first digit of n.

The programs for A357299, there is no canonical definition to state claims against.
-/

/-! ## A357299.P11069985171258669907

`A007913(2^A017905(n+2))`
-/

namespace A357299.P11069985171258669907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A017905 (n + 2) : ℤ))).toNat

end

end A357299.P11069985171258669907

/-! ## A357299.P15297522668982214413

`A104248(A239896(3*n+4)^A386470(n+1))`
-/

namespace A357299.P15297522668982214413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (SequenceMachineLib.roundAway ((A239896 (3 * n + 4) : ℚ) ^ (A386470 (n + 1) : ℤ))).toNat

end

end A357299.P15297522668982214413

/-! ## A357299.P1496045696336119418

`A027615(2^A017905(n+2))`
-/

namespace A357299.P1496045696336119418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027615 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A017905 (n + 2) : ℤ))).toNat

end

end A357299.P1496045696336119418

/-! ## A357299.P3040634502374589511

`gcd(A089976(n), A110367(n+1))`
-/

namespace A357299.P3040634502374589511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089976 n) (A110367 (n + 1))

end

end A357299.P3040634502374589511

/-! ## A357299.P3404107554101520407

`A216556(A017905(n+2)%Δ[A133506(2*n+3)])`
-/

namespace A357299.P3404107554101520407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133506 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216556 (Int.tmod (A017905 (n + 2)) (f1 (n + 1) - f1 n)).toNat

end

end A357299.P3404107554101520407

