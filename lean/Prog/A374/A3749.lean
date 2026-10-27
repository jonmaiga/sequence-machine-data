import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A374900: Expansion of Sum_{k in Z} x^k / (1 - x^(7*k+1)).

The programs for A374900, the canonical program `A374900.P15230006939950330574` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374900 has offset 0).

The definition of A374900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A374900.P15230006939950330574

`A363853(n+1)-A363858(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A374900

/-- `A363853(n+1)-A363858(n+1)` -/
def P15230006939950330574.Spec : Prop :=
  ∀ n, P15230006939950330574.a n = A374900 n

theorem P15230006939950330574.correct : P15230006939950330574.Spec := by
  intro n
  simp only [A374900]

end A374900

/-!
# A374901: Numbers k such that k!^2 + ((k - 1)!^2) + 1 is prime.

The programs for A374901, there is no canonical definition to state claims against.
-/

/-! ## A374901.P14520498636170350775

`A363723(A344105(n+1))+A235862(n+1)`
-/

namespace A374901.P14520498636170350775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363723 (A344105 (n + 1)).toNat + A235862 (n + 1)

end

end A374901.P14520498636170350775

/-! ## A374901.P4020478485595011672

`A344447(A277280(n+2))+A320230(n+1)`
-/

namespace A374901.P4020478485595011672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344447 (A277280 (n + 2)).toNat + A320230 (n + 1)

end

end A374901.P4020478485595011672

/-!
# A374902: Numerator of the mean number of divisors of the divisors of n.

The programs for A374902, there is no canonical definition to state claims against.
-/

/-! ## A374902.P7600494885700853267

`A007425(n+1)/A000005(n+1)*A374903(n+1)`
-/

namespace A374902.P7600494885700853267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ) * (A374903 (n + 1) : ℚ)

end

end A374902.P7600494885700853267

/-!
# A374903: Denominator of the mean number of divisors of the divisors of n.

The programs for A374903, there is no canonical definition to state claims against.
-/

/-! ## A374903.P11873012036080420534

`A000005(n+1)/A007425(n+1)*A374902(n+1)`
-/

namespace A374903.P11873012036080420534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (A007425 (n + 1) : ℚ) * (A374902 (n + 1) : ℚ)

end

end A374903.P11873012036080420534

/-! ## A374903.P14132832934250766463

`gcd(A046644(n+1), A374778(A003961(n+1)))`
-/

namespace A374903.P14132832934250766463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046644 (n + 1)) (A374778 (A003961 (n + 1)).toNat)

end

end A374903.P14132832934250766463

/-! ## A374903.P13731691449446695842

`A367170(A007947(n+1)^A365401(n+1))`
-/

namespace A374903.P13731691449446695842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367170 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A365401 (n + 1) : ℤ))).toNat

end

end A374903.P13731691449446695842

/-! ## A374903.P2100334856828720247

`A366308(∏{p}[n+1, #]^2^∑{e}[n+1, #-1])`
-/

namespace A374903.P2100334856828720247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366308 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℝ) ^ ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - 1) : ℤ) : ℝ))).toNat

end

end A374903.P2100334856828720247

/-!
# A374904: Numbers whose divisors have an integer mean number of divisors.

The programs for A374904, there is no canonical definition to state claims against.
-/

/-! ## A374904.P7322520013465131099

`eq[1, A374903(n+1)]+1`
-/

namespace A374904.P7322520013465131099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A374904.P7322520013465131099

/-! ## A374904.P7242872518829366272

`A374741(A006927(n))+A368714(n+1)`
-/

namespace A374904.P7242872518829366272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (A006927 n).toNat + A368714 (n + 1)

end

end A374904.P7242872518829366272

/-! ## A374904.P5179032731065191043

`A368714(n+1)+A025457(A182002(n+1))`
-/

namespace A374904.P5179032731065191043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1) + A025457 (A182002 (n + 1)).toNat

end

end A374904.P5179032731065191043

/-! ## A374904.P11174574854834582623

`A368714(n+1)+A288520(A214676(n+1))`
-/

namespace A374904.P11174574854834582623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368714 (n + 1) + A288520 (A214676 (n + 1)).toNat

end

end A374904.P11174574854834582623

/-!
# A374905: Least integers of their prime signature (A025487) whose divisors have an integer mean number of divisors.

The programs for A374905, there is no canonical definition to state claims against.
-/

/-! ## A374905.P17250308863796993825

`∩[A025487(n+1), A374904(n+1)]`
-/

namespace A374905.P17250308863796993825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374905.P17250308863796993825

/-! ## A374905.P148346662783153651

`filter[A374904(n+1), A322585(#)]`
-/

namespace A374905.P148346662783153651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322585 (f1 j).toNat = 1) n)

end

end A374905.P148346662783153651

/-! ## A374905.P13788172347500789615

`record[A046523(n+1)/A374903(n+1)]`
-/

namespace A374905.P13788172347500789615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (n + 1) : ℚ) / (A374903 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374905.P13788172347500789615

/-! ## A374905.P4438433058539585553

`∩[A266047(n+1), A153883(n)]`
-/

namespace A374905.P4438433058539585553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374905.P4438433058539585553

/-!
# A374906: a(n) is the least number whose divisors have a mean number of divisors that equals n.

The programs for A374906, there is no canonical definition to state claims against.
-/

/-! ## A374906.P12227227702031689265

`∩[A044960(n+1), A374905(n+1)]`
-/

namespace A374906.P12227227702031689265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374906.P12227227702031689265

/-! ## A374906.P8501588590319381854

`∏[A079171(2^ceil(log2(n+1)))]`
-/

namespace A374906.P8501588590319381854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079171 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374906.P8501588590319381854

/-! ## A374906.P6771145463855697014

`A278523(A036543(n))`
-/

namespace A374906.P6771145463855697014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (A036543 n).toNat

end

end A374906.P6771145463855697014

/-! ## A374906.P9323355827459259565

`A102443(A094283(n+1))`
-/

namespace A374906.P9323355827459259565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102443 (A094283 (n + 1)).toNat

end

end A374906.P9323355827459259565

/-!
# A374908: Each term is the sum of the preceding term and its seven-segment total A006942.

The programs for A374908, the canonical program `A374908.P18111797103984117614` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374908 has offset 0).

The definition of A374908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374908.P18111797103984117614

`a(n-1)+A006942(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374908

/-- `a(n-1)+A006942(a(n-1))` -/
def P18111797103984117614.Spec : Prop :=
  ∀ n, P18111797103984117614.a n = A374908 n

theorem P18111797103984117614.correct : P18111797103984117614.Spec := by
  intro n
  simp only [A374908]

end A374908

/-!
# A374909: Odd numbers k which can be written as k = r+s where r and s are elements of the Collatz trajectory of k.

The programs for A374909, there is no canonical definition to state claims against.
-/

/-! ## A374909.P5795194378737115410

`∩[2*n+1, A374847(n+1)]`
-/

namespace A374909.P5795194378737115410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374909.P5795194378737115410

/-! ## A374909.P4656553983372272981

`∩[A374847(n+1), A004273(n)]`
-/

namespace A374909.P4656553983372272981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374909.P4656553983372272981

/-! ## A374909.P1829479079632739522

`∩[A374847(n+1), A060747(n)]`
-/

namespace A374909.P1829479079632739522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374909.P1829479079632739522

/-! ## A374909.P6968781820483416757

`filter[A374847(n+1), A000035(#)]`
-/

namespace A374909.P6968781820483416757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A374909.P6968781820483416757

/-! ## A374909.P13633116782813500672

`filter[A374847(n+1), A266070(#)]`
-/

namespace A374909.P13633116782813500672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A374909.P13633116782813500672

/-! ## A374909.P15110932846749977980

`filter[A374847(n+2), A266719(#)]`
-/

namespace A374909.P15110932846749977980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266719 (f1 j).toNat = 1) n)

end

end A374909.P15110932846749977980

/-! ## A374909.P2972258844729670982

`filter[A374847(n+2), A296066(#)]`
-/

namespace A374909.P2972258844729670982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374847 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296066 (f1 j).toNat = 1) n)

end

end A374909.P2972258844729670982

/-!
# A374911: a(n) = a(2^n mod n) + a(3^n mod n), with a(0) = 1.

The programs for A374911, the canonical program `A374911.P12574324929445073926` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374911 has offset 0).

The definition of A374911 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a((2^n)%n)+a((3^n)%n)` (program `A374911.P12574324929445073926`, by `A374911.P12574324929445073926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374911.P12574324929445073926

