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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C025

/-!
# A340900: a(n) is the number of permutations pi on n letters such that pi(i) != i (mod 3) for all i.

The programs for A340900, there is no canonical definition to state claims against.
-/

/-! ## A340900.P4258823659483726018

`A204436(n)+A204438(n)-A204440(n)`
-/

namespace A340900.P4258823659483726018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204436 n + (A204438 n - A204440 n)

end

end A340900.P4258823659483726018

/-! ## A340900.P6089335794938543469

`and(A204438(n), A222234(A204436(n)))`
-/

namespace A340900.P6089335794938543469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204438 n) (A222234 (A204436 n).toNat)

end

end A340900.P6089335794938543469

/-! ## A340900.P3412469106216774627

`and(A127351(3*n+5), A204438(n))`
-/

namespace A340900.P3412469106216774627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127351 (3 * n + 5)) (A204438 n)

end

end A340900.P3412469106216774627

/-! ## A340900.P267624774808559504

`and(A065033(A006516(n)), A204438(n))`
-/

namespace A340900.P267624774808559504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065033 (A006516 n).toNat) (A204438 n)

end

end A340900.P267624774808559504

/-!
# A340901: Additive with a(p^e) = (-p)^e.

The programs for A340901, the canonical program `A340901.P5519061447230891450` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340901 has offset 1).

The definition of A340901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340901.P5519061447230891450

`∑{p}[n+1, (-#)^val(n+1, #)]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340901

/-- `∑{p}[n+1, (-#)^val(n+1, #)]` -/
def P5519061447230891450.Spec : Prop :=
  ∀ n, P5519061447230891450.a n = A340901 (n + 1)

theorem P5519061447230891450.correct : P5519061447230891450.Spec := by
  intro n
  simp only [A340901, Nat.add_sub_cancel]

end A340901

/-! ## A340901.P8591429068121740142

`A351568(A187829(n+1))-A159077(A331737(n+1))`
-/

namespace A340901.P8591429068121740142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (A187829 (n + 1)).toNat - A159077 (A331737 (n + 1)).toNat

end

end A340901.P8591429068121740142

namespace A340901

/-- `A351568(A187829(n+1))-A159077(A331737(n+1))` -/
def P8591429068121740142.Spec : Prop :=
  ∀ n, P8591429068121740142.a n = A340901 (n + 1)

end A340901

/-!
# A340903: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * sigma_0(k) * a(n-k).

The programs for A340903, there is no canonical definition to state claims against.
-/

/-! ## A340903.P1846150390968550557

`A222254(A292932(n))`
-/

namespace A340903.P1846150390968550557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A292932 n).toNat

end

end A340903.P1846150390968550557

/-! ## A340903.P12238056911806051750

`A222253(A091346(n)+Δ[floor((n-2)/3)²]+1)`
-/

namespace A340903.P12238056911806051750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A091346 n + (f1 (n + 1) - f1 n + 1)).toNat

end

end A340903.P12238056911806051750

/-!
# A340904: a(0) = 1; a(n) = Sum_{k=1..n} binomial(n,k) * sigma_1(k) * a(n-k).

The programs for A340904, there is no canonical definition to state claims against.
-/

/-! ## A340904.P11199667158489766637

`A071991(A321739(n)+A067273(n))`
-/

namespace A340904.P11199667158489766637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071991 (A321739 n + A067273 n).toNat

end

end A340904.P11199667158489766637

/-!
# A340905: Number of ways to write n as an ordered sum of 6 squares of positive integers.

The programs for A340905, there is no canonical definition to state claims against.
-/

/-! ## A340905.P6690889293933235496

`A337165(A167499(n+5)+1)`
-/

namespace A340905.P6690889293933235496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167499 (n + 5) + 1).toNat

end

end A340905.P6690889293933235496

/-! ## A340905.P16794450944274223879

`A337165(A000096(n+5)+7)`
-/

namespace A340905.P16794450944274223879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000096 (n + 5) + 7).toNat

end

end A340905.P16794450944274223879

/-! ## A340905.P2206180175176865408

`A337165(A000217(n+6)+6)`
-/

namespace A340905.P2206180175176865408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 (n + 6) + 6).toNat

end

end A340905.P2206180175176865408

/-! ## A340905.P12904502121140683212

`A337165(A055999(n+5)-A004273(n+2))`
-/

namespace A340905.P12904502121140683212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A055999 (n + 5) - A004273 (n + 2)).toNat

end

end A340905.P12904502121140683212

/-! ## A340905.P17454541659524859838

`A337165(A034856(n+2)+A016789(n+7))`
-/

namespace A340905.P17454541659524859838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A034856 (n + 2) + A016789 (n + 7)).toNat

end

end A340905.P17454541659524859838

/-! ## A340905.P10516862237430917885

`A337165(A002378(n+6)-A055999(n+3))`
-/

namespace A340905.P10516862237430917885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A002378 (n + 6) - A055999 (n + 3)).toNat

end

end A340905.P10516862237430917885

/-! ## A340905.P10440401428316552524

`A347713(n+6)-A347712(n+6)`
-/

namespace A340905.P10440401428316552524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347713 (n + 6) - A347712 (n + 6)

end

end A340905.P10440401428316552524

/-!
# A340906: Number of ways to write n as an ordered sum of 7 squares of positive integers.

The programs for A340906, there is no canonical definition to state claims against.
-/

/-! ## A340906.P16796101824503740157

`A337165(A167499(n+6)+2)`
-/

namespace A340906.P16796101824503740157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167499 (n + 6) + 2).toNat

end

end A340906.P16796101824503740157

/-! ## A340906.P14701011820445590819

`A337165(A000096(n+6)+8)`
-/

namespace A340906.P14701011820445590819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000096 (n + 6) + 8).toNat

end

end A340906.P14701011820445590819

/-! ## A340906.P17516676577964023157

`A337165(A000217(n+7)+7)`
-/

namespace A340906.P17516676577964023157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 (n + 7) + 7).toNat

end

end A340906.P17516676577964023157

/-! ## A340906.P12144038426984877631

`A337165(A034856(n+2)+A004767(n+7))`
-/

namespace A340906.P12144038426984877631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A034856 (n + 2) + A004767 (n + 7)).toNat

end

end A340906.P12144038426984877631

/-! ## A340906.P2624636975754203652

`A337165(A034856(n+8)-A005843(n+4))`
-/

namespace A340906.P2624636975754203652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A034856 (n + 8) - A005843 (n + 4)).toNat

end

end A340906.P2624636975754203652

/-!
# A340908: Primitive numbers m without zero digits such that pod(m + pod(m)) = pod(m) where pod is the product of digits, A007954.

The programs for A340908, there is no canonical definition to state claims against.
-/

/-! ## A340908.P5237475964992777664

`A327750(A187829(n+1)+A057427(n))`
-/

namespace A340908.P5237475964992777664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327750 (A187829 (n + 1) + A057427 n).toNat

end

end A340908.P5237475964992777664

/-! ## A340908.P12466891813167262972

`record[A327750(n+1)%A257774(A116570(n))]`
-/

namespace A340908.P12466891813167262972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327750 (n + 1)) (A257774 (A116570 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340908.P12466891813167262972

/-! ## A340908.P9279304298401141109

`A327750(A000034(2^n+1)+n)`
-/

namespace A340908.P9279304298401141109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327750 (A000034 (2 ^ n + 1) + (n : ℤ)).toNat

end

end A340908.P9279304298401141109

/-! ## A340908.P10718679851982530405

`A327750(n+2)%A225270(A326740(n+1))`
-/

namespace A340908.P10718679851982530405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327750 (n + 2)) (A225270 (A326740 (n + 1)).toNat)

end

end A340908.P10718679851982530405

/-! ## A340908.P17692879423334084646

`A327750(gcd(A202369(n+1), A280498(2*(n+2))))`
-/

namespace A340908.P17692879423334084646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327750 (Int.gcd (A202369 (n + 1)) (A280498 (2 * (n + 2))))

end

end A340908.P17692879423334084646

/-!
# A340909: E.g.f.: Sum_{n>=0} x^n * exp( x*exp(n*x) ) / n!.

The programs for A340909, there is no canonical definition to state claims against.
-/

/-! ## A340909.P12088483891507308909

`record[lcm(∏{e}[n+1, 2*(-1)^#], A018505(n+1))]`
-/

namespace A340909.P12088483891507308909
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f2 n), 2 * (-1) ^ Nat.factorization (f2 n) p) (A018505 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340909.P12088483891507308909

/-! ## A340909.P11619693989789526066

`A028310(((n+1)^n-1)/(abs(1-n)+1))-((n-1)^n-1)`
-/

namespace A340909.P11619693989789526066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((((n + 1) ^ n : ℤ) - 1 : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ))).toNat - (((n : ℤ) - 1) ^ n - 1)

end

end A340909.P11619693989789526066

/-!
# A340910: Triangle of coefficients in g.f. A(x,y) which satisfies: A(x,y) = Sum_{n>=0} x^n/(1 - x*y*A(x,y)^n).

The programs for A340910, there is no canonical definition to state claims against.
-/

/-! ## A340910.P11659859165152410436

`A300287(A128592(n))`
-/

namespace A340910.P11659859165152410436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A128592 n).toNat

end

end A340910.P11659859165152410436

/-! ## A340910.P8637948837543075985

`A367315(A154867(n))`
-/

namespace A340910.P8637948837543075985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367315 (A154867 n).toNat

end

end A340910.P8637948837543075985

/-! ## A340910.P12972788510438934653

`A123756(A124976(n+1))`
-/

namespace A340910.P12972788510438934653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123756 (A124976 (n + 1)).toNat

end

end A340910.P12972788510438934653

/-! ## A340910.P852440320422121904

`A107631(A197342(n+1))`
-/

namespace A340910.P852440320422121904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107631 (A197342 (n + 1)).toNat

end

end A340910.P852440320422121904

