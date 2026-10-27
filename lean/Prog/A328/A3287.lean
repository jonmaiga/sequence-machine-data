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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B002.C003
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
import Seq.B004.C001
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
# A328700: Numbers k dividing nonzero terms in A003095.

The programs for A328700, there is no canonical definition to state claims against.
-/

/-! ## A328700.P6257240197177031168

`eq[0, A328699(n+1)]+1`
-/

namespace A328700.P6257240197177031168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328699 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A328700.P6257240197177031168

/-! ## A328700.P11825571927490268675

`eq[A248218(n+1), A332965(n+1)]+1`
-/

namespace A328700.P11825571927490268675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332965 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328700.P11825571927490268675

/-! ## A328700.P16411495353007139482

`record[A007948(n+1)/(A332965(n+1)+1-A248218(n+1))]`
-/

namespace A328700.P16411495353007139482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (A332965 (n + 1) + (1 - A248218 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328700.P16411495353007139482

/-! ## A328700.P2562770282040928084

`record[A254926(n+1)/(A332965(n+1)+1-A248218(n+1))]`
-/

namespace A328700.P2562770282040928084
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254926 (n + 1) : ℚ) / (A332965 (n + 1) + (1 - A248218 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328700.P2562770282040928084

/-! ## A328700.P7824274225096116618

`record[A008619(2*n)/(A332965(n+1)+1-A248218(n+1))]`
-/

namespace A328700.P7824274225096116618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A332965 (n + 1) + (1 - A248218 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328700.P7824274225096116618

/-!
# A328701: Period in residues modulo n in iteration of x^2 + x + 1 starting at 0.

The programs for A328701, there is no canonical definition to state claims against.
-/

/-! ## A328701.P11407129980496697019

`ceil(log2(A138143((n+1)²/∏{p}[n+1, #])))`
-/

namespace A328701.P11407129980496697019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A138143 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℝ)⌉

end

end A328701.P11407129980496697019

/-! ## A328701.P15726866253396837818

`A244788(A138143((n+1)²/∏{p}[n+1, #]))`
-/

namespace A328701.P15726866253396837818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244788 (A138143 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat).toNat

end

end A328701.P15726866253396837818

/-! ## A328701.P3309393260333461482

`A262611((n+1)²/∏{p}[n+1, #]*A250068(3*n+2))`
-/

namespace A328701.P3309393260333461482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A250068 (3 * n + 2) : ℚ))).toNat

end

end A328701.P3309393260333461482

/-! ## A328701.P17883578994923021747

`A207324(A195943(n+1)^A067029(n+1))`
-/

namespace A328701.P17883578994923021747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207324 (SequenceMachineLib.roundAway ((A195943 (n + 1) : ℚ) ^ (A067029 (n + 1) : ℤ))).toNat

end

end A328701.P17883578994923021747

/-! ## A328701.P13524242038995958254

`A262611(A001285(3*(n+1))*A102631(n+1))`
-/

namespace A328701.P13524242038995958254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262611 (A001285 (3 * (n + 1)) * A102631 (n + 1)).toNat

end

end A328701.P13524242038995958254

/-!
# A328702: Start with 0, a(n) is the smallest number of iterations: x -> (x^2+x+1) mod n needed to run into a cycle.

The programs for A328702, there is no canonical definition to state claims against.
-/

/-! ## A328702.P4611046265553163708

`A038698(n+1)+A038189(A038667(n))`
-/

namespace A328702.P4611046265553163708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (n + 1) + A038189 (A038667 n).toNat

end

end A328702.P4611046265553163708

/-! ## A328702.P4412102455157138013

`A236938(n)%A136764(A136339(n+1))`
-/

namespace A328702.P4412102455157138013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236938 n) (A136764 (A136339 (n + 1)).toNat)

end

end A328702.P4412102455157138013

/-! ## A328702.P17635164288850117483

`A341594(2*A281283(n))`
-/

namespace A328702.P17635164288850117483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (2 * A281283 n).toNat

end

end A328702.P17635164288850117483

/-! ## A328702.P3072446104365860919

`A023416(Δ[A202305(A136975(n+1))])`
-/

namespace A328702.P3072446104365860919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A136975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (n + 1) - f1 n).toNat

end

end A328702.P3072446104365860919

/-! ## A328702.P8776557514776001414

`A196564(A000204(n+1)*A103627(n))`
-/

namespace A328702.P8776557514776001414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A000204 (n + 1) * A103627 n).toNat

end

end A328702.P8776557514776001414

/-!
# A328703: Numbers k dividing nonzero terms in A002065.

The programs for A328703, there is no canonical definition to state claims against.
-/

/-! ## A328703.P16187336422646340945

`∑[or(A037314(2*n), A107491(2*n))]`
-/

namespace A328703.P16187336422646340945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037314 (2 * n)) (A107491 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328703.P16187336422646340945

/-! ## A328703.P12102026793144319902

`A272282(n)-A001221(A041063(n))`
-/

namespace A328703.P12102026793144319902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272282 n - A001221 (A041063 n).toNat

end

end A328703.P12102026793144319902

/-!
# A328704: Primes dividing nonzero terms in A002065.

The programs for A328704, there is no canonical definition to state claims against.
-/

/-! ## A328704.P8068630335790122832

`p?[A328703(n+1)]`
-/

namespace A328704.P8068630335790122832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328704.P8068630335790122832

/-! ## A328704.P11258734489222784951

`p?[record[A328703(A028920(n))]]`
-/

namespace A328704.P11258734489222784951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328703 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328704.P11258734489222784951

/-! ## A328704.P12468305633194741274

`p?[record[A328703(A106466(n))]]`
-/

namespace A328704.P12468305633194741274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328703 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328704.P12468305633194741274

/-! ## A328704.P12301439165266698630

`p?[record[A328703(A263131(n))]]`
-/

namespace A328704.P12301439165266698630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328703 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328704.P12301439165266698630

/-! ## A328704.P12133997357591178874

`record[A006530(A328703(n+2))]`
-/

namespace A328704.P12133997357591178874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A328703 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328704.P12133997357591178874

/-!
# A328705: Dirichlet g.f.: Product_{k>=1} zeta(k*s)^2.

The programs for A328705, there is no canonical definition to state claims against.
-/

/-! ## A328705.P13735503522665483430

`∏{e}[n+1, A000712(#)]`
-/

namespace A328705.P13735503522665483430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000712 (Nat.factorization (f1 n) p)

end

end A328705.P13735503522665483430

/-! ## A328705.P10680964812299988562

`∏{p}[n+1, A000712(val(n+1, #))]`
-/

namespace A328705.P10680964812299988562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000712 (SequenceMachineLib.valuation (n + 1) p)

end

end A328705.P10680964812299988562

/-! ## A328705.P6880777959742941545

`∑{d}[n+1, A000688(#)*A000688((n+1)/#)]`
-/

namespace A328705.P6880777959742941545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000688 d * A000688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328705.P6880777959742941545

/-! ## A328705.P14275545634040832517

`∑{d}[n+1, A188581(#)*A188585((n+1)/#)]`
-/

namespace A328705.P14275545634040832517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188581 d * A188585 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328705.P14275545634040832517

/-! ## A328705.P1557235503731828233

`∑{d}[n+1, A038538(#)*A384912((n+1)/#)]`
-/

namespace A328705.P1557235503731828233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038538 d * A384912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328705.P1557235503731828233

/-! ## A328705.P342000805616654684

`∏{e}[(n+1)², A242683(#)]`
-/

namespace A328705.P342000805616654684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A242683 (Nat.factorization (f1 n) p + 90)

end

end A328705.P342000805616654684

/-!
# A328706: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^2.

The programs for A328706, there is no canonical definition to state claims against.
-/

/-! ## A328706.P1169863764445532161

`∑{d}[n+1, A045778(#)*A045778((n+1)/#)]`
-/

namespace A328706.P1169863764445532161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A045778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P1169863764445532161

/-! ## A328706.P6822763823644194116

`∑{d}[n+1, A316441(#)*A339335((n+1)/#)]`
-/

namespace A328706.P6822763823644194116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A339335 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P6822763823644194116

/-! ## A328706.P3921125724119726995

`∑{d}[n+1, A339337(#)*A339718((n+1)/#)]`
-/

namespace A328706.P3921125724119726995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339337 d * A339718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P3921125724119726995

/-! ## A328706.P10117377777661406648

`∑{d}[n+1, A339340(#)*A339721((n+1)/#)]`
-/

namespace A328706.P10117377777661406648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339340 d * A339721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P10117377777661406648

/-! ## A328706.P8899331344179892202

`∑{d}[n+1, A339341(#)*A339722((n+1)/#)]`
-/

namespace A328706.P8899331344179892202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339341 d * A339722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P8899331344179892202

/-! ## A328706.P4884942062874115161

`∑{d}[n+1, A339338(#)*A339719((n+1)/#)]`
-/

namespace A328706.P4884942062874115161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339338 d * A339719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P4884942062874115161

/-! ## A328706.P10203171511525084952

`∑{d}[n+1, A339339(#)*A339720((n+1)/#)]`
-/

namespace A328706.P10203171511525084952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339339 d * A339720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P10203171511525084952

/-! ## A328706.P13720415489439222653

`∑{d}[n+1, A339336(#)*A339717((n+1)/#)]`
-/

namespace A328706.P13720415489439222653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A339336 d * A339717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328706.P13720415489439222653

/-!
# A328707: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s)) / (1 - k^(-s)).

The programs for A328707, there is no canonical definition to state claims against.
-/

/-! ## A328707.P15575550027902274536

`∑{d}[n+1, A001055(#)*A045778((n+1)/#)]`
-/

namespace A328707.P15575550027902274536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A045778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328707.P15575550027902274536

/-! ## A328707.P14017262358897511002

`∑{d}[n+1, A050370(#)*A342086((n+1)/#)]`
-/

namespace A328707.P14017262358897511002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d * A342086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328707.P14017262358897511002

/-! ## A328707.P5301616714537591053

`∑{d}[n+1, A328706(#)*A347438((n+1)/#)]`
-/

namespace A328707.P5301616714537591053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328706 d * A347438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328707.P5301616714537591053

/-! ## A328707.P10248288850556296002

`A061069(A067824(n+1)%A046002(n+1))`
-/

namespace A328707.P10248288850556296002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061069 (Int.tmod (A067824 (n + 1)) (A046002 (n + 1))).toNat

end

end A328707.P10248288850556296002

/-! ## A328707.P2533845847325037116

`A286603(A067824(n+1))%A394926(n+1)`
-/

namespace A328707.P2533845847325037116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286603 (A067824 (n + 1)).toNat) (A394926 (n + 1))

end

end A328707.P2533845847325037116

/-!
# A328708: Number of non-primitive Pythagorean triples with leg n.

The programs for A328708, the canonical program `A328708.P9117693535644354588` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328708 has offset 1).

The definition of A328708 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024361, A046079, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328708.P9117693535644354588

`A046079(n+1)-A024361(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A328708

/-- `A046079(n+1)-A024361(n+1)` -/
def P9117693535644354588.Spec : Prop :=
  ∀ n, P9117693535644354588.a n = A328708 (n + 1)

theorem P9117693535644354588.correct : P9117693535644354588.Spec := by
  intro n
  simp only [A328708, Nat.add_sub_cancel]

end A328708

/-! ## A328708.P15616041000946684353

`A328949(n+1)-A328712(n+1)`
-/

namespace A328708.P15616041000946684353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328949 (n + 1) - A328712 (n + 1)

end

end A328708.P15616041000946684353

namespace A328708

/-- `A328949(n+1)-A328712(n+1)` -/
def P15616041000946684353.Spec : Prop :=
  ∀ n, P15616041000946684353.a n = A328708 (n + 1)

end A328708

/-! ## A328708.P439984951016504641

`∑{d}[n+1, A046079(#)*A157658((n+1)/#)]`
-/

namespace A328708.P439984951016504641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046079 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328708.P439984951016504641

namespace A328708

/-- `∑{d}[n+1, A046079(#)*A157658((n+1)/#)]` -/
def P439984951016504641.Spec : Prop :=
  ∀ n, P439984951016504641.a n = A328708 (n + 1)

end A328708

/-! ## A328708.P14382939626100581012

`A024362(n+1)+A046079(n+1)-A024363(n+1)`
-/

namespace A328708.P14382939626100581012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1) + (A046079 (n + 1) - A024363 (n + 1))

end

end A328708.P14382939626100581012

namespace A328708

/-- `A024362(n+1)+A046079(n+1)-A024363(n+1)` -/
def P14382939626100581012.Spec : Prop :=
  ∀ n, P14382939626100581012.a n = A328708 (n + 1)

end A328708

/-! ## A328708.P6681701417777507012

`A046081(n+1)-(A046080(n+1)+A024361(n+1))`
-/

namespace A328708.P6681701417777507012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A046080 (n + 1) + A024361 (n + 1))

end

end A328708.P6681701417777507012

namespace A328708

/-- `A046081(n+1)-(A046080(n+1)+A024361(n+1))` -/
def P6681701417777507012.Spec : Prop :=
  ∀ n, P6681701417777507012.a n = A328708 (n + 1)

end A328708

/-! ## A328708.P11829465076066099996

`A046081(n+1)-(A328712(n+1)+A024363(n+1))`
-/

namespace A328708.P11829465076066099996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A328712 (n + 1) + A024363 (n + 1))

end

end A328708.P11829465076066099996

namespace A328708

/-- `A046081(n+1)-(A328712(n+1)+A024363(n+1))` -/
def P11829465076066099996.Spec : Prop :=
  ∀ n, P11829465076066099996.a n = A328708 (n + 1)

end A328708

/-! ## A328708.P7110792135044094458

`A024362(n+1)+A328949(n+1)-A046080(n+1)`
-/

namespace A328708.P7110792135044094458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (n + 1) + (A328949 (n + 1) - A046080 (n + 1))

end

end A328708.P7110792135044094458

namespace A328708

/-- `A024362(n+1)+A328949(n+1)-A046080(n+1)` -/
def P7110792135044094458.Spec : Prop :=
  ∀ n, P7110792135044094458.a n = A328708 (n + 1)

end A328708

/-!
# A328709: Dirichlet g.f.: Product_{k>=2} ((1 + k^(-s)) / (1 - k^(-s)))^k.

The programs for A328709, there is no canonical definition to state claims against.
-/

/-! ## A328709.P18104103170400566744

`∑{d}[n+1, A050367(#)*A050368((n+1)/#)]`
-/

namespace A328709.P18104103170400566744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050367 d * A050368 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328709.P18104103170400566744

/-! ## A328709.P13644309950615903318

`A140635(A032555(n+1))*A266645(n+1)`
-/

namespace A328709.P13644309950615903318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A032555 (n + 1)).toNat * A266645 (n + 1)

end

end A328709.P13644309950615903318

/-!
# A328710: Dirichlet g.f.: (1/2) * Product_{i>=1, j>=1} (1 + (i*j)^(-s)).

The programs for A328710, there is no canonical definition to state claims against.
-/

/-! ## A328710.P17512890249411487973

`A243118(A001055((n+1)²))-A001055((n+1)²)`
-/

namespace A328710.P17512890249411487973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243118 (A001055 ((n + 1) ^ 2)).toNat - A001055 ((n + 1) ^ 2)

end

end A328710.P17512890249411487973

/-! ## A328710.P6214208445984640841

`A048105((66/6)²*A293514(n+1))`
-/

namespace A328710.P6214208445984640841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.roundAway (((66 : ℚ) / 6) ^ 2 * (A293514 (n + 1) : ℚ))).toNat

end

end A328710.P6214208445984640841

/-! ## A328710.P5783647104688420764

`A243490(A046523(n+1)%A123287(n))`
-/

namespace A328710.P5783647104688420764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243490 (Int.tmod (A046523 (n + 1)) (A123287 (n + 31))).toNat

end

end A328710.P5783647104688420764

/-! ## A328710.P13259484819098237639

`A243490(A046523(n+1))%A057171(n+1)`
-/

namespace A328710.P13259484819098237639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243490 (A046523 (n + 1)).toNat) (A057171 (n + 1))

end

end A328710.P13259484819098237639

/-! ## A328710.P8762951930579956224

`A156251(A339319(n+1))-2*A048105(n+1)`
-/

namespace A328710.P8762951930579956224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A339319 (n + 1)).toNat - 2 * A048105 (n + 1)

end

end A328710.P8762951930579956224

/-!
# A328712: Number of non-primitive Pythagorean triples with hypotenuse n.

The programs for A328712, the canonical program `A328712.P8522307854513457100` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328712 has offset 1).

The definition of A328712 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024362, A046080, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328712.P8522307854513457100

`A046080(n+1)-A024362(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A328712

/-- `A046080(n+1)-A024362(n+1)` -/
def P8522307854513457100.Spec : Prop :=
  ∀ n, P8522307854513457100.a n = A328712 (n + 1)

theorem P8522307854513457100.correct : P8522307854513457100.Spec := by
  intro n
  simp only [A328712, Nat.add_sub_cancel]

end A328712

/-! ## A328712.P10761651827824544000

`A328949(n+1)-A328708(n+1)`
-/

namespace A328712.P10761651827824544000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328949 (n + 1) - A328708 (n + 1)

end

end A328712.P10761651827824544000

namespace A328712

/-- `A328949(n+1)-A328708(n+1)` -/
def P10761651827824544000.Spec : Prop :=
  ∀ n, P10761651827824544000.a n = A328712 (n + 1)

theorem P10761651827824544000.correct : P10761651827824544000.Spec := by
  intro n
  simp only [A328712, Nat.add_sub_cancel, A328712.P10761651827824544000.a, A328712.P8522307854513457100.a, A024362, A024362.P4327117018867467884.a, A046080, A046080.P16111352627053334427.a, A328708, A328708.P9117693535644354588.a, A328949, A328949.P9082150225325732429.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A019590, A019590.P10517823757212113743.a, A317528, A317528.P12745314278989265988.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A026741, A026741.P7397200255647832146.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328712

/-! ## A328712.P12787922945337300478

`∑{d}[n+1, A046080(#)*A157658((n+1)/#)]`
-/

namespace A328712.P12787922945337300478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046080 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328712.P12787922945337300478

namespace A328712

/-- `∑{d}[n+1, A046080(#)*A157658((n+1)/#)]` -/
def P12787922945337300478.Spec : Prop :=
  ∀ n, P12787922945337300478.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P6069247392016080891

`A004526(A256452(n+1))-A024362(n+1)`
-/

namespace A328712.P6069247392016080891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A256452 (n + 1)).toNat - A024362 (n + 1)

end

end A328712.P6069247392016080891

namespace A328712

/-- `A004526(A256452(n+1))-A024362(n+1)` -/
def P6069247392016080891.Spec : Prop :=
  ∀ n, P6069247392016080891.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P11936218372772416695

`A046080(n+1)-A091949(n)*A157228(n+1)`
-/

namespace A328712.P11936218372772416695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) - A091949 n * A157228 (n + 1)