`a((2^n)%n)+a((3^n)%n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A374911

/-- `a((2^n)%n)+a((3^n)%n)` -/
def P12574324929445073926.Spec : Prop :=
  ∀ n, (P12574324929445073926.a n : ℤ) = A374911 n

theorem P12574324929445073926.correct : P12574324929445073926.Spec := by
  intro n
  simp only [A374911]

end A374911

/-!
# A374912: Primes p such that (p - 1)^p == p (mod 2*p - 1).

The programs for A374912, there is no canonical definition to state claims against.
-/

/-! ## A374912.P5862525323705227387

`p?[A224486(n+2)+1]`
-/

namespace A374912.P5862525323705227387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224486 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374912.P5862525323705227387

/-! ## A374912.P16986917820188115762

`record[A006530(A374913(n+1)+1)]`
-/

namespace A374912.P16986917820188115762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A374913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374912.P16986917820188115762

/-! ## A374912.P18068779983028176590

`∩[A062975(n+3), A005382(n+1)]`
-/

namespace A374912.P18068779983028176590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062975 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P18068779983028176590

/-! ## A374912.P17418884852721609632

`∩[A087749(n+1), A186300(n+1)]`
-/

namespace A374912.P17418884852721609632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P17418884852721609632

/-! ## A374912.P10594882094411226443

`∩[A005382(n+1), A221264(n+1)]`
-/

namespace A374912.P10594882094411226443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P10594882094411226443

/-! ## A374912.P10410530972267933177

`∩[A005382(n+1), A028970(n+1)]`
-/

namespace A374912.P10410530972267933177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P10410530972267933177

/-! ## A374912.P3068693901543533707

`∩[A005382(n+1), A084349(n+1)]`
-/

namespace A374912.P3068693901543533707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P3068693901543533707

/-! ## A374912.P12507693053388831112

`∩[A028970(n+1), A217199(n+1)]`
-/

namespace A374912.P12507693053388831112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P12507693053388831112

/-! ## A374912.P10247203888961903450

`∩[A084349(n+1), A217199(n+1)]`
-/

namespace A374912.P10247203888961903450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P10247203888961903450

/-! ## A374912.P4714837048317691675

`∩[A005382(n+1), A112680(n+1)]`
-/

namespace A374912.P4714837048317691675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P4714837048317691675

/-! ## A374912.P3060884709308094182

`∩[A112680(n+1), A217199(n+1)]`
-/

namespace A374912.P3060884709308094182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P3060884709308094182

/-! ## A374912.P11431800817247470165

`∩[A112680(n+1), A265394(n+1)]`
-/

namespace A374912.P11431800817247470165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265394 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P11431800817247470165

/-! ## A374912.P13013016261247022304

`∩[A005382(n+1), A081339(n+1)]`
-/

namespace A374912.P13013016261247022304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P13013016261247022304

/-! ## A374912.P12313699565070953679

`∩[A005382(n+1), A268380(n+1)]`
-/

namespace A374912.P12313699565070953679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P12313699565070953679

/-! ## A374912.P14905704198778780737

`∩[A081339(n+1), A217199(n+1)]`
-/

namespace A374912.P14905704198778780737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P14905704198778780737

/-! ## A374912.P13602653158487071031

`∩[A005382(n+1), A014601(n)]`
-/

namespace A374912.P13602653158487071031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P13602653158487071031

/-! ## A374912.P15257579341114083868

`∩[A014601(n), A217199(n+1)]`
-/

namespace A374912.P15257579341114083868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P15257579341114083868

/-! ## A374912.P17923818783607681957

`∩[A053438(n), A217199(n+1)]`
-/

namespace A374912.P17923818783607681957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P17923818783607681957

/-! ## A374912.P15229924545898412003

`∩[A005382(n+1), A047514(n+1)]`
-/

namespace A374912.P15229924545898412003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P15229924545898412003

/-! ## A374912.P1815251820384054897

`∩[A005382(n+1), A047557(n+1)]`
-/

namespace A374912.P1815251820384054897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374912.P1815251820384054897

/-!
# A374913: Numbers k such that k^(k + 1) == k + 1 (mod 2*k + 1).

The programs for A374913, there is no canonical definition to state claims against.
-/

/-! ## A374913.P10241457210884993991

`lt[A341702(2*n+1)², A087960(n+1)]`
-/

namespace A374913.P10241457210884993991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374913.P10241457210884993991

/-! ## A374913.P2689032337203768838

`eq[A119332(n)², A037288(n)]`
-/

namespace A374913.P2689032337203768838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119332 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P2689032337203768838

/-! ## A374913.P4026554526382869573

`A171181(A003628(n+1)-1)`
-/

namespace A374913.P4026554526382869573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A003628 (n + 1) - 1).toNat

end

end A374913.P4026554526382869573

/-! ## A374913.P7068788077149372050

`eq[A037288(n), A397489(n)]`
-/

namespace A374913.P7068788077149372050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P7068788077149372050

/-! ## A374913.P5161674497579507331

`eq[A235140(n), A397489(n)]`
-/

namespace A374913.P5161674497579507331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235140 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P5161674497579507331

/-! ## A374913.P6659914152912558997

`eq[A037288(n), A063890(n)]`
-/

namespace A374913.P6659914152912558997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P6659914152912558997

/-! ## A374913.P16805575627205951077

`eq[A063890(n), A235140(n)]`
-/

namespace A374913.P16805575627205951077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235140 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P16805575627205951077

/-! ## A374913.P638082364238238116

`eq[A063890(n), A285716(n+1)]`
-/

namespace A374913.P638082364238238116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285716 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P638082364238238116

/-! ## A374913.P5219638884819960351

`eq[A063890(n), A346879(n+1)]`
-/

namespace A374913.P5219638884819960351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063890 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P5219638884819960351

/-! ## A374913.P2036517699515346555

`eq[A037288(n), A108474(n)]`
-/

namespace A374913.P2036517699515346555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037288 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108474 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374913.P2036517699515346555

/-!
# A374914: Primes p == 2, 3 (mod 4) with 2*p+1 prime.

The programs for A374914, there is no canonical definition to state claims against.
-/

/-! ## A374914.P7023195928604568047

`record[A137332(n+1)]`
-/

namespace A374914.P7023195928604568047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374914.P7023195928604568047

/-! ## A374914.P6215684993987270183

`∩[A005384(n+1), A141123(n+1)]`
-/

namespace A374914.P6215684993987270183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P6215684993987270183

/-! ## A374914.P10065138801840438459

`∩[A141123(n+1), A246857(n+1)]`
-/

namespace A374914.P10065138801840438459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P10065138801840438459

/-! ## A374914.P8439156106445962076

`∩[A141123(n+1), A348511(n+1)]`
-/

namespace A374914.P8439156106445962076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P8439156106445962076

/-! ## A374914.P13688284799817025184

`∩[A005384(n+1), A040101(n+1)]`
-/

namespace A374914.P13688284799817025184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P13688284799817025184

/-! ## A374914.P12348445093854181905

`∩[A040101(n+1), A246857(n+1)]`
-/

namespace A374914.P12348445093854181905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P12348445093854181905

/-! ## A374914.P7811388051316764066

`∩[A040101(n+1), A348511(n+1)]`
-/

namespace A374914.P7811388051316764066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P7811388051316764066

/-! ## A374914.P118153224063191405

`∩[A005384(n+1), A040124(n+1)]`
-/

namespace A374914.P118153224063191405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P118153224063191405

/-! ## A374914.P14010359093363808681

`∩[A040124(n+1), A246857(n+1)]`
-/

namespace A374914.P14010359093363808681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P14010359093363808681

/-! ## A374914.P6360708830285436667

`∩[A040124(n+1), A348511(n+1)]`
-/

namespace A374914.P6360708830285436667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P6360708830285436667

/-! ## A374914.P6701767726225919812

`∩[A040124(n+1), A364926(n+1)]`
-/

namespace A374914.P6701767726225919812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P6701767726225919812

/-! ## A374914.P13590916393859062745

`∩[A005384(n+1), A040994(n+1)]`
-/

namespace A374914.P13590916393859062745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P13590916393859062745

/-! ## A374914.P9952732471821707062

`∩[A040994(n+1), A246857(n+1)]`
-/

namespace A374914.P9952732471821707062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P9952732471821707062

/-! ## A374914.P7124868538417561548

`∩[A040994(n+1), A348511(n+1)]`
-/

namespace A374914.P7124868538417561548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P7124868538417561548

/-! ## A374914.P14868841619832810427

`∩[A040101(n+1), A259973(n+1)]`
-/

namespace A374914.P14868841619832810427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P14868841619832810427

/-! ## A374914.P3202492181411850719

`∩[A040124(n+1), A259973(n+1)]`
-/

namespace A374914.P3202492181411850719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P3202492181411850719

/-! ## A374914.P8472742643628091167

`∩[A040994(n+1), A259973(n+1)]`
-/

namespace A374914.P8472742643628091167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P8472742643628091167

/-! ## A374914.P2723131986559584348

`∩[A141123(n+1), A259973(n+1)]`
-/

namespace A374914.P2723131986559584348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P2723131986559584348

/-! ## A374914.P17010642162550659673

`p?[floor(A094712(n+1)/2)]`
-/

namespace A374914.P17010642162550659673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094712 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A374914.P17010642162550659673

/-! ## A374914.P18296093117794909627

`∩[A005384(n+1), A045317(n+1)]`
-/

namespace A374914.P18296093117794909627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374914.P18296093117794909627

/-!
# A374915: a(n) = (n - 1) * (n - 2) * sigma(n).

The programs for A374915, the canonical program `A374915.P6591845892791148313` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374915 has offset 1).

The definition of A374915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*A000203(n+1)` (program `A374915.P6591845892791148313`, by `A374915.P6591845892791148313.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374915.P6591845892791148313

`n*(n-1)*A000203(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374915

/-- `n*(n-1)*A000203(n+1)` -/
def P6591845892791148313.Spec : Prop :=
  ∀ n, P6591845892791148313.a n = A374915 (n + 1)

theorem P6591845892791148313.correct : P6591845892791148313.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel]

end A374915

/-! ## A374915.P6389693459685692879

`∑{d}[n+1, #*(n²-n)]`
-/

namespace A374915.P6389693459685692879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A374915.P6389693459685692879

namespace A374915

/-- `∑{d}[n+1, #*(n²-n)]` -/
def P6389693459685692879.Spec : Prop :=
  ∀ n, P6389693459685692879.a n = A374915 (n + 1)

end A374915

/-! ## A374915.P8686600236986645414

`(n-1)*∑{d}[n+1, n*#]`
-/

namespace A374915.P8686600236986645414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((∑ d ∈ Nat.divisors (f1 n), n * d : ℕ) : ℤ)

end

end A374915.P8686600236986645414

namespace A374915

/-- `(n-1)*∑{d}[n+1, n*#]` -/
def P8686600236986645414.Spec : Prop :=
  ∀ n, P8686600236986645414.a n = A374915 (n + 1)

end A374915

/-! ## A374915.P16393677919690294709

`(n-1)*A334136(n+1)`
-/

namespace A374915.P16393677919690294709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A334136 (n + 1)

end

end A374915.P16393677919690294709

namespace A374915

/-- `(n-1)*A334136(n+1)` -/
def P16393677919690294709.Spec : Prop :=
  ∀ n, P16393677919690294709.a n = A374915 (n + 1)

theorem P16393677919690294709.correct : P16393677919690294709.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P16393677919690294709.a, A374915.P6591845892791148313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A334136, A334136.P7970780228897706429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374915

/-! ## A374915.P16836407071193395371

`C(n, 2)*A074400(n+1)`
-/

namespace A374915.P16836407071193395371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A074400 (n + 1)

end

end A374915.P16836407071193395371

namespace A374915

/-- `C(n, 2)*A074400(n+1)` -/
def P16836407071193395371.Spec : Prop :=
  ∀ n, P16836407071193395371.a n = A374915 (n + 1)

theorem P16836407071193395371.correct : P16836407071193395371.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P16836407071193395371.a, A374915.P6591845892791148313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374915

/-! ## A374915.P11748106614549298890

`A000203(n+1)*(n²-n)`
-/

namespace A374915.P11748106614549298890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * ((n ^ 2 : ℤ) - (n : ℤ))

end

end A374915.P11748106614549298890

namespace A374915

/-- `A000203(n+1)*(n²-n)` -/
def P11748106614549298890.Spec : Prop :=
  ∀ n, P11748106614549298890.a n = A374915 (n + 1)

theorem P11748106614549298890.correct : P11748106614549298890.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P11748106614549298890.a, A374915.P6591845892791148313.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A374915

/-! ## A374915.P17653455911261739968

`A074400(n+1)*A161680(n)`
-/

namespace A374915.P17653455911261739968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) * A161680 n

end

end A374915.P17653455911261739968

namespace A374915

/-- `A074400(n+1)*A161680(n)` -/
def P17653455911261739968.Spec : Prop :=
  ∀ n, P17653455911261739968.a n = A374915 (n + 1)

theorem P17653455911261739968.correct : P17653455911261739968.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P17653455911261739968.a, A374915.P6591845892791148313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374915

/-! ## A374915.P14023318340689855247

`2*A000203(n+1)*A161680(n)`
-/

namespace A374915.P14023318340689855247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) * A161680 n)

end

end A374915.P14023318340689855247

namespace A374915

/-- `2*A000203(n+1)*A161680(n)` -/
def P14023318340689855247.Spec : Prop :=
  ∀ n, P14023318340689855247.a n = A374915 (n + 1)

theorem P14023318340689855247.correct : P14023318340689855247.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P14023318340689855247.a, A374915.P6591845892791148313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374915

/-! ## A374915.P13664092718358314820

`(A000217(n)-n)*A074400(n+1)`
-/

namespace A374915.P13664092718358314820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n - (n : ℤ)) * A074400 (n + 1)

end

end A374915.P13664092718358314820

namespace A374915

/-- `(A000217(n)-n)*A074400(n+1)` -/
def P13664092718358314820.Spec : Prop :=
  ∀ n, P13664092718358314820.a n = A374915 (n + 1)

theorem P13664092718358314820.correct : P13664092718358314820.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P13664092718358314820.a, A374915.P6591845892791148313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A374915

/-! ## A374915.P3230451992133169881

`n*A000203(n+1)*A023443(n)`
-/

namespace A374915.P3230451992133169881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000203 (n + 1) * A023443 n)

end

end A374915.P3230451992133169881

namespace A374915

/-- `n*A000203(n+1)*A023443(n)` -/
def P3230451992133169881.Spec : Prop :=
  ∀ n, P3230451992133169881.a n = A374915 (n + 1)