/-! ## A340910.P7562757831029107373

`A204551(A220718(n+1))`
-/

namespace A340910.P7562757831029107373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (A220718 (n + 1)).toNat

end

end A340910.P7562757831029107373

/-!
# A340911: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n/(1 - x*A(x)^n).

The programs for A340911, there is no canonical definition to state claims against.
-/

/-! ## A340911.P9765481054452184723

`A129259(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A340911.P9765481054452184723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A129259 (a (n - 1)).toNat + a (n - 2)

end

end A340911.P9765481054452184723

/-! ## A340911.P13291118830144134937

`A005041(A018137(∑[n]))`
-/

namespace A340911.P13291118830144134937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A018137 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A340911.P13291118830144134937

/-! ## A340911.P11156874284040339503

`A174576(A092753(n+1))`
-/

namespace A340911.P11156874284040339503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174576 (A092753 (n + 1)).toNat

end

end A340911.P11156874284040339503

/-!
# A340912: Central terms of triangle A340910.

The programs for A340912, there is no canonical definition to state claims against.
-/

/-! ## A340912.P10503503030115435501

`A340910(∑[4*n])`
-/

namespace A340912.P10503503030115435501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340912.P10503503030115435501

/-! ## A340912.P11065509016659516766

`A340910(A046092(n))+char[7]`
-/

namespace A340912.P11065509016659516766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340910 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340912.P11065509016659516766

/-!
# A340913: E.g.f.: Sum_{n>=0} x^n * exp( 2*x*exp(n*x) ) / n!.

The programs for A340913, there is no canonical definition to state claims against.
-/

/-! ## A340913.P12331764985942806207

`or(1, A260741(A275707(n)))`
-/

namespace A340913.P12331764985942806207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260741 (A275707 n).toNat)

end

end A340913.P12331764985942806207

/-! ## A340913.P14675029116135712650

`or(1, A302778(A032257(2*n+1)))`
-/

namespace A340913.P14675029116135712650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A302778 (A032257 (2 * n + 1)).toNat)

end

end A340913.P14675029116135712650

/-!
# A340915: Number of ways to write n as an ordered sum of 8 squares of positive integers.

The programs for A340915, there is no canonical definition to state claims against.
-/

/-! ## A340915.P4399596084945014267

`A337165(A056126(n)+44)`
-/

namespace A340915.P4399596084945014267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A056126 n + 44).toNat

end

end A340915.P4399596084945014267

/-! ## A340915.P1379516780526200537

`A337165(A167614(n+7)+5)`
-/

namespace A340915.P1379516780526200537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167614 (n + 7) + 5).toNat

end

end A340915.P1379516780526200537

/-! ## A340915.P12646039573237606600

`A337165(A000096(n+7)+9)`
-/

namespace A340915.P12646039573237606600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000096 (n + 7) + 9).toNat

end

end A340915.P12646039573237606600

/-! ## A340915.P13605397281628785631

`A337165(A034856(n+7)+10)`
-/

namespace A340915.P13605397281628785631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A034856 (n + 7) + 10).toNat

end

end A340915.P13605397281628785631

/-! ## A340915.P7678606334175832532

`A337165(A055999(n+7)-A004273(n+3))`
-/

namespace A340915.P7678606334175832532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A055999 (n + 7) - A004273 (n + 3)).toNat

end

end A340915.P7678606334175832532

/-!
# A340917: Integers m that have at least one divisor d such that reverse(d+m/d) is a substring of m.

The programs for A340917, there is no canonical definition to state claims against.
-/

/-! ## A340917.P17997863632951733924

`A254665(n+1)+A196155(A002868(n))`
-/

namespace A340917.P17997863632951733924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254665 (n + 1) + A196155 (A002868 n).toNat

end

end A340917.P17997863632951733924

/-!
# A340921: a(n) is the number of distinct resistances that can be produced using at most n unit resistors in a planar network.

The programs for A340921, there is no canonical definition to state claims against.
-/

/-! ## A340921.P13325301142738739677

`A180414(n)-A048766(A180396(n+1))`
-/

namespace A340921.P13325301142738739677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180414 n - A048766 (A180396 (n + 1)).toNat

end

end A340921.P13325301142738739677

/-!
# A340928: Least image of A001222 applied to the prime indices of n.

The programs for A340928, there is no canonical definition to state claims against.
-/

/-! ## A340928.P6127560284568835565

`A355742(A049559(n+1)+1)`
-/

namespace A340928.P6127560284568835565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (A049559 (n + 1) + 1).toNat

end

end A340928.P6127560284568835565

/-! ## A340928.P2713175665355504450

`A355742(A063994(n+1)+1)`
-/

namespace A340928.P2713175665355504450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (A063994 (n + 1) + 1).toNat

end

end A340928.P2713175665355504450

/-! ## A340928.P2248879265021405807

`∑{e}[A055396(A182816(n+1)), #]`
-/

namespace A340928.P2248879265021405807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A182816 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A340928.P2248879265021405807

/-! ## A340928.P7402971947064060459

`∑{e}[A353483(n+1)+A055396(n+1), #]`
-/

namespace A340928.P7402971947064060459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353483 (n + 1) + A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A340928.P7402971947064060459

/-! ## A340928.P442769892910237638

`∑{e}[A353809(n+1)+A055396(n+1), #]`
-/

namespace A340928.P442769892910237638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353809 (n + 1) + A055396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A340928.P442769892910237638

/-! ## A340928.P6957177445922679102

`∑{e}[A289508(gcd(n, A000010(n+1))+1), #]`
-/

namespace A340928.P6957177445922679102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (Int.gcd (n : ℤ) (A000010 (n + 1)) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A340928.P6957177445922679102

/-! ## A340928.P6774556585023824346

`A001222(A055396(A063994(n+1)+1))`
-/

namespace A340928.P6774556585023824346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A055396 (A063994 (n + 1) + 1).toNat).toNat

end

end A340928.P6774556585023824346

/-! ## A340928.P2057124117508356264

`A001222(A289508(A049559(n+1)+1))`
-/

namespace A340928.P2057124117508356264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A289508 (A049559 (n + 1) + 1).toNat).toNat

end

end A340928.P2057124117508356264

/-! ## A340928.P16606012961730417793

`A001222(A289508(A063994(n+1)+1))`
-/

namespace A340928.P16606012961730417793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A289508 (A063994 (n + 1) + 1).toNat).toNat

end

end A340928.P16606012961730417793

/-! ## A340928.P12993559419179870168

`A001222(A289508(A187730(n+1)+1))`
-/

namespace A340928.P12993559419179870168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A289508 (A187730 (n + 1) + 1).toNat).toNat

end

end A340928.P12993559419179870168

/-!
# A340929: Heinz numbers of integer partitions of odd negative rank.

The programs for A340929, there is no canonical definition to state claims against.
-/

/-! ## A340929.P5390963961937627183

`record[A025480(A340930(n+1))]`
-/

namespace A340929.P5390963961937627183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A340930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340929.P5390963961937627183

/-! ## A340929.P15034137900977346437

`record[A246277(A340930(A263275(n)))]`
-/

