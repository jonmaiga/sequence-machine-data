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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275001: Expansion of 1/(1 - Sum_{k>=1} x^(prime(k)^2)).

The programs for A275001, there is no canonical definition to state claims against.
-/

/-! ## A275001.P8086489944980251497

`abs(A290975(n+5))%A000978(n+1)`
-/

namespace A275001.P8086489944980251497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A290975 (n + 5)| (A000978 (n + 1))

end

end A275001.P8086489944980251497

/-! ## A275001.P951770490718342498

`A000007(A136392(n+1))-A290975(n+5)`
-/

namespace A275001.P951770490718342498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A136392 (n + 1)).toNat - A290975 (n + 5)

end

end A275001.P951770490718342498

/-! ## A275001.P15498601722102227747

`A000007(A038208(n))-A290975(n+5)`
-/

namespace A275001.P15498601722102227747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A038208 n).toNat - A290975 (n + 5)

end

end A275001.P15498601722102227747

/-! ## A275001.P5358605992895543520

`abs(A014963(A060972(n+1))*A290975(n+5))`
-/

namespace A275001.P5358605992895543520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014963 (A060972 (n + 1)).toNat * A290975 (n + 5)|

end

end A275001.P5358605992895543520

/-! ## A275001.P743254769115742762

`A107682(A028600(n))`
-/

namespace A275001.P743254769115742762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107682 (A028600 n).toNat

end

end A275001.P743254769115742762

/-!
# A275002: 

The programs for A275002, there is no canonical definition to state claims against.
-/

/-! ## A275002.P5108633011480915297

`2*(n^(n²+1))²`
-/

namespace A275002.P5108633011480915297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n ^ (n ^ 2 + 1)) ^ 2

end

end A275002.P5108633011480915297

/-!
# A275010: a(n) is the hyper-operation of the digits of the number n = "abc" to a[b]c.

The programs for A275010, there is no canonical definition to state claims against.
-/

/-! ## A275010.P4178649715407108910

`(n+1)%gcd(11, A036875(∑[A036875(n+2)]+1))`
-/

namespace A275010.P4178649715407108910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036875 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Int.gcd 11 (A036875 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat)

end

end A275010.P4178649715407108910

/-!
# A275011: a(1) = 2; for n > 1, a(n) is the least prime p > a(n-1) such that none of p-a(1), ..., p-a(n-1) is a square.

The programs for A275011, there is no canonical definition to state claims against.
-/

/-! ## A275011.P6798195637798347276

`A129944(lt[A091866(n), 1])`
-/

namespace A275011.P6798195637798347276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129944 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A275011.P6798195637798347276

/-! ## A275011.P6549715300722684252

`record[A006530(A109289(Δ[n²]))]`
-/

namespace A275011.P6549715300722684252
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A109289 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275011.P6549715300722684252

/-! ## A275011.P13783186195004633505

`p?[∑[A006530(A117265(n+1))]]`
-/

namespace A275011.P13783186195004633505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A117265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275011.P13783186195004633505

/-!
# A275012: Number of nonzero coefficients in the polynomial factor of the expression counting binomial coefficients with 2-adic valuation n.

The programs for A275012, there is no canonical definition to state claims against.
-/

/-! ## A275012.P5283351797397270536

`A130446(round(13^(n/3))-floor(sqrt(2*n)))`
-/

namespace A275012.P5283351797397270536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (SequenceMachineLib.roundAway ((13 : ℝ) ^ ((n : ℚ) / 3 : ℝ)) - (Nat.sqrt (2 * n) : ℤ)).toNat

end

end A275012.P5283351797397270536

/-! ## A275012.P12508702706127192849

`A183233(A034691(n))`
-/

namespace A275012.P12508702706127192849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183233 (A034691 n).toNat

end

end A275012.P12508702706127192849

/-!
# A275013: Lower ends of record gaps between numbers that are either primes or semiprimes.

The programs for A275013, there is no canonical definition to state claims against.
-/

/-! ## A275013.P13692434124392991248

`A275014(n+1)-A275108(n+1)`
-/

namespace A275013.P13692434124392991248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275014 (n + 1) - A275108 (n + 1)

end

end A275013.P13692434124392991248

/-! ## A275013.P13073785555730686155

`A278351(A275108(n+1))`
-/

namespace A275013.P13073785555730686155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278351 (A275108 (n + 1)).toNat

end

end A275013.P13073785555730686155

/-! ## A275013.P5332146364031584183

`A278404(A275108(n+1))-A275108(A023443(n+2))`
-/

namespace A275013.P5332146364031584183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278404 (A275108 (n + 1)).toNat - A275108 (A023443 (n + 2)).toNat

end

end A275013.P5332146364031584183

/-! ## A275013.P1396319784856175757

`filter[A278351(n+1), A304109(#)]`
-/

namespace A275013.P1396319784856175757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A304109 (f1 j).toNat = 1) n)

end

end A275013.P1396319784856175757

/-!
# A275014: Upper ends of record gaps between numbers that are either primes or semiprimes.

The programs for A275014, there is no canonical definition to state claims against.
-/

/-! ## A275014.P9003552311637217083

`A275013(n+1)+A275108(n+1)`
-/

namespace A275014.P9003552311637217083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275013 (n + 1) + A275108 (n + 1)

end

end A275014.P9003552311637217083

/-! ## A275014.P4915255259677173735

`A278351(A275108(n+1))+A275108(A023443(n+2))`
-/

namespace A275014.P4915255259677173735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278351 (A275108 (n + 1)).toNat + A275108 (A023443 (n + 2)).toNat

end

end A275014.P4915255259677173735

/-! ## A275014.P13772573967228673151

`A278351(A275108(n+1))+A275108(A123108(2*(n+1)))`
-/

namespace A275014.P13772573967228673151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278351 (A275108 (n + 1)).toNat + A275108 (A123108 (2 * (n + 1))).toNat

end

end A275014.P13772573967228673151

/-! ## A275014.P16209830044791830122

`A278404(A275108(n+1))`
-/

namespace A275014.P16209830044791830122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278404 (A275108 (n + 1)).toNat

end

end A275014.P16209830044791830122

/-!
# A275015: Number of neighbors of each new term in an isosceles triangle read by rows.

The programs for A275015, the canonical program `A275015.P13420665391760099934` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275015 has offset 1).

The definition of A275015 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275015.P3393527303876177679

`3-(char[∑[n-1]]+2*char[∑[n]])`
-/

namespace A275015.P3393527303876177679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * (if ∃ j, f3 j = n then 1 else 0) : ℕ) : ℤ)

end

end A275015.P3393527303876177679

namespace A275015

/-- `3-(char[∑[n-1]]+2*char[∑[n]])` -/
def P3393527303876177679.Spec : Prop :=
  ∀ n, P3393527303876177679.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P7756430367103850724

`(A276586(n)-1)%4`
-/

namespace A275015.P7756430367103850724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276586 n - 1) 4

end

end A275015.P7756430367103850724

namespace A275015

/-- `(A276586(n)-1)%4` -/
def P7756430367103850724.Spec : Prop :=
  ∀ n, P7756430367103850724.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P13693991753870606378

`round(log2(gcd(6, A036561(n))))`
-/

namespace A275015.P13693991753870606378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (Int.gcd 6 (A036561 n) : ℝ))

end

end A275015.P13693991753870606378

namespace A275015

/-- `round(log2(gcd(6, A036561(n))))` -/
def P13693991753870606378.Spec : Prop :=
  ∀ n, P13693991753870606378.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P13420665391760099934

`floor(log2(gcd(15, A120027(n))))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A275015

/-- `floor(log2(gcd(15, A120027(n))))` -/
def P13420665391760099934.Spec : Prop :=
  ∀ n, (P13420665391760099934.a n : ℤ) = A275015 (n + 1)

theorem P13420665391760099934.correct : P13420665391760099934.Spec := by
  intro n
  simp only [A275015, Nat.add_sub_cancel]

end A275015

/-! ## A275015.P7695639427016879500

`11%A278317(comp[∑[n]])`
-/

namespace A275015.P7695639427016879500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 11 (A278317 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A275015.P7695639427016879500

namespace A275015

/-- `11%A278317(comp[∑[n]])` -/
def P7695639427016879500.Spec : Prop :=
  ∀ n, P7695639427016879500.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P9685008512648747512

`dr(A044970(n+1))%5`
-/

namespace A275015.P9685008512648747512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A044970 (n + 1)) % 5

end

end A275015.P9685008512648747512

namespace A275015

/-- `dr(A044970(n+1))%5` -/
def P9685008512648747512.Spec : Prop :=
  ∀ n, (P9685008512648747512.a n : ℤ) = A275015 (n + 1)

end A275015

/-! ## A275015.P12997285700282312157

`ceil(A278290(n+1)/ϕ)`
-/

namespace A275015.P12997285700282312157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278290 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A275015.P12997285700282312157

namespace A275015

/-- `ceil(A278290(n+1)/ϕ)` -/
def P12997285700282312157.Spec : Prop :=
  ∀ n, P12997285700282312157.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P13173662665338553900

`A246960(A089633(n))`
-/

namespace A275015.P13173662665338553900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246960 (A089633 n).toNat

end

end A275015.P13173662665338553900

namespace A275015

/-- `A246960(A089633(n))` -/
def P13173662665338553900.Spec : Prop :=
  ∀ n, P13173662665338553900.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P15136869658329634200

`A069283(A087112(n+1))`
-/

namespace A275015.P15136869658329634200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (A087112 (n + 1)).toNat

end

end A275015.P15136869658329634200

namespace A275015

/-- `A069283(A087112(n+1))` -/
def P15136869658329634200.Spec : Prop :=
  ∀ n, P15136869658329634200.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P6440425387737671838

`A132969(Δ[A010054(n)]+1)%(n+1)`
-/

namespace A275015.P6440425387737671838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132969 (f1 (n + 1) - f1 n + 1).toNat) (n + 1 : ℤ)

end

end A275015.P6440425387737671838

namespace A275015

/-- `A132969(Δ[A010054(n)]+1)%(n+1)` -/
def P6440425387737671838.Spec : Prop :=
  ∀ n, P6440425387737671838.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P4426279708479885736

`∑{e}[p?[A163335(n)]*A278290(n+1), #]`
-/

namespace A275015.P4426279708479885736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A278290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275015.P4426279708479885736

namespace A275015

/-- `∑{e}[p?[A163335(n)]*A278290(n+1), #]` -/
def P4426279708479885736.Spec : Prop :=
  ∀ n, (P4426279708479885736.a n : ℤ) = A275015 (n + 1)

end A275015

/-! ## A275015.P241799615247287100

`∑{e}[p?[A005098(n+1)]*A278290(n+1), #]`
-/

namespace A275015.P241799615247287100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A278290 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275015.P241799615247287100

namespace A275015

/-- `∑{e}[p?[A005098(n+1)]*A278290(n+1), #]` -/
def P241799615247287100.Spec : Prop :=
  ∀ n, (P241799615247287100.a n : ℤ) = A275015 (n + 1)

end A275015

/-! ## A275015.P4990021224296787363

`C(3-C(A007318(a(n-1)), A007318(n)), a(a(n-1)))` with `a(0)=0`
-/

namespace A275015.P4990021224296787363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (3 - (Nat.choose (A007318 (a (n - 1))).toNat (A007318 n).toNat : ℤ)).toNat (a (a (n - 1)))

end

end A275015.P4990021224296787363

namespace A275015

/-- `C(3-C(A007318(a(n-1)), A007318(n)), a(a(n-1)))` -/
def P4990021224296787363.Spec : Prop :=
  ∀ n, (P4990021224296787363.a n : ℤ) = A275015 (n + 1)

end A275015

/-! ## A275015.P14643380170282957281

`A077807(A130459(n+1))`
-/

namespace A275015.P14643380170282957281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077807 (A130459 (n + 1)).toNat

end

end A275015.P14643380170282957281

namespace A275015

/-- `A077807(A130459(n+1))` -/
def P14643380170282957281.Spec : Prop :=
  ∀ n, P14643380170282957281.a n = A275015 (n + 1)

end A275015

/-! ## A275015.P3113860662548100147

`A094945(n)%4`
-/

namespace A275015.P3113860662548100147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094945 n) 4

end

end A275015.P3113860662548100147

namespace A275015

/-- `A094945(n)%4` -/
def P3113860662548100147.Spec : Prop :=
  ∀ n, P3113860662548100147.a n = A275015 (n + 1)

end A275015

/-!
# A275016: a(n) = (2^n - (-1+i)^n - (-1-i)^n)/4 - 1 where i is the imaginary unit.

The programs for A275016, the canonical program `A275016.P10633536163234913704` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275016 has offset 1).

The definition of A275016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275016.P13557068262744800987

`ogf(5x^3/(1-x-2x^2-2x^3+4x^4))`
-/

namespace A275016.P13557068262744800987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 5] [1, -1, -2, -2, 4] n

end

end A275016.P13557068262744800987

namespace A275016

/-- `ogf(5x^3/(1-x-2x^2-2x^3+4x^4))` -/
def P13557068262744800987.Spec : Prop :=
  ∀ n, P13557068262744800987.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P10633536163234913704

`a(n-1)+2*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=5`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275016