theorem P3230451992133169881.correct : P3230451992133169881.Spec := by
  intro n
  simp only [A374915, Nat.add_sub_cancel, A374915.P3230451992133169881.a, A374915.P6591845892791148313.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A023443, A023443.P2966051066474347068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374915

/-!
# A374918: Even numbers k such that lambda(sum of even divisors of k) = phi(sum of odd divisors of k) where lambda is the Carmichael function (A002322) and phi the Euler totient function (A000010).

The programs for A374918, there is no canonical definition to state claims against.
-/

/-! ## A374918.P12344593098141375341

`lt[A271510(A093729(n)), A006519(3*n+2)]`
-/

namespace A374918.P12344593098141375341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271510 (A093729 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374918.P12344593098141375341

/-! ## A374918.P12461534352213938170

`∑[A000005(A295800(n+1))]`
-/

namespace A374918.P12461534352213938170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295800 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374918.P12461534352213938170

/-! ## A374918.P11842902999511870958

`∑[A000005(eq[3, A025431(n)])]`
-/

namespace A374918.P11842902999511870958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025431 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374918.P11842902999511870958

/-! ## A374918.P9072607193905972245

`∑[A067742(record[A031174(n+1)])]`
-/

namespace A374918.P9072607193905972245
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031174 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374918.P9072607193905972245

/-! ## A374918.P2648348891950559995

`A004767(n)-A324198(A352704(n))`
-/

namespace A374918.P2648348891950559995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - A324198 (A352704 n).toNat

end

end A374918.P2648348891950559995

/-!
# A374919: Primes p such that -(p - 1)^p == p (mod 2*p - 1).

The programs for A374919, there is no canonical definition to state claims against.
-/

/-! ## A374919.P17838646329404477239

`A040159((10*n)^(A070922(n+1)%2))`
-/

namespace A374919.P17838646329404477239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (SequenceMachineLib.roundAway ((10 * n : ℚ) ^ (Int.tmod (A070922 (n + 1)) 2 : ℤ))).toNat

end

end A374919.P17838646329404477239

/-!
# A374920: Values k such that the two-player impartial {0,1}-Toggle game on a path P(k+6) = v(1)v(2)...v(k+6) with a (1^k,0,1,0,1,0,1)-weight assignment is a second-player winning game.

The programs for A374920, there is no canonical definition to state claims against.
-/

/-! ## A374920.P883111488504362459

`A374810(A251072(n)*A364542(n+1))`
-/

namespace A374920.P883111488504362459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374810 (A251072 n * A364542 (n + 1)).toNat

end

end A374920.P883111488504362459

/-! ## A374920.P3168356561904960146

`A374810(A364542(n+1)^A251072(n))`
-/

namespace A374920.P3168356561904960146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374810 (SequenceMachineLib.roundAway ((A364542 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A374920.P3168356561904960146

/-! ## A374920.P15438366764774099593

`A374810(A087027(n+1))`
-/

namespace A374920.P15438366764774099593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374810 (A087027 (n + 1)).toNat

end

end A374920.P15438366764774099593

/-! ## A374920.P15580211519777542871

`∩[A048197(n+1), A374810(n+1)]`
-/

namespace A374920.P15580211519777542871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374920.P15580211519777542871

/-! ## A374920.P4621244434704136776

`∩[A056651(n+1), A374810(n+1)]`
-/

namespace A374920.P4621244434704136776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A374920.P4621244434704136776

/-!
# A374921: Irregular triangle read by rows: T(n,k), n >= 0, k >= 1, in which if n is even then row n lists the first A008619(n) even indexed terms of A027336 otherwise if n is odd then row n lists the first A008619(n) odd indexed terms of A027336.

The programs for A374921, there is no canonical definition to state claims against.
-/

/-! ## A374921.P5644343359668176205

`A027336(A384688(n))`
-/

namespace A374921.P5644343359668176205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A384688 n).toNat

end

end A374921.P5644343359668176205

/-! ## A374921.P1703980502218789649

`A027336(A025643(n+1))`
-/

namespace A374921.P1703980502218789649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A025643 (n + 1)).toNat

end

end A374921.P1703980502218789649

/-! ## A374921.P5541761818477980385

`A027336(A167430(n+1)-1)`
-/

namespace A374921.P5541761818477980385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 (A167430 (n + 1) - 1).toNat

end

end A374921.P5541761818477980385

/-! ## A374921.P11086856714336532257

`A073941(A167430(n+1)%A216468(2*n+5))`
-/

namespace A374921.P11086856714336532257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073941 (Int.tmod (A167430 (n + 1)) (A216468 (2 * n + 5))).toNat

end

end A374921.P11086856714336532257

/-! ## A374921.P15620004892357378673

`A089723(A001055(2*n+5)^A305713(n+1))`
-/

namespace A374921.P15620004892357378673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (SequenceMachineLib.roundAway ((A001055 (2 * n + 5) : ℚ) ^ (A305713 (n + 1) : ℤ))).toNat

end

end A374921.P15620004892357378673

/-!
# A374922: a(n) is the least k such that 3^k begins with n!.

The programs for A374922, there is no canonical definition to state claims against.
-/

/-! ## A374922.P11043089087172445949

`A018858(n!)`
-/

namespace A374922.P11043089087172445949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018858 (Nat.factorial n)

end

end A374922.P11043089087172445949

/-! ## A374922.P14429523203352209529

`A018858(A000142(n))`
-/

namespace A374922.P14429523203352209529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018858 (A000142 n).toNat

end

end A374922.P14429523203352209529

/-! ## A374922.P9373344229340244136

`A018858(A033646(n))`
-/

namespace A374922.P9373344229340244136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018858 (A033646 n).toNat

end

end A374922.P9373344229340244136

/-! ## A374922.P4729996478750942921

`A018858(A033647(n))`
-/

namespace A374922.P4729996478750942921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018858 (A033647 n).toNat

end

end A374922.P4729996478750942921

/-!
# A374923: a(n) is the least k such that 2^k begins with n!.

The programs for A374923, there is no canonical definition to state claims against.
-/

/-! ## A374923.P8004120852105060266

`A018856(n!)`
-/

namespace A374923.P8004120852105060266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (Nat.factorial n)

end

end A374923.P8004120852105060266

/-! ## A374923.P9850094170463533170

`A180726(n!)`
-/

namespace A374923.P9850094170463533170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (Nat.factorial n)

end

end A374923.P9850094170463533170

/-! ## A374923.P6951350061310226126

`A018856(∏[ceil(abs(γ-n))])`
-/

namespace A374923.P6951350061310226126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A374923.P6951350061310226126

/-! ## A374923.P13905939643757854236

`A180726(-∏[n-C(2, n+2)])`
-/

namespace A374923.P13905939643757854236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose 2 (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (-(∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A374923.P13905939643757854236

/-!
# A374924: Zero-avoiding Fibonacci sequence: a(n) is the largest zeroless number that can be written as a(i) + a(j) where 1 <= i < j < n with a(1) = a(2) = 1.

The programs for A374924, there is no canonical definition to state claims against.
-/

/-! ## A374924.P18045606800841649788

`A270362(A008860(n))`
-/

namespace A374924.P18045606800841649788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A008860 n).toNat

end

end A374924.P18045606800841649788

/-! ## A374924.P6546939199323634048

`A071585(round(2^(n-1))-A194285(n+4))`
-/

namespace A374924.P6546939199323634048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - A194285 (n + 4)).toNat

end

end A374924.P6546939199323634048

/-! ## A374924.P8330280219172769611

`A245326(A185063(n)+A011782(n))`
-/

namespace A374924.P8330280219172769611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A185063 n + A011782 n).toNat

end

end A374924.P8330280219172769611

/-! ## A374924.P7393360064855830297

`A245326(or(A011782(n), A185063(n)))`
-/

namespace A374924.P7393360064855830297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (Int.lor (A011782 n) (A185063 n)).toNat

end

end A374924.P7393360064855830297

/-!
# A374925: Number of n-color compositions of n having at least one pair of adjacent parts that are the same color.

The programs for A374925, there is no canonical definition to state claims against.
-/

/-! ## A374925.P14124099936763911067

`A088305(n)-A242551(n)`
-/

namespace A374925.P14124099936763911067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 n - A242551 n

end

end A374925.P14124099936763911067

/-! ## A374925.P16188093541301397151

`A194698(A116768(n+2))`
-/

namespace A374925.P16188093541301397151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (A116768 (n + 2)).toNat

end

end A374925.P16188093541301397151

/-! ## A374925.P8301676910569411697

`A323647(A011782(n))-A286361(n+1)`
-/

namespace A374925.P8301676910569411697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323647 (A011782 n).toNat - A286361 (n + 1)

end

end A374925.P8301676910569411697

/-!
# A374926: Least k such that the rank of the elliptic curve y^2 = x^3 - x + k^2 is n, or -1 if no such k exists.

The programs for A374926, there is no canonical definition to state claims against.
-/

/-! ## A374926.P4343192481536782360

`∑[A219674(n!)]`
-/

namespace A374926.P4343192481536782360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219674 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374926.P4343192481536782360

/-!
# A374927: a(n) = A135318(n)^2.

The programs for A374927, the canonical program `A374927.P3559897404562707274` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374927 has offset 0).

The definition of A374927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A135318(n)²` (program `A374927.P3559897404562707274`, by `A374927.P3559897404562707274.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A374927.P1796267400890337674

`3*a(n-2)+6*a(n-4)-8*a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=4, a(4)=9, a(5)=16`
-/

namespace A374927.P1796267400890337674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 4, 9, 16] fun n a =>
  3 * a (n - 2) + 6 * a (n - 4) - 8 * a (n - 6)

end

end A374927.P1796267400890337674

namespace A374927

/-- `3*a(n-2)+6*a(n-4)-8*a(n-6)` -/
def P1796267400890337674.Spec : Prop :=
  ∀ n, P1796267400890337674.a n = A374927 n

end A374927

/-! ## A374927.P3559897404562707274

`A135318(n)²`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374927

/-- `A135318(n)²` -/
def P3559897404562707274.Spec : Prop :=
  ∀ n, P3559897404562707274.a n = A374927 n

theorem P3559897404562707274.correct : P3559897404562707274.Spec := by
  intro n
  simp only [A374927]

end A374927

/-! ## A374927.P7919079989319270835

`A374098(xor(1, n))`
-/

namespace A374927.P7919079989319270835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374098 (Nat.xor 1 n)

end

end A374927.P7919079989319270835

namespace A374927

/-- `A374098(xor(1, n))` -/
def P7919079989319270835.Spec : Prop :=
  ∀ n, P7919079989319270835.a n = A374927 n

end A374927

/-! ## A374927.P13960746395815936023

`A112387(xor(1, n))²`
-/

namespace A374927.P13960746395815936023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (Nat.xor 1 n) ^ 2

end

end A374927.P13960746395815936023

namespace A374927

/-- `A112387(xor(1, n))²` -/
def P13960746395815936023.Spec : Prop :=
  ∀ n, P13960746395815936023.a n = A374927 n

end A374927

/-! ## A374927.P10978194092097128251

`A374098(A004442(n))`
-/

namespace A374927.P10978194092097128251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374098 (A004442 n).toNat

end

end A374927.P10978194092097128251

namespace A374927

/-- `A374098(A004442(n))` -/
def P10978194092097128251.Spec : Prop :=
  ∀ n, P10978194092097128251.a n = A374927 n

end A374927

/-! ## A374927.P17730862583138311180

`A375476(A007494(n))²`
-/

namespace A374927.P17730862583138311180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A007494 n).toNat ^ 2

end

end A374927.P17730862583138311180

namespace A374927

/-- `A375476(A007494(n))²` -/
def P17730862583138311180.Spec : Prop :=
  ∀ n, P17730862583138311180.a n = A374927 n