namespace A340929.P15034137900977346437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A340930 (A263275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340929.P15034137900977346437

/-! ## A340929.P9097183895655863712

`record[A032742(A340930(A032742(n+1)))]`
-/

namespace A340929.P9097183895655863712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A340930 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340929.P9097183895655863712

/-! ## A340929.P10435734660245748304

`A110654(record[A038608(A340930(n+1))])`
-/

namespace A340929.P10435734660245748304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A340930 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340929.P10435734660245748304

/-! ## A340929.P2737280104201817753

`record[A038608(A340930(n+1))]/A020639(2*(n+1))`
-/

namespace A340929.P2737280104201817753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A340930 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A340929.P2737280104201817753

/-!
# A340930: Heinz numbers of integer partitions of even negative rank.

The programs for A340930, there is no canonical definition to state claims against.
-/

/-! ## A340930.P17846503884209269023

`∩[A113645(n+1), A340602(n+1)]`
-/

namespace A340930.P17846503884209269023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340930.P17846503884209269023

/-! ## A340930.P15904074210496901104

`∩[A340602(n+1), A340788(n+1)]`
-/

namespace A340930.P15904074210496901104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340930.P15904074210496901104

/-!
# A340931: Heinz numbers of integer partitions of odd numbers into an odd number of parts.

The programs for A340931, there is no canonical definition to state claims against.
-/

/-! ## A340931.P15525273033441420017

`lt[0, A353331(2*(n+1))]+1`
-/

namespace A340931.P15525273033441420017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340931.P15525273033441420017

/-! ## A340931.P9374136481234465955

`eq[1, A353331(2*n+2)]+1`
-/

namespace A340931.P9374136481234465955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340931.P9374136481234465955

/-! ## A340931.P5415113102631711040

`eq[1, A316524(n+1)%2]+1`
-/

namespace A340931.P5415113102631711040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316524 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340931.P5415113102631711040

/-! ## A340931.P4911055985753715753

`∩[2*n, A340784(n+1)]/2`
-/

namespace A340931.P4911055985753715753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340784 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A340931.P4911055985753715753

/-! ## A340931.P16647556780845228183

`eq[1, A353331(abs(1-n)+1+n)]`
-/

namespace A340931.P16647556780845228183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (|1 - (n : ℤ)| + 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340931.P16647556780845228183

/-! ## A340931.P9799095105212467813

`lt[2-sqrt(3), A353333(2*(n+1))]+1`
-/

namespace A340931.P9799095105212467813
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - Real.sqrt (3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A340931.P9799095105212467813

/-! ## A340931.P12873882658639797988

`record[A025480(A340784(n+2))]`
-/

namespace A340931.P12873882658639797988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A340784 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340931.P12873882658639797988

/-! ## A340931.P10582697778243355191

`lt[1, A353333(A008458(3*n))]`
-/

namespace A340931.P10582697778243355191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A008458 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340931.P10582697778243355191

/-! ## A340931.P8088779358088186177

`filter[A300063(n+1), A066829(#)]`
-/

namespace A340931.P8088779358088186177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A340931.P8088779358088186177

/-! ## A340931.P2798006587013954116

`filter[A322014(n+1), A066829(#)]`
-/

namespace A340931.P2798006587013954116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A340931.P2798006587013954116

/-!
# A340932: Numbers whose least prime index is odd. Heinz numbers of integer partitions whose last part is odd.

The programs for A340932, there is no canonical definition to state claims against.
-/

/-! ## A340932.P9340022993744976964

`eq[0, 1-a(A117365(n))]` with `a(0)=1, a(1)=1`
-/

namespace A340932.P9340022993744976964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  1 - f2 (A117365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340932.P9340022993744976964

/-! ## A340932.P758180481643022528

`comp[A340933(n+1)-2]+2`
-/

namespace A340932.P758180481643022528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A340932.P758180481643022528

/-! ## A340932.P7386177762803526722

`record[(n+2)%A118306(n+2)]`
-/

namespace A340932.P7386177762803526722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A118306 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340932.P7386177762803526722

/-! ## A340932.P3064761020482033085

`eq[1, A055396(n+1)%2]+1`
-/

namespace A340932.P3064761020482033085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340932.P3064761020482033085

/-! ## A340932.P2841057222825906896

`lt[n+1, A118306(n+1)]+1`
-/

namespace A340932.P2841057222825906896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340932.P2841057222825906896

/-! ## A340932.P7963658346945773310

`record[A064989(A118306(n+2))]`
-/

namespace A340932.P7963658346945773310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A118306 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340932.P7963658346945773310

/-! ## A340932.P11421262199488102815

`eq[1, A195017(A020639(n+1))]+1`
-/

namespace A340932.P11421262199488102815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340932.P11421262199488102815

/-! ## A340932.P825337830858909028

`eq[1, A353354(A020639(n+2))]+2`
-/

namespace A340932.P825337830858909028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A020639 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A340932.P825337830858909028

/-! ## A340932.P3300025237530234890

`∪[A036554(n+1), A372440(n+1)]`
-/

namespace A340932.P3300025237530234890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340932.P3300025237530234890

/-! ## A340932.P12245689245748955233

`∪[A053228(n+1), A372440(n+1)]`
-/

namespace A340932.P12245689245748955233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372440 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340932.P12245689245748955233

/-!
# A340933: Numbers whose least prime index is even. Heinz numbers of integer partitions whose last part is even.

The programs for A340933, there is no canonical definition to state claims against.
-/

/-! ## A340933.P16589988941306934344

`lt[A118306(floor(acot(n)+n)), n]`
-/

namespace A340933.P16589988941306934344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340933.P16589988941306934344

/-! ## A340933.P13510313424573012505

`eq[0, 1-a(A117365(n))]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A340933.P13510313424573012505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n f2 =>
  1 - f2 (A117365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340933.P13510313424573012505

/-! ## A340933.P9341811459192510924

`lt[A055396(n+2)%2, 1]+2`
-/

namespace A340933.P9341811459192510924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (n + 2)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A340933.P9341811459192510924

/-! ## A340933.P6888676986284465662

`lt[A118306(n+1), n+1]+1`
-/

namespace A340933.P6888676986284465662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A340933.P6888676986284465662

/-! ## A340933.P9158299639164433732

`lt[A118306(A028310(n)), n]`
-/

namespace A340933.P9158299639164433732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340933.P9158299639164433732

/-! ## A340933.P14460935245630512338

`lt[A353362(A090088(n+1)), 2]`
-/

namespace A340933.P14460935245630512338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353362 (A090088 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340933.P14460935245630512338

/-! ## A340933.P14185756264744207349

`eq[5, A000040(a(A055396(n)))]` with `a(0)=1`
-/

namespace A340933.P14185756264744207349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A055396 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340933.P14185756264744207349

/-! ## A340933.P3730824010910639570

`eq[3, A275734(a(A055396(n)))]` with `a(0)=5`
-/

namespace A340933.P3730824010910639570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A275734 (f2 (A055396 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340933.P3730824010910639570

/-! ## A340933.P7834032104971873513

`eq[2, A000010(a(A055396(n)))]` with `a(0)=11`
-/

namespace A340933.P7834032104971873513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f2 =>
  A000010 (f2 (A055396 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340933.P7834032104971873513

/-! ## A340933.P15677892479674466845

`eq[3, A000005(a(A055396(n)))]` with `a(0)=18`
-/

namespace A340933.P15677892479674466845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [18] fun n f2 =>
  A000005 (f2 (A055396 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340933.P15677892479674466845

/-!
# A340935: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n/(1 - x*A(x)^(2*n)).

The programs for A340935, there is no canonical definition to state claims against.
-/

/-! ## A340935.P17260233929768225592

`A267301(A027118(n))`
-/

namespace A340935.P17260233929768225592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267301 (A027118 n).toNat

end

end A340935.P17260233929768225592

/-! ## A340935.P3396516546158216119

`A322742(∑[A003319(n)])`
-/

namespace A340935.P3396516546158216119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340935.P3396516546158216119

/-!
# A340936: Central terms of triangle A340934.

The programs for A340936, there is no canonical definition to state claims against.
-/

/-! ## A340936.P14490080174173031369

`A340934(∑[4*n])`
-/

namespace A340936.P14490080174173031369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340936.P14490080174173031369

/-! ## A340936.P3895630626391347626

`A340934(A046092(n))+char[6]`
-/

namespace A340936.P3895630626391347626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340934 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A340936.P3895630626391347626

/-!
# A340938: E.g.f. A(x) satisfies: Sum_{n>=0} x^n * exp(x*A(x)^n) / n! = exp(x*A(x) + x/A(x)).

The programs for A340938, there is no canonical definition to state claims against.
-/

/-! ## A340938.P639850548157135051

`A028310(Δ[∏[a(n-1)+n-2]])` with `a(0)=2`
-/

namespace A340938.P639850548157135051
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A340938.P639850548157135051

/-! ## A340938.P17075942891850599643

`A010554(2^n*n!+1-2*n)`
-/

namespace A340938.P17075942891850599643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 ((2 ^ n * Nat.factorial n : ℤ) + (1 - (2 * n : ℤ))).toNat

end

end A340938.P17075942891850599643

/-!
# A340939: E.g.f. A(x) satisfies: A(x) = P(x)/Q(x) where P(x) = Sum_{n>=0} (n+1)*x^n*A(x)^(2*n)*exp(x*A(x)^n)/n! and Q(x) = Sum_{n>=0} x^n*A(x)^n*exp(x*A(x)^(n+1))/n!.

The programs for A340939, there is no canonical definition to state claims against.
-/

/-! ## A340939.P6826479221499939393

`n!*A101212(n!)`
-/

namespace A340939.P6826479221499939393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A101212 (Nat.factorial n)

end

end A340939.P6826479221499939393

/-!
# A340941: G.f. A(x) satisfies: A(x) = (A(x) - x)*(1 - x*A(x)) * Sum_{n>=0} x^n/(1 - x*A(x)^n).

The programs for A340941, there is no canonical definition to state claims against.
-/

/-! ## A340941.P6790626761418266995

`A340940(∑[n]+n)`
-/

namespace A340941.P6790626761418266995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A340941.P6790626761418266995

/-! ## A340941.P17005447950770408684

`A340940(n*(n+3)/2)^ceil(n/98)`
-/

namespace A340941.P17005447950770408684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340940 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat : ℚ) ^ (⌈(n : ℚ) / 98⌉ : ℤ)

end

end A340941.P17005447950770408684

/-! ## A340941.P4718475547315276507

`and(-1, A340940(A000096(n)))`
-/

namespace A340941.P4718475547315276507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A340940 (A000096 n).toNat)

end

end A340941.P4718475547315276507

/-! ## A340941.P5795334882467944014

`A340940(n*(n+3)/2)+A004016(3*n+2)`
-/

namespace A340941.P5795334882467944014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat + A004016 (3 * n + 2)

end

end A340941.P5795334882467944014

/-! ## A340941.P13193661030469465810

`A340940(A000096(n))+A308975(n)`
-/

namespace A340941.P13193661030469465810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A000096 n).toNat + A308975 n

end

end A340941.P13193661030469465810

/-!
# A340942: Row k = 1 of rectangular table A340940.

The programs for A340942, there is no canonical definition to state claims against.
-/

/-! ## A340942.P590442727822155787

`A340940(∑[n+2]-1)`
-/

namespace A340942.P590442727822155787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A340942.P590442727822155787

/-! ## A340942.P2878268110634448596

`and(-1, A340940(A034856(n+1)))`
-/

namespace A340942.P2878268110634448596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A340940 (A034856 (n + 1)).toNat)

end

end A340942.P2878268110634448596

/-! ## A340942.P8264668734881298621

`A025793(n)*A340940(A034856(n+1))`
-/

namespace A340942.P8264668734881298621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025793 n * A340940 (A034856 (n + 1)).toNat

end

end A340942.P8264668734881298621

/-! ## A340942.P1125998399632279315

`A172985(n)*A340940(A034856(n+1))`
-/

namespace A340942.P1125998399632279315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172985 n * A340940 (A034856 (n + 1)).toNat

end

end A340942.P1125998399632279315

/-! ## A340942.P16006250495947777394

`A340940(A034856(n+1))*A368870(n)`
-/

namespace A340942.P16006250495947777394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A034856 (n + 1)).toNat * A368870 n

end

end A340942.P16006250495947777394

/-!
# A340943: G.f. A(x) satisfies: Sum_{n>=0} x^n*A(x)^(4*n)/(1 - x*A(x)^n) = Sum_{n>=0} x^n*A(x)^n/(1 - x*A(x)^(4*n+3)).

The programs for A340943, there is no canonical definition to state claims against.
-/

/-! ## A340943.P9573987488587118937

`A340940(eq[5, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A340943.P9573987488587118937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340943.P9573987488587118937

/-! ## A340943.P9836778529491743942

`A340940(A052905(n+2))`
-/

namespace A340943.P9836778529491743942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A052905 (n + 2)).toNat

end

end A340943.P9836778529491743942

/-! ## A340943.P5398105383184808669

`A340940(A056115(n)+10)`
-/

namespace A340943.P5398105383184808669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340940 (A056115 n + 10).toNat

end

end A340943.P5398105383184808669

/-!
# A340944: List of X-coordinates of point moving along one of the arms of a counterclockwise square spiral with four arms; A340945 gives Y-coordinates.

The programs for A340944, the canonical program `A340944.P1226746754582128393` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340944 has offset 0).

The definition of A340944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340944.P1226746754582128393

`∑[A056594(A000194(abs(1-n)))]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340944

/-- `∑[A056594(A000194(abs(1-n)))]` -/
def P1226746754582128393.Spec : Prop :=
  ∀ n, P1226746754582128393.a n = A340944 n

theorem P1226746754582128393.correct : P1226746754582128393.Spec := by
  intro n
  simp only [A340944]

end A340944

/-! ## A340944.P17586670791910204295

`∑[A056594(A123578(A123108(n)))]`
-/

namespace A340944.P17586670791910204295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A123578 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340944.P17586670791910204295

namespace A340944

/-- `∑[A056594(A123578(A123108(n)))]` -/
def P17586670791910204295.Spec : Prop :=
  ∀ n, P17586670791910204295.a n = A340944 n

end A340944

/-!
# A340946: Number of ways to write n as an ordered sum of 9 squares of positive integers.

The programs for A340946, there is no canonical definition to state claims against.
-/

/-! ## A340946.P9260699447399957436

`A337165(A000096(n+8)+10)`
-/

namespace A340946.P9260699447399957436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000096 (n + 8) + 10).toNat

end

end A340946.P9260699447399957436

/-! ## A340946.P12986020303376518854

`A337165(A000217(n+9)+9)`
-/

namespace A340946.P12986020303376518854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 (n + 9) + 9).toNat

end

end A340946.P12986020303376518854

/-! ## A340946.P6108036790725821520

`A337165(A161680(n+11)-(n+1))`
-/

namespace A340946.P6108036790725821520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A161680 (n + 11) - (n + 1 : ℤ)).toNat

end

end A340946.P6108036790725821520

/-! ## A340946.P3945569964027131381

`A337165(A046691(n)+A017053(n+7))`
-/

namespace A340946.P3945569964027131381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A046691 n + A017053 (n + 7)).toNat

end

end A340946.P3945569964027131381

/-! ## A340946.P3582576638407441410

`A337165(A055999(n+8)-A020715(2*n))`
-/

namespace A340946.P3582576638407441410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A055999 (n + 8) - A020715 (2 * n)).toNat

end

end A340946.P3582576638407441410

/-! ## A340946.P896109699340202117

`A337165(A167499(n+6)+A062545(n+9))`
-/

namespace A340946.P896109699340202117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167499 (n + 6) + A062545 (n + 9)).toNat

end

end A340946.P896109699340202117

/-! ## A340946.P13516424727942359613

`A337165(A055999(n+8)-(A020715(n)+n))`
-/

namespace A340946.P13516424727942359613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A055999 (n + 8) - (A020715 n + (n : ℤ))).toNat

end

end A340946.P13516424727942359613

/-!
# A340947: Number of ways to write n as an ordered sum of 10 squares of positive integers.

The programs for A340947, there is no canonical definition to state claims against.
-/

/-! ## A340947.P17413406327227729579

`A337165(A167614(n+9)+7)`
-/

namespace A340947.P17413406327227729579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A167614 (n + 9) + 7).toNat

end

end A340947.P17413406327227729579

/-! ## A340947.P11057365825484104425

`A337165(A000124(n+10)+9)`
-/

namespace A340947.P11057365825484104425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000124 (n + 10) + 9).toNat

end

end A340947.P11057365825484104425

/-! ## A340947.P12969064968563842152

`A337165(A000096(n+9)+11)`
-/

namespace A340947.P12969064968563842152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000096 (n + 9) + 11).toNat

end

end A340947.P12969064968563842152

/-! ## A340947.P8056404227846492314

`A337165(A000217(n+10)+10)`
-/

namespace A340947.P8056404227846492314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A000217 (n + 10) + 10).toNat

end

end A340947.P8056404227846492314

/-! ## A340947.P7716335160547980734

`A337165(A055999(n+9)-(2*n+7))`
-/

namespace A340947.P7716335160547980734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (A055999 (n + 9) - (2 * n + 7 : ℤ)).toNat

end

end A340947.P7716335160547980734

/-!
# A340948: The number of even prime gaps g, satisfying g == 0 (mod 6), out of the first 2^n even prime gaps.

The programs for A340948, there is no canonical definition to state claims against.
-/

/-! ## A340948.P7678123856116939463

`2^n-A341531(n)-A341532(n)`
-/

namespace A340948.P7678123856116939463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A341531 n - A341532 n

end

end A340948.P7678123856116939463

/-! ## A340948.P13896064061306298581

`A345332(n)+A345333(n)+A345334(n+1)`
-/

namespace A340948.P13896064061306298581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345332 n + A345333 n + A345334 (n + 1)

end

end A340948.P13896064061306298581

/-! ## A340948.P14318324045077953838

`A000079(n)%(A341532(n)+A341531(n))`
-/

namespace A340948.P14318324045077953838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A341532 n + A341531 n)

end

end A340948.P14318324045077953838

/-! ## A340948.P154935549458836345

`A269850(2^n+1)`
-/

namespace A340948.P154935549458836345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269850 (2 ^ n + 1)

end

end A340948.P154935549458836345

/-! ## A340948.P743499039244203815

`2^n-A269849(2^n+1)+1`
-/

namespace A340948.P743499039244203815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A269849 (2 ^ n + 1) + 1

end

end A340948.P743499039244203815

/-!
# A340949: Number of ways to write n as an ordered sum of 4 nonzero triangular numbers.

The programs for A340949, there is no canonical definition to state claims against.
-/

/-! ## A340949.P4310626325076777741

`A347732(n+4)-A347731(n+4)`
-/

namespace A340949.P4310626325076777741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347732 (n + 4) - A347731 (n + 4)

end

end A340949.P4310626325076777741

/-!
# A340950: Number of ways to write n as an ordered sum of 5 nonzero triangular numbers.

The programs for A340950, there is no canonical definition to state claims against.
-/

/-! ## A340950.P15762277782628437386

`A347733(n+5)-A347732(n+5)`
-/

namespace A340950.P15762277782628437386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347733 (n + 5) - A347732 (n + 5)

end

end A340950.P15762277782628437386

/-!
# A340951: Number of ways to write n as an ordered sum of 6 nonzero triangular numbers.

The programs for A340951, there is no canonical definition to state claims against.
-/

/-! ## A340951.P17779881991633004415

`A347734(n+6)-A347733(n+6)`
-/

namespace A340951.P17779881991633004415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347734 (n + 6) - A347733 (n + 6)

end

end A340951.P17779881991633004415

/-!
# A340952: Number of ways to write n as an ordered sum of 7 nonzero triangular numbers.

The programs for A340952, there is no canonical definition to state claims against.
-/

/-! ## A340952.P5963025557424833565

`A340906(lt[A110615(2*n+3), A123125(3*n+4)])`
-/

namespace A340952.P5963025557424833565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110615 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123125 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340906 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340952.P5963025557424833565

/-!
# A340953: Number of ways to write n as an ordered sum of 8 nonzero triangular numbers.

The programs for A340953, there is no canonical definition to state claims against.
-/

/-! ## A340953.P17437953383490321556

`A340915(lt[A007931(n+1), A340934(3*n)])`
-/

namespace A340953.P17437953383490321556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340934 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340953.P17437953383490321556

/-! ## A340953.P12273299069573891872

`A340915(lt[A061240(n+1), A340934(3*n)])`
-/

namespace A340953.P12273299069573891872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340934 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340953.P12273299069573891872

/-! ## A340953.P742110570284608020

`A340915(lt[A336458(n+1), A340934(3*n)])`
-/

namespace A340953.P742110570284608020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340934 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340953.P742110570284608020

/-! ## A340953.P5341515185599444062

`A340915(lt[A340896(3*n+4), A340910(3*n)])`
-/

namespace A340953.P5341515185599444062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340896 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340910 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340953.P5341515185599444062

/-! ## A340953.P2713743655669439250

`A340915(lt[A340932(3*n+4), A340910(3*n)])`
-/

namespace A340953.P2713743655669439250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340910 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340915 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340953.P2713743655669439250

/-!
# A340955: Number of ways to write n as an ordered sum of 10 nonzero triangular numbers.

The programs for A340955, there is no canonical definition to state claims against.
-/

/-! ## A340955.P13171618994869689016

`A340947(record[A347710(n)-A337165(n)])`
-/

namespace A340955.P13171618994869689016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347710 n - A337165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340947 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 10)

end

end A340955.P13171618994869689016

/-! ## A340955.P12925145155467636869

`A340947(eq[A000196(n), A277194(n)])`
-/

namespace A340955.P12925145155467636869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340947 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 10)

end

end A340955.P12925145155467636869

/-! ## A340955.P12334729303440266619

`C(A063475(n+3), A180094(A030191(n)))`
-/

namespace A340955.P12334729303440266619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A063475 (n + 3)).toNat (A180094 (A030191 n).toNat).toNat

end

end A340955.P12334729303440266619

/-!
# A340956: Integers n such that s(n^2) = s(n)*(s(n)+1)/2, where s(n) is the sum of binary digits of n (A000120).

The programs for A340956, the canonical program `A340956.P6232183328931227741` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340956 has offset 1).

The definition of A340956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 426 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340956.P6232183328931227741

`eq[A000217(A000120(n)), A159918(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340956

/-- `eq[A000217(A000120(n)), A159918(n)]` -/
def P6232183328931227741.Spec : Prop :=
  ∀ n, (P6232183328931227741.a n : ℤ) = A340956 (n + 1)

theorem P6232183328931227741.correct : P6232183328931227741.Spec := by
  intro n
  simp only [A340956, Nat.add_sub_cancel]

end A340956

/-! ## A340956.P944808397246843177

`eq[C(A000120(2*n+1), 2), A000120(n²)]`
-/

namespace A340956.P944808397246843177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000120 (2 * n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340956.P944808397246843177

namespace A340956

/-- `eq[C(A000120(2*n+1), 2), A000120(n²)]` -/
def P944808397246843177.Spec : Prop :=
  ∀ n, (P944808397246843177.a n : ℤ) = A340956 (n + 1)

end A340956

/-! ## A340956.P7172915889898459112

`eq[A000120(n), A277822(A000120(n²))]`
-/

namespace A340956.P7172915889898459112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (A000120 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340956.P7172915889898459112

namespace A340956

/-- `eq[A000120(n), A277822(A000120(n²))]` -/
def P7172915889898459112.Spec : Prop :=
  ∀ n, (P7172915889898459112.a n : ℤ) = A340956 (n + 1)

end A340956

/-! ## A340956.P15127399196335198806

`A390676(n+1)%A348602(n+1)/2`
-/

namespace A340956.P15127399196335198806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A390676 (n + 1)) (A348602 (n + 1)) : ℚ) / 2

end

end A340956.P15127399196335198806

namespace A340956

/-- `A390676(n+1)%A348602(n+1)/2` -/
def P15127399196335198806.Spec : Prop :=
  ∀ n, P15127399196335198806.a n = (A340956 (n + 1) : ℚ)

end A340956

/-! ## A340956.P14818864547294254279

`A390676(n+1)/A057120(A062513(n+1))`
-/

namespace A340956.P14818864547294254279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390676 (n + 1) : ℚ) / (A057120 (A062513 (n + 1)).toNat : ℚ)

end

end A340956.P14818864547294254279

namespace A340956

/-- `A390676(n+1)/A057120(A062513(n+1))` -/
def P14818864547294254279.Spec : Prop :=
  ∀ n, P14818864547294254279.a n = (A340956 (n + 1) : ℚ)

end A340956

/-!
# A340958: Concatenated layouts of page numbers as in a printed bound booklet with 2 pages per side with 0's representing blanks.

The programs for A340958, there is no canonical definition to state claims against.
-/

/-! ## A340958.P7933284378532672569

`and(n, A083894(A171586(n+1)))`
-/

namespace A340958.P7933284378532672569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A083894 (A171586 (n + 1)).toNat)

end

end A340958.P7933284378532672569

/-!
# A340959: Table read by antidiagonals of the smallest prime >= n^k, n >= 1 and k >= 0.

The programs for A340959, there is no canonical definition to state claims against.
-/

/-! ## A340959.P7910814254582936564

`A151800(A009999(n)-1)`
-/

namespace A340959.P7910814254582936564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A009999 n - 1).toNat

end

end A340959.P7910814254582936564

/-! ## A340959.P18226052959804374287

`A151800(A057428(n)+A009999(n))`
-/

namespace A340959.P18226052959804374287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A057428 n + A009999 n).toNat

end

end A340959.P18226052959804374287

/-! ## A340959.P3488747090452468737

`A151800(A153881(n+2)+A009999(n))`
-/

namespace A340959.P3488747090452468737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A153881 (n + 2) + A009999 n).toNat

end

end A340959.P3488747090452468737

/-! ## A340959.P17047533717764563591

`A151800(A193739(n)^A002262(n)-1)`
-/

namespace A340959.P17047533717764563591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A193739 n : ℚ) ^ (A002262 n : ℤ) - 1)).toNat