/-- `a(n-1)+2*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P10633536163234913704.Spec : Prop :=
  ∀ n, P10633536163234913704.a n = A275016 (n + 1)

theorem P10633536163234913704.correct : P10633536163234913704.Spec := by
  intro n
  simp only [A275016, Nat.add_sub_cancel]

end A275016

/-! ## A275016.P3208571501459208826

`A038518(n+1)-1`
-/

namespace A275016.P3208571501459208826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) - 1

end

end A275016.P3208571501459208826

namespace A275016

/-- `A038518(n+1)-1` -/
def P3208571501459208826.Spec : Prop :=
  ∀ n, P3208571501459208826.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P300725441489636045

`∑[abs(Δ[A038518(n)])]-1`
-/

namespace A275016.P300725441489636045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A275016.P300725441489636045

namespace A275016

/-- `∑[abs(Δ[A038518(n)])]-1` -/
def P300725441489636045.Spec : Prop :=
  ∀ n, P300725441489636045.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P6702858890427996606

`A137171(A047522(n+2))-1`
-/

namespace A275016.P6702858890427996606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047522 (n + 2)).toNat - 1

end

end A275016.P6702858890427996606

namespace A275016

/-- `A137171(A047522(n+2))-1` -/
def P6702858890427996606.Spec : Prop :=
  ∀ n, P6702858890427996606.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P15115400666904328547

`A038519(n)+A038520(n)-1`
-/

namespace A275016.P15115400666904328547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n + (A038520 n - 1)

end

end A275016.P15115400666904328547

namespace A275016

/-- `A038519(n)+A038520(n)-1` -/
def P15115400666904328547.Spec : Prop :=
  ∀ n, P15115400666904328547.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P5529521205727478633

`A038519(n+1)-(A009116(n+1)+1)`
-/

namespace A275016.P5529521205727478633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (n + 1) - (A009116 (n + 1) + 1)

end

end A275016.P5529521205727478633

namespace A275016

/-- `A038519(n+1)-(A009116(n+1)+1)` -/
def P5529521205727478633.Spec : Prop :=
  ∀ n, P5529521205727478633.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P7609322663386950235

`Δ[∑[A038518(n)]-n]`
-/

namespace A275016.P7609322663386950235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275016.P7609322663386950235

namespace A275016

/-- `Δ[∑[A038518(n)]-n]` -/
def P7609322663386950235.Spec : Prop :=
  ∀ n, P7609322663386950235.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P14800786722693499783

`A011782(n+1)-(A038519(n+1)+1)`
-/

namespace A275016.P14800786722693499783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) - (A038519 (n + 1) + 1)

end

end A275016.P14800786722693499783

namespace A275016

/-- `A011782(n+1)-(A038519(n+1)+1)` -/
def P14800786722693499783.Spec : Prop :=
  ∀ n, P14800786722693499783.a n = A275016 (n + 1)

end A275016

/-! ## A275016.P9354458626060806595

`A362374(n+1)/4-1`
-/

namespace A275016.P9354458626060806595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362374 (n + 1) : ℚ) / 4 - 1

end

end A275016.P9354458626060806595

namespace A275016

/-- `A362374(n+1)/4-1` -/
def P9354458626060806595.Spec : Prop :=
  ∀ n, P9354458626060806595.a n = (A275016 (n + 1) : ℚ)

end A275016

/-! ## A275016.P5889563643059943532

`A135092(n+1)+A173559(n+1)-1`
-/

namespace A275016.P5889563643059943532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 (n + 1) + (A173559 (n + 1) - 1)

end

end A275016.P5889563643059943532

namespace A275016

/-- `A135092(n+1)+A173559(n+1)-1` -/
def P5889563643059943532.Spec : Prop :=
  ∀ n, P5889563643059943532.a n = A275016 (n + 1)

end A275016

/-!
# A275017: a(1)=1, a(2)=2, a(n) = prime(n-2) - a(n-2) for n > 2.

The programs for A275017, the canonical program `A275017.P16575929462007985891` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275017 has offset 1).

The definition of A275017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n-1)-a(n-2)` (program `A275017.P16575929462007985891`, by `A275017.P16575929462007985891.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275017.P16575929462007985891

`A000040(n-1)-a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275017

/-- `A000040(n-1)-a(n-2)` -/
def P16575929462007985891.Spec : Prop :=
  ∀ n, P16575929462007985891.a n = A275017 (n + 1)

theorem P16575929462007985891.correct : P16575929462007985891.Spec := by
  intro n
  simp only [A275017, Nat.add_sub_cancel]

end A275017

/-! ## A275017.P13775307047164823566

`A008578(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275017.P13775307047164823566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A008578 n - a (n - 2)

end

end A275017.P13775307047164823566

namespace A275017

/-- `A008578(n)-a(n-2)` -/
def P13775307047164823566.Spec : Prop :=
  ∀ n, P13775307047164823566.a n = A275017 (n + 1)

end A275017

/-! ## A275017.P17569823699481363832

`A158611(n+1)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275017.P17569823699481363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A158611 (n + 1) - a (n - 2)

end

end A275017.P17569823699481363832

namespace A275017

/-- `A158611(n+1)-a(n-2)` -/
def P17569823699481363832.Spec : Prop :=
  ∀ n, P17569823699481363832.a n = A275017 (n + 1)

end A275017

/-! ## A275017.P8182194618785798326

`A336236(n+1)+A101455(n)`
-/

namespace A275017.P8182194618785798326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336236 (n + 1) + A101455 n

end

end A275017.P8182194618785798326

namespace A275017

/-- `A336236(n+1)+A101455(n)` -/
def P8182194618785798326.Spec : Prop :=
  ∀ n, P8182194618785798326.a n = A275017 (n + 1)

end A275017

/-! ## A275017.P17350342387890788071

`p?[n+1-a(n-2)]-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275017.P17350342387890788071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - a (n - 2)

end

end A275017.P17350342387890788071

namespace A275017

/-- `p?[n+1-a(n-2)]-a(n-2)` -/
def P17350342387890788071.Spec : Prop :=
  ∀ n, P17350342387890788071.a n = A275017 (n + 1)

end A275017

/-! ## A275017.P10277386187957281929

`A075643(n)-a(n-2)` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A275017.P10277386187957281929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  A075643 n - a (n - 2)

end

end A275017.P10277386187957281929

namespace A275017

/-- `A075643(n)-a(n-2)` -/
def P10277386187957281929.Spec : Prop :=
  ∀ n, P10277386187957281929.a n = A275017 (n + 1)

end A275017

/-! ## A275017.P15529593258782063962

`lt[A032741(n), 2]-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A275017.P15529593258782063962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - a (n - 2)

end

end A275017.P15529593258782063962

namespace A275017

/-- `lt[A032741(n), 2]-a(n-2)` -/
def P15529593258782063962.Spec : Prop :=
  ∀ n, P15529593258782063962.a n = A275017 (n + 1)

end A275017

/-! ## A275017.P8432780444936496254

`abs(a(n-2)-p?[A004524(n)])` with `a(0)=1, a(1)=2`
-/

namespace A275017.P8432780444936496254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  |a (n - 2) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A275017.P8432780444936496254

namespace A275017

/-- `abs(a(n-2)-p?[A004524(n)])` -/
def P8432780444936496254.Spec : Prop :=
  ∀ n, P8432780444936496254.a n = A275017 (n + 1)

end A275017

/-!
# A275018: a(n) = A278846(n)/8.

The programs for A275018, there is no canonical definition to state claims against.
-/

/-! ## A275018.P3304075136977710828

`A278846(n)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A275018.P3304075136977710828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278846 n : ℚ) / 8

end

end A275018.P3304075136977710828

/-! ## A275018.P6715736392112748145

`8^A008683(A092627(n+1))*A278846(n)`
-/

namespace A275018.P6715736392112748145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) * (A278846 n : ℚ)

end

end A275018.P6715736392112748145

/-! ## A275018.P1860168558004975759

`A006085(A278846(n))`
-/

namespace A275018.P1860168558004975759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A278846 n).toNat

end

end A275018.P1860168558004975759

/-! ## A275018.P8731933105907920484

`A110658(A278846(n)+1)`
-/

namespace A275018.P8731933105907920484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A278846 n + 1).toNat

end

end A275018.P8731933105907920484

/-!
# A275019: 2-adic valuation of tetrahedral numbers C(n+2,3) = n(n+1)(n+2)/6 = A000292(n).

The programs for A275019, the canonical program `A275019.P166952479479628715` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275019 has offset 1).

The definition of A275019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275019.P1158221919530053647

`val((n+1)*(n+2)*(n+3)/6, 2)`
-/

namespace A275019.P1158221919530053647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((n + 1) * (n + 2) * (n + 3) : ℚ) / 6)).toNat 2

end

end A275019.P1158221919530053647

namespace A275019

/-- `val((n+1)*(n+2)*(n+3)/6, 2)` -/
def P1158221919530053647.Spec : Prop :=
  ∀ n, (P1158221919530053647.a n : ℤ) = A275019 (n + 1)

end A275019

/-! ## A275019.P166952479479628715

`A007814(n+1)+A007814(n+2)+A007814(n+3)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A275019

/-- `A007814(n+1)+A007814(n+2)+A007814(n+3)-1` -/
def P166952479479628715.Spec : Prop :=
  ∀ n, P166952479479628715.a n = A275019 (n + 1)

theorem P166952479479628715.correct : P166952479479628715.Spec := by
  intro n
  simp only [A275019, Nat.add_sub_cancel]

end A275019

/-! ## A275019.P16113270836686197600

`val(C(n+3, 3), 2)`
-/

namespace A275019.P16113270836686197600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose (n + 3) 3) 2

end

end A275019.P16113270836686197600

namespace A275019

/-- `val(C(n+3, 3), 2)` -/
def P16113270836686197600.Spec : Prop :=
  ∀ n, (P16113270836686197600.a n : ℤ) = A275019 (n + 1)

end A275019

/-! ## A275019.P18210652575117965446

`A324468(n+1)-1`
-/

namespace A275019.P18210652575117965446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324468 (n + 1) - 1

end

end A275019.P18210652575117965446

namespace A275019

/-- `A324468(n+1)-1` -/
def P18210652575117965446.Spec : Prop :=
  ∀ n, P18210652575117965446.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P14166688717874666065

`val(A001249(n), 2)/2`
-/

namespace A275019.P14166688717874666065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A001249 n).toNat 2 : ℚ) / 2

end

end A275019.P14166688717874666065

namespace A275019

/-- `val(A001249(n), 2)/2` -/
def P14166688717874666065.Spec : Prop :=
  ∀ n, P14166688717874666065.a n = (A275019 (n + 1) : ℚ)

end A275019

/-! ## A275019.P11515405204448460929

`val(A013654(n+1), 2)-1`
-/

namespace A275019.P11515405204448460929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A013654 (n + 1)).toNat 2 : ℤ) - 1

end

end A275019.P11515405204448460929

namespace A275019

/-- `val(A013654(n+1), 2)-1` -/
def P11515405204448460929.Spec : Prop :=
  ∀ n, P11515405204448460929.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P7942514318169807300

`val(A159469(n+3), 2)-1`
-/

namespace A275019.P7942514318169807300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A159469 (n + 3)).toNat 2 : ℤ) - 1

end

end A275019.P7942514318169807300

namespace A275019

/-- `val(A159469(n+3), 2)-1` -/
def P7942514318169807300.Spec : Prop :=
  ∀ n, P7942514318169807300.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P13987766141179294590

`A050606(n)+A011765(n+1)`
-/

namespace A275019.P13987766141179294590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 n + A011765 (n + 1)

end

end A275019.P13987766141179294590

namespace A275019

/-- `A050606(n)+A011765(n+1)` -/
def P13987766141179294590.Spec : Prop :=
  ∀ n, P13987766141179294590.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P6573092476344411281

`A050606(n)+A177704(n)-1`
-/

namespace A275019.P6573092476344411281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050606 n + (A177704 n - 1)

end

end A275019.P6573092476344411281

namespace A275019

/-- `A050606(n)+A177704(n)-1` -/
def P6573092476344411281.Spec : Prop :=
  ∀ n, P6573092476344411281.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P13635380758921075185

`A011765(n+1)+A050604(n)-1`
-/

namespace A275019.P13635380758921075185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011765 (n + 1) + (A050604 n - 1)

end

end A275019.P13635380758921075185

namespace A275019

/-- `A011765(n+1)+A050604(n)-1` -/
def P13635380758921075185.Spec : Prop :=
  ∀ n, P13635380758921075185.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P8632942632642757701

`A050603(n+1)+A001511(n+1)-2`
-/

namespace A275019.P8632942632642757701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (n + 1) + (A001511 (n + 1) - 2)

end

end A275019.P8632942632642757701

namespace A275019

/-- `A050603(n+1)+A001511(n+1)-2` -/
def P8632942632642757701.Spec : Prop :=
  ∀ n, P8632942632642757701.a n = A275019 (n + 1)

theorem P8632942632642757701.correct : P8632942632642757701.Spec := by
  intro n
  simp only [A275019, Nat.add_sub_cancel, A275019.P8632942632642757701.a, A275019.P166952479479628715.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A050603, A050603.P12712608073834541420.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275019

/-! ## A275019.P390098104121000497

`A007814(n+1)+A007814(A080513(n))`
-/

namespace A275019.P390098104121000497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A080513 n).toNat

end

end A275019.P390098104121000497

namespace A275019

/-- `A007814(n+1)+A007814(A080513(n))` -/
def P390098104121000497.Spec : Prop :=
  ∀ n, P390098104121000497.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P15777467526322367288

`A007814(n+1)+A007814(A008619(n+1))`
-/

namespace A275019.P15777467526322367288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A008619 (n + 1)).toNat

end

end A275019.P15777467526322367288

namespace A275019

/-- `A007814(n+1)+A007814(A008619(n+1))` -/
def P15777467526322367288.Spec : Prop :=
  ∀ n, P15777467526322367288.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P2831208387691372108

`A007814(n+1)+A007814(A110654(n)+1)`
-/

namespace A275019.P2831208387691372108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + A007814 (A110654 n + 1).toNat

end

end A275019.P2831208387691372108

namespace A275019

/-- `A007814(n+1)+A007814(A110654(n)+1)` -/
def P2831208387691372108.Spec : Prop :=
  ∀ n, P2831208387691372108.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P13978820131056302195

`A050603(n+1)+A000120(n)-A000120(n+1)`
-/

namespace A275019.P13978820131056302195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (n + 1) + (A000120 n - A000120 (n + 1))

end

end A275019.P13978820131056302195

namespace A275019

/-- `A050603(n+1)+A000120(n)-A000120(n+1)` -/
def P13978820131056302195.Spec : Prop :=
  ∀ n, P13978820131056302195.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P13411001961736591027

`val(A214944(n+2), 2)-1`
-/

namespace A275019.P13411001961736591027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A214944 (n + 2)).toNat 2 : ℤ) - 1

end

end A275019.P13411001961736591027

namespace A275019

/-- `val(A214944(n+2), 2)-1` -/
def P13411001961736591027.Spec : Prop :=
  ∀ n, P13411001961736591027.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P6648602516847080224

`val(A214945(n+2), 2)-1`
-/

namespace A275019.P6648602516847080224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A214945 (n + 2)).toNat 2 : ℤ) - 1

end

end A275019.P6648602516847080224

namespace A275019

/-- `val(A214945(n+2), 2)-1` -/
def P6648602516847080224.Spec : Prop :=
  ∀ n, P6648602516847080224.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P416410538024085158

`val(A215191(n+2), 2)-1`
-/

namespace A275019.P416410538024085158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A215191 (n + 2)).toNat 2 : ℤ) - 1

end

end A275019.P416410538024085158

namespace A275019

/-- `val(A215191(n+2), 2)-1` -/
def P416410538024085158.Spec : Prop :=
  ∀ n, P416410538024085158.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P10698115577657251051

`val(A215229(n+2), 2)-1`
-/

namespace A275019.P10698115577657251051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A215229 (n + 2)).toNat 2 : ℤ) - 1

end

end A275019.P10698115577657251051

namespace A275019

/-- `val(A215229(n+2), 2)-1` -/
def P10698115577657251051.Spec : Prop :=
  ∀ n, P10698115577657251051.a n = A275019 (n + 1)

end A275019

/-! ## A275019.P13631092276146717339

`A050605(n+1)+val(n+1, 2)`
-/

namespace A275019.P13631092276146717339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A275019.P13631092276146717339

namespace A275019

/-- `A050605(n+1)+val(n+1, 2)` -/
def P13631092276146717339.Spec : Prop :=
  ∀ n, P13631092276146717339.a n = A275019 (n + 1)

end A275019

/-!
# A275021: Pairs of primes p, p+4 such that p-2 and p+6 are composite.

The programs for A275021, there is no canonical definition to state claims against.
-/

/-! ## A275021.P1169274953549701089

`∪[A052162(n+1)+4, A052162(n+1)]`
-/

namespace A275021.P1169274953549701089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052162 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A275021.P1169274953549701089

/-! ## A275021.P482431067208023151

`∩[A098419(n+1), A111980(n+1)]`
-/

namespace A275021.P482431067208023151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275021.P482431067208023151

/-!
# A275023: Cubes c such that c + 2 and c - 2 are semiprime.

The programs for A275023, there is no canonical definition to state claims against.
-/

/-! ## A275023.P3933677702185027496

`∩[A105571(n+1), A000578(n)]`
-/

namespace A275023.P3933677702185027496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275023.P3933677702185027496

/-! ## A275023.P2003266089592137723

`A251629(A251631(9*n+4))^3`
-/

namespace A275023.P2003266089592137723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A251631 (9 * n + 4)).toNat ^ 3

end

end A275023.P2003266089592137723

/-!
# A275024: Total weight of the n-th twice-prime-factored multiset partition.

The programs for A275024, the canonical program `A275024.P5861283572822886658` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275024 has offset 1).

The definition of A275024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275024.P5861283572822886658

`∑{e}[A064553(n+1), #]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A275024

/-- `∑{e}[A064553(n+1), #]` -/
def P5861283572822886658.Spec : Prop :=
  ∀ n, (P5861283572822886658.a n : ℤ) = A275024 (n + 1)

theorem P5861283572822886658.correct : P5861283572822886658.Spec := by
  intro n
  simp only [A275024, Nat.add_sub_cancel]

end A275024

/-! ## A275024.P13465918368614322712

`A001222(A064553(n+1))`
-/

namespace A275024.P13465918368614322712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064553 (n + 1)).toNat

end

end A275024.P13465918368614322712

namespace A275024

/-- `A001222(A064553(n+1))` -/
def P13465918368614322712.Spec : Prop :=
  ∀ n, P13465918368614322712.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P11915822650956727541

`∑{d}[A064553(n+1), A001221(A014963(#))]`
-/

namespace A275024.P11915822650956727541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A275024.P11915822650956727541

namespace A275024

/-- `∑{d}[A064553(n+1), A001221(A014963(#))]` -/
def P11915822650956727541.Spec : Prop :=
  ∀ n, P11915822650956727541.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P10489502480183179910

`A302242(A003961(n+1))`
-/

namespace A275024.P10489502480183179910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A003961 (n + 1)).toNat

end

end A275024.P10489502480183179910

namespace A275024