end A374927

/-! ## A374927.P10564683406504696552

`A375476(A267528(n+1))²`
-/

namespace A374927.P10564683406504696552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A267528 (n + 1)).toNat ^ 2

end

end A374927.P10564683406504696552

namespace A374927

/-- `A375476(A267528(n+1))²` -/
def P10564683406504696552.Spec : Prop :=
  ∀ n, P10564683406504696552.a n = A374927 n

end A374927

/-! ## A374927.P9939985923799280315

`A375476(A294732(n+2))²`
-/

namespace A374927.P9939985923799280315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375476 (A294732 (n + 2)).toNat ^ 2

end

end A374927.P9939985923799280315

namespace A374927

/-- `A375476(A294732(n+2))²` -/
def P9939985923799280315.Spec : Prop :=
  ∀ n, P9939985923799280315.a n = A374927 n

end A374927

/-! ## A374927.P16936662557650171011

`(A230096(n)+A133684(n))²`
-/

namespace A374927.P16936662557650171011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230096 n + A133684 n) ^ 2

end

end A374927.P16936662557650171011

namespace A374927

/-- `(A230096(n)+A133684(n))²` -/
def P16936662557650171011.Spec : Prop :=
  ∀ n, P16936662557650171011.a n = A374927 n

end A374927

/-! ## A374927.P409445279391588735

`A374098(A056594(2*n)+n)`
-/

namespace A374927.P409445279391588735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374098 (A056594 (2 * n) + (n : ℤ)).toNat

end

end A374927.P409445279391588735

namespace A374927

/-- `A374098(A056594(2*n)+n)` -/
def P409445279391588735.Spec : Prop :=
  ∀ n, P409445279391588735.a n = A374927 n

end A374927

/-!
# A374928: a(n) = binomial(n+1,2)!/(2*n-1)!!.

The programs for A374928, there is no canonical definition to state claims against.
-/

/-! ## A374928.P17698659210097393716

`∑[n+1]!/∏[2*n+1]`
-/

namespace A374928.P17698659210097393716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A374928.P17698659210097393716

/-! ## A374928.P6132945259570330754

`A005118(n+2)*A057863(n)`
-/

namespace A374928.P6132945259570330754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005118 (n + 2) * A057863 n

end

end A374928.P6132945259570330754

/-! ## A374928.P14690667232392829255

`A000142(A000217(n+1))/A001147(n+1)`
-/

namespace A374928.P14690667232392829255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A000217 (n + 1)).toNat : ℚ) / (A001147 (n + 1) : ℚ)

end

end A374928.P14690667232392829255

/-!
# A374929: Expansion of Sum_{1<=i<=j} q^(i+j)/( (1-q^i)*(1-q^j) )^2.

The programs for A374929, the canonical program `A374929.P3218884029634741329` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374929 has offset 2).

The definition of A374929 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374929.P3218884029634741329

`(7*A001158(n+2)-(6*(n+2)+1)*A000203(n+2))/24`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A374929

/-- `(7*A001158(n+2)-(6*(n+2)+1)*A000203(n+2))/24` -/
def P3218884029634741329.Spec : Prop :=
  ∀ n, P3218884029634741329.a n = (A374929 (n + 2) : ℚ)

end A374929

/-! ## A374929.P13614316673424240724

`A000330(n+1)-A119464(A000079(n))`
-/

namespace A374929.P13614316673424240724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - A119464 (A000079 n).toNat

end

end A374929.P13614316673424240724

namespace A374929

/-- `A000330(n+1)-A119464(A000079(n))` -/
def P13614316673424240724.Spec : Prop :=
  ∀ n, P13614316673424240724.a n = A374929 (n + 2)

end A374929

/-! ## A374929.P193813754383288761

`A053307(2*n+1)-A287866(A262809(3*(n+1)))`
-/

namespace A374929.P193813754383288761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053307 (2 * n + 1) - A287866 (A262809 (3 * (n + 1))).toNat

end

end A374929.P193813754383288761

namespace A374929

/-- `A053307(2*n+1)-A287866(A262809(3*(n+1)))` -/
def P193813754383288761.Spec : Prop :=
  ∀ n, P193813754383288761.a n = A374929 (n + 2)

end A374929

/-!
# A374930: Expansion of Sum_{1<=i<=j<=k} q^(i+j+k)/( (1-q^i)*(1-q^j)*(1-q^k) )^2.

The programs for A374930, there is no canonical definition to state claims against.
-/

/-! ## A374930.P11645177048494279733

`A005585(n+1)-A046660(A374634(3*n+1))`
-/

namespace A374930.P11645177048494279733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) - A046660 (A374634 (3 * n + 1)).toNat

end

end A374930.P11645177048494279733

/-! ## A374930.P1868815504446417151

`A126257(A067056(n+2))`
-/

namespace A374930.P1868815504446417151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A067056 (n + 2)).toNat

end

end A374930.P1868815504446417151

/-!
# A374931: Expansion of Sum_{1<=i<=j<=k<=l} q^(i+j+k+l)/( (1-q^i)*(1-q^j)*(1-q^k)*(1-q^l) )^2.

The programs for A374931, there is no canonical definition to state claims against.
-/

/-! ## A374931.P10250820111596836399

`A050486(n)-A361162(A330659(n))`
-/

namespace A374931.P10250820111596836399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n - A361162 (A330659 n).toNat

end

end A374931.P10250820111596836399

/-! ## A374931.P1098206637690905472

`A050486(n)-A327205(A372195(n))`
-/

namespace A374931.P1098206637690905472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n - A327205 (A372195 n).toNat

end

end A374931.P1098206637690905472

/-! ## A374931.P17537379085499438165

`A050486(n)-A369653(A372374(n))`
-/

namespace A374931.P17537379085499438165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050486 n - A369653 (A372374 n).toNat

end

end A374931.P17537379085499438165

/-!
# A374933: Maximum number of squares covered (i.e., attacked) by 2 independent (i.e., non-attacking) queens on an n X n chessboard.

The programs for A374933, there is no canonical definition to state claims against.
-/

/-! ## A374933.P14558761334605755114

`A376732(∑[n+2]+3)`
-/

namespace A374933.P14558761334605755114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A374933.P14558761334605755114

/-!
# A374934: Maximum number of squares covered (i.e., attacked) by 4 independent (i.e., nonattacking) queens on an n X n chessboard.

The programs for A374934, there is no canonical definition to state claims against.
-/

/-! ## A374934.P12871037240538696892

`A376732(A167614(n+2)+1)`
-/

namespace A374934.P12871037240538696892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A167614 (n + 2) + 1).toNat

end

end A374934.P12871037240538696892

/-! ## A374934.P4060873923955512928

`A376732(A340266(n+2)+2)`
-/

namespace A374934.P4060873923955512928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A340266 (n + 2) + 2).toNat

end

end A374934.P4060873923955512928

/-! ## A374934.P16236896096975400007

`A376732(A000124(n+3)+3)`
-/

namespace A374934.P16236896096975400007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A000124 (n + 3) + 3).toNat

end

end A374934.P16236896096975400007

/-! ## A374934.P9547694552030650881

`A376732(A000217(n+4)-n)`
-/

namespace A374934.P9547694552030650881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A374934.P9547694552030650881

/-!
# A374935: Maximum number of squares covered (i.e., attacked) by 5 independent (i.e., nonattacking) queens on an n X n chessboard.

The programs for A374935, there is no canonical definition to state claims against.
-/

/-! ## A374935.P13493650925586491206

`A376732(A167499(n+3))`
-/

namespace A374935.P13493650925586491206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A167499 (n + 3)).toNat

end

end A374935.P13493650925586491206

/-! ## A374935.P17894205727712369921

`A376732(A167487(n+3)-2)`
-/

namespace A374935.P17894205727712369921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A167487 (n + 3) - 2).toNat

end

end A374935.P17894205727712369921

/-! ## A374935.P7076400514486761529

`A376732(A000217(n+4)+5)`
-/

namespace A374935.P7076400514486761529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A000217 (n + 4) + 5).toNat

end

end A374935.P7076400514486761529

/-! ## A374935.P7211804030549153163

`A376732(A077169(n+6)-(n+5))`
-/

namespace A374935.P7211804030549153163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A077169 (n + 6) - (n + 5 : ℤ)).toNat

end

end A374935.P7211804030549153163

/-!
# A374936: Maximum number of squares covered (i.e., attacked) by 6 independent (i.e., nonattacking) queens on an n X n chessboard.

The programs for A374936, there is no canonical definition to state claims against.
-/

/-! ## A374936.P6442559988441665564

`A376732(A077169(n+6)+1)`
-/

namespace A374936.P6442559988441665564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A077169 (n + 6) + 1).toNat

end

end A374936.P6442559988441665564

/-! ## A374936.P18426983974638383709

`A376732(A000217(n+6)-n)`
-/

namespace A374936.P18426983974638383709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376732 (A000217 (n + 6) - (n : ℤ)).toNat

end

end A374936.P18426983974638383709

/-! ## A374936.P13477903571425744741

`(n+6)²-A000161(A204093(2*(n+1)))`
-/

namespace A374936.P13477903571425744741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 6) ^ 2 : ℤ) - A000161 (A204093 (2 * (n + 1))).toNat

end

end A374936.P13477903571425744741

/-!
# A374937: Maximum number of squares covered (i.e., attacked) by 7 independent (i.e., nonattacking) queens on an n X n chessboard.

The programs for A374937, there is no canonical definition to state claims against.
-/

/-! ## A374937.P337193386949487520

`∏{e}[6^(n+1), #+6]`
-/

namespace A374937.P337193386949487520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 6)

end

end A374937.P337193386949487520

/-! ## A374937.P11101089631929595695

`∑{e}[5^(n+2), (#+5)²]`
-/

namespace A374937.P11101089631929595695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 5) ^ 2

end

end A374937.P11101089631929595695

/-! ## A374937.P7483133227697579528

`∑{p}[5^(n+2), (n+2+#)²]`
-/

namespace A374937.P7483133227697579528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 2 + p) ^ 2

end

end A374937.P7483133227697579528

/-!
# A374938: Maximum number of squares covered (i.e., attacked) by 8 independent (i.e., nonattacking) queens on an n X n chessboard.

The programs for A374938, there is no canonical definition to state claims against.
-/

/-! ## A374938.P16569750540523034285

`A046037(n+1)²-A038140(n+1)`
-/

namespace A374938.P16569750540523034285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046037 (n + 1) ^ 2 - A038140 (n + 1)

end

end A374938.P16569750540523034285

/-! ## A374938.P11059080575118812126

`∏{e}[6^(n+1), #+7]`
-/

namespace A374938.P11059080575118812126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 7)

end

end A374938.P11059080575118812126

/-! ## A374938.P16556808104579586321

`∑{p}[5^(n+2), (n+3+#)²]`
-/

namespace A374938.P16556808104579586321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 3 + p) ^ 2

end

end A374938.P16556808104579586321

/-!
# A374939: a(n) is the number of distinct Legendrian knots, up to smooth knot type and classical invariants, with nonnegative rotation numbers that can be realized on a Legendrian n-mosaic.

The programs for A374939, there is no canonical definition to state claims against.
-/

/-! ## A374939.P6716881176957295379

`A032190(A307270(n))`
-/

namespace A374939.P6716881176957295379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032190 (A307270 n).toNat

end

end A374939.P6716881176957295379

/-!
# A374941: a(n) = (sum of proper prime factors of n) + Sum_{d = proper composite factor of n} a(d).

The programs for A374941, there is no canonical definition to state claims against.
-/

/-! ## A374941.P1847554532633177105