end

end A340959.P17047533717764563591

/-! ## A340959.P10792774422506250697

`A151800(A004736(n+1)^A002262(n)-1)`
-/

namespace A340959.P10792774422506250697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A002262 n : ℤ) - 1)).toNat

end

end A340959.P10792774422506250697

/-! ## A340959.P13329085516250731349

`A151800(A057428(n)+A004736(n+1)^A002262(n))`
-/

namespace A340959.P13329085516250731349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (SequenceMachineLib.roundAway ((A057428 n : ℚ) + (A004736 (n + 1) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A340959.P13329085516250731349

/-! ## A340959.P7697952518149332322

`A007918(A009999(n))`
-/

namespace A340959.P7697952518149332322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A009999 n).toNat

end

end A340959.P7697952518149332322

/-! ## A340959.P12470161928478330023

`A007918(A009998(A061579(n)))`
-/

namespace A340959.P12470161928478330023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A009998 (A061579 n).toNat).toNat

end

end A340959.P12470161928478330023

/-! ## A340959.P12338027631052607126

`A007918(A095884(A066182(n+1)))`
-/

namespace A340959.P12338027631052607126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A095884 (A066182 (n + 1)).toNat).toNat

end

end A340959.P12338027631052607126

/-! ## A340959.P15664122173737015371