end

end A328712.P11936218372772416695

namespace A328712

/-- `A046080(n+1)-A091949(n)*A157228(n+1)` -/
def P11936218372772416695.Spec : Prop :=
  ∀ n, P11936218372772416695.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P6166193236010980953

`A046080(n+1)-A117188(n)*A157228(n+1)`
-/

namespace A328712.P6166193236010980953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (n + 1) - A117188 n * A157228 (n + 1)

end

end A328712.P6166193236010980953

namespace A328712

/-- `A046080(n+1)-A117188(n)*A157228(n+1)` -/
def P6166193236010980953.Spec : Prop :=
  ∀ n, P6166193236010980953.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P7531205927089541031

`A024361(n+1)+A046080(n+1)-A024363(n+1)`
-/

namespace A328712.P7531205927089541031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + (A046080 (n + 1) - A024363 (n + 1))

end

end A328712.P7531205927089541031

namespace A328712

/-- `A024361(n+1)+A046080(n+1)-A024363(n+1)` -/
def P7531205927089541031.Spec : Prop :=
  ∀ n, P7531205927089541031.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P14133693318505477026

`A046081(n+1)-(A046079(n+1)+A024362(n+1))`
-/

namespace A328712.P14133693318505477026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A046079 (n + 1) + A024362 (n + 1))

end

end A328712.P14133693318505477026

namespace A328712

/-- `A046081(n+1)-(A046079(n+1)+A024362(n+1))` -/
def P14133693318505477026.Spec : Prop :=
  ∀ n, P14133693318505477026.a n = A328712 (n + 1)

theorem P14133693318505477026.correct : P14133693318505477026.Spec := by
  intro n
  simp only [A328712, Nat.add_sub_cancel, A328712.P14133693318505477026.a, A328712.P8522307854513457100.a, A024362, A024362.P4327117018867467884.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A046080, A046080.P16111352627053334427.a, A046081, A046081.P5098545024402691022.a, A024361, A024361.P1146025692209475519.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A019590, A019590.P10517823757212113743.a, A317528, A317528.P12745314278989265988.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A026741, A026741.P7397200255647832146.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328712

/-! ## A328712.P3871390566564040155

`A046081(n+1)-(A328708(n+1)+A024363(n+1))`
-/

namespace A328712.P3871390566564040155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046081 (n + 1) - (A328708 (n + 1) + A024363 (n + 1))

end

end A328712.P3871390566564040155

namespace A328712

/-- `A046081(n+1)-(A328708(n+1)+A024363(n+1))` -/
def P3871390566564040155.Spec : Prop :=
  ∀ n, P3871390566564040155.a n = A328712 (n + 1)

theorem P3871390566564040155.correct : P3871390566564040155.Spec := by
  intro n
  simp only [A328712, Nat.add_sub_cancel, A328712.P3871390566564040155.a, A328712.P8522307854513457100.a, A024362, A024362.P4327117018867467884.a, A024363, A024363.P18199515356215548539.a, A046080, A046080.P16111352627053334427.a, A046081, A046081.P5098545024402691022.a, A328708, A328708.P9117693535644354588.a, A024361, A024361.P1146025692209475519.a, A046079, A046079.P18422331483105200768.f1, A046079.P18422331483105200768.a, A063014, A063014.P2435970929241132637.a, A157228, A157228.P6044199204996125931.a, A000089, A000089.P6732950680245443794.a, A000161, A000161.P12733227588245460575.f1, A000161.P12733227588245460575.f2, A000161.P12733227588245460575.a, A004526, A004526.P10084182425416171735.a, A019590, A019590.P10517823757212113743.a, A317528, A317528.P12745314278989265988.a, A000010, A000010.P4673923239450215316.a, A000035, A000035.P2023072528413494694.a, A008619, A008619.P16053834178911111118.a, A010673, A010673.P315411129155871031.a, A026741, A026741.P7397200255647832146.a, A034444, A034444.P6574915864346323298.a, A063725, A063725.P12741089044414848106.f1, A063725.P12741089044414848106.a, A350872, A350872.P15784308967154680112.f1, A350872.P15784308967154680112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A328712

/-! ## A328712.P16220572932993622812

`A024361(n+1)+A328949(n+1)-A046079(n+1)`
-/

namespace A328712.P16220572932993622812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024361 (n + 1) + (A328949 (n + 1) - A046079 (n + 1))

end

end A328712.P16220572932993622812

namespace A328712

/-- `A024361(n+1)+A328949(n+1)-A046079(n+1)` -/
def P16220572932993622812.Spec : Prop :=
  ∀ n, P16220572932993622812.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P5135037669455906620

`A224921(n+2)-(A224921(n+1)+A024362(n+1))`
-/

namespace A328712.P5135037669455906620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224921 (n + 2) - (A224921 (n + 1) + A024362 (n + 1))

end

end A328712.P5135037669455906620

namespace A328712

/-- `A224921(n+2)-(A224921(n+1)+A024362(n+1))` -/
def P5135037669455906620.Spec : Prop :=
  ∀ n, P5135037669455906620.a n = A328712 (n + 1)

end A328712

/-! ## A328712.P9552623901441611144

`A046080(2*(n+1))-A157228(2*(n+1))`
-/

namespace A328712.P9552623901441611144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (2 * (n + 1)) - A157228 (2 * (n + 1))

end

end A328712.P9552623901441611144

namespace A328712

/-- `A046080(2*(n+1))-A157228(2*(n+1))` -/
def P9552623901441611144.Spec : Prop :=
  ∀ n, P9552623901441611144.a n = A328712 (n + 1)

end A328712

/-!
# A328713: Constant term in the expansion of (1 + x + y + z + 1/x + 1/y + 1/z)^n.

The programs for A328713, there is no canonical definition to state claims against.
-/

/-! ## A328713.P384803165091502119

`A328718(A167614(n+2))`
-/

namespace A328713.P384803165091502119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A167614 (n + 2)).toNat

end

end A328713.P384803165091502119

/-! ## A328713.P9735389717874838739

`A328718(A052905(n)+8)`
-/

namespace A328713.P9735389717874838739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A052905 n + 8).toNat

end

end A328713.P9735389717874838739

/-! ## A328713.P13776347747047536872

`A328718(A055999(n)+9)`
-/

namespace A328713.P13776347747047536872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A055999 n + 9).toNat

end

end A328713.P13776347747047536872

/-! ## A328713.P10238644953640702808

`A328718(eq[3, A002262(n)])`
-/

namespace A328713.P10238644953640702808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328713.P10238644953640702808

/-! ## A328713.P980077375306137789

`A328718(A166136(n+2)-3)`
-/

namespace A328713.P980077375306137789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A166136 (n + 2) - 3).toNat

end

end A328713.P980077375306137789

/-! ## A328713.P1332374246311252716

`A328718(eq[4, A002260(n+1)])`
-/

namespace A328713.P1332374246311252716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328713.P1332374246311252716

/-!
# A328714: Constant term in the expansion of (1 + w + x + y + z + 1/w + 1/x + 1/y + 1/z)^n.

The programs for A328714, there is no canonical definition to state claims against.
-/

/-! ## A328714.P8729904734982416498

`A328718(eq[4, A002262(n)])`
-/

namespace A328714.P8729904734982416498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328714.P8729904734982416498

/-! ## A328714.P304192803129119743

`A328718(eq[16, A059268(n)])`
-/

namespace A328714.P304192803129119743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328714.P304192803129119743

/-! ## A328714.P4245445098727759652

`A328718(eq[5, A002260(n+1)])`
-/

namespace A328714.P4245445098727759652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328714.P4245445098727759652

/-! ## A328714.P2342955234464116390

`A328718(A113127(n+4)+A000217(n))`
-/

namespace A328714.P2342955234464116390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A113127 (n + 4) + A000217 n).toNat

end

end A328714.P2342955234464116390

/-! ## A328714.P5815910253527880093

`A328718(A020705(n)+A055999(n)+10)`
-/

namespace A328714.P5815910253527880093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A020705 n + (A055999 n + 10)).toNat

end

end A328714.P5815910253527880093

/-!
# A328715: Constant term in the expansion of (1 + v + w + x + y + z + 1/v + 1/w + 1/x + 1/y + 1/z)^n.

The programs for A328715, there is no canonical definition to state claims against.
-/

/-! ## A328715.P9775026750272745041

`A328718(A167499(n+4))`
-/

namespace A328715.P9775026750272745041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A167499 (n + 4)).toNat

end

end A328715.P9775026750272745041

/-! ## A328715.P12449950596733272558

`A328718(eq[5, A002262(n)])`
-/

namespace A328715.P12449950596733272558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328715.P12449950596733272558

/-! ## A328715.P8593741483619700960

`A328718(A166136(n+4)-1)`
-/

namespace A328715.P8593741483619700960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A166136 (n + 4) - 1).toNat

end

end A328715.P8593741483619700960

/-! ## A328715.P3945399190053713231

`A328718(A161680(n+6)+5)`
-/

namespace A328715.P3945399190053713231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A161680 (n + 6) + 5).toNat

end

end A328715.P3945399190053713231

/-! ## A328715.P2952445385510394496

`A328718(eq[6, A002260(n+1)])`
-/

namespace A328715.P2952445385510394496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328715.P2952445385510394496

/-! ## A328715.P17952903084242274415

`A328718(A152948(n+8)-(n+3))`
-/

namespace A328715.P17952903084242274415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (A152948 (n + 8) - (n + 3 : ℤ)).toNat

end

end A328715.P17952903084242274415

/-! ## A328715.P4660369047295848255

`A328718(∑[n+5]+16-A178334(n))`
-/

namespace A328715.P4660369047295848255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (((∑ j ∈ Finset.range (n + 1), f1 j + 16 : ℕ) : ℤ) - A178334 n).toNat

end

end A328715.P4660369047295848255

/-!
# A328716: Constant term in the expansion of (1 + x_1 + x_2 + ... + x_n + 1/x_1 + 1/x_2 + ... + 1/x_n)^n.

The programs for A328716, there is no canonical definition to state claims against.
-/

/-! ## A328716.P6851708456549931288

`A328718(∑[4*n])`
-/

namespace A328716.P6851708456549931288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328716.P6851708456549931288

/-! ## A328716.P7991890795843678140

`or(1, A328718(A046092(n)))`
-/

namespace A328716.P7991890795843678140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A328718 (A046092 n).toNat)

end

end A328716.P7991890795843678140

/-! ## A328716.P2527216907560874122

`gcd(A000038(n), A328718(A046092(n)))`
-/

namespace A328716.P2527216907560874122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328718 (A046092 n).toNat)

end

end A328716.P2527216907560874122

/-! ## A328716.P5654351337682039245

`ceil(1/A007318(n))*A328718(A046092(n))`
-/

namespace A328716.P5654351337682039245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A007318 n : ℚ)⌉ * A328718 (A046092 n).toNat

end

end A328716.P5654351337682039245

/-! ## A328716.P9124952404126650627

`A328718(A046092(n))/A014963(A007304(n+1))`
-/

namespace A328716.P9124952404126650627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328718 (A046092 n).toNat : ℚ) / (A014963 (A007304 (n + 1)).toNat : ℚ)

end

end A328716.P9124952404126650627

/-!
# A328718: Square array T(n,k), n>=0, k>=0, read by antidiagonals, where T(n,k) is the constant term in the expansion of (1 + x_1 + x_2 + ... + x_n + 1/x_1 + 1/x_2 + ... + 1/x_n)^k.

The programs for A328718, there is no canonical definition to state claims against.
-/

/-! ## A328718.P17839397148463262261

`A185213(A278657(n))+A110180(n)`
-/

namespace A328718.P17839397148463262261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185213 (A278657 n).toNat + A110180 n

end

end A328718.P17839397148463262261

/-! ## A328718.P13408494307240041747

`A110180(n)*A249351(A008459(n))`
-/

namespace A328718.P13408494307240041747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 n * A249351 (A008459 n).toNat

end

end A328718.P13408494307240041747

/-! ## A328718.P4491749995321142365

`A110180(n)^A080305(A117821(n))`
-/

namespace A328718.P4491749995321142365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110180 n : ℚ) ^ (A080305 (A117821 n).toNat : ℤ)

end

end A328718.P4491749995321142365

/-! ## A328718.P16572737208221197640

`A110180(n)%A000125(A000141(n))`
-/

namespace A328718.P16572737208221197640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110180 n) (A000125 (A000141 n).toNat)

end

end A328718.P16572737208221197640

/-! ## A328718.P17327141640457203424

`A110180(n)+A000007(A005231(n+1))`
-/

namespace A328718.P17327141640457203424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110180 n + A000007 (A005231 (n + 1)).toNat

end

end A328718.P17327141640457203424

/-!
# A328719: Triangular array read by rows: row n consists of the numbers k from 1 to n sorted in ascending lexicographic order of their sequences of p-adic valuations.

The programs for A328719, there is no canonical definition to state claims against.
-/

/-! ## A328719.P7112634679351919678

`or(A088370(n+1), A127093(A100705(n)))`
-/

namespace A328719.P7112634679351919678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088370 (n + 1)) (A127093 (A100705 n).toNat)

end

end A328719.P7112634679351919678

/-! ## A328719.P11277234323932784259

`or(A088370(n+1), A250002(A089627(n)))`
-/

namespace A328719.P11277234323932784259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088370 (n + 1)) (A250002 (A089627 n).toNat)

end

end A328719.P11277234323932784259

/-! ## A328719.P9513075917701480787

`or(A088370(n+1), A292547(A171632(n+1)))`
-/

namespace A328719.P9513075917701480787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088370 (n + 1)) (A292547 (A171632 (n + 1)).toNat)

end

end A328719.P9513075917701480787

/-! ## A328719.P2672458226380892924

`or(A088370(n+1), A292547(A171633(n+1)))`
-/

namespace A328719.P2672458226380892924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088370 (n + 1)) (A292547 (A171633 (n + 1)).toNat)

end

end A328719.P2672458226380892924

/-! ## A328719.P7264315636046416937

`A109527(A074679(A113413(n)))+A088370(n+1)`
-/

namespace A328719.P7264315636046416937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109527 (A074679 (A113413 n).toNat).toNat + A088370 (n + 1)

end

end A328719.P7264315636046416937

/-!
# A328720: The position function the fractalization of which yields A328719.

The programs for A328720, there is no canonical definition to state claims against.
-/

/-! ## A328720.P7812044606509091720

`A316979(A227690(2*(n+2)))+A006022(n+1)`
-/

namespace A328720.P7812044606509091720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316979 (A227690 (2 * (n + 2))).toNat + A006022 (n + 1)

end

end A328720.P7812044606509091720

/-! ## A328720.P8746981716477888616

`A138904(A028233(3*n+5))+A006022(n+1)`
-/

namespace A328720.P8746981716477888616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (A028233 (3 * n + 5)).toNat + A006022 (n + 1)

end

end A328720.P8746981716477888616

/-! ## A328720.P6568881001693456694

`A006022(n+1)+A001222(A194344(A294335(n)))`
-/

namespace A328720.P6568881001693456694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006022 (n + 1) + A001222 (A194344 (A294335 n).toNat).toNat

end

end A328720.P6568881001693456694

/-! ## A328720.P2847393282810466536

`A318809(A093562(n))+A006022(n+1)`
-/

namespace A328720.P2847393282810466536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318809 (A093562 n).toNat + A006022 (n + 1)

end

end A328720.P2847393282810466536

/-! ## A328720.P14482464022467334135

`A000038(A274068(n+1))+A332993(n+1)-n`
-/

namespace A328720.P14482464022467334135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A274068 (n + 1)).toNat + (A332993 (n + 1) - (n : ℤ))

end

end A328720.P14482464022467334135

/-!
# A328721: Dirichlet g.f.: Product_{p prime, k>=1} (1 + p^(-s*k)) / (1 - p^(-s*k)).

The programs for A328721, there is no canonical definition to state claims against.
-/

/-! ## A328721.P1981093923899411781

`∏{e}[n+1, A015128(#)]`
-/

namespace A328721.P1981093923899411781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015128 (Nat.factorization (f1 n) p)

end

end A328721.P1981093923899411781

/-! ## A328721.P824230401332809034

`∏{e}[n+1, A304627(#)+2]`
-/

namespace A328721.P824230401332809034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A304627 (Nat.factorization (f1 n) p) + 2)

end

end A328721.P824230401332809034

/-! ## A328721.P6044614801543071341

`∑{d}[n+1, A000688(#)*A050361((n+1)/#)]`
-/

namespace A328721.P6044614801543071341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000688 d * A050361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328721.P6044614801543071341

/-! ## A328721.P9884828381169611044

`∏{e}[(n+1)²*∏{p}[n+1, #], A094707(#)]`
-/

namespace A328721.P9884828381169611044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A094707 (Nat.factorization (f1 n) p)

end

end A328721.P9884828381169611044

/-! ## A328721.P6703420713161800131

`∏{e}[A000578(n+1), A261772(#)]`
-/

namespace A328721.P6703420713161800131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A261772 (Nat.factorization (f1 n).natAbs p)

end

end A328721.P6703420713161800131

/-!
# A328722: Dirichlet g.f.: 1 / zeta(s-1)^2.

The programs for A328722, the canonical program `A328722.P2205346375960215536` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328722 has offset 1).

The definition of A328722 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007427, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328722.P2205346375960215536

`(n+1)*A007427(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328722

/-- `(n+1)*A007427(n+1)` -/
def P2205346375960215536.Spec : Prop :=
  ∀ n, P2205346375960215536.a n = A328722 (n + 1)

theorem P2205346375960215536.correct : P2205346375960215536.Spec := by
  intro n
  simp only [A328722, Nat.add_sub_cancel]

end A328722

/-! ## A328722.P13547853537150943242

`(n+1)*∏{e}[n+1, (-C(2, #))^#]`
-/

namespace A328722.P13547853537150943242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p) : ℤ)) ^ Nat.factorization (f1 n) p)

end

end A328722.P13547853537150943242

namespace A328722

/-- `(n+1)*∏{e}[n+1, (-C(2, #))^#]` -/
def P13547853537150943242.Spec : Prop :=
  ∀ n, P13547853537150943242.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P7591920079692693990

`∑{d}[n+1, A327960(#)]`
-/

namespace A328722.P7591920079692693990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327960 d

end

end A328722.P7591920079692693990

namespace A328722

/-- `∑{d}[n+1, A327960(#)]` -/
def P7591920079692693990.Spec : Prop :=
  ∀ n, P7591920079692693990.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P18365702676760591086

`A347094(n+1)-A038040(n+1)`
-/

namespace A328722.P18365702676760591086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347094 (n + 1) - A038040 (n + 1)

end

end A328722.P18365702676760591086

namespace A328722

