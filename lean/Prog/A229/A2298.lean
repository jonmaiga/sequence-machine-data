import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
# A229800: 

The programs for A229800, there is no canonical definition to state claims against.
-/

/-! ## A229800.P14319865184242754112

`A229794(eq[8, A131818(n+1)])`
-/

namespace A229800.P14319865184242754112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229794 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229800.P14319865184242754112

/-!
# A229802: Expansion of q * f(-q, -q^4)^5 / f(-q)^3 in powers of q where f() is a Ramanujan theta function.

The programs for A229802, the canonical program `A229802.P2100397921254206650` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229802 has offset 1).

The definition of A229802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229802.P4737616145287447292

`A227216(2*(n+1))-A227216((n+1)/2^val(n+1, 2))`
-/

namespace A229802.P4737616145287447292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227216 (2 * (n + 1)) - A227216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A229802.P4737616145287447292

namespace A229802

/-- `A227216(2*(n+1))-A227216((n+1)/2^val(n+1, 2))` -/
def P4737616145287447292.Spec : Prop :=
  ∀ n, P4737616145287447292.a n = A229802 (n + 1)

end A229802

/-! ## A229802.P2100397921254206650

`A227216(2*(n+1))-A227216(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A229802

/-- `A227216(2*(n+1))-A227216(A000265(n+1))` -/
def P2100397921254206650.Spec : Prop :=
  ∀ n, P2100397921254206650.a n = A229802 (n + 1)

theorem P2100397921254206650.correct : P2100397921254206650.Spec := by
  intro n
  simp only [A229802, Nat.add_sub_cancel]

end A229802

/-!
# A229803: Domination number for rook graph HR(n) on a triangular board of hexagonal cells. The rook can move along any row of adjacent cells, in any of the three directions.

The programs for A229803, there is no canonical definition to state claims against.
-/

/-! ## A229803.P16238683998642721179

`ceil(Δ[n²]/sqrt(19))`
-/

namespace A229803.P16238683998642721179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) / Real.sqrt (19 : ℝ)⌉

end

end A229803.P16238683998642721179

/-! ## A229803.P6791247848006282329

`∑[((n+7)%13)%2]`
-/

namespace A229803.P6791247848006282329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 7) % 13 % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229803.P6791247848006282329

/-! ## A229803.P14586484400715835493

`round((sqrt(2)+n)*acot(2))`
-/

namespace A229803.P14586484400715835493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + (n : ℝ)) * SequenceMachineLib.acot (2 : ℝ))

end

end A229803.P14586484400715835493

/-! ## A229803.P10197778666882492505

`round(comp[C(n, 12)]/log2(5))`
-/

namespace A229803.P10197778666882492505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) / Real.logb 2 (5 : ℝ))

end

end A229803.P10197778666882492505

/-! ## A229803.P5102594177895430208

`∑[comp[∑[7*n]]%2]`
-/

namespace A229803.P5102594177895430208
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229803.P5102594177895430208

/-!
# A229804: Zeroless numbers n such that n and n*product_of_digits(n) are both palindromes.

The programs for A229804, there is no canonical definition to state claims against.
-/

/-! ## A229804.P7431481456653276440

`∩[A118599(n+1), A229550(n+1)]`
-/

namespace A229804.P7431481456653276440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229804.P7431481456653276440

/-! ## A229804.P6327608537163634969

`∩[A002113(n+1), A229550(n+1)]`
-/

namespace A229804.P6327608537163634969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229804.P6327608537163634969

/-! ## A229804.P8977577015888349413

`∩[A118600(n+1), A229550(n+1)]`
-/

namespace A229804.P8977577015888349413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118600 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229804.P8977577015888349413

/-! ## A229804.P382280297377163284

`∩[A178354(n+1), A229550(n+1)]`
-/

namespace A229804.P382280297377163284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229804.P382280297377163284

/-! ## A229804.P481110602578234788

`∩[A061917(n+1), A229550(n+1)]`
-/

namespace A229804.P481110602578234788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229804.P481110602578234788

/-!
# A229805: Palindromes m such that m*(sum of digits of m) is also a palindrome.

The programs for A229805, there is no canonical definition to state claims against.
-/

/-! ## A229805.P7332614838386193428

`∩[A002113(n+1), A229549(n+1)]`
-/

namespace A229805.P7332614838386193428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229805.P7332614838386193428

/-! ## A229805.P17603442604906968459

`∩[A229549(n+1), A306273(n+1)]`
-/

namespace A229805.P17603442604906968459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229805.P17603442604906968459

/-! ## A229805.P10669101711900996738

`∩[A061917(n+1), A229549(n+1)]`
-/

namespace A229805.P10669101711900996738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229805.P10669101711900996738

/-! ## A229805.P2409787586911269863

`record[A047813(A229549(n+1))]`
-/

namespace A229805.P2409787586911269863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A229549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229805.P2409787586911269863

/-! ## A229805.P14489525021753977588

`filter[A229549(n+1), A136522(#)]`
-/

namespace A229805.P14489525021753977588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A229805.P14489525021753977588

/-!
# A229806: G.f.: Sum_{n>=1} a(n)*x^n / (1 + n*x)^(n^2) = x.

The programs for A229806, there is no canonical definition to state claims against.
-/

/-! ## A229806.P5895563536408865084

`A306513(A327471(∑[n]))`
-/

namespace A229806.P5895563536408865084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306513 (A327471 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229806.P5895563536408865084

/-!
# A229807: G.f. satisfies: A(x) = x*exp( Sum_{n>=1} A(sigma(n)*x^n) / n ).

The programs for A229807, there is no canonical definition to state claims against.
-/

/-! ## A229807.P17839539329445259756

`A156689(A149152(n))-C(n, 5)`
-/

namespace A229807.P17839539329445259756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A149152 n).toNat - (Nat.choose n 5 : ℤ)

end

end A229807.P17839539329445259756

/-! ## A229807.P6830336703625156868

`A120653(n)+A056239(A132846(n))`
-/

namespace A229807.P6830336703625156868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120653 n + A056239 (A132846 n).toNat

end

end A229807.P6830336703625156868

/-! ## A229807.P9305470620539306128

`A356783(n)+A032741(A000254(n))`
-/

namespace A229807.P9305470620539306128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356783 n + A032741 (A000254 n).toNat

end

end A229807.P9305470620539306128

/-!
# A229808: G.f. A(x) satisfies: A(x) = x + 2*B(x)*C(x), where B(x) = x + 3*A(x)*C(x) and C(x) = x + 5*A(x)*B(x).

The programs for A229808, there is no canonical definition to state claims against.
-/

/-! ## A229808.P12617711533018348174

`A336918(∏[2*n+1])-∑[n]`
-/

namespace A229808.P12617711533018348174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336918 (∏ j ∈ Finset.range (n + 1), f1 j) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A229808.P12617711533018348174

/-!
# A229809: G.f. B(x) satisfies: B(x) = x + 3*A(x)*C(x), where A(x) = x + 2*B(x)*C(x) and C(x) = x + 5*A(x)*B(x).

The programs for A229809, there is no canonical definition to state claims against.
-/

/-! ## A229809.P6304589900139908596

`A305458(A155627(n))`
-/

namespace A229809.P6304589900139908596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305458 (A155627 n).toNat

end

end A229809.P6304589900139908596

/-!
# A229810: G.f. C(x) satisfies: C(x) = x + 5*A(x)*B(x), where A(x) = x + 2*B(x)*C(x) and B(x) = x + 3*A(x)*C(x).

The programs for A229810, there is no canonical definition to state claims against.
-/

/-! ## A229810.P13745833626211410255

`A305211(A305409(4^n-n))`
-/

namespace A229810.P13745833626211410255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305211 (A305409 (4 ^ n - n)).toNat

end

end A229810.P13745833626211410255

/-!
# A229811: G.f. A(x) satisfies: A(x) = x + B(x)*C(x), where B(x) = x + 2*C(x)*A(x) and C(x) = x + 3*B(x)*A(x).

The programs for A229811, there is no canonical definition to state claims against.
-/

/-! ## A229811.P10303259017744804271

`A110655(A011270(n+1))`
-/

namespace A229811.P10303259017744804271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A011270 (n + 1)).toNat

end

end A229811.P10303259017744804271

/-! ## A229811.P10054469138838338718

`A008615(A344396(n)+1)`
-/

namespace A229811.P10054469138838338718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A344396 n + 1).toNat

end

end A229811.P10054469138838338718

/-!
# A229812: G.f. B(x) satisfies: B(x) = x + 2*A(x)*C(x), where A(x) = x + C(x)*B(x) and C(x) = x + 3*A(x)*B(x).

The programs for A229812, there is no canonical definition to state claims against.
-/

/-! ## A229812.P7967027740408950428

`A034887(floor(A343314(3*n+4)/3))`
-/

namespace A229812.P7967027740408950428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 ⌊(A343314 (3 * n + 4) : ℚ) / 3⌋.toNat

end

end A229812.P7967027740408950428

/-!
# A229813: G.f. C(x) satisfies: C(x) = x + 3*A(x)*B(x), where A(x) = x + B(x)*C(x) and B(x) = x + 2*A(x)*C(x).

The programs for A229813, there is no canonical definition to state claims against.
-/

/-! ## A229813.P11341676883136898842

`A341721(A077985(n)²)`
-/

namespace A229813.P11341676883136898842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341721 (A077985 n ^ 2).toNat

end

end A229813.P11341676883136898842

/-! ## A229813.P15901240132362463337

`A363523(A213242(n+1))`
-/

namespace A229813.P15901240132362463337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363523 (A213242 (n + 1)).toNat

end

end A229813.P15901240132362463337

/-!
# A229814: Primes which are a concatenation of prime(i) and prime(prime(i)) for some i.

The programs for A229814, there is no canonical definition to state claims against.
-/

/-! ## A229814.P3814321946856407320

`A045532(A154963(n+1))`
-/

namespace A229814.P3814321946856407320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (A154963 (n + 1)).toNat

end

end A229814.P3814321946856407320

/-! ## A229814.P1651936600393917707

`A045532(∑{d}[A155032(n+1), A000720(#)])`
-/

namespace A229814.P1651936600393917707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A229814.P1651936600393917707

/-! ## A229814.P17070441246877753290

`A045532(∑{d}[A155032(n+1), A061395(#)])`
-/

namespace A229814.P17070441246877753290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d).toNat

end

end A229814.P17070441246877753290

/-! ## A229814.P9019054101255668387

`A045532(∑{p}[A155032(n+1), A000720(#)])`
-/

namespace A229814.P9019054101255668387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A229814.P9019054101255668387

/-! ## A229814.P13359454696697066126

`A045532(∑{p}[A155032(n+1), A061395(#)])`
-/

namespace A229814.P13359454696697066126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A229814.P13359454696697066126

/-! ## A229814.P655364447902698725

`A045532(∏{p}[A155032(n+1), A000720(#)])`
-/

namespace A229814.P655364447902698725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045532 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A229814.P655364447902698725

/-!
# A229815: Numbers that are simultaneously the sum of two positive squares and the sum of two positive cubes.

The programs for A229815, there is no canonical definition to state claims against.
-/

/-! ## A229815.P4860976572725483254

`∩[A000404(n+1), A003325(n+1)]`
-/

namespace A229815.P4860976572725483254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229815.P4860976572725483254

/-! ## A229815.P17380248092335253620

`∩[A000415(n+1), A003325(n+1)]`
-/

namespace A229815.P17380248092335253620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229815.P17380248092335253620

/-! ## A229815.P12140061769933938939

`∩[A000404(n+1), A338667(n+1)]`
-/

namespace A229815.P12140061769933938939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229815.P12140061769933938939

/-! ## A229815.P16446493531953268960

`∩[A000415(n+1), A338667(n+1)]`
-/

namespace A229815.P16446493531953268960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229815.P16446493531953268960

/-!
# A229816: Number of partitions of n such that if the length is k then k is not a part.

The programs for A229816, there is no canonical definition to state claims against.
-/

/-! ## A229816.P8735167697201354384

`A002865(n)+∑[A085811(n+1)]`
-/

namespace A229816.P8735167697201354384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229816.P8735167697201354384

/-! ## A229816.P14011643568676781448

`A085811(n+3)+∑[A085811(n+1)]`
-/

namespace A229816.P14011643568676781448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229816.P14011643568676781448

/-! ## A229816.P6217395928880583066

`A182712(A028310(n)-1)+A087787(n)`
-/

namespace A229816.P6217395928880583066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (A028310 n - 1).toNat + A087787 n

end

end A229816.P6217395928880583066

/-! ## A229816.P14933089665026205486

`A000041(n)-A085811(n+2)`
-/

namespace A229816.P14933089665026205486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A085811 (n + 2)

end

end A229816.P14933089665026205486

/-! ## A229816.P931377605786717267

`A000041(n)-A002865(abs(1-n))`
-/

namespace A229816.P931377605786717267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A002865 |1 - (n : ℤ)|.toNat

end

end A229816.P931377605786717267

/-! ## A229816.P9979502167895330797

`A000041(n)+A002865(n)-A027336(n)`
-/

namespace A229816.P9979502167895330797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A002865 n - A027336 n)

end

end A229816.P9979502167895330797

/-! ## A229816.P15187782975059206814

`A000041(n)+A002865(n)-∑[A008483(n)]`
-/

namespace A229816.P15187782975059206814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A002865 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229816.P15187782975059206814

/-! ## A229816.P11981973031023442176

`A008483(n+1)+A000041(n)-A002865(n+1)`
-/

namespace A229816.P11981973031023442176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008483 (n + 1) + (A000041 n - A002865 (n + 1))

end

end A229816.P11981973031023442176

/-! ## A229816.P8704524148057075466

`A027336(n+1)+A000041(n)-A027337(n+1)`
-/

namespace A229816.P8704524148057075466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (n + 1) + (A000041 n - A027337 (n + 1))

end

end A229816.P8704524148057075466

/-! ## A229816.P16478989276849255447

`A000041(n)-(A027194(n+1)+A027188(n+1))`
-/

namespace A229816.P16478989276849255447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A027194 (n + 1) + A027188 (n + 1))

end

end A229816.P16478989276849255447

/-! ## A229816.P9029697073288091706

`A035363(2*n)-A085811(n+2)`
-/

namespace A229816.P9029697073288091706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A085811 (n + 2)

end

end A229816.P9029697073288091706

/-! ## A229816.P10011797150749081486

`A119620(2*n)-A085811(n+2)`
-/

namespace A229816.P10011797150749081486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A085811 (n + 2)

end

end A229816.P10011797150749081486

/-! ## A229816.P6690605354312310449

`A000041(n)-A116598(∑[n]+1)`
-/

namespace A229816.P6690605354312310449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116598 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229816.P6690605354312310449

/-! ## A229816.P6463599065484835991

`A212551(∑[n])+∑[A085811(n+1)]`
-/

namespace A229816.P6463599065484835991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (∑ j ∈ Finset.range (n + 1), f1 j) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A229816.P6463599065484835991

/-!
# A229820: Even bisection gives sequence a itself, n->a(2*(5*n+k)-1) gives k-th differences of a for k=1..5 with a(n)=n for n

The programs for A229820, there is no canonical definition to state claims against.
-/

/-! ## A229820.P10023325074585635009

`A229821(n)%p?[A162986(n)]`
-/

namespace A229820.P10023325074585635009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229821 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229820.P10023325074585635009

/-! ## A229820.P10817178207497720

`A229822(n)%p?[A162986(n)]`
-/

namespace A229820.P10817178207497720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229822 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229820.P10817178207497720

/-! ## A229820.P12870852359260557325

`A229823(n)%p?[A162986(n)]`
-/

namespace A229820.P12870852359260557325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229823 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229820.P12870852359260557325

/-! ## A229820.P17750194315658869384

`A229824(n)%p?[A162986(n)]`
-/

namespace A229820.P17750194315658869384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229824 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229820.P17750194315658869384

/-! ## A229820.P9179177890036202951

`A229825(n)%p?[A162986(n)]`
-/

namespace A229820.P9179177890036202951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229825 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229820.P9179177890036202951

/-!
# A229821: Even bisection gives sequence a itself, n->a(2*(6*n+k)-1) gives k-th differences of a for k=1..6 with a(n)=n for n