`A007918(A193739(n)^A002262(n))`
-/

namespace A340959.P15664122173737015371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((A193739 n : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A340959.P15664122173737015371

/-!
# A340962: Number of ways to write n as an ordered sum of 6 primes.

The programs for A340962, there is no canonical definition to state claims against.
-/

/-! ## A340962.P14413970688218906265

`A121968(n+2)+A008683(A121957(n+2))`
-/

namespace A340962.P14413970688218906265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121968 (n + 2) + A008683 (A121957 (n + 2)).toNat

end

end A340962.P14413970688218906265

/-! ## A340962.P16540253607118064940

`∑[∑[A000120(A064058(n))]]`
-/

namespace A340962.P16540253607118064940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A064058 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340962.P16540253607118064940

/-!
# A340964: Number of ways to write n as an ordered sum of 8 primes.

The programs for A340964, there is no canonical definition to state claims against.
-/

/-! ## A340964.P6053144471111870564

`A342251(n+8)+A114611(A000108(n))`
-/

namespace A340964.P6053144471111870564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342251 (n + 8) + A114611 (A000108 n).toNat

end

end A340964.P6053144471111870564

/-! ## A340964.P15078921491661686177

`A334267(A008277(n+1)+A000326(n+1))`
-/

namespace A340964.P15078921491661686177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A008277 (n + 1) + A000326 (n + 1)).toNat

end

end A340964.P15078921491661686177

/-!
# A340965: Number of ways to write n as an ordered sum of 9 primes.

The programs for A340965, there is no canonical definition to state claims against.
-/

/-! ## A340965.P9863934002946298887

`A226253(n)+A185274((1-n)²)`
-/

namespace A340965.P9863934002946298887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226253 n + A185274 ((1 - (n : ℤ)) ^ 2).toNat

end

end A340965.P9863934002946298887

/-! ## A340965.P7153464094167551313

`A226253(n)+A072737(A094037(n))`
-/

namespace A340965.P7153464094167551313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226253 n + A072737 (A094037 n).toNat

end

end A340965.P7153464094167551313

/-!
# A340966: Number of ways to write n as an ordered sum of 10 primes.

The programs for A340966, there is no canonical definition to state claims against.
-/

/-! ## A340966.P13482252275260328527

`A241313(A001205(n))+A226254(n)`
-/

namespace A340966.P13482252275260328527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241313 (A001205 n).toNat + A226254 n

end

end A340966.P13482252275260328527

/-! ## A340966.P13043393060104201906

`or(A036860(A052948(n)), A226254(n))`
-/

namespace A340966.P13043393060104201906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036860 (A052948 n).toNat) (A226254 n)

end

end A340966.P13043393060104201906

/-!
# A340967: a(n) is the number of iterations of the map x -> n mod sopfr(x) starting with n to reach 0 or 1, where sopfr = A001414.

The programs for A340967, there is no canonical definition to state claims against.
-/

/-! ## A340967.P7951529765129060169

`gcd(A035026(n+1), A222759(A000211(n)))`
-/

namespace A340967.P7951529765129060169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035026 (n + 1)) (A222759 (A000211 n).toNat)

end

end A340967.P7951529765129060169

/-! ## A340967.P17241155909443705056

`A305079(A001611(A001065(n+1)))`
-/

namespace A340967.P17241155909443705056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A001611 (A001065 (n + 1)).toNat).toNat

end

end A340967.P17241155909443705056

/-! ## A340967.P17943433366536906080

`gcd(A046067(A208933(n)), A212058(n))`
-/

namespace A340967.P17943433366536906080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046067 (A208933 n).toNat) (A212058 n)

end

end A340967.P17943433366536906080

/-! ## A340967.P4055196706670754673

`A130654(A017901(3*n+1)+A002522(n+1))`
-/

namespace A340967.P4055196706670754673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130654 (A017901 (3 * n + 1) + A002522 (n + 1)).toNat

end

end A340967.P4055196706670754673

/-!
# A340968: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} k^j*binomial(n,j)*Catalan(j).

The programs for A340968, there is no canonical definition to state claims against.
-/

/-! ## A340968.P3292408199231925074

`A055570(A112338(n))`
-/

namespace A340968.P3292408199231925074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A112338 n).toNat

end

end A340968.P3292408199231925074

/-! ## A340968.P1967385286693240414

`A102450(A128198(n))`
-/

namespace A340968.P1967385286693240414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A128198 n).toNat

end

end A340968.P1967385286693240414

/-! ## A340968.P4552397227620327142

`A102450(A320031(n))`
-/

namespace A340968.P4552397227620327142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A320031 n).toNat

end

end A340968.P4552397227620327142

/-! ## A340968.P170390848051368895

`A055571(A112338(n)+1)`
-/

namespace A340968.P170390848051368895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A112338 n + 1).toNat

end

end A340968.P170390848051368895