/-- `A302242(A003961(n+1))` -/
def P10489502480183179910.Spec : Prop :=
  ∀ n, P10489502480183179910.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P11513467178541886235

`A302242(A045965(n+1))`
-/

namespace A275024.P11513467178541886235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A045965 (n + 1)).toNat

end

end A275024.P11513467178541886235

namespace A275024

/-- `A302242(A045965(n+1))` -/
def P11513467178541886235.Spec : Prop :=
  ∀ n, P11513467178541886235.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P1561995737852527560

`A302242(A253885(n)+1)`
-/

namespace A275024.P1561995737852527560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A253885 n + 1).toNat

end

end A275024.P1561995737852527560

namespace A275024

/-- `A302242(A253885(n)+1)` -/
def P1561995737852527560.Spec : Prop :=
  ∀ n, P1561995737852527560.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P15893638023253392721

`A302242(or(1, A253885(n)))`
-/

namespace A275024.P15893638023253392721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (Int.lor 1 (A253885 n)).toNat

end

end A275024.P15893638023253392721

namespace A275024

/-- `A302242(or(1, A253885(n)))` -/
def P15893638023253392721.Spec : Prop :=
  ∀ n, P15893638023253392721.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P11273094033798047946

`A302242(A243501(n+1)-1)`
-/

namespace A275024.P11273094033798047946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A243501 (n + 1) - 1).toNat

end

end A275024.P11273094033798047946

namespace A275024

/-- `A302242(A243501(n+1)-1)` -/
def P11273094033798047946.Spec : Prop :=
  ∀ n, P11273094033798047946.a n = A275024 (n + 1)

theorem P11273094033798047946.correct : P11273094033798047946.Spec := by
  intro n
  simp only [A275024, Nat.add_sub_cancel, A275024.P11273094033798047946.a, A275024.P5861283572822886658.f1, A275024.P5861283572822886658.a, A064553, A064553.P13324500715989758241.a, A243501, A243501.P10707292738867961998.a, A302242, A302242.P1293346718944906673.f1, A302242.P1293346718944906673.a, A003961, A003961.P5996473960037614004.a, A003963, A003963.P6853423646423809573.a, A048673, A048673.P3613002930333742504.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A253885, A253885.P16715555451856890624.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007310, A007310.P9946423629536973135.a, A023416, A023416.P8124303482289229133.a, A053645, A053645.P13234994043849603743.a, A064989, A064989.P13349672914146769936.a, A243071, A243071.P12484383641158862297.a, A275716, A275716.P7951773903952206727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275024

/-! ## A275024.P18408558005136305414

`A302242(2*A048673(n+1)-1)`
-/

namespace A275024.P18408558005136305414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (2 * A048673 (n + 1) - 1).toNat

end

end A275024.P18408558005136305414

namespace A275024

/-- `A302242(2*A048673(n+1)-1)` -/
def P18408558005136305414.Spec : Prop :=
  ∀ n, P18408558005136305414.a n = A275024 (n + 1)

theorem P18408558005136305414.correct : P18408558005136305414.Spec := by
  intro n
  simp only [A275024, Nat.add_sub_cancel, A275024.P18408558005136305414.a, A275024.P5861283572822886658.f1, A275024.P5861283572822886658.a, A048673, A048673.P3613002930333742504.a, A064553, A064553.P13324500715989758241.a, A302242, A302242.P1293346718944906673.f1, A302242.P1293346718944906673.a, A003961, A003961.P5996473960037614004.a, A003963, A003963.P6853423646423809573.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A156552, A156552.P4268073137713085227.a, A243071, A243071.P12484383641158862297.a, A243499, A243499.P13821279400790425584.a, A253885, A253885.P16715555451856890624.a, A275716, A275716.P7951773903952206727.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A023416, A023416.P8124303482289229133.a, A052126, A052126.P1944428405920482243.a, A053645, A053645.P13234994043849603743.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A163511, A163511.P5635496813650871695.a, A243501, A243501.P10707292738867961998.a, A253566, A253566.P9103107584596957047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275024

/-! ## A275024.P5663908865500468715

`A302242(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A275024.P5663908865500468715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A275024.P5663908865500468715

namespace A275024

/-- `A302242(A048673(n+1)+A048673(n+1)-1)` -/
def P5663908865500468715.Spec : Prop :=
  ∀ n, P5663908865500468715.a n = A275024 (n + 1)

theorem P5663908865500468715.correct : P5663908865500468715.Spec := by
  intro n
  simp only [A275024, Nat.add_sub_cancel, A275024.P5663908865500468715.a, A275024.P5861283572822886658.f1, A275024.P5861283572822886658.a, A048673, A048673.P3613002930333742504.a, A064553, A064553.P13324500715989758241.a, A302242, A302242.P1293346718944906673.f1, A302242.P1293346718944906673.a, A003961, A003961.P5996473960037614004.a, A003963, A003963.P6853423646423809573.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A156552, A156552.P4268073137713085227.a, A243071, A243071.P12484383641158862297.a, A243499, A243499.P13821279400790425584.a, A253885, A253885.P16715555451856890624.a, A275716, A275716.P7951773903952206727.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A008578, A008578.P3639467937083264764.a, A023416, A023416.P8124303482289229133.a, A052126, A052126.P1944428405920482243.a, A053645, A053645.P13234994043849603743.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A163511, A163511.P5635496813650871695.a, A243501, A243501.P10707292738867961998.a, A253566, A253566.P9103107584596957047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275024

/-! ## A275024.P5896793877552924867

`∑{e}[A064558(A064554(n+1)), #]`
-/

namespace A275024.P5896793877552924867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A064554 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P5896793877552924867

namespace A275024

/-- `∑{e}[A064558(A064554(n+1)), #]` -/
def P5896793877552924867.Spec : Prop :=
  ∀ n, (P5896793877552924867.a n : ℤ) = A275024 (n + 1)

end A275024

/-! ## A275024.P13904648278005256668

`∑{e}[A064558(record[A006530(n+1)]), #]`
-/

namespace A275024.P13904648278005256668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P13904648278005256668

namespace A275024

/-- `∑{e}[A064558(record[A006530(n+1)]), #]` -/
def P13904648278005256668.Spec : Prop :=
  ∀ n, (P13904648278005256668.a n : ℤ) = A275024 (n + 1)

end A275024

/-! ## A275024.P5550742344127122371

`∑{e}[A064558(record[A020639(n+1)]), #]`
-/

namespace A275024.P5550742344127122371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P5550742344127122371

namespace A275024

/-- `∑{e}[A064558(record[A020639(n+1)]), #]` -/
def P5550742344127122371.Spec : Prop :=
  ∀ n, (P5550742344127122371.a n : ℤ) = A275024 (n + 1)

end A275024

/-! ## A275024.P15270072535853628172

`A001222(A064558(record[A014963(n+1)]))`
-/

namespace A275024.P15270072535853628172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A064558 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A275024.P15270072535853628172

namespace A275024

/-- `A001222(A064558(record[A014963(n+1)]))` -/
def P15270072535853628172.Spec : Prop :=
  ∀ n, P15270072535853628172.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P6270890130401246327

`A302243(A108228(n+1))`
-/

namespace A275024.P6270890130401246327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A108228 (n + 1)).toNat

end

end A275024.P6270890130401246327

namespace A275024

/-- `A302243(A108228(n+1))` -/
def P6270890130401246327.Spec : Prop :=
  ∀ n, P6270890130401246327.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P4858942498832011766

`A302243(A048673(n+1)-1)`
-/

namespace A275024.P4858942498832011766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A048673 (n + 1) - 1).toNat

end

end A275024.P4858942498832011766

namespace A275024

/-- `A302243(A048673(n+1)-1)` -/
def P4858942498832011766.Spec : Prop :=
  ∀ n, P4858942498832011766.a n = A275024 (n + 1)

end A275024

/-! ## A275024.P14043281131959383639

`∑{e}[A064558(A064555(n+1)), #]`
-/

namespace A275024.P14043281131959383639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064558 (A064555 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275024.P14043281131959383639

namespace A275024

/-- `∑{e}[A064558(A064555(n+1)), #]` -/
def P14043281131959383639.Spec : Prop :=
  ∀ n, (P14043281131959383639.a n : ℤ) = A275024 (n + 1)

end A275024

/-! ## A275024.P7240392542996144629

`A302242(A283980(n+1))`
-/

namespace A275024.P7240392542996144629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A283980 (n + 1)).toNat

end

end A275024.P7240392542996144629

namespace A275024

/-- `A302242(A283980(n+1))` -/
def P7240392542996144629.Spec : Prop :=
  ∀ n, P7240392542996144629.a n = A275024 (n + 1)

end A275024

/-!
# A275027: a(n) = Sum_{k=0..n} C(n,k)^2*C(n-k,k), where C(n,k) denotes the binomial coefficient n!/(k!*(n-k)!).

The programs for A275027, the canonical program `A275027.P7547628480262534944` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275027 has offset 0).

The definition of A275027 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*C(n-#, #)]` (program `A275027.P7547628480262534944`, by `A275027.P7547628480262534944.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275027.P7547628480262534944

`∑{#}[n, C(n, #)²*C(n-#, #)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275027

/-- `∑{#}[n, C(n, #)²*C(n-#, #)]` -/
def P7547628480262534944.Spec : Prop :=
  ∀ n, (P7547628480262534944.a n : ℤ) = A275027 n

theorem P7547628480262534944.correct : P7547628480262534944.Spec := by
  intro n
  simp only [A275027]

end A275027

/-! ## A275027.P8007941357906009967

`A136548(A107591(n+1))-A218850(A014574(n+1)/2)`
-/

namespace A275027.P8007941357906009967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A107591 (n + 1)).toNat - A218850 (SequenceMachineLib.roundAway ((A014574 (n + 1) : ℚ) / 2)).toNat

end

end A275027.P8007941357906009967

namespace A275027

/-- `A136548(A107591(n+1))-A218850(A014574(n+1)/2)` -/
def P8007941357906009967.Spec : Prop :=
  ∀ n, P8007941357906009967.a n = A275027 n

end A275027

/-!
# A275028: Squares whose digital rotation is also a square.

The programs for A275028, there is no canonical definition to state claims against.
-/

/-! ## A275028.P17905766727581198426

`A098286(A107644(n+1))²`
-/

namespace A275028.P17905766727581198426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098286 (A107644 (n + 1)).toNat ^ 2

end

end A275028.P17905766727581198426

/-! ## A275028.P9901169746722135304

`eq[A001227(3*n+5), A109673(n)]²`
-/

namespace A275028.P9901169746722135304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109673 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A275028.P9901169746722135304

/-!
# A275029: Partition numbers (A000041) congruent to 2 (mod 4).

The programs for A275029, there is no canonical definition to state claims against.
-/

/-! ## A275029.P5110115385985701976

`A000041(A237280(n+1))`
-/

namespace A275029.P5110115385985701976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A237280 (n + 1)).toNat

end

end A275029.P5110115385985701976

/-! ## A275029.P7462315142703999039

`A000041(eq[1, A278478(n)])`
-/

namespace A275029.P7462315142703999039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275029.P7462315142703999039

/-! ## A275029.P4948330881683058344

`A000041(eq[1, val(A000041(n), 2)])`
-/

namespace A275029.P4948330881683058344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275029.P4948330881683058344

/-! ## A275029.P3040508424162490210

`A000041(eq[2, A000041(n)%4])`
-/

namespace A275029.P3040508424162490210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275029.P3040508424162490210

/-! ## A275029.P2153870381114875340

`A000041(eq[2, gcd(4, A000041(n))])`
-/

namespace A275029.P2153870381114875340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A275029.P2153870381114875340

/-! ## A275029.P6721424919609740668

`A000041(eq[2, and(3, A000041(n))])`
-/

namespace A275029.P6721424919609740668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275029.P6721424919609740668

/-!
# A275030: a(1) = 2. a(n) is the smallest prime such that a(n) - a(n-1) is a triangular number.

The programs for A275030, there is no canonical definition to state claims against.
-/

/-! ## A275030.P3239438726006025345

`A085416(A003963(a(n-1)))` with `a(0)=2`
-/

namespace A275030.P3239438726006025345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A085416 (A003963 (a (n - 1)).toNat).toNat

end

end A275030.P3239438726006025345

/-! ## A275030.P6694166119626706835

`A085416(A055396(a(n-1)))` with `a(0)=2`
-/

namespace A275030.P6694166119626706835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A085416 (A055396 (a (n - 1)).toNat).toNat

end

end A275030.P6694166119626706835

/-! ## A275030.P15504418511031050816

`A085416(A230980(a(n-1)))` with `a(0)=2`
-/

namespace A275030.P15504418511031050816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A085416 (A230980 (a (n - 1)).toNat).toNat

end

end A275030.P15504418511031050816

/-! ## A275030.P13699631429605278879

`A085416(A297109(a(n-1)))` with `a(0)=2`
-/

namespace A275030.P13699631429605278879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A085416 (A297109 (a (n - 1)).toNat).toNat

end

end A275030.P13699631429605278879

/-!
# A275031: Number of n X n 0..2 arrays with no element equal to any value at offset (0,-1), (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275031, there is no canonical definition to state claims against.
-/

/-! ## A275031.P7899960356842489576

`A275037(∑[4*n]+1)`
-/

namespace A275031.P7899960356842489576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275031.P7899960356842489576

/-! ## A275031.P5180746174052983467

`record[gcd(A112467(n), A275037(n+1))]`
-/

namespace A275031.P5180746174052983467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112467 n) (A275037 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275031.P5180746174052983467

/-! ## A275031.P3591175182051105151

`record[A203994(n+1)*A275037(n+1)]`
-/

namespace A275031.P3591175182051105151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A275037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275031.P3591175182051105151

/-! ## A275031.P11586513419281733599

`gcd(A000038(n), A275037(A001844(n)))`
-/

namespace A275031.P11586513419281733599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275037 (A001844 n).toNat)

end

end A275031.P11586513419281733599

/-! ## A275031.P3685344587800501934

`lcm(A097807(n), A275037(A001844(n)))`
-/

namespace A275031.P3685344587800501934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A275037 (A001844 n).toNat)

end

end A275031.P3685344587800501934

/-!
# A275032: Number of nX3 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275032, there is no canonical definition to state claims against.
-/

/-! ## A275032.P11362342428407171492

`A275037(∑[n+3]+1)`
-/

namespace A275032.P11362342428407171492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275032.P11362342428407171492

/-! ## A275032.P16499479486289374524

`record[A275037(A237519(n+2))]`
-/

namespace A275032.P16499479486289374524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A237519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275032.P16499479486289374524

/-! ## A275032.P13864469121282903457

`lcm(A057077(n), A275037(A034856(n+2)))`
-/

namespace A275032.P13864469121282903457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A275037 (A034856 (n + 2)).toNat)

end

end A275032.P13864469121282903457

/-!
# A275033: Number of nX4 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275033, there is no canonical definition to state claims against.
-/

/-! ## A275033.P9428842446270991853

`A275037(∑[n+4]+3)`
-/

namespace A275033.P9428842446270991853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A275033.P9428842446270991853

/-! ## A275033.P9939982707553349990

`lcm(A033999(n), A275037(A027379(n+2)))`
-/

namespace A275033.P9939982707553349990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275037 (A027379 (n + 2)).toNat)

end

end A275033.P9939982707553349990

/-! ## A275033.P15252207137651582585

`abs((A004442(n)-n)*A275037(A027379(n+2)))`
-/

namespace A275033.P15252207137651582585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A004442 n - (n : ℤ)) * A275037 (A027379 (n + 2)).toNat|

end

end A275033.P15252207137651582585

/-! ## A275033.P11786361690465231847

`A007318(C(n+3, 2))*A275037(A141214(n+1))`
-/

namespace A275033.P11786361690465231847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 3) 2) * A275037 (A141214 (n + 1)).toNat

end

end A275033.P11786361690465231847

/-!
# A275034: Number of nX5 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275034, there is no canonical definition to state claims against.
-/

/-! ## A275034.P1027655352554829599

`A275037(Δ[A264443(n)])`
-/

namespace A275034.P1027655352554829599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (f1 (n + 1) - f1 n).toNat

end

end A275034.P1027655352554829599

/-! ## A275034.P3690036830838423737

`A275037(A046691(n+3))`
-/