The programs for A229821, there is no canonical definition to state claims against.
-/

/-! ## A229821.P4288731983309566763

`A229822(n)%p?[A261300(n)]`
-/

namespace A229821.P4288731983309566763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229822 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229821.P4288731983309566763

/-! ## A229821.P1050036356280883882

`A229825(n%A000040(A002445(n)))`
-/

namespace A229821.P1050036356280883882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229825 (Int.tmod (n : ℤ) (A000040 (A002445 n).toNat)).toNat

end

end A229821.P1050036356280883882

/-! ## A229821.P15519389050411886417

`A229824(n)%A327111(A250120(n))`
-/

namespace A229821.P15519389050411886417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229824 n) (A327111 (A250120 n).toNat)

end

end A229821.P15519389050411886417

/-! ## A229821.P12705910728663181785

`A097325(A350243(n+1))*A229823(n)`
-/

namespace A229821.P12705910728663181785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A350243 (n + 1)).toNat * A229823 n

end

end A229821.P12705910728663181785

/-! ## A229821.P12312896930234963968

`A229823(n)%A344416(A018900(n+1))`
-/

namespace A229821.P12312896930234963968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229823 n) (A344416 (A018900 (n + 1)).toNat)

end

end A229821.P12312896930234963968

/-!
# A229822: Even bisection gives sequence a itself, n->a(2*(7*n+k)-1) gives k-th differences of a for k=1..7 with a(n)=n for n

The programs for A229822, there is no canonical definition to state claims against.
-/

/-! ## A229822.P4208720736104028519

`A229823(n*A055641(A184955(n)))`
-/

namespace A229822.P4208720736104028519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229823 ((n : ℤ) * A055641 (A184955 n).toNat).toNat

end

end A229822.P4208720736104028519

/-! ## A229822.P3736673357748256859

`A229824(n*A055641(A184955(n)))`
-/

namespace A229822.P3736673357748256859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229824 ((n : ℤ) * A055641 (A184955 n).toNat).toNat

end

end A229822.P3736673357748256859

/-! ## A229822.P1950388053136585513

`A229823(n)%A004767(A285061(n))`
-/

namespace A229822.P1950388053136585513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229823 n) (A004767 (A285061 n).toNat)

end

end A229822.P1950388053136585513

/-! ## A229822.P17976678109003800236

`A229824(n)%A100041(A268437(n))`
-/

namespace A229822.P17976678109003800236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229824 n) (A100041 (A268437 n).toNat)

end

end A229822.P17976678109003800236

/-! ## A229822.P7192508053170350680

`A229824(n)*A277080(A277080(n+1))`
-/

namespace A229822.P7192508053170350680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229824 n * A277080 (A277080 (n + 1)).toNat

end

end A229822.P7192508053170350680

/-!
# A229823: Even bisection gives sequence a itself, n->a(2*(8*n+k)-1) gives k-th differences of a for k=1..8 with a(n)=n for n

The programs for A229823, there is no canonical definition to state claims against.
-/

/-! ## A229823.P3188053137604495101

`A229824(n)%A181850(∑[A013609(n)])`
-/

namespace A229823.P3188053137604495101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229824 n) (A181850 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A229823.P3188053137604495101

/-! ## A229823.P1310975072423748989

`A229825(n)%A181850(∑[A013609(n)])`
-/

namespace A229823.P1310975072423748989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229825 n) (A181850 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A229823.P1310975072423748989

/-! ## A229823.P1340070275427109374

`(1-A185284(A109043(n)))*A229825(n)`
-/

namespace A229823.P1340070275427109374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A185284 (A109043 n).toNat) * A229825 n

end

end A229823.P1340070275427109374

/-! ## A229823.P3693130980253395487

`A229824(2*n)%A351368(A102171(n+1))`
-/

namespace A229823.P3693130980253395487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229824 (2 * n)) (A351368 (A102171 (n + 1)).toNat)

end

end A229823.P3693130980253395487

/-! ## A229823.P4573979545351991817

`A028242(A185284(A109043(n)))*A229825(n)`
-/

namespace A229823.P4573979545351991817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A185284 (A109043 n).toNat).toNat * A229825 n

end

end A229823.P4573979545351991817

/-!
# A229824: Even bisection gives sequence a itself, n->a(2*(9*n+k)-1) gives k-th differences of a for k=1..9 with a(n)=n for n

The programs for A229824, there is no canonical definition to state claims against.
-/

/-! ## A229824.P4721337159151258115

`A229825(n)%A224982(A185416(n+1))`
-/

namespace A229824.P4721337159151258115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229825 n) (A224982 (A185416 (n + 1)).toNat)

end

end A229824.P4721337159151258115

/-! ## A229824.P9499012642068552626

`A229825(lt[A342096(n+1)², A297569(n)])`
-/

namespace A229824.P9499012642068552626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342096 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229824.P9499012642068552626

/-! ## A229824.P2307978651169947780

`A229825(lt[A342096(2*n+5), A297569(n)])`
-/

namespace A229824.P2307978651169947780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342096 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229824.P2307978651169947780

/-! ## A229824.P15727550790256435887

`A229825(n)%A088366(A001972(n))`
-/

namespace A229824.P15727550790256435887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A229825 n) (A088366 (A001972 n).toNat)

end

end A229824.P15727550790256435887

/-! ## A229824.P14088454839716230893

`A229825(A132314(n))`
-/

namespace A229824.P14088454839716230893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229825 (A132314 n).toNat

end

end A229824.P14088454839716230893

/-!
# A229826: Evil (A001969) numbers divisible by 7 but not divisible by 3.

The programs for A229826, the canonical program `A229826.P1529673124160606402` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229826 has offset 1).

The definition of A229826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229826.P1529673124160606402