/-! ## A340968.P2869401857783994091

`A196169(A255918(n+1))`
-/

namespace A340968.P2869401857783994091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196169 (A255918 (n + 1)).toNat

end

end A340968.P2869401857783994091

/-!
# A340970: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} k^j * binomial(n,j) * binomial(2*j,j).

The programs for A340970, there is no canonical definition to state claims against.
-/

/-! ## A340970.P11015319366004656039

`A261017(A393620(n+1))`
-/

namespace A340970.P11015319366004656039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261017 (A393620 (n + 1)).toNat

end

end A340970.P11015319366004656039

/-! ## A340970.P15169675046550231972

`A083075(n)-A225099(A000217(n))`
-/

namespace A340970.P15169675046550231972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083075 n - A225099 (A000217 n).toNat

end

end A340970.P15169675046550231972

/-! ## A340970.P14222435948709955676

`A030101(A083075(n)*A244421(n))`
-/

namespace A340970.P14222435948709955676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A083075 n * A244421 n).toNat

end

end A340970.P14222435948709955676

/-! ## A340970.P16833326905634722283

`gcd(A077374(A144303(n)), A213380(n))`
-/

namespace A340970.P16833326905634722283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A077374 (A144303 n).toNat) (A213380 n)

end

end A340970.P16833326905634722283

/-! ## A340970.P6383758542416653012

`A122872(lcm(A086645(n), A123162(n)))`
-/

namespace A340970.P6383758542416653012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122872 (Int.lcm (A086645 n) (A123162 n))

end

end A340970.P6383758542416653012

/-!
# A340971: a(n) = Sum_{k=0..n} n^k * binomial(n,k) * binomial(2*k,k).

The programs for A340971, there is no canonical definition to state claims against.
-/

/-! ## A340971.P2387498920307848028

`A340970(∑[4*n])`
-/

namespace A340971.P2387498920307848028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340970 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340971.P2387498920307848028

/-! ## A340971.P9034640246904151228

`record[A340970(∑[A071045(n)])]`
-/

namespace A340971.P9034640246904151228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340970 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340971.P9034640246904151228

/-! ## A340971.P6163874895253366741

`record[A340970(n*A028242(n))]`
-/

namespace A340971.P6163874895253366741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340970 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340971.P6163874895253366741

/-! ## A340971.P2480328330425018710

`record[gcd(A008482(n), A340970(n))]`
-/

namespace A340971.P2480328330425018710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A340970 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340971.P2480328330425018710

/-! ## A340971.P18029257209761843626

`record[root(A340970(n), A280172(n+1))]`
-/

namespace A340971.P18029257209761843626
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340970 n : ℝ) ^ (1 / (A280172 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340971.P18029257209761843626

/-!
# A340973: Generating function Sum_{n >= 0} a(n)*x^n = 1/sqrt((1-x)*(1-13*x)).

The programs for A340973, there is no canonical definition to state claims against.
-/

/-! ## A340973.P15480563750011083164

`∑[A085364(n)]`
-/

namespace A340973.P15480563750011083164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340973.P15480563750011083164

/-! ## A340973.P4787395765781474825

`A085364(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A340973.P4787395765781474825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085364 n + a (A023443 n).toNat

end

end A340973.P4787395765781474825

/-! ## A340973.P4286641104802206023

`A085364(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A340973.P4286641104802206023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085364 n + a (A028310 n - 1).toNat

end

end A340973.P4286641104802206023

/-! ## A340973.P8540530459320191814

`A085364(n)+a(A123108(2*n)-1)` with `a(0)=1`
-/

namespace A340973.P8540530459320191814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085364 n + a (A123108 (2 * n) - 1).toNat

end

end A340973.P8540530459320191814

/-! ## A340973.P6353572978822718551

`A340970(∑[n+3]+n+3)`
-/

namespace A340973.P6353572978822718551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340970 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A340973.P6353572978822718551

/-!
# A340977: Number of ways to write n as an ordered sum of 4 positive cubes.

The programs for A340977, there is no canonical definition to state claims against.
-/

/-! ## A340977.P11419162164117860813

`A347716(n+4)-A347715(n+4)`
-/

namespace A340977.P11419162164117860813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347716 (n + 4) - A347715 (n + 4)

end

end A340977.P11419162164117860813

/-! ## A340977.P732707508552043950

`A173678(n+4)%A126342(A340979(n+6))`
-/

namespace A340977.P732707508552043950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173678 (n + 4)) (A126342 (A340979 (n + 6)).toNat)

end

end A340977.P732707508552043950

/-! ## A340977.P870174054115313790

`and(A173682(A295847(n+1)), A340979(n+6))`
-/

namespace A340977.P870174054115313790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A173682 (A295847 (n + 1)).toNat) (A340979 (n + 6))

end

end A340977.P870174054115313790

/-! ## A340977.P6566383588803603603

`A374684(A340982(n+9))`
-/

namespace A340977.P6566383588803603603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A340982 (n + 9)).toNat

end

end A340977.P6566383588803603603

/-! ## A340977.P10650341373403004533

`and(A124500(n), A340979(n+6))`
-/

namespace A340977.P10650341373403004533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124500 n) (A340979 (n + 6))

end

end A340977.P10650341373403004533

/-!
# A340978: Number of ways to write n as an ordered sum of 5 positive cubes.

The programs for A340978, there is no canonical definition to state claims against.
-/

/-! ## A340978.P8584779810772790047

`A034968(A064150(2*n+1)*A340982(n+9))`
-/

namespace A340978.P8584779810772790047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A064150 (2 * n + 1) * A340982 (n + 9)).toNat

end

end A340978.P8584779810772790047

/-!
# A340980: Number of ways to write n as an ordered sum of 7 positive cubes.

The programs for A340980, there is no canonical definition to state claims against.
-/

/-! ## A340980.P10533196079736938192

`A292984(n+1)%A109010(n)²`
-/

namespace A340980.P10533196079736938192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292984 (n + 1)) (A109010 n ^ 2)

end

end A340980.P10533196079736938192

/-! ## A340980.P9462310300170319791

`C(A109010(A000578(n)), A283444(n))`
-/

namespace A340980.P9462310300170319791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109010 (A000578 n).toNat).toNat (A283444 n).toNat

end

end A340980.P9462310300170319791

/-! ## A340980.P6979301432266252354

`C(A341438(A341448(n+1)), A283444(n))`
-/

namespace A340980.P6979301432266252354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341438 (A341448 (n + 1)).toNat).toNat (A283444 n).toNat

end

end A340980.P6979301432266252354

/-!
# A340981: Number of ways to write n as an ordered sum of 8 positive cubes.

The programs for A340981, there is no canonical definition to state claims against.
-/

/-! ## A340981.P6799248417993617642

`C(A109010(A000578(n))+1, A283444(n))`
-/

namespace A340981.P6799248417993617642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109010 (A000578 n).toNat + 1).toNat (A283444 n).toNat

end

end A340981.P6799248417993617642

/-! ## A340981.P7501203860407186086

`C(A341438(A341448(n+1))+1, A283444(n))`
-/

namespace A340981.P7501203860407186086
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341438 (A341448 (n + 1)).toNat + 1).toNat (A283444 n).toNat

end

end A340981.P7501203860407186086

/-! ## A340981.P15603724549760016688

`A291692(lt[A291692(n), A195892(2*(n+2))])`
-/

namespace A340981.P15603724549760016688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195892 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291692 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340981.P15603724549760016688

/-!
# A340982: Number of ways to write n as an ordered sum of 9 positive cubes.

The programs for A340982, there is no canonical definition to state claims against.
-/

/-! ## A340982.P4038671989980430070

`C(A109010(A000578(n))+2, A283444(n))`
-/

namespace A340982.P4038671989980430070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A109010 (A000578 n).toNat + 2).toNat (A283444 n).toNat

end

end A340982.P4038671989980430070

/-! ## A340982.P10365322293875934909

`C(A341438(A341448(n+1))+2, A283444(n))`
-/

namespace A340982.P10365322293875934909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A341438 (A341448 (n + 1)).toNat + 2).toNat (A283444 n).toNat

end

end A340982.P10365322293875934909

/-! ## A340982.P1285902111313781082

`C((n-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%(n+1), A327149(n+4))²`
-/

namespace A340982.P1285902111313781082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (n + 1 : ℤ)).toNat (A327149 (n + 4)).toNat ^ 2

end

end A340982.P1285902111313781082

/-! ## A340982.P2271637532155607267

`C(A126342(n), A283444(n))²`
-/

namespace A340982.P2271637532155607267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126342 n).toNat (A283444 n).toNat ^ 2

end

end A340982.P2271637532155607267

/-!
# A340983: Number of ways to write n as an ordered sum of 10 positive cubes.

The programs for A340983, there is no canonical definition to state claims against.
-/

/-! ## A340983.P1015640322958437117

`C(A340978(n+5), A329312(3*n+4))`
-/

namespace A340983.P1015640322958437117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340978 (n + 5)).toNat (A329312 (3 * n + 4)).toNat

end

end A340983.P1015640322958437117

/-! ## A340983.P8596269294398373362

`C(A340978(n+5), A001222(A242203(n+1)))`
-/

namespace A340983.P8596269294398373362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340978 (n + 5)).toNat (A001222 (A242203 (n + 1)).toNat).toNat

end

end A340983.P8596269294398373362

/-! ## A340983.P9732553199093298810

`C(A340978(n+5), A008480(A094373(n)))`
-/

namespace A340983.P9732553199093298810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340978 (n + 5)).toNat (A008480 (A094373 n).toNat).toNat

end

end A340983.P9732553199093298810

/-! ## A340983.P18094761779437439854

`C(A340978(n+5), A003643(A226253(n)))`
-/

namespace A340983.P18094761779437439854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340978 (n + 5)).toNat (A003643 (A226253 n).toNat).toNat

end

end A340983.P18094761779437439854

/-! ## A340983.P15554358877599849472