`∑{d}[n+1, A008472(#)*A174726((n+1)/#)]`
-/

namespace A374941.P1847554532633177105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d * A174726 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374941.P1847554532633177105

/-! ## A374941.P6845729023057453553

`∑{d}[n+1, A323910(#)*A329375((n+1)/#)]`
-/

namespace A374941.P6845729023057453553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A329375 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374941.P6845729023057453553

/-! ## A374941.P16042424658803656922

`∑{d}[n+1, A002033(#-1)*A105221((n+1)/#)]`
-/

namespace A374941.P16042424658803656922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A105221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374941.P16042424658803656922

/-! ## A374941.P15503321914425678371

`∑{d}[A187829(n+1), A105221(#)]`
-/

namespace A374941.P15503321914425678371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A105221 d

end

end A374941.P15503321914425678371

/-! ## A374941.P13213657940737279086

`and(A000005(A165839(n+1)), A369741(n+1))`
-/

namespace A374941.P13213657940737279086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000005 (A165839 (n + 1)).toNat) (A369741 (n + 1))

end

end A374941.P13213657940737279086

/-!
# A374947: a(n) is the number of suitably connected Legendrian n-Mosaics.

The programs for A374947, there is no canonical definition to state claims against.
-/

/-! ## A374947.P2399780191180947771

`A375354(∑[n+1])`
-/

namespace A374947.P2399780191180947771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374947.P2399780191180947771

/-! ## A374947.P2901107714890280196

`record[A375354(A230877(2*(n+1)))]`
-/

namespace A374947.P2901107714890280196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375354 (A230877 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374947.P2901107714890280196

/-! ## A374947.P10737255622909083949

`record[A375354(A051731(n+1)+n)]`
-/

namespace A374947.P10737255622909083949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375354 (A051731 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374947.P10737255622909083949

/-! ## A374947.P18290981196025728449

`record[A103452(n)*A375354(n+1)]`
-/

namespace A374947.P18290981196025728449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A375354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374947.P18290981196025728449

/-! ## A374947.P1351857942479267470

`record[root(A375354(n+1), A007318(n))]`
-/

namespace A374947.P1351857942479267470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A375354 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A374947.P1351857942479267470

/-!
# A374948: Decimal expansion of the Euclidean length of the minimum Steiner tree joining all the vertices of a unit cube.

The programs for A374948, there is no canonical definition to state claims against.
-/

/-! ## A374948.P13558639875840347293

`A010482(n)+A000007(n)`
-/

namespace A374948.P13558639875840347293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010482 (n + 1) + A000007 n

end

end A374948.P13558639875840347293

/-! ## A374948.P5752695730003292816

`A000007(n)+A178809(n+1)+A000038(n)²`
-/

namespace A374948.P5752695730003292816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A178809 (n + 1 + 2) + A000038 n ^ 2)

end

end A374948.P5752695730003292816

/-! ## A374948.P1887570933234724883

`A000007(n)+A104956(n+1)+A176532(n+1)-A176325(n+1)`
-/

namespace A374948.P1887570933234724883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A104956 (n + 1 + 1) + (A176532 (n + 1 + 2) - A176325 (n + 1 + 1)))

end

end A374948.P1887570933234724883

/-! ## A374948.P15102108709994963072

`A322586(A270037(n+3))+A010482(n)`
-/

namespace A374948.P15102108709994963072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322586 (A270037 (n + 3)).toNat + A010482 (n + 1)

end

end A374948.P15102108709994963072

/-! ## A374948.P14381247783533946267

`A322586(n²+4)+A010482(n)`
-/

namespace A374948.P14381247783533946267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322586 (n ^ 2 + 4) + A010482 (n + 1)

end

end A374948.P14381247783533946267

/-!
# A374951: a(n) = Sum_{i+j+k=n, i,j,k >= 1} sigma(i) * sigma(j) * sigma(k).

The programs for A374951, there is no canonical definition to state claims against.
-/

/-! ## A374951.P1547164670557551568

`A319083(A322809(2*(n+1))+A000124(n))`
-/

namespace A374951.P1547164670557551568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (A322809 (2 * (n + 1)) + A000124 n).toNat

end

end A374951.P1547164670557551568

/-!
# A374954: Positive integers k for which sqrt(k) < sqrt(p_1) + ... + sqrt(p_r), where p_1*...*p_r is the prime factorization of k.

The programs for A374954, there is no canonical definition to state claims against.
-/

/-! ## A374954.P1446535784473945506

`lt[∑[A129192(2*(n+2))], A129283(n)]`
-/

namespace A374954.P1446535784473945506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129192 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A374954.P1446535784473945506

/-! ## A374954.P3766124933769592303

`lt[A193231(A109368(n)), A003415(n)]`
-/

namespace A374954.P3766124933769592303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A109368 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374954.P3766124933769592303

/-! ## A374954.P8849912400089724197

`lt[A029968(n+1), A109724(A003415(n))]`
-/

namespace A374954.P8849912400089724197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109724 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374954.P8849912400089724197

/-! ## A374954.P8701873349378516669

`lt[A109707(A373575(n+2)), A003415(n)]`
-/

namespace A374954.P8701873349378516669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109707 (A373575 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374954.P8701873349378516669

/-! ## A374954.P135738240900938722

`lt[A165199(A007359(n)), A003415(n)]`
-/

namespace A374954.P135738240900938722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165199 (A007359 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A374954.P135738240900938722

/-!
# A374958: Median, as a function of n, of the probability mass function s(k-1,n-1)/k!, where k>=n and s(a,b) denotes the unsigned Stirling number of the first kind.

The programs for A374958, there is no canonical definition to state claims against.
-/

/-! ## A374958.P13757042176631970993

`A038567(A137963(n+2))-2`
-/

namespace A374958.P13757042176631970993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A137963 (n + 2)).toNat - 2

end

end A374958.P13757042176631970993

/-! ## A374958.P9923823070689686796

`A055887(n+2)-A339255(A055887(n)²)`
-/

namespace A374958.P9923823070689686796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 (n + 2) - A339255 (A055887 n ^ 2).toNat

end

end A374958.P9923823070689686796

/-!
# A374959: a(n) is the least k such that binomial(A349958(n), k) is a multiple of n.

The programs for A374959, there is no canonical definition to state claims against.
-/

/-! ## A374959.P16424959025695548901

`A357327(A396114(n+1))`
-/

namespace A374959.P16424959025695548901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 (A396114 (n + 1)).toNat

end

end A374959.P16424959025695548901

/-! ## A374959.P372257372797725592

`A357327((n+1)*A375082(n+1))`
-/

namespace A374959.P372257372797725592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357327 ((n + 1 : ℤ) * A375082 (n + 1)).toNat

end

end A374959.P372257372797725592

/-! ## A374959.P13618952316085501060

`A001221(∑[A263821(2*(n+1))^A263787(n+1)])`
-/

namespace A374959.P13618952316085501060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A263821 (2 * (n + 1)) : ℚ) ^ (A263787 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A374959.P13618952316085501060

/-! ## A374959.P16890494938307390355

`A086016(A326083(n))+A001221(n+1)`
-/

namespace A374959.P16890494938307390355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086016 (A326083 n).toNat + A001221 (n + 1)

end

end A374959.P16890494938307390355

/-! ## A374959.P4809167747471791638

`A348613(A186028(2*(n+1)))+A001221(n+1)`
-/

namespace A374959.P4809167747471791638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 (A186028 (2 * (n + 1))).toNat + A001221 (n + 1)

end

end A374959.P4809167747471791638

/-!
# A374960: Numbers k such that 2^k and 2^(k+1) have the same number of terms in their Zeckendorf representation (A007895).

The programs for A374960, there is no canonical definition to state claims against.
-/

/-! ## A374960.P6306949848523727679

`eq[0, Δ[A020908(n)]]`
-/

namespace A374960.P6306949848523727679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A374960.P6306949848523727679

/-! ## A374960.P2757306959033241947

`eq[A020908(n+1), A020908(n)]`
-/

namespace A374960.P2757306959033241947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374960.P2757306959033241947

/-!
# A374962: Numbers k such that the number of terms in the Zeckendorf representation of 2^k equals the binary weight of Fibonacci(k).

The programs for A374962, there is no canonical definition to state claims against.
-/

/-! ## A374962.P12991355115557677476

`eq[A011373(n), A020908(n)]`
-/

namespace A374962.P12991355115557677476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A374962.P12991355115557677476

/-!
# A374963: a(n) = Sum_{k=1..n-1} sigma(k)*sigma_3(n-k).

The programs for A374963, there is no canonical definition to state claims against.
-/

/-! ## A374963.P12711951784236893945

`A105519(A179995(n))`
-/

namespace A374963.P12711951784236893945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 (A179995 n).toNat

end

end A374963.P12711951784236893945

/-!
# A374964: a(n) is the smallest positive k such that -n^n == n (mod n + k).

The programs for A374964, there is no canonical definition to state claims against.
-/

/-! ## A374964.P206931488902293557

`A316439(or(2, A274975(n+2)))`
-/

namespace A374964.P206931488902293557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316439 (Int.lor 2 (A274975 (n + 2))).toNat

end

end A374964.P206931488902293557

/-! ## A374964.P9616273517868270641

`A353865(C(n+2, A126287(n+3)))`
-/

namespace A374964.P9616273517868270641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353865 (Nat.choose (n + 2) (A126287 (n + 3)).toNat)

end

end A374964.P9616273517868270641

/-! ## A374964.P15286335467887014504

`A211100(A211100(n+4)^(n*(1+(-1)^n)/4))`
-/

namespace A374964.P15286335467887014504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (SequenceMachineLib.roundAway ((A211100 (n + 4) : ℝ) ^ (((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4 : ℝ))).toNat

end

end A374964.P15286335467887014504

/-! ## A374964.P7046253451128829612

`A000194(A091512(n+1)^A353366(2*(n+1)))`
-/

namespace A374964.P7046253451128829612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A091512 (n + 1) : ℚ) ^ (A353366 (2 * (n + 1)) : ℤ))).toNat

end

end A374964.P7046253451128829612

/-!
# A374966: a(n) = 0 if n has appeared in the sequence before, otherwise a(n) = a(n-1) + n. Start with a(0) = 0.

The programs for A374966, there is no canonical definition to state claims against.
-/

/-! ## A374966.P5415174967582458910

`(a(n-1)+n)%A178120(3*n)` with `a(0)=0`
-/

namespace A374966.P5415174967582458910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + (n : ℤ)) (A178120 (3 * n))

end

end A374966.P5415174967582458910

/-!
# A374969: Number of ordered solutions (x,y,z,w) to x*y + y*z + z*w + w*x = n with x,y,z,w >= 1.

The programs for A374969, the canonical program `A374969.P4381911814034986725` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A374969 has offset 1).

The definition of A374969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A374969.P4381911814034986725

`(n+2)*A000005(n+1)-2*A000203(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A374969

/-- `(n+2)*A000005(n+1)-2*A000203(n+1)` -/
def P4381911814034986725.Spec : Prop :=
  ∀ n, P4381911814034986725.a n = A374969 (n + 1)

theorem P4381911814034986725.correct : P4381911814034986725.Spec := by
  intro n
  simp only [A374969, Nat.add_sub_cancel]

end A374969

/-! ## A374969.P15123409222343771192

`∑{d}[n+1, n+2-2*#]`
-/

namespace A374969.P15123409222343771192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 2 : ℤ) - (2 * d : ℤ))

end

end A374969.P15123409222343771192

namespace A374969

/-- `∑{d}[n+1, n+2-2*#]` -/
def P15123409222343771192.Spec : Prop :=
  ∀ n, P15123409222343771192.a n = A374969 (n + 1)