/-- `A347094(n+1)-A038040(n+1)` -/
def P18365702676760591086.Spec : Prop :=
  ∀ n, P18365702676760591086.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P1091964044720048335

`∑{d}[n+1, A023900(#)*A046692((n+1)/#)]`
-/

namespace A328722.P1091964044720048335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P1091964044720048335

namespace A328722

/-- `∑{d}[n+1, A023900(#)*A046692((n+1)/#)]` -/
def P1091964044720048335.Spec : Prop :=
  ∀ n, P1091964044720048335.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P17968729208297815972

`∑{d}[n+1, A008683(#)*A101035((n+1)/#)]`
-/

namespace A328722.P17968729208297815972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P17968729208297815972

namespace A328722

/-- `∑{d}[n+1, A008683(#)*A101035((n+1)/#)]` -/
def P17968729208297815972.Spec : Prop :=
  ∀ n, P17968729208297815972.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P6188386589827543090

`∑{d}[n+1, A055615(#)*A055615((n+1)/#)]`
-/

namespace A328722.P6188386589827543090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P6188386589827543090

namespace A328722

/-- `∑{d}[n+1, A055615(#)*A055615((n+1)/#)]` -/
def P6188386589827543090.Spec : Prop :=
  ∀ n, P6188386589827543090.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P3630487225142324959

`∑{d}[n+1, A057660(#)*A328254((n+1)/#)]`
-/

namespace A328722.P3630487225142324959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057660 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P3630487225142324959

namespace A328722

/-- `∑{d}[n+1, A057660(#)*A328254((n+1)/#)]` -/
def P3630487225142324959.Spec : Prop :=
  ∀ n, P3630487225142324959.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P3557938134159241619

`∑{d}[n+1, A053822(#)*A340850((n+1)/#)]`
-/

namespace A328722.P3557938134159241619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P3557938134159241619

namespace A328722

/-- `∑{d}[n+1, A053822(#)*A340850((n+1)/#)]` -/
def P3557938134159241619.Spec : Prop :=
  ∀ n, P3557938134159241619.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P14457376943710227399

`∑{d}[n+1, A063445(#)*A351654((n+1)/#)]`
-/

namespace A328722.P14457376943710227399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063445 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P14457376943710227399

namespace A328722

/-- `∑{d}[n+1, A063445(#)*A351654((n+1)/#)]` -/
def P14457376943710227399.Spec : Prop :=
  ∀ n, P14457376943710227399.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P1699391352682806385

`∑{d}[n+1, A117212(#)*A327278((n+1)/#)]`
-/

namespace A328722.P1699391352682806385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117212 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P1699391352682806385

namespace A328722

/-- `∑{d}[n+1, A117212(#)*A327278((n+1)/#)]` -/
def P1699391352682806385.Spec : Prop :=
  ∀ n, P1699391352682806385.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P10841438017455810364

`∑{d}[n+1, A271102(#)*A347092((n+1)/#)]`
-/

namespace A328722.P10841438017455810364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A271102 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P10841438017455810364

namespace A328722

/-- `∑{d}[n+1, A271102(#)*A347092((n+1)/#)]` -/
def P10841438017455810364.Spec : Prop :=
  ∀ n, P10841438017455810364.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P6328084556776649709

`∑{d}[n+1, A323363(#)*A328729((n+1)/#)]`
-/

namespace A328722.P6328084556776649709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323363 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P6328084556776649709

namespace A328722

/-- `∑{d}[n+1, A323363(#)*A328729((n+1)/#)]` -/
def P6328084556776649709.Spec : Prop :=
  ∀ n, P6328084556776649709.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P4093140976751878481

`∑{d}[n+1, A323910(#)*A378217((n+1)/#)]`
-/

namespace A328722.P4093140976751878481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P4093140976751878481

namespace A328722

/-- `∑{d}[n+1, A323910(#)*A378217((n+1)/#)]` -/
def P4093140976751878481.Spec : Prop :=
  ∀ n, P4093140976751878481.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P16229048603750549983

`∑{d}[n+1, A323912(#)*A378211((n+1)/#)]`
-/

namespace A328722.P16229048603750549983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P16229048603750549983

namespace A328722

/-- `∑{d}[n+1, A323912(#)*A378211((n+1)/#)]` -/
def P16229048603750549983.Spec : Prop :=
  ∀ n, P16229048603750549983.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P17690718813375141384

`∑{d}[n+1, A349341(#)*A359484((n+1)/#)]`
-/

namespace A328722.P17690718813375141384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349341 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P17690718813375141384

namespace A328722

/-- `∑{d}[n+1, A349341(#)*A359484((n+1)/#)]` -/
def P17690718813375141384.Spec : Prop :=
  ∀ n, P17690718813375141384.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P17872348397272524909

`∑{d}[n+1, A353789(#)*A378228((n+1)/#)]`
-/

namespace A328722.P17872348397272524909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353789 d * A378228 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328722.P17872348397272524909

namespace A328722

/-- `∑{d}[n+1, A353789(#)*A378228((n+1)/#)]` -/
def P17872348397272524909.Spec : Prop :=
  ∀ n, P17872348397272524909.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P9540979116209194774

`(n+1)*∑{d}[n+1, A008683(#)*A008683((n+1)/#)]`
-/

namespace A328722.P9540979116209194774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A008683 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A328722.P9540979116209194774

namespace A328722

/-- `(n+1)*∑{d}[n+1, A008683(#)*A008683((n+1)/#)]` -/
def P9540979116209194774.Spec : Prop :=
  ∀ n, P9540979116209194774.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P14569556374450522226

`(n+1)*A327274(A003961(n+1))`
-/

namespace A328722.P14569556374450522226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327274 (A003961 (n + 1)).toNat

end

end A328722.P14569556374450522226

namespace A328722

/-- `(n+1)*A327274(A003961(n+1))` -/
def P14569556374450522226.Spec : Prop :=
  ∀ n, P14569556374450522226.a n = A328722 (n + 1)

end A328722

/-! ## A328722.P15527860500866873886

`(n+1)*A327274(A332818(n+1))`
-/

namespace A328722.P15527860500866873886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327274 (A332818 (n + 1)).toNat

end

end A328722.P15527860500866873886

namespace A328722

/-- `(n+1)*A327274(A332818(n+1))` -/
def P15527860500866873886.Spec : Prop :=
  ∀ n, P15527860500866873886.a n = A328722 (n + 1)

end A328722

/-!
# A328724: a(1)=2, a(2)=3; a(n) is the smallest k > a(n-1) such that k + a(n-1) is a multiple of a(n-2).

The programs for A328724, the canonical program `A328724.P12445450901854088178` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328724 has offset 1).

The definition of A328724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328724.P12445450901854088178