`C(A340978(n+5), A333765(A023360(n)))`
-/

namespace A340983.P15554358877599849472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340978 (n + 5)).toNat (A333765 (A023360 n).toNat).toNat

end

end A340983.P15554358877599849472

/-!
# A340986: Square array read by descending antidiagonals. T(n,k) is the number of ways to separate the columns of an ordered pair of n-permutations (that have been written as a 2 X n array, one atop the other) into k cells so that no cell has a column rise. For n >= 0, k >= 0.

The programs for A340986, there is no canonical definition to state claims against.
-/

/-! ## A340986.P18137260151849166599

`A072088(A349971(n+1))`
-/

namespace A340986.P18137260151849166599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A349971 (n + 1)).toNat

end

end A340986.P18137260151849166599

/-! ## A340986.P577996034490024457

`A306100(n)+A127708(A102480(n))`
-/

namespace A340986.P577996034490024457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306100 n + A127708 (A102480 n).toNat

end

end A340986.P577996034490024457

/-! ## A340986.P13539619167146952033

`A374637(A102480(n))+A320079(n)`
-/

namespace A340986.P13539619167146952033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374637 (A102480 n).toNat + A320079 n

end

end A340986.P13539619167146952033

/-! ## A340986.P6225255103535365855

`A072088(∑{d}[A320079(n), A342515(#)])`
-/

namespace A340986.P6225255103535365855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (∑ d ∈ Nat.divisors (f1 n).natAbs, A342515 d).toNat

end

end A340986.P6225255103535365855

/-! ## A340986.P8662672136491406736

`A057889(A340798(n))%A340800(2*n+3)`
-/

namespace A340986.P8662672136491406736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057889 (A340798 n).toNat) (A340800 (2 * n + 3))

end

end A340986.P8662672136491406736

/-!
# A340987: Number of colored integer partitions of 2n such that all colors from an n-set are used.

The programs for A340987, there is no canonical definition to state claims against.
-/

/-! ## A340987.P6775977414199271015

`A060642(A004277(n²))`
-/

namespace A340987.P6775977414199271015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A004277 (n ^ 2)).toNat

end

end A340987.P6775977414199271015

/-! ## A340987.P11297322341015557087

`A060642(A004273(n²)+1)`
-/

namespace A340987.P11297322341015557087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A004273 (n ^ 2) + 1).toNat

end

end A340987.P11297322341015557087

/-! ## A340987.P8170917779720911585

`A060642(A028310(2*n²))`
-/

namespace A340987.P8170917779720911585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A028310 (2 * n ^ 2)).toNat

end

end A340987.P8170917779720911585

/-! ## A340987.P6100042153708337739

`A060642(n²+A028310(n²))`
-/

namespace A340987.P6100042153708337739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 ((n ^ 2 : ℤ) + A028310 (n ^ 2)).toNat

end

end A340987.P6100042153708337739

/-! ## A340987.P13226265265235884092

`A060642(A179865(2*n+1)-n)`
-/

namespace A340987.P13226265265235884092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A179865 (2 * n + 1) - (n : ℤ)).toNat

end

end A340987.P13226265265235884092

/-! ## A340987.P7692138362202194676

`A060642(A247375(A004273(n)+1))`
-/

namespace A340987.P7692138362202194676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A247375 (A004273 n + 1).toNat).toNat

end

end A340987.P7692138362202194676

/-! ## A340987.P17722022999506173409

`A060642(A058331(n)-A057427(n))`
-/

namespace A340987.P17722022999506173409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A058331 n - A057427 n).toNat

end

end A340987.P17722022999506173409

/-! ## A340987.P477827442536937223

`A060642(A004277(n)*A028310(n))`
-/

namespace A340987.P477827442536937223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A004277 n * A028310 n).toNat

end

end A340987.P477827442536937223

/-! ## A340987.P852301662840673656

`A060642(xor(A057427(n), A058331(n)))`
-/

namespace A340987.P852301662840673656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (Int.xor (A057427 n) (A058331 n)).toNat

end

end A340987.P852301662840673656

/-! ## A340987.P8154418517391338611

`A060642(A060642(A034856(n+1))-n)`
-/

namespace A340987.P8154418517391338611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060642 (A060642 (A034856 (n + 1)).toNat - (n : ℤ)).toNat

end

end A340987.P8154418517391338611

/-!
# A340988: Number of partitions of n into 6 distinct nonzero squares.

The programs for A340988, there is no canonical definition to state claims against.
-/

/-! ## A340988.P18232489094236387749

`val(A131647(n+1), A320234(A249822(3*n+5)))`
-/

namespace A340988.P18232489094236387749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131647 (n + 1)).toNat (A320234 (A249822 (3 * n + 5)).toNat).toNat

end

end A340988.P18232489094236387749

/-! ## A340988.P16696960512626750541

`A023925((A023925(n+1)^(n+1))^A023925(n))`
-/

namespace A340988.P16696960512626750541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023925 (SequenceMachineLib.roundAway ((A023925 (n + 1) ^ (n + 1) : ℚ) ^ (A023925 n : ℤ))).toNat

end

end A340988.P16696960512626750541

/-! ## A340988.P10488809466359836174

`1-C(A185284(n), A023925(n))`
-/

namespace A340988.P10488809466359836174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.choose (A185284 n).toNat (A023925 n).toNat : ℤ)

end

end A340988.P10488809466359836174

/-! ## A340988.P6876287083165092543

`A373137(A313005(3*n)*A313007(n))`
-/

namespace A340988.P6876287083165092543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373137 (A313005 (3 * n) * A313007 n).toNat

end

end A340988.P6876287083165092543

/-! ## A340988.P13464433957195274749

`and(A010051(A242994(n+1)), A081492(n+1))`
-/

namespace A340988.P13464433957195274749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (A242994 (n + 1)).toNat) (A081492 (n + 1))

end

end A340988.P13464433957195274749

/-!
# A340990: a(n) is the (2n)-th term of the n-fold self-convolution of the primes.

The programs for A340990, there is no canonical definition to state claims against.
-/

/-! ## A340990.P5301203508774358418

`A340991(∑[4*n])`
-/

namespace A340990.P5301203508774358418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340990.P5301203508774358418

/-! ## A340990.P15557958273666230342

`or(1, A340991(A046092(n)))`
-/

namespace A340990.P15557958273666230342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340991 (A046092 n).toNat)

end

end A340990.P15557958273666230342

/-! ## A340990.P17827884118685830140

`record[A340991(∑[A186731(n)])]`
-/

namespace A340990.P17827884118685830140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340990.P17827884118685830140

/-! ## A340990.P16307844205707216629

`record[A340991(n*A008619(n))]`
-/

namespace A340990.P16307844205707216629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340990.P16307844205707216629

/-! ## A340990.P4375991621831860028

`record[A340991(n*A028242(n))]`
-/