namespace A275034.P3690036830838423737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A046691 (n + 3)).toNat

end

end A275034.P3690036830838423737

/-! ## A275034.P13693962137640655009

`A275037(Δ[A023545(n+1)])`
-/

namespace A275034.P13693962137640655009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (f1 (n + 1) - f1 n).toNat

end

end A275034.P13693962137640655009

/-! ## A275034.P17817165162528257890

`A275037(A000217(n+5)-4)`
-/

namespace A275034.P17817165162528257890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000217 (n + 5) - 4).toNat

end

end A275034.P17817165162528257890

/-! ## A275034.P12015921951974944808

`A275037(A000124(n+5)-5)`
-/

namespace A275034.P12015921951974944808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000124 (n + 5) - 5).toNat

end

end A275034.P12015921951974944808

/-!
# A275035: Number of nX6 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275035, there is no canonical definition to state claims against.
-/

/-! ## A275035.P8538622028143433794

`A275037(2*(n+2)+∑[n+4]+8)`
-/

namespace A275035.P8538622028143433794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (2 * (n + 2) + (∑ j ∈ Finset.range (n + 1), f1 j + 8))

end

end A275035.P8538622028143433794

/-! ## A275035.P13938027746411894435

`record[A275037(A155212(abs(1-n)+1)+3)]`
-/

namespace A275035.P13938027746411894435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A155212 (|1 - (n : ℤ)| + 1).toNat + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275035.P13938027746411894435

/-!
# A275036: Number of nX7 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275036, there is no canonical definition to state claims against.
-/

/-! ## A275036.P6082286259305995683

`A275037(A055999(n+4))`
-/

namespace A275036.P6082286259305995683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A055999 (n + 4)).toNat

end

end A275036.P6082286259305995683

/-! ## A275036.P10026070768870528423

`A275037(eq[4, A219347(n)])`
-/

namespace A275036.P10026070768870528423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275036.P10026070768870528423

/-! ## A275036.P2303888115506694942

`A275037(eq[6, A193592(n)])`
-/

namespace A275036.P2303888115506694942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275036.P2303888115506694942

/-! ## A275036.P7623340829962325244

`A275037(eq[32, A057728(n+1)])`
-/

namespace A275036.P7623340829962325244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275036.P7623340829962325244

/-! ## A275036.P17351682239204209254

`A275037(eq[7, A200370(n+1)])`
-/

namespace A275036.P17351682239204209254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275036.P17351682239204209254

/-!
# A275037: T(n,k)=Number of nXk 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275037, there is no canonical definition to state claims against.
-/

/-! ## A275037.P3662908133419726462

`A335376(A022167(n))+A240870(n)`
-/

namespace A275037.P3662908133419726462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335376 (A022167 n).toNat + A240870 n

end

end A275037.P3662908133419726462

/-! ## A275037.P3191862825562990758

`A058717(n+1)*A062571(A016116(n))`
-/

namespace A275037.P3191862825562990758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058717 (n + 1) * A062571 (A016116 n).toNat

end

end A275037.P3191862825562990758

/-!
# A275038: Number of 3 X n 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275038, the canonical program `A275038.P16793805438119259369` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275038 has offset 1).

The definition of A275038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275038.P16793805438119259369

`ogf((3+9x-2x^2+23x^3+7x^4+12x^5+10x^6-10x^7-8x^8-x^9)/(1-3x+2x^2-4x^3-x^4-3x^5-8x^6-x^7+3x^8+x^9))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275038

/-- `ogf((3+9x-2x^2+23x^3+7x^4+12x^5+10x^6-10x^7-8x^8-x^9)/(1-3x+2x^2-4x^3-x^4-3x^5-8x^6-x^7+3x^8+x^9))` -/
def P16793805438119259369.Spec : Prop :=
  ∀ n, P16793805438119259369.a n = A275038 (n + 1)

theorem P16793805438119259369.correct : P16793805438119259369.Spec := by
  intro n
  simp only [A275038, Nat.add_sub_cancel]

end A275038

/-! ## A275038.P6072756352603092368

`A275037(∑[n+2]+4)`
-/

namespace A275038.P6072756352603092368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275038.P6072756352603092368

namespace A275038

/-- `A275037(∑[n+2]+4)` -/
def P6072756352603092368.Spec : Prop :=
  ∀ n, P6072756352603092368.a n = A275038 (n + 1)

end A275038

/-! ## A275038.P16353282900822776696

`A275037(A167614(n+1))+A185255(n)`
-/

namespace A275038.P16353282900822776696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A167614 (n + 1)).toNat + A185255 n

end

end A275038.P16353282900822776696

namespace A275038

/-- `A275037(A167614(n+1))+A185255(n)` -/
def P16353282900822776696.Spec : Prop :=
  ∀ n, P16353282900822776696.a n = A275038 (n + 1)

end A275038

/-! ## A275038.P3753145990236367752

`A275037(A167614(n+1))+A185284(n)`
-/

namespace A275038.P3753145990236367752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A167614 (n + 1)).toNat + A185284 n

end

end A275038.P3753145990236367752

namespace A275038

/-- `A275037(A167614(n+1))+A185284(n)` -/
def P3753145990236367752.Spec : Prop :=
  ∀ n, P3753145990236367752.a n = A275038 (n + 1)

end A275038

/-! ## A275038.P12219534719740062358

`lcm(A033999(n), A275037(A167614(n+1)))`
-/

namespace A275038.P12219534719740062358
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A275037 (A167614 (n + 1)).toNat)

end

end A275038.P12219534719740062358

namespace A275038

/-- `lcm(A033999(n), A275037(A167614(n+1)))` -/
def P12219534719740062358.Spec : Prop :=
  ∀ n, (P12219534719740062358.a n : ℤ) = A275038 (n + 1)

end A275038

/-!
# A275039: Number of 4Xn 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275039, there is no canonical definition to state claims against.
-/

/-! ## A275039.P1028661072252736700

`A275037(A141214(n)+7)`
-/

namespace A275039.P1028661072252736700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A141214 n + 7).toNat

end

end A275039.P1028661072252736700

/-! ## A275039.P2394976443920257773

`A275037(A052905(n)+9)`
-/

namespace A275039.P2394976443920257773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A052905 n + 9).toNat

end

end A275039.P2394976443920257773

/-! ## A275039.P7194922249527488561

`A275037(A055999(n)+10)`
-/

namespace A275039.P7194922249527488561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A055999 n + 10).toNat

end

end A275039.P7194922249527488561

/-! ## A275039.P3136207080542130301

`A275037(A167614(n+2)+1)`
-/

namespace A275039.P3136207080542130301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A167614 (n + 2) + 1).toNat

end

end A275039.P3136207080542130301

/-! ## A275039.P8044645613607290208

`A275037(A166136(n+2)-2)`
-/

namespace A275039.P8044645613607290208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A166136 (n + 2) - 2).toNat

end

end A275039.P8044645613607290208

/-!
# A275040: Number of 5Xn 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275040, there is no canonical definition to state claims against.
-/

/-! ## A275040.P15636145571969692382

`A275037(A167499(n+3))`
-/

namespace A275040.P15636145571969692382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A167499 (n + 3)).toNat

end

end A275040.P15636145571969692382

/-! ## A275040.P3387711399028140895

`A275037(A077169(n+5))`
-/

namespace A275040.P3387711399028140895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A077169 (n + 5)).toNat

end

end A275040.P3387711399028140895

/-! ## A275040.P11929771043386039746

`A275037(A155212(n)+13)`
-/

namespace A275040.P11929771043386039746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A155212 n + 13).toNat

end

end A275040.P11929771043386039746

/-! ## A275040.P4129968469289434922

`A275037(A056000(n)+15)`
-/

namespace A275040.P4129968469289434922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A056000 n + 15).toNat

end

end A275040.P4129968469289434922

/-! ## A275040.P6876468811840832934

`A275037(A000217(n+4)+5)`
-/

namespace A275040.P6876468811840832934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000217 (n + 4) + 5).toNat

end

end A275040.P6876468811840832934

/-!
# A275041: Number of 6Xn 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275041, there is no canonical definition to state claims against.
-/

/-! ## A275041.P13365316280974953605

`A275037(A166136(n+4))`
-/

namespace A275041.P13365316280974953605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A166136 (n + 4)).toNat

end

end A275041.P13365316280974953605

/-! ## A275041.P10444305342186210961

`A275037(A000124(n+5)+5)`
-/

namespace A275041.P10444305342186210961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000124 (n + 5) + 5).toNat

end

end A275041.P10444305342186210961

/-! ## A275041.P10273579605793855834

`A275037(A000217(n+5)+6)`
-/

namespace A275041.P10273579605793855834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000217 (n + 5) + 6).toNat

end

end A275041.P10273579605793855834

/-! ## A275041.P16213096877123567057

`A275037(A046691(n+3)+10)`
-/

namespace A275041.P16213096877123567057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A046691 (n + 3) + 10).toNat

end

end A275041.P16213096877123567057

/-! ## A275041.P14257771885989224685

`A275037(A038722(A052905(n+3)))`
-/

namespace A275041.P14257771885989224685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A038722 (A052905 (n + 3)).toNat).toNat

end

end A275041.P14257771885989224685

/-!
# A275042: Number of 7Xn 0..2 arrays with no element equal to any value at offset (0,-1) (-1,-2) or (-2,0) and new values introduced in order 0..2.

The programs for A275042, there is no canonical definition to state claims against.
-/

/-! ## A275042.P5488195688145411534

`A275037(A167499(n+5)+2)`
-/

namespace A275042.P5488195688145411534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A167499 (n + 5) + 2).toNat

end

end A275042.P5488195688145411534

/-! ## A275042.P16998549463256041120

`A275037(A167614(n+5)+4)`
-/

namespace A275042.P16998549463256041120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A167614 (n + 5) + 4).toNat

end

end A275042.P16998549463256041120

/-! ## A275042.P17242569482932443981

`A275037(A000217(n+6)+7)`
-/

namespace A275042.P17242569482932443981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000217 (n + 6) + 7).toNat

end

end A275042.P17242569482932443981

/-! ## A275042.P3455766630941653517

`A275037(A055998(n+4)+10)`
-/

namespace A275042.P3455766630941653517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A055998 (n + 4) + 10).toNat

end

end A275042.P3455766630941653517

/-! ## A275042.P6412429163184371725

`A275037(A000124(n+7)-(n+1))`
-/

namespace A275042.P6412429163184371725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275037 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A275042.P6412429163184371725

/-!
# A275044: Number of set partitions of [n^2] such that within each block the numbers of elements from all residue classes modulo n are equal for n>0, a(0)=1.

The programs for A275044, there is no canonical definition to state claims against.
-/

/-! ## A275044.P5989589112914517959

`A275043(∑[4*n])`
-/

namespace A275044.P5989589112914517959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275044.P5989589112914517959

/-! ## A275044.P17319930225817517270

`A275043(A046092(n))+A011729(n)`
-/

namespace A275044.P17319930225817517270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A046092 n).toNat + A011729 n

end

end A275044.P17319930225817517270

/-! ## A275044.P16036556148221768518

`A275043(A046092(n))+A025442(n)`
-/

namespace A275044.P16036556148221768518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (A046092 n).toNat + A025442 n

end

end A275044.P16036556148221768518

/-! ## A275044.P9278979301735652019

`gcd(A000038(n), A275043(A046092(n)))`
-/

namespace A275044.P9278979301735652019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275043 (A046092 n).toNat)

end

end A275044.P9278979301735652019

/-! ## A275044.P2895817262233788604

`or(A000007(n), A275043(A046092(n)))`
-/

namespace A275044.P2895817262233788604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275043 (A046092 n).toNat)

end

end A275044.P2895817262233788604

/-!
# A275045: Diagonal of the rational function 1/(1-(wxyz + wy + wz + x + y + z)).

The programs for A275045, the canonical program `A275045.P3496592148186900212` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275045 has offset 0).

The definition of A275045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275045.P3496592148186900212

`∑{#}[n, (2*#)!*(n+2*#)!/(#!^5*(n-#)!)]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275045

/-- `∑{#}[n, (2*#)!*(n+2*#)!/(#!^5*(n-#)!)]` -/
def P3496592148186900212.Spec : Prop :=
  ∀ n, P3496592148186900212.a n = (A275045 n : ℚ)

end A275045

/-!
# A275046: Number of binary strings with n zeros and n ones avoiding the substrings 10101101 and 1110101.

The programs for A275046, there is no canonical definition to state claims against.
-/

/-! ## A275046.P6205320509805841683

`A000984(n)-A249050(A306419(n))`
-/

namespace A275046.P6205320509805841683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A249050 (A306419 n).toNat

end

end A275046.P6205320509805841683

/-! ## A275046.P4342169978648235512

`A135413(n+1)-A102683(A097924(n))`
-/

namespace A275046.P4342169978648235512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135413 (n + 1) - A102683 (A097924 n).toNat

end

end A275046.P4342169978648235512

/-! ## A275046.P13713305692268642379

`A000984(n)-A374991(A070767(n+1))`
-/

namespace A275046.P13713305692268642379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n - A374991 (A070767 (n + 1)).toNat

end

end A275046.P13713305692268642379

/-!
# A275047: Diagonal of the rational function 1/(1-(1+w)(xy + xz + yz)) [even-indexed terms only].

The programs for A275047, the canonical program `A275047.P408053448138579622` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275047 has offset 0).

The definition of A275047 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275047.P7887368794492461216

`C(3*n, n)²*C(2*n, n)`
-/

namespace A275047.P7887368794492461216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) n ^ 2 * Nat.choose (2 * n) n

end

end A275047.P7887368794492461216

namespace A275047

/-- `C(3*n, n)²*C(2*n, n)` -/
def P7887368794492461216.Spec : Prop :=
  ∀ n, (P7887368794492461216.a n : ℤ) = A275047 n

theorem P7887368794492461216.correct : P7887368794492461216.Spec := by
  intro n
  simp only [A275047, Nat.add_sub_cancel, A275047.P7887368794492461216.a, A275047.P408053448138579622.a, A000984, A000984.P7946844122574426130.a, A188662, A188662.P10029233221612168784.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275047

/-! ## A275047.P1759533921446196262

`∑{#}[n, C(n, #)*C(2*n, #)*C(2*n-#, n)*C(4*n-#, 2*n)]`
-/

namespace A275047.P1759533921446196262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (2 * n) k * Nat.choose ((2 * n : ℤ) - (k : ℤ)).toNat n * Nat.choose ((4 * n : ℤ) - (k : ℤ)).toNat (2 * n)

end

end A275047.P1759533921446196262

namespace A275047

/-- `∑{#}[n, C(n, #)*C(2*n, #)*C(2*n-#, n)*C(4*n-#, 2*n)]` -/
def P1759533921446196262.Spec : Prop :=
  ∀ n, (P1759533921446196262.a n : ℤ) = A275047 n

end A275047

/-! ## A275047.P14537958302432603447

`9*(3*n-1)²*(3*n-2)²/(2*n^3*(2*n-1))*a(n-1)` with `a(0)=1`
-/

namespace A275047.P14537958302432603447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 * ((3 * n : ℤ) - 1) ^ 2 * ((3 * n : ℤ) - 2) ^ 2 : ℚ) / ((2 * n ^ 3 : ℤ) * ((2 * n : ℤ) - 1) : ℚ) * a (n - 1)

end

end A275047.P14537958302432603447

namespace A275047

/-- `9*(3*n-1)²*(3*n-2)²/(2*n^3*(2*n-1))*a(n-1)` -/
def P14537958302432603447.Spec : Prop :=
  ∀ n, P14537958302432603447.a n = (A275047 n : ℚ)

end A275047

/-! ## A275047.P408053448138579622