`a(n-1)+a(n-2)-(2*a(n-1))%a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328724

/-- `a(n-1)+a(n-2)-(2*a(n-1))%a(n-2)` -/
def P12445450901854088178.Spec : Prop :=
  ∀ n, P12445450901854088178.a n = A328724 (n + 1)

theorem P12445450901854088178.correct : P12445450901854088178.Spec := by
  intro n
  simp only [A328724, Nat.add_sub_cancel]

end A328724

/-! ## A328724.P18092253154395115624

`record[A323438(3*n+2)+A179478(n)]`
-/

namespace A328724.P18092253154395115624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323438 (3 * n + 2) + A179478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328724.P18092253154395115624

namespace A328724

/-- `record[A323438(3*n+2)+A179478(n)]` -/
def P18092253154395115624.Spec : Prop :=
  ∀ n, P18092253154395115624.a n = A328724 (n + 1)

end A328724

/-! ## A328724.P1194820921183414715

`record[A104157(3*n+1)%A189297(n+2)]`
-/

namespace A328724.P1194820921183414715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104157 (3 * n + 1)) (A189297 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328724.P1194820921183414715

namespace A328724

/-- `record[A104157(3*n+1)%A189297(n+2)]` -/
def P1194820921183414715.Spec : Prop :=
  ∀ n, P1194820921183414715.a n = A328724 (n + 1)

end A328724

/-! ## A328724.P2829994333247599833

`A193592(A112425(n+1))+A086781(n)`
-/

namespace A328724.P2829994333247599833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A112425 (n + 1)).toNat + A086781 n

end

end A328724.P2829994333247599833

namespace A328724

/-- `A193592(A112425(n+1))+A086781(n)` -/
def P2829994333247599833.Spec : Prop :=
  ∀ n, P2829994333247599833.a n = A328724 (n + 1)

end A328724

/-!
# A328725: Constant term in the expansion of (1 + x + y + z + 1/x + 1/y + 1/z + x*y + y*z + z*x + 1/(x*y) + 1/(y*z) + 1/(z*x) + x*y*z + 1/(x*y*z))^n.

The programs for A328725, there is no canonical definition to state claims against.
-/

/-! ## A328725.P7173177256026527716

`A328747(A052905(n+2))`
-/

namespace A328725.P7173177256026527716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (A052905 (n + 2)).toNat

end

end A328725.P7173177256026527716

/-! ## A328725.P3408017104345390394

`A328747(eq[3, A212551(n)])`
-/

namespace A328725.P3408017104345390394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328725.P3408017104345390394

/-! ## A328725.P10136509843390678898

`A328747(eq[4, A025581(n)])`
-/

namespace A328725.P10136509843390678898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328725.P10136509843390678898

/-! ## A328725.P12639633977174852777

`A328747(eq[5, A193739(n)])`
-/

namespace A328725.P12639633977174852777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328725.P12639633977174852777

/-! ## A328725.P11138289672825695398

`A328747(eq[9, A099375(n)])`
-/

namespace A328725.P11138289672825695398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328725.P11138289672825695398

/-!
# A328727: Nonnegative numbers whose base-3 expansion has no two consecutive nonzero digits.

The programs for A328727, the canonical program `A328727.P2478192651676945120` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328727 has offset 1).

The definition of A328727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328727.P2478192651676945120

`eq[A006047(n)², A006047(4*n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328727

/-- `eq[A006047(n)², A006047(4*n)]` -/
def P2478192651676945120.Spec : Prop :=
  ∀ n, (P2478192651676945120.a n : ℤ) = A328727 (n + 1)

theorem P2478192651676945120.correct : P2478192651676945120.Spec := by
  intro n
  simp only [A328727, Nat.add_sub_cancel]

end A328727

/-! ## A328727.P3591452185515923865

`eq[A242400(A004488(n))/2, A242400(n)]`
-/

namespace A328727.P3591452185515923865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242400 (A004488 n).toNat : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A328727.P3591452185515923865

namespace A328727

/-- `eq[A242400(A004488(n))/2, A242400(n)]` -/
def P3591452185515923865.Spec : Prop :=
  ∀ n, (P3591452185515923865.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P13653911961193484409

`eq[A006047(4*n)/A006047(3*n), A006047(3*n)]`
-/

namespace A328727.P13653911961193484409
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006047 (4 * n) : ℚ) / (A006047 (3 * n) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A328727.P13653911961193484409

namespace A328727

/-- `eq[A006047(4*n)/A006047(3*n), A006047(3*n)]` -/
def P13653911961193484409.Spec : Prop :=
  ∀ n, (P13653911961193484409.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P6566377328449665800

`eq[A289813(n), A343229(2*n)]`
-/

namespace A328727.P6566377328449665800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P6566377328449665800

namespace A328727

/-- `eq[A289813(n), A343229(2*n)]` -/
def P6566377328449665800.Spec : Prop :=
  ∀ n, (P6566377328449665800.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P16991618559437552131

`record[gcd(A338242(2*n), A338242(n))]`
-/

namespace A328727.P16991618559437552131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A338242 (2 * n)) (A338242 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328727.P16991618559437552131

namespace A328727

/-- `record[gcd(A338242(2*n), A338242(n))]` -/
def P16991618559437552131.Spec : Prop :=
  ∀ n, (P16991618559437552131.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P14036966028982466324

`eq[A338242(2*n)+n, A321726(3*n)]`
-/

namespace A328727.P14036966028982466324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P14036966028982466324

namespace A328727

/-- `eq[A338242(2*n)+n, A321726(3*n)]` -/
def P14036966028982466324.Spec : Prop :=
  ∀ n, (P14036966028982466324.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P11283944368862109539

`eq[A120879(n)², A120879(4*n)]`
-/

namespace A328727.P11283944368862109539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P11283944368862109539

namespace A328727

/-- `eq[A120879(n)², A120879(4*n)]` -/
def P11283944368862109539.Spec : Prop :=
  ∀ n, (P11283944368862109539.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P8265426789907846787

`eq[2*A338241(2*n), A338241(4*n)]`
-/

namespace A328727.P8265426789907846787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338241 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P8265426789907846787

namespace A328727

/-- `eq[2*A338241(2*n), A338241(4*n)]` -/
def P8265426789907846787.Spec : Prop :=
  ∀ n, (P8265426789907846787.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P6900660309936174408

`eq[A120879(4*n)/A120879(3*n), A120879(3*n)]`
-/

namespace A328727.P6900660309936174408
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120879 (4 * n) : ℚ) / (A120879 (3 * n) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A328727.P6900660309936174408

namespace A328727

/-- `eq[A120879(4*n)/A120879(3*n), A120879(3*n)]` -/
def P6900660309936174408.Spec : Prop :=
  ∀ n, (P6900660309936174408.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P11146462405136594108

`eq[A338242(2*n)+n, A338242(3*n)]`
-/

namespace A328727.P11146462405136594108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P11146462405136594108

namespace A328727

/-- `eq[A338242(2*n)+n, A338242(3*n)]` -/
def P11146462405136594108.Spec : Prop :=
  ∀ n, (P11146462405136594108.a n : ℤ) = A328727 (n + 1)

end A328727

/-! ## A328727.P1271820753726684964

`eq[A196096(n), A242400(n)]`
-/

namespace A328727.P1271820753726684964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328727.P1271820753726684964

namespace A328727

/-- `eq[A196096(n), A242400(n)]` -/
def P1271820753726684964.Spec : Prop :=
  ∀ n, (P1271820753726684964.a n : ℤ) = A328727 (n + 1)

end A328727

/-!
# A328728: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of A328727(n).

The programs for A328728, the canonical program `A328728.P9496393580234342524` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328728 has offset 1).

The definition of A328728 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A328727, A328749, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328728.P9496393580234342524

`A328749(A328727(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A328728

/-- `A328749(A328727(n+1))` -/
def P9496393580234342524.Spec : Prop :=
  ∀ n, P9496393580234342524.a n = A328728 (n + 1)

theorem P9496393580234342524.correct : P9496393580234342524.Spec := by
  intro n
  simp only [A328728, Nat.add_sub_cancel]

end A328728

/-! ## A328728.P2585850369143972466

`A328749(eq[A006047(n)², A006047(4*n)])`
-/

namespace A328728.P2585850369143972466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P2585850369143972466

namespace A328728

/-- `A328749(eq[A006047(n)², A006047(4*n)])` -/
def P2585850369143972466.Spec : Prop :=
  ∀ n, P2585850369143972466.a n = A328728 (n + 1)

end A328728

/-! ## A328728.P11866200054921101773

`A328749(eq[A289813(n), A343229(2*n)])`
-/

namespace A328728.P11866200054921101773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P11866200054921101773

namespace A328728

/-- `A328749(eq[A289813(n), A343229(2*n)])` -/
def P11866200054921101773.Spec : Prop :=
  ∀ n, P11866200054921101773.a n = A328728 (n + 1)

end A328728

/-! ## A328728.P15183722613283541065

`A328749(eq[A338242(2*n)+n, A321726(3*n)])`
-/

namespace A328728.P15183722613283541065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321726 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P15183722613283541065

namespace A328728

/-- `A328749(eq[A338242(2*n)+n, A321726(3*n)])` -/
def P15183722613283541065.Spec : Prop :=
  ∀ n, P15183722613283541065.a n = A328728 (n + 1)

end A328728

/-! ## A328728.P6133712475899483558

`A328749(eq[A120879(n)², A120879(4*n)])`
-/

namespace A328728.P6133712475899483558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120879 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P6133712475899483558

namespace A328728

/-- `A328749(eq[A120879(n)², A120879(4*n)])` -/
def P6133712475899483558.Spec : Prop :=
  ∀ n, P6133712475899483558.a n = A328728 (n + 1)

end A328728

/-! ## A328728.P12425532953580126651

`A328749(eq[2*A338241(2*n), A338241(4*n)])`
-/

namespace A328728.P12425532953580126651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338241 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338241 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P12425532953580126651

namespace A328728

/-- `A328749(eq[2*A338241(2*n), A338241(4*n)])` -/
def P12425532953580126651.Spec : Prop :=
  ∀ n, P12425532953580126651.a n = A328728 (n + 1)

end A328728

/-! ## A328728.P9480515424097809391

`A328749(eq[A338242(2*n)+n, A338242(3*n)])`
-/

namespace A328728.P9480515424097809391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338242 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P9480515424097809391

namespace A328728

/-- `A328749(eq[A338242(2*n)+n, A338242(3*n)])` -/
def P9480515424097809391.Spec : Prop :=
  ∀ n, P9480515424097809391.a n = A328728 (n + 1)

end A328728

/-! ## A328728.P3300937726285644497

`A328749(eq[A196096(n), A242400(n)])`
-/

namespace A328728.P3300937726285644497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196096 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328728.P3300937726285644497

namespace A328728

/-- `A328749(eq[A196096(n), A242400(n)])` -/
def P3300937726285644497.Spec : Prop :=
  ∀ n, P3300937726285644497.a n = A328728 (n + 1)

end A328728

/-!
# A328729: Dirichlet g.f.: zeta(s) / (zeta(s-1) * zeta(2*s)).

The programs for A328729, the canonical program `A328729.P1093164917336387293` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328729 has offset 1).

The definition of A328729 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A328729.P1093164917336387293

`∑{d}[n+1, A008683((n+1)/#)²*A008683(#)*#]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328729

/-- `∑{d}[n+1, A008683((n+1)/#)²*A008683(#)*#]` -/
def P1093164917336387293.Spec : Prop :=
  ∀ n, P1093164917336387293.a n = A328729 (n + 1)

theorem P1093164917336387293.correct : P1093164917336387293.Spec := by
  intro n
  simp only [A328729, Nat.add_sub_cancel]

end A328729

/-! ## A328729.P2424073222490756782

`∑{d}[n+1, A008966(#)*A055615((n+1)/#)]`
-/

namespace A328729.P2424073222490756782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P2424073222490756782

namespace A328729

/-- `∑{d}[n+1, A008966(#)*A055615((n+1)/#)]` -/
def P2424073222490756782.Spec : Prop :=
  ∀ n, P2424073222490756782.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P8703955588480289878

`∑{d}[n+1, A034444(#)*A046692((n+1)/#)]`
-/

namespace A328729.P8703955588480289878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A046692 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P8703955588480289878

namespace A328729

/-- `∑{d}[n+1, A034444(#)*A046692((n+1)/#)]` -/
def P8703955588480289878.Spec : Prop :=
  ∀ n, P8703955588480289878.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P14526023504473922965

`∑{d}[n+1, A063659(#)*A101035((n+1)/#)]`
-/

namespace A328729.P14526023504473922965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P14526023504473922965

namespace A328729

/-- `∑{d}[n+1, A063659(#)*A101035((n+1)/#)]` -/
def P14526023504473922965.Spec : Prop :=
  ∀ n, P14526023504473922965.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P15503888934860011287

`∑{d}[n+1, A023900(#)*A271102((n+1)/#)]`
-/

namespace A328729.P15503888934860011287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P15503888934860011287

namespace A328729

/-- `∑{d}[n+1, A023900(#)*A271102((n+1)/#)]` -/
def P15503888934860011287.Spec : Prop :=
  ∀ n, P15503888934860011287.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P11375513921210231692

`∑{d}[n+1, A001615(#)*A328722((n+1)/#)]`
-/

namespace A328729.P11375513921210231692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P11375513921210231692

namespace A328729

/-- `∑{d}[n+1, A001615(#)*A328722((n+1)/#)]` -/
def P11375513921210231692.Spec : Prop :=
  ∀ n, P11375513921210231692.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P5905266921979001084

`∑{d}[n+1, A000005(#)*A347090((n+1)/#)]`
-/

namespace A328729.P5905266921979001084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A347090 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P5905266921979001084

namespace A328729

/-- `∑{d}[n+1, A000005(#)*A347090((n+1)/#)]` -/
def P5905266921979001084.Spec : Prop :=
  ∀ n, P5905266921979001084.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P16146259037641007859

`∑{d}[n+1, A007875(#)*A378525((n+1)/#)]`
-/

namespace A328729.P16146259037641007859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P16146259037641007859

namespace A328729

/-- `∑{d}[n+1, A007875(#)*A378525((n+1)/#)]` -/
def P16146259037641007859.Spec : Prop :=
  ∀ n, P16146259037641007859.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P9687321147783354587

`∑{d}[n+1, A060648(#)*A327960((n+1)/#)]`
-/

namespace A328729.P9687321147783354587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P9687321147783354587

namespace A328729

/-- `∑{d}[n+1, A060648(#)*A327960((n+1)/#)]` -/
def P9687321147783354587.Spec : Prop :=
  ∀ n, P9687321147783354587.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P5580605107184730318

`∑{d}[n+1, A130054(#)*A307445((n+1)/#)]`
-/

namespace A328729.P5580605107184730318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P5580605107184730318

namespace A328729

/-- `∑{d}[n+1, A130054(#)*A307445((n+1)/#)]` -/
def P5580605107184730318.Spec : Prop :=
  ∀ n, P5580605107184730318.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P10532486427979591112

`∑{d}[n+1, A078461(#)*A359484((n+1)/#)]`
-/

namespace A328729.P10532486427979591112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P10532486427979591112

namespace A328729

/-- `∑{d}[n+1, A078461(#)*A359484((n+1)/#)]` -/
def P10532486427979591112.Spec : Prop :=
  ∀ n, P10532486427979591112.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P10200087359545775012

`∑{d}[n+1, A130107(#)*A328641((n+1)/#)]`
-/

namespace A328729.P10200087359545775012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A328641 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P10200087359545775012

namespace A328729

/-- `∑{d}[n+1, A130107(#)*A328641((n+1)/#)]` -/
def P10200087359545775012.Spec : Prop :=
  ∀ n, P10200087359545775012.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P1041107631571856976

`∑{d}[n+1, A158949(#)*A328254((n+1)/#)]`
-/

namespace A328729.P1041107631571856976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158949 d * A328254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P1041107631571856976

namespace A328729

/-- `∑{d}[n+1, A158949(#)*A328254((n+1)/#)]` -/
def P1041107631571856976.Spec : Prop :=
  ∀ n, P1041107631571856976.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P2378086423856072364

`∑{d}[n+1, A317528(#)*A327278((n+1)/#)]`
-/

namespace A328729.P2378086423856072364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A317528 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P2378086423856072364

namespace A328729

/-- `∑{d}[n+1, A317528(#)*A327278((n+1)/#)]` -/
def P2378086423856072364.Spec : Prop :=
  ∀ n, P2378086423856072364.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P11434064359927218040

`∑{d}[n+1, A353629(#)*A378536((n+1)/#)]`
-/

namespace A328729.P11434064359927218040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A353629 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328729.P11434064359927218040

namespace A328729

/-- `∑{d}[n+1, A353629(#)*A378536((n+1)/#)]` -/
def P11434064359927218040.Spec : Prop :=
  ∀ n, P11434064359927218040.a n = A328729 (n + 1)

end A328729

/-! ## A328729.P12942956570884217752

`A349441(n+1)/A023900(A057521(n+1))`
-/

namespace A328729.P12942956570884217752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349441 (n + 1) : ℚ) / (A023900 (A057521 (n + 1)).toNat : ℚ)

end

end A328729.P12942956570884217752

namespace A328729

/-- `A349441(n+1)/A023900(A057521(n+1))` -/
def P12942956570884217752.Spec : Prop :=
  ∀ n, P12942956570884217752.a n = (A328729 (n + 1) : ℚ)

end A328729

/-!
# A328730: Dirichlet g.f.: Product_{k>=2} (1 - k^(-s))^k.

The programs for A328730, there is no canonical definition to state claims against.
-/

/-! ## A328730.P1137703890882695263

`A114592(n+1)*A328745(A187829(n+1))`
-/

namespace A328730.P1137703890882695263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (n + 1) * A328745 (A187829 (n + 1)).toNat

end

end A328730.P1137703890882695263

/-! ## A328730.P8336256216361262045

`A008683(A027623(n+1))*A328745(A187829(n+1))`
-/

namespace A328730.P8336256216361262045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A027623 (n + 1)).toNat * A328745 (A187829 (n + 1)).toNat

end

end A328730.P8336256216361262045

/-!
# A328732: Irregular table read by rows; for any n >= 0, the n-th row contains the numbers of the form u - v with u + v = n and u AND v = 0 (where AND denotes the bitwise AND operator), in ascending order.

The programs for A328732, there is no canonical definition to state claims against.
-/

/-! ## A328732.P149765030855353147

`A295989(n)-A352910(n+1)`
-/

namespace A328732.P149765030855353147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n - A352910 (n + 1)

end

end A328732.P149765030855353147

/-! ## A328732.P12685426169303842534

`A328749(A368229(n))`
-/

namespace A328732.P12685426169303842534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328749 (A368229 n).toNat

end

end A328732.P12685426169303842534

/-! ## A328732.P9140036645353390234

`-A114327(A268231(n+1))`
-/

namespace A328732.P9140036645353390234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 (A268231 (n + 1)).toNat

end

end A328732.P9140036645353390234

/-! ## A328732.P8731397826808609113

`-A114327(eq[0, A004198(n)])`
-/

namespace A328732.P8731397826808609113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328732.P8731397826808609113

/-! ## A328732.P5106810736723102706

`-A114327(eq[A057944(n), A286098(n)])`
-/

namespace A328732.P5106810736723102706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328732.P5106810736723102706

/-! ## A328732.P4023803078991385889

`A295989(n)-A025581(A268231(n+1))`
-/

namespace A328732.P4023803078991385889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n - A025581 (A268231 (n + 1)).toNat

end

end A328732.P4023803078991385889

/-! ## A328732.P16659406962958181808

`A295989(n)-A352909(2*(n+1))`
-/

namespace A328732.P16659406962958181808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n - A352909 (2 * (n + 1))

end

end A328732.P16659406962958181808

/-! ## A328732.P13007878603852285520

`A352909(2*n+1)-A352910(n+1)`
-/

namespace A328732.P13007878603852285520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (2 * n + 1) - A352910 (n + 1)

end

end A328732.P13007878603852285520

/-! ## A328732.P10145074982021976012

`A352909(2*n+1)-A352909(2*(n+1))`
-/

namespace A328732.P10145074982021976012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352909 (2 * n + 1) - A352909 (2 * (n + 1))

end

end A328732.P10145074982021976012

/-! ## A328732.P9827380036946357215

`-A114327(eq[A002262(n), A268040(n)])`
-/

namespace A328732.P9827380036946357215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A114327 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328732.P9827380036946357215

/-! ## A328732.P1330127588031210272

`A196199(eq[1, A070886(n)])`
-/

namespace A328732.P1330127588031210272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328732.P1330127588031210272

/-! ## A328732.P17634858928362604686

`A196199(record[A217575(n+1)-A051933(n)])`
-/

namespace A328732.P17634858928362604686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217575 (n + 1) - A051933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A328732.P17634858928362604686

/-! ## A328732.P4417986553981031419

`A196199(eq[A025581(2*n+1), A099026(2*n)])`
-/

namespace A328732.P4417986553981031419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196199 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A328732.P4417986553981031419

/-!
# A328733: List of numbers k such that Fibonacci(k) and Fibonacci(k+1) have the same number of prime factors, counted with multiplicity.

The programs for A328733, there is no canonical definition to state claims against.
-/

/-! ## A328733.P4961694460570569491

`eq[Δ[A038575(n)], A000007(n)]`
-/

namespace A328733.P4961694460570569491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A328733.P4961694460570569491

/-! ## A328733.P5113204775913427950

`eq[Δ[A038575(n)], A000038(n)]`
-/

namespace A328733.P5113204775913427950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A328733.P5113204775913427950

/-! ## A328733.P14039400075310448681

`eq[A038575(n+1), A038575(n+2)]+1`
-/

namespace A328733.P14039400075310448681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A328733.P14039400075310448681

/-! ## A328733.P4312668936486384923

`eq[A038575(n+1)-A000007(n), A038575(n)]`
-/

namespace A328733.P4312668936486384923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (n + 1) - A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328733.P4312668936486384923

/-! ## A328733.P13717309290745209369

`eq[Δ[A038575(n)], A151878(n)]`
-/

namespace A328733.P13717309290745209369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A328733.P13717309290745209369

/-!
# A328734: Fibonacci numbers F(k) for k in A328733.

The programs for A328734, there is no canonical definition to state claims against.
-/

/-! ## A328734.P1993457753872200834

`A000045(A328733(n+1))`
-/

namespace A328734.P1993457753872200834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A328733 (n + 1)).toNat

end

end A328734.P1993457753872200834

/-! ## A328734.P11425566831261281414

`A212804(A328733(n+1)+1)`
-/

namespace A328734.P11425566831261281414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A328733 (n + 1) + 1).toNat

end

end A328734.P11425566831261281414

/-! ## A328734.P3930887562706646178

`A324969(A328733(n+1)+1)`
-/

namespace A328734.P3930887562706646178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A328733 (n + 1) + 1).toNat

end

end A328734.P3930887562706646178

/-! ## A328734.P15305559644189293363

`A103609(2*A328733(n+1))`
-/

namespace A328734.P15305559644189293363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A328733 (n + 1)).toNat

end

end A328734.P15305559644189293363

/-!
# A328735: Constant term in the expansion of (x + y + z + 1/x + 1/y + 1/z + x*y + y*z + z*x + 1/(x*y) + 1/(y*z) + 1/(z*x) + x*y*z + 1/(x*y*z))^n.

The programs for A328735, there is no canonical definition to state claims against.
-/

/-! ## A328735.P14568509343251686195

`A328748(A052905(n+2))`
-/

namespace A328735.P14568509343251686195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (A052905 (n + 2)).toNat

end

end A328735.P14568509343251686195

/-! ## A328735.P58837102824345926

`A328748(A056115(n)+10)`
-/

namespace A328735.P58837102824345926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (A056115 n + 10).toNat

end

end A328735.P58837102824345926

/-! ## A328735.P3889863100685728883

`A328748(eq[4, A025581(n)])`
-/

namespace A328735.P3889863100685728883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328735.P3889863100685728883

/-! ## A328735.P7423080214695775228

`A328748(eq[5, A193739(n)])`
-/

namespace A328735.P7423080214695775228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328735.P7423080214695775228

/-! ## A328735.P3007818185645154917

`A328748(eq[9, A099375(n)])`
-/

namespace A328735.P3007818185645154917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328735.P3007818185645154917

/-!
# A328736: Numbers k such that at least one of sopfr(k-1) and sopfr(k+1) is greater than or equal to 2*sopfr(k).

The programs for A328736, there is no canonical definition to state claims against.
-/

/-! ## A328736.P145266883520157215

`lt[A089934(n+1), A259027(n+1)]+1`
-/

namespace A328736.P145266883520157215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A328736.P145266883520157215

/-! ## A328736.P12496349916368487513

`lt[A003989(A272149(n)), A160086(n)]`
-/

namespace A328736.P12496349916368487513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A272149 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328736.P12496349916368487513

/-! ## A328736.P2991269838944112959

`lt[A239278(A239312(n)), A032741(n)]`
-/

namespace A328736.P2991269838944112959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239278 (A239312 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328736.P2991269838944112959

/-! ## A328736.P3798385411817413898

`lt[A046645(A334538(n+1)), A074206(n)]`
-/

namespace A328736.P3798385411817413898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A334538 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328736.P3798385411817413898

/-! ## A328736.P3376748030866815878

`lt[A139401(A356064(n+1)), A032741(n)]`
-/

namespace A328736.P3376748030866815878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139401 (A356064 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328736.P3376748030866815878

/-!
# A328737: Numbers k such that at least one of sopfr(k-1) and sopfr(k+1) is greater than or equal to 3*sopfr(k).

The programs for A328737, there is no canonical definition to state claims against.
-/

/-! ## A328737.P14603864372260990960

`A095400(A005835(n+3))+12`
-/

namespace A328737.P14603864372260990960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095400 (A005835 (n + 3)).toNat + 12

end

end A328737.P14603864372260990960

/-! ## A328737.P16076747165508496230

`A077294(A250662(2*n+3))+A005835(n+3)`
-/

namespace A328737.P16076747165508496230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077294 (A250662 (2 * n + 3)).toNat + A005835 (n + 3)

end

end A328737.P16076747165508496230

/-! ## A328737.P3285870817360430341

`A040874(A061975(n+1))+A023196(n+3)`
-/

namespace A328737.P3285870817360430341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040874 (A061975 (n + 1)).toNat + A023196 (n + 3)

end

end A328737.P3285870817360430341

/-! ## A328737.P5596081861409069

`lt[39, sqrt(A306149(n))]`
-/

namespace A328737.P5596081861409069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  39

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A306149 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A328737.P5596081861409069

/-! ## A328737.P9552585269145511826

`lt[2*A345810(n+1), A306149(n)]`
-/

namespace A328737.P9552585269145511826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A345810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306149 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328737.P9552585269145511826

/-!
# A328738: Numbers k such that at least one of sopfr(k-1) and sopfr(k+1) is greater than or equal to 4*sopfr(k).

The programs for A328738, there is no canonical definition to state claims against.
-/

/-! ## A328738.P16205947879716363480

`lt[A357323(n+2), A357311(n)²]`
-/

namespace A328738.P16205947879716363480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357323 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357311 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328738.P16205947879716363480

/-! ## A328738.P2494409797444731153

`lt[sqrt(A357323(n+3)), A357311(n)]`
-/

namespace A328738.P2494409797444731153
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A357323 (n + 3) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A328738.P2494409797444731153

/-! ## A328738.P9692441079315923869

`lt[A305372(3*n), A002837(A326851(n))]`
-/

namespace A328738.P9692441079315923869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305372 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A326851 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328738.P9692441079315923869

/-! ## A328738.P9411405594666889868

`A214408(n+4)-A028928(A157120(n+1))`
-/

namespace A328738.P9411405594666889868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 4) - A028928 (A157120 (n + 1)).toNat

end

end A328738.P9411405594666889868

/-! ## A328738.P5427831648316871385

`∩[A214408(n+1), A358866(n+1)]`
-/

namespace A328738.P5427831648316871385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328738.P5427831648316871385

/-!
# A328739: Table of A(n,k) read by antidiagonals, where A(n,1)=2, and every n+1 consecutive terms in row n are pairwise coprime. Terms are chosen to be the least increasing value compatible with these constraints.

The programs for A328739, there is no canonical definition to state claims against.
-/

/-! ## A328739.P6892231689653163205

`A055980(A337023(n+1))`
-/

namespace A328739.P6892231689653163205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A337023 (n + 1)).toNat

end

end A328739.P6892231689653163205

/-! ## A328739.P18445398503167553513

`A038605(3*A181338(n+1))`
-/

namespace A328739.P18445398503167553513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (3 * A181338 (n + 1)).toNat

end

end A328739.P18445398503167553513

/-! ## A328739.P9216317118397716254

`A323239(A000292(A047812(n+1)))+A211701(n+1)`
-/

namespace A328739.P9216317118397716254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A000292 (A047812 (n + 1)).toNat).toNat + A211701 (n + 1)

end

end A328739.P9216317118397716254

/-! ## A328739.P5598969825350487113

`A081604(C(A336769(n+1), 2))`
-/

namespace A328739.P5598969825350487113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.choose (A336769 (n + 1)).toNat 2)

end

end A328739.P5598969825350487113

/-! ## A328739.P15003272875386653173

`A000005(5^A137679(n+1))`
-/

namespace A328739.P15003272875386653173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A137679 (n + 1) : ℤ))).toNat

end

end A328739.P15003272875386653173

/-!
# A328740: Number of n-bead necklace structures which are not self-equivalent under a nonzero rotation using exactly three different colored beads.

The programs for A328740, there is no canonical definition to state claims against.
-/

/-! ## A328740.P17938432437455542764

`A328742(n+1)-A051841(n+1)`
-/

namespace A328740.P17938432437455542764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - A051841 (n + 1)

end

end A328740.P17938432437455542764

/-! ## A328740.P17847466740743892671

`A328742(n+1)-Δ[A173270(n)-A173278(n)]`
-/

namespace A328740.P17847466740743892671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173270 n - A173278 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - (f1 (n + 1) - f1 n)

end

end A328740.P17847466740743892671

/-! ## A328740.P15697446593675023261

`A328742(n+1)-(A001037(n+1)-(A056303(n+1)+A000007(n)))`
-/

namespace A328740.P15697446593675023261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - (A001037 (n + 1) - (A056303 (n + 1) + A000007 n))

end

end A328740.P15697446593675023261

/-! ## A328740.P7755948267298474995

`A328742(n+1)-(A001037(n+1)+A173278(n)-A173278(n+1))`
-/

namespace A328740.P7755948267298474995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - (A001037 (n + 1) + (A173278 n - A173278 (n + 1)))

end

end A328740.P7755948267298474995

/-! ## A328740.P2610999710357718243

`A328742(n+1)-(A000031(n+1)-(A066656(n+1)+A000048(n+1)))`
-/

namespace A328740.P2610999710357718243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - (A000031 (n + 1) - (A066656 (n + 1) + A000048 (n + 1)))

end

end A328740.P2610999710357718243