end A374969

/-! ## A374969.P171898458970081407

`abs(∑{d}[n+1, #-(n+2)+#])`
-/

namespace A374969.P171898458970081407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (n + 2 : ℤ) + (d : ℤ))|

end

end A374969.P171898458970081407

namespace A374969

/-- `abs(∑{d}[n+1, #-(n+2)+#])` -/
def P171898458970081407.Spec : Prop :=
  ∀ n, P171898458970081407.a n = A374969 (n + 1)

end A374969

/-! ## A374969.P13445228692507525959

`-∑{d}[n+1, #-(n+2)+#]`
-/

namespace A374969.P13445228692507525959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (n + 2 : ℤ) + (d : ℤ)))

end

end A374969.P13445228692507525959

namespace A374969

/-- `-∑{d}[n+1, #-(n+2)+#]` -/
def P13445228692507525959.Spec : Prop :=
  ∀ n, P13445228692507525959.a n = A374969 (n + 1)

end A374969

/-! ## A374969.P14856232211847985565

`A081307(n+1)-A000203(n+1)`
-/

namespace A374969.P14856232211847985565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081307 (n + 1) - A000203 (n + 1)

end

end A374969.P14856232211847985565

namespace A374969

/-- `A081307(n+1)-A000203(n+1)` -/
def P14856232211847985565.Spec : Prop :=
  ∀ n, P14856232211847985565.a n = A374969 (n + 1)

theorem P14856232211847985565.correct : P14856232211847985565.Spec := by
  intro n
  simp only [A374969, Nat.add_sub_cancel, A374969.P14856232211847985565.a, A374969.P4381911814034986725.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A081307, A081307.P10355889230247830920.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374969

/-! ## A374969.P14256061870625796538

`A094472(n+1)-A046520(n+1)`
-/

namespace A374969.P14256061870625796538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094472 (n + 1) - A046520 (n + 1)

end

end A374969.P14256061870625796538

namespace A374969

/-- `A094472(n+1)-A046520(n+1)` -/
def P14256061870625796538.Spec : Prop :=
  ∀ n, P14256061870625796538.a n = A374969 (n + 1)

theorem P14256061870625796538.correct : P14256061870625796538.Spec := by
  intro n
  simp only [A374969, Nat.add_sub_cancel, A374969.P14256061870625796538.a, A374969.P4381911814034986725.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A094472, A094472.P13859718929151834946.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374969

/-! ## A374969.P15511950296716997748

`A094471(n+1)-A065608(n+1)`
-/

namespace A374969.P15511950296716997748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094471 (n + 1) - A065608 (n + 1)

end

end A374969.P15511950296716997748

namespace A374969

/-- `A094471(n+1)-A065608(n+1)` -/
def P15511950296716997748.Spec : Prop :=
  ∀ n, P15511950296716997748.a n = A374969 (n + 1)

theorem P15511950296716997748.correct : P15511950296716997748.Spec := by
  intro n
  simp only [A374969, Nat.add_sub_cancel, A374969.P15511950296716997748.a, A374969.P4381911814034986725.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065608, A065608.P12445239359989980431.a, A094471, A094471.P10880822235094612413.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374969

/-! ## A374969.P1145354990296739149

`A038040(n+1)-A129235(n+1)`
-/

namespace A374969.P1145354990296739149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038040 (n + 1) - A129235 (n + 1)

end

end A374969.P1145354990296739149

namespace A374969

/-- `A038040(n+1)-A129235(n+1)` -/
def P1145354990296739149.Spec : Prop :=
  ∀ n, P1145354990296739149.a n = A374969 (n + 1)

theorem P1145354990296739149.correct : P1145354990296739149.Spec := by
  intro n
  simp only [A374969, Nat.add_sub_cancel, A374969.P1145354990296739149.a, A374969.P4381911814034986725.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038040, A038040.P16512896840577774730.a, A129235, A129235.P483503928581819009.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374969

/-! ## A374969.P14882603177710391809

`A000005(n+1)+A094471(n+1)-A000203(n+1)`
-/

namespace A374969.P14882603177710391809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A094471 (n + 1) - A000203 (n + 1))

end

end A374969.P14882603177710391809

namespace A374969

/-- `A000005(n+1)+A094471(n+1)-A000203(n+1)` -/
def P14882603177710391809.Spec : Prop :=
  ∀ n, P14882603177710391809.a n = A374969 (n + 1)

theorem P14882603177710391809.correct : P14882603177710391809.Spec := by
  intro n
  simp only [A374969, Nat.add_sub_cancel, A374969.P14882603177710391809.a, A374969.P4381911814034986725.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A094471, A094471.P10880822235094612413.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038040, A038040.P16512896840577774730.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A374969

/-! ## A374969.P6957634966476223515

`A024816(n+1)-(A362625(n+1)+A049820(n+1))`
-/

namespace A374969.P6957634966476223515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) - (A362625 (n + 1) + A049820 (n + 1))

end

end A374969.P6957634966476223515

namespace A374969

/-- `A024816(n+1)-(A362625(n+1)+A049820(n+1))` -/
def P6957634966476223515.Spec : Prop :=
  ∀ n, P6957634966476223515.a n = A374969 (n + 1)

end A374969

/-!
# A374970: Number of ordered primitive solutions (x,y,z,w) to x*y + y*z + z*w + w*x = n with x,y,z,w >= 1.

The programs for A374970, there is no canonical definition to state claims against.
-/

/-! ## A374970.P11836314028216177373

`∑{d}[n+1, A008966(#)*A268631((n+1)/#)]`
-/

namespace A374970.P11836314028216177373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A268631 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374970.P11836314028216177373

/-! ## A374970.P5305737421804086211

`∑{d}[n+1, A268631(#)*A323154((n+1)/#)]`
-/

namespace A374970.P5305737421804086211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268631 d * A323154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374970.P5305737421804086211

/-! ## A374970.P14972003754181024002

`∑{d}[n+1, A268631(#)*A353559((n+1)/#)]`
-/

namespace A374970.P14972003754181024002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A268631 d * A353559 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374970.P14972003754181024002

/-! ## A374970.P8752794701002619235

`∑{d}[n+1, A271102(#)*A374969((n+1)/#)]`
-/

namespace A374970.P8752794701002619235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A374969 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A374970.P8752794701002619235

/-! ## A374970.P12840985552716498612

`and(∑{d}[n+1, n+2-2*#], A376794(A104272(n+5)))`
-/

namespace A374970.P12840985552716498612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ d ∈ Nat.divisors (f1 n), ((n + 2 : ℤ) - (2 * d : ℤ))) (A376794 (A104272 (n + 5)).toNat)

end

end A374970.P12840985552716498612

/-!
# A374973: a(n) = Sum_{k=1..n-1} tau(k) * sigma_2(n-k).

The programs for A374973, there is no canonical definition to state claims against.
-/

/-! ## A374973.P16234203315969850197

`∑[A003987(A000567(n*(n²+5)/6))]`
-/

namespace A374973.P16234203315969850197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A000567 (SequenceMachineLib.roundAway ((n : ℚ) * ((n ^ 2 + 5 : ℚ) / 6))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A374973.P16234203315969850197

/-! ## A374973.P10806590507813890260

`xor(A004068(n), A051626(A000272(n)))`
-/

namespace A374973.P10806590507813890260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004068 n) (A051626 (A000272 n).toNat)

end

end A374973.P10806590507813890260

/-!
# A374974: a(n) = Sum_{k=1..n-1} sigma(k) * sigma_2(n-k).

The programs for A374974, there is no canonical definition to state claims against.
-/

/-! ## A374974.P3447154729065808368

`A303917(A027599(n+1))`
-/

namespace A374974.P3447154729065808368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303917 (A027599 (n + 1)).toNat

end

end A374974.P3447154729065808368

/-! ## A374974.P16067720581510639444

`A033107(A369194(n))+n^3`
-/

namespace A374974.P16067720581510639444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033107 (A369194 n).toNat + (n ^ 3 : ℤ)

end

end A374974.P16067720581510639444

/-!
# A374977: a(n) = Sum_{i+j+k+l=n, i,j,k,l >= 1} sigma(i)*sigma(j)*sigma(k)*sigma(l).

The programs for A374977, there is no canonical definition to state claims against.
-/

/-! ## A374977.P5346848080897297815

`A087086(A384743(n+1))`
-/

namespace A374977.P5346848080897297815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087086 (A384743 (n + 1)).toNat

end

end A374977.P5346848080897297815

/-! ## A374977.P16865653278622891818

`A111871(A000598(n))-A111857(3*(n+1))`
-/

namespace A374977.P16865653278622891818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111871 (A000598 n).toNat - A111857 (3 * (n + 1))

end

end A374977.P16865653278622891818

/-! ## A374977.P17726254969405205516

`A011852(n+4)*A126885(A011852(n+4))`
-/

namespace A374977.P17726254969405205516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011852 (n + 4) * A126885 (A011852 (n + 4)).toNat

end

end A374977.P17726254969405205516

/-!
# A374978: a(n) = Sum_{i+j+k+l+m=n, i,j,k,l,m >= 1} sigma(i)*sigma(j)*sigma(k)*sigma(l)*sigma(m).

The programs for A374978, there is no canonical definition to state claims against.
-/

/-! ## A374978.P472282759007965982

`A122321(A128737(n))`
-/

namespace A374978.P472282759007965982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122321 (A128737 n).toNat

end

end A374978.P472282759007965982

/-! ## A374978.P8620850423976125625

`A397406(A036784(n))`
-/

namespace A374978.P8620850423976125625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397406 (A036784 n).toNat

end

end A374978.P8620850423976125625

/-! ## A374978.P12559653295659768813

`A342722(A390132(n))`
-/

namespace A374978.P12559653295659768813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342722 (A390132 n).toNat

end

end A374978.P12559653295659768813

/-!
# A374979: a(n) = Sum_{i+j+k+l+m+r=n, i,j,k,l,m,r >= 1} sigma(i)*sigma(j)*sigma(k)*sigma(l)*sigma(m)*sigma(r).

The programs for A374979, there is no canonical definition to state claims against.
-/

/-! ## A374979.P3384192542971499688

`A325345(A214932(n))`
-/

namespace A374979.P3384192542971499688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325345 (A214932 n).toNat

end

end A374979.P3384192542971499688

/-! ## A374979.P15342472849889459437

`A282192(record[A078680(n+1)])`
-/

namespace A374979.P15342472849889459437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A374979.P15342472849889459437

/-! ## A374979.P15030014640768140622

`A004185(A353885(n+3)/7)`
-/

namespace A374979.P15030014640768140622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (SequenceMachineLib.roundAway ((A353885 (n + 3) : ℚ) / 7)).toNat

end

end A374979.P15030014640768140622

/-! ## A374979.P6217376495495011659

`A085858(xor(3, A338114(n+3)))`
-/

namespace A374979.P6217376495495011659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 (Int.xor 3 (A338114 (n + 3))).toNat

end

end A374979.P6217376495495011659

/-!
# A374980: Number of multiset permutations of {1, 1, 2, 2, ..., n, n} with no fixed pair (j,j).

The programs for A374980, there is no canonical definition to state claims against.
-/

/-! ## A374980.P11981021221975652393

`A116218(n)/2^n`
-/

namespace A374980.P11981021221975652393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116218 n : ℚ) / (2 ^ n : ℚ)

end

end A374980.P11981021221975652393

/-! ## A374980.P13037908775507159513

`A375222(n+1)/(n+1)`
-/

namespace A374980.P13037908775507159513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375222 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A374980.P13037908775507159513

/-! ## A374980.P6687954081515813835

`floor(A116218(n)/A000079(n))`
-/

namespace A374980.P6687954081515813835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116218 n : ℚ) / (A000079 n : ℚ)⌋