`A188662(n)*A000984(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A275047

/-- `A188662(n)*A000984(n)` -/
def P408053448138579622.Spec : Prop :=
  ∀ n, P408053448138579622.a n = A275047 n

theorem P408053448138579622.correct : P408053448138579622.Spec := by
  intro n
  simp only [A275047]

end A275047

/-! ## A275047.P750062279961580388

`9*(3*n-1)²*(3*n-2)²*a(n-1)/((4*n-2)*n^3)` with `a(0)=1`
-/

namespace A275047.P750062279961580388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (9 * ((3 * n : ℤ) - 1) ^ 2 * ((3 * n : ℤ) - 2) ^ 2 : ℚ) * a (n - 1) / (((4 * n : ℤ) - 2) * (n ^ 3 : ℤ) : ℚ)

end

end A275047.P750062279961580388

namespace A275047

/-- `9*(3*n-1)²*(3*n-2)²*a(n-1)/((4*n-2)*n^3)` -/
def P750062279961580388.Spec : Prop :=
  ∀ n, P750062279961580388.a n = (A275047 n : ℚ)

end A275047

/-!
# A275049: Diagonal of the rational function 1/(1 - (w*x*z + x*y*z + w*y + x*y + z)) [even-indexed terms only].

The programs for A275049, the canonical program `A275049.P12216903099570071986` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275049 has offset 0).

The definition of A275049 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275049.P12216903099570071986

`∑{#}[n, C(3*n+#, #)*C(n, #)*(3*n)!/n!^3]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275049

/-- `∑{#}[n, C(3*n+#, #)*C(n, #)*(3*n)!/n!^3]` -/
def P12216903099570071986.Spec : Prop :=
  ∀ n, P12216903099570071986.a n = (A275049 n : ℚ)

end A275049

/-!
# A275050: Diagonal of the rational function 1/(1 - (w*x*z + w*y*z + x*y*z + w*y + x*y + z)) [even-indexed terms only].

The programs for A275050, there is no canonical definition to state claims against.
-/

/-! ## A275050.P15477640559766841300

`A002894(n)*A117317(A062728(n))`
-/

namespace A275050.P15477640559766841300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002894 n * A117317 (A062728 n).toNat

end

end A275050.P15477640559766841300

/-! ## A275050.P668843587956915843

`A000984(n)²*A117317(A062728(n))`
-/

namespace A275050.P668843587956915843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n ^ 2 * A117317 (A062728 n).toNat

end

end A275050.P668843587956915843

/-! ## A275050.P6684376538681502257

`A018224(2*n)*A117317(A062728(n))`
-/

namespace A275050.P6684376538681502257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018224 (2 * n) * A117317 (A062728 n).toNat

end

end A275050.P6684376538681502257

/-! ## A275050.P12586049959675596337

`A126930(2*n)*A376467(A046092(n))`
-/

namespace A275050.P12586049959675596337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) * A376467 (A046092 n).toNat

end

end A275050.P12586049959675596337

/-! ## A275050.P11401286190918328546

`A126930(2*n)²*A117317(A062728(n))`
-/

namespace A275050.P11401286190918328546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n) ^ 2 * A117317 (A062728 n).toNat

end

end A275050.P11401286190918328546

/-!
# A275051: Expansion of 3F2([1/9, 4/9, 5/9], [1/3,1], 729*x).

The programs for A275051, there is no canonical definition to state claims against.
-/

/-! ## A275051.P1139971051898453108

`A275452(n)/A275456(n)*A275455(n)`
-/

namespace A275051.P1139971051898453108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275452 n : ℚ) / (A275456 n : ℚ) * (A275455 n : ℚ)

end

end A275051.P1139971051898453108

/-! ## A275051.P2210737611566005245

`A275452(n)/A275460(n)*A275457(n)`
-/

namespace A275051.P2210737611566005245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275452 n : ℚ) / (A275460 n : ℚ) * (A275457 n : ℚ)

end

end A275051.P2210737611566005245

/-!
# A275053: G.f.: 3F2([1/9, 2/9, 7/9], [2/3,1], 729x).

The programs for A275053, there is no canonical definition to state claims against.
-/

/-! ## A275053.P8485756576393814761

`A275054(n)/A275454(n)*A275453(n)`
-/

namespace A275053.P8485756576393814761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275054 n : ℚ) / (A275454 n : ℚ) * (A275453 n : ℚ)

end

end A275053.P8485756576393814761

/-! ## A275053.P16613686024949299577

`A275054(n)/A275459(n)*A275458(n)`
-/

namespace A275053.P16613686024949299577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275054 n : ℚ) / (A275459 n : ℚ) * (A275458 n : ℚ)

end

end A275053.P16613686024949299577

/-! ## A275053.P596468654361631537

`A275453(n)/A275458(n)*A275461(n)`
-/

namespace A275053.P596468654361631537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275453 n : ℚ) / (A275458 n : ℚ) * (A275461 n : ℚ)

end

end A275053.P596468654361631537

/-! ## A275053.P746168621990623659

`A275454(n)/A275459(n)*A275461(n)`
-/

namespace A275053.P746168621990623659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275454 n : ℚ) / (A275459 n : ℚ) * (A275461 n : ℚ)

end

end A275053.P746168621990623659

/-!
# A275054: G.f.: 3F2([1/9, 2/9, 8/9], [2/3,1], 729 x).

The programs for A275054, there is no canonical definition to state claims against.
-/

/-! ## A275054.P1189217715540944136

`A275454(n)/A275458(n)*A275461(n)`
-/

namespace A275054.P1189217715540944136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275454 n : ℚ) / (A275458 n : ℚ) * (A275461 n : ℚ)

end

end A275054.P1189217715540944136

/-!
# A275055: Irregular triangle read by rows listing divisors d of n in order of appearance in a matrix of products that arranges the powers of prime divisors p of n along independent axes.

The programs for A275055, there is no canonical definition to state claims against.
-/

/-! ## A275055.P5421202474951281329

`A027750(n+1)+Δ[A099104(A326707(n+1))]`
-/

namespace A275055.P5421202474951281329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099104 (A326707 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + (f1 (n + 1) - f1 n)

end

end A275055.P5421202474951281329

/-! ## A275055.P10267132591636590949

`A085859(A136868(n))+A027750(n+1)`
-/

namespace A275055.P10267132591636590949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A136868 n).toNat + A027750 (n + 1)

end

end A275055.P10267132591636590949

/-! ## A275055.P16195366785893473631

`A162782(A145515(n))+A027750(n+1)`
-/

namespace A275055.P16195366785893473631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (A145515 n).toNat + A027750 (n + 1)

end

end A275055.P16195366785893473631

/-! ## A275055.P16918490961502418077

`A027750(n+1)+A025469(A032022(n+1))`
-/

namespace A275055.P16918490961502418077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) + A025469 (A032022 (n + 1)).toNat

end

end A275055.P16918490961502418077

/-!
# A275057: Numbers of closed lambda terms of natural size n.

The programs for A275057, there is no canonical definition to state claims against.
-/

/-! ## A275057.P2311256343375661932

`A103221(A293993(n)+A057354(n))`
-/

namespace A275057.P2311256343375661932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A293993 n + A057354 n).toNat

end

end A275057.P2311256343375661932

/-! ## A275057.P11943533516708659789

`A103221(A293993(n)+A057357(n))`
-/

namespace A275057.P11943533516708659789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A293993 n + A057357 n).toNat

end

end A275057.P11943533516708659789

/-! ## A275057.P12571840328514514422

`A152467(A293993(n)+A097883(n))`
-/

namespace A275057.P12571840328514514422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A293993 n + A097883 n).toNat

end

end A275057.P12571840328514514422

/-! ## A275057.P3985233890289829239

`A103221(or(A002264(n), A293993(n)))`
-/

namespace A275057.P3985233890289829239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor (A002264 n) (A293993 n)).toNat

end

end A275057.P3985233890289829239

/-! ## A275057.P17942457202304367453

`A103221(or(A010054(n), A293993(n)))`
-/

namespace A275057.P17942457202304367453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor (A010054 n) (A293993 n)).toNat

end

end A275057.P17942457202304367453

/-!
# A275058: Primes p for which floor(p/10) is a perfect square.

The programs for A275058, there is no canonical definition to state claims against.
-/

/-! ## A275058.P13624078929001438027

`p?[n*A003285(floor(n/10)+1)]`
-/

namespace A275058.P13624078929001438027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003285 (⌊(n : ℚ) / 10⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275058.P13624078929001438027

/-! ## A275058.P11100271665013739946

`p?[lcm(n, A258998(A059995(n)))]`
-/

namespace A275058.P11100271665013739946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A258998 (A059995 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A275058.P11100271665013739946

/-! ## A275058.P13748835953329897741

`p?[(n+1)*A053186(A008616(n))]`
-/

namespace A275058.P13748835953329897741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053186 (A008616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275058.P13748835953329897741

/-! ## A275058.P2082037915868767013

`p?[A053186(A008616(n))*A131738(n)]`
-/

namespace A275058.P2082037915868767013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A008616 n).toNat * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275058.P2082037915868767013

/-! ## A275058.P14042466543879836764

`p?[A258998(A059995(n))²*A233583(n+1)]`
-/

namespace A275058.P14042466543879836764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258998 (A059995 n).toNat ^ 2 * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A275058.P14042466543879836764

/-!
# A275059: Numbers n such that A000010(n) + n^2 is a prime.

The programs for A275059, the canonical program `A275059.P1792862244400861378` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275059 has offset 1).

The definition of A275059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275059.P1792862244400861378

`floor(sqrt(p?[A264724(n+1)]))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A275059

/-- `floor(sqrt(p?[A264724(n+1)]))` -/
def P1792862244400861378.Spec : Prop :=
  ∀ n, P1792862244400861378.a n = A275059 (n + 1)

theorem P1792862244400861378.correct : P1792862244400861378.Spec := by
  intro n
  simp only [A275059, Nat.add_sub_cancel]

end A275059

/-! ## A275059.P5425974870039529291

`floor(sqrt(p?[A000010(n+1)+(n+1)²]))`
-/

namespace A275059.P5425974870039529291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P5425974870039529291

namespace A275059

/-- `floor(sqrt(p?[A000010(n+1)+(n+1)²]))` -/
def P5425974870039529291.Spec : Prop :=
  ∀ n, P5425974870039529291.a n = A275059 (n + 1)

end A275059

/-! ## A275059.P13508437965800626377

`floor(sqrt(p?[A121048(n+1)+n²+n]))`
-/

namespace A275059.P13508437965800626377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P13508437965800626377

namespace A275059

/-- `floor(sqrt(p?[A121048(n+1)+n²+n]))` -/
def P13508437965800626377.Spec : Prop :=
  ∀ n, P13508437965800626377.a n = A275059 (n + 1)

theorem P13508437965800626377.correct : P13508437965800626377.Spec := by
  intro n
  simp only [A275059, Nat.add_sub_cancel, A275059.P13508437965800626377.f1, A275059.P13508437965800626377.a, A275059.P1792862244400861378.f1, A275059.P1792862244400861378.a, A121048, A121048.P10222907602682812102.a, A264724, A264724.P2483294076025266206.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275059

/-! ## A275059.P3223357199954885371

`floor(sqrt(p?[A039649(n+1)+n*(n+2)]))`
-/

namespace A275059.P3223357199954885371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + (n * (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P3223357199954885371

namespace A275059

/-- `floor(sqrt(p?[A039649(n+1)+n*(n+2)]))` -/
def P3223357199954885371.Spec : Prop :=
  ∀ n, P3223357199954885371.a n = A275059 (n + 1)

end A275059

/-! ## A275059.P15306649709864066414

`floor(sqrt(p?[(n+1)²+A109606(n+1)+1]))`
-/

namespace A275059.P15306649709864066414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A109606 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P15306649709864066414

namespace A275059

/-- `floor(sqrt(p?[(n+1)²+A109606(n+1)+1]))` -/
def P15306649709864066414.Spec : Prop :=
  ∀ n, P15306649709864066414.a n = A275059 (n + 1)

theorem P15306649709864066414.correct : P15306649709864066414.Spec := by
  intro n
  simp only [A275059, Nat.add_sub_cancel, A275059.P15306649709864066414.f1, A275059.P15306649709864066414.a, A275059.P1792862244400861378.f1, A275059.P1792862244400861378.a, A109606, A109606.P2415810041766612210.a, A264724, A264724.P2483294076025266206.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275059

/-! ## A275059.P710691946985800912

`floor(sqrt(p?[(n+1)²+(n+1)²-A258434(n+1)]))`
-/

namespace A275059.P710691946985800912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - A258434 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A275059.P710691946985800912

namespace A275059

/-- `floor(sqrt(p?[(n+1)²+(n+1)²-A258434(n+1)]))` -/
def P710691946985800912.Spec : Prop :=
  ∀ n, P710691946985800912.a n = A275059 (n + 1)

theorem P710691946985800912.correct : P710691946985800912.Spec := by
  intro n
  simp only [A275059, Nat.add_sub_cancel, A275059.P710691946985800912.f1, A275059.P710691946985800912.a, A275059.P1792862244400861378.f1, A275059.P1792862244400861378.a, A258434, A258434.P3576622354757452924.a, A264724, A264724.P2483294076025266206.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275059

/-!
# A275060: Numbers n such that there exists x in N : (x+1)^3 - x^3 = 61*n^2.

The programs for A275060, the canonical program `A275060.P14445719961384798114` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275060 has offset 1).

The definition of A275060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A275060.P14445719961384798114

`974*a(n-1)-a(n-2)` with `a(0)=1, a(1)=973`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275060

/-- `974*a(n-1)-a(n-2)` -/
def P14445719961384798114.Spec : Prop :=
  ∀ n, P14445719961384798114.a n = A275060 (n + 1)

theorem P14445719961384798114.correct : P14445719961384798114.Spec := by
  intro n
  simp only [A275060, Nat.add_sub_cancel]

end A275060

/-! ## A275060.P912338874882756705

`A042409(2*n)`
-/

namespace A275060.P912338874882756705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042409 (2 * n)

end

end A275060.P912338874882756705

namespace A275060

/-- `A042409(2*n)` -/
def P912338874882756705.Spec : Prop :=
  ∀ n, P912338874882756705.a n = A275060 (n + 1)

end A275060

/-!
# A275061: Number of binary strings of length n avoiding 4-antipowers.

The programs for A275061, there is no canonical definition to state claims against.
-/

/-! ## A275061.P1738036399489453990

`A244230(A148093(n+1))`
-/

namespace A275061.P1738036399489453990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244230 (A148093 (n + 1)).toNat

end

end A275061.P1738036399489453990

/-! ## A275061.P16000751156903696060

`A061392(A196859(n+1))`
-/

namespace A275061.P16000751156903696060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A196859 (n + 1)).toNat

end

end A275061.P16000751156903696060

/-! ## A275061.P16396733853491508562

`A061392(A202207(n+1))`
-/

namespace A275061.P16396733853491508562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A202207 (n + 1)).toNat

end

end A275061.P16396733853491508562

/-! ## A275061.P3406943008367089146

`A061392(A005955(n+4))`
-/

namespace A275061.P3406943008367089146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A005955 (n + 4)).toNat

end

end A275061.P3406943008367089146

/-! ## A275061.P15754910085095821475

`∩[A286660(n), A328607(n)]`
-/

namespace A275061.P15754910085095821475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328607 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275061.P15754910085095821475

/-!
# A275063: Number of permutations p of [n] such that p(i)-i is a multiple of eight for all i in [n].

The programs for A275063, the canonical program `A275063.P13515188777508078148` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275063 has offset 0).

The definition of A275063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 123 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275063.P16845908601067462941

`∏[ceil(n/8)+floor(acot(n))]`
-/

namespace A275063.P16845908601067462941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275063.P16845908601067462941

namespace A275063

/-- `∏[ceil(n/8)+floor(acot(n))]` -/
def P16845908601067462941.Spec : Prop :=
  ∀ n, P16845908601067462941.a n = A275063 n

end A275063

/-! ## A275063.P13515188777508078148

`ceil(n/8)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275063

/-- `ceil(n/8)*a(n-1)` -/
def P13515188777508078148.Spec : Prop :=
  ∀ n, P13515188777508078148.a n = A275063 n

theorem P13515188777508078148.correct : P13515188777508078148.Spec := by
  intro n
  simp only [A275063]

end A275063

/-! ## A275063.P5939994071852679041

`∏[gcd(C(n, n²), ceil(n/8))]`
-/

namespace A275063.P5939994071852679041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose n (n ^ 2) : ℤ) ⌈(n : ℚ) / 8⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275063.P5939994071852679041

namespace A275063

/-- `∏[gcd(C(n, n²), ceil(n/8))]` -/
def P5939994071852679041.Spec : Prop :=
  ∀ n, (P5939994071852679041.a n : ℤ) = A275063 n