/-! ## A328740.P11064590085123005224

`A328742(n+1)-(A107847(n+1)+A110981(n+1)-A000048(n+1))`
-/

namespace A328740.P11064590085123005224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - (A107847 (n + 1) + (A110981 (n + 1) - A000048 (n + 1)))

end

end A328740.P11064590085123005224

/-! ## A328740.P2614161495703576370

`A327693(∑[n]+3)`
-/

namespace A328740.P2614161495703576370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A328740.P2614161495703576370

/-! ## A328740.P4953115881830077785

`A328742(n+1)-A327693(A133263(n))`
-/

namespace A328740.P4953115881830077785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 (n + 1) - A327693 (A133263 n).toNat

end

end A328740.P4953115881830077785

/-! ## A328740.P7326927577584462398

`A057427(n)*A327693(A152950(n+1))`
-/

namespace A328740.P7326927577584462398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327693 (A152950 (n + 1)).toNat

end

end A328740.P7326927577584462398

/-! ## A328740.P14664328891559629796

`A327693(A152950(n+1))%A003665(n)`
-/

namespace A328740.P14664328891559629796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327693 (A152950 (n + 1)).toNat) (A003665 n)

end

end A328740.P14664328891559629796

/-!
# A328741: Number of n-bead necklace structures which are not self-equivalent under a nonzero rotation using exactly four different colored beads.

The programs for A328741, there is no canonical definition to state claims against.
-/

/-! ## A328741.P15589650353379332187

`A328743(n+1)-A328742(n+1)`
-/

namespace A328741.P15589650353379332187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 (n + 1) - A328742 (n + 1)

end

end A328741.P15589650353379332187

/-! ## A328741.P15302893248825908520

`A327693(A238531(n)+2+n)`
-/

namespace A328741.P15302893248825908520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A238531 n + 2 + (n : ℤ)).toNat

end

end A328741.P15302893248825908520

/-! ## A328741.P7125887307365297848

`A327693(A165024(n+1)+A000124(n))`
-/

namespace A328741.P7125887307365297848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A165024 (n + 1) + A000124 n).toNat

end

end A328741.P7125887307365297848

/-! ## A328741.P8013081196761524085

`A060576(n)*A327693(A145018(n+1))`
-/

namespace A328741.P8013081196761524085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A327693 (A145018 (n + 1)).toNat

end

end A328741.P8013081196761524085

/-! ## A328741.P8337793304990787236

`A327693(A145018(n+1)+1-A060576(n))`
-/

namespace A328741.P8337793304990787236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327693 (A145018 (n + 1) + (1 - A060576 n)).toNat

end

end A328741.P8337793304990787236

/-! ## A328741.P10004051257553520163

`A327693(A145018(n+1))%A056300(n+1)`
-/

namespace A328741.P10004051257553520163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327693 (A145018 (n + 1)).toNat) (A056300 (n + 1))

end

end A328741.P10004051257553520163

/-!
# A328742: Number of n-bead necklace structures which are not self-equivalent under a nonzero rotation using a maximum of three different colored beads.

The programs for A328742, there is no canonical definition to state claims against.
-/

/-! ## A328742.P14348964910208517980

`A328743(n)-A328741(A028310(n))`
-/

namespace A328742.P14348964910208517980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 n - A328741 (A028310 n).toNat

end

end A328742.P14348964910208517980

/-! ## A328742.P13545548653512326650

`A328743(n)-A328741(A233583(n+1))`
-/

namespace A328742.P13545548653512326650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 n - A328741 (A233583 (n + 1)).toNat

end

end A328742.P13545548653512326650

/-! ## A328742.P1415629441828166905

`A328743(n)-A328741(A123108(2*n))`
-/

namespace A328742.P1415629441828166905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 n - A328741 (A123108 (2 * n)).toNat

end

end A328742.P1415629441828166905

/-! ## A328742.P1955702542952237375

`A328743(n)-A328741(A000007(n)+n)`
-/

namespace A328742.P1955702542952237375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 n - A328741 (A000007 n + (n : ℤ)).toNat

end

end A328742.P1955702542952237375

/-! ## A328742.P16463327807215013067

`A328740(A233583(n+1))+A327693(A238531(n))`
-/

namespace A328742.P16463327807215013067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328740 (A233583 (n + 1)).toNat + A327693 (A238531 n).toNat

end

end A328742.P16463327807215013067

/-!
# A328743: Number of n-bead necklace structures which are not self-equivalent under a nonzero rotation using a maximum of four different colored beads.

The programs for A328743, there is no canonical definition to state claims against.
-/

/-! ## A328743.P16827068434246936058

`A328742(n)+A328741(A028310(n))`
-/

namespace A328743.P16827068434246936058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 n + A328741 (A028310 n).toNat

end

end A328743.P16827068434246936058

/-! ## A328743.P15221651395518063053

`A328742(n)+A328741(A233583(n+1))`
-/

namespace A328743.P15221651395518063053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 n + A328741 (A233583 (n + 1)).toNat

end

end A328743.P15221651395518063053

/-! ## A328743.P1343504916150624628

`A328742(n)+A328741(A065033(2*n))`
-/

namespace A328743.P1343504916150624628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 n + A328741 (A065033 (2 * n)).toNat

end

end A328743.P1343504916150624628

/-! ## A328743.P10220346193678454452

`A328742(n)+A328741(A123108(2*n))`
-/

namespace A328743.P10220346193678454452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 n + A328741 (A123108 (2 * n)).toNat

end

end A328743.P10220346193678454452

/-! ## A328743.P16812741523562338858

`A328742(n)+A328741(A000007(n)+n)`
-/

namespace A328743.P16812741523562338858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328742 n + A328741 (A000007 n + (n : ℤ)).toNat

end

end A328743.P16812741523562338858

/-!
# A328744: Dirichlet g.f.: Product_{k>=2} (1 + k^(-s))^q(k), where q(k) = number of partitions of k into distinct parts (A000009).

The programs for A328744, there is no canonical definition to state claims against.
-/

/-! ## A328744.P1926732063635116769

`A047966(n+1)-A134451(A300660(n))`
-/

namespace A328744.P1926732063635116769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (n + 1) - A134451 (A300660 n).toNat

end

end A328744.P1926732063635116769

/-!
# A328745: Dirichlet g.f.: Product_{p prime} 1 / (1 - p^(-s))^p.

The programs for A328745, there is no canonical definition to state claims against.
-/

/-! ## A328745.P5296132181172831110

`(A000026(2*(n+1))/2)%A333136(n+1)`
-/

namespace A328745.P5296132181172831110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A000026 (2 * (n + 1)) : ℚ) / 2)) (A333136 (n + 1))

end

end A328745.P5296132181172831110

/-! ## A328745.P10254981400817270630

`A000026(2*(n+1))/A276183(A276185(n+1))`
-/

namespace A328745.P10254981400817270630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (2 * (n + 1)) : ℚ) / (A276183 (A276185 (n + 1)).toNat : ℚ)

end

end A328745.P10254981400817270630

/-! ## A328745.P13153606440311317841

`A000026(2*n+2)/A000005(A089948(n+1))`
-/

namespace A328745.P13153606440311317841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (2 * n + 2) : ℚ) / (A000005 (A089948 (n + 1)).toNat : ℚ)

end

end A328745.P13153606440311317841

/-! ## A328745.P8869947255868968254

`A000026(2*n+2)/A002828(A329148(n+1))`
-/

namespace A328745.P8869947255868968254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (2 * n + 2) : ℚ) / (A002828 (A329148 (n + 1)).toNat : ℚ)

end

end A328745.P8869947255868968254

/-! ## A328745.P71726456415310475

`A000026(2*(n+1))/A000005(A276174(2*n+1))`
-/

namespace A328745.P71726456415310475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (2 * (n + 1)) : ℚ) / (A000005 (A276174 (2 * n + 1)).toNat : ℚ)

end

end A328745.P71726456415310475

/-!
# A328746: Number of loops of order n, considered to be equivalent when they are isomorphic or anti-isomorphic (by reversal of the operator).

The programs for A328746, there is no canonical definition to state claims against.
-/

/-! ## A328746.P2558703417788219425

`(A057771(n)+A057996(n))/2`
-/

namespace A328746.P2558703417788219425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057771 n + A057996 n : ℚ) / 2

end

end A328746.P2558703417788219425

/-! ## A328746.P13878220762620541694

`A014682(A057996(n)+A057771(n))`
-/

namespace A328746.P13878220762620541694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057996 n + A057771 n).toNat

end

end A328746.P13878220762620541694

/-! ## A328746.P357584583501390766

`A014682(A000001(n)+A318986(n)+A057996(n))`
-/

namespace A328746.P357584583501390766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A000001 n + (A318986 n + A057996 n)).toNat

end

end A328746.P357584583501390766

/-!
# A328747: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) is Sum_{i=0..n} (-1)^(n-i)*binomial(n,i)*Sum_{j=0..i} binomial(i,j)^k.

The programs for A328747, there is no canonical definition to state claims against.
-/

/-! ## A328747.P1678304682446415748

`A160160(A081718(n)%A161806(n))`
-/

namespace A328747.P1678304682446415748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (Int.tmod (A081718 n) (A161806 n)).toNat

end

end A328747.P1678304682446415748

/-! ## A328747.P2812455048944464732

`A160160(A290353(n)%A161806(n))`
-/

namespace A328747.P2812455048944464732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160160 (Int.tmod (A290353 n) (A161806 n)).toNat

end

end A328747.P2812455048944464732

/-! ## A328747.P13832222640097348976

`A187220(A290353(n))^A000108(A333351(n))`
-/

namespace A328747.P13832222640097348976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (A290353 n).toNat : ℚ) ^ (A000108 (A333351 n).toNat : ℤ)

end

end A328747.P13832222640097348976

/-! ## A328747.P17758512029018560287

`A187220(A290353(n))^A014963(A047621(n+1))`
-/

namespace A328747.P17758512029018560287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (A290353 n).toNat : ℚ) ^ (A014963 (A047621 (n + 1)).toNat : ℤ)

end

end A328747.P17758512029018560287

/-! ## A328747.P2142942972089373375

`A050723(2^A081718(n))`
-/

namespace A328747.P2142942972089373375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050723 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A081718 n : ℤ))).toNat

end

end A328747.P2142942972089373375

/-!
# A328748: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) is Sum_{i=0..n} (-2)^(n-i)*binomial(n,i)*Sum_{j=0..i} binomial(i,j)^k.

The programs for A328748, there is no canonical definition to state claims against.
-/

/-! ## A328748.P17018971758011700430

`A191591(A000217(n))-A053735(n)`
-/

namespace A328748.P17018971758011700430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191591 (A000217 n).toNat - A053735 n

end

end A328748.P17018971758011700430

/-! ## A328748.P3344837148318722384

`A016342(2*A249027(n+1))`
-/

namespace A328748.P3344837148318722384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016342 (2 * A249027 (n + 1)).toNat

end

end A328748.P3344837148318722384

/-! ## A328748.P8622079370741037778

`A189011(A126646(n))+A057078(n)`
-/

namespace A328748.P8622079370741037778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (A126646 n).toNat + A057078 n

end

end A328748.P8622079370741037778

/-! ## A328748.P4153802559062800437

`A112402(A159314(n))-A112367(n)`
-/

namespace A328748.P4153802559062800437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112402 (A159314 n).toNat - A112367 n

end

end A328748.P4153802559062800437

/-!
# A328749: a(n) = Sum_{k = 0..w and t_k > 0} (-1)^t_k * 2^k, where Sum_{k = 0..w} t_k * 3^k is the ternary representation of n.

The programs for A328749, the canonical program `A328749.P17846108739945119774` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328749 has offset 0).

The definition of A328749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328749.P17846108739945119774

`A289814(n)-A289813(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A328749

/-- `A289814(n)-A289813(n)` -/
def P17846108739945119774.Spec : Prop :=
  ∀ n, P17846108739945119774.a n = A328749 n

theorem P17846108739945119774.correct : P17846108739945119774.Spec := by
  intro n
  simp only [A328749]

end A328749

/-! ## A328749.P11217115234748464915

`2*A289814(n)-A289831(n)`
-/

namespace A328749.P11217115234748464915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289814 n - A289831 n

end

end A328749.P11217115234748464915

namespace A328749

/-- `2*A289814(n)-A289831(n)` -/
def P11217115234748464915.Spec : Prop :=
  ∀ n, P11217115234748464915.a n = A328749 n

theorem P11217115234748464915.correct : P11217115234748464915.Spec := by
  intro n
  simp only [A328749, Nat.add_sub_cancel, A328749.P11217115234748464915.a, A328749.P17846108739945119774.a, A289813, A289813.P9011554254818249259.a, A289814, A289814.P11371932108795153936.a, A289831, A289831.P1355285298190598776.a, A004488, A004488.P15486159278781190577.a, A168237, A168237.P12346762420407185560.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328749

/-! ## A328749.P4734708546278334321

`A289831(n)-2*A289813(n)`
-/

namespace A328749.P4734708546278334321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n - 2 * A289813 n

end

end A328749.P4734708546278334321

namespace A328749

/-- `A289831(n)-2*A289813(n)` -/
def P4734708546278334321.Spec : Prop :=
  ∀ n, P4734708546278334321.a n = A328749 n

theorem P4734708546278334321.correct : P4734708546278334321.Spec := by
  intro n
  simp only [A328749, Nat.add_sub_cancel, A328749.P4734708546278334321.a, A328749.P17846108739945119774.a, A289813, A289813.P9011554254818249259.a, A289814, A289814.P11371932108795153936.a, A289831, A289831.P1355285298190598776.a, A004488, A004488.P15486159278781190577.a, A168237, A168237.P12346762420407185560.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A328749

/-! ## A328749.P12830222686391752552

`A289813(A374362(n))-A289813(n)`
-/

namespace A328749.P12830222686391752552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A374362 n).toNat - A289813 n

end

end A328749.P12830222686391752552

namespace A328749

/-- `A289813(A374362(n))-A289813(n)` -/
def P12830222686391752552.Spec : Prop :=
  ∀ n, P12830222686391752552.a n = A328749 n

end A328749

/-! ## A328749.P4406930629077438280

`A289831(n)-2*A289831(A244042(n))`
-/

namespace A328749.P4406930629077438280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 n - 2 * A289831 (A244042 n).toNat

end

end A328749.P4406930629077438280

namespace A328749

/-- `A289831(n)-2*A289831(A244042(n))` -/
def P4406930629077438280.Spec : Prop :=
  ∀ n, P4406930629077438280.a n = A328749 n

end A328749

/-! ## A328749.P11013634409922646843

`A289813(A300222(n)/2)-A289813(n)`
-/

namespace A328749.P11013634409922646843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (SequenceMachineLib.roundAway ((A300222 n : ℚ) / 2)).toNat - A289813 n

end

end A328749.P11013634409922646843

namespace A328749

/-- `A289813(A300222(n)/2)-A289813(n)` -/
def P11013634409922646843.Spec : Prop :=
  ∀ n, P11013634409922646843.a n = A328749 n

end A328749

/-! ## A328749.P18388152343711336922

`A289813(A244042(n)-A117966(n))-A289813(n)`
-/

namespace A328749.P18388152343711336922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A244042 n - A117966 n).toNat - A289813 n

end

end A328749.P18388152343711336922

namespace A328749

/-- `A289813(A244042(n)-A117966(n))-A289813(n)` -/
def P18388152343711336922.Spec : Prop :=
  ∀ n, P18388152343711336922.a n = A328749 n

end A328749

/-! ## A328749.P382518084861493021

`A328732(A368230(n))`
-/

namespace A328749.P382518084861493021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328732 (A368230 n).toNat

end

end A328749.P382518084861493021

namespace A328749

/-- `A328732(A368230(n))` -/
def P382518084861493021.Spec : Prop :=
  ∀ n, P382518084861493021.a n = A328749 n

end A328749

/-! ## A328749.P13358391088246118348

`A065361(n)-A065361(A004488(n))`
-/

namespace A328749.P13358391088246118348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 n - A065361 (A004488 n).toNat

end

end A328749.P13358391088246118348

namespace A328749

/-- `A065361(n)-A065361(A004488(n))` -/
def P13358391088246118348.Spec : Prop :=
  ∀ n, P13358391088246118348.a n = A328749 n

end A328749

/-! ## A328749.P15361809371923505718

`A289813(A004488(n))-A289813(n)`
-/

namespace A328749.P15361809371923505718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A004488 n).toNat - A289813 n

end

end A328749.P15361809371923505718

namespace A328749

/-- `A289813(A004488(n))-A289813(n)` -/
def P15361809371923505718.Spec : Prop :=
  ∀ n, P15361809371923505718.a n = A328749 n

end A328749

/-! ## A328749.P15089011659376554843

`A289814(n)-A289814(A004488(n))`
-/

namespace A328749.P15089011659376554843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289814 (A004488 n).toNat

end

end A328749.P15089011659376554843

namespace A328749

/-- `A289814(n)-A289814(A004488(n))` -/
def P15089011659376554843.Spec : Prop :=
  ∀ n, P15089011659376554843.a n = A328749 n

end A328749

/-! ## A328749.P16513968645659733175

`A289814(n)-A289814(A256293(n))`
-/

namespace A328749.P16513968645659733175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289814 (A256293 n).toNat

end

end A328749.P16513968645659733175

namespace A328749

/-- `A289814(n)-A289814(A256293(n))` -/
def P16513968645659733175.Spec : Prop :=
  ∀ n, P16513968645659733175.a n = A328749 n

end A328749

/-! ## A328749.P1471482970157063775

`A289814(n)-A289814(2*A244042(n))`
-/

namespace A328749.P1471482970157063775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289814 (2 * A244042 n).toNat

end

end A328749.P1471482970157063775

namespace A328749

/-- `A289814(n)-A289814(2*A244042(n))` -/
def P1471482970157063775.Spec : Prop :=
  ∀ n, P1471482970157063775.a n = A328749 n

end A328749

/-! ## A328749.P7700205977551575351

`A289813(A117966(n)+n)-A289813(n)`
-/

namespace A328749.P7700205977551575351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A117966 n + (n : ℤ)).toNat - A289813 n

end

end A328749.P7700205977551575351

namespace A328749

/-- `A289813(A117966(n)+n)-A289813(n)` -/
def P7700205977551575351.Spec : Prop :=
  ∀ n, P7700205977551575351.a n = A328749 n

end A328749

/-! ## A328749.P17213692870023354180

`A289814(n)-A289814(A117966(n)+n)`
-/

namespace A328749.P17213692870023354180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289814 (A117966 n + (n : ℤ)).toNat

end

end A328749.P17213692870023354180

namespace A328749

/-- `A289814(n)-A289814(A117966(n)+n)` -/
def P17213692870023354180.Spec : Prop :=
  ∀ n, P17213692870023354180.a n = A328749 n

end A328749

/-! ## A328749.P4242074023624859704

`2*A289814(n)-(A343229(n+1)+A289814(2*n+1))`
-/

namespace A328749.P4242074023624859704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289814 n - (A343229 (n + 1) + A289814 (2 * n + 1))

end

end A328749.P4242074023624859704

namespace A328749

/-- `2*A289814(n)-(A343229(n+1)+A289814(2*n+1))` -/
def P4242074023624859704.Spec : Prop :=
  ∀ n, P4242074023624859704.a n = A328749 n

end A328749

/-! ## A328749.P10829460215034159622

`A289814(n)-A289814(2*A338242(n))`
-/

namespace A328749.P10829460215034159622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 n - A289814 (2 * A338242 n).toNat

end

end A328749.P10829460215034159622

namespace A328749

/-- `A289814(n)-A289814(2*A338242(n))` -/
def P10829460215034159622.Spec : Prop :=
  ∀ n, P10829460215034159622.a n = A328749 n

end A328749

/-!
# A328750: Constant term in the expansion of (-1 + (1 + w) * (1 + x) * (1 + y) * (1 + z) + (1 + 1/w) * (1 + 1/x) * (1 + 1/y) * (1 + 1/z))^n.

The programs for A328750, there is no canonical definition to state claims against.
-/

/-! ## A328750.P9800680098775772242

`A328747(A055999(n+3))`
-/

namespace A328750.P9800680098775772242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (A055999 (n + 3)).toNat

end

end A328750.P9800680098775772242

/-! ## A328750.P7895555500512983031

`A328747(A056119(n)+15)`
-/

namespace A328750.P7895555500512983031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (A056119 n + 15).toNat

end

end A328750.P7895555500512983031

/-! ## A328750.P3925985671936774136

`A328747(eq[5, A025581(n)])`
-/

namespace A328750.P3925985671936774136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328750.P3925985671936774136

/-! ## A328750.P16019837056462208653

`A328747(eq[11, A099375(n)])`
-/

namespace A328750.P16019837056462208653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328750.P16019837056462208653

/-! ## A328750.P18265216686921335817

`A328747(Δ[Δ[A095667(n)]])`
-/

namespace A328750.P18265216686921335817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (f1 (n + 1) - f1 n).toNat

end

end A328750.P18265216686921335817

/-!
# A328751: Constant term in the expansion of (-2 + (1 + w) * (1 + x) * (1 + y) * (1 + z) + (1 + 1/w) * (1 + 1/x) * (1 + 1/y) * (1 + 1/z))^n.

The programs for A328751, there is no canonical definition to state claims against.
-/

/-! ## A328751.P15444344332412506855

`A328748(A055999(n+3))`
-/

namespace A328751.P15444344332412506855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (A055999 (n + 3)).toNat

end

end A328751.P15444344332412506855

/-! ## A328751.P3239149621820488841

`A328748(A056119(n)+15)`
-/

namespace A328751.P3239149621820488841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (A056119 n + 15).toNat

end

end A328751.P3239149621820488841

/-! ## A328751.P16186343910609280919

`A328748(eq[5, A025581(n)])`
-/

namespace A328751.P16186343910609280919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328751.P16186343910609280919

/-! ## A328751.P7995271928444372878

`A328748(eq[6, A193739(n)])`
-/

namespace A328751.P7995271928444372878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328751.P7995271928444372878

/-! ## A328751.P15763040597506924426

`A328748(eq[11, A099375(n)])`
-/

namespace A328751.P15763040597506924426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328748 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328751.P15763040597506924426

/-!
# A328761: The least integer k >= 0 for which A328578(k) = A257993(A276086(A276086(k))) = n.

The programs for A328761, there is no canonical definition to state claims against.
-/

/-! ## A328761.P13493470559899389272

`A328631(∑[n+1])`
-/

namespace A328761.P13493470559899389272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328631 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A328761.P13493470559899389272

/-! ## A328761.P392088333764254853

`A328631(A000217(n+1))^ceil(acot(n))`
-/

namespace A328761.P392088333764254853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328631 (A000217 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A328761.P392088333764254853

/-! ## A328761.P1453483957774306503

`A328631(A000217(n+1))%A246562(n+1)`
-/

namespace A328761.P1453483957774306503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328631 (A000217 (n + 1)).toNat) (A246562 (n + 1))

end

end A328761.P1453483957774306503

/-! ## A328761.P12043269632600543008

`A007318(C(2, n))*A328631(A000217(n+1))`
-/

namespace A328761.P12043269632600543008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A328631 (A000217 (n + 1)).toNat

end

end A328761.P12043269632600543008

/-! ## A328761.P17791936421064772002

`A000005(C(2, n)!)*A328631(A000217(n+1))`
-/

namespace A328761.P17791936421064772002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial (Nat.choose 2 n)) * A328631 (A000217 (n + 1)).toNat

end

end A328761.P17791936421064772002

/-!
# A328762: Numbers n for which 2 < A257993(A276086(A276086(n))) < A257993(n), where A276086 converts the primorial base expansion of n into its prime product form, and A257993 returns the index of the least prime not present in its argument.

The programs for A328762, there is no canonical definition to state claims against.
-/

/-! ## A328762.P15686480515160041278

`∩[A328634(n+1), A360146(n+1)]`
-/

namespace A328762.P15686480515160041278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A328762.P15686480515160041278

/-!
# A328763: a(n) = A328613(A276086(n)).

The programs for A328763, there is no canonical definition to state claims against.
-/

/-! ## A328763.P2519611038795018957

`A328613(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A328763.P2519611038795018957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A276086 n).toNat