end

end A374980.P6687954081515813835

/-! ## A374980.P3177906057066327360

`ceil(A116218(n)/A034008(n+2))`
-/

namespace A374980.P3177906057066327360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116218 n : ℚ) / (A034008 (n + 2) : ℚ)⌉

end

end A374980.P3177906057066327360

/-! ## A374980.P8788788222451882347

`A375694(∑[n+3])`
-/

namespace A374980.P8788788222451882347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375694 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374980.P8788788222451882347

/-!
# A374981: a(n) = (n^2 - 1)/6 - Sum_{t=0..n-1} [ A000217(t)/n ], where [ x ] means the fractional part of x here.

The programs for A374981, there is no canonical definition to state claims against.
-/

/-! ## A374981.P11509826787245512470

`((n+1)²-1-A374968(n+1))/6`
-/

namespace A374981.P11509826787245512470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - 1 - A374968 (n + 1) : ℚ) / 6

end

end A374981.P11509826787245512470

/-! ## A374981.P4038517329072545564

`A145814(A047510(n+1))`
-/

namespace A374981.P4038517329072545564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145814 (A047510 (n + 1)).toNat

end

end A374981.P4038517329072545564

/-! ## A374981.P1141670564232486689

`A145814(A284880(n+1))`
-/

namespace A374981.P1141670564232486689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145814 (A284880 (n + 1)).toNat

end

end A374981.P1141670564232486689

/-! ## A374981.P5846010157439552879

`A094708(A153733(n)+A100036(n+1))`
-/

namespace A374981.P5846010157439552879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094708 (A153733 n + A100036 (n + 1)).toNat

end

end A374981.P5846010157439552879

/-! ## A374981.P15653894026044878201

`A054899(A255844(n)-A095162(n+1))`
-/

namespace A374981.P15653894026044878201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A255844 n - A095162 (n + 1)).toNat

end

end A374981.P15653894026044878201

/-!
# A374982: a(n) = (1/3)*Product_{k=0..n} (F(k)+3), where F=A000045 (Fibonacci numbers).

The programs for A374982, there is no canonical definition to state claims against.
-/

/-! ## A374982.P12386144782060651115

`∏[∑[2-(4/2-a(n-1)-a(n-2))]]` with `a(0)=1, a(1)=3, a(2)=0, a(3)=1`
-/

namespace A374982.P12386144782060651115
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 0, 1] fun n f2 =>
  2 - ((4 : ℚ) / 2 - f2 (n - 1) - f2 (n - 2))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374982.P12386144782060651115

/-! ## A374982.P1935207815742887664

`∏[A157726(n)]/3`
-/

namespace A374982.P1935207815742887664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A374982.P1935207815742887664

/-! ## A374982.P13097879838470174632

`∏[A132923(∑[n+3])]`
-/

namespace A374982.P13097879838470174632
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132923 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374982.P13097879838470174632

/-! ## A374982.P1280426879747095233

`∏[A000045(n)+3]/3`
-/

namespace A374982.P1280426879747095233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A374982.P1280426879747095233

/-! ## A374982.P1778471079896404112

`(A157725(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374982.P1778471079896404112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A157725 n + 1) * a (n - 1)

end

end A374982.P1778471079896404112

/-!
# A374983: a(n) is the numerator of Sum_{k = 1..n} 1 / (k*A374663(k)).

The programs for A374983, there is no canonical definition to state claims against.
-/

/-! ## A374983.P4369589213165133676

`A375516(n)-1`
-/

namespace A374983.P4369589213165133676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375516 n - 1

end

end A374983.P4369589213165133676

/-! ## A374983.P18445204407117032135

`A377295(A271954(n))+A375516(n)`
-/

namespace A374983.P18445204407117032135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377295 (A271954 n).toNat + A375516 n

end

end A374983.P18445204407117032135

/-! ## A374983.P10977231166397696200

`∑[A375518(n)]-A375518(n)`
-/

namespace A374983.P10977231166397696200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A375518 n

end

end A374983.P10977231166397696200

/-! ## A374983.P8271175427002259552

`∑[A375518(n)]%A375516(n)`
-/

namespace A374983.P8271175427002259552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A375516 n)

end

end A374983.P8271175427002259552

/-! ## A374983.P3164842712035414188

`∏[A375791(n)]/A375791(n)-1`
-/

namespace A374983.P3164842712035414188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375791 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A375791 n : ℚ) - 1

end

end A374983.P3164842712035414188

/-!
# A374984: a(n) = (1/4)*Product_{k=0..n} F(k)+4, where F=A000045 (Fibonacci numbers).

The programs for A374984, there is no canonical definition to state claims against.
-/

/-! ## A374984.P12761751218798381916

`∏[A157727(n)]/4`
-/

namespace A374984.P12761751218798381916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A374984.P12761751218798381916

/-! ## A374984.P5289960556651902278

`∏[A000045(n)+4]/4`
-/

namespace A374984.P5289960556651902278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A374984.P5289960556651902278

/-! ## A374984.P5287014339258978986

`(A157726(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374984.P5287014339258978986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A157726 n + 1) * a (n - 1)

end

end A374984.P5287014339258978986

/-! ## A374984.P17648017417244972956

`(A157725(n)+2)*a(n-1)` with `a(0)=1`
-/

namespace A374984.P17648017417244972956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A157725 n + 2) * a (n - 1)

end

end A374984.P17648017417244972956

/-!
# A374985: Array read by antidiagonals: T(n,k) is the number of n X k matrices whose values cover an initial interval of positive integers and whose rows and columns have values which are strictly increasing.

The programs for A374985, there is no canonical definition to state claims against.
-/

/-! ## A374985.P17146142150239284040

`A358637(A371761(n))`
-/

namespace A374985.P17146142150239284040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358637 (A371761 n).toNat

end

end A374985.P17146142150239284040

/-! ## A374985.P6191358819735192579

`A372395(A219924(n))%A084829(n+3)`
-/

namespace A374985.P6191358819735192579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372395 (A219924 n).toNat) (A084829 (n + 3))

end

end A374985.P6191358819735192579

/-! ## A374985.P15439746681798585859

`A137734(C(A132044(n), A137734(n+4)))`
-/

namespace A374985.P15439746681798585859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (Nat.choose (A132044 n).toNat (A137734 (n + 4)).toNat)

end

end A374985.P15439746681798585859

/-! ## A374985.P5912894669441247852

`A001003(A145153(n)%A359680(2*n+5))`
-/

namespace A374985.P5912894669441247852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (Int.tmod (A145153 n) (A359680 (2 * n + 5))).toNat

end

end A374985.P5912894669441247852

/-!
# A374986: a(n) = (1/5)*Product_{k=0..n} F(k)+5, where F=A000045 (Fibonacci numbers).

The programs for A374986, there is no canonical definition to state claims against.
-/

/-! ## A374986.P6908894716957804737

`∏[A157729(n)]/5`
-/

namespace A374986.P6908894716957804737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A374986.P6908894716957804737

/-! ## A374986.P6940202950053579515