end A275063

/-! ## A275063.P16983089484098599189

`∏[or(C(n, n²), ceil(n/8))]`
-/

namespace A275063.P16983089484098599189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose n (n ^ 2) : ℤ) ⌈(n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275063.P16983089484098599189

namespace A275063

/-- `∏[or(C(n, n²), ceil(n/8))]` -/
def P16983089484098599189.Spec : Prop :=
  ∀ n, P16983089484098599189.a n = A275063 n

end A275063

/-! ## A275063.P11618623358038191290

`∏[ceil(n/8)^ceil(sin(n)²)]`
-/

namespace A275063.P11618623358038191290
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(n : ℚ) / 8⌉ : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275063.P11618623358038191290

namespace A275063

/-- `∏[ceil(n/8)^ceil(sin(n)²)]` -/
def P11618623358038191290.Spec : Prop :=
  ∀ n, P11618623358038191290.a n = (A275063 n : ℚ)

end A275063

/-! ## A275063.P5572051056353202449

`∏[floor(comp[2*n+3]/16)+1]`
-/

namespace A275063.P5572051056353202449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / 16⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275063.P5572051056353202449

namespace A275063

/-- `∏[floor(comp[2*n+3]/16)+1]` -/
def P5572051056353202449.Spec : Prop :=
  ∀ n, P5572051056353202449.a n = A275063 n

end A275063

/-! ## A275063.P11356614724307519985

`a(n-1)*∑[char[a(n-1)+8]]` with `a(0)=1`
-/

namespace A275063.P11356614724307519985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275063.P11356614724307519985

namespace A275063

/-- `a(n-1)*∑[char[a(n-1)+8]]` -/
def P11356614724307519985.Spec : Prop :=
  ∀ n, (P11356614724307519985.a n : ℤ) = A275063 n

end A275063

/-! ## A275063.P13516218992531746114

`a(n-1)*A110656(n)` with `a(0)=1`
-/

namespace A275063.P13516218992531746114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A110656 n

end

end A275063.P13516218992531746114

namespace A275063

/-- `a(n-1)*A110656(n)` -/
def P13516218992531746114.Spec : Prop :=
  ∀ n, P13516218992531746114.a n = A275063 n

end A275063

/-! ## A275063.P4641966152520865856

`∏[A110656(n+1)]/A110656(n+1)`
-/

namespace A275063.P4641966152520865856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A110656 (n + 1) : ℚ)

end

end A275063.P4641966152520865856

namespace A275063

/-- `∏[A110656(n+1)]/A110656(n+1)` -/
def P4641966152520865856.Spec : Prop :=
  ∀ n, P4641966152520865856.a n = (A275063 n : ℚ)

end A275063

/-!
# A275064: Number of permutations p of [n] such that p(i)-i is a multiple of nine for all i in [n].

The programs for A275064, the canonical program `A275064.P12108905892050206859` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275064 has offset 0).

The definition of A275064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275064.P6944654574311076360

`∏[ceil(round(acot(n)+n)/9)]`
-/

namespace A275064.P6944654574311076360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275064.P6944654574311076360

namespace A275064

/-- `∏[ceil(round(acot(n)+n)/9)]` -/
def P6944654574311076360.Spec : Prop :=
  ∀ n, P6944654574311076360.a n = A275064 n

end A275064

/-! ## A275064.P12108905892050206859

`ceil(n/9)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275064

/-- `ceil(n/9)*a(n-1)` -/
def P12108905892050206859.Spec : Prop :=
  ∀ n, P12108905892050206859.a n = A275064 n

theorem P12108905892050206859.correct : P12108905892050206859.Spec := by
  intro n
  simp only [A275064]

end A275064

/-! ## A275064.P960945937625894074

`∏[ceil(round(sqrt(n²+1))/9)]`
-/

namespace A275064.P960945937625894074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275064.P960945937625894074

namespace A275064

/-- `∏[ceil(round(sqrt(n²+1))/9)]` -/
def P960945937625894074.Spec : Prop :=
  ∀ n, P960945937625894074.a n = A275064 n

end A275064

/-! ## A275064.P16160739480988633696

`a(n-1)*∑[char[a(n-1)+9]]` with `a(0)=1`
-/

namespace A275064.P16160739480988633696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275064.P16160739480988633696

namespace A275064

/-- `a(n-1)*∑[char[a(n-1)+9]]` -/
def P16160739480988633696.Spec : Prop :=
  ∀ n, (P16160739480988633696.a n : ℤ) = A275064 n

end A275064

/-! ## A275064.P11468535615037706929

`a(n-1)*∑[char[Δ[A117625(n)]]]` with `a(0)=1`
-/

namespace A275064.P11468535615037706929
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275064.P11468535615037706929

namespace A275064

/-- `a(n-1)*∑[char[Δ[A117625(n)]]]` -/
def P11468535615037706929.Spec : Prop :=
  ∀ n, (P11468535615037706929.a n : ℤ) = A275064 n

end A275064

/-! ## A275064.P13636841129280357803

`a(n-1)*A002264(A002264(n+8))` with `a(0)=1`
-/

namespace A275064.P13636841129280357803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A002264 (A002264 (n + 8)).toNat

end

end A275064.P13636841129280357803

namespace A275064

/-- `a(n-1)*A002264(A002264(n+8))` -/
def P13636841129280357803.Spec : Prop :=
  ∀ n, P13636841129280357803.a n = A275064 n

end A275064

/-! ## A275064.P16038211564744394485

`∏[A008618(2*n)]/A008618(2*n)`
-/

namespace A275064.P16038211564744394485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A008618 (2 * n) : ℚ)

end

end A275064.P16038211564744394485

namespace A275064

/-- `∏[A008618(2*n)]/A008618(2*n)` -/
def P16038211564744394485.Spec : Prop :=
  ∀ n, P16038211564744394485.a n = (A275064 n : ℚ)

end A275064

/-!
# A275065: Number of permutations p of [n] such that p(i)-i is a multiple of ten for all i in [n].

The programs for A275065, the canonical program `A275065.P10382309683220641454` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275065 has offset 0).

The definition of A275065 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275065.P16300597232940707493

`∏[ceil(round(acot(n)+n)/10)]`
-/

namespace A275065.P16300597232940707493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) / 10⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275065.P16300597232940707493

namespace A275065

/-- `∏[ceil(round(acot(n)+n)/10)]` -/
def P16300597232940707493.Spec : Prop :=
  ∀ n, P16300597232940707493.a n = A275065 n

end A275065

/-! ## A275065.P10382309683220641454

`ceil(n/10)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A275065

/-- `ceil(n/10)*a(n-1)` -/
def P10382309683220641454.Spec : Prop :=
  ∀ n, P10382309683220641454.a n = A275065 n

theorem P10382309683220641454.correct : P10382309683220641454.Spec := by
  intro n
  simp only [A275065]

end A275065

/-! ## A275065.P2768553989343879980

`∏[floor(abs(1-2*n)/20)+1]`
-/

namespace A275065.P2768553989343879980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|1 - (2 * n : ℤ)| : ℚ) / 20⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A275065.P2768553989343879980

namespace A275065

/-- `∏[floor(abs(1-2*n)/20)+1]` -/
def P2768553989343879980.Spec : Prop :=
  ∀ n, P2768553989343879980.a n = A275065 n

end A275065

/-! ## A275065.P2273944755640449014

`a(n-1)*∑[char[a(n-1)+10]]` with `a(0)=1`
-/

namespace A275065.P2273944755640449014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 10

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275065.P2273944755640449014

namespace A275065

/-- `a(n-1)*∑[char[a(n-1)+10]]` -/
def P2273944755640449014.Spec : Prop :=
  ∀ n, (P2273944755640449014.a n : ℤ) = A275065 n

end A275065

/-! ## A275065.P15563471215455829669

`a(n-1)*A226233(n)` with `a(0)=1`
-/

namespace A275065.P15563471215455829669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A226233 n

end

end A275065.P15563471215455829669

namespace A275065

/-- `a(n-1)*A226233(n)` -/
def P15563471215455829669.Spec : Prop :=
  ∀ n, P15563471215455829669.a n = A275065 n

end A275065

/-! ## A275065.P8453040616442815984

`a(n-1)*A059995(n+9)` with `a(0)=1`
-/

namespace A275065.P8453040616442815984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A059995 (n + 9)

end

end A275065.P8453040616442815984

namespace A275065

/-- `a(n-1)*A059995(n+9)` -/
def P8453040616442815984.Spec : Prop :=
  ∀ n, P8453040616442815984.a n = A275065 n

end A275065

/-!
# A275066: First differences of A275315.

The programs for A275066, there is no canonical definition to state claims against.
-/

/-! ## A275066.P8348626188991296614

`A275315(n+2)-A275315(n+1)`
-/

namespace A275066.P8348626188991296614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 2) - A275315 (n + 1)

end

end A275066.P8348626188991296614

/-! ## A275066.P16280920201696425816

`Δ[(A002046(n+1)+A002025(n+1))/2]`
-/

namespace A275066.P16280920201696425816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002046 (n + 1) + A002025 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275066.P16280920201696425816

/-! ## A275066.P3283907828009776528

`Δ[A275315(n+1)]`
-/

namespace A275066.P3283907828009776528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275066.P3283907828009776528

/-! ## A275066.P13196425327861214122

`Δ[A180164(n+1)/2]`
-/

namespace A275066.P13196425327861214122
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275066.P13196425327861214122

/-! ## A275066.P6030158366251831740

`(A180164(n+2)-A180164(n+1))/2`
-/

namespace A275066.P6030158366251831740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180164 (n + 2) - A180164 (n + 1) : ℚ) / 2

end

end A275066.P6030158366251831740

/-!
# A275068: Squarefree numbers in A022344.

The programs for A275068, the canonical program `A275068.P8596379837417912279` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275068 has offset 0).

The definition of A275068 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275068.P16656706797614967733

`record[A007913(A031363(n+1))]`
-/

namespace A275068.P16656706797614967733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A031363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275068.P16656706797614967733

namespace A275068

/-- `record[A007913(A031363(n+1))]` -/
def P16656706797614967733.Spec : Prop :=
  ∀ n, P16656706797614967733.a n = A275068 n

end A275068

/-! ## A275068.P12060449012402292176

`filter[A031363(n+1), A008966(#)]`
-/

namespace A275068.P12060449012402292176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A275068.P12060449012402292176

namespace A275068

/-- `filter[A031363(n+1), A008966(#)]` -/
def P12060449012402292176.Spec : Prop :=
  ∀ n, P12060449012402292176.a n = A275068 n

end A275068

/-! ## A275068.P8929385715100865109

`filter[A031363(n+1), A323239(#)]`
-/

namespace A275068.P8929385715100865109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A275068.P8929385715100865109

namespace A275068

/-- `filter[A031363(n+1), A323239(#)]` -/
def P8929385715100865109.Spec : Prop :=
  ∀ n, P8929385715100865109.a n = A275068 n

end A275068

/-! ## A275068.P8596379837417912279

`filter[A035259(n+1), A323239(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A275068

/-- `filter[A035259(n+1), A323239(#)]` -/
def P8596379837417912279.Spec : Prop :=
  ∀ n, P8596379837417912279.a n = A275068 n

theorem P8596379837417912279.correct : P8596379837417912279.Spec := by
  intro n
  simp only [A275068]

end A275068

/-! ## A275068.P4658626132730021930

`filter[A057762(n+1), A323239(#)]`
-/

namespace A275068.P4658626132730021930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A275068.P4658626132730021930

namespace A275068

/-- `filter[A057762(n+1), A323239(#)]` -/
def P4658626132730021930.Spec : Prop :=
  ∀ n, P4658626132730021930.a n = A275068 n

end A275068

/-! ## A275068.P11065857521149273166

`filter[A031363(n+1), A359377(#)]`
-/

namespace A275068.P11065857521149273166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A275068.P11065857521149273166

namespace A275068

/-- `filter[A031363(n+1), A359377(#)]` -/
def P11065857521149273166.Spec : Prop :=
  ∀ n, P11065857521149273166.a n = A275068 n

end A275068

/-! ## A275068.P7274577619959634074

`filter[A031363(n+1), A373154(#)]`
-/

namespace A275068.P7274577619959634074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A275068.P7274577619959634074

namespace A275068

/-- `filter[A031363(n+1), A373154(#)]` -/
def P7274577619959634074.Spec : Prop :=
  ∀ n, P7274577619959634074.a n = A275068 n

end A275068

/-! ## A275068.P7277864750153414983

`filter[A035259(n+1), A373154(#)]`
-/

namespace A275068.P7277864750153414983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A275068.P7277864750153414983

namespace A275068

/-- `filter[A035259(n+1), A373154(#)]` -/
def P7277864750153414983.Spec : Prop :=
  ∀ n, P7277864750153414983.a n = A275068 n

end A275068

/-! ## A275068.P2769301130316877809

`filter[A057762(n+1), A373154(#)]`
-/

namespace A275068.P2769301130316877809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373154 (f1 j).toNat = 1) n)

end

end A275068.P2769301130316877809

namespace A275068

/-- `filter[A057762(n+1), A373154(#)]` -/
def P2769301130316877809.Spec : Prop :=
  ∀ n, P2769301130316877809.a n = A275068 n

end A275068

/-! ## A275068.P3659401366992040981

`record[A255368(∏{p}[A031363(n+1), #])]`
-/

namespace A275068.P3659401366992040981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255368 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275068.P3659401366992040981

namespace A275068

/-- `record[A255368(∏{p}[A031363(n+1), #])]` -/
def P3659401366992040981.Spec : Prop :=
  ∀ n, P3659401366992040981.a n = A275068 n

end A275068

/-! ## A275068.P4233589840707344234

`∩[A005117(n+1), A031363(n+1)]`
-/

namespace A275068.P4233589840707344234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P4233589840707344234

namespace A275068