end

end A328763.P2519611038795018957

/-! ## A328763.P6436528992957454216

`A328613(A351225(n)+n)`
-/

namespace A328763.P6436528992957454216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A351225 n + (n : ℤ)).toNat

end

end A328763.P6436528992957454216

/-! ## A328763.P10751424564960963826

`A328613(A328580(n)+A328476(n))`
-/

namespace A328763.P10751424564960963826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A328580 n + A328476 n).toNat

end

end A328763.P10751424564960963826

/-! ## A328763.P13673598578818769717

`A328613(A328844(n)+A328843(n))`
-/

namespace A328763.P13673598578818769717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A328844 n + A328843 n).toNat

end

end A328763.P13673598578818769717

/-! ## A328763.P8950030856323431392

`A328613(A358764(n)+A324895(n))`
-/

namespace A328763.P8950030856323431392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A358764 n + A324895 n).toNat

end

end A328763.P8950030856323431392

/-! ## A328763.P13643736581327399320

`A328613(A327860(n)-A342016(n))`
-/

namespace A328763.P13643736581327399320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A327860 n - A342016 n).toNat

end

end A328763.P13643736581327399320

/-! ## A328763.P15958071284285699683

`A328613(A328475(n)*A328580(n))`
-/

namespace A328763.P15958071284285699683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A328475 n * A328580 n).toNat

end

end A328763.P15958071284285699683

/-! ## A328763.P11866842103247769876

`A328613(A328571(n)*A328572(n))`
-/

namespace A328763.P11866842103247769876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A328571 n * A328572 n).toNat

end

end A328763.P11866842103247769876

/-! ## A328763.P4797255878184445814

`A328613(A327858(n)*A351231(n))`
-/

namespace A328763.P4797255878184445814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328613 (A327858 n * A351231 n).toNat

end

end A328763.P4797255878184445814

/-!
# A328766: Number of nonleading zeros in primorial base expansion of A276086(n).

The programs for A328766, there is no canonical definition to state claims against.
-/

/-! ## A328766.P1283704826225746517

`A328620(A276086(n))`
-/

namespace A328766.P1283704826225746517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A276086 n).toNat

end

end A328766.P1283704826225746517

/-! ## A328766.P17638440585454371935

`A001221(A328763(n))-1`
-/

namespace A328766.P17638440585454371935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A328763 n).toNat - 1

end

end A328766.P17638440585454371935

/-! ## A328766.P2500309911656704199

`A079067(A276087(n))`
-/

namespace A328766.P2500309911656704199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A276087 n).toNat

end

end A328766.P2500309911656704199

/-! ## A328766.P14969660490487605815

`A328620(A328843(n))`
-/

namespace A328766.P14969660490487605815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328620 (A328843 n).toNat

end

end A328766.P14969660490487605815

/-! ## A328766.P13755706500225989489

`A328404(n)-A328614(A328843(n))`
-/

namespace A328766.P13755706500225989489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328404 n - A328614 (A328843 n).toNat

end

end A328766.P13755706500225989489

/-! ## A328766.P16442515451370597819

`∑{p}[A328763(n), A328771(#)]-1`
-/

namespace A328766.P16442515451370597819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328771 p - 1

end

end A328766.P16442515451370597819

/-! ## A328766.P12576297425710199808

`∑{p}[A328763(n), A328772(#)]-1`
-/

namespace A328766.P12576297425710199808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328772 p - 1

end

end A328766.P12576297425710199808

/-! ## A328766.P919373848517362112

`A001222(∏{p}[A328763(n), #])-1`
-/

namespace A328766.P919373848517362112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) - 1

end

end A328766.P919373848517362112

/-! ## A328766.P15923734533166120612

`A004743(∑{p}[A328763(n), A328771(#)])`
-/

namespace A328766.P15923734533166120612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004743 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328771 p).toNat

end

end A328766.P15923734533166120612

/-! ## A328766.P1910738481601321539

`A014157(∑{p}[A328763(n), A328772(#)])`
-/

namespace A328766.P1910738481601321539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014157 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A328772 p).toNat

end

end A328766.P1910738481601321539

/-!
# A328768: The first primorial based variant of arithmetic derivative: a(prime(i)) = A002110(i-1), where prime(i) = A000040(i), a(u*v) = a(u)*v + u*a(v), with a(0) = a(1) = 0.

The programs for A328768, there is no canonical definition to state claims against.
-/

/-! ## A328768.P10618797882679794980

`A374123(n)+A000007(A003945(n))`
-/

namespace A328768.P10618797882679794980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374123 n + A000007 (A003945 n).toNat

end

end A328768.P10618797882679794980

/-! ## A328768.P1355682365669668315

`A374123(n)+A000122(A048573(n))`
-/

namespace A328768.P1355682365669668315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374123 n + A000122 (A048573 n).toNat

end

end A328768.P1355682365669668315

/-! ## A328768.P16030085789477052351

`A374123(n)+A000007(A056040(n))`
-/

namespace A328768.P16030085789477052351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374123 n + A000007 (A056040 n).toNat

end

end A328768.P16030085789477052351

/-! ## A328768.P17972601762870252783

`A374123(n)+A000007(A118165(n))`
-/

namespace A328768.P17972601762870252783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374123 n + A000007 (A118165 n).toNat

end

end A328768.P17972601762870252783

/-! ## A328768.P14832235657273654024

`A374123(n)/A316782(A087640(n))`
-/

namespace A328768.P14832235657273654024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374123 n : ℚ) / (A316782 (A087640 n).toNat : ℚ)

end

end A328768.P14832235657273654024

/-!
# A328769: The second primorial based variant of arithmetic derivative: a(p) = A034386(p) for p prime, a(u*v) = a(u)*v + u*a(v), with a(0) = a(1) = 0.

The programs for A328769, there is no canonical definition to state claims against.
-/

/-! ## A328769.P13912849635349003002

`n*A276085(floor(1/(n+1)+n))`
-/

namespace A328769.P13912849635349003002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276085 ⌊1 / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A328769.P13912849635349003002

/-! ## A328769.P1502040195226459822

`lcm(2, n*A276085(A028310(n)))`
-/

namespace A328769.P1502040195226459822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n : ℤ) * A276085 (A028310 n).toNat)

end

end A328769.P1502040195226459822

/-! ## A328769.P2041309496743957260

`A000007(n+1)+n*A276085(A028310(n))`
-/

namespace A328769.P2041309496743957260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (n : ℤ) * A276085 (A028310 n).toNat

end

end A328769.P2041309496743957260

/-! ## A328769.P2024992908209139817

`n*A105812(n+1)²*A276085(A028310(n))`
-/

namespace A328769.P2024992908209139817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A105812 (n + 1) ^ 2 * A276085 (A028310 n).toNat)

end

end A328769.P2024992908209139817

/-! ## A328769.P8224684932103848081

`n*A105812(2*n+1)*A276085(A028310(n))`
-/

namespace A328769.P8224684932103848081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A105812 (2 * n + 1) * A276085 (A028310 n).toNat)

end

end A328769.P8224684932103848081

/-! ## A328769.P18121332719456925094

`n*A014963(4*n+2)*A276085(A028310(n))`
-/

namespace A328769.P18121332719456925094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A014963 (4 * n + 2) * A276085 (A028310 n).toNat)

end

end A328769.P18121332719456925094

/-! ## A328769.P7330313511734198723

`A276085(A028310(n))*A289234(A289234(n))`
-/

namespace A328769.P7330313511734198723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A028310 n).toNat * A289234 (A289234 n).toNat

end

end A328769.P7330313511734198723

/-!
# A328770: Numbers in whose primorial base expansion any digit is at most half of the maximal allowed digit for that position.

The programs for A328770, there is no canonical definition to state claims against.
-/

/-! ## A328770.P17756503905575537367

`A328849(n+1)/2`
-/

namespace A328770.P17756503905575537367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328849 (n + 1) : ℚ) / 2

end

end A328770.P17756503905575537367

/-! ## A328770.P5346368657477578050

`record[A328622(n)-n]`
-/

namespace A328770.P5346368657477578050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328770.P5346368657477578050

/-! ## A328770.P1004571244886294506

`record[A328622(2*n)/2]`
-/

namespace A328770.P1004571244886294506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328622 (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A328770.P1004571244886294506

/-! ## A328770.P2172187962928196478

`eq[2*n+1, A328622(n+1)]`
-/

namespace A328770.P2172187962928196478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328770.P2172187962928196478

/-! ## A328770.P7690049682953055204

`eq[A278226(n)², A278226(2*n)]`
-/

namespace A328770.P7690049682953055204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278226 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P7690049682953055204

/-! ## A328770.P8060587585632759698

`eq[2*A276150(n), A276150(2*n)]`
-/

namespace A328770.P8060587585632759698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P8060587585632759698

/-! ## A328770.P7608854716157587458

`A005843(eq[4*n, A328622(2*n)])`
-/

namespace A328770.P7608854716157587458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A328770.P7608854716157587458

/-! ## A328770.P2184459900442972406

`eq[A324895(n+1)², A324895(2*n+1)]`
-/

namespace A328770.P2184459900442972406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324895 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P2184459900442972406

/-! ## A328770.P10298908105223132534

`eq[1, A001511(A324655(2*n))]`
-/

namespace A328770.P10298908105223132534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A324655 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328770.P10298908105223132534

/-! ## A328770.P2790092531911902034

`eq[A005843(n)², A328622(n)²]`
-/

namespace A328770.P2790092531911902034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P2790092531911902034

/-! ## A328770.P16547322971532301539

`eq[A014601(n)², A328622(n)²]`
-/

namespace A328770.P16547322971532301539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P16547322971532301539

/-! ## A328770.P6365604377857074472

`eq[A328622(n+1)+1, A005843(n+1)]`
-/

namespace A328770.P6365604377857074472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P6365604377857074472

/-! ## A328770.P10991878363655062824

`eq[A328622(n+1)+2, A014601(n+1)]`
-/

namespace A328770.P10991878363655062824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P10991878363655062824

/-! ## A328770.P9482797764781045508

`2*eq[A014601(2*n), A328622(2*n)]`
-/

namespace A328770.P9482797764781045508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P9482797764781045508

/-! ## A328770.P15200310459484521320

`A005843(eq[A005843(n), A328622(n)]/2)`
-/

namespace A328770.P15200310459484521320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2)).toNat

end

end A328770.P15200310459484521320

/-! ## A328770.P11664952945883964981

`A014601(eq[A014601(n), A328622(n)])/2`
-/

namespace A328770.P11664952945883964981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014601 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) : ℚ) / 2

end

end A328770.P11664952945883964981

/-! ## A328770.P16578367026501780030

`eq[2*A342002(n), A342002(2*n)]`
-/

namespace A328770.P16578367026501780030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342002 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P16578367026501780030

/-! ## A328770.P5746582053649425364

`eq[A358764(n+1)², A358764(2*n+1)]`
-/

namespace A328770.P5746582053649425364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358764 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P5746582053649425364

/-! ## A328770.P3683094692182262988

`eq[A347396(2*n)+1, A347396(2*n+1)]`
-/

namespace A328770.P3683094692182262988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347396 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347396 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328770.P3683094692182262988

/-! ## A328770.P16081184422228319001

`eq[1, A001511(A324655(n))]/2`
-/

namespace A328770.P16081184422228319001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A324655 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A328770.P16081184422228319001

/-!
# A328771: Minimal number of primorials (A002110) that add to A328768(n), where A328768 is the first primorial based variant of arithmetic derivative.

The programs for A328771, there is no canonical definition to state claims against.
-/

/-! ## A328771.P5572588512792584000

`A276150(A328768(n))`
-/

namespace A328771.P5572588512792584000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A328768 n).toNat

end

end A328771.P5572588512792584000

/-! ## A328771.P1905442017134587844

`A001222(or(A119268(n), A222237(n)))`
-/

namespace A328771.P1905442017134587844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A119268 n) (A222237 n)).toNat

end

end A328771.P1905442017134587844

/-! ## A328771.P13708770100810666956

`A000019(A003963(n+1))%A130969(n)`
-/

namespace A328771.P13708770100810666956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000019 (A003963 (n + 1)).toNat) (A130969 n)

end

end A328771.P13708770100810666956

/-!
# A328772: Minimal number of primorials (A002110) that add to A328769(n), where A328769 is the second primorial based variant of arithmetic derivative.

The programs for A328772, there is no canonical definition to state claims against.
-/

/-! ## A328772.P15330017436318976668

`A276150(A328769(n))`
-/

namespace A328772.P15330017436318976668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 (A328769 n).toNat

end

end A328772.P15330017436318976668

/-! ## A328772.P4300296260581846020

`A115118(n)%A119100(A006519(2*(n+1)))`
-/

namespace A328772.P4300296260581846020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115118 n) (A119100 (A006519 (2 * (n + 1))).toNat)

end

end A328772.P4300296260581846020

/-!
# A328773: Irregular triangle read by rows: T(n,k) is the number of colored digraphs on n nodes with color scheme given by the partitions of n in canonical ordering.

The programs for A328773, there is no canonical definition to state claims against.
-/

/-! ## A328773.P8031914954925825005

`A329541(n^floor(n^(1/3)))`
-/

namespace A328773.P8031914954925825005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329541 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℤ))).toNat

end

end A328773.P8031914954925825005

/-! ## A328773.P9586614866289407948

`A330693(n^floor(n^(1/3)))`
-/

namespace A328773.P9586614866289407948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330693 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋ : ℤ))).toNat

end

end A328773.P9586614866289407948