`∩[A089644(n+1), A125494(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A229826

/-- `∩[A089644(n+1), A125494(n+1)]` -/
def P1529673124160606402.Spec : Prop :=
  ∀ n, (P1529673124160606402.a n : ℤ) = A229826 (n + 1)

theorem P1529673124160606402.correct : P1529673124160606402.Spec := by
  intro n
  simp only [A229826, Nat.add_sub_cancel]

end A229826

/-! ## A229826.P12625059150234407525

`∩[A001969(n+1), A089644(n+1)]`
-/

namespace A229826.P12625059150234407525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229826.P12625059150234407525

namespace A229826

/-- `∩[A001969(n+1), A089644(n+1)]` -/
def P12625059150234407525.Spec : Prop :=
  ∀ n, (P12625059150234407525.a n : ℤ) = A229826 (n + 1)

end A229826

/-! ## A229826.P3431317411192182107

`∩[A089644(n+1), A140592(n+1)-2]`
-/

namespace A229826.P3431317411192182107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229826.P3431317411192182107

namespace A229826

/-- `∩[A089644(n+1), A140592(n+1)-2]` -/
def P3431317411192182107.Spec : Prop :=
  ∀ n, (P3431317411192182107.a n : ℤ) = A229826 (n + 1)

end A229826

/-! ## A229826.P5672569034821355318

`filter[A089644(n+1), A010059(#)]`
-/

namespace A229826.P5672569034821355318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A229826.P5672569034821355318

namespace A229826

/-- `filter[A089644(n+1), A010059(#)]` -/
def P5672569034821355318.Spec : Prop :=
  ∀ n, P5672569034821355318.a n = A229826 (n + 1)

end A229826

/-! ## A229826.P1795037882866711380

`filter[A089644(n+1), A092436(#)]`
-/

namespace A229826.P1795037882866711380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A229826.P1795037882866711380

namespace A229826

/-- `filter[A089644(n+1), A092436(#)]` -/
def P1795037882866711380.Spec : Prop :=
  ∀ n, P1795037882866711380.a n = A229826 (n + 1)

end A229826

/-!
# A229828: a(n) = 7*n! - 1.

The programs for A229828, the canonical program `A229828.P17206763324925191026` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229828 has offset 0).

The definition of A229828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n!-1` (program `A229828.P17206763324925191026`, by `A229828.P17206763324925191026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229828.P17206763324925191026

`7*n!-1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229828

/-- `7*n!-1` -/
def P17206763324925191026.Spec : Prop :=
  ∀ n, P17206763324925191026.a n = A229828 n

theorem P17206763324925191026.correct : P17206763324925191026.Spec := by
  intro n
  simp only [A229828]

end A229828

/-! ## A229828.P5936802850140184257

`n*a(n-1)+n-1` with `a(0)=6`
-/

namespace A229828.P5936802850140184257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (n : ℤ) * a (n - 1) + (n : ℤ) - 1

end

end A229828.P5936802850140184257

namespace A229828

/-- `n*a(n-1)+n-1` -/
def P5936802850140184257.Spec : Prop :=
  ∀ n, P5936802850140184257.a n = A229828 n

end A229828

/-! ## A229828.P11970130090139863731

`7*A000142(n)-1`
-/

namespace A229828.P11970130090139863731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000142 n - 1

end

end A229828.P11970130090139863731

namespace A229828

/-- `7*A000142(n)-1` -/
def P11970130090139863731.Spec : Prop :=
  ∀ n, P11970130090139863731.a n = A229828 n

end A229828

/-! ## A229828.P8643226228099698831

`7*∏[ceil(abs(γ-n))]-1`
-/

namespace A229828.P8643226228099698831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * (∏ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A229828.P8643226228099698831

namespace A229828

/-- `7*∏[ceil(abs(γ-n))]-1` -/
def P8643226228099698831.Spec : Prop :=
  ∀ n, P8643226228099698831.a n = A229828 n

end A229828

/-! ## A229828.P9494850735307049971

`abs(1-abs(∏[a(n-1)+1]))` with `a(0)=7, a(1)=1`
-/

namespace A229828.P9494850735307049971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A229828.P9494850735307049971

namespace A229828

/-- `abs(1-abs(∏[a(n-1)+1]))` -/
def P9494850735307049971.Spec : Prop :=
  ∀ n, P9494850735307049971.a n = A229828 n

end A229828

/-! ## A229828.P5914161509176045270

`abs(2-A229554(n))`
-/

namespace A229828.P5914161509176045270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A229554 n|

end

end A229828.P5914161509176045270

namespace A229828

/-- `abs(2-A229554(n))` -/
def P5914161509176045270.Spec : Prop :=
  ∀ n, P5914161509176045270.a n = A229828 n

end A229828

/-!
# A229829: Numbers coprime to 15.

The programs for A229829, the canonical program `A229829.P16845710891271992214` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229829 has offset 1).

The definition of A229829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229829.P16845710891271992214

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=7, a(4)=8, a(5)=11, a(6)=13, a(7)=14, a(8)=16`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229829

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P16845710891271992214.Spec : Prop :=
  ∀ n, P16845710891271992214.a n = A229829 (n + 1)

theorem P16845710891271992214.correct : P16845710891271992214.Spec := by
  intro n
  simp only [A229829, Nat.add_sub_cancel]

end A229829

/-! ## A229829.P6416938535695123262

`comp[2*lcm(3, n)-n]`
-/

namespace A229829.P6416938535695123262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 3 n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A229829.P6416938535695123262

namespace A229829

/-- `comp[2*lcm(3, n)-n]` -/
def P6416938535695123262.Spec : Prop :=
  ∀ n, (P6416938535695123262.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P5257509224382066716

`comp[∪[3*n, 5*n]]`
-/

namespace A229829.P5257509224382066716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A229829.P5257509224382066716

namespace A229829

/-- `comp[∪[3*n, 5*n]]` -/
def P5257509224382066716.Spec : Prop :=
  ∀ n, (P5257509224382066716.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P10416193914614142789

`record[gcd(n-1, C(2*n, 5))]`
-/

namespace A229829.P10416193914614142789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (Nat.choose (2 * n) 5 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229829.P10416193914614142789

namespace A229829

/-- `record[gcd(n-1, C(2*n, 5))]` -/
def P10416193914614142789.Spec : Prop :=
  ∀ n, (P10416193914614142789.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P14016567626851926000

`record[n+2-gcd(n+1, 5*(n-2))]`
-/

namespace A229829.P14016567626851926000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (Int.gcd (n + 1 : ℤ) (5 * ((n : ℤ) - 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229829.P14016567626851926000

namespace A229829

/-- `record[n+2-gcd(n+1, 5*(n-2))]` -/
def P14016567626851926000.Spec : Prop :=
  ∀ n, P14016567626851926000.a n = A229829 (n + 1)

end A229829

/-! ## A229829.P10534529788148198143

`comp[A281746(n+1)]`
-/

namespace A229829.P10534529788148198143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A229829.P10534529788148198143

namespace A229829

/-- `comp[A281746(n+1)]` -/
def P10534529788148198143.Spec : Prop :=
  ∀ n, (P10534529788148198143.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P16819728066963047695

`comp[A014682(n+1)+n-2]`
-/

namespace A229829.P16819728066963047695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (n + 1) + ((n : ℤ) - 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A229829.P16819728066963047695

namespace A229829

/-- `comp[A014682(n+1)+n-2]` -/
def P16819728066963047695.Spec : Prop :=
  ∀ n, (P16819728066963047695.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P163083313788020769

`lt[5, A020639(4*(n+3)+3)]`
-/

namespace A229829.P163083313788020769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (n + 3) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229829.P163083313788020769

namespace A229829

/-- `lt[5, A020639(4*(n+3)+3)]` -/
def P163083313788020769.Spec : Prop :=
  ∀ n, (P163083313788020769.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P12448765562971389201

`∪[A204542(n+1), A379211(n+1)]`
-/

namespace A229829.P12448765562971389201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A229829.P12448765562971389201

namespace A229829

/-- `∪[A204542(n+1), A379211(n+1)]` -/
def P12448765562971389201.Spec : Prop :=
  ∀ n, (P12448765562971389201.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P10051912044308275786

`filter[A001651(n+1), A011558(#)]`
-/

namespace A229829.P10051912044308275786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A229829.P10051912044308275786

namespace A229829

/-- `filter[A001651(n+1), A011558(#)]` -/
def P10051912044308275786.Spec : Prop :=
  ∀ n, P10051912044308275786.a n = A229829 (n + 1)

end A229829

/-! ## A229829.P2748505544332122666

`∩[A001651(n+1), A047201(n+1)]`
-/

namespace A229829.P2748505544332122666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229829.P2748505544332122666

namespace A229829

/-- `∩[A001651(n+1), A047201(n+1)]` -/
def P2748505544332122666.Spec : Prop :=
  ∀ n, (P2748505544332122666.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P4387031448907152027

`lt[∏{p}[2*n, #-5], 0]`
-/

namespace A229829.P4387031448907152027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A229829.P4387031448907152027

namespace A229829

/-- `lt[∏{p}[2*n, #-5], 0]` -/
def P4387031448907152027.Spec : Prop :=
  ∀ n, (P4387031448907152027.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P11864109628603646123

`record[gcd(n+1, ∑[∑[2*n]²])]`
-/

namespace A229829.P11864109628603646123
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229829.P11864109628603646123

namespace A229829

/-- `record[gcd(n+1, ∑[∑[2*n]²])]` -/
def P11864109628603646123.Spec : Prop :=
  ∀ n, (P11864109628603646123.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P8535756053263871297

`lt[0, A255680(n)]`
-/

namespace A229829.P8535756053263871297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229829.P8535756053263871297

namespace A229829

/-- `lt[0, A255680(n)]` -/
def P8535756053263871297.Spec : Prop :=
  ∀ n, (P8535756053263871297.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P2582788763406667695

`record[A106616(n+1)]`
-/

namespace A229829.P2582788763406667695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229829.P2582788763406667695

namespace A229829

/-- `record[A106616(n+1)]` -/
def P2582788763406667695.Spec : Prop :=
  ∀ n, P2582788763406667695.a n = A229829 (n + 1)

end A229829

/-! ## A229829.P7958452368792391295

`lt[2, log2(A252358(n)-1)]`
-/

namespace A229829.P7958452368792391295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A252358 n - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A229829.P7958452368792391295

namespace A229829

/-- `lt[2, log2(A252358(n)-1)]` -/
def P7958452368792391295.Spec : Prop :=
  ∀ n, (P7958452368792391295.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P8672399835536385877

`lt[(n-A106616(n))², n]`
-/

namespace A229829.P8672399835536385877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A106616 n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229829.P8672399835536385877

namespace A229829

/-- `lt[(n-A106616(n))², n]` -/
def P8672399835536385877.Spec : Prop :=
  ∀ n, (P8672399835536385877.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P12303881148884227081

`lt[A109009(n), ratio[(2*n+1)/gcd(3, 1-n)]]`
-/

namespace A229829.P12303881148884227081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd 3 (1 - (n : ℤ)) : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A229829.P12303881148884227081

namespace A229829

/-- `lt[A109009(n), ratio[(2*n+1)/gcd(3, 1-n)]]` -/
def P12303881148884227081.Spec : Prop :=
  ∀ n, (P12303881148884227081.a n : ℤ) = A229829 (n + 1)

end A229829

/-! ## A229829.P11397326714973088952

`filter[A091684(n), A011558(#)]`
-/

namespace A229829.P11397326714973088952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A229829.P11397326714973088952

namespace A229829

/-- `filter[A091684(n), A011558(#)]` -/
def P11397326714973088952.Spec : Prop :=
  ∀ n, P11397326714973088952.a n = A229829 (n + 1)

end A229829

/-! ## A229829.P2979904836867997597

`filter[A091703(n), A011655(#)]`
-/

namespace A229829.P2979904836867997597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A229829.P2979904836867997597

namespace A229829

/-- `filter[A091703(n), A011655(#)]` -/
def P2979904836867997597.Spec : Prop :=
  ∀ n, P2979904836867997597.a n = A229829 (n + 1)

end A229829

/-!
# A229830: Trajectory of 1 under the morphism 1 -> 12, 2 -> 1232, 3 -> 123432, 4 -> 12345432, etc.

The programs for A229830, there is no canonical definition to state claims against.
-/

/-! ## A229830.P10495214763710956090

`A286281(∑[gcd(3, A286280(n+2))])`
-/

namespace A229830.P10495214763710956090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A286280 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229830.P10495214763710956090

/-! ## A229830.P4416064228663111561

`A059131(and(n, A299642(n+1)))`
-/

namespace A229830.P4416064228663111561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059131 (Int.land (n : ℤ) (A299642 (n + 1))).toNat

end

end A229830.P4416064228663111561

/-! ## A229830.P14960217516591646896

`gcd(gcd(6, n)+1, A301730(A000578(n)))`
-/

namespace A229830.P14960217516591646896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.gcd 6 n + 1 : ℤ) (A301730 (A000578 n).toNat)

end

end A229830.P14960217516591646896

/-! ## A229830.P1780092133717802300

`∑[A020985(n*A065047(n+1))]`
-/

namespace A229830.P1780092133717802300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 ((n : ℤ) * A065047 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229830.P1780092133717802300

/-! ## A229830.P15800409867412092002

`∑[A020985(lcm(n, A065047(n+1)))]`
-/

namespace A229830.P15800409867412092002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (Int.lcm (n : ℤ) (A065047 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229830.P15800409867412092002

/-!
# A229832: First term of smallest sequence of n consecutive weak primes.

The programs for A229832, there is no canonical definition to state claims against.
-/

/-! ## A229832.P14586663015498769269

`A158939(n+2)+A001223(A133697(n))`
-/

namespace A229832.P14586663015498769269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158939 (n + 2) + A001223 (A133697 n).toNat

end

end A229832.P14586663015498769269

/-!
# A229834: Expansion of (1+4*x+x^2) / ((1-x)^3*(1+x)^4).

The programs for A229834, the canonical program `A229834.P223850690070494947` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229834 has offset 0).

The definition of A229834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+x^2)/(1+x-3x^2-3x^3+3x^4+3x^5-x^6-x^7))` (program `A229834.P223850690070494947`, by `A229834.P223850690070494947.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229834.P223850690070494947

`ogf((1+4x+x^2)/(1+x-3x^2-3x^3+3x^4+3x^5-x^6-x^7))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229834

/-- `ogf((1+4x+x^2)/(1+x-3x^2-3x^3+3x^4+3x^5-x^6-x^7))` -/
def P223850690070494947.Spec : Prop :=
  ∀ n, P223850690070494947.a n = A229834 n

theorem P223850690070494947.correct : P223850690070494947.Spec := by
  intro n
  simp only [A229834]

end A229834

/-! ## A229834.P10106481529700199713

`1+n*(n+5)*(9-(2*n+5)*(-1)^n)/48`
-/

namespace A229834.P10106481529700199713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((n * (n + 5) : ℤ) * (9 - (2 * n + 5 : ℤ) * (-1) ^ n) : ℚ) / 48

end

end A229834.P10106481529700199713

namespace A229834

/-- `1+n*(n+5)*(9-(2*n+5)*(-1)^n)/48` -/
def P10106481529700199713.Spec : Prop :=
  ∀ n, P10106481529700199713.a n = (A229834 n : ℚ)

end A229834

/-! ## A229834.P2918879553466756599

`Δ[gcd(2, n)*A006918(n)]`
-/

namespace A229834.P2918879553466756599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P2918879553466756599

namespace A229834

/-- `Δ[gcd(2, n)*A006918(n)]` -/
def P2918879553466756599.Spec : Prop :=
  ∀ n, P2918879553466756599.a n = A229834 n

end A229834

/-! ## A229834.P14704757933336205959

`Δ[A006918(n)*A040001(n)]`
-/

namespace A229834.P14704757933336205959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n * A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P14704757933336205959

namespace A229834

/-- `Δ[A006918(n)*A040001(n)]` -/
def P14704757933336205959.Spec : Prop :=
  ∀ n, P14704757933336205959.a n = A229834 n

end A229834

/-! ## A229834.P12008983618212842785

`Δ[A006918(n)*A134451(n)]`
-/

namespace A229834.P12008983618212842785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n * A134451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P12008983618212842785

namespace A229834

/-- `Δ[A006918(n)*A134451(n)]` -/
def P12008983618212842785.Spec : Prop :=
  ∀ n, P12008983618212842785.a n = A229834 n

end A229834

/-! ## A229834.P17913837297347087919

`Δ[Δ[A007494(n)]*A006918(n)]`
-/

namespace A229834.P17913837297347087919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P17913837297347087919

namespace A229834

/-- `Δ[Δ[A007494(n)]*A006918(n)]` -/
def P17913837297347087919.Spec : Prop :=
  ∀ n, P17913837297347087919.a n = A229834 n

end A229834

/-! ## A229834.P4179433967885659718

`Δ[(2-A000035(n))*A006918(n)]`
-/

namespace A229834.P4179433967885659718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P4179433967885659718

namespace A229834

/-- `Δ[(2-A000035(n))*A006918(n)]` -/
def P4179433967885659718.Spec : Prop :=
  ∀ n, P4179433967885659718.a n = A229834 n

end A229834

/-! ## A229834.P4592020618767828072

`Δ[2/A000034(n)*A006918(n)]`
-/

namespace A229834.P4592020618767828072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000034 n : ℚ) * (A006918 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P4592020618767828072

namespace A229834

/-- `Δ[2/A000034(n)*A006918(n)]` -/
def P4592020618767828072.Spec : Prop :=
  ∀ n, P4592020618767828072.a n = (A229834 n : ℚ)

end A229834

/-! ## A229834.P17043432607983537285

`Δ[A000034(n+1)*A006918(n)]`
-/

namespace A229834.P17043432607983537285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A006918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229834.P17043432607983537285

namespace A229834

/-- `Δ[A000034(n+1)*A006918(n)]` -/
def P17043432607983537285.Spec : Prop :=
  ∀ n, P17043432607983537285.a n = A229834 n

end A229834

/-!
# A229835: Number of ways to write n = (p - 1)/6 + q, where p is a prime, and q is a term of the sequence A000009.

The programs for A229835, there is no canonical definition to state claims against.
-/

/-! ## A229835.P627043899211389780

`A001222(A034386(n+1)+12*C(n, 3))`
-/

namespace A229835.P627043899211389780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034386 (n + 1) + (12 * Nat.choose n 3 : ℤ)).toNat

end

end A229835.P627043899211389780

/-! ## A229835.P360724934125411869

`A001222(A280058(n)+A034386(n+1))`
-/

namespace A229835.P360724934125411869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A280058 n + A034386 (n + 1)).toNat

end

end A229835.P360724934125411869

/-! ## A229835.P16575227314171072557

`A001222(A034386(n+1)+2*A007531(n))`
-/

namespace A229835.P16575227314171072557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034386 (n + 1) + 2 * A007531 n).toNat

end

end A229835.P16575227314171072557

/-! ## A229835.P7452473870834883398

`A316863(A354169(n+4))+A000720(n+1)`
-/

namespace A229835.P7452473870834883398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A354169 (n + 4)).toNat + A000720 (n + 1)

end

end A229835.P7452473870834883398

/-! ## A229835.P966849615674500816

`A087436(A280058(n)+A034386(n+1))-A057428(n)`
-/

namespace A229835.P966849615674500816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A280058 n + A034386 (n + 1)).toNat - A057428 n

end

end A229835.P966849615674500816

/-!
# A229836: Number of primes between n! and n^n inclusive.

The programs for A229836, there is no canonical definition to state claims against.
-/

/-! ## A229836.P10961286511971402697

`A072747(∑[(10^n+26)/9])-1`
-/

namespace A229836.P10961286511971402697
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 26 : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - 1

end

end A229836.P10961286511971402697

/-!
# A229838: Consider all primitive 60-degree triangles with sides A < B < C. The sequence gives the values of A.

The programs for A229838, the canonical program `A229838.P2681916384624365037` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229838 has offset 1).

The definition of A229838 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229838.P4883185993836092653

`comp[and(n, n+3)]+2`
-/

namespace A229838.P4883185993836092653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A229838.P4883185993836092653

namespace A229838

/-- `comp[and(n, n+3)]+2` -/
def P4883185993836092653.Spec : Prop :=
  ∀ n, (P4883185993836092653.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P2681916384624365037

`lt[4, and(1-n, lcm(2, n))]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229838

/-- `lt[4, and(1-n, lcm(2, n))]` -/
def P2681916384624365037.Spec : Prop :=
  ∀ n, (P2681916384624365037.a n : ℤ) = A229838 (n + 1)

theorem P2681916384624365037.correct : P2681916384624365037.Spec := by
  intro n
  simp only [A229838, Nat.add_sub_cancel]

end A229838

/-! ## A229838.P6266976811658709118

`comp[2*comp[or(3, n)]]+2`
-/

namespace A229838.P6266976811658709118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A229838.P6266976811658709118

namespace A229838

/-- `comp[2*comp[or(3, n)]]+2` -/
def P6266976811658709118.Spec : Prop :=
  ∀ n, (P6266976811658709118.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P7803564560135475752

`lt[n^and(6, gcd(8, n)), n]`
-/

namespace A229838.P7803564560135475752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.land 6 (Nat.gcd 8 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229838.P7803564560135475752

namespace A229838

/-- `lt[n^and(6, gcd(8, n)), n]` -/
def P7803564560135475752.Spec : Prop :=
  ∀ n, (P7803564560135475752.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P3409321372578729463

`∑[gcd(2, (2*n)%5)]+1`
-/

namespace A229838.P3409321372578729463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A229838.P3409321372578729463

namespace A229838

/-- `∑[gcd(2, (2*n)%5)]+1` -/
def P3409321372578729463.Spec : Prop :=
  ∀ n, (P3409321372578729463.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P13737463560490133687

`comp[or(2, n)-2+n]+2`
-/

namespace A229838.P13737463560490133687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A229838.P13737463560490133687

namespace A229838

/-- `comp[or(2, n)-2+n]+2` -/
def P13737463560490133687.Spec : Prop :=
  ∀ n, (P13737463560490133687.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P5100334425078358466

`Δ[ceil((2*n+3)²/5)]`
-/

namespace A229838.P5100334425078358466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 3) ^ 2 : ℚ) / 5⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229838.P5100334425078358466

namespace A229838

/-- `Δ[ceil((2*n+3)²/5)]` -/
def P5100334425078358466.Spec : Prop :=
  ∀ n, P5100334425078358466.a n = A229838 (n + 1)

end A229838

/-! ## A229838.P2889647395084616272

`record[or(n+2, C(3, and(5, n)))]`
-/

namespace A229838.P2889647395084616272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 2) (Nat.choose 3 (Nat.land 5 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229838.P2889647395084616272

namespace A229838

/-- `record[or(n+2, C(3, and(5, n)))]` -/
def P2889647395084616272.Spec : Prop :=
  ∀ n, (P2889647395084616272.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P17493626205068438395

`a(n-5)+8` with `a(0)=3, a(1)=5, a(2)=7, a(3)=8, a(4)=9`
-/

namespace A229838.P17493626205068438395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 7, 8, 9] fun n a =>
  a (n - 5) + 8

end

end A229838.P17493626205068438395

namespace A229838

/-- `a(n-5)+8` -/
def P17493626205068438395.Spec : Prop :=
  ∀ n, (P17493626205068438395.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P11788531259300069183

`∪[2*n+3, 8*(n+1)]`
-/

namespace A229838.P11788531259300069183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A229838.P11788531259300069183

namespace A229838

/-- `∪[2*n+3, 8*(n+1)]` -/
def P11788531259300069183.Spec : Prop :=
  ∀ n, (P11788531259300069183.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P5569420955345411945

`lt[2, or(n, n-1)%(n+1)]`
-/

namespace A229838.P5569420955345411945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (n : ℤ) ((n : ℤ) - 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229838.P5569420955345411945

namespace A229838

/-- `lt[2, or(n, n-1)%(n+1)]` -/
def P5569420955345411945.Spec : Prop :=
  ∀ n, (P5569420955345411945.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P6692146246273072320

`∑[floor(a(n-5))]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=1, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A229838.P6692146246273072320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 1, 1, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229838.P6692146246273072320

namespace A229838

/-- `∑[floor(a(n-5))]` -/
def P6692146246273072320.Spec : Prop :=
  ∀ n, (P6692146246273072320.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P12284238254175421252

`A047584(n+1)+2`
-/

namespace A229838.P12284238254175421252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047584 (n + 1) + 2

end

end A229838.P12284238254175421252

namespace A229838

/-- `A047584(n+1)+2` -/
def P12284238254175421252.Spec : Prop :=
  ∀ n, P12284238254175421252.a n = A229838 (n + 1)

end A229838

/-! ## A229838.P13390206683277148844

`A047434(n+1)+3`
-/

namespace A229838.P13390206683277148844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047434 (n + 1) + 3

end

end A229838.P13390206683277148844

namespace A229838

/-- `A047434(n+1)+3` -/
def P13390206683277148844.Spec : Prop :=
  ∀ n, P13390206683277148844.a n = A229838 (n + 1)

end A229838

/-! ## A229838.P1064941450310172525

`A259754(n+1)/3+2`
-/

namespace A229838.P1064941450310172525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259754 (n + 1) : ℚ) / 3 + 2

end

end A229838.P1064941450310172525

namespace A229838

/-- `A259754(n+1)/3+2` -/
def P1064941450310172525.Spec : Prop :=
  ∀ n, P1064941450310172525.a n = (A229838 (n + 1) : ℚ)

end A229838

/-! ## A229838.P12991158925439262221

`3*(n+1)-A047295(n+1)`
-/

namespace A229838.P12991158925439262221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A047295 (n + 1)

end

end A229838.P12991158925439262221

namespace A229838

/-- `3*(n+1)-A047295(n+1)` -/
def P12991158925439262221.Spec : Prop :=
  ∀ n, P12991158925439262221.a n = A229838 (n + 1)

end A229838

/-! ## A229838.P13158389480737601261

`eq[A253513(n), A292262(n)]`
-/

namespace A229838.P13158389480737601261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229838.P13158389480737601261

namespace A229838

/-- `eq[A253513(n), A292262(n)]` -/
def P13158389480737601261.Spec : Prop :=
  ∀ n, (P13158389480737601261.a n : ℤ) = A229838 (n + 1)

end A229838

/-! ## A229838.P14392055903643517561

`A047511(n+2)+1`
-/

namespace A229838.P14392055903643517561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047511 (n + 2) + 1

end

end A229838.P14392055903643517561

namespace A229838

/-- `A047511(n+2)+1` -/
def P14392055903643517561.Spec : Prop :=
  ∀ n, P14392055903643517561.a n = A229838 (n + 1)

end A229838

/-! ## A229838.P16408329617485767314

`A016789(n+1)-A047302(n+2)`
-/

namespace A229838.P16408329617485767314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (n + 1) - A047302 (n + 2)

end

end A229838.P16408329617485767314

namespace A229838

/-- `A016789(n+1)-A047302(n+2)` -/
def P16408329617485767314.Spec : Prop :=
  ∀ n, P16408329617485767314.a n = A229838 (n + 1)

end A229838

/-! ## A229838.P13820586678656032205

`A047486(n+3)`
-/

namespace A229838.P13820586678656032205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 3)

end

end A229838.P13820586678656032205

namespace A229838

/-- `A047486(n+3)` -/
def P13820586678656032205.Spec : Prop :=
  ∀ n, P13820586678656032205.a n = A229838 (n + 1)

end A229838

/-!
# A229839: Consider all 60-degree triangles with sides A < B < C. The sequence gives the values of C.

The programs for A229839, there is no canonical definition to state claims against.
-/

/-! ## A229839.P5810930166640131195

`A196008(A195778(n+1)+A020883(n+1))`
-/

namespace A229839.P5810930166640131195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196008 (A195778 (n + 1) + A020883 (n + 1)).toNat

end

end A229839.P5810930166640131195

/-! ## A229839.P11699226245715461106

`A228363(or(p?[4*n+1], A328242(n+1)))`
-/

namespace A229839.P11699226245715461106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (Int.lor (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) (A328242 (n + 1))).toNat

end

end A229839.P11699226245715461106

/-! ## A229839.P12957279799784682434

`A320496(n+3)-A167967(A323582(n))`
-/

namespace A229839.P12957279799784682434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320496 (n + 3) - A167967 (A323582 n).toNat

end

end A229839.P12957279799784682434

/-! ## A229839.P574415468785048147

`A276573(lt[A280480(2*n+5), A079388(n+1)])`
-/

namespace A229839.P574415468785048147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280480 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276573 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229839.P574415468785048147

/-!
# A229840: Number of n X n 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229840, there is no canonical definition to state claims against.
-/

/-! ## A229840.P5258704974331409566

`A229847(∑[4*n]+1)`
-/

namespace A229840.P5258704974331409566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229840.P5258704974331409566

/-! ## A229840.P14561882589765794975

`record[A214505(n)*A229847(n+1)]`
-/

namespace A229840.P14561882589765794975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A229847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229840.P14561882589765794975

/-! ## A229840.P18018823079265792998

`A229847(A001844(n))*A229886(n)`
-/

namespace A229840.P18018823079265792998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A001844 n).toNat * A229886 n

end

end A229840.P18018823079265792998

/-!
# A229841: Number of n X 2 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229841, the canonical program `A229841.P15136936834526972619` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229841 has offset 1).

The definition of A229841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229841.P15136936834526972619

`5*a(n-1)+2*a(n-2)-a(n-3)-5*a(n-4)` with `a(0)=3, a(1)=15, a(2)=81, a(3)=423`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229841

/-- `5*a(n-1)+2*a(n-2)-a(n-3)-5*a(n-4)` -/
def P15136936834526972619.Spec : Prop :=
  ∀ n, P15136936834526972619.a n = A229841 (n + 1)

theorem P15136936834526972619.correct : P15136936834526972619.Spec := by
  intro n
  simp only [A229841, Nat.add_sub_cancel]

end A229841

/-! ## A229841.P5199913550402504508

`A230675(∑[n+2])`
-/

namespace A229841.P5199913550402504508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229841.P5199913550402504508

namespace A229841

/-- `A230675(∑[n+2])` -/
def P5199913550402504508.Spec : Prop :=
  ∀ n, P5199913550402504508.a n = A229841 (n + 1)

end A229841

/-! ## A229841.P7910911439902127680

`A229847(∑[n+1]+2)`
-/

namespace A229841.P7910911439902127680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229841.P7910911439902127680

namespace A229841

/-- `A229847(∑[n+1]+2)` -/
def P7910911439902127680.Spec : Prop :=
  ∀ n, P7910911439902127680.a n = A229841 (n + 1)

end A229841

/-! ## A229841.P3655633636620957936

`record[A230675(A117142(n+2))]`
-/

namespace A229841.P3655633636620957936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229841.P3655633636620957936

namespace A229841

/-- `record[A230675(A117142(n+2))]` -/
def P3655633636620957936.Spec : Prop :=
  ∀ n, P3655633636620957936.a n = A229841 (n + 1)

end A229841

/-! ## A229841.P10869107613645183336

`record[A230675(Δ[A003453(n+5)])]`
-/

namespace A229841.P10869107613645183336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230675 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229841.P10869107613645183336

namespace A229841

/-- `record[A230675(Δ[A003453(n+5)])]` -/
def P10869107613645183336.Spec : Prop :=
  ∀ n, P10869107613645183336.a n = A229841 (n + 1)

end A229841

/-!
# A229842: Number of nX3 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229842, there is no canonical definition to state claims against.
-/

/-! ## A229842.P7708977576387956352

`A229847(∑[n+2]+4)`
-/

namespace A229842.P7708977576387956352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229842.P7708977576387956352

/-! ## A229842.P15034496192804724888

`lcm(3, A229847(A167614(n+1)))`
-/

namespace A229842.P15034496192804724888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A229847 (A167614 (n + 1)).toNat)

end

end A229842.P15034496192804724888

/-! ## A229842.P6256527517273167507

`A229847(A167614(n+1))+A185284(n)`
-/

namespace A229842.P6256527517273167507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A167614 (n + 1)).toNat + A185284 n

end

end A229842.P6256527517273167507

/-! ## A229842.P17658169552486021739

`or(A000038(n), A229847(A167614(n+1)))`
-/

namespace A229842.P17658169552486021739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A229847 (A167614 (n + 1)).toNat)

end

end A229842.P17658169552486021739

/-! ## A229842.P4949177015264740563

`or(A003982(n), A229847(A167614(n+1)))`
-/

namespace A229842.P4949177015264740563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A229847 (A167614 (n + 1)).toNat)

end

end A229842.P4949177015264740563

/-!
# A229843: Number of nX4 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229843, there is no canonical definition to state claims against.
-/

/-! ## A229843.P17967485677182293296

`A229847(A374004(n+1))`
-/

namespace A229843.P17967485677182293296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A374004 (n + 1)).toNat

end

end A229843.P17967485677182293296

/-! ## A229843.P5737739256237330378

`A229847(A141214(n)+7)`
-/

namespace A229843.P5737739256237330378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A141214 n + 7).toNat

end

end A229843.P5737739256237330378

/-! ## A229843.P5205134042925281705

`A229847(A052905(n)+9)`
-/

namespace A229843.P5205134042925281705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A052905 n + 9).toNat

end

end A229843.P5205134042925281705

/-! ## A229843.P5413988549255617745

`A229847(A167614(n+2)+1)`
-/

namespace A229843.P5413988549255617745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A167614 (n + 2) + 1).toNat

end

end A229843.P5413988549255617745

/-! ## A229843.P154043933793725598

`A229847(A000217(n+3)+4)`
-/

namespace A229843.P154043933793725598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A000217 (n + 3) + 4).toNat

end

end A229843.P154043933793725598

/-!
# A229844: Number of nX5 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229844, there is no canonical definition to state claims against.
-/

/-! ## A229844.P503258259630625116

`A229847(A374005(n+1))`
-/

namespace A229844.P503258259630625116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A374005 (n + 1)).toNat

end

end A229844.P503258259630625116

/-! ## A229844.P5450850450540241868

`A229847(A056000(n)+15)`
-/

namespace A229844.P5450850450540241868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A056000 n + 15).toNat

end

end A229844.P5450850450540241868

/-! ## A229844.P5439765668855118777

`A229847(eq[6, A131818(n+1)])`
-/

namespace A229844.P5439765668855118777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229844.P5439765668855118777

/-! ## A229844.P4536340766764037090

`A229847(eq[5, A002260(n+1)]+1)`
-/

namespace A229844.P4536340766764037090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229844.P4536340766764037090

/-! ## A229844.P11190679104708597085

`A229847(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A229844.P11190679104708597085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A229844.P11190679104708597085

/-!
# A229845: Number of nX6 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229845, there is no canonical definition to state claims against.
-/

/-! ## A229845.P17456179693617854953

`A229847(A374007(n+1))`
-/

namespace A229845.P17456179693617854953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A374007 (n + 1)).toNat

end

end A229845.P17456179693617854953

/-! ## A229845.P3903978015431765214

`A229847(A246172(n+1)+20)`
-/

namespace A229845.P3903978015431765214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A246172 (n + 1) + 20).toNat

end

end A229845.P3903978015431765214

/-! ## A229845.P7913078249323336900

`A229847(eq[7, A131818(n+1)])`
-/

namespace A229845.P7913078249323336900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229845.P7913078249323336900

/-! ## A229845.P4048398267528686444

`A229847(A056119(n)+16)`
-/

namespace A229845.P4048398267528686444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A056119 n + 16).toNat

end

end A229845.P4048398267528686444

/-! ## A229845.P9925668617634048310

`A229847(eq[3, A219347(n)])`
-/

namespace A229845.P9925668617634048310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229845.P9925668617634048310

/-!
# A229846: Number of nX7 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229846, there is no canonical definition to state claims against.
-/

/-! ## A229846.P10005738993459226380

`A229847(A374008(n+1))`
-/

namespace A229846.P10005738993459226380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (A374008 (n + 1)).toNat

end

end A229846.P10005738993459226380

/-! ## A229846.P3387132366145728723

`A229847(eq[7, A002260(n+1)]+1)`
-/

namespace A229846.P3387132366145728723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229846.P3387132366145728723

/-! ## A229846.P8027745508071089293

`A229847(Δ[A023551(n+2)])`
-/

namespace A229846.P8027745508071089293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (f1 (n + 1) - f1 n).toNat

end

end A229846.P8027745508071089293

/-! ## A229846.P12020070584319090745

`A229847(eq[2, A219347(n)-2])`
-/

namespace A229846.P12020070584319090745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229846.P12020070584319090745

/-!
# A229847: T(n,k)=Number of nXk 0..2 arrays x(i,j) with each element horizontally or vertically next to at least one element with value 2-x(i,j).

The programs for A229847, there is no canonical definition to state claims against.
-/

/-! ## A229847.P10370050567331116884

`A022844(A185559(n+1)%A138301(n+1))`
-/

namespace A229847.P10370050567331116884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (Int.tmod (A185559 (n + 1)) (A138301 (n + 1))).toNat

end

end A229847.P10370050567331116884

/-! ## A229847.P10969485758123852177

`A022844(A185559(n+1))%A215050(n+1)`
-/

namespace A229847.P10969485758123852177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022844 (A185559 (n + 1)).toNat) (A215050 (n + 1))

end

end A229847.P10969485758123852177

/-!
# A229848: Values of n such that the equation x^2 - 3*n*y^2 = n has integer solutions.

The programs for A229848, there is no canonical definition to state claims against.
-/

/-! ## A229848.P12680406217455443856

`∩[A225859(n+1), A352272(n+1)]`
-/

namespace A229848.P12680406217455443856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352272 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229848.P12680406217455443856

/-!
# A229849: Consider all primitive 120-degree triangles with sides A < B < C. The sequence gives the values of B.

The programs for A229849, there is no canonical definition to state claims against.
-/

/-! ## A229849.P5429684380328558994

`A088586(lt[(n-2)/(char[2*n]+1)+1, 6]+1)`
-/

namespace A229849.P5429684380328558994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n + 1)

end

end A229849.P5429684380328558994

/-! ## A229849.P10328662458899376158

`A088586(A363246(n+2))`
-/

namespace A229849.P10328662458899376158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088586 (A363246 (n + 2)).toNat

end

end A229849.P10328662458899376158

/-! ## A229849.P16492282524429757301

`record[A088586(n+1)%A295801(n+1)]`
-/

namespace A229849.P16492282524429757301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088586 (n + 1)) (A295801 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229849.P16492282524429757301

/-! ## A229849.P8826471869927223479

`record[A357276(n+1)%A295801(n+1)]`
-/

namespace A229849.P8826471869927223479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357276 (n + 1)) (A295801 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229849.P8826471869927223479

/-! ## A229849.P14253194087029662589

`record[A335894(2*(n+1))%A295801(n+1)]`
-/

namespace A229849.P14253194087029662589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335894 (2 * (n + 1))) (A295801 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229849.P14253194087029662589

/-!
# A229852: 3*h^2, where h is an odd integer not divisible by 3.

The programs for A229852, the canonical program `A229852.P573498570990364365` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229852 has offset 1).

The definition of A229852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229852.P3016106149799967402

`3*(18*(n+1)²+6*(-1)^(n+1)*(n+1)-18*(n+1)-3*(-1)^(n+1)+5)/2`
-/

namespace A229852.P3016106149799967402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((18 * (n + 1) ^ 2 : ℤ) + 6 * (-1) ^ (n + 1) * (n + 1 : ℤ) - (18 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1) + 5) : ℚ) / 2

end

end A229852.P3016106149799967402

namespace A229852

/-- `3*(18*(n+1)²+6*(-1)^(n+1)*(n+1)-18*(n+1)-3*(-1)^(n+1)+5)/2` -/
def P3016106149799967402.Spec : Prop :=
  ∀ n, P3016106149799967402.a n = (A229852 (n + 1) : ℚ)

end A229852

/-! ## A229852.P573498570990364365

`3*A104777(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229852

/-- `3*A104777(n+1)` -/
def P573498570990364365.Spec : Prop :=
  ∀ n, P573498570990364365.a n = A229852 (n + 1)

theorem P573498570990364365.correct : P573498570990364365.Spec := by
  intro n
  simp only [A229852, Nat.add_sub_cancel]

end A229852

/-! ## A229852.P3169427291970689506

`3*or(1, 3*n+1)²`
-/

namespace A229852.P3169427291970689506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.lor 1 (3 * n + 1) ^ 2

end

end A229852.P3169427291970689506

namespace A229852

/-- `3*or(1, 3*n+1)²` -/
def P3169427291970689506.Spec : Prop :=
  ∀ n, (P3169427291970689506.a n : ℤ) = A229852 (n + 1)

end A229852

/-! ## A229852.P9084513156966152010

`3*lt[3*n, lcm(6, n)]²`
-/

namespace A229852.P9084513156966152010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A229852.P9084513156966152010

namespace A229852

/-- `3*lt[3*n, lcm(6, n)]²` -/
def P9084513156966152010.Spec : Prop :=
  ∀ n, (P9084513156966152010.a n : ℤ) = A229852 (n + 1)

end A229852

/-! ## A229852.P14546982263440725762

`3*(2-or(1, -(3*n)))²`
-/

namespace A229852.P14546982263440725762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 - Int.lor 1 (-(3 * n : ℤ))) ^ 2

end

end A229852.P14546982263440725762

namespace A229852

/-- `3*(2-or(1, -(3*n)))²` -/
def P14546982263440725762.Spec : Prop :=
  ∀ n, P14546982263440725762.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P6590552694998140624

`3*(∑[4/gcd(2, n)]-1)²`
-/

namespace A229852.P6590552694998140624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j - 1) ^ 2

end

end A229852.P6590552694998140624

namespace A229852

/-- `3*(∑[4/gcd(2, n)]-1)²` -/
def P6590552694998140624.Spec : Prop :=
  ∀ n, P6590552694998140624.a n = (A229852 (n + 1) : ℚ)

end A229852

/-! ## A229852.P2561376161344721177

`record[lcm(3, 2*n+1)²/3]`
-/

namespace A229852.P2561376161344721177
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (2 * n + 1) ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229852.P2561376161344721177

namespace A229852

/-- `record[lcm(3, 2*n+1)²/3]` -/
def P2561376161344721177.Spec : Prop :=
  ∀ n, P2561376161344721177.a n = (A229852 (n + 1) : ℚ)

end A229852

/-! ## A229852.P11125763316245389174

`3*(∑[3^and(1, n)]+n)²`
-/

namespace A229852.P11125763316245389174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A229852.P11125763316245389174

namespace A229852

/-- `3*(∑[3^and(1, n)]+n)²` -/
def P11125763316245389174.Spec : Prop :=
  ∀ n, (P11125763316245389174.a n : ℤ) = A229852 (n + 1)

end A229852

/-! ## A229852.P13614193088421219357

`3*(∑[C(3, and(1, n))]+n)²`
-/

namespace A229852.P13614193088421219357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A229852.P13614193088421219357

namespace A229852

/-- `3*(∑[C(3, and(1, n))]+n)²` -/
def P13614193088421219357.Spec : Prop :=
  ∀ n, (P13614193088421219357.a n : ℤ) = A229852 (n + 1)

end A229852

/-! ## A229852.P16220988784694117407

`3*∑[6-a(n-1)]²` with `a(0)=1, a(1)=4`
-/

namespace A229852.P16220988784694117407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A229852.P16220988784694117407

namespace A229852

/-- `3*∑[6-a(n-1)]²` -/
def P16220988784694117407.Spec : Prop :=
  ∀ n, P16220988784694117407.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P4971618490748866496

`3*∑[A382713(n)]²`
-/

namespace A229852.P4971618490748866496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A229852.P4971618490748866496

namespace A229852

/-- `3*∑[A382713(n)]²` -/
def P4971618490748866496.Spec : Prop :=
  ∀ n, P4971618490748866496.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P724139622581808448

`3*Δ[A032528(n)]²`
-/

namespace A229852.P724139622581808448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n) ^ 2

end

end A229852.P724139622581808448

namespace A229852

/-- `3*Δ[A032528(n)]²` -/
def P724139622581808448.Spec : Prop :=
  ∀ n, P724139622581808448.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P8420082125154574677

`3*A007310(n+1)²`
-/

namespace A229852.P8420082125154574677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007310 (n + 1) ^ 2

end

end A229852.P8420082125154574677

namespace A229852

/-- `3*A007310(n+1)²` -/
def P8420082125154574677.Spec : Prop :=
  ∀ n, P8420082125154574677.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P11182775773186612142

`A128880(n+1)+A001504(n)`
-/

namespace A229852.P11182775773186612142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128880 (n + 1) + A001504 n

end

end A229852.P11182775773186612142

namespace A229852

/-- `A128880(n+1)+A001504(n)` -/
def P11182775773186612142.Spec : Prop :=
  ∀ n, P11182775773186612142.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P4206335720101144358

`lcm(A104777(n+1), A174971(n))`
-/

namespace A229852.P4206335720101144358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104777 (n + 1)) (A174971 n)

end

end A229852.P4206335720101144358

namespace A229852

/-- `lcm(A104777(n+1), A174971(n))` -/
def P4206335720101144358.Spec : Prop :=
  ∀ n, (P4206335720101144358.a n : ℤ) = A229852 (n + 1)

end A229852

/-! ## A229852.P9506530870658260998

`A007310(n+1)*A306771(n+1)`
-/

namespace A229852.P9506530870658260998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A306771 (n + 1)

end

end A229852.P9506530870658260998

namespace A229852

/-- `A007310(n+1)*A306771(n+1)` -/
def P9506530870658260998.Spec : Prop :=
  ∀ n, P9506530870658260998.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P16459419412167591121

`A091999(n+1)²-A007310(n+1)²`
-/

namespace A229852.P16459419412167591121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091999 (n + 1) ^ 2 - A007310 (n + 1) ^ 2

end

end A229852.P16459419412167591121

namespace A229852

/-- `A091999(n+1)²-A007310(n+1)²` -/
def P16459419412167591121.Spec : Prop :=
  ∀ n, P16459419412167591121.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P4731323060423483823

`A047238(n+2)*A306771(n+1)-A306771(n+1)`
-/

namespace A229852.P4731323060423483823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 2) * A306771 (n + 1) - A306771 (n + 1)

end

end A229852.P4731323060423483823

namespace A229852

/-- `A047238(n+2)*A306771(n+1)-A306771(n+1)` -/
def P4731323060423483823.Spec : Prop :=
  ∀ n, P4731323060423483823.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P7822969314991506295

`record[(2*n+1)*A130724(2*n+1)]`
-/

namespace A229852.P7822969314991506295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A130724 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229852.P7822969314991506295

namespace A229852

/-- `record[(2*n+1)*A130724(2*n+1)]` -/
def P7822969314991506295.Spec : Prop :=
  ∀ n, P7822969314991506295.a n = A229852 (n + 1)

end A229852

/-! ## A229852.P10297915434121733795

`A033428(A007310(n+1))`
-/

namespace A229852.P10297915434121733795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 (A007310 (n + 1)).toNat

end

end A229852.P10297915434121733795

namespace A229852

/-- `A033428(A007310(n+1))` -/
def P10297915434121733795.Spec : Prop :=
  ∀ n, P10297915434121733795.a n = A229852 (n + 1)

end A229852

/-!
# A229853: a(n) = 384*n + 1.

The programs for A229853, the canonical program `A229853.P4178487011259274573` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229853 has offset 0).

The definition of A229853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `384*n+1` (program `A229853.P4178487011259274573`, by `A229853.P4178487011259274573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229853.P4178487011259274573

`384*n+1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229853

/-- `384*n+1` -/
def P4178487011259274573.Spec : Prop :=
  ∀ n, (P4178487011259274573.a n : ℤ) = A229853 n

theorem P4178487011259274573.correct : P4178487011259274573.Spec := by
  intro n
  simp only [A229853]

end A229853

/-!
# A229854: Primes of the form 384*k + 1.

The programs for A229854, the canonical program `A229854.P2402401608803055440` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229854 has offset 1).

The definition of A229854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229854.P2576249971824997303

`∩[A142925(n+1), A229853(n)]`
-/

namespace A229854.P2576249971824997303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P2576249971824997303

namespace A229854

/-- `∩[A142925(n+1), A229853(n)]` -/
def P2576249971824997303.Spec : Prop :=
  ∀ n, (P2576249971824997303.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P13664219776057904047

`∩[A208177(n+1), A229853(n)]`
-/

namespace A229854.P13664219776057904047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P13664219776057904047

namespace A229854

/-- `∩[A208177(n+1), A229853(n)]` -/
def P13664219776057904047.Spec : Prop :=
  ∀ n, (P13664219776057904047.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P2402401608803055440

`∩[A142398(n+1), A229853(n)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229854

/-- `∩[A142398(n+1), A229853(n)]` -/
def P2402401608803055440.Spec : Prop :=
  ∀ n, (P2402401608803055440.a n : ℤ) = A229854 (n + 1)

theorem P2402401608803055440.correct : P2402401608803055440.Spec := by
  intro n
  simp only [A229854, Nat.add_sub_cancel]

end A229854

/-! ## A229854.P2765087590425979618

`∩[A142398(n+1), A208177(n+1)]`
-/

namespace A229854.P2765087590425979618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P2765087590425979618

namespace A229854

/-- `∩[A142398(n+1), A208177(n+1)]` -/
def P2765087590425979618.Spec : Prop :=
  ∀ n, (P2765087590425979618.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P6942156055326517482

`∩[A133870(n+1), A229853(n)]`
-/

namespace A229854.P6942156055326517482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P6942156055326517482

namespace A229854

/-- `∩[A133870(n+1), A229853(n)]` -/
def P6942156055326517482.Spec : Prop :=
  ∀ n, (P6942156055326517482.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P14074022750574789435

`∩[A209554(n+1), A229853(n)]`
-/

namespace A229854.P14074022750574789435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P14074022750574789435

namespace A229854

/-- `∩[A209554(n+1), A229853(n)]` -/
def P14074022750574789435.Spec : Prop :=
  ∀ n, (P14074022750574789435.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P6942894240749677856

`∩[A142398(n+1), A157951(n+1)]`
-/

namespace A229854.P6942894240749677856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P6942894240749677856

namespace A229854

/-- `∩[A142398(n+1), A157951(n+1)]` -/
def P6942894240749677856.Spec : Prop :=
  ∀ n, (P6942894240749677856.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P10557027025319543827

`∩[A107008(n+1), A229853(n)]`
-/

namespace A229854.P10557027025319543827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P10557027025319543827

namespace A229854

/-- `∩[A107008(n+1), A229853(n)]` -/
def P10557027025319543827.Spec : Prop :=
  ∀ n, (P10557027025319543827.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P12545567495105600964

`∩[A107008(n+1), A157951(n+1)]`
-/

namespace A229854.P12545567495105600964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P12545567495105600964

namespace A229854

/-- `∩[A107008(n+1), A157951(n+1)]` -/
def P12545567495105600964.Spec : Prop :=
  ∀ n, (P12545567495105600964.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P10666461704097848887

`∩[A107008(n+1), A208177(n+1)]`
-/

namespace A229854.P10666461704097848887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P10666461704097848887

namespace A229854

/-- `∩[A107008(n+1), A208177(n+1)]` -/
def P10666461704097848887.Spec : Prop :=
  ∀ n, (P10666461704097848887.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P16700488299865957050

`∩[A094407(n+1), A229853(n)]`
-/

namespace A229854.P16700488299865957050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P16700488299865957050

namespace A229854

/-- `∩[A094407(n+1), A229853(n)]` -/
def P16700488299865957050.Spec : Prop :=
  ∀ n, (P16700488299865957050.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P5344424725216572853

`∩[A214643(n+1), A229853(n)]`
-/

namespace A229854.P5344424725216572853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P5344424725216572853

namespace A229854

/-- `∩[A214643(n+1), A229853(n)]` -/
def P5344424725216572853.Spec : Prop :=
  ∀ n, (P5344424725216572853.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P15508567382523111790

`p?[16*24*n+1]`
-/

namespace A229854.P15508567382523111790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * (24 * n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229854.P15508567382523111790

namespace A229854

/-- `p?[16*24*n+1]` -/
def P15508567382523111790.Spec : Prop :=
  ∀ n, (P15508567382523111790.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P16189777967229114422

`or(1, p?[A229853(n)])`
-/

namespace A229854.P16189777967229114422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229854.P16189777967229114422

namespace A229854

/-- `or(1, p?[A229853(n)])` -/
def P16189777967229114422.Spec : Prop :=
  ∀ n, P16189777967229114422.a n = A229854 (n + 1)

end A229854

/-! ## A229854.P6993523899015673198

`record[p?[A229853(A008611(n))]]`
-/

namespace A229854.P6993523899015673198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 (A008611 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229854.P6993523899015673198

namespace A229854

/-- `record[p?[A229853(A008611(n))]]` -/
def P6993523899015673198.Spec : Prop :=
  ∀ n, P6993523899015673198.a n = A229854 (n + 1)

end A229854

/-! ## A229854.P13568202430059858662

`p?[A229853(n)]*char[A006068(n)]`
-/

namespace A229854.P13568202430059858662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A229854.P13568202430059858662

namespace A229854

/-- `p?[A229853(n)]*char[A006068(n)]` -/
def P13568202430059858662.Spec : Prop :=
  ∀ n, P13568202430059858662.a n = A229854 (n + 1)

end A229854

/-! ## A229854.P7422742157185961859

`p?[A229853(n)]%A229881(n+1)`
-/

namespace A229854.P7422742157185961859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A229881 (n + 1))

end

end A229854.P7422742157185961859

namespace A229854

/-- `p?[A229853(n)]%A229881(n+1)` -/
def P7422742157185961859.Spec : Prop :=
  ∀ n, P7422742157185961859.a n = A229854 (n + 1)

end A229854

/-! ## A229854.P13307263177517960569

`A000027(p?[A229853(n)])`
-/

namespace A229854.P13307263177517960569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A229854.P13307263177517960569

namespace A229854

/-- `A000027(p?[A229853(n)])` -/
def P13307263177517960569.Spec : Prop :=
  ∀ n, P13307263177517960569.a n = A229854 (n + 1)

end A229854

/-! ## A229854.P4467416354997186514

`∩[A033199(n+1), A229853(n)]`
-/

namespace A229854.P4467416354997186514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229853 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P4467416354997186514

namespace A229854

/-- `∩[A033199(n+1), A229853(n)]` -/
def P4467416354997186514.Spec : Prop :=
  ∀ n, (P4467416354997186514.a n : ℤ) = A229854 (n + 1)

end A229854

/-! ## A229854.P15850053903336651828

`∩[A033199(n+1), A157951(n+1)]`
-/

namespace A229854.P15850053903336651828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229854.P15850053903336651828

namespace A229854

/-- `∩[A033199(n+1), A157951(n+1)]` -/
def P15850053903336651828.Spec : Prop :=
  ∀ n, (P15850053903336651828.a n : ℤ) = A229854 (n + 1)

end A229854

/-!
# A229855: a(n) = 384*n + 257.

The programs for A229855, the canonical program `A229855.P637260149498789696` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229855 has offset 0).

The definition of A229855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `384*n+257` (program `A229855.P637260149498789696`, by `A229855.P637260149498789696.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229855.P637260149498789696

`384*n+257`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229855

/-- `384*n+257` -/
def P637260149498789696.Spec : Prop :=
  ∀ n, (P637260149498789696.a n : ℤ) = A229855 n

theorem P637260149498789696.correct : P637260149498789696.Spec := by
  intro n
  simp only [A229855]

end A229855

/-!
# A229856: Primes of the form 384*k + 257.

The programs for A229856, there is no canonical definition to state claims against.
-/

/-! ## A229856.P3238772795336399404

`∩[A208177(n+1), A301619(n+1)]`
-/

namespace A229856.P3238772795336399404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P3238772795336399404

/-! ## A229856.P589812423828364448

`∩[A142925(n+1), A229855(n)]`
-/

namespace A229856.P589812423828364448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P589812423828364448

/-! ## A229856.P10831889898680360088

`∩[A208177(n+1), A229855(n)]`
-/

namespace A229856.P10831889898680360088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P10831889898680360088

/-! ## A229856.P12660659667504157913

`∩[A301619(n+1), A229855(n)]`
-/

namespace A229856.P12660659667504157913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P12660659667504157913

/-! ## A229856.P12568383525396790832

`∩[A133870(n+1), A229855(n)]`
-/

namespace A229856.P12568383525396790832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P12568383525396790832

/-! ## A229856.P2245498391310223469

`∩[A209554(n+1), A229855(n)]`
-/

namespace A229856.P2245498391310223469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P2245498391310223469

/-! ## A229856.P15884680203831113649

`∩[A142403(n+1), A229855(n)]`
-/

namespace A229856.P15884680203831113649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P15884680203831113649

/-! ## A229856.P5863963542677011507

`∩[A142403(n+1), A208177(n+1)]`
-/

namespace A229856.P5863963542677011507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P5863963542677011507

/-! ## A229856.P15130659990911740923

`∩[A142403(n+1), A157951(n+1)]`
-/

namespace A229856.P15130659990911740923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P15130659990911740923

/-! ## A229856.P16657997192171539611

`∩[A157951(n+1), A301619(n+1)]`
-/

namespace A229856.P16657997192171539611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P16657997192171539611

/-! ## A229856.P2125473509188609806

`∩[A094407(n+1), A229855(n)]`
-/

namespace A229856.P2125473509188609806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P2125473509188609806

/-! ## A229856.P5762533154671905716

`∩[A214643(n+1), A229855(n)]`
-/

namespace A229856.P5762533154671905716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214643 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P5762533154671905716

/-! ## A229856.P15230392017978092791

`∩[A107181(n+1), A229855(n)]`
-/

namespace A229856.P15230392017978092791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P15230392017978092791

/-! ## A229856.P3579478599077290173

`∩[A107181(n+1), A157951(n+1)]`
-/

namespace A229856.P3579478599077290173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P3579478599077290173

/-! ## A229856.P13033018235883889509

`∩[A107181(n+1), A208177(n+1)]`
-/

namespace A229856.P13033018235883889509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229856.P13033018235883889509

/-! ## A229856.P10126893174977189685

`p?[n²%3+8*16*n]`
-/

namespace A229856.P10126893174977189685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + 8 * (16 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229856.P10126893174977189685

/-! ## A229856.P1649985814212921387

`p?[(3*64*n+65)*and(1, n)]`
-/

namespace A229856.P1649985814212921387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * (64 * n) + 65) * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A229856.P1649985814212921387

/-! ## A229856.P3047464172202672397

`p?[A229855(n)]`
-/

namespace A229856.P3047464172202672397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229856.P3047464172202672397

/-! ## A229856.P17035024046748565282

`p?[A157951(3*n+2)]`
-/

namespace A229856.P17035024046748565282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157951 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229856.P17035024046748565282

/-! ## A229856.P9272215558941827149

`p?[4*Δ[A000567(4*n+1)]+1]`
-/

namespace A229856.P9272215558941827149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f2 (n + 1) - f2 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229856.P9272215558941827149

/-!
# A229858: Consider all 120-degree triangles with sides A < B < C. The sequence gives the values of A.

The programs for A229858, the canonical program `A229858.P2210817176196404528` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229858 has offset 1).

The definition of A229858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229858.P2210817176196404528

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=5, a(2)=6, a(3)=7, a(4)=9, a(5)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A229858

/-- `2*a(n-1)-a(n-2)` -/
def P2210817176196404528.Spec : Prop :=
  ∀ n, P2210817176196404528.a n = A229858 (n + 1)

theorem P2210817176196404528.correct : P2210817176196404528.Spec := by
  intro n
  simp only [A229858, Nat.add_sub_cancel]

end A229858

/-!
# A229859: Consider all 120-degree triangles with sides A < B < C. The sequence gives the values of B.

The programs for A229859, there is no canonical definition to state claims against.
-/

/-! ## A229859.P4202982496348748256

`eq[1, char[A195866(n+1)]]`
-/

namespace A229859.P4202982496348748256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229859.P4202982496348748256

/-! ## A229859.P12391903547681788829

`lt[0, char[A195866(A028310(n))]]`
-/

namespace A229859.P12391903547681788829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (A028310 n).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229859.P12391903547681788829

/-! ## A229859.P16950247006599602763

`lt[1, char[A195866(n+1)]*A016777(n)]`
-/

namespace A229859.P16950247006599602763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A016777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P16950247006599602763

/-! ## A229859.P5330807894240390598

`lt[1, char[A195866(n+1)]*A283650(n)]`
-/

namespace A229859.P5330807894240390598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A283650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P5330807894240390598

/-! ## A229859.P7095140141914235723

`lt[1, char[A195866(n+1)]*A044238(n+1)]`
-/

namespace A229859.P7095140141914235723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A044238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P7095140141914235723

/-! ## A229859.P8285104057767272840

`lt[1, char[A195866(n+1)]*A052410(n+1)]`
-/

namespace A229859.P8285104057767272840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A052410 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P8285104057767272840

/-! ## A229859.P1484687543476410677

`lt[1, char[A195866(n+1)]*A099375(n)+1]`
-/

namespace A229859.P1484687543476410677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A099375 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P1484687543476410677

/-! ## A229859.P6748422950525678927

`lt[1, char[A195866(n+1)]*A131843(n)+1]`
-/

namespace A229859.P6748422950525678927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A131843 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P6748422950525678927

/-! ## A229859.P5251856623419858605

`lt[1, char[A195866(n+1)]*A177961(n+1)]`
-/

namespace A229859.P5251856623419858605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A177961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P5251856623419858605

/-! ## A229859.P11598022743124186136

`lt[1, char[A195866(n+1)]*A208177(n+1)]`
-/

namespace A229859.P11598022743124186136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195866 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A208177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A229859.P11598022743124186136

/-!
# A229863: The number of integer partitions P of n such that either the length k of P is not a part or P has at least one part equal to 1 (or both).

The programs for A229863, there is no canonical definition to state claims against.
-/

/-! ## A229863.P2125045814468806559

`char[1]+A000041(n)-A008483(abs(1-n))`
-/

namespace A229863.P2125045814468806559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A000041 n - A008483 |1 - (n : ℤ)|.toNat)

end

end A229863.P2125045814468806559

/-! ## A229863.P2365164250246268614

`A238488(n+1)-Δ[A000041(A233583(n+1))]`
-/

namespace A229863.P2365164250246268614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238488 (n + 1) - (f1 (n + 1) - f1 n)

end

end A229863.P2365164250246268614

/-! ## A229863.P17471136897247260444

`A028310(A000041(n)-A026796(n+2))`
-/

namespace A229863.P17471136897247260444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A000041 n - A026796 (n + 2)).toNat

end

end A229863.P17471136897247260444

/-! ## A229863.P13133515125518765408

`A028310(A238488(n+1)-A002865(n+1))`
-/

namespace A229863.P13133515125518765408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A238488 (n + 1) - A002865 (n + 1)).toNat

end

end A229863.P13133515125518765408

/-! ## A229863.P12456054843562503643

`A028310(A139582(n)/2-A026796(n+2))`
-/

namespace A229863.P12456054843562503643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A139582 n : ℚ) / 2 - (A026796 (n + 2) : ℚ))).toNat

end

end A229863.P12456054843562503643

/-!
# A229865: Number of n X n 0..1 arrays with corresponding row and column sums equal.

The programs for A229865, there is no canonical definition to state claims against.
-/

/-! ## A229865.P3362487573295002678

`A000079(n)*A007080(A028310(n))`
-/

namespace A229865.P3362487573295002678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007080 (A028310 n).toNat

end

end A229865.P3362487573295002678

/-! ## A229865.P762415659919887866

`∑[A011782(n)]*A007080(A028310(n))`
-/

namespace A229865.P762415659919887866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A007080 (A028310 n).toNat

end

end A229865.P762415659919887866

/-! ## A229865.P11311276997764110175

`Δ[A000051(n)]*A007080(A028310(n))`
-/

namespace A229865.P11311276997764110175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007080 (A028310 n).toNat

end

end A229865.P11311276997764110175

/-! ## A229865.P9175220982072392811

`record[A059268(n)]*A007080(A028310(n))`
-/

namespace A229865.P9175220982072392811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A007080 (A028310 n).toNat

end

end A229865.P9175220982072392811

/-! ## A229865.P15284162017601294196

`A007080(A028310(n))*A011782(n+1)`
-/

namespace A229865.P15284162017601294196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007080 (A028310 n).toNat * A011782 (n + 1)

end

end A229865.P15284162017601294196

/-!
# A229866: Number of n X n 0..2 arrays with corresponding row and column sums equal.

The programs for A229866, there is no canonical definition to state claims against.
-/

/-! ## A229866.P5849774537135129086

`A229870(∑[n+2])`
-/

namespace A229866.P5849774537135129086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229866.P5849774537135129086

/-!
# A229867: Number of n X n 0..3 arrays with corresponding row and column sums equal.

The programs for A229867, there is no canonical definition to state claims against.
-/

/-! ## A229867.P17800351026696789365

`A229870(∑[n+3]+1)`
-/

namespace A229867.P17800351026696789365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229867.P17800351026696789365

/-!
# A229868: Number of n X n 0..4 arrays with corresponding row and column sums equal.

The programs for A229868, there is no canonical definition to state claims against.
-/

/-! ## A229868.P15464465570024139161

`A229870(A141214(n+1))`
-/

namespace A229868.P15464465570024139161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (A141214 (n + 1)).toNat

end

end A229868.P15464465570024139161

/-!
# A229869: Number of n X n 0..5 arrays with corresponding row and column sums equal.

The programs for A229869, there is no canonical definition to state claims against.
-/

/-! ## A229869.P10214041111281649331

`A229870(∑[round(sqrt(n²+1))+5]+5)`
-/

namespace A229869.P10214041111281649331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A229869.P10214041111281649331

/-!
# A229870: T(n,k)=Number of n X n 0..k arrays with corresponding row and column sums equal.

The programs for A229870, there is no canonical definition to state claims against.
-/

/-! ## A229870.P3045260361623745778

`A254667(A229417(n+1)*A269583(n+1))`
-/

namespace A229870.P3045260361623745778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A229417 (n + 1) * A269583 (n + 1)).toNat

end

end A229870.P3045260361623745778

/-! ## A229870.P16027673056444991996

`A112318(A212267(n+1))*A269583(n+1)`
-/

namespace A229870.P16027673056444991996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112318 (A212267 (n + 1)).toNat * A269583 (n + 1)

end

end A229870.P16027673056444991996

/-! ## A229870.P1083829126975830987

`A229417(A208130(n+1))*A269583(n+1)`
-/

namespace A229870.P1083829126975830987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229417 (A208130 (n + 1)).toNat * A269583 (n + 1)

end

end A229870.P1083829126975830987

/-!
# A229871: Number of 4X4 0..n arrays with corresponding row and column sums equal.

The programs for A229871, there is no canonical definition to state claims against.
-/

/-! ## A229871.P54448738299054744

`A000583(n+2)*A229418(n+1)`
-/

namespace A229871.P54448738299054744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (n + 2) * A229418 (n + 1)

end

end A229871.P54448738299054744

/-! ## A229871.P17552358220898637384

`A229870(A020752(n+1))`
-/

namespace A229871.P17552358220898637384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (A020752 (n + 1)).toNat

end

end A229871.P17552358220898637384

/-!
# A229872: Number of 5X5 0..n arrays with corresponding row and column sums equal.

The programs for A229872, there is no canonical definition to state claims against.
-/

/-! ## A229872.P15249810858069721741

`A229870(eq[5, A002260(n+1)]+1)`
-/

namespace A229872.P15249810858069721741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229872.P15249810858069721741

/-!
# A229873: An enumeration of all k-tuples containing positive integers.

The programs for A229873, there is no canonical definition to state claims against.
-/

/-! ## A229873.P14901931531362111000

`A214018(ceil(sqrt(A214022(3*n+5))))`
-/

namespace A229873.P14901931531362111000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214018 ⌈Real.sqrt (A214022 (3 * n + 5) : ℝ)⌉.toNat

end

end A229873.P14901931531362111000

/-! ## A229873.P4440553004090353964

`A221646(A106443(n)+A005898(n))`
-/

namespace A229873.P4440553004090353964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221646 (A106443 n + A005898 n).toNat

end

end A229873.P4440553004090353964

/-! ## A229873.P5340597777129083177

`A001221(A001355(2*(n+1))+A060306(n+1)+A030110(n))`
-/

namespace A229873.P5340597777129083177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001355 (2 * (n + 1)) + (A060306 (n + 1) + A030110 n)).toNat

end

end A229873.P5340597777129083177

/-! ## A229873.P1468175793240198855

`A001221(A069467(n+1)+A000081(n))`
-/

namespace A229873.P1468175793240198855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A069467 (n + 1) + A000081 n).toNat

end

end A229873.P1468175793240198855

/-! ## A229873.P6537514213259114952

`gcd(A001221(A080878(n)), A276380(n+1))`
-/

namespace A229873.P6537514213259114952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (A080878 n).toNat) (A276380 (n + 1))

end

end A229873.P6537514213259114952

/-!
# A229874: An enumeration of all sorted k-tuples containing positive integers.

The programs for A229874, there is no canonical definition to state claims against.
-/

/-! ## A229874.P16963022144497194632

`A066099(n+1)+A025441(A000031(n))`
-/

namespace A229874.P16963022144497194632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (n + 1) + A025441 (A000031 n).toNat

end

end A229874.P16963022144497194632

/-! ## A229874.P7616273143454825145

`A243841(A026811(n))+A066099(n+1)`
-/

namespace A229874.P7616273143454825145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243841 (A026811 n).toNat + A066099 (n + 1)

end

end A229874.P7616273143454825145

/-! ## A229874.P10946349809960730489

`A185284(A047969(n))+A125106(n+1)`
-/

namespace A229874.P10946349809960730489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A047969 n).toNat + A125106 (n + 1)

end

end A229874.P10946349809960730489

/-! ## A229874.P6976838662192308388

`A185284(A049997(n))+A125106(n+1)`
-/

namespace A229874.P6976838662192308388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A049997 n).toNat + A125106 (n + 1)

end

end A229874.P6976838662192308388

/-! ## A229874.P9864764768487954957

`A185284(A062545(n))+A125106(n+1)`
-/

namespace A229874.P9864764768487954957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A062545 n).toNat + A125106 (n + 1)

end

end A229874.P9864764768487954957

/-!
# A229875: Iterated sum-of-digits of palindromic prime; or digital root of palindromic prime.

The programs for A229875, there is no canonical definition to state claims against.
-/

/-! ## A229875.P4268279661178390627

`A010888(A002385(n+1))`
-/

namespace A229875.P4268279661178390627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A002385 (n + 1)).toNat

end

end A229875.P4268279661178390627

/-! ## A229875.P1738812452053179002

`dr(A230199(n+1))`
-/

namespace A229875.P1738812452053179002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A230199 (n + 1))

end

end A229875.P1738812452053179002

/-! ## A229875.P4990306467339954428

`dr(A037010(n)+a(n-1))` with `a(0)=2`
-/

namespace A229875.P4990306467339954428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.digitalRoot (A037010 n + (a (n - 1) : ℤ))

end

end A229875.P4990306467339954428

/-! ## A229875.P1774654464897017932

`A002385(A000027(n+1))%9`
-/

namespace A229875.P1774654464897017932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002385 (A000027 (n + 1)).toNat) 9

end

end A229875.P1774654464897017932

/-! ## A229875.P10929118713861855469

`A007953(∑{digits}[A002385(n+1), #])%9`
-/

namespace A229875.P10929118713861855469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum) 9

end

end A229875.P10929118713861855469

/-! ## A229875.P4838261520578339296

`A007953(∑{digits}[∑{digits}[A002385(n+1), #], #])`
-/

namespace A229875.P4838261520578339296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A229875.P4838261520578339296

/-! ## A229875.P9140909360250027752

`A007953(A007953(∑{digits}[A002385(n+1), #]))`
-/

namespace A229875.P9140909360250027752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A007953 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum).toNat

end

end A229875.P9140909360250027752

/-! ## A229875.P3083465776767358329

`dr(A069217(n+2))`
-/

namespace A229875.P3083465776767358329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 2))

end

end A229875.P3083465776767358329

/-! ## A229875.P14769050087037273002

`dr(p?[A002113(n+1)])`
-/

namespace A229875.P14769050087037273002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P14769050087037273002

/-! ## A229875.P10624339968145009254

`dr(p?[A033620(n+1)])`
-/

namespace A229875.P10624339968145009254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P10624339968145009254

/-! ## A229875.P15786072974791105317

`dr(p?[A061917(n+1)])`
-/

namespace A229875.P15786072974791105317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P15786072974791105317

/-! ## A229875.P5535776970840893245

`dr(p?[A062687(n+1)])`
-/

namespace A229875.P5535776970840893245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P5535776970840893245

/-! ## A229875.P14067359807734232324

`dr(p?[A071251(n+1)])`
-/

namespace A229875.P14067359807734232324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P14067359807734232324

/-! ## A229875.P9376583576569531014

`dr(p?[A072299(n+1)])`
-/

namespace A229875.P9376583576569531014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P9376583576569531014

/-! ## A229875.P4631020647912082969

`dr(p?[A073328(n+1)])`
-/

namespace A229875.P4631020647912082969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P4631020647912082969

/-! ## A229875.P3062891469727130754

`dr(p?[A075800(n+1)])`
-/

namespace A229875.P3062891469727130754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P3062891469727130754

/-! ## A229875.P4663921681629716264

`dr(p?[A080716(n+1)])`
-/

namespace A229875.P4663921681629716264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P4663921681629716264

/-! ## A229875.P18077008197752763183

`dr(p?[A083136(n+1)])`
-/

namespace A229875.P18077008197752763183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083136 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P18077008197752763183

/-! ## A229875.P17364309316589937140

`dr(p?[A083137(n+1)])`
-/

namespace A229875.P17364309316589937140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083137 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A229875.P17364309316589937140

/-!
# A229876: Palindromic prime numbers == 2 (mod 9).

The programs for A229876, there is no canonical definition to state claims against.
-/

/-! ## A229876.P13796068774966757731

`A002385(eq[2, dr(A002385(n+1))]+1)`
-/

namespace A229876.P13796068774966757731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A229876.P13796068774966757731

/-! ## A229876.P6060099439525094053

`A002385(eq[2, A229875(n+1)]+1)`
-/

namespace A229876.P6060099439525094053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229876.P6060099439525094053

/-! ## A229876.P12007027119716395426

`A002385(eq[2, dr(A069217(n+1))])`
-/

namespace A229876.P12007027119716395426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229876.P12007027119716395426

/-! ## A229876.P9350413012325826827

`∩[A002385(n+1), A017185(n)]`
-/

namespace A229876.P9350413012325826827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229876.P9350413012325826827

/-!
# A229877: Palindromic prime numbers == 1 (mod 9).

The programs for A229877, there is no canonical definition to state claims against.
-/

/-! ## A229877.P5172927413336951116

`A002385(eq[1, dr(A002385(n+1))]+1)`
-/

namespace A229877.P5172927413336951116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A229877.P5172927413336951116

/-! ## A229877.P18055514759631766189

`A002385(lt[3*dr(A002385(n+2))+1, 6]+2)`
-/

namespace A229877.P18055514759631766189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.digitalRoot (A002385 (n + 2)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2)

end

end A229877.P18055514759631766189

/-! ## A229877.P12619790885142887729

`A002385(eq[1, A229875(n+1)]+1)`
-/

namespace A229877.P12619790885142887729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229877.P12619790885142887729

/-! ## A229877.P6881830046481103861

`record[root(A002385(n+9), A229875(n+9))]`
-/

namespace A229877.P6881830046481103861
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002385 (n + 9) : ℝ) ^ (1 / (A229875 (n + 9) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229877.P6881830046481103861

/-!
# A229879: Palindromic prime numbers == 5 (mod 9).

The programs for A229879, there is no canonical definition to state claims against.
-/

/-! ## A229879.P13773744881788224018

`A002385(eq[5, dr(A002385(n+1))]+1)`
-/

namespace A229879.P13773744881788224018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A229879.P13773744881788224018

/-! ## A229879.P6325279675359642068

`A002385(eq[5, dr(A069217(n+1))])`
-/

namespace A229879.P6325279675359642068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229879.P6325279675359642068

/-! ## A229879.P11158937545340557967

`∩[A002113(n+1), A061240(n+1)]`
-/

namespace A229879.P11158937545340557967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229879.P11158937545340557967

/-! ## A229879.P10063410813955594989

`∩[A061240(n+1), A071251(n+1)]`
-/

namespace A229879.P10063410813955594989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229879.P10063410813955594989

/-!
# A229880: Palindromic prime numbers == 7 (mod 9).

The programs for A229880, there is no canonical definition to state claims against.
-/

/-! ## A229880.P2149893273167525167

`A002385(eq[7, dr(A002385(n+1))]+1)`
-/

namespace A229880.P2149893273167525167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A229880.P2149893273167525167

/-! ## A229880.P16168688397277824864

`A002385(eq[7, A229875(n+1)]+1)`
-/

namespace A229880.P16168688397277824864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A229880.P16168688397277824864

/-! ## A229880.P16052361468730265002

`A002385(eq[7, dr(A069217(n+1))])`
-/

namespace A229880.P16052361468730265002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229880.P16052361468730265002

/-! ## A229880.P8552758637081650972

`∩[A002113(n+1), A061241(n+1)]`
-/

namespace A229880.P8552758637081650972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229880.P8552758637081650972

/-!
# A229881: Palindromic prime numbers == 8 (mod 9).

The programs for A229881, there is no canonical definition to state claims against.
-/

/-! ## A229881.P6647806161707150853

`A002385(eq[8, dr(A002385(n+1))]+1)`
-/

namespace A229881.P6647806161707150853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A229881.P6647806161707150853

/-! ## A229881.P12041676773378355450

`A002385(lt[7, dr(A069217(n+1))])`
-/

namespace A229881.P12041676773378355450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A229881.P12041676773378355450

/-! ## A229881.P12234768189990176097

`A002385(eq[8, dr(A069217(n+1))])`
-/

namespace A229881.P12234768189990176097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A069217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A229881.P12234768189990176097

/-!
# A229882: Squarefree oblong numbers.

The programs for A229882, the canonical program `A229882.P2075050429214835395` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229882 has offset 1).

The definition of A229882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229882.P2075050429214835395

`A007674(n+1)²+A007674(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A229882

/-- `A007674(n+1)²+A007674(n+1)` -/
def P2075050429214835395.Spec : Prop :=
  ∀ n, P2075050429214835395.a n = A229882 (n + 1)

theorem P2075050429214835395.correct : P2075050429214835395.Spec := by
  intro n
  simp only [A229882, Nat.add_sub_cancel]

end A229882

/-! ## A229882.P11607625336563066249

`floor((A295243(n+1)/2)²)`
-/

namespace A229882.P11607625336563066249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A295243 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A229882.P11607625336563066249

namespace A229882

/-- `floor((A295243(n+1)/2)²)` -/
def P11607625336563066249.Spec : Prop :=
  ∀ n, P11607625336563066249.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P10940693319176017063

`record[A007913(n+1)*A007913(n+2)]`
-/

namespace A229882.P10940693319176017063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (n + 1) * A007913 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P10940693319176017063

namespace A229882

/-- `record[A007913(n+1)*A007913(n+2)]` -/
def P10940693319176017063.Spec : Prop :=
  ∀ n, P10940693319176017063.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P17600857676540371283

`record[A083346(n+1)*A083346(n+2)]`
-/

namespace A229882.P17600857676540371283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) * A083346 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P17600857676540371283

namespace A229882

/-- `record[A083346(n+1)*A083346(n+2)]` -/
def P17600857676540371283.Spec : Prop :=
  ∀ n, P17600857676540371283.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P9313099128787998382

`record[lcm(A007913(n+1), A007947(n+2))]`
-/

namespace A229882.P9313099128787998382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007913 (n + 1)) (A007947 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P9313099128787998382

namespace A229882

/-- `record[lcm(A007913(n+1), A007947(n+2))]` -/
def P9313099128787998382.Spec : Prop :=
  ∀ n, (P9313099128787998382.a n : ℤ) = A229882 (n + 1)

end A229882

/-! ## A229882.P5904895677693589078

`record[A007947(n+1)*A007947(A007947(n+1)+1)]`
-/

namespace A229882.P5904895677693589078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007947 (A007947 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P5904895677693589078

namespace A229882

/-- `record[A007947(n+1)*A007947(A007947(n+1)+1)]` -/
def P5904895677693589078.Spec : Prop :=
  ∀ n, P5904895677693589078.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P6300633500391862432

`(A295243(n+1)-A007674(n+1))*A007674(n+1)`
-/

namespace A229882.P6300633500391862432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A295243 (n + 1) - A007674 (n + 1)) * A007674 (n + 1)

end

end A229882.P6300633500391862432

namespace A229882

/-- `(A295243(n+1)-A007674(n+1))*A007674(n+1)` -/
def P6300633500391862432.Spec : Prop :=
  ∀ n, P6300633500391862432.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P15120520390879445066

`2*A000217(A007674(n+1))`
-/

namespace A229882.P15120520390879445066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (A007674 (n + 1)).toNat

end

end A229882.P15120520390879445066

namespace A229882

/-- `2*A000217(A007674(n+1))` -/
def P15120520390879445066.Spec : Prop :=
  ∀ n, P15120520390879445066.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P8986269664955554882

`record[A055231(n+1)*A055231(n+2)]`
-/

namespace A229882.P8986269664955554882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A055231 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P8986269664955554882

namespace A229882

/-- `record[A055231(n+1)*A055231(n+2)]` -/
def P8986269664955554882.Spec : Prop :=
  ∀ n, P8986269664955554882.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P8206671216178618012

`A368249(A375927(n+1)+1)`
-/

namespace A229882.P8206671216178618012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368249 (A375927 (n + 1) + 1).toNat

end

end A229882.P8206671216178618012

namespace A229882

/-- `A368249(A375927(n+1)+1)` -/
def P8206671216178618012.Spec : Prop :=
  ∀ n, P8206671216178618012.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P10940286427782700071

`record[A083481(n+1)]`
-/

namespace A229882.P10940286427782700071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083481 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P10940286427782700071

namespace A229882

/-- `record[A083481(n+1)]` -/
def P10940286427782700071.Spec : Prop :=
  ∀ n, P10940286427782700071.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P16752110310590234798

`2*C(record[A075424(n+2)]+2, 2)`
-/

namespace A229882.P16752110310590234798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075424 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2).toNat 2

end

end A229882.P16752110310590234798

namespace A229882

/-- `2*C(record[A075424(n+2)]+2, 2)` -/
def P16752110310590234798.Spec : Prop :=
  ∀ n, (P16752110310590234798.a n : ℤ) = A229882 (n + 1)

end A229882

/-! ## A229882.P11559976645535871452

`A002378(A007674(n+1))`
-/

namespace A229882.P11559976645535871452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A007674 (n + 1)).toNat

end

end A229882.P11559976645535871452

namespace A229882

/-- `A002378(A007674(n+1))` -/
def P11559976645535871452.Spec : Prop :=
  ∀ n, P11559976645535871452.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P2140209153515000475

`record[A078636(A005117(n+1))]`
-/

namespace A229882.P2140209153515000475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078636 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P2140209153515000475

namespace A229882

/-- `record[A078636(A005117(n+1))]` -/
def P2140209153515000475.Spec : Prop :=
  ∀ n, P2140209153515000475.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P5868879360082849116

`record[A078636(A008683(n+1)²+n)]`
-/

namespace A229882.P5868879360082849116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078636 (A008683 (n + 1) ^ 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P5868879360082849116

namespace A229882

/-- `record[A078636(A008683(n+1)²+n)]` -/
def P5868879360082849116.Spec : Prop :=
  ∀ n, P5868879360082849116.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P10038223245471499268

`record[(A075424(n+2)+1)*A004443(n)]`
-/

namespace A229882.P10038223245471499268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075424 (n + 2) + 1) * A004443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P10038223245471499268

namespace A229882

/-- `record[(A075424(n+2)+1)*A004443(n)]` -/
def P10038223245471499268.Spec : Prop :=
  ∀ n, P10038223245471499268.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P18196085078683895593

`record[A071975(n+1)*A071975(n+2)]`
-/

namespace A229882.P18196085078683895593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1) * A071975 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P18196085078683895593

namespace A229882

/-- `record[A071975(n+1)*A071975(n+2)]` -/
def P18196085078683895593.Spec : Prop :=
  ∀ n, P18196085078683895593.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P5236417069856757689

`record[A182938(n+1)*A182938(n+2)]`
-/

namespace A229882.P5236417069856757689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182938 (n + 1) * A182938 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P5236417069856757689

namespace A229882

/-- `record[A182938(n+1)*A182938(n+2)]` -/
def P5236417069856757689.Spec : Prop :=
  ∀ n, P5236417069856757689.a n = A229882 (n + 1)

end A229882

/-! ## A229882.P4794120790155326487

`record[lcm(A039696(n+1), A190846(n+1))]`
-/

namespace A229882.P4794120790155326487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A039696 (n + 1)) (A190846 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P4794120790155326487

namespace A229882

/-- `record[lcm(A039696(n+1), A190846(n+1))]` -/
def P4794120790155326487.Spec : Prop :=
  ∀ n, (P4794120790155326487.a n : ℤ) = A229882 (n + 1)

end A229882

/-! ## A229882.P17277139625692605571

`record[A068310(2*n+3)]`
-/

namespace A229882.P17277139625692605571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068310 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229882.P17277139625692605571

namespace A229882

/-- `record[A068310(2*n+3)]` -/
def P17277139625692605571.Spec : Prop :=
  ∀ n, P17277139625692605571.a n = A229882 (n + 1)

end A229882

/-!
# A229884: Number of 3 up, 3 down permutations of [n].

The programs for A229884, there is no canonical definition to state claims against.
-/

/-! ## A229884.P2931761471714725945

`A229892(∑[C(n, a(n-1))]+1)` with `a(0)=3, a(1)=4`
-/

namespace A229884.P2931761471714725945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229884.P2931761471714725945

/-! ## A229884.P15244242094419905261

`A229892(A077169(n+1)-2)`
-/

namespace A229884.P15244242094419905261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A077169 (n + 1) - 2).toNat

end

end A229884.P15244242094419905261

/-! ## A229884.P5011064040007954638

`A229892(A184218(n+1)+4)`
-/

namespace A229884.P5011064040007954638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A184218 (n + 1) + 4).toNat

end

end A229884.P5011064040007954638

/-! ## A229884.P9465982522199575957

`A229892((A028387(n)+1)%A046691(n))`
-/

namespace A229884.P9465982522199575957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.tmod (A028387 n + 1) (A046691 n)).toNat

end

end A229884.P9465982522199575957

/-! ## A229884.P4083604768498418175

`A229892(A152950(n+1)%A000051(n))`
-/

namespace A229884.P4083604768498418175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.tmod (A152950 (n + 1)) (A000051 n)).toNat

end

end A229884.P4083604768498418175

/-! ## A229884.P12768641159488144756

`A229892(and(A103456(n), A152950(n+1)))`
-/

namespace A229884.P12768641159488144756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.land (A103456 n) (A152950 (n + 1))).toNat

end

end A229884.P12768641159488144756

/-! ## A229884.P2513030547383836704

`A229892(and(A133263(n)+1, A255047(n)))`
-/

namespace A229884.P2513030547383836704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.land (A133263 n + 1) (A255047 n)).toNat

end

end A229884.P2513030547383836704

/-! ## A229884.P13378715791505446388

`A229892(∑[A233583(n+1)]%A000079(n))`
-/

namespace A229884.P13378715791505446388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000079 n)).toNat

end

end A229884.P13378715791505446388

/-! ## A229884.P17974572087750224238

`A229892(A034856(n+1)-A004278(n+1))`
-/

namespace A229884.P17974572087750224238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A034856 (n + 1) - A004278 (n + 1)).toNat

end

end A229884.P17974572087750224238

/-!
# A229885: Number of 4 up, 4 down permutations of [n].

The programs for A229885, there is no canonical definition to state claims against.
-/

/-! ## A229885.P3402835930250254609

`A229892(∑[C(n, a(n-1))])` with `a(0)=1, a(1)=4, a(2)=4, a(3)=4`
-/

namespace A229885.P3402835930250254609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 4, 4] fun n f1 =>
  Nat.choose n (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229885.P3402835930250254609

/-! ## A229885.P9390179112896460494

`A229892(A184218(n+1)+5)`
-/

namespace A229885.P9390179112896460494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A184218 (n + 1) + 5).toNat

end

end A229885.P9390179112896460494

/-! ## A229885.P6565979654265161438

`A229892(A077169(n)-1+n)`
-/

namespace A229885.P6565979654265161438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A077169 n - 1 + (n : ℤ)).toNat

end

end A229885.P6565979654265161438

/-! ## A229885.P1834876306793627568

`A229892(n-(1-A077169(n)))`
-/

namespace A229885.P1834876306793627568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 ((n : ℤ) - (1 - A077169 n)).toNat

end

end A229885.P1834876306793627568

/-! ## A229885.P14684481318003619138

`A229892(A158411(n)+A000217(n))`
-/

namespace A229885.P14684481318003619138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (A158411 n + A000217 n).toNat

end

end A229885.P14684481318003619138

/-! ## A229885.P16192267188352214989

`A229892(A145018(n+1)%A007272(n))`
-/

namespace A229885.P16192267188352214989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229892 (Int.tmod (A145018 (n + 1)) (A007272 n)).toNat

end

end A229885.P16192267188352214989

/-!
# A229886: Number of 5 up, 5 down permutations of [n].

The programs for A229886, there is no canonical definition to state claims against.
-/

/-! ## A229886.P4162761129408435408

`A155582(A033438(n+1))`
-/

namespace A229886.P4162761129408435408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155582 (A033438 (n + 1)).toNat

end

end A229886.P4162761129408435408

/-! ## A229886.P1376799138416723998

`A008480(A195458(n+2))`
-/

namespace A229886.P1376799138416723998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A195458 (n + 2)).toNat

end

end A229886.P1376799138416723998

/-! ## A229886.P7621697181615356664

`A028310(C(A250266(n), 5))`
-/

namespace A229886.P7621697181615356664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose (A250266 n).toNat 5)

end

end A229886.P7621697181615356664

/-! ## A229886.P12477980330495592788

`abs(A118433(∑[A269165(n)]))`
-/

namespace A229886.P12477980330495592788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118433 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A229886.P12477980330495592788

/-! ## A229886.P4146431377474790408

`A285572(∏[A096625(n+1)])`
-/

namespace A229886.P4146431377474790408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229886.P4146431377474790408

/-!
# A229887: Number of 6 up, 6 down permutations of [n].

The programs for A229887, there is no canonical definition to state claims against.
-/

/-! ## A229887.P10209489670582072130

`A090706(A133024(n+1))`
-/

namespace A229887.P10209489670582072130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090706 (A133024 (n + 1)).toNat

end

end A229887.P10209489670582072130

/-! ## A229887.P6994883465108746711

`A063265(A095805(n)-n+1)`
-/

namespace A229887.P6994883465108746711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063265 (A095805 n - (n : ℤ) + 1).toNat

end

end A229887.P6994883465108746711

/-! ## A229887.P7235553138098426694

`A256595(A033439(n))`
-/

namespace A229887.P7235553138098426694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256595 (A033439 n).toNat

end

end A229887.P7235553138098426694

/-! ## A229887.P4551474502339166225

`A173265(A033439(n+1))`
-/

namespace A229887.P4551474502339166225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173265 (A033439 (n + 1)).toNat

end

end A229887.P4551474502339166225

/-! ## A229887.P3332589035243358040

`A173265(A194082(n+1))`
-/

namespace A229887.P3332589035243358040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173265 (A194082 (n + 1)).toNat

end

end A229887.P3332589035243358040

/-!
# A229888: Number of 7 up, 7 down permutations of [n].

The programs for A229888, there is no canonical definition to state claims against.
-/

/-! ## A229888.P10170614972881321741

`A123108(2*(A306721(n)-1))`
-/

namespace A229888.P10170614972881321741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * (A306721 n - 1)).toNat

end

end A229888.P10170614972881321741

/-! ## A229888.P2403501917020443190

`C(A070939(round(2^(n-2))), A263364(n))`
-/

namespace A229888.P2403501917020443190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat).toNat (A263364 n).toNat

end

end A229888.P2403501917020443190

/-! ## A229888.P2391837958107229708

`C(A070939(A052535(n)), A218470(n))`
-/

namespace A229888.P2391837958107229708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070939 (A052535 n).toNat).toNat (A218470 n).toNat

end

end A229888.P2391837958107229708

/-! ## A229888.P18117059728144336853

`C(A070939(A374681(n)), A218470(n))`
-/

namespace A229888.P18117059728144336853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A070939 (A374681 n).toNat).toNat (A218470 n).toNat

end

end A229888.P18117059728144336853

/-! ## A229888.P8801996250840535293

`C(A056239(ceil(2^(n-1))), n-floor(n^(1/3))^3)`
-/

namespace A229888.P8801996250840535293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056239 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat ((n : ℤ) - ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ ^ 3).toNat

end

end A229888.P8801996250840535293

/-!
# A229889: Number of 8 up, 8 down permutations of [n].

The programs for A229889, there is no canonical definition to state claims against.
-/

/-! ## A229889.P1784737990583048940

`A111219(∏[A146102(n-∑{digits}[n, #])])`
-/

namespace A229889.P1784737990583048940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146102 (n - ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111219 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229889.P1784737990583048940

/-! ## A229889.P2004047071745927554

`C(A001222(ceil(2^(n-1))), A053392(n))`
-/

namespace A229889.P2004047071745927554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat (A053392 n).toNat

end

end A229889.P2004047071745927554

/-! ## A229889.P2993486931145205772

`C(A001222(ceil(2^(n-1))), A131242(n))`
-/

namespace A229889.P2993486931145205772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat (A131242 n).toNat

end

end A229889.P2993486931145205772

/-! ## A229889.P8637610697026630059

`C(A051903(ceil(2^(n-1))), A131242(n))`
-/

namespace A229889.P8637610697026630059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A051903 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat (A131242 n).toNat

end

end A229889.P8637610697026630059

/-! ## A229889.P3371061607612434871

`C(A052409(A011782(n)), A053392(n))`
-/

namespace A229889.P3371061607612434871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052409 (A011782 n).toNat).toNat (A053392 n).toNat

end

end A229889.P3371061607612434871

/-!
# A229890: Number of 9 up, 9 down permutations of [n].

The programs for A229890, there is no canonical definition to state claims against.
-/

/-! ## A229890.P2893826917681901439

`A007318(∑[abs((floor(n/10)^(n+1))^7-n)])`
-/

namespace A229890.P2893826917681901439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(⌊(n : ℚ) / 10⌋ ^ (n + 1)) ^ 7 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229890.P2893826917681901439

/-! ## A229890.P13198453894478511127

`C(A095791(A000032(n)), A066568(n))`
-/

namespace A229890.P13198453894478511127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095791 (A000032 n).toNat).toNat (A066568 n).toNat

end

end A229890.P13198453894478511127

/-! ## A229890.P1706064468588433972

`C(A205115(A000032(n)), A257850(n))`
-/

namespace A229890.P1706064468588433972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A205115 (A000032 n).toNat).toNat (A257850 n).toNat

end

end A229890.P1706064468588433972

/-! ## A229890.P2313992015222237107

`C(A001222(ceil(2^(n-1))), n-∑{digits}[n, #])`
-/

namespace A229890.P2313992015222237107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A229890.P2313992015222237107

/-! ## A229890.P2453922780970071553

`A128936(A244172(n+9)+n-1)`
-/

namespace A229890.P2453922780970071553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128936 (A244172 (n + 9) + ((n : ℤ) - 1)).toNat

end

end A229890.P2453922780970071553

/-!
# A229891: Number of 10 up, 10 down permutations of [n].

The programs for A229891, there is no canonical definition to state claims against.
-/

/-! ## A229891.P16571305964533485018

`A007318(∑[A320486(n)%A304243(n+1)])`
-/

namespace A229891.P16571305964533485018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320486 n) (A304243 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229891.P16571305964533485018

/-! ## A229891.P13398808366421347036

`A111221(∏[∏[A329314(2*(n+1))]])`
-/

namespace A229891.P13398808366421347036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111221 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A229891.P13398808366421347036

/-! ## A229891.P1280598401305278347

`A074909(A033443(n))%A364565(3*(n+1))`
-/

namespace A229891.P1280598401305278347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074909 (A033443 n).toNat) (A364565 (3 * (n + 1)))

end

end A229891.P1280598401305278347

/-! ## A229891.P16377194046155453368

`A028310(C(abs(1-n), 10))`
-/

namespace A229891.P16377194046155453368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.choose |1 - (n : ℤ)|.toNat 10)

end

end A229891.P16377194046155453368

/-! ## A229891.P12325424792576894642

`C(A001222(ceil(2^(n-1))), n%11*floor(n/11))`
-/

namespace A229891.P12325424792576894642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001222 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat).toNat (((n % 11 : ℕ) : ℤ) * ⌊(n : ℚ) / 11⌋).toNat

end

end A229891.P12325424792576894642

/-!
# A229892: Number T(n,k) of k up, k down permutations of [n]; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A229892, there is no canonical definition to state claims against.
-/

/-! ## A229892.P8753673369454838148

`A262125(n)+A016389(A201637(n))`
-/

namespace A229892.P8753673369454838148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 n + A016389 (A201637 n).toNat

end

end A229892.P8753673369454838148

/-! ## A229892.P9126044229162461343

`A262125(n)+A210709(A173018(n))`
-/

namespace A229892.P9126044229162461343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 n + A210709 (A173018 n).toNat

end

end A229892.P9126044229162461343

/-! ## A229892.P15336519686016392548

`A262125(n*A086764(A064879(n)))`
-/

namespace A229892.P15336519686016392548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 ((n : ℤ) * A086764 (A064879 n).toNat).toNat

end

end A229892.P15336519686016392548

/-! ## A229892.P6214963496829977376

`A262125(n*A123125(A258829(n)))`
-/

namespace A229892.P6214963496829977376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262125 ((n : ℤ) * A123125 (A258829 n).toNat).toNat

end

end A229892.P6214963496829977376

/-! ## A229892.P11752033149197143245

`A262125(n)^A086764(A064879(n))`
-/

namespace A229892.P11752033149197143245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262125 n : ℚ) ^ (A086764 (A064879 n).toNat : ℤ)

end

end A229892.P11752033149197143245

/-!
# A229893: Expansion of q^2 * f(-q) * f(-q^4) * f(-q^16) * f(-q^2, -q^14) in powers of q where f() is a Ramanujan theta function.

The programs for A229893, there is no canonical definition to state claims against.
-/

/-! ## A229893.P6146255086569412895

`-(A227618(2*(n+2))+A227618(n+2))`
-/

namespace A229893.P6146255086569412895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A227618 (2 * (n + 2)) + A227618 (n + 2))

end

end A229893.P6146255086569412895

/-! ## A229893.P6268212891682237955

`A227618(4*(n+2))/2`
-/

namespace A229893.P6268212891682237955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227618 (4 * (n + 2)) : ℚ) / 2

end

end A229893.P6268212891682237955

/-! ## A229893.P15893499509415165674

`floor(A227618(A008574(n+2))/2)`
-/

namespace A229893.P15893499509415165674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227618 (A008574 (n + 2)).toNat : ℚ) / 2⌋

end

end A229893.P15893499509415165674

/-! ## A229893.P17705840007792235788

`(A227618(A008574(n+2))/2)%A002733(n+1)`
-/

namespace A229893.P17705840007792235788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A227618 (A008574 (n + 2)).toNat : ℚ) / 2)) (A002733 (n + 1))

end

end A229893.P17705840007792235788

/-! ## A229893.P10324218799275645791

`2^A008683(A020484(n))*A227618(A008574(n+2))`
-/

namespace A229893.P10324218799275645791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A227618 (A008574 (n + 2)).toNat : ℚ)

end

end A229893.P10324218799275645791

/-!
# A229894: Expansion of q^2 * eta(q) / eta(q^49) in powers of q.

The programs for A229894, there is no canonical definition to state claims against.
-/

/-! ## A229894.P3412589354134840139

`A010815(lt[A179009(n), 18])`
-/

namespace A229894.P3412589354134840139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179009 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P3412589354134840139

/-! ## A229894.P13715148744252539881

`A010815(n%A017765(n))`
-/

namespace A229894.P13715148744252539881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (Int.tmod (n : ℤ) (A017765 n)).toNat

end

end A229894.P13715148744252539881

/-! ## A229894.P14500262566816495943

`A010815(lt[abs(A145727(n)), 9])`
-/

namespace A229894.P14500262566816495943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145727 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P14500262566816495943

/-! ## A229894.P4854488134923151834

`A010815(lt[abs(A145782(n)), 9])`
-/

namespace A229894.P4854488134923151834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145782 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P4854488134923151834

/-! ## A229894.P5281870681433203512

`A010815(lt[A078134(n+2), 7])`
-/

namespace A229894.P5281870681433203512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078134 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P5281870681433203512

/-! ## A229894.P9172113925147366063

`A010815(lt[A331256(n+1), 8])`
-/

namespace A229894.P9172113925147366063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331256 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P9172113925147366063

/-! ## A229894.P1706041113358808150

`A010815(lt[A048865(n+1), 14])`
-/

namespace A229894.P1706041113358808150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P1706041113358808150

/-! ## A229894.P726012809339839820

`A010815(lt[A275892(n+2), 14])`
-/

namespace A229894.P726012809339839820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275892 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A229894.P726012809339839820

/-! ## A229894.P4876454319275133120

`A257628(Δ[n²]²)-A257628(n)`
-/

namespace A229894.P4876454319275133120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat - A257628 n

end

end A229894.P4876454319275133120

/-! ## A229894.P14228098808684333375

`or(A010815(n), A121373(Δ[n²]²))`
-/

namespace A229894.P14228098808684333375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010815 n) (A121373 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat)

end

end A229894.P14228098808684333375

/-!
# A229895: k-tuple sizes in A229873.

The programs for A229895, there is no canonical definition to state claims against.
-/

/-! ## A229895.P2884597962488853429

`A086858(A004521(n)+A007318(n))`
-/

namespace A229895.P2884597962488853429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086858 (A004521 n + A007318 n).toNat

end

end A229895.P2884597962488853429

/-! ## A229895.P8866743931713833382

`A113473(gcd(A100617(n+1), A137496(n+1)))`
-/

namespace A229895.P8866743931713833382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (Int.gcd (A100617 (n + 1)) (A137496 (n + 1)))

end

end A229895.P8866743931713833382

/-! ## A229895.P12971534165967384894

`A004218(A285471(∑[n+2]))`
-/

namespace A229895.P12971534165967384894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A285471 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A229895.P12971534165967384894

/-! ## A229895.P6516216043623410652

`A076649(p?[A005843(n)-A163820(n+1)])`
-/

namespace A229895.P6516216043623410652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A163820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076649 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A229895.P6516216043623410652

/-! ## A229895.P6032718327538827916

`A245760(or(A014553(n+1), A182619(n+1)))`
-/

namespace A229895.P6032718327538827916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245760 (Int.lor (A014553 (n + 1)) (A182619 (n + 1))).toNat

end

end A229895.P6032718327538827916

/-!
# A229896: Sizes of logical groups of the same integer in A229895.

The programs for A229896, there is no canonical definition to state claims against.
-/

/-! ## A229896.P13970985205098403119

`A056556(A017533(n)^A002262(n))`
-/

namespace A229896.P13970985205098403119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway ((A017533 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A229896.P13970985205098403119

/-! ## A229896.P16313820803229357929

`A056556(A017533(n)^A163351(n))`
-/

namespace A229896.P16313820803229357929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway ((A017533 n : ℚ) ^ (A163351 n : ℤ))).toNat

end

end A229896.P16313820803229357929

/-! ## A229896.P9077234682738946704

`A056556(A017533(n)^A166352(n))`
-/

namespace A229896.P9077234682738946704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway ((A017533 n : ℚ) ^ (A166352 n : ℤ))).toNat

end

end A229896.P9077234682738946704

/-! ## A229896.P13404069805651148573

`A056556(A017533(n)^A180662(n))`
-/

namespace A229896.P13404069805651148573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (SequenceMachineLib.roundAway ((A017533 n : ℚ) ^ (A180662 n : ℤ))).toNat

end

end A229896.P13404069805651148573

/-!
# A229897: Alternative version of A229874 with tuple values in increasing order.

The programs for A229897, there is no canonical definition to state claims against.
-/

/-! ## A229897.P403759832391329618

`A337259(n+1)+A083339(A283980(3*n+1))`
-/

namespace A229897.P403759832391329618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 (n + 1) + A083339 (A283980 (3 * n + 1)).toNat

end

end A229897.P403759832391329618

/-! ## A229897.P7384080834036533701

`A124735(n+1)+A006466(A014495(n))`
-/

namespace A229897.P7384080834036533701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124735 (n + 1) + A006466 (A014495 n).toNat

end

end A229897.P7384080834036533701

/-! ## A229897.P13044890961100389687

`A163510(n+1)+A006466(A014495(n))`
-/

namespace A229897.P13044890961100389687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163510 (n + 1) + A006466 (A014495 n).toNat

end

end A229897.P13044890961100389687

/-! ## A229897.P5767684799162958401

`A124734(n+1)+A060862(A288925(n))`
-/

namespace A229897.P5767684799162958401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (n + 1) + A060862 (A288925 n).toNat

end

end A229897.P5767684799162958401

/-! ## A229897.P8497057044787271023

`A228351(n+1)+A060862(A288925(n))`
-/

namespace A229897.P8497057044787271023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1) + A060862 (A288925 n).toNat

end

end A229897.P8497057044787271023

/-!
# A229898: Number of c-squarefree numbers (A233564) less than 2^n.

The programs for A229898, there is no canonical definition to state claims against.
-/

/-! ## A229898.P3550714120669271978

`A303664(n)-1`
-/

namespace A229898.P3550714120669271978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303664 n - 1

end

end A229898.P3550714120669271978

/-! ## A229898.P3707821167963430266

`∑[A032020(n)]-1`
-/

namespace A229898.P3707821167963430266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A229898.P3707821167963430266

/-! ## A229898.P9619169705956906020

`∑[A216695(n)]+n`
-/

namespace A229898.P9619169705956906020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A229898.P9619169705956906020

/-! ## A229898.P8581448040066250457

`∑[∑{d}[n, A332004(#)]]`
-/

namespace A229898.P8581448040066250457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A332004 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229898.P8581448040066250457

/-! ## A229898.P14227996855743035747

`∑[floor(A351017(n)/2)]`
-/

namespace A229898.P14227996855743035747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351017 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A229898.P14227996855743035747