/-- `∩[A005117(n+1), A031363(n+1)]` -/
def P4233589840707344234.Spec : Prop :=
  ∀ n, (P4233589840707344234.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P3248681953906444021

`∩[A031363(n+1), A056911(n+1)]`
-/

namespace A275068.P3248681953906444021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P3248681953906444021

namespace A275068

/-- `∩[A031363(n+1), A056911(n+1)]` -/
def P3248681953906444021.Spec : Prop :=
  ∀ n, (P3248681953906444021.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P8687265994135274063

`∩[A035259(n+1), A056911(n+1)]`
-/

namespace A275068.P8687265994135274063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P8687265994135274063

namespace A275068

/-- `∩[A035259(n+1), A056911(n+1)]` -/
def P8687265994135274063.Spec : Prop :=
  ∀ n, (P8687265994135274063.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P18286983429382006135

`∩[A056911(n+1), A057762(n+1)]`
-/

namespace A275068.P18286983429382006135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P18286983429382006135

namespace A275068

/-- `∩[A056911(n+1), A057762(n+1)]` -/
def P18286983429382006135.Spec : Prop :=
  ∀ n, (P18286983429382006135.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P10864102386167483119

`∩[A031363(n+1), A087246(n+1)]`
-/

namespace A275068.P10864102386167483119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P10864102386167483119

namespace A275068

/-- `∩[A031363(n+1), A087246(n+1)]` -/
def P10864102386167483119.Spec : Prop :=
  ∀ n, (P10864102386167483119.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P5179286527607056613

`∩[A031363(n+1), A276378(n+1)]`
-/

namespace A275068.P5179286527607056613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P5179286527607056613

namespace A275068

/-- `∩[A031363(n+1), A276378(n+1)]` -/
def P5179286527607056613.Spec : Prop :=
  ∀ n, (P5179286527607056613.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P17485032729286724074

`∩[A035259(n+1), A276378(n+1)]`
-/

namespace A275068.P17485032729286724074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P17485032729286724074

namespace A275068

/-- `∩[A035259(n+1), A276378(n+1)]` -/
def P17485032729286724074.Spec : Prop :=
  ∀ n, (P17485032729286724074.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P4765374332656157994

`∩[A031363(n+1), A348506(n+1)]`
-/

namespace A275068.P4765374332656157994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P4765374332656157994

namespace A275068

/-- `∩[A031363(n+1), A348506(n+1)]` -/
def P4765374332656157994.Spec : Prop :=
  ∀ n, (P4765374332656157994.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P4120765719067310460

`∩[A031363(n+1), A367801(n+1)]`
-/

namespace A275068.P4120765719067310460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275068.P4120765719067310460

namespace A275068

/-- `∩[A031363(n+1), A367801(n+1)]` -/
def P4120765719067310460.Spec : Prop :=
  ∀ n, (P4120765719067310460.a n : ℤ) = A275068 n

end A275068

/-! ## A275068.P4488968887386936551

`record[A076109(n+1)-A284152(n+1)²]`
-/

namespace A275068.P4488968887386936551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (n + 1) - A284152 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275068.P4488968887386936551

namespace A275068

/-- `record[A076109(n+1)-A284152(n+1)²]` -/
def P4488968887386936551.Spec : Prop :=
  ∀ n, P4488968887386936551.a n = A275068 n

end A275068

/-!
# A275069: Number A(n,k) of set partitions of [n] such that i-j is a multiple of k for all i,j belonging to the same block; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A275069, there is no canonical definition to state claims against.
-/

/-! ## A275069.P5446640336881539794

`A028310(A375924(n)%A096547(n+1))`
-/

namespace A275069.P5446640336881539794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A375924 n) (A096547 (n + 1))).toNat

end

end A275069.P5446640336881539794

/-! ## A275069.P5038295331498069702

`A341001(A034368(n+1))+A274835(n)`
-/

namespace A275069.P5038295331498069702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341001 ((A034368 (n + 1)).toNat + 385) + A274835 n

end

end A275069.P5038295331498069702

/-! ## A275069.P2570777971517739422

`A274835(n)+A055641(A274841(n))`
-/

namespace A275069.P2570777971517739422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274835 n + A055641 (A274841 n).toNat

end

end A275069.P2570777971517739422

/-!
# A275070: Number of set partitions of [n] such that i-j is a multiple of three for all i,j belonging to the same block.

The programs for A275070, there is no canonical definition to state claims against.
-/

/-! ## A275070.P10359029458948215981

`A275069(∑[n+4]+2)`
-/

namespace A275070.P10359029458948215981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A275070.P10359029458948215981

/-! ## A275070.P18201145312242246424

`sqrt(A275073(2*n))`
-/

namespace A275070.P18201145312242246424
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A275073 (2 * n) : ℝ)

end

end A275070.P18201145312242246424

/-! ## A275070.P17475890814632560046

`root(A275076(3*n), 3)`
-/

namespace A275070.P17475890814632560046
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A275076 (3 * n) : ℝ) ^ (1 / (3 : ℝ))

end

end A275070.P17475890814632560046

/-! ## A275070.P3744063789359348415

`A275076(3*n)/A275073(2*n)`
-/

namespace A275070.P3744063789359348415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275076 (3 * n) : ℚ) / (A275073 (2 * n) : ℚ)

end

end A275070.P3744063789359348415

/-! ## A275070.P11668007445127514349

`A177849(A326160(n+1))`
-/

namespace A275070.P11668007445127514349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (A326160 (n + 1)).toNat

end

end A275070.P11668007445127514349

/-!
# A275071: Number of set partitions of [n] such that i-j is a multiple of four for all i,j belonging to the same block.

The programs for A275071, there is no canonical definition to state claims against.
-/

/-! ## A275071.P14339185000709898381

`A275069(eq[4, A025581(n)])`
-/

namespace A275071.P14339185000709898381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275071.P14339185000709898381

/-! ## A275071.P5900286520141055211

`A275069(A055999(n+2)+1)`
-/

namespace A275071.P5900286520141055211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A055999 (n + 2) + 1).toNat

end

end A275071.P5900286520141055211

/-! ## A275071.P16969946776767279081

`A275069(A000217(n+5)-5)`
-/

namespace A275071.P16969946776767279081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A000217 (n + 5) - 5).toNat

end

end A275071.P16969946776767279081

/-! ## A275071.P15971473150327944569

`A275069(n+1+A000096(n+3))`
-/

namespace A275071.P15971473150327944569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 ((n + 1 : ℤ) + A000096 (n + 3)).toNat

end

end A275071.P15971473150327944569

/-! ## A275071.P10245549032232638990

`A275069(2*(n+2)+A008805(2*(n+2)))`
-/

namespace A275071.P10245549032232638990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 ((2 * (n + 2) : ℤ) + A008805 (2 * (n + 2))).toNat

end

end A275071.P10245549032232638990

/-! ## A275071.P17643078836069707349

`sqrt(A275075(2*n))`
-/

namespace A275071.P17643078836069707349
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A275075 (2 * n) : ℝ)

end

end A275071.P17643078836069707349

/-!
# A275072: Number of set partitions of [n] such that i-j is a multiple of five for all i,j belonging to the same block.

The programs for A275072, there is no canonical definition to state claims against.
-/

/-! ## A275072.P16487786141772783504

`A275069(A055999(n+3))`
-/

namespace A275072.P16487786141772783504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A055999 (n + 3)).toNat

end

end A275072.P16487786141772783504

/-! ## A275072.P1128486660266296093

`A275069(A056119(n)+15)`
-/

namespace A275072.P1128486660266296093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A056119 n + 15).toNat

end

end A275072.P1128486660266296093

/-! ## A275072.P10060288089906503831

`A275069(A055998(n+4)-3)`
-/

namespace A275072.P10060288089906503831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A055998 (n + 4) - 3).toNat

end

end A275072.P10060288089906503831

/-! ## A275072.P15221010924741726610

`A275069(A000096(n+5)-5)`
-/

namespace A275072.P15221010924741726610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A000096 (n + 5) - 5).toNat

end

end A275072.P15221010924741726610

/-! ## A275072.P15600621069879299392

`A275069(A000217(n+6)-6)`
-/

namespace A275072.P15600621069879299392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A000217 (n + 6) - 6).toNat

end

end A275072.P15600621069879299392

/-! ## A275072.P7542517762309509331

`A275069(eq[6, sqrt(A055461(n+1))])`
-/

namespace A275072.P7542517762309509331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A275072.P7542517762309509331

/-! ## A275072.P10118573345803814405

`sqrt(A275077(2*n))`
-/

namespace A275072.P10118573345803814405
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A275077 (2 * n) : ℝ)

end

end A275072.P10118573345803814405

/-!
# A275073: Number of set partitions of [n] such that i-j is a multiple of six for all i,j belonging to the same block.

The programs for A275073, there is no canonical definition to state claims against.
-/

/-! ## A275073.P11127221055341734340

`A275069(eq[6, A025581(n)])`
-/

namespace A275073.P11127221055341734340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275073.P11127221055341734340

/-! ## A275073.P13617150183604280300

`A275069(eq[4, A219347(n+1)])`
-/

namespace A275073.P13617150183604280300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275073.P13617150183604280300

/-! ## A275073.P11428961536294304977

`A175126(a(n-1)*A316843(n+1))` with `a(0)=1`
-/

namespace A275073.P11428961536294304977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175126 (a (n - 1) * A316843 (n + 1)).toNat

end

end A275073.P11428961536294304977

/-! ## A275073.P18244201758917926139

`gcd(A000217(A275074(n+2)), A275074(n+2))`
-/

namespace A275073.P18244201758917926139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A275074 (n + 2)).toNat) (A275074 (n + 2))

end

end A275073.P18244201758917926139

/-! ## A275073.P9608563461997931612

`A032742(A275074(n+2))`
-/

namespace A275073.P9608563461997931612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A275074 (n + 2)).toNat

end

end A275073.P9608563461997931612

/-!
# A275074: Number of set partitions of [n] such that i-j is a multiple of seven for all i,j belonging to the same block.

The programs for A275074, there is no canonical definition to state claims against.
-/

/-! ## A275074.P14130920757041464098

`A275069(A155212(n+4))`
-/

namespace A275074.P14130920757041464098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A155212 (n + 4)).toNat

end

end A275074.P14130920757041464098

/-! ## A275074.P3874881102460744952

`A275069(A167614(n+1)+A016957(n+3))`
-/

namespace A275074.P3874881102460744952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275069 (A167614 (n + 1) + A016957 (n + 3)).toNat

end

end A275074.P3874881102460744952

/-! ## A275074.P17369962548784439116

`A275075(n+2)/A020639(A275075(n+2))`
-/

namespace A275074.P17369962548784439116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275075 (n + 2) : ℚ) / (A020639 (A275075 (n + 2)).toNat : ℚ)

end

end A275074.P17369962548784439116

/-! ## A275074.P6010156858778548875

`A289441((floor(sqrt(n+1))+1)*a(n-1))` with `a(0)=1`
-/

namespace A275074.P6010156858778548875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A289441 ((Nat.sqrt (n + 1) + 1 : ℤ) * a (n - 1)).toNat

end

end A275074.P6010156858778548875

/-! ## A275074.P17771588169245268264

`A004526(A275075(n+2)+1)`
-/

namespace A275074.P17771588169245268264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275075 (n + 2) + 1).toNat

end

end A275074.P17771588169245268264

/-!
# A275075: Number of set partitions of [n] such that i-j is a multiple of eight for all i,j belonging to the same block.

The programs for A275075, there is no canonical definition to state claims against.
-/

/-! ## A275075.P17521224750746465258

`A026741(A275076(n+2))`
-/

namespace A275075.P17521224750746465258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A275076 (n + 2)).toNat

end

end A275075.P17521224750746465258

/-! ## A275075.P720139155763313724

`A289441(lcm(2, A275076(n+2)))`
-/

namespace A275075.P720139155763313724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (Int.lcm 2 (A275076 (n + 2)))

end

end A275075.P720139155763313724

/-!
# A275076: Number of set partitions of [n] such that i-j is a multiple of nine for all i,j belonging to the same block.

The programs for A275076, there is no canonical definition to state claims against.
-/

/-! ## A275076.P542958514703783174

`A275077(n+2)/A020639(A275077(n+2))`
-/

namespace A275076.P542958514703783174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275077 (n + 2) : ℚ) / (A020639 (A275077 (n + 2)).toNat : ℚ)

end

end A275076.P542958514703783174

/-! ## A275076.P8664294744695535254

`A004526(A275077(n+2)+1)`
-/

namespace A275076.P8664294744695535254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275077 (n + 2) + 1).toNat

end

end A275076.P8664294744695535254

/-! ## A275076.P12008828157526217143

`A378646(A275063(n))`
-/

namespace A275076.P12008828157526217143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378646 (A275063 n).toNat

end

end A275076.P12008828157526217143

/-!
# A275077: Number of set partitions of [n] such that i-j is a multiple of ten for all i,j belonging to the same block.

The programs for A275077, there is no canonical definition to state claims against.
-/

/-! ## A275077.P10655335415934390742

`A330090(A275065(n))`
-/

namespace A275077.P10655335415934390742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330090 (A275065 n).toNat

end

end A275077.P10655335415934390742

/-! ## A275077.P5137511135882032607

`A378646(A275064(n))`
-/

namespace A275077.P5137511135882032607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378646 (A275064 n).toNat

end

end A275077.P5137511135882032607

/-! ## A275077.P3008976442546233937

`A123108((A257639(n+1)+1)*a(n-1))` with `a(0)=1`
-/

namespace A275077.P3008976442546233937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123108 ((A257639 (n + 1) + 1) * a (n - 1)).toNat

end

end A275077.P3008976442546233937

/-! ## A275077.P6688902550017975693

`A274865(A274843(n))%A336596(n+3)`
-/

namespace A275077.P6688902550017975693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274865 (A274843 n).toNat) (A336596 (n + 3))

end

end A275077.P6688902550017975693

/-!
# A275078: Triangle read by rows in which row n lists the lexicographic composition of the elements of symmetric group S_n.

The programs for A275078, there is no canonical definition to state claims against.
-/

/-! ## A275078.P1686731508429531747

`A001222(A336175(n+1)+A055887(n))`
-/

namespace A275078.P1686731508429531747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336175 (n + 1) + A055887 n).toNat

end

end A275078.P1686731508429531747

/-! ## A275078.P11728308743017500636

`A135010(A324687(n+4)+A020661(n+1))`
-/

namespace A275078.P11728308743017500636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A324687 (n + 4) + A020661 (n + 1)).toNat

end

end A275078.P11728308743017500636

/-! ## A275078.P2324283156102680435

`A210850(A112925(n+1)*A338875(n+2))`
-/

namespace A275078.P2324283156102680435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210850 (A112925 (n + 1) * A338875 (n + 2)).toNat

end

end A275078.P2324283156102680435

/-! ## A275078.P4556478249073341730

`A002145(A205188(n+1))%A205146(n+1)`
-/

namespace A275078.P4556478249073341730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002145 (A205188 (n + 1)).toNat) (A205146 (n + 1))

end

end A275078.P4556478249073341730

/-! ## A275078.P10005609681122508315

`A326620(C(A002808(n+1), A357443(n+1)))`
-/

namespace A275078.P10005609681122508315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326620 (Nat.choose (A002808 (n + 1)).toNat (A357443 (n + 1)).toNat)

end

end A275078.P10005609681122508315

/-!
# A275079: The number of 2-compositions of n of Carlitz type.

The programs for A275079, there is no canonical definition to state claims against.
-/

/-! ## A275079.P5803653050252457547

`A094705(n)+A027907(A114422(n)!)`
-/

namespace A275079.P5803653050252457547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094705 n + A027907 (Nat.factorial (A114422 n).toNat)

end

end A275079.P5803653050252457547

/-! ## A275079.P12600590411059002080

`A266313(A242907(n+1))+A094705(n)`
-/

namespace A275079.P12600590411059002080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266313 (A242907 (n + 1)).toNat + A094705 n

end

end A275079.P12600590411059002080

/-! ## A275079.P2358829575015780023

`A146291(A271619(2*(n+1)))+A094705(n)`
-/

namespace A275079.P2358829575015780023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146291 (A271619 (2 * (n + 1))).toNat + A094705 n

end

end A275079.P2358829575015780023

/-!
# A275080: Triangle g(n,m) by rows: the number of m-compositions of Carlitz type of n without zero rows.

The programs for A275080, there is no canonical definition to state claims against.
-/

/-! ## A275080.P224642016557296451

`lcm(A135313(n), A319573(A022167(n)))`
-/

namespace A275080.P224642016557296451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135313 n) (A319573 (A022167 n).toNat)

end

end A275080.P224642016557296451

/-! ## A275080.P8788871871557493548

`A319501(n)+A067168(A262759(n+2))`
-/

namespace A275080.P8788871871557493548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319501 n + A067168 ((A262759 (n + 2)).toNat + 10)

end

end A275080.P8788871871557493548

/-! ## A275080.P3165233535921423315

`A007318(A247397(n+1))*A135313(n)`
-/

namespace A275080.P3165233535921423315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A247397 (n + 1)).toNat * A135313 n

end

end A275080.P3165233535921423315

/-! ## A275080.P8338169310883188770

`A001221(A302123(n+1))*A135313(n)`
-/

namespace A275080.P8338169310883188770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302123 (n + 1)).toNat * A135313 n

end

end A275080.P8338169310883188770

/-! ## A275080.P8243102533945960060

`A135313(n)*A248891(A030069(n+8))`
-/

namespace A275080.P8243102533945960060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n * A248891 (A030069 (n + 8)).toNat

end

end A275080.P8243102533945960060

/-!
# A275082: Primitive abundant numbers (having no abundant proper divisors) that have perfect proper divisors.

The programs for A275082, the canonical program `A275082.P12631991313375267517` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275082 has offset 1).

The definition of A275082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275082.P13057198283172015589

`∩[A091191(n+1), A374198(n+1)]`
-/

namespace A275082.P13057198283172015589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275082.P13057198283172015589

namespace A275082

/-- `∩[A091191(n+1), A374198(n+1)]` -/
def P13057198283172015589.Spec : Prop :=
  ∀ n, (P13057198283172015589.a n : ℤ) = A275082 (n + 1)

end A275082

/-! ## A275082.P17569129909516873584

`filter[A091191(n+1), A374197(#)]`
-/

namespace A275082.P17569129909516873584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A275082.P17569129909516873584

namespace A275082

/-- `filter[A091191(n+1), A374197(#)]` -/
def P17569129909516873584.Spec : Prop :=
  ∀ n, P17569129909516873584.a n = A275082 (n + 1)

end A275082

/-! ## A275082.P12631991313375267517