/-!
# A328775: Product_{n>=1} (1 + x^n)^a(n) = 1 + Sum_{n>=1} tau(n) * x^n, where tau = A000005.

The programs for A328775, there is no canonical definition to state claims against.
-/

/-! ## A328775.P17086106841858797835

`∑{d}[A006519(n+1), A320779((n+1)/#)]`
-/

namespace A328775.P17086106841858797835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A320779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328775.P17086106841858797835

/-! ## A328775.P11651729049256120370

`∑{d}[n+1, A036987(#-1)*A320779((n+1)/#)]`
-/

namespace A328775.P11651729049256120370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A320779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328775.P11651729049256120370

/-!
# A328776: Product_{n>=1} (1 + x^n)^a(n) = 1 + Sum_{n>=1} sigma(n) * x^n, where sigma = A000203.

The programs for A328776, there is no canonical definition to state claims against.
-/

/-! ## A328776.P7784905605002692007

`∑{d}[n+1, A036987(#-1)*A320780((n+1)/#)]`
-/

namespace A328776.P7784905605002692007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A320780 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328776.P7784905605002692007

/-!
# A328777: Product_{n>=1} (1 + x^n)^a(n) = 1 + Sum_{n>=1} x^prime(n).

The programs for A328777, there is no canonical definition to state claims against.
-/

/-! ## A328777.P8520250836148919660

`∑{d}[n+1, A036987(#-1)*A308298((n+1)/#)]`
-/

namespace A328777.P8520250836148919660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A308298 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A328777.P8520250836148919660

/-! ## A328777.P343992173662771206

`round(A023901(n+1)/A294574(n+1))`
-/

namespace A328777.P343992173662771206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023901 (n + 1) : ℚ) / (A294574 (n + 1) : ℚ))

end

end A328777.P343992173662771206

/-! ## A328777.P11438880051783512988

`A348128(n+1)-A144598(A288324(n))`
-/

namespace A328777.P11438880051783512988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348128 (n + 1) - A144598 (A288324 n).toNat

end

end A328777.P11438880051783512988

/-! ## A328777.P2738237351271308932

`xor(A326291(A108917(n)), A348128(n+1))`
-/

namespace A328777.P2738237351271308932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A326291 (A108917 n).toNat) (A348128 (n + 1))

end

end A328777.P2738237351271308932

/-! ## A328777.P9146777741768311329

`A348128(n+1)-val(A045823(n), A124827(n+4))`
-/

namespace A328777.P9146777741768311329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348128 (n + 1) - (SequenceMachineLib.valuation (A045823 n).toNat (A124827 (n + 4)).toNat : ℤ)

end

end A328777.P9146777741768311329

/-!
# A328778: Number of indecomposable closed walks of length 2n along the edges of a cube based at a vertex.

The programs for A328778, the canonical program `A328778.P18059669469516754725` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328778 has offset 0).

The definition of A328778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328778.P18059669469516754725

`7*a(n-1)` with `a(0)=1, a(1)=3, a(2)=12`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328778

/-- `7*a(n-1)` -/
def P18059669469516754725.Spec : Prop :=
  ∀ n, (P18059669469516754725.a n : ℤ) = A328778 n

theorem P18059669469516754725.correct : P18059669469516754725.Spec := by
  intro n
  simp only [A328778]

end A328778

/-! ## A328778.P13696972539917969040

`ogf((-1+4x+9x^2)/(-1+7x))`
-/

namespace A328778.P13696972539917969040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, -9] [1, -7] n

end

end A328778.P13696972539917969040

namespace A328778

/-- `ogf((-1+4x+9x^2)/(-1+7x))` -/
def P13696972539917969040.Spec : Prop :=
  ∀ n, P13696972539917969040.a n = A328778 n

end A328778

/-! ## A328778.P17671891400256240865

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A328778.P17671891400256240865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A328778.P17671891400256240865

namespace A328778

/-- `abs(∏[-a(n-1)])` -/
def P17671891400256240865.Spec : Prop :=
  ∀ n, P17671891400256240865.a n = A328778 n

end A328778

/-! ## A328778.P8108117281625224070

`7*floor(a(A023443(n)))` with `a(0)=1, a(1)=3, a(2)=12`

`floor` is left out, it is the identity on integers.
-/

namespace A328778.P8108117281625224070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  7 * a (A023443 n).toNat

end

end A328778.P8108117281625224070

namespace A328778

/-- `7*floor(a(A023443(n)))` -/
def P8108117281625224070.Spec : Prop :=
  ∀ n, (P8108117281625224070.a n : ℤ) = A328778 n

end A328778

/-! ## A328778.P16345793379647390239

`ceil(A055270(n)/A165024(n+1))`
-/

namespace A328778.P16345793379647390239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A055270 n : ℚ) / (A165024 (n + 1) : ℚ)⌉

end

end A328778.P16345793379647390239

namespace A328778

/-- `ceil(A055270(n)/A165024(n+1))` -/
def P16345793379647390239.Spec : Prop :=
  ∀ n, P16345793379647390239.a n = A328778 n

end A328778

/-!
# A328779: a(n) is the number of unlabeled unrooted trees (as in A000055) on n nodes with one designated node (exclusive) or one designated edge.

The programs for A328779, there is no canonical definition to state claims against.
-/

/-! ## A328779.P8549268807895179445

`A027852(A028310(n))+A000081(n)`
-/

namespace A328779.P8549268807895179445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (A028310 n).toNat + A000081 n

end

end A328779.P8549268807895179445

/-! ## A328779.P14183939430977473132

`A027852(A028310(n))+A211192(n)+2*A222379(n)`
-/

namespace A328779.P14183939430977473132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (A028310 n).toNat + (A211192 n + 2 * A222379 n)

end

end A328779.P14183939430977473132

/-! ## A328779.P15249229700690633608

`A027852(A028310(n))+A038001(2*n+1)-A174145(n)`
-/

namespace A328779.P15249229700690633608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (A028310 n).toNat + (A038001 (2 * n + 1) - A174145 n)

end

end A328779.P15249229700690633608

/-! ## A328779.P6507097783355809164

`A027852(A028310(n))+A213674(n)-A213683(n)`
-/

namespace A328779.P6507097783355809164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027852 (A028310 n).toNat + (A213674 n - A213683 n)

end

end A328779.P6507097783355809164

/-! ## A328779.P3553237132664465285

`A106234(∑[n]+2)+A027852(A028310(n))`
-/

namespace A328779.P3553237132664465285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A027852 (A028310 n).toNat

end

end A328779.P3553237132664465285

/-! ## A328779.P2640252722902394515

`A000081(n)+A106234(A152950(n+1))%A369289(n)`
-/

namespace A328779.P2640252722902394515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n + Int.tmod (A106234 (A152950 (n + 1)).toNat) (A369289 n)

end

end A328779.P2640252722902394515

/-! ## A328779.P6211408944717798508

`(A106234(A152950(n+1))+A000081(n))%A000106(n+2)`
-/

namespace A328779.P6211408944717798508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106234 (A152950 (n + 1)).toNat + A000081 n) (A000106 (n + 2))

end

end A328779.P6211408944717798508

/-!
# A328780: Nonnegative integers k such that k and k^2 have the same number of nonzero digits.

The programs for A328780, there is no canonical definition to state claims against.
-/

/-! ## A328780.P3203807419448930761

`lt[A004086(n²), 10]`
-/

namespace A328780.P3203807419448930761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328780.P3203807419448930761

/-! ## A328780.P13278748124523271869

`lt[A262463(round(acot(n)+n)), 4]`
-/

namespace A328780.P13278748124523271869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262463 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328780.P13278748124523271869

/-! ## A328780.P9009756516014168178

`lt[A262463(round(sqrt(n²+1))), 4]`
-/

namespace A328780.P9009756516014168178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262463 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328780.P9009756516014168178

/-! ## A328780.P15307716473294508336

`eq[A002993(n), A004086(n²)]`
-/

namespace A328780.P15307716473294508336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328780.P15307716473294508336

/-! ## A328780.P644705941545497531

`eq[A004086(n²), A004159(n)]`
-/

namespace A328780.P644705941545497531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328780.P644705941545497531

/-!
# A328781: Nonnegative integers k such that k and k^2 contain the same number of zero digits in their decimal expansion.

The programs for A328781, the canonical program `A328781.P14652408642436878872` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328781 has offset 1).

The definition of A328781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4678 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328781.P14652408642436878872

`eq[A055641(n), A086008(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A328781

/-- `eq[A055641(n), A086008(n)]` -/
def P14652408642436878872.Spec : Prop :=
  ∀ n, (P14652408642436878872.a n : ℤ) = A328781 (n + 1)

theorem P14652408642436878872.correct : P14652408642436878872.Spec := by
  intro n
  simp only [A328781, Nat.add_sub_cancel]

end A328781

/-! ## A328781.P16216399310825829693

`lt[n-1, A098736(n²)]`
-/

namespace A328781.P16216399310825829693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098736 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328781.P16216399310825829693

namespace A328781

/-- `lt[n-1, A098736(n²)]` -/
def P16216399310825829693.Spec : Prop :=
  ∀ n, (P16216399310825829693.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P13790369331678911362

`lt[0, A007954(A253909(n))]`
-/

namespace A328781.P13790369331678911362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A253909 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A328781.P13790369331678911362

namespace A328781

/-- `lt[0, A007954(A253909(n))]` -/
def P13790369331678911362.Spec : Prop :=
  ∀ n, (P13790369331678911362.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P14798421214885510494

`eq[A000007(n), A055641(n²)]`
-/

namespace A328781.P14798421214885510494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328781.P14798421214885510494

namespace A328781

/-- `eq[A000007(n), A055641(n²)]` -/
def P14798421214885510494.Spec : Prop :=
  ∀ n, (P14798421214885510494.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P5537481540906109454

`eq[A000007(n²), A086008(n)]`
-/

namespace A328781.P5537481540906109454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328781.P5537481540906109454

namespace A328781

/-- `eq[A000007(n²), A086008(n)]` -/
def P5537481540906109454.Spec : Prop :=
  ∀ n, (P5537481540906109454.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P7435080725797927397

`eq[A055641(n²), A055641(n)]`
-/

namespace A328781.P7435080725797927397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328781.P7435080725797927397

namespace A328781

/-- `eq[A055641(n²), A055641(n)]` -/
def P7435080725797927397.Spec : Prop :=
  ∀ n, (P7435080725797927397.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P16487727606205156062

`lt[A060208(n+1), A007954(n²)]`
-/

namespace A328781.P16487727606205156062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328781.P16487727606205156062

namespace A328781

/-- `lt[A060208(n+1), A007954(n²)]` -/
def P16487727606205156062.Spec : Prop :=
  ∀ n, (P16487727606205156062.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P1848249519648177575

`lt[A240329(3*n+1), A007954(n²)]`
-/

namespace A328781.P1848249519648177575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240329 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328781.P1848249519648177575

namespace A328781

/-- `lt[A240329(3*n+1), A007954(n²)]` -/
def P1848249519648177575.Spec : Prop :=
  ∀ n, (P1848249519648177575.a n : ℤ) = A328781 (n + 1)

end A328781

/-! ## A328781.P10459075353663500048

`eq[A086008(n), A151933(n)]`
-/

namespace A328781.P10459075353663500048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328781.P10459075353663500048

namespace A328781

/-- `eq[A086008(n), A151933(n)]` -/
def P10459075353663500048.Spec : Prop :=
  ∀ n, (P10459075353663500048.a n : ℤ) = A328781 (n + 1)

end A328781

/-!
# A328782: Integers k such that k and k^2 contain the same number > 0 of digits zero in their decimal expansion.

The programs for A328782, the canonical program `A328782.P8610872461080156173` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328782 has offset 1).

The definition of A328782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A328782.P8610872461080156173

`∩[A011540(n+1), A328781(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A328782

/-- `∩[A011540(n+1), A328781(n+1)]` -/
def P8610872461080156173.Spec : Prop :=
  ∀ n, (P8610872461080156173.a n : ℤ) = A328782 (n + 1)

theorem P8610872461080156173.correct : P8610872461080156173.Spec := by
  intro n
  simp only [A328782, Nat.add_sub_cancel]

end A328782

/-! ## A328782.P18178360448854146065

`eq[A005408(A330633(n)), A086008(n)]`
-/

namespace A328782.P18178360448854146065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A330633 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328782.P18178360448854146065

namespace A328782

/-- `eq[A005408(A330633(n)), A086008(n)]` -/
def P18178360448854146065.Spec : Prop :=
  ∀ n, (P18178360448854146065.a n : ℤ) = A328782 (n + 1)

end A328782

/-! ## A328782.P1001450185020810470

`eq[A001316(A321243(n)), A086008(n)]`
-/

namespace A328782.P1001450185020810470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A321243 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328782.P1001450185020810470

namespace A328782

/-- `eq[A001316(A321243(n)), A086008(n)]` -/
def P1001450185020810470.Spec : Prop :=
  ∀ n, (P1001450185020810470.a n : ℤ) = A328782 (n + 1)

end A328782

/-! ## A328782.P2688377119990244451

`eq[A001316(A098736(n)), A086008(n)]`
-/

namespace A328782.P2688377119990244451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A098736 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328782.P2688377119990244451

namespace A328782

/-- `eq[A001316(A098736(n)), A086008(n)]` -/
def P2688377119990244451.Spec : Prop :=
  ∀ n, (P2688377119990244451.a n : ℤ) = A328782 (n + 1)

end A328782

/-!
# A328783: Numbers k such that k and k^2 contain at least one zero but not the same number of 0's.

The programs for A328783, there is no canonical definition to state claims against.
-/

/-! ## A328783.P10981243813201107301

`lt[A001316(A321243(n)), A086008(n)]`
-/

namespace A328783.P10981243813201107301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A321243 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328783.P10981243813201107301

/-! ## A328783.P13476170432936916331

`lt[A291766(A098736(n)), A086008(n)]`
-/

namespace A328783.P13476170432936916331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A098736 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328783.P13476170432936916331

/-! ## A328783.P14605146809873553672

`lt[A028907(n), A059995(A156040(n))]`
-/

namespace A328783.P14605146809873553672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A156040 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328783.P14605146809873553672

/-! ## A328783.P163784590744158603

`lt[A057427(A156040(n)), A086008(n)]`
-/

namespace A328783.P163784590744158603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A156040 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086008 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328783.P163784590744158603

/-! ## A328783.P5189550893515666367

`lt[A028907(n), A054899(A004125(n+1))]`
-/

namespace A328783.P5189550893515666367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028907 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A004125 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A328783.P5189550893515666367

/-!
# A328785: Expansion of q^(-1/3) * (1/3) * b(q)*c(q)/a(q)^2 in powers of q where a(), b(), c() are cubic AGM functions.

The programs for A328785, there is no canonical definition to state claims against.
-/

/-! ## A328785.P7123079344996235983

`A051273(n)/3`
-/

namespace A328785.P7123079344996235983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051273 n : ℚ) / 3

end

end A328785.P7123079344996235983

/-!
# A328787: Number of distinct sizes of equilateral triangles with vertices in an equilateral triangular array of points with n rows.

The programs for A328787, there is no canonical definition to state claims against.
-/

/-! ## A328787.P7856619434285651088

`A002264(A329988(Δ[A014125(n)]))`
-/

namespace A328787.P7856619434285651088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A329988 (f1 (n + 1) - f1 n).toNat).toNat

end

end A328787.P7856619434285651088

/-! ## A328787.P7804616181460702677

`∑[A025423(A130233(A023607(n)))]`
-/

namespace A328787.P7804616181460702677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025423 (A130233 (A023607 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A328787.P7804616181460702677

/-! ## A328787.P11184920337986328855

`eq[A025664(n+1), A382954(n)]`
-/

namespace A328787.P11184920337986328855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A328787.P11184920337986328855

/-! ## A328787.P3123440389764445790

`A204553(A372400(n))`
-/

namespace A328787.P3123440389764445790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A372400 n).toNat

end

end A328787.P3123440389764445790

/-!
# A328788: Expansion of psi(x^6)^5/psi(-x^3) * (f(-x)/f(-x^4))^3 in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A328788, there is no canonical definition to state claims against.
-/

/-! ## A328788.P12739703890481769197

`A176040(n)*A321527(n)`
-/

namespace A328788.P12739703890481769197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n * A321527 n

end

end A328788.P12739703890481769197

/-! ## A328788.P9632371821063576966

`log2(A040015(n))*A321527(n)`
-/

namespace A328788.P9632371821063576966
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040015 n : ℝ) * (A321527 n : ℝ)

end

end A328788.P9632371821063576966

/-! ## A328788.P9273474089521963135

`A153284(n+1)*A321527(n)`
-/

namespace A328788.P9273474089521963135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (n + 1) * A321527 n

end

end A328788.P9273474089521963135

/-! ## A328788.P2411140170354123338

`(2-A062157(n))*A321527(n)`
-/

namespace A328788.P2411140170354123338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A062157 n) * A321527 n

end

end A328788.P2411140170354123338

/-! ## A328788.P2363238922684966900

`A010873(A004273(n))*A224226(n)`
-/

namespace A328788.P2363238922684966900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A004273 n).toNat * A224226 n

end

end A328788.P2363238922684966900

/-! ## A328788.P16514541249657155387

`Δ[A014601(n)]*A321527(n)`
-/

namespace A328788.P16514541249657155387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321527 n

end

end A328788.P16514541249657155387

/-! ## A328788.P17877803042869727198

`Δ[A053438(n)]*A321527(n)`
-/

namespace A328788.P17877803042869727198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A321527 n

end

end A328788.P17877803042869727198

/-! ## A328788.P15141768916467548094

`A019427(A019427(n))*A224226(n)`
-/

namespace A328788.P15141768916467548094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A019427 n).toNat * A224226 n

end

end A328788.P15141768916467548094

/-! ## A328788.P16350294395809113171

`A019427(A019427(n))*A321527(n)`
-/

namespace A328788.P16350294395809113171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A019427 n).toNat * A321527 n

end

end A328788.P16350294395809113171

/-!
# A328789: Expansion of (chi(x^3) / chi(-x^2))^2 in powers of x where chi() is a Ramanujan theta function.

The programs for A328789, there is no canonical definition to state claims against.
-/

/-! ## A328789.P14831127190826073155

`A112206(2*n)`
-/

namespace A328789.P14831127190826073155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112206 (2 * n)

end

end A328789.P14831127190826073155

/-! ## A328789.P1859260149360868739

`A112175(2*n)`
-/

namespace A328789.P1859260149360868739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112175 (2 * n)

end

end A328789.P1859260149360868739

/-! ## A328789.P8800726573881087183

`xor(1, xor(1, A112206(n+n)))`
-/

namespace A328789.P8800726573881087183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A112206 (n + n)))

end

end A328789.P8800726573881087183

/-! ## A328789.P1594135232431504386

`A328795(4*n)`
-/