namespace A340990.P4375991621831860028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 ((n : ℤ) * A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340990.P4375991621831860028

/-! ## A340990.P1619028175766104264

`record[A340991(n*record[A186731(n)])]`
-/

namespace A340990.P1619028175766104264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340991 ((n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340990.P1619028175766104264

/-! ## A340990.P15345346195318639225

`record[gcd(A008482(n), A340991(n))]`
-/

namespace A340990.P15345346195318639225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A340991 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340990.P15345346195318639225

/-!
# A340991: Triangle T(n,k) whose k-th column is the k-fold self-convolution of the primes; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A340991, there is no canonical definition to state claims against.
-/

/-! ## A340991.P11309544346974639479

`A119465(A035347(n+1)+1)`
-/

namespace A340991.P11309544346974639479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119465 (A035347 (n + 1) + 1).toNat

end

end A340991.P11309544346974639479

/-! ## A340991.P5741578163957762495

`A046951(A154117(n))*A091538(n)`
-/

namespace A340991.P5741578163957762495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A154117 n).toNat * A091538 n

end

end A340991.P5741578163957762495

/-! ## A340991.P8088795673909270632

`A091538(n)*A336870(A032020(n))`
-/

namespace A340991.P8088795673909270632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 n * A336870 (A032020 n).toNat

end

end A340991.P8088795673909270632

/-! ## A340991.P16886427163298912372

`A091538(n)*A296240(A022885(n+1))`
-/

namespace A340991.P16886427163298912372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 n * A296240 (A022885 (n + 1)).toNat

end

end A340991.P16886427163298912372

/-! ## A340991.P5036139727096329262

`A091538(n)*A115579(A055570(2*n+3))`
-/

namespace A340991.P5036139727096329262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091538 n * A115579 (A055570 (2 * n + 3)).toNat

end

end A340991.P5036139727096329262

/-!
# A340992: a(n) is the (2n)-th term of the n-fold self-convolution of the number of divisors function tau.

The programs for A340992, there is no canonical definition to state claims against.
-/

/-! ## A340992.P18116882271079864154

`A320019(∑[4*n])`
-/

namespace A340992.P18116882271079864154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340992.P18116882271079864154

/-! ## A340992.P13729742089632975985

`record[gcd(A320019(4*n), A320019(n))]`
-/

namespace A340992.P13729742089632975985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A320019 (4 * n)) (A320019 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340992.P13729742089632975985

/-! ## A340992.P655186300582096391

`record[A320019(4*n)/A002260(n+1)]`
-/

namespace A340992.P655186300582096391
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320019 (4 * n) : ℚ) / (A002260 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340992.P655186300582096391

/-! ## A340992.P8619285154503707976

`record[and(A185917(n+1), A320019(n))]`
-/

namespace A340992.P8619285154503707976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A320019 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340992.P8619285154503707976

/-! ## A340992.P15620940491657688829

`A054571(A268031(n+1))*A320019(A046092(n))`
-/

namespace A340992.P15620940491657688829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054571 (A268031 (n + 1)).toNat * A320019 (A046092 n).toNat

end

end A340992.P15620940491657688829

/-!
# A340993: a(n) is the (2n)-th term of the n-fold self-convolution of the sum of divisors function sigma.

The programs for A340993, there is no canonical definition to state claims against.
-/

/-! ## A340993.P964956863955157209

`A319083(∑[4*n])`
-/

namespace A340993.P964956863955157209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340993.P964956863955157209

/-! ## A340993.P5562492080691221891

`record[A319083(n*A008619(n))]`
-/

namespace A340993.P5562492080691221891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 ((n : ℤ) * A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340993.P5562492080691221891

/-! ## A340993.P9618809695675499857

`lcm((-1)^n, A319083(A046092(n)))`
-/

namespace A340993.P9618809695675499857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A319083 (A046092 n).toNat)

end

end A340993.P9618809695675499857

/-! ## A340993.P6918642468777474083

`record[A319083(lcm(n+2, A237420(n)))]`
-/

namespace A340993.P6918642468777474083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319083 (Int.lcm (n + 2 : ℤ) (A237420 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340993.P6918642468777474083

/-! ## A340993.P3580336718611707078

`A319083(A046092(n))^(A000040(n+1)%2)`
-/

namespace A340993.P3580336718611707078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319083 (A046092 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A340993.P3580336718611707078

/-!
# A340994: a(n) is the (2n)-th term of the n-fold self-convolution of the Euler totient function phi.

The programs for A340994, there is no canonical definition to state claims against.
-/

/-! ## A340994.P8273691336438561476

`A340995(∑[4*n])`
-/

namespace A340994.P8273691336438561476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340994.P8273691336438561476

/-! ## A340994.P11391408173825477921

`or(1, A340995(A046092(n)))`
-/

namespace A340994.P11391408173825477921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340995 (A046092 n).toNat)

end

end A340994.P11391408173825477921

/-! ## A340994.P14071365563380415192

`gcd(A000038(n), A340995(A046092(n)))`
-/

namespace A340994.P14071365563380415192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A340995 (A046092 n).toNat)

end

end A340994.P14071365563380415192

/-! ## A340994.P15777120959080905094

`lcm(A033999(n), A340995(A046092(n)))`
-/

namespace A340994.P15777120959080905094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A340995 (A046092 n).toNat)

end

end A340994.P15777120959080905094

/-! ## A340994.P3281924604899024307

`A340995(A046092(n))+A000007(n+1)`
-/

namespace A340994.P3281924604899024307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (A046092 n).toNat + A000007 (n + 1)

end

end A340994.P3281924604899024307

/-! ## A340994.P13215374772396683326

`A033999(2*n)*A340995(A046092(n))`
-/

namespace A340994.P13215374772396683326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A340995 (A046092 n).toNat

end

end A340994.P13215374772396683326

/-! ## A340994.P9809460526300446097

`A007318(A000096(n))*A340995(A046092(n))`
-/

namespace A340994.P9809460526300446097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A340995 (A046092 n).toNat

end

end A340994.P9809460526300446097

/-! ## A340994.P5251028213229851708

`A072994(A000040(n+1))*A340995(A046092(n))`
-/

namespace A340994.P5251028213229851708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072994 (A000040 (n + 1)).toNat * A340995 (A046092 n).toNat

end

end A340994.P5251028213229851708

/-! ## A340994.P8973533199657770584

`A011628(Δ[n²]²)*A340995(A046092(n))`
-/

namespace A340994.P8973533199657770584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011628 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat * A340995 (A046092 n).toNat

end

end A340994.P8973533199657770584

/-!
# A340995: Triangle T(n,k) whose k-th column is the k-fold self-convolution of the Euler totient function phi; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A340995, there is no canonical definition to state claims against.
-/

/-! ## A340995.P8497055019865651837

`A340999(A002659(n+1))+A177975(n+1)`
-/

namespace A340995.P8497055019865651837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340999 ((A002659 (n + 1)).toNat + 204) + A177975 (n + 1)

end

end A340995.P8497055019865651837

/-! ## A340995.P2652654706069801576

`A185063(A177976(n+1))+A177975(n+1)`
-/

namespace A340995.P2652654706069801576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A177976 (n + 1)).toNat + A177975 (n + 1)

end

end A340995.P2652654706069801576

/-! ## A340995.P8196287955769066908

`A085170(A177975(n+1)%A015806(n+1))`
-/

namespace A340995.P8196287955769066908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085170 (Int.tmod (A177975 (n + 1)) (A015806 (n + 1))).toNat

end

end A340995.P8196287955769066908

/-! ## A340995.P5896791822468661172

`A185044(A166065(n))+A060086(n)`
-/

namespace A340995.P5896791822468661172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A166065 n).toNat + A060086 n

end

end A340995.P5896791822468661172

/-! ## A340995.P7118902741502226297

`A265337(A390433(n))`
-/

namespace A340995.P7118902741502226297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265337 (A390433 n).toNat

end

end A340995.P7118902741502226297

/-!
# A340996: a(n) is the number of different primes that can be expressed as n mod p where p < n is prime.

The programs for A340996, there is no canonical definition to state claims against.
-/

/-! ## A340996.P12042466553712405048

`A072530(n+1)-A185709(A005251(n+1))`
-/

namespace A340996.P12042466553712405048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (n + 1) - A185709 (A005251 (n + 1)).toNat

end

end A340996.P12042466553712405048

/-! ## A340996.P16495357385800138910

`A072530(n+1)-A335453(A105552(n+1))`
-/

namespace A340996.P16495357385800138910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (n + 1) - A335453 (A105552 (n + 1)).toNat

end

end A340996.P16495357385800138910

/-! ## A340996.P14847160541044908832

`A218797(A285527(n)+n)`
-/

namespace A340996.P14847160541044908832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218797 (A285527 n + (n : ℤ)).toNat

end

end A340996.P14847160541044908832

/-! ## A340996.P13143236585137570865

`A072530(lt[A018900(n+1), 3*∑{d}[n+1, #]])`
-/

namespace A340996.P13143236585137570865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A340996.P13143236585137570865

/-! ## A340996.P5300815450920488438

`A072530(n+1)-A025456(A066185(n))`
-/

namespace A340996.P5300815450920488438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072530 (n + 1) - A025456 (A066185 n).toNat

end

end A340996.P5300815450920488438

/-!
# A340998: Number of partitions of n into 7 distinct nonzero squares.

The programs for A340998, there is no canonical definition to state claims against.
-/

/-! ## A340998.P12314309102037938007

`A000007(A253588(n+1)%A298024(n))`
-/

namespace A340998.P12314309102037938007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A253588 (n + 1)) (A298024 n)).toNat

end

end A340998.P12314309102037938007

/-! ## A340998.P6515993354262235117

`A025882(A112798(n+2))^(n*A110615(n+2))`
-/

namespace A340998.P6515993354262235117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025882 (A112798 (n + 2)).toNat : ℚ) ^ ((n : ℤ) * A110615 (n + 2) : ℤ)

end

end A340998.P6515993354262235117

/-! ## A340998.P813565820108745839

`A010057(gcd(A023927(n), A234499(n+1)))`
-/

namespace A340998.P813565820108745839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (Int.gcd (A023927 n) (A234499 (n + 1)))

end

end A340998.P813565820108745839

/-! ## A340998.P17400480544668457746

`A023927(A335520(2*n+1)^A023927(n))`
-/

namespace A340998.P17400480544668457746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 (SequenceMachineLib.roundAway ((A335520 (2 * n + 1) : ℚ) ^ (A023927 n : ℤ))).toNat

end

end A340998.P17400480544668457746

/-! ## A340998.P16218908168298378386

`A023927(C(A335520(2*n+1), A023927(n)))`
-/

namespace A340998.P16218908168298378386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023927 (Nat.choose (A335520 (2 * n + 1)).toNat (A023927 n).toNat)

end

end A340998.P16218908168298378386

/-!
# A340999: Number of partitions of n into 8 distinct nonzero squares.

The programs for A340999, there is no canonical definition to state claims against.
-/

/-! ## A340999.P4882963473695591928

`A341000(lt[A025457(3*n+1), A096966(n+1)])`
-/

namespace A340999.P4882963473695591928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025457 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 285)

end

end A340999.P4882963473695591928

/-! ## A340999.P8744305127374451271

`A025456(and(A325102(n+2), A356220(n+1)))^n`
-/

namespace A340999.P8744305127374451271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025456 (Int.land (A325102 (n + 2)) (A356220 (n + 1))).toNat ^ n

end

end A340999.P8744305127374451271

/-! ## A340999.P422620650733422536

`A104124(A138723(n+1))`
-/

namespace A340999.P422620650733422536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104124 (A138723 (n + 1)).toNat

end

end A340999.P422620650733422536

/-! ## A340999.P6893218150261106668

`ceil(A023929(n)/A206323(n+1))`
-/

namespace A340999.P6893218150261106668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023929 n : ℚ) / (A206323 (n + 1) : ℚ)⌉

end

end A340999.P6893218150261106668

/-! ## A340999.P2244606217438701434

`and(A279329(2*n+1), A279649(A026300(n)))`
-/

namespace A340999.P2244606217438701434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A279329 (2 * n + 1)) (A279649 (A026300 n).toNat)

end

end A340999.P2244606217438701434

/-! ## A340999.P3753293442640887213

`A279329(∏{p}[A016755(n), #])`
-/

namespace A340999.P3753293442640887213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A340999.P3753293442640887213

/-! ## A340999.P10925892144973114643

`ceil(A023929(n)/A206314(n+1))`
-/

namespace A340999.P10925892144973114643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A023929 n : ℚ) / (A206314 (n + 1) : ℚ)⌉

end

end A340999.P10925892144973114643

/-! ## A340999.P7815132023914656610

`A010054(gcd((2*n+1)², A023929(n)))`
-/

namespace A340999.P7815132023914656610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (Int.gcd ((2 * n + 1) ^ 2 : ℤ) (A023929 n))

end

end A340999.P7815132023914656610