`(A157727(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A374986.P6940202950053579515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A157727 n + 1) * a (n - 1)

end

end A374986.P6940202950053579515

/-! ## A374986.P17908599115952079493

`(A001611(n)+4)*a(n-1)` with `a(0)=1`
-/

namespace A374986.P17908599115952079493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A001611 n + 4) * a (n - 1)

end

end A374986.P17908599115952079493

/-! ## A374986.P170936804264641964

`(A000045(n)+5)*a(n-1)` with `a(0)=1`
-/

namespace A374986.P170936804264641964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000045 n + 5) * a (n - 1)

end

end A374986.P170936804264641964

/-! ## A374986.P14819974067563487880

`∏[A157729(n)%A019278(2*n+3)]`
-/

namespace A374986.P14819974067563487880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157729 n) (A019278 (2 * n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A374986.P14819974067563487880

/-!
# A374987: Let s(x) be the Maclaurin series for cos(x); then a(n) is the least index k for which all partial sums of cos(2m*Pi) are positive.

The programs for A374987, there is no canonical definition to state claims against.
-/

/-! ## A374987.P11691172558368843547

`A067628(A153794(n+1))`
-/

namespace A374987.P11691172558368843547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067628 (A153794 (n + 1)).toNat

end

end A374987.P11691172558368843547

/-! ## A374987.P969752183667395065

`A001670(A152994(n+1))`
-/

namespace A374987.P969752183667395065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (A152994 (n + 1)).toNat

end

end A374987.P969752183667395065

/-! ## A374987.P6557432888787382690

`A130819(A153796(n+1))`
-/

namespace A374987.P6557432888787382690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (A153796 (n + 1)).toNat

end

end A374987.P6557432888787382690

/-!
# A374988: Largest unitary square divisor of n!.

The programs for A374988, there is no canonical definition to state claims against.
-/

/-! ## A374988.P15287077648471800382

`A374989(n)²`
-/

namespace A374988.P15287077648471800382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374989 n ^ 2

end

end A374988.P15287077648471800382

/-! ## A374988.P11524466012518660838

`A374989(A028310(n))^2`
-/

namespace A374988.P11524466012518660838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374989 (A028310 n).toNat ^ 2

end

end A374988.P11524466012518660838

/-! ## A374988.P6379829250733571008

`A374989(n)^(A057427(n)+1)`
-/

namespace A374988.P6379829250733571008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374989 n : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A374988.P6379829250733571008

/-! ## A374988.P6561836863902096963

`A374989(A028310(n))*A374989(n)`
-/

namespace A374988.P6561836863902096963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374989 (A028310 n).toNat * A374989 n

end

end A374988.P6561836863902096963

/-! ## A374988.P15292039483082872375

`A374989(A065033(2*n))*A374989(n)`
-/

namespace A374988.P15292039483082872375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374989 (A065033 (2 * n)).toNat * A374989 n

end

end A374988.P15292039483082872375

/-! ## A374988.P14994197438306453908

`A374989(n)^A020639(A001175(n+1))`
-/

namespace A374988.P14994197438306453908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374989 n : ℚ) ^ (A020639 (A001175 (n + 1)).toNat : ℤ)

end

end A374988.P14994197438306453908

/-! ## A374988.P3224518513548499378

`A374989(n)^A020639(A123050(n))`
-/

namespace A374988.P3224518513548499378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374989 n : ℚ) ^ (A020639 (A123050 n).toNat : ℤ)

end

end A374988.P3224518513548499378

/-!
# A374989: Square root of largest unitary square divisor of n!.

The programs for A374989, there is no canonical definition to state claims against.
-/

/-! ## A374989.P1404927134922740498

`sqrt(A374988(n))`
-/

namespace A374989.P1404927134922740498
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374988 n : ℝ)

end

end A374989.P1404927134922740498

/-!
# A374992: Total cost when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the move-to-front updating strategy.

The programs for A374992, there is no canonical definition to state claims against.
-/

/-! ## A374992.P3548313678274304271

`a(A025480(n-1))+A374997(n)` with `a(0)=0`
-/

namespace A374992.P3548313678274304271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A025480 (n - 1)).toNat + A374997 n

end

end A374992.P3548313678274304271

/-! ## A374992.P11075932782938131552

`A374996(A210981(n))`
-/

namespace A374992.P11075932782938131552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (A210981 n).toNat

end

end A374992.P11075932782938131552

/-! ## A374992.P6040970425128007696

`A374996(A085931(n+1))`
-/

namespace A374992.P6040970425128007696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (A085931 (n + 1)).toNat

end

end A374992.P6040970425128007696

/-! ## A374992.P11848799831874866581

`A374996(A077169(n+6))`
-/

namespace A374992.P11848799831874866581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (A077169 (n + 6)).toNat

end

end A374992.P11848799831874866581

/-! ## A374992.P10945321213407519986

`A374996(A000217(n+6)+6)`
-/

namespace A374992.P10945321213407519986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (A000217 (n + 6) + 6).toNat

end

end A374992.P10945321213407519986

/-! ## A374992.P11757688630409669410

`A374996(∑[4*n])`
-/

namespace A374992.P11757688630409669410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A374992.P11757688630409669410

/-!
# A374993: Total cost when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the transpose updating strategy.

The programs for A374993, there is no canonical definition to state claims against.
-/

/-! ## A374993.P9700991828808366788

`a(A025480(n-1))+A374998(n)` with `a(0)=0`
-/

namespace A374993.P9700991828808366788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A025480 (n - 1)).toNat + A374998 n

end

end A374993.P9700991828808366788

/-! ## A374993.P9658791646725428772

`A374996(∑[n+1]+1)`
-/

namespace A374993.P9658791646725428772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A374993.P9658791646725428772

/-! ## A374993.P11280051471591028725

`A374996(A000124(n+1))%44`
-/

namespace A374993.P11280051471591028725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374996 (A000124 (n + 1)).toNat) 44

end

end A374993.P11280051471591028725

/-! ## A374993.P16401075390554115204

`A374996(A000124(n+1))+A007814(2*n+1)`
-/

namespace A374993.P16401075390554115204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (A000124 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A374993.P16401075390554115204

/-! ## A374993.P14146834219455610799

`A049347(3*(n+1))*A374996(A000124(n+1))`
-/

namespace A374993.P14146834219455610799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (3 * (n + 1)) * A374996 (A000124 (n + 1)).toNat

end

end A374993.P14146834219455610799

/-! ## A374993.P8014373233264117391

`A001222(A006567(n+1))*A374996(A000124(n+1))`
-/

namespace A374993.P8014373233264117391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006567 (n + 1)).toNat * A374996 (A000124 (n + 1)).toNat

end

end A374993.P8014373233264117391

/-! ## A374993.P11548185062013496002

`A374995(n)-A010815(A324850(3*n+4))`
-/

namespace A374993.P11548185062013496002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374995 n - A010815 (A324850 (3 * n + 4)).toNat

end

end A374993.P11548185062013496002

/-!
# A374994: Total cost when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the frequency-count updating strategy.

The programs for A374994, there is no canonical definition to state claims against.
-/

/-! ## A374994.P3259616250271033742

`a(A025480(n-1))+A374999(n)` with `a(0)=0`
-/

namespace A374994.P3259616250271033742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A025480 (n - 1)).toNat + A374999 n

end

end A374994.P3259616250271033742

/-! ## A374994.P1301811484539349958

`A374992(n)-A151622(A261019(n+1))`
-/

namespace A374994.P1301811484539349958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 n - A151622 (A261019 (n + 1)).toNat

end

end A374994.P1301811484539349958

/-! ## A374994.P3055648398883279200

`A374992(n)-A023531(A270109(n+4))`
-/

namespace A374994.P3055648398883279200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 n - A023531 (A270109 (n + 4)).toNat

end

end A374994.P3055648398883279200

/-!
# A374995: Total cost when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), where a requested element at position i is moved to position floor((i+1)/2).

The programs for A374995, there is no canonical definition to state claims against.
-/

/-! ## A374995.P4075860030205509079

`a(A025480(n-1))+A375000(n)` with `a(0)=0`
-/

namespace A374995.P4075860030205509079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A025480 (n - 1)).toNat + A375000 n

end

end A374995.P4075860030205509079

/-! ## A374995.P4194823943068761845

`A374993(n)+A010815(A324850(3*n+4))`
-/

namespace A374995.P4194823943068761845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 n + A010815 (A324850 (3 * n + 4)).toNat

end

end A374995.P4194823943068761845

/-! ## A374995.P3293817521759408358

`A374996(∑[n+1]+1)+A010815(A324850(3*n+4))`
-/

namespace A374995.P3293817521759408358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + A010815 (A324850 (3 * n + 4)).toNat

end

end A374995.P3293817521759408358

/-! ## A374995.P6650386876677739437

`A374993(n)+A227291(A093106(3*n+4))`
-/

namespace A374995.P6650386876677739437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 n + A227291 (A093106 (3 * n + 4)).toNat

end

end A374995.P6650386876677739437

/-! ## A374995.P3592725686468676679

`A374993(lt[A239871(n), A260317(n+1)])`
-/

namespace A374995.P3592725686468676679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239871 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260317 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A374995.P3592725686468676679

/-!
# A374996: Square array read by antidiagonals: T(n,k) is the total cost when the elements of the k-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the move-ahead(n) updating strategy; n, k >= 0.

The programs for A374996, there is no canonical definition to state claims against.
-/

/-! ## A374996.P7580630025885401034

`ceil(log2(A122203(n)+1))%A330845(n+1)`
-/

namespace A374996.P7580630025885401034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (A122203 n + 1 : ℝ)⌉ (A330845 (n + 1))

end

end A374996.P7580630025885401034

/-! ## A374996.P16296130426139367937

`A071673(A130403(n)%A330845(n+1))`
-/

namespace A374996.P16296130426139367937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (Int.tmod (A130403 n) (A330845 (n + 1))).toNat

end

end A374996.P16296130426139367937

/-! ## A374996.P10602992142425184641

`A071673(A151878(3*n+1)+A089840(n))`
-/

namespace A374996.P10602992142425184641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A151878 (3 * n + 1) + A089840 n).toNat

end

end A374996.P10602992142425184641

/-! ## A374996.P12098677919954358052

`A071673(A151878(3*n+1)+A130403(n))`
-/

namespace A374996.P12098677919954358052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071673 (A151878 (3 * n + 1) + A130403 n).toNat

end

end A374996.P12098677919954358052

/-! ## A374996.P13194672706123161024

`and(A071673(A089840(n)), A083836(n+5))`
-/

namespace A374996.P13194672706123161024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071673 (A089840 n).toNat) (A083836 (n + 5))

end

end A374996.P13194672706123161024

/-!
# A374997: Position of the last requested element when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the move-to-front updating strategy.

The programs for A374997, there is no canonical definition to state claims against.
-/

/-! ## A374997.P6435468487743987463

`A374992(n+1)-A374992(A025480(n))`
-/

namespace A374997.P6435468487743987463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 (n + 1) - A374992 (A025480 n).toNat

end

end A374997.P6435468487743987463

/-! ## A374997.P12301291837717517989

`A374992(n+1)-A374992(floor(n/(xor(n, n+1)+1)))`
-/

namespace A374997.P12301291837717517989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374992 (n + 1) - A374992 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A374997.P12301291837717517989

/-! ## A374997.P8542899652106104870

`A374999(n+1)+A285963(A299259(2*(n+1)))`
-/

namespace A374997.P8542899652106104870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374999 (n + 1) + A285963 (A299259 (2 * (n + 1))).toNat

end

end A374997.P8542899652106104870

/-! ## A374997.P13072150933576910965

`gcd(A032800(n), A374999(n+1))`
-/

namespace A374997.P13072150933576910965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032800 n) (A374999 (n + 1))

end

end A374997.P13072150933576910965

/-! ## A374997.P13155722297394653402

`A374999(C(A356944(n+1), n))`
-/

namespace A374997.P13155722297394653402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374999 (Nat.choose (A356944 (n + 1)).toNat n)

end

end A374997.P13155722297394653402

/-!
# A374998: Position of the last requested element when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the transpose updating strategy.

The programs for A374998, there is no canonical definition to state claims against.
-/

/-! ## A374998.P4959335933215055838

`A374993(n+1)-A374993(A025480(n))`
-/

namespace A374998.P4959335933215055838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 (A025480 n).toNat

end

end A374998.P4959335933215055838

/-! ## A374998.P1828039161960146282

`A374993(n+1)-A374993(floor(n/(xor(n, n+1)+1)))`
-/

namespace A374998.P1828039161960146282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat

end

end A374998.P1828039161960146282

/-! ## A374998.P344926239584727036

`A374993(n+1)-A374993(round(n/(xor(n, n+1)+1)))`
-/

namespace A374998.P344926239584727036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat

end

end A374998.P344926239584727036

/-! ## A374998.P6028316691392297555

`A374993(n+1)-A374993(A153733(n)/2)`
-/

namespace A374998.P6028316691392297555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 (SequenceMachineLib.roundAway ((A153733 n : ℚ) / 2)).toNat

end

end A374998.P6028316691392297555

/-! ## A374998.P17762041926459569514

`A374993(n+1)-A374993(A110963(Δ[n²])-1)`
-/

namespace A374998.P17762041926459569514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 (A110963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat

end

end A374998.P17762041926459569514

/-! ## A374998.P1122113557027979828

`A374993(n+1)-A374993(floor(A322250(n+1)/2))`
-/

namespace A374998.P1122113557027979828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 ⌊(A322250 (n + 1) : ℚ) / 2⌋.toNat

end

end A374998.P1122113557027979828

/-! ## A374998.P11862370702855005969

`A374993(n+1)-A374993(floor(A166466(n+1)/6))`
-/

namespace A374998.P11862370702855005969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 ⌊(A166466 (n + 1) : ℚ) / 6⌋.toNat

end

end A374998.P11862370702855005969

/-! ## A374998.P840857940223365253

`A374993(n+1)-A374993(floor(n/2^A001511(n+1)))`
-/

namespace A374998.P840857940223365253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374993 (n + 1) - A374993 ⌊(n : ℚ) / (2 : ℚ) ^ (A001511 (n + 1) : ℤ)⌋.toNat

end

end A374998.P840857940223365253

/-! ## A374998.P4966303276411749670

`A375000(A357979(n+1)%A246281(n+3))`
-/

namespace A374998.P4966303276411749670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375000 (Int.tmod (A357979 (n + 1)) (A246281 (n + 3))).toNat

end

end A374998.P4966303276411749670

/-!
# A374999: Position of the last requested element when the elements of the n-th composition (in standard order) are requested from a self-organizing list initialized to (1, 2, 3, ...), using the frequency-count updating strategy.

The programs for A374999, there is no canonical definition to state claims against.
-/

/-! ## A374999.P2494374058525948904

`A374994(n+1)-A374994(A025480(n))`
-/

namespace A374999.P2494374058525948904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (n + 1) - A374994 (A025480 n).toNat

end

end A374999.P2494374058525948904

/-! ## A374999.P17899256934590705945

`A374994(n+1)-A374994(floor(n/2^val(n+1, 2))/2)`
-/

namespace A374999.P17899256934590705945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (n + 1) - A374994 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ : ℚ) / 2)).toNat

end

end A374999.P17899256934590705945

/-! ## A374999.P6929711987788425359

`A374994(n+1)-A374994(ceil((n+1)/(xor(n, n+1)+1))-1)`
-/

namespace A374999.P6929711987788425359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (n + 1) - A374994 (⌈(n + 1 : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌉ - 1).toNat

end

end A374999.P6929711987788425359

/-! ## A374999.P12661934634248025923

`A374994(n+1)-A374994(A110963(Δ[n²])-1)`
-/

namespace A374999.P12661934634248025923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374994 (n + 1) - A374994 (A110963 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat

end

end A374999.P12661934634248025923

/-! ## A374999.P8693007390835891351

`gcd(A065205(A222813(n+4)), A374997(n+1))`
-/

namespace A374999.P8693007390835891351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065205 (A222813 (n + 4)).toNat) (A374997 (n + 1))

end

end A374999.P8693007390835891351