namespace A328789.P1594135232431504386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328795 (4 * n)

end

end A328789.P1594135232431504386

/-! ## A328789.P15053466237370382806

`A328797(4*n)`
-/

namespace A328789.P15053466237370382806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328797 (4 * n)

end

end A328789.P15053466237370382806

/-! ## A328789.P3086454258215665931

`A112177(6*n)`
-/

namespace A328789.P3086454258215665931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112177 (6 * n)

end

end A328789.P3086454258215665931

/-!
# A328790: Expansion of (chi(x) / chi(-x^6))^2 in powers of x where chi() is a Ramanujan theta function.

The programs for A328790, there is no canonical definition to state claims against.
-/

/-! ## A328790.P5868060634914667316

`A112206(2*n+1)`
-/

namespace A328790.P5868060634914667316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112206 (2 * n + 1)

end

end A328790.P5868060634914667316

/-! ## A328790.P11347664221753512066

`-A112175(Δ[n²])`
-/

namespace A328790.P11347664221753512066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A112175 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A328790.P11347664221753512066

/-! ## A328790.P7523509944777946544

`abs(A112175(2*n+1))`
-/

namespace A328790.P7523509944777946544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112175 (2 * n + 1)|

end

end A328790.P7523509944777946544

/-! ## A328790.P8361192419025327281

`gcd(A000038(n), A112175(2*n+1))`
-/

namespace A328790.P8361192419025327281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112175 (2 * n + 1))

end

end A328790.P8361192419025327281

/-! ## A328790.P6521617548884957295

`lcm(A020985(n), A112175(2*n+1))`
-/

namespace A328790.P6521617548884957295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A112175 (2 * n + 1))

end

end A328790.P6521617548884957295

/-! ## A328790.P15552872349683877094

`A000007(n+1)-A112175(2*n+1)`
-/

namespace A328790.P15552872349683877094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A112175 (2 * n + 1)

end

end A328790.P15552872349683877094

/-! ## A328790.P13547897968673518224

`A000038(n+1)-A112175(2*n+1)`
-/

namespace A328790.P13547897968673518224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A112175 (2 * n + 1)

end

end A328790.P13547897968673518224

/-! ## A328790.P15819936837517024168

`1-(A112175(2*n+1)+A033999(2*n))`
-/

namespace A328790.P15819936837517024168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A112175 (2 * n + 1) + A033999 (2 * n))

end

end A328790.P15819936837517024168

/-! ## A328790.P9649953045920823045

`A033999(2*n+1)*A112175(2*n+1)`
-/

namespace A328790.P9649953045920823045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A112175 (2 * n + 1)

end

end A328790.P9649953045920823045

/-! ## A328790.P15849032668034548324

`A328795(4*n+2)`
-/

namespace A328790.P15849032668034548324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328795 (4 * n + 2)

end

end A328790.P15849032668034548324

/-! ## A328790.P15824986502662938553

`A328797(4*n+2)`
-/

namespace A328790.P15824986502662938553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328797 (4 * n + 2)

end

end A328790.P15824986502662938553

/-! ## A328790.P564396288501493579

`abs(A112177(6*n+3))`
-/

namespace A328790.P564396288501493579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112177 (6 * n + 3)|

end

end A328790.P564396288501493579

/-!
# A328791: Triangular numbers of the form k^2 + 3.

The programs for A328791, the canonical program `A328791.P6914377081461473152` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A328791 has offset 1).

The definition of A328791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A328791.P6914377081461473152

`34*a(n-1)-a(n-2)-46` with `a(0)=3, a(1)=28`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A328791

/-- `34*a(n-1)-a(n-2)-46` -/
def P6914377081461473152.Spec : Prop :=
  ∀ n, P6914377081461473152.a n = A328791 (n + 1)

theorem P6914377081461473152.correct : P6914377081461473152.Spec := by
  intro n
  simp only [A328791, Nat.add_sub_cancel]

end A328791

/-! ## A328791.P17783002485207839411

`A276598(n+1)²+3`
-/

namespace A328791.P17783002485207839411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276598 (n + 1) ^ 2 + 3

end

end A328791.P17783002485207839411

namespace A328791

/-- `A276598(n+1)²+3` -/
def P17783002485207839411.Spec : Prop :=
  ∀ n, P17783002485207839411.a n = A328791 (n + 1)

end A328791

/-! ## A328791.P18295709037189989358

`(5*A001109(n))²+3`
-/

namespace A328791.P18295709037189989358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A001109 n) ^ 2 + 3

end

end A328791.P18295709037189989358

namespace A328791

/-- `(5*A001109(n))²+3` -/
def P18295709037189989358.Spec : Prop :=
  ∀ n, P18295709037189989358.a n = A328791 (n + 1)

end A328791

/-! ## A328791.P13090495912839923548

`(5/6*A075848(n))²+3`
-/

namespace A328791.P13090495912839923548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) / 6 * (A075848 n : ℚ)) ^ 2 + 3

end

end A328791.P13090495912839923548

namespace A328791

/-- `(5/6*A075848(n))²+3` -/
def P13090495912839923548.Spec : Prop :=
  ∀ n, P13090495912839923548.a n = (A328791 (n + 1) : ℚ)

end A328791

/-! ## A328791.P8179900351952786506

`(5*A204512(2*(n+1)))²+3`
-/

namespace A328791.P8179900351952786506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * A204512 (2 * (n + 1))) ^ 2 + 3

end

end A328791.P8179900351952786506

namespace A328791

/-- `(5*A204512(2*(n+1)))²+3` -/
def P8179900351952786506.Spec : Prop :=
  ∀ n, P8179900351952786506.a n = A328791 (n + 1)

end A328791

/-!
# A328792: Numbers that are not the difference between any triangular number and the largest square that does not exceed it.

The programs for A328792, there is no canonical definition to state claims against.
-/

/-! ## A328792.P9343384509423118288

`eq[0, A161515(n)]`
-/

namespace A328792.P9343384509423118288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161515 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A328792.P9343384509423118288

/-! ## A328792.P5401557253487098328

`lt[A295290(n), 0]`
-/

namespace A328792.P5401557253487098328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295290 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A328792.P5401557253487098328

/-! ## A328792.P12450866310516480258

`comp[A064784(n+1)]`
-/

namespace A328792.P12450866310516480258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064784 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P12450866310516480258

/-! ## A328792.P4710642524173588606

`comp[A230038(n+1)]`
-/

namespace A328792.P4710642524173588606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P4710642524173588606

/-! ## A328792.P6862838307663877173

`comp[A230044(n+1)]`
-/

namespace A328792.P6862838307663877173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P6862838307663877173

/-! ## A328792.P10270735504641454912

`comp[A087401(n)+n]`
-/

namespace A328792.P10270735504641454912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P10270735504641454912

/-! ## A328792.P18322610077627480128

`comp[n-A055630(n)]`
-/

namespace A328792.P18322610077627480128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A055630 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P18322610077627480128

/-! ## A328792.P16107400196234317502

`comp[A057050(n+1)-1]`
-/

namespace A328792.P16107400196234317502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057050 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P16107400196234317502

/-! ## A328792.P9044844400548179247

`comp[A303273(n)-1+n]`
-/

namespace A328792.P9044844400548179247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303273 n - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P9044844400548179247

/-! ## A328792.P16860100709244854615

`comp[2*A004247(n)+n]`
-/

namespace A328792.P16860100709244854615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004247 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A328792.P16860100709244854615

/-!
# A328793: Least k such that there exists an equilateral triangle of side length sqrt(A003136(n)) with vertices in an equilateral triangular array of points with k rows.

The programs for A328793, there is no canonical definition to state claims against.
-/

/-! ## A328793.P404094917957191892

`A336753(n+2)-A010693(A056449(n))`
-/

namespace A328793.P404094917957191892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336753 (n + 2) - A010693 (A056449 n).toNat

end

end A328793.P404094917957191892

/-! ## A328793.P7988151766274681647

`A161920(A175381(n+2))`
-/

namespace A328793.P7988151766274681647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161920 (A175381 (n + 2)).toNat

end

end A328793.P7988151766274681647

/-! ## A328793.P4390421586742983580

`A001222(A000040(n+1)*A025615(n+2))`
-/

namespace A328793.P4390421586742983580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000040 (n + 1) * A025615 (n + 2)).toNat

end

end A328793.P4390421586742983580

/-! ## A328793.P8924525427932638968

`A001222(A025615(n+2)*A109611(n+1))`
-/

namespace A328793.P8924525427932638968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A025615 (n + 2) * A109611 (n + 1)).toNat

end

end A328793.P8924525427932638968

/-! ## A328793.P15416101171553183862

`A325135(A033850(n+2))`
-/

namespace A328793.P15416101171553183862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325135 (A033850 (n + 2)).toNat

end

end A328793.P15416101171553183862

/-!
# A328794: Squares visited by a knight moving on a binary numbered single-digit square-spiral board where the knight moves to the smallest numbered unvisited square; the minimum distance from the origin is used if the square numbers are equal; the smallest spiral number ordering is used if the distances are equal.

The programs for A328794, there is no canonical definition to state claims against.
-/

/-! ## A328794.P5072461714132824022

`and(A230980(n), A289242(Δ[n²]²))`
-/

namespace A328794.P5072461714132824022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230980 n) (A289242 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat)

end

end A328794.P5072461714132824022

/-! ## A328794.P16806687389435187256

`and(A013939(n+2), A289242(Δ[n²]²))`
-/

namespace A328794.P16806687389435187256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A013939 (n + 2)) (A289242 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat)

end

end A328794.P16806687389435187256

/-! ## A328794.P2415321628573916143

`A010051(A173269(n+8)+A005382(n+7))`
-/

namespace A328794.P2415321628573916143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A173269 (n + 8) + A005382 (n + 7)).toNat

end

end A328794.P2415321628573916143

/-! ## A328794.P17207059273474612274

`A322358(A346871(n+5)+A054568(n))`
-/

namespace A328794.P17207059273474612274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322358 (A346871 (n + 5) + A054568 n).toNat

end

end A328794.P17207059273474612274

/-!
# A328795: Expansion of (chi(x) * chi(-x^3))^2 in powers of x where chi() is a Ramanujan theta function.

The programs for A328795, there is no canonical definition to state claims against.
-/

/-! ## A328795.P17155446655275274875

`(-1)^n*A328797(n)`
-/

namespace A328795.P17155446655275274875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A328797 n

end

end A328795.P17155446655275274875

/-! ## A328795.P17662284441098733921

`abs(A328797(n))`
-/

namespace A328795.P17662284441098733921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328797 n|

end

end A328795.P17662284441098733921

/-! ## A328795.P7520841826258086968

`gcd(A000038(n), A328797(n))`
-/

namespace A328795.P7520841826258086968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A328797 n)

end

end A328795.P7520841826258086968

/-! ## A328795.P3681671475494722691

`lcm(A000034(n), A328797(n))`
-/

namespace A328795.P3681671475494722691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A328797 n)

end

end A328795.P3681671475494722691

/-! ## A328795.P10893976254126485062

`abs(A112177(A006368(n)))`
-/

namespace A328795.P10893976254126485062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112177 (A006368 n).toNat|

end

end A328795.P10893976254126485062

/-! ## A328795.P11209178577518041678

`A087960(n)*A112177(A006368(n))`
-/

namespace A328795.P11209178577518041678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A112177 (A006368 n).toNat

end

end A328795.P11209178577518041678

/-! ## A328795.P12930686472564955780

`∑{d}[A328797(n), A000010(#)]`
-/

namespace A328795.P12930686472564955780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A328795.P12930686472564955780

/-! ## A328795.P13141518184928696089

`∑{d}[A112177(A006368(n)), A000010(#)]`
-/

namespace A328795.P13141518184928696089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112177 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A328795.P13141518184928696089

/-!
# A328796: Expansion of chi(x) / chi(-x^6) in powers of x where chi() is a Ramanujan theta function.

The programs for A328796, there is no canonical definition to state claims against.
-/

/-! ## A328796.P16628227557198390474

`abs(A261736(n))`
-/

namespace A328796.P16628227557198390474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A261736 n|

end

end A328796.P16628227557198390474

/-! ## A328796.P6343095061807254418

`A033999(n)*A261736(n)`
-/

namespace A328796.P6343095061807254418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261736 n

end

end A328796.P6343095061807254418

/-! ## A328796.P5390668105614611094

`gcd(A000038(n), A261736(n))`
-/

namespace A328796.P5390668105614611094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A261736 n)

end

end A328796.P5390668105614611094

/-! ## A328796.P808532865500012623

`lcm(A020985(n), A261736(n))`
-/

namespace A328796.P808532865500012623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A261736 n)

end

end A328796.P808532865500012623

/-! ## A328796.P2417496333451810735

`(A004442(n)-n)*A261736(n)`
-/

namespace A328796.P2417496333451810735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A261736 n

end

end A328796.P2417496333451810735

/-! ## A328796.P15977019000606116416

`A328802(3*n+n+1)`
-/

namespace A328796.P15977019000606116416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328802 (3 * n + (n + 1))

end

end A328796.P15977019000606116416

/-! ## A328796.P14155679114318837754

`abs(A328800(A008586(n)+1))`
-/

namespace A328796.P14155679114318837754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328800 (A008586 n + 1).toNat|

end

end A328796.P14155679114318837754

/-! ## A328796.P2955284821726715123

`A328800(A005408(2*n+1))-A328800(A005408(2*n))`
-/

namespace A328796.P2955284821726715123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328800 (A005408 (2 * n + 1)).toNat - A328800 (A005408 (2 * n)).toNat

end

end A328796.P2955284821726715123

/-! ## A328796.P16258521919928145855

`∑{d}[A261736(n), A000010(#)]`
-/

namespace A328796.P16258521919928145855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A328796.P16258521919928145855

/-!
# A328797: Expansion of (chi(-x) * chi(x^3))^2 in powers of x where chi() is a Ramanujan theta function.

The programs for A328797, there is no canonical definition to state claims against.
-/

/-! ## A328797.P4449497107098994758

`(-1)^n*A328795(n)`
-/

namespace A328797.P4449497107098994758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A328795 n

end

end A328797.P4449497107098994758

/-! ## A328797.P13123661266064338469

`A328795(n)/A033999(n)`
-/

namespace A328797.P13123661266064338469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (A033999 n : ℚ)

end

end A328797.P13123661266064338469

/-! ## A328797.P4648278543315162208

`A328795(n)/A309873(n+1)`
-/

namespace A328797.P4648278543315162208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (A309873 (n + 1) : ℚ)

end

end A328797.P4648278543315162208

/-! ## A328797.P1227298178078109663

`A328795(n)/A009001(2*n)`
-/

namespace A328797.P1227298178078109663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (A009001 (2 * n) : ℚ)

end

end A328797.P1227298178078109663

/-! ## A328797.P11906076178435578056

`A328795(n)/A157142(n)%2`
-/

namespace A328797.P11906076178435578056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (Int.tmod (A157142 n) 2 : ℚ)

end

end A328797.P11906076178435578056

/-! ## A328797.P13848351875213556116

`-(A033999(n+1)*A328795(n))`
-/

namespace A328797.P13848351875213556116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 (n + 1) * A328795 n)

end

end A328797.P13848351875213556116

/-! ## A328797.P7180483081115169470

`A328795(n)/A057077(A057077(n)+n)`
-/

namespace A328797.P7180483081115169470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A328797.P7180483081115169470

/-! ## A328797.P7122401611437765224

`A328795(n)/A009531(2*n+1)`
-/

namespace A328797.P7122401611437765224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (A009531 (2 * n + 1) : ℚ)

end

end A328797.P7122401611437765224

/-! ## A328797.P615906011347484170

`A033999(A004526(n))*A112177(A006368(n))`
-/

namespace A328797.P615906011347484170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004526 n).toNat * A112177 (A006368 n).toNat

end

end A328797.P615906011347484170

/-! ## A328797.P7868497172325413839

`A328795(n)/A057077(2*n)`
-/

namespace A328797.P7868497172325413839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A328797.P7868497172325413839

/-!
# A328798: Expansion of 1 / (chi(-x) * chi(-x^3)) in powers of x where chi() is a Ramanujan theta function.

The programs for A328798, there is no canonical definition to state claims against.
-/

/-! ## A328798.P10531432296771220246

`-(A112177(3*n+1)/2)`
-/

namespace A328798.P10531432296771220246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A112177 (3 * n + 1) : ℚ) / 2)

end

end A328798.P10531432296771220246

/-! ## A328798.P6886631475616434238

`abs(A112177(A016777(n))/2)`
-/

namespace A328798.P6886631475616434238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A112177 (A016777 n).toNat : ℚ) / 2|

end

end A328798.P6886631475616434238

/-! ## A328798.P15679892150573803897

`A000007(n+1)-A112177(A016777(n))/2`
-/

namespace A328798.P15679892150573803897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) - (A112177 (A016777 n).toNat : ℚ) / 2

end

end A328798.P15679892150573803897

/-! ## A328798.P13673964669931614855

`lcm(A112177(A016777(n))/2, A325470(2*n+1))`
-/

namespace A328798.P13673964669931614855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A112177 (A016777 n).toNat : ℚ) / 2)) (A325470 (2 * n + 1))

end

end A328798.P13673964669931614855

/-! ## A328798.P7206291821034306373

`n*(1-A057427(n))-A112177(A016777(n))/2`
-/

namespace A328798.P7206291821034306373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 - A057427 n) : ℚ) - (A112177 (A016777 n).toNat : ℚ) / 2

end

end A328798.P7206291821034306373

/-! ## A328798.P17319273758529079742

`A328795(A016813(n))/2`
-/

namespace A328798.P17319273758529079742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 (A016813 n).toNat : ℚ) / 2

end

end A328798.P17319273758529079742

/-! ## A328798.P16306808596094996733

`A328795(A157142(2*n))/2`
-/

namespace A328798.P16306808596094996733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328795 (A157142 (2 * n)).toNat : ℚ) / 2

end

end A328798.P16306808596094996733

/-! ## A328798.P7613842781720307811

`A000122(A025400(n+1))-A112177(A016777(n))/2`
-/

namespace A328798.P7613842781720307811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (A025400 (n + 1)).toNat : ℚ) - (A112177 (A016777 n).toNat : ℚ) / 2

end

end A328798.P7613842781720307811

/-!
# A328799: Primes p that are simultaneously of the forms 2*q+1, 4*r+3, 6*s+5 and 8*t+7 where q,r,s,t are primes.

The programs for A328799, there is no canonical definition to state claims against.
-/

/-! ## A328799.P17814740247736784819

`p?[2*A247347(n+1)+1]`
-/

namespace A328799.P17814740247736784819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247347 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A328799.P17814740247736784819

/-! ## A328799.P5534751354802993541

`A008472(A157358(∑[a(n-2)+2]))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3`
-/

namespace A328799.P5534751354802993541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A157358 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A328799.P5534751354802993541