`filter[A374198(n+1), A294930(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A275082

/-- `filter[A374198(n+1), A294930(#)]` -/
def P12631991313375267517.Spec : Prop :=
  ∀ n, P12631991313375267517.a n = A275082 (n + 1)

theorem P12631991313375267517.correct : P12631991313375267517.Spec := by
  intro n
  simp only [A275082, Nat.add_sub_cancel]

end A275082

/-! ## A275082.P12299405587282510627

`lt[A341619(n+1), A294930(n+1)]+1`
-/

namespace A275082.P12299405587282510627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A275082.P12299405587282510627

namespace A275082

/-- `lt[A341619(n+1), A294930(n+1)]+1` -/
def P12299405587282510627.Spec : Prop :=
  ∀ n, (P12299405587282510627.a n : ℤ) = A275082 (n + 1)

end A275082

/-! ## A275082.P15984119494779998052

`A020725(lt[A341619(n+1), A294930(n+1)])`
-/

namespace A275082.P15984119494779998052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A275082.P15984119494779998052

namespace A275082

/-- `A020725(lt[A341619(n+1), A294930(n+1)])` -/
def P15984119494779998052.Spec : Prop :=
  ∀ n, P15984119494779998052.a n = A275082 (n + 1)

end A275082

/-! ## A275082.P17304153173120487751

`A065475(lt[A341619(n+1), A294930(n+1)])`
-/

namespace A275082.P17304153173120487751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A275082.P17304153173120487751

namespace A275082

/-- `A065475(lt[A341619(n+1), A294930(n+1)])` -/
def P17304153173120487751.Spec : Prop :=
  ∀ n, P17304153173120487751.a n = A275082 (n + 1)

end A275082

/-! ## A275082.P13815265378955729637

`A153152(lt[A341619(n+1), A294930(n+1)])`
-/

namespace A275082.P13815265378955729637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A275082.P13815265378955729637

namespace A275082

/-- `A153152(lt[A341619(n+1), A294930(n+1)])` -/
def P13815265378955729637.Spec : Prop :=
  ∀ n, P13815265378955729637.a n = A275082 (n + 1)

end A275082

/-! ## A275082.P4556219861368483518

`record[A080225(A091196(n+1))*A091196(n+1)]`
-/

namespace A275082.P4556219861368483518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080225 (A091196 (n + 1)).toNat * A091196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275082.P4556219861368483518

namespace A275082

/-- `record[A080225(A091196(n+1))*A091196(n+1)]` -/
def P4556219861368483518.Spec : Prop :=
  ∀ n, P4556219861368483518.a n = A275082 (n + 1)

end A275082

/-!
# A275083: Positive integers congruent to 0 or 1 modulo 4 that cannot be written as x^3 + y^2 + z^2 with x,y,z nonnegative integers.

The programs for A275083, there is no canonical definition to state claims against.
-/

/-! ## A275083.P14349434171496159502

`filter[A022552(n+1), A133872(#)]`
-/

namespace A275083.P14349434171496159502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A275083.P14349434171496159502

/-!
# A275084: Number of n X n 0..2 arrays with no element equal to any value at offset (0,-2), (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275084, there is no canonical definition to state claims against.
-/

/-! ## A275084.P8631111593326212687

`A275090(∑[4*n]+1)`
-/

namespace A275084.P8631111593326212687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275084.P8631111593326212687

/-! ## A275084.P915957348455486904

`record[A003982(n)*A275090(n+1)]`
-/

namespace A275084.P915957348455486904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275084.P915957348455486904

/-! ## A275084.P14096576366697419101

`record[gcd(A114327(n), A275090(n+1))]`
-/

namespace A275084.P14096576366697419101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A275090 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275084.P14096576366697419101

/-! ## A275084.P949536520683014311

`lcm(A000034(n), A275090(A001844(n)))`
-/

namespace A275084.P949536520683014311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A275090 (A001844 n).toNat)

end

end A275084.P949536520683014311

/-! ## A275084.P12801059094435098854

`or(A000007(n), A275090(A001844(n)))`
-/

namespace A275084.P12801059094435098854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275090 (A001844 n).toNat)

end

end A275084.P12801059094435098854

/-!
# A275085: Number of n X 3 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275085, there is no canonical definition to state claims against.
-/

/-! ## A275085.P6431856994301166750

`A275090(∑[n+3]+1)`
-/

namespace A275085.P6431856994301166750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275085.P6431856994301166750

/-!
# A275086: Number of nX4 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275086, there is no canonical definition to state claims against.
-/

/-! ## A275086.P5761225014507638095

`A275090(∑[n+4]+3)`
-/

namespace A275086.P5761225014507638095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A275086.P5761225014507638095

/-! ## A275086.P3115900837851718596

`lcm(2, A275090(A056000(n)+7))`
-/

namespace A275086.P3115900837851718596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A275090 (A056000 n + 7).toNat)

end

end A275086.P3115900837851718596

/-! ## A275086.P3652937331214138963

`lcm(A035214(n), A275090(A000217(n+4)-3))`
-/

namespace A275086.P3652937331214138963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 n) (A275090 (A000217 (n + 4) - 3).toNat)

end

end A275086.P3652937331214138963

/-! ## A275086.P11020941043732889798

`or(A000038(n), A275090(A000217(n+4)-3))`
-/

namespace A275086.P11020941043732889798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A275090 (A000217 (n + 4) - 3).toNat)

end

end A275086.P11020941043732889798

/-! ## A275086.P9885845715687070646

`A001222(2*n²+29)*A275090(A000217(n+4)-3)`
-/

namespace A275086.P9885845715687070646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 29) * A275090 (A000217 (n + 4) - 3).toNat

end

end A275086.P9885845715687070646

/-!
# A275087: Number of nX5 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275087, there is no canonical definition to state claims against.
-/

/-! ## A275087.P13143076994655872303

`A275090(Δ[A264443(n)])`
-/

namespace A275087.P13143076994655872303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (f1 (n + 1) - f1 n).toNat

end

end A275087.P13143076994655872303

/-! ## A275087.P11334049487107058707

`A275090(A056115(n)+11)`
-/

namespace A275087.P11334049487107058707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A056115 n + 11).toNat

end

end A275087.P11334049487107058707

/-! ## A275087.P17390395266710188169

`A275090(eq[4, A193592(n)])`
-/

namespace A275087.P17390395266710188169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275087.P17390395266710188169

/-! ## A275087.P14735699460673200024

`A275090(eq[8, A166065(n)])`
-/

namespace A275087.P14735699460673200024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275087.P14735699460673200024

/-! ## A275087.P9892862083332590932

`A275090(Δ[A023545(n+1)])`
-/

namespace A275087.P9892862083332590932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (f1 (n + 1) - f1 n).toNat

end

end A275087.P9892862083332590932

/-!
# A275088: Number of nX6 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275088, there is no canonical definition to state claims against.
-/

/-! ## A275088.P12723243195979513658

`A275090(A052905(n+3))`
-/

namespace A275088.P12723243195979513658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A052905 (n + 3)).toNat

end

end A275088.P12723243195979513658

/-! ## A275088.P16594292241302197523

`A275090(eq[3, A219347(n)])`
-/

namespace A275088.P16594292241302197523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275088.P16594292241302197523

/-! ## A275088.P14973509803797208102

`A275090(eq[5, A193592(n)])`
-/

namespace A275088.P14973509803797208102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275088.P14973509803797208102

/-! ## A275088.P136268503296635843

`A275090(eq[8, A258709(n)])`
-/

namespace A275088.P136268503296635843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275088.P136268503296635843

/-! ## A275088.P9606765384419490385

`A275090(eq[8, A185782(n+1)])`
-/

namespace A275088.P9606765384419490385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275088.P9606765384419490385

/-!
# A275089: Number of nX7 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275089, there is no canonical definition to state claims against.
-/

/-! ## A275089.P15336305532367898253

`A275090(A055999(n+4))`
-/

namespace A275089.P15336305532367898253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A055999 (n + 4)).toNat

end

end A275089.P15336305532367898253

/-! ## A275089.P6742376128994163837

`A275090(eq[4, A219347(n)])`
-/

namespace A275089.P6742376128994163837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275089.P6742376128994163837

/-! ## A275089.P1998499352675545839

`A275090(eq[6, A193592(n)])`
-/

namespace A275089.P1998499352675545839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275089.P1998499352675545839

/-! ## A275089.P10326107762425088654

`A275090(Δ[A023551(n+2)])`
-/

namespace A275089.P10326107762425088654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (f1 (n + 1) - f1 n).toNat

end

end A275089.P10326107762425088654

/-! ## A275089.P16759460348908206502

`A275090(A000217(n+7)-6)`
-/

namespace A275089.P16759460348908206502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A000217 (n + 7) - 6).toNat

end

end A275089.P16759460348908206502

/-!
# A275091: Number of 3Xn 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275091, there is no canonical definition to state claims against.
-/

/-! ## A275091.P1596943466432343057

`A275090(∑[n+2]+4)`
-/

namespace A275091.P1596943466432343057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275091.P1596943466432343057

/-! ## A275091.P12085238762553058441

`A275090(A167614(n+1))+char[41]`
-/

namespace A275091.P12085238762553058441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  41

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A275091.P12085238762553058441

/-! ## A275091.P14207639518992976654

`A275090(A055998(n)+6)+A025438(n)`
-/

namespace A275091.P14207639518992976654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A055998 n + 6).toNat + A025438 n

end

end A275091.P14207639518992976654

/-! ## A275091.P13453395163679602400

`or(A000007(n), A275090(A167614(n+1)))`
-/

namespace A275091.P13453395163679602400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275090 (A167614 (n + 1)).toNat)

end

end A275091.P13453395163679602400

/-! ## A275091.P8062996557700269723

`A007318((-1)^n+2)*A275090(A167614(n+1))`
-/

namespace A275091.P8062996557700269723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ n + 2).toNat * A275090 (A167614 (n + 1)).toNat

end

end A275091.P8062996557700269723

/-!
# A275092: Number of 4Xn 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275092, there is no canonical definition to state claims against.
-/

/-! ## A275092.P7369343444848993351

`A275090(A052905(n)+9)`
-/

namespace A275092.P7369343444848993351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A052905 n + 9).toNat

end

end A275092.P7369343444848993351

/-! ## A275092.P13648801307720702680

`A275090(A055999(n)+10)`
-/

namespace A275092.P13648801307720702680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A055999 n + 10).toNat

end

end A275092.P13648801307720702680

/-! ## A275092.P5783775870442387423

`record[A275090(∑[A031285(n)])]`
-/

namespace A275092.P5783775870442387423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275092.P5783775870442387423

/-! ## A275092.P2820223799176431351

`A275090(A167614(n+2)+1)`
-/

namespace A275092.P2820223799176431351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A167614 (n + 2) + 1).toNat

end

end A275092.P2820223799176431351

/-! ## A275092.P4591468447869794456

`A275090(A166136(n+2)-2)`
-/

namespace A275092.P4591468447869794456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A166136 (n + 2) - 2).toNat

end

end A275092.P4591468447869794456

/-!
# A275093: Number of 5Xn 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275093, there is no canonical definition to state claims against.
-/

/-! ## A275093.P17136966719576569624

`A275090(A000096(n+3)+6)`
-/

namespace A275093.P17136966719576569624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A000096 (n + 3) + 6).toNat

end

end A275093.P17136966719576569624

/-! ## A275093.P6628525573406317896

`A275090(A000217(n+4)+5)`
-/

namespace A275093.P6628525573406317896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A000217 (n + 4) + 5).toNat

end

end A275093.P6628525573406317896

/-! ## A275093.P17022832850248186905

`A275090(A055998(n+2)+8)`
-/

namespace A275093.P17022832850248186905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A055998 (n + 2) + 8).toNat

end

end A275093.P17022832850248186905

/-! ## A275093.P18445366223209341762

`A275090(A152947(n+6)+4)`
-/

namespace A275093.P18445366223209341762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A152947 (n + 6) + 4).toNat

end

end A275093.P18445366223209341762

/-! ## A275093.P13389724798395014482

`A275090(eq[16, A059268(n)]+1)`
-/

namespace A275093.P13389724798395014482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275093.P13389724798395014482

/-!
# A275094: Number of 6Xn 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275094, there is no canonical definition to state claims against.
-/

/-! ## A275094.P13104549575640288639

`A275090(A056115(n)+21)`
-/

namespace A275094.P13104549575640288639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A056115 n + 21).toNat

end

end A275094.P13104549575640288639

/-! ## A275094.P12075413468601976002

`A275090(Δ[A264443(n)]+10)`
-/

namespace A275094.P12075413468601976002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (f1 (n + 1) - f1 n + 10).toNat

end

end A275094.P12075413468601976002

/-! ## A275094.P13085505795234063619

`A275090(A167499(n+4)+1)`
-/

namespace A275094.P13085505795234063619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A167499 (n + 4) + 1).toNat

end

end A275094.P13085505795234063619

/-! ## A275094.P13615454750306768587

`A275090(A000217(n+5)+6)`
-/

namespace A275094.P13615454750306768587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A000217 (n + 5) + 6).toNat

end

end A275094.P13615454750306768587

/-! ## A275094.P1405034682049418551

`A275090(eq[7, A131818(n+1)])`
-/

namespace A275094.P1405034682049418551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275094.P1405034682049418551

/-!
# A275095: Number of 7 X n 0..2 arrays with no element equal to any value at offset (0,-2) (-1,-2) or (-2,-1) and new values introduced in order 0..2.

The programs for A275095, there is no canonical definition to state claims against.
-/

/-! ## A275095.P15323705103260169117

`A275090(A056119(n)+28)`
-/

namespace A275095.P15323705103260169117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A056119 n + 28).toNat

end

end A275095.P15323705103260169117

/-! ## A275095.P8835813577128525759

`A275090(eq[11, A066657(n)])`
-/

namespace A275095.P8835813577128525759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275095.P8835813577128525759

/-! ## A275095.P11400040162791746410

`A275090(A166136(n+5)+1)`
-/

namespace A275095.P11400040162791746410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A166136 (n + 5) + 1).toNat

end

end A275095.P11400040162791746410

/-! ## A275095.P13241091349151849004

`A275090(A167499(n+5)+2)`
-/

namespace A275095.P13241091349151849004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (A167499 (n + 5) + 2).toNat

end

end A275095.P13241091349151849004

/-! ## A275095.P15575655951466150430

`A275090(eq[8, A131818(n+1)])`
-/

namespace A275095.P15575655951466150430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275090 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275095.P15575655951466150430

/-!
# A275097: Number of set partitions of [8*n] such that within each block the numbers of elements from all residue classes modulo 8 are equal.

The programs for A275097, there is no canonical definition to state claims against.
-/

/-! ## A275097.P4092518357755271220

`A275043(eq[8, A025581(n)])`
-/

namespace A275097.P4092518357755271220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275097.P4092518357755271220

/-! ## A275097.P2735986604787015612

`A275043(eq[9, A193739(n)])`
-/

namespace A275097.P2735986604787015612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275097.P2735986604787015612

/-! ## A275097.P18245477651761302723

`A275043(eq[9, A004736(n+1)])`
-/

namespace A275097.P18245477651761302723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275097.P18245477651761302723

/-!
# A275098: Number of set partitions of [9*n] such that within each block the numbers of elements from all residue classes modulo 9 are equal.

The programs for A275098, there is no canonical definition to state claims against.
-/

/-! ## A275098.P16553968720896855512

`A275043(eq[9, A025581(n)])`
-/

namespace A275098.P16553968720896855512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275098.P16553968720896855512

/-! ## A275098.P15868429272467001173

`A275043(eq[10, A193739(n)])`
-/

namespace A275098.P15868429272467001173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275098.P15868429272467001173

/-! ## A275098.P4967683262560071204

`A275043(eq[10, A004736(n+1)])`
-/

namespace A275098.P4967683262560071204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275098.P4967683262560071204

/-!
# A275099: Number of set partitions of [10*n] such that within each block the numbers of elements from all residue classes modulo 10 are equal.

The programs for A275099, there is no canonical definition to state claims against.
-/

/-! ## A275099.P6223980079266594996

`A275043(eq[10, A025581(n)])`
-/

namespace A275099.P6223980079266594996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275099.P6223980079266594996

