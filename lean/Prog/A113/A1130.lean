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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A113000: Numbers k such that k, k+1, k+2 and k+3 are 1,2,3,4-almost primes.

The programs for A113000, there is no canonical definition to state claims against.
-/

/-! ## A113000.P6702526737547801432

`A112998(eq[A184955(n), A331039(n)])`
-/

namespace A113000.P6702526737547801432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A113000.P6702526737547801432

/-!
# A113001: Smallest k, not occurring earlier, such that (2*k + n-th odd prime) is prime.

The programs for A113001, there is no canonical definition to state claims against.
-/

/-! ## A113001.P10626287009381735769

`A113006(A113004(n+1))`
-/

namespace A113001.P10626287009381735769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A113004 (n + 1)).toNat

end

end A113001.P10626287009381735769

/-! ## A113001.P13643876320153428459

`A113004(A113006(Δ[n²]-n))`
-/

namespace A113001.P13643876320153428459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (A113006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A113001.P13643876320153428459

/-! ## A113001.P10160094679350913521

`A113006(∑{d}[A237055(n+1), A033270(#)])`
-/

namespace A113001.P10160094679350913521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∑ d ∈ Nat.divisors (f1 n).natAbs, A033270 d).toNat

end

end A113001.P10160094679350913521

/-! ## A113001.P13565670737889762833

`A113006(∑{d}[A237055(n+1), A047983(#)])`
-/

namespace A113001.P13565670737889762833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∑ d ∈ Nat.divisors (f1 n).natAbs, A047983 d).toNat

end

end A113001.P13565670737889762833

/-! ## A113001.P9688322964795573109

`A113006(∑{d}[A237055(n+1), A070804(#)])`
-/

namespace A113001.P9688322964795573109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∑ d ∈ Nat.divisors (f1 n).natAbs, A070804 d).toNat

end

end A113001.P9688322964795573109

/-! ## A113001.P11763129242831943445

`A113006(∑{d}[A237055(n+1), A082460(#)])`
-/

namespace A113001.P11763129242831943445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∑ d ∈ Nat.divisors (f1 n).natAbs, A082460 d).toNat

end

end A113001.P11763129242831943445

/-! ## A113001.P9411945460540220571

`A113006(∑{d}[A237055(n+1), A283528(#)])`
-/

namespace A113001.P9411945460540220571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∑ d ∈ Nat.divisors (f1 n).natAbs, A283528 d).toNat

end

end A113001.P9411945460540220571

/-! ## A113001.P2914799597576666840

`A113006(∑{p}[A237055(n+1), A033270(#)])`
-/

namespace A113001.P2914799597576666840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033270 p).toNat

end

end A113001.P2914799597576666840

/-! ## A113001.P14079581481589073563

`A113006(∏{p}[A237055(n+1), A033270(#)])`
-/

namespace A113001.P14079581481589073563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A033270 p).toNat

end

end A113001.P14079581481589073563

/-! ## A113001.P17367703707573759330

`A113006(∏{p}[A237055(n+1), A082460(#)])`
-/

namespace A113001.P17367703707573759330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A082460 p).toNat

end

end A113001.P17367703707573759330

/-!
# A113002: A065091(n) + 2*A113001(n).

The programs for A113002, there is no canonical definition to state claims against.
-/

/-! ## A113002.P5137235534313898133

`A065091(n+1)+2*A113001(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113002.P5137235534313898133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 2 * A113001 (n + 1)

end

end A113002.P5137235534313898133

/-! ## A113002.P17947781444466566555

`p?[A004273(n)]+2*A113001(n+1)`
-/

namespace A113002.P17947781444466566555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 * A113001 (n + 1)

end

end A113002.P17947781444466566555

/-! ## A113002.P1738780036480166379

`p?[A005408(n)]+2*A113001(n+1)`
-/

namespace A113002.P1738780036480166379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 * A113001 (n + 1)

end

end A113002.P1738780036480166379

/-! ## A113002.P3991451693773660902

`p?[A093178(n)]+2*A113001(n+1)`
-/

namespace A113002.P3991451693773660902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2 * A113001 (n + 1)

end

end A113002.P3991451693773660902

/-! ## A113002.P10872224158876983537

`A000040(n+2)+2*A113001(n+1)`
-/

namespace A113002.P10872224158876983537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2 * A113001 (n + 1)

end

end A113002.P10872224158876983537

/-! ## A113002.P2961903843128308590

`A006005(n+2)+2*A113001(n+1)`
-/

namespace A113002.P2961903843128308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) + 2 * A113001 (n + 1)

end

end A113002.P2961903843128308590

/-! ## A113002.P7952900901820354654

`A005843(A113001(n+1))+p?[A004273(n)]`
-/

namespace A113002.P7952900901820354654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A113001 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113002.P7952900901820354654

/-! ## A113002.P17216716208201972890

`A005843(A113001(n+1))+p?[A005408(n)]`
-/

namespace A113002.P17216716208201972890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A113001 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113002.P17216716208201972890

/-! ## A113002.P14543934264458944453

`A005843(A113001(n+1))+A000040(n+2)`
-/

namespace A113002.P14543934264458944453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A113001 (n + 1)).toNat + A000040 (n + 2)

end

end A113002.P14543934264458944453

/-! ## A113002.P13740637242660382107

`A000040(n+2)+2*A113006(A113004(n+1))`
-/

namespace A113002.P13740637242660382107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + 2 * A113006 (A113004 (n + 1)).toNat

end

end A113002.P13740637242660382107

/-!
# A113003: Odd primes not occurring in A113002.

The programs for A113003, there is no canonical definition to state claims against.
-/

/-! ## A113003.P3799339130495993891

`p?[(A029108(n)-A029111(n))*A029107(n)]`
-/

namespace A113003.P3799339130495993891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029108 n - A029111 n) * A029107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113003.P3799339130495993891

/-!
# A113004: Inverse of A113001.

The programs for A113004, there is no canonical definition to state claims against.
-/

/-! ## A113004.P15558539523232839857

`A113007(A113001(n+1))`
-/

namespace A113004.P15558539523232839857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113007 (A113001 (n + 1)).toNat

end

end A113004.P15558539523232839857

/-! ## A113004.P4759152083332693677

`A113001(A113007(Δ[n²]-n))`
-/

namespace A113004.P4759152083332693677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113001 (A113007 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A113004.P4759152083332693677

/-! ## A113004.P16662749169524786725

`A033270(A237055(n+1))`
-/

namespace A113004.P16662749169524786725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A237055 (n + 1)).toNat

end

end A113004.P16662749169524786725

/-! ## A113004.P9089300018505779753

`A047983(p?[A237055(n+1)])`
-/

namespace A113004.P9089300018505779753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047983 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113004.P9089300018505779753

/-! ## A113004.P1734979323209198260

`A070804(p?[A237055(n+1)])`
-/

namespace A113004.P1734979323209198260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113004.P1734979323209198260

/-! ## A113004.P12733276864593553326

`A082460(p?[A237055(n+1)])`
-/

namespace A113004.P12733276864593553326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082460 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A113004.P12733276864593553326

/-! ## A113004.P10926030464358560808

`A000720(A237055(n+1)-1)`
-/

namespace A113004.P10926030464358560808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A237055 (n + 1) - 1).toNat

end

end A113004.P10926030464358560808

/-! ## A113004.P14720714755402740301

`A070804(2*A237055(n+1))`
-/

namespace A113004.P14720714755402740301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (2 * A237055 (n + 1)).toNat

end

end A113004.P14720714755402740301

/-! ## A113004.P17002727168774601379

`A070804(or(1, A237055(n+1)))`
-/

namespace A113004.P17002727168774601379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 (Int.lor 1 (A237055 (n + 1))).toNat

end

end A113004.P17002727168774601379

/-! ## A113004.P3877370063639163291

`A000720(xor(1, A237055(n+1)))`
-/

namespace A113004.P3877370063639163291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 1 (A237055 (n + 1))).toNat

end

end A113004.P3877370063639163291

/-!
# A113005: Fixed points of permutations A113001, A113004, A113006 and A113007.

The programs for A113005, there is no canonical definition to state claims against.
-/

/-! ## A113005.P2875512803675322458

`eq[n, A113001(abs(1-n)+1)]`
-/

namespace A113005.P2875512803675322458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113001 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113005.P2875512803675322458

/-! ## A113005.P8316287595506254349

`record[gcd(n+1, A113001(n+1))]`
-/

namespace A113005.P8316287595506254349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A113001 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113005.P8316287595506254349

/-! ## A113005.P1511837006670499402

`eq[n, A113004(abs(1-n)+1)]`
-/

namespace A113005.P1511837006670499402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A113005.P1511837006670499402

/-! ## A113005.P9795691282075776217

`eq[n+1, A113004(n+1)]+1`
-/

namespace A113005.P9795691282075776217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A113005.P9795691282075776217

/-! ## A113005.P14376636468533393561

`record[gcd(A000027(n+1), A113004(n+1))]`
-/

namespace A113005.P14376636468533393561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A113004 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113005.P14376636468533393561

/-!
# A113006: A113001(A113001(n)).

The programs for A113006, there is no canonical definition to state claims against.
-/

/-! ## A113006.P14243408588639420552

`A113001(A113001(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113006.P14243408588639420552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113001 (A113001 (n + 1)).toNat

end

end A113006.P14243408588639420552

/-!
# A113007: A113004(A113004(n)).

The programs for A113007, there is no canonical definition to state claims against.
-/

/-! ## A113007.P13705402958137738738

`A113004(A113004(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113007.P13705402958137738738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113004 (A113004 (n + 1)).toNat

end

end A113007.P13705402958137738738

/-!
# A113009: {Sum of the digits of n} raised to the power {number of digits of n}.

The programs for A113009, there is no canonical definition to state claims against.
-/

/-! ## A113009.P12535191399213370068

`∑{digits}[n, #]^dr(∑{digits}[n, 10^#])`
-/

namespace A113009.P12535191399213370068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ SequenceMachineLib.digitalRoot ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ)

end

end A113009.P12535191399213370068

/-! ## A113009.P17980076255283814666

`∑{digits}[n, #]^(∑{digits}[n, 10^#]%9)`
-/

namespace A113009.P17980076255283814666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum % 9)

end

end A113009.P17980076255283814666

/-! ## A113009.P14544692605446723165

`∑{digits}[n, #]^A055642(n)`
-/

namespace A113009.P14544692605446723165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (A055642 n : ℤ)

end

end A113009.P14544692605446723165

/-! ## A113009.P4946213940923746026

`∑{digits}[n, #]^A138902(n)`
-/

namespace A113009.P4946213940923746026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (A138902 n : ℤ)

end

end A113009.P4946213940923746026

/-! ## A113009.P320402949417827760

`∑{digits}[n, #]^dr(A348783(n))`
-/

namespace A113009.P320402949417827760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ SequenceMachineLib.digitalRoot (A348783 n)

end

end A113009.P320402949417827760

/-! ## A113009.P13833684027219483532

`∑{digits}[n, #]^(A337843(n)-n)`
-/

namespace A113009.P13833684027219483532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (A337843 n - (n : ℤ) : ℤ)

end

end A113009.P13833684027219483532

/-! ## A113009.P6446676296135925198

`∑{digits}[n, #]^∑{digits}[n, A065648(#)]`
-/

namespace A113009.P6446676296135925198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A065648 x).sum : ℤ)

end

end A113009.P6446676296135925198

/-! ## A113009.P14932076019938175304

`∑{digits}[n, #]^∑{digits}[n, A105586(#)]`
-/

namespace A113009.P14932076019938175304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A105586 x).sum : ℤ)

end

end A113009.P14932076019938175304

/-! ## A113009.P17088567318819587534

`∑{digits}[n, #]^∑{digits}[n, A213217(#)]`
-/

namespace A113009.P17088567318819587534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) ^ (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => A213217 x).sum : ℤ)

end

end A113009.P17088567318819587534

/-! ## A113009.P4241575946527783498

`∑{digits}[n, #]^A004218(n+1)!`
-/

namespace A113009.P4241575946527783498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ Nat.factorial (A004218 (n + 1)).toNat

end

end A113009.P4241575946527783498

/-!
# A113010: {Number of digits of n} raised to the power of {the sum of the digits of n}.

The programs for A113010, there is no canonical definition to state claims against.
-/

/-! ## A113010.P6754173383196691324

`2^∑{digits}[n, #%C(n, #)]`
-/

namespace A113010.P6754173383196691324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum

end

end A113010.P6754173383196691324

/-! ## A113010.P5387600882524367939

`∑{digits}[n, and(1, #)!]^∑{digits}[n, #]`
-/

namespace A113010.P5387600882524367939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.factorial (Nat.land 1 x)).sum ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A113010.P5387600882524367939

/-! ## A113010.P15007778340006472862

`∑{digits}[n, dr(10^#)]^∑{digits}[n, #]`
-/

namespace A113010.P15007778340006472862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.digitalRoot (10 ^ x : ℤ)).sum ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A113010.P15007778340006472862

/-! ## A113010.P16234011175180687759

`(∑{digits}[n, 10^#]%3)^∑{digits}[n, #]`
-/

namespace A113010.P16234011175180687759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 3) ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A113010.P16234011175180687759

/-! ## A113010.P11881879936562322208

`∑[char[10*C(n, 9)]]^∑{digits}[n, #]`
-/

namespace A113010.P11881879936562322208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.choose n 9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

end

end A113010.P11881879936562322208

/-! ## A113010.P7256361285854233768

`∑{digits}[n, or(1, C(#, n))]^∑{digits}[n, #]`
-/

namespace A113010.P7256361285854233768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.lor 1 (Nat.choose x n)).sum ^ ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A113010.P7256361285854233768

/-! ## A113010.P15504756478378103633

`∑[char[lcm(n, 10^n)]]^∑{digits}[n, #]`
-/

namespace A113010.P15504756478378103633
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (10 ^ n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

end

end A113010.P15504756478378103633

/-! ## A113010.P882296799443196217

`∑{digits}[∑{digits}[n, 10^#], #]^∑{digits}[n, #]`
-/

namespace A113010.P882296799443196217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

end

end A113010.P882296799443196217

/-! ## A113010.P2905769973600105211

`2^((n-9*floor(n/10))%round(1/acot(n)))`
-/

namespace A113010.P2905769973600105211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))) : ℤ)

end

end A113010.P2905769973600105211

/-! ## A113010.P12984074266266540827

`2^A053392(n)`
-/

namespace A113010.P12984074266266540827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053392 n : ℤ)

end

end A113010.P12984074266266540827

/-!
# A113012: Numerators of convergents to 1 + 2/(3 + 4/(5 + 6/(7 + ...))).

The programs for A113012, there is no canonical definition to state claims against.
-/

/-! ## A113012.P7294457250043190107

`A000354(n+1)/gcd(A000142(n), A000354(n+1))`
-/

namespace A113012.P7294457250043190107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 (n + 1) : ℚ) / (Int.gcd (A000142 n) (A000354 (n + 1)) : ℚ)

end

end A113012.P7294457250043190107

/-! ## A113012.P944872016715653280

`record[A143410(n)/A099608(A140750(n+1))]`
-/

namespace A113012.P944872016715653280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143410 n : ℚ) / (A099608 (A140750 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113012.P944872016715653280

/-! ## A113012.P11713458479837173204

`A000354(n+1)/A010154(A041229(n))`
-/

namespace A113012.P11713458479837173204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000354 (n + 1) : ℚ) / (A010154 (A041229 n).toNat : ℚ)

end

end A113012.P11713458479837173204

/-!
# A113013: Denominators of convergents to 1 + 2/(3 + 4/(5 + 6/(7 + ...))).

The programs for A113013, there is no canonical definition to state claims against.
-/

/-! ## A113013.P6780061542193742352

`A168269((n+1)*a(n-1))` with `a(0)=1`
-/

namespace A113013.P6780061542193742352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168269 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A113013.P6780061542193742352

/-! ## A113013.P12582735574905950340

`A037988((n+1)*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A113013.P12582735574905950340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A037988 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A113013.P12582735574905950340

/-!
# A113015: Number of decimal digits in B(10^n) where B(k) is the k-th Bell number.

The programs for A113015, there is no canonical definition to state claims against.
-/

/-! ## A113015.P13502516564390494813

`A113865(10^n)`
-/

namespace A113015.P13502516564390494813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113865 (10 ^ n)

end

end A113015.P13502516564390494813

/-!
# A113016: Primes that remain primes when their decimal representation is interpreted duodecimally.

The programs for A113016, there is no canonical definition to state claims against.
-/

/-! ## A113016.P4125799969218752700

`p?[(n+1)*A001222(A102487(n+2))]`
-/

namespace A113016.P4125799969218752700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A102487 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113016.P4125799969218752700

/-! ## A113016.P17591120920819821999

`p?[2*(n+1)-A010051(A102487(2*(n+1)))]`
-/

namespace A113016.P17591120920819821999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A010051 (A102487 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113016.P17591120920819821999

/-! ## A113016.P14394857686720214533

`eq[A074206(A102487(n+1)), A210442(n)]`
-/

namespace A113016.P14394857686720214533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A102487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113016.P14394857686720214533

/-! ## A113016.P6303805442897255382

`p?[A001489(n)*A107393(A102487(n+1))]`
-/

namespace A113016.P6303805442897255382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n * A107393 (A102487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113016.P6303805442897255382

/-! ## A113016.P8255998778343518277

`eq[A005128(A102487(n+1)), A073855(n)]`
-/

namespace A113016.P8255998778343518277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 (A102487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073855 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113016.P8255998778343518277

/-! ## A113016.P1501503272501721917

`eq[A003415(A102487(n+1)), A226378(n)]`
-/

namespace A113016.P1501503272501721917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A102487 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113016.P1501503272501721917

/-!
# A113017: Primes that become composites when their decimal representation is interpreted duodecimally.

The programs for A113017, there is no canonical definition to state claims against.
-/

/-! ## A113017.P6101688703257969870

`p?[n*A107393(A102487(n+1))]`
-/

namespace A113017.P6101688703257969870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107393 (A102487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113017.P6101688703257969870

/-! ## A113017.P8307044478747054241

`p?[A010051(A102487(2*(n+1)))+2*n+1]`
-/

namespace A113017.P8307044478747054241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A102487 (2 * (n + 1))).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113017.P8307044478747054241

/-! ## A113017.P5844555086098339755

`eq[A051699(n), A055671(A102487(n+1))]`
-/

namespace A113017.P5844555086098339755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A102487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113017.P5844555086098339755

/-! ## A113017.P13481340064242832523

`eq[A007920(n), A107279(A102487(n+1))]`
-/

namespace A113017.P13481340064242832523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A102487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113017.P13481340064242832523

/-! ## A113017.P7078607623155317689

`eq[A107279(A102487(n+1))+1, A107279(n)]`
-/

namespace A113017.P7078607623155317689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 (A102487 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113017.P7078607623155317689

/-! ## A113017.P11703078812647037206

`eq[A040081(n+1), A055671(A102487(n+1))]`
-/

namespace A113017.P11703078812647037206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A102487 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A113017.P11703078812647037206

/-!
# A113018: {Digital root of n} raised to the power {number of digits of n}.

The programs for A113018, the canonical program `A113018.P1459564956732011392` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113018 has offset 0).

The definition of A113018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113018.P1459564956732011392

`A010888(n)^A055642(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113018

/-- `A010888(n)^A055642(n)` -/
def P1459564956732011392.Spec : Prop :=
  ∀ n, P1459564956732011392.a n = (A113018 n : ℚ)

end A113018

/-!
# A113019: (Number of digits of n) raised to the power of (the digital root of n).

The programs for A113019, the canonical program `A113019.P17489053355663883129` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113019 has offset 0).

The definition of A113019 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113019.P17489053355663883129

`A055642(n)^A010888(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113019

/-- `A055642(n)^A010888(n)` -/
def P17489053355663883129.Spec : Prop :=
  ∀ n, P17489053355663883129.a n = (A113019 n : ℚ)

end A113019

/-! ## A113019.P1204806461811784168

`(∑{digits}[n, 10^#]%9)^dr(n)`
-/

namespace A113019.P1204806461811784168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9) ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A113019.P1204806461811784168

namespace A113019

/-- `(∑{digits}[n, 10^#]%9)^dr(n)` -/
def P1204806461811784168.Spec : Prop :=
  ∀ n, (P1204806461811784168.a n : ℤ) = A113019 n

end A113019

/-! ## A113019.P186899883725879564

`dr(A348783(n))^dr(n)`
-/

namespace A113019.P186899883725879564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A348783 n) ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A113019.P186899883725879564

namespace A113019

/-- `dr(A348783(n))^dr(n)` -/
def P186899883725879564.Spec : Prop :=
  ∀ n, (P186899883725879564.a n : ℤ) = A113019 n

end A113019

/-! ## A113019.P11490021513731999767

`A004218(n+1)^dr(n)`
-/

namespace A113019.P11490021513731999767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A113019.P11490021513731999767

namespace A113019

/-- `A004218(n+1)^dr(n)` -/
def P11490021513731999767.Spec : Prop :=
  ∀ n, P11490021513731999767.a n = A113019 n

end A113019

/-! ## A113019.P14376544880252341141

`A055642(n)^A007953(A007953(A007953(n)))`
-/

namespace A113019.P14376544880252341141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055642 n : ℚ) ^ (A007953 (A007953 (A007953 n).toNat).toNat : ℤ)

end

end A113019.P14376544880252341141

namespace A113019

/-- `A055642(n)^A007953(A007953(A007953(n)))` -/
def P14376544880252341141.Spec : Prop :=
  ∀ n, P14376544880252341141.a n = (A113019 n : ℚ)

end A113019

/-! ## A113019.P17130603330470002208

`A014963(A113010(n))^A010888(n)`
-/

namespace A113019.P17130603330470002208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (A113010 n).toNat : ℚ) ^ (A010888 n : ℤ)

end

end A113019.P17130603330470002208

namespace A113019

/-- `A014963(A113010(n))^A010888(n)` -/
def P17130603330470002208.Spec : Prop :=
  ∀ n, P17130603330470002208.a n = (A113019 n : ℚ)

end A113019

/-!
# A113020: Number triangle whose row sums are the Fibonacci numbers.

The programs for A113020, there is no canonical definition to state claims against.
-/

/-! ## A113020.P10791682209444824867

`A396583(n)-A124844(n)`
-/

namespace A113020.P10791682209444824867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396583 n - A124844 n

end

end A113020.P10791682209444824867

/-!
# A113021: Expansion of x^2/(1 - 2*x + 2*x^2 - x^3 - x^4).

The programs for A113021, the canonical program `A113021.P14503436087023523697` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113021 has offset 0).

The definition of A113021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-2x+2x^2-x^3-x^4))` (program `A113021.P14503436087023523697`, by `A113021.P14503436087023523697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113021.P14503436087023523697

`ogf(x^2/(1-2x+2x^2-x^3-x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113021

/-- `ogf(x^2/(1-2x+2x^2-x^3-x^4))` -/
def P14503436087023523697.Spec : Prop :=
  ∀ n, P14503436087023523697.a n = A113021 n

theorem P14503436087023523697.correct : P14503436087023523697.Spec := by
  intro n
  simp only [A113021]

end A113021

/-! ## A113021.P11981103989546400375

`2*a(n-1)-2*a(n-2)+a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A113021.P11981103989546400375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 2] fun n a =>
  2 * a (n - 1) - 2 * a (n - 2) + a (n - 3) + a (n - 4)

end

end A113021.P11981103989546400375

namespace A113021

/-- `2*a(n-1)-2*a(n-2)+a(n-3)+a(n-4)` -/
def P11981103989546400375.Spec : Prop :=
  ∀ n, P11981103989546400375.a n = A113021 n

end A113021

/-! ## A113021.P14289084679394283014

`Δ[A096750(n+1)]`
-/

namespace A113021.P14289084679394283014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113021.P14289084679394283014

namespace A113021

/-- `Δ[A096750(n+1)]` -/
def P14289084679394283014.Spec : Prop :=
  ∀ n, P14289084679394283014.a n = A113021 n

end A113021

/-! ## A113021.P8318120983670610491

`A096750(n+2)-A096750(n+1)`
-/

namespace A113021.P8318120983670610491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096750 (n + 2) - A096750 (n + 1)

end

end A113021.P8318120983670610491

namespace A113021

/-- `A096750(n+2)-A096750(n+1)` -/
def P8318120983670610491.Spec : Prop :=
  ∀ n, P8318120983670610491.a n = A113021 n

end A113021

/-! ## A113021.P8177257738814258122

`abs(Δ[A096750(log2(2*2^n))])`
-/

namespace A113021.P8177257738814258122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096750 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 2 ^ n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A113021.P8177257738814258122

namespace A113021

/-- `abs(Δ[A096750(log2(2*2^n))])` -/
def P8177257738814258122.Spec : Prop :=
  ∀ n, P8177257738814258122.a n = A113021 n

end A113021

/-! ## A113021.P7841803828336097184

`Δ[A096750(log2(2*2^n))]%A014217(n)`
-/

namespace A113021.P7841803828336097184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096750 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 2 ^ n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A014217 n)

end

end A113021.P7841803828336097184

namespace A113021

/-- `Δ[A096750(log2(2*2^n))]%A014217(n)` -/
def P7841803828336097184.Spec : Prop :=
  ∀ n, P7841803828336097184.a n = A113021 n

end A113021

/-! ## A113021.P17447493194596418205

`Δ[A096750(log2(2*2^n))-A000034(2*n)]`
-/

namespace A113021.P17447493194596418205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096750 (SequenceMachineLib.roundAway (Real.logb 2 (2 * 2 ^ n : ℝ))).toNat - A000034 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113021.P17447493194596418205

namespace A113021

/-- `Δ[A096750(log2(2*2^n))-A000034(2*n)]` -/
def P17447493194596418205.Spec : Prop :=
  ∀ n, P17447493194596418205.a n = A113021 n

end A113021

/-!
# A113022: a(n) = size of union of 2^k (mod 10^n), 0 < k <= 5^n.

The programs for A113022, the canonical program `A113022.P13774640098532395319` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113022 has offset 1).

The definition of A113022 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113022.P13774640098532395319

`4*5^n+n`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113022

/-- `4*5^n+n` -/
def P13774640098532395319.Spec : Prop :=
  ∀ n, (P13774640098532395319.a n : ℤ) = A113022 (n + 1)

theorem P13774640098532395319.correct : P13774640098532395319.Spec := by
  intro n
  simp only [A113022, Nat.add_sub_cancel]

end A113022

/-! ## A113022.P10674965201951824649

`∑[∑[ogf((-4+7x+x^2)/(-1+5x))]]`
-/

namespace A113022.P10674965201951824649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, -1] [1, -5] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113022.P10674965201951824649

namespace A113022

/-- `∑[∑[ogf((-4+7x+x^2)/(-1+5x))]]` -/
def P10674965201951824649.Spec : Prop :=
  ∀ n, P10674965201951824649.a n = A113022 (n + 1)

end A113022

/-! ## A113022.P9251251486270469673

`∑[xor(4, 5*a(n-1))]` with `a(0)=4, a(1)=17`
-/

namespace A113022.P9251251486270469673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 17] fun n f1 =>
  Nat.xor 4 (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113022.P9251251486270469673

namespace A113022

/-- `∑[xor(4, 5*a(n-1))]` -/
def P9251251486270469673.Spec : Prop :=
  ∀ n, (P9251251486270469673.a n : ℤ) = A113022 (n + 1)

end A113022

/-! ## A113022.P7312369826519983204

`∑[or(1, or(9, 5*(a(n-1)-2))+5)]` with `a(0)=4`
-/

namespace A113022.P7312369826519983204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  Int.lor 1 (Int.lor 9 (5 * (f1 (n - 1) - 2)) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113022.P7312369826519983204

namespace A113022

/-- `∑[or(1, or(9, 5*(a(n-1)-2))+5)]` -/
def P7312369826519983204.Spec : Prop :=
  ∀ n, P7312369826519983204.a n = A113022 (n + 1)

end A113022

/-! ## A113022.P14329797471285189388

`∑[A055842(n+1)+1]`
-/

namespace A113022.P14329797471285189388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113022.P14329797471285189388

namespace A113022

/-- `∑[A055842(n+1)+1]` -/
def P14329797471285189388.Spec : Prop :=
  ∀ n, P14329797471285189388.a n = A113022 (n + 1)

end A113022

/-!
# A113023: Number of terms in A095810 which have n digits.

The programs for A113023, there is no canonical definition to state claims against.
-/

/-! ## A113023.P13071306932969831455

`ogf((5-7x)/(1-5x))`
-/

namespace A113023.P13071306932969831455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -7] [1, -5] n

end

end A113023.P13071306932969831455

/-! ## A113023.P15460399834212288399

`5*a(n-1)` with `a(0)=5, a(1)=18`
-/

namespace A113023.P15460399834212288399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 18] fun n a =>
  5 * a (n - 1)

end

end A113023.P15460399834212288399

/-! ## A113023.P4294984404336229076

`a(n-1)/tanh(log(ϕ))²` with `a(0)=5, a(1)=18`
-/

namespace A113023.P4294984404336229076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 18] fun n a =>
  a (n - 1) / Real.tanh (Real.log Real.goldenRatio) ^ 2

end

end A113023.P4294984404336229076

/-! ## A113023.P587164633637459139

`a(n-1)/(1-4/5)` with `a(0)=5, a(1)=18`
-/

namespace A113023.P587164633637459139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 18] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5)

end

end A113023.P587164633637459139

/-! ## A113023.P15351947441621967871

`lcm(5^(n-1), a(n-1))` with `a(0)=5, a(1)=18`
-/

namespace A113023.P15351947441621967871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 18] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A113023.P15351947441621967871

/-!
# A113025: Triangle of integer coefficients of polynomials P(n,x) of degree n, and falling powers of x, arising in diagonal Padé approximation of exp(x).

The programs for A113025, the canonical program `A113025.P3062274256341534460` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113025 has offset 0).

The definition of A113025 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1483 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113025.P9121163978826875735

`abs(A303986(n))`
-/

namespace A113025.P9121163978826875735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A303986 n|

end

end A113025.P9121163978826875735

namespace A113025

/-- `abs(A303986(n))` -/
def P9121163978826875735.Spec : Prop :=
  ∀ n, P9121163978826875735.a n = A113025 n

end A113025

/-! ## A113025.P6900204665979134488

`A008279(n)*A046899(n)`
-/

namespace A113025.P6900204665979134488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A046899 n

end

end A113025.P6900204665979134488

namespace A113025

/-- `A008279(n)*A046899(n)` -/
def P6900204665979134488.Spec : Prop :=
  ∀ n, P6900204665979134488.a n = A113025 n

end A113025

/-! ## A113025.P8771859143044855806

`A001498(n)*A059268(n)`
-/

namespace A113025.P8771859143044855806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001498 n * A059268 n

end

end A113025.P8771859143044855806

namespace A113025

/-- `A001498(n)*A059268(n)` -/
def P8771859143044855806.Spec : Prop :=
  ∀ n, P8771859143044855806.a n = A113025 n

end A113025

/-! ## A113025.P3062274256341534460

`A063007(n)*A233543(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A113025

/-- `A063007(n)*A233543(n)` -/
def P3062274256341534460.Spec : Prop :=
  ∀ n, P3062274256341534460.a n = A113025 n

theorem P3062274256341534460.correct : P3062274256341534460.Spec := by
  intro n
  simp only [A113025]

end A113025

/-! ## A113025.P10512257718278044888

`gcd(A000038(n), A303986(n))`
-/

namespace A113025.P10512257718278044888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A303986 n)

end

end A113025.P10512257718278044888

namespace A113025

/-- `gcd(A000038(n), A303986(n))` -/
def P10512257718278044888.Spec : Prop :=
  ∀ n, (P10512257718278044888.a n : ℤ) = A113025 n

end A113025

/-! ## A113025.P4005045977119786987

`lcm(A001498(n), A123519(n))`
-/

namespace A113025.P4005045977119786987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001498 n) (A123519 n)

end

end A113025.P4005045977119786987

namespace A113025

/-- `lcm(A001498(n), A123519(n))` -/
def P4005045977119786987.Spec : Prop :=
  ∀ n, (P4005045977119786987.a n : ℤ) = A113025 n

end A113025

/-! ## A113025.P9769648080451391642

`lcm(A006466(n), A303986(n))`
-/

namespace A113025.P9769648080451391642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006466 n) (A303986 n)

end

end A113025.P9769648080451391642

namespace A113025

/-- `lcm(A006466(n), A303986(n))` -/
def P9769648080451391642.Spec : Prop :=
  ∀ n, (P9769648080451391642.a n : ℤ) = A113025 n

end A113025

/-! ## A113025.P10788410570934482373

`A009766(n)*A181511(n+1)`
-/

namespace A113025.P10788410570934482373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 n * A181511 (n + 1)

end

end A113025.P10788410570934482373

namespace A113025

/-- `A009766(n)*A181511(n+1)` -/
def P10788410570934482373.Spec : Prop :=
  ∀ n, P10788410570934482373.a n = A113025 n

end A113025

/-! ## A113025.P1824677414480301408

`A088617(n)*A166350(n+1)`
-/

namespace A113025.P1824677414480301408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 n * A166350 (n + 1)

end

end A113025.P1824677414480301408

namespace A113025

/-- `A088617(n)*A166350(n+1)` -/
def P1824677414480301408.Spec : Prop :=
  ∀ n, P1824677414480301408.a n = A113025 n

end A113025

/-! ## A113025.P12181810339602399046

`A001498(n)/A085478(n)*A123519(n)`
-/

namespace A113025.P12181810339602399046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001498 n : ℚ) / (A085478 n : ℚ) * (A123519 n : ℚ)

end

end A113025.P12181810339602399046

namespace A113025

/-- `A001498(n)/A085478(n)*A123519(n)` -/
def P12181810339602399046.Spec : Prop :=
  ∀ n, P12181810339602399046.a n = (A113025 n : ℚ)

end A113025

/-! ## A113025.P4397142647956525264

`A119274(A061579(n))`
-/

namespace A113025.P4397142647956525264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119274 (A061579 n).toNat

end

end A113025.P4397142647956525264

namespace A113025

/-- `A119274(A061579(n))` -/
def P4397142647956525264.Spec : Prop :=
  ∀ n, P4397142647956525264.a n = A113025 n

end A113025

/-! ## A113025.P2816659394200323595

`A253284(n)/A173333(n+1)`
-/

namespace A113025.P2816659394200323595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253284 n : ℚ) / (A173333 (n + 1) : ℚ)

end

end A113025.P2816659394200323595

namespace A113025

/-- `A253284(n)/A173333(n+1)` -/
def P2816659394200323595.Spec : Prop :=
  ∀ n, P2816659394200323595.a n = (A113025 n : ℚ)

end A113025

/-! ## A113025.P1593640266004521323

`A143084(n)/A098361(n)`
-/

namespace A113025.P1593640266004521323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143084 n : ℚ) / (A098361 n : ℚ)

end

end A113025.P1593640266004521323

namespace A113025

/-- `A143084(n)/A098361(n)` -/
def P1593640266004521323.Spec : Prop :=
  ∀ n, P1593640266004521323.a n = (A113025 n : ℚ)

end A113025

/-! ## A113025.P17690245497231052410

`gcd(A303986(n)+A010816(n), A303986(n)²)`
-/

namespace A113025.P17690245497231052410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303986 n + A010816 n) (A303986 n ^ 2)

end

end A113025.P17690245497231052410

namespace A113025

/-- `gcd(A303986(n)+A010816(n), A303986(n)²)` -/
def P17690245497231052410.Spec : Prop :=
  ∀ n, (P17690245497231052410.a n : ℤ) = A113025 n

end A113025

/-!
# A113028: a(n) is the largest integer whose base n digits are all different that is divisible by each of its individual digits.

The programs for A113028, there is no canonical definition to state claims against.
-/

/-! ## A113028.P3544381993499029289

`A288417(2^n*A023872(n))`
-/

namespace A113028.P3544381993499029289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288417 ((2 ^ n : ℤ) * A023872 n).toNat

end

end A113028.P3544381993499029289

/-!
# A113029: a(1) = 2, a(2) = 3; for n > 2, a(n) = least prime equal to the sum of two or more previous terms.

The programs for A113029, there is no canonical definition to state claims against.
-/

/-! ## A113029.P8394860353998803916

`p?[comp[∑[n!+1]+8]+1]`
-/

namespace A113029.P8394860353998803916
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113029.P8394860353998803916

/-! ## A113029.P9102924947010571151

`p?[n-3-A161872(n+2)]`
-/

namespace A113029.P9102924947010571151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 - A161872 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113029.P9102924947010571151

/-! ## A113029.P6684400044078461814

`p?[comp[A072556(2*(n+1))+1]]`
-/

namespace A113029.P6684400044078461814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072556 (2 * (n + 1)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113029.P6684400044078461814

/-! ## A113029.P8377283563650202910

`A000040(4-C(3, ceil((cos(1)+n)/2))+n)`
-/

namespace A113029.P8377283563650202910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (4 - (Nat.choose 3 ⌈(Real.cos (1 : ℝ) + (n : ℝ)) / 2⌉.toNat : ℤ) + (n : ℤ)).toNat

end

end A113029.P8377283563650202910

/-! ## A113029.P15571618941393070272

`A000040(4-C(3, round(sin(1)+n/2))+n)`
-/

namespace A113029.P15571618941393070272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (4 - (Nat.choose 3 (SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((n : ℚ) / 2 : ℝ))).toNat : ℤ) + (n : ℤ)).toNat

end

end A113029.P15571618941393070272

/-! ## A113029.P3678405760293171868

`A000040(4-C(3, round((acos(0)+n)/2))+n)`
-/

namespace A113029.P3678405760293171868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (4 - (Nat.choose 3 (SequenceMachineLib.roundAway ((Real.arccos (0 : ℝ) + (n : ℝ)) / 2)).toNat : ℤ) + (n : ℤ)).toNat

end

end A113029.P3678405760293171868

/-! ## A113029.P15709685708238539938

`A000040(4-C(3, round((tan(1)+n)/2))+n)`
-/

namespace A113029.P15709685708238539938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (4 - (Nat.choose 3 (SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + (n : ℝ)) / 2)).toNat : ℤ) + (n : ℤ)).toNat

end

end A113029.P15709685708238539938

/-! ## A113029.P11282497757616680670

`∪[A048416(n+1), A087749(n+1)]`
-/

namespace A113029.P11282497757616680670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A113029.P11282497757616680670

/-! ## A113029.P11841311172209749565

`∪[A048417(n+1), A087749(n+1)]`
-/

namespace A113029.P11841311172209749565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A113029.P11841311172209749565

/-! ## A113029.P8673840905690688430

`∪[A052014(n+1), A087749(n+1)]`
-/

namespace A113029.P8673840905690688430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A113029.P8673840905690688430

/-!
# A113032: a(n) = Sum_{k=0..floor(n/8)} binomial(n-5*k, 3*k).

The programs for A113032, there is no canonical definition to state claims against.
-/

/-! ## A113032.P8377567398519362761

`abs(A159255(Δ[A050407(n)]))`
-/

namespace A113032.P8377567398519362761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159255 (f1 (n + 1) - f1 n).toNat|

end

end A113032.P8377567398519362761

/-! ## A113032.P14480529424540226654

`A071974(A264319(n))+A007386(2*n+2)`
-/

namespace A113032.P14480529424540226654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A264319 n).toNat + A007386 (2 * n + 2)

end

end A113032.P14480529424540226654

/-! ## A113032.P10685950634148338577

`A007381(2*n+2)-A061775(A000079(n))`
-/

namespace A113032.P10685950634148338577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007381 (2 * n + 2) - A061775 (A000079 n).toNat

end

end A113032.P10685950634148338577

/-! ## A113032.P12873723193854192042

`A123580(A348289(n))`
-/

namespace A113032.P12873723193854192042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A348289 n).toNat

end

end A113032.P12873723193854192042

/-!
# A113035: Number of ways the set {1,2,...,n} can be split into two subsets of which the sum of one is twice the sum of the other.

The programs for A113035, there is no canonical definition to state claims against.
-/

/-! ## A113035.P13889117517799283675

`lcm(A193739(A001465(n)), A345927(n))`
-/

namespace A113035.P13889117517799283675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193739 (A001465 n).toNat) (A345927 n)

end

end A113035.P13889117517799283675

/-!
# A113036: Number of solutions to +- 1 +- 2 +- .. +- n = 2.

The programs for A113036, there is no canonical definition to state claims against.
-/

/-! ## A113036.P18027890367759464589

`A068202(A028310(lcm(n, A102560(n))))`
-/

namespace A113036.P18027890367759464589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068202 (A028310 (Int.lcm (n : ℤ) (A102560 n))).toNat

end

end A113036.P18027890367759464589

/-! ## A113036.P4485579493854138231

`A068202(A028310(n))-A113037(n)`
-/

namespace A113036.P4485579493854138231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068202 (A028310 n).toNat - A113037 n

end

end A113036.P4485579493854138231

/-! ## A113036.P16464478509316570264

`A068202(A028310(n))*A133872(n+1)`
-/

namespace A113036.P16464478509316570264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068202 (A028310 n).toNat * A133872 (n + 1)

end

end A113036.P16464478509316570264

/-! ## A113036.P2416011710582454656

`(A022264(n)+1)%2*A068202(A028310(n))`
-/

namespace A113036.P2416011710582454656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022264 n + 1) 2 * A068202 (A028310 n).toNat

end

end A113036.P2416011710582454656

/-! ## A113036.P9970254663187741689

`(A172117(n)+1)%2*A068202(A028310(n))`
-/

namespace A113036.P9970254663187741689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172117 n + 1) 2 * A068202 (A028310 n).toNat

end

end A113036.P9970254663187741689

/-! ## A113036.P2876067088881482994

`A068202(A007318(or(1, ∑[n])))`
-/

namespace A113036.P2876067088881482994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068202 (A007318 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))).toNat

end

end A113036.P2876067088881482994

/-!
# A113037: Number of solutions to +- 1 +- 2 +- .. +- n = 3.

The programs for A113037, there is no canonical definition to state claims against.
-/

/-! ## A113037.P17374743199270263199

`∑[n]%2*A068202(A028310(n))`
-/

namespace A113037.P17374743199270263199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) * A068202 (A028310 n).toNat

end

end A113037.P17374743199270263199

/-! ## A113037.P5717023688307212990

`A068202(A028310(n))-A113036(n)`
-/

namespace A113037.P5717023688307212990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068202 (A028310 n).toNat - A113036 n

end

end A113037.P5717023688307212990

/-! ## A113037.P8946854400335759710

`lcm(A068202(A028310(n)), A132380(n+1))`
-/

namespace A113037.P8946854400335759710
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A068202 (A028310 n).toNat) (A132380 (n + 1))

end

end A113037.P8946854400335759710

/-!
# A113038: Number of ways the set {1,2,...,n} can be split into three subsets of which the sum of one is one more than the equal sums of both other subsets.

The programs for A113038, there is no canonical definition to state claims against.
-/

/-! ## A113038.P17236628602057878449

`and(Δ[A056654(n+3)], A342556(n))`
-/

namespace A113038.P17236628602057878449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A342556 n)

end

end A113038.P17236628602057878449

/-! ## A113038.P1963855618621835187

`∏[A208912(3*n+1)]%A208927(n+1)`
-/

namespace A113038.P1963855618621835187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208912 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ j ∈ Finset.range (n + 1), f1 j) (A208927 (n + 1))

end

end A113038.P1963855618621835187

/-! ## A113038.P4402398758277948970

`A025428(A000912(n))*A112203(n)`
-/

namespace A113038.P4402398758277948970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A000912 n).toNat * A112203 n

end

end A113038.P4402398758277948970

/-! ## A113038.P3812431720826623716

`A025460(A041076(n)*A212193(n))`
-/

namespace A113038.P3812431720826623716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (A041076 n * A212193 n).toNat

end

end A113038.P3812431720826623716

/-!
# A113039: Number of ways the set {1,2,...,n} can be split into three subsets of which the three sums are consecutive.

The programs for A113039, there is no canonical definition to state claims against.
-/

/-! ## A113039.P13590182777114807834

`Δ[A087055(n+1)]%A081156(n)`
-/

namespace A113039.P13590182777114807834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087055 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A081156 n)

end

end A113039.P13590182777114807834

/-! ## A113039.P11038047123568446827

`floor(A321739(n+2)/A319056(2*n+3))`
-/

namespace A113039.P11038047123568446827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A321739 (n + 2) : ℚ) / (A319056 (2 * n + 3) : ℚ)⌋

end

end A113039.P11038047123568446827

/-! ## A113039.P9244841794376416504

`A000196(A001250(n)*A316101(n))`
-/

namespace A113039.P9244841794376416504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001250 n * A316101 n).toNat

end

end A113039.P9244841794376416504

/-! ## A113039.P15563279371604340879

`A204418(A001205(n))*A224747(n)`
-/

namespace A113039.P15563279371604340879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204418 (A001205 n).toNat * A224747 n

end

end A113039.P15563279371604340879

/-! ## A113039.P13475824304299171119

`A000196(A001250(n))%A282629(n)`
-/

namespace A113039.P13475824304299171119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000196 (A001250 n).toNat) (A282629 n)

end

end A113039.P13475824304299171119

/-!
# A113040: Number of solutions to +-p(1)+-p(2)+-...+-p(2n)=1 where p(i) is the i-th prime.

The programs for A113040, there is no canonical definition to state claims against.
-/

/-! ## A113040.P7707799532753607684

`A022895(2*(n+1))+A261061(n+1)`
-/

namespace A113040.P7707799532753607684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022895 (2 * (n + 1)) + A261061 (n + 1)

end

end A113040.P7707799532753607684

/-! ## A113040.P13326813119073435249

`A306443(2*(n+1))`
-/

namespace A113040.P13326813119073435249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (2 * (n + 1))

end

end A113040.P13326813119073435249

/-! ## A113040.P8947774391608043499

`A350404(2*(n+1))`
-/

namespace A113040.P8947774391608043499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350404 (2 * (n + 1))

end

end A113040.P8947774391608043499

/-! ## A113040.P12054075696664782717

`or(A000007(n), A306443(A051755(n+2)))`
-/

namespace A113040.P12054075696664782717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A306443 (A051755 (n + 2)).toNat)

end

end A113040.P12054075696664782717

/-! ## A113040.P8467464235798553419

`A306443(A051755(n+2))+A000007(n+1)`
-/

namespace A113040.P8467464235798553419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (A051755 (n + 2)).toNat + A000007 (n + 1)

end

end A113040.P8467464235798553419

/-! ## A113040.P7809137254567056439

`A292242(A000040(n+1))+record[A306443(n+1)]`
-/

namespace A113040.P7809137254567056439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (A000040 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113040.P7809137254567056439

/-! ## A113040.P13236133329215237175

`A306443(A005843(n+1))%A086902(n)`
-/

namespace A113040.P13236133329215237175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306443 (A005843 (n + 1)).toNat) (A086902 n)

end

end A113040.P13236133329215237175

/-!
# A113041: Number of solutions to +-p(1)+-p(2)+-...+-p(2n-1) = 2, where p(i) is the i-th prime.

The programs for A113041, there is no canonical definition to state claims against.
-/

/-! ## A113041.P1901582835539470437

`A022896(2*(n+1)-1)+A261057(n+1)`
-/

namespace A113041.P1901582835539470437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022896 (2 * (n + 1) - 1) + A261057 (n + 1)

end

end A113041.P1901582835539470437

/-! ## A113041.P11718720655336672012

`A261057(n+1)+A022896(2*n+1)`
-/

namespace A113041.P11718720655336672012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261057 (n + 1) + A022896 (2 * n + 1)

end

end A113041.P11718720655336672012

/-! ## A113041.P10241646345623066577

`A000669(n+1)-A136107(A000142(n+1))`
-/

namespace A113041.P10241646345623066577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000669 (n + 1) - A136107 (A000142 (n + 1)).toNat

end

end A113041.P10241646345623066577

/-! ## A113041.P15980503677754573085

`A054404(A148239(n))+A022896(2*n+1)`
-/

namespace A113041.P15980503677754573085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A148239 n).toNat + A022896 (2 * n + 1)

end

end A113041.P15980503677754573085

/-!
# A113042: Number of solutions to +-p(1)+-p(2)+-...+-p(2n) = 3 where p(i) is the i-th prime.

The programs for A113042, there is no canonical definition to state claims against.
-/

/-! ## A113042.P12928495660998127414

`A089852(A089844(n))-(-1)^n`
-/

namespace A113042.P12928495660998127414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089852 (A089844 n).toNat - (-1) ^ n

end

end A113042.P12928495660998127414

/-! ## A113042.P4418300215594767542

`A116939(A176277(n))+A000035(n)`
-/

namespace A113042.P4418300215594767542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A176277 n).toNat + A000035 n

end

end A113042.P4418300215594767542

/-! ## A113042.P3118008404510378909

`A163528(or(A001705(n), A007494(n)))`
-/

namespace A113042.P3118008404510378909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (Int.lor (A001705 n) (A007494 n)).toNat

end

end A113042.P3118008404510378909

/-!
# A113043: Number of ways you can split the set of the first n primes into two proper subsets of which the sum of one is twice the sum of the other.

The programs for A113043, there is no canonical definition to state claims against.
-/

/-! ## A113043.P11814446763592409310

`A001196(n)%A147063(A286542(n))`
-/

namespace A113043.P11814446763592409310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001196 n) (A147063 (A286542 n).toNat)

end

end A113043.P11814446763592409310

/-! ## A113043.P13031592203392742781

`A326588(gcd(A006530(n+2), A008713(n)))`
-/

namespace A113043.P13031592203392742781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326588 (Int.gcd (A006530 (n + 2)) (A008713 n))

end

end A113043.P13031592203392742781

/-! ## A113043.P4890538389905324851

`A053645(A014132(A008612(n)^A057273(n+1)))`
-/

namespace A113043.P4890538389905324851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A014132 (SequenceMachineLib.roundAway ((A008612 n : ℚ) ^ (A057273 (n + 1) : ℤ))).toNat).toNat

end

end A113043.P4890538389905324851

/-!
# A113045: Number triangle binomial(n,floor((n-k)/2)) mod 3.

The programs for A113045, the canonical program `A113045.P12851557519336962224` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113045 has offset 0).

The definition of A113045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113045.P12851557519336962224

`A061554(n)%3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A113045

/-- `A061554(n)%3` -/
def P12851557519336962224.Spec : Prop :=
  ∀ n, P12851557519336962224.a n = A113045 n

theorem P12851557519336962224.correct : P12851557519336962224.Spec := by
  intro n
  simp only [A113045]

end A113045

/-! ## A113045.P10246308120753159613

`A110877(n)%3`
-/

namespace A113045.P10246308120753159613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110877 n) 3

end

end A113045.P10246308120753159613

namespace A113045

/-- `A110877(n)%3` -/
def P10246308120753159613.Spec : Prop :=
  ∀ n, P10246308120753159613.a n = A113045 n

end A113045

/-! ## A113045.P1382704266388023665

`A126791(n)%3`
-/

namespace A113045.P1382704266388023665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126791 n) 3

end

end A113045.P1382704266388023665

namespace A113045

/-- `A126791(n)%3` -/
def P1382704266388023665.Spec : Prop :=
  ∀ n, P1382704266388023665.a n = A113045 n

end A113045

/-! ## A113045.P5689914017753760210

`A010872(∑{digits}[A110877(n), #])`
-/

namespace A113045.P5689914017753760210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A113045.P5689914017753760210

namespace A113045

/-- `A010872(∑{digits}[A110877(n), #])` -/
def P5689914017753760210.Spec : Prop :=
  ∀ n, P5689914017753760210.a n = A113045 n

end A113045

/-! ## A113045.P13946328632152516910

`A010872(∑{digits}[A126791(n), #])`
-/

namespace A113045.P13946328632152516910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A113045.P13946328632152516910

namespace A113045

/-- `A010872(∑{digits}[A126791(n), #])` -/
def P13946328632152516910.Spec : Prop :=
  ∀ n, P13946328632152516910.a n = A113045 n

end A113045

/-! ## A113045.P11403081057789407784

`A007318(A057028(n+1)-1)%3`
-/

namespace A113045.P11403081057789407784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A057028 (n + 1) - 1).toNat) 3

end

end A113045.P11403081057789407784

namespace A113045

/-- `A007318(A057028(n+1)-1)%3` -/
def P11403081057789407784.Spec : Prop :=
  ∀ n, P11403081057789407784.a n = A113045 n

end A113045

/-! ## A113045.P10612462217445881334

`A007318(round(A025581(n)/2+n))%3`
-/

namespace A113045.P10612462217445881334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (SequenceMachineLib.roundAway ((A025581 n : ℚ) / 2 + (n : ℚ))).toNat) 3

end

end A113045.P10612462217445881334

namespace A113045

/-- `A007318(round(A025581(n)/2+n))%3` -/
def P10612462217445881334.Spec : Prop :=
  ∀ n, P10612462217445881334.a n = A113045 n

end A113045

/-! ## A113045.P2643290161085711537

`gcd(Δ[A108044(n)], A108044(n))%3`
-/

namespace A113045.P2643290161085711537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A108044 n) % 3

end

end A113045.P2643290161085711537

namespace A113045

/-- `gcd(Δ[A108044(n)], A108044(n))%3` -/
def P2643290161085711537.Spec : Prop :=
  ∀ n, (P2643290161085711537.a n : ℤ) = A113045 n

end A113045

/-! ## A113045.P13291695869977079306

`A083093(A375779(n+1))`
-/

namespace A113045.P13291695869977079306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083093 (A375779 (n + 1)).toNat

end

end A113045.P13291695869977079306

namespace A113045

/-- `A083093(A375779(n+1))` -/
def P13291695869977079306.Spec : Prop :=
  ∀ n, P13291695869977079306.a n = A113045 n

end A113045

/-! ## A113045.P16111459755379909970

`A107430(∑[2*n]%comp[∑[n]])%3`
-/

namespace A113045.P16111459755379909970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107430 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 3

end

end A113045.P16111459755379909970

namespace A113045

/-- `A107430(∑[2*n]%comp[∑[n]])%3` -/
def P16111459755379909970.Spec : Prop :=
  ∀ n, P16111459755379909970.a n = A113045 n

end A113045

/-! ## A113045.P14151955965185961433

`A107430(∑[char[∑[n]]]²-n-1)%3`
-/

namespace A113045.P14151955965185961433
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107430 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat) 3

end

end A113045.P14151955965185961433

namespace A113045

/-- `A107430(∑[char[∑[n]]]²-n-1)%3` -/
def P14151955965185961433.Spec : Prop :=
  ∀ n, P14151955965185961433.a n = A113045 n

end A113045

/-! ## A113045.P7091298001322582153

`A007318(A209293(n+1)-1)%3`
-/

namespace A113045.P7091298001322582153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 (A209293 (n + 1) - 1).toNat) 3

end

end A113045.P7091298001322582153

namespace A113045

/-- `A007318(A209293(n+1)-1)%3` -/
def P7091298001322582153.Spec : Prop :=
  ∀ n, P7091298001322582153.a n = A113045 n

end A113045

/-! ## A113045.P154439032715731604

`(A127159(n)-A107430(n))%3`
-/

namespace A113045.P154439032715731604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127159 n - A107430 n) 3

end

end A113045.P154439032715731604

namespace A113045

/-- `(A127159(n)-A107430(n))%3` -/
def P154439032715731604.Spec : Prop :=
  ∀ n, P154439032715731604.a n = A113045 n

end A113045

/-! ## A113045.P13418559593183804181

`A010872(A061554(n))`
-/

namespace A113045.P13418559593183804181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A061554 n).toNat

end

end A113045.P13418559593183804181

namespace A113045

/-- `A010872(A061554(n))` -/
def P13418559593183804181.Spec : Prop :=
  ∀ n, P13418559593183804181.a n = A113045 n

end A113045

/-!
# A113047: a(n) = C(3n,n)/(2n+1) mod 3.

The programs for A113047, the canonical program `A113047.P15340638559709226106` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113047 has offset 0).

The definition of A113047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113047.P6119382435182627772

`char[floor(3^n/2)]`
-/

namespace A113047.P6119382435182627772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 ^ n : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A113047.P6119382435182627772

namespace A113047

/-- `char[floor(3^n/2)]` -/
def P6119382435182627772.Spec : Prop :=
  ∀ n, (P6119382435182627772.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P15340638559709226106

`C(3, ∑{p}[Δ[n²], #])`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113047

/-- `C(3, ∑{p}[Δ[n²], #])` -/
def P15340638559709226106.Spec : Prop :=
  ∀ n, (P15340638559709226106.a n : ℤ) = A113047 n

theorem P15340638559709226106.correct : P15340638559709226106.Spec := by
  intro n
  simp only [A113047]

end A113047

/-! ## A113047.P6767687226573836025

`∏{p}[comp[2*n], val(#, 3)]`
-/

namespace A113047.P6767687226573836025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3

end

end A113047.P6767687226573836025

namespace A113047

/-- `∏{p}[comp[2*n], val(#, 3)]` -/
def P6767687226573836025.Spec : Prop :=
  ∀ n, (P6767687226573836025.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P12804888888979157556

`∏{p}[comp[2*n], C(3, #)]`
-/

namespace A113047.P12804888888979157556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p

end

end A113047.P12804888888979157556

namespace A113047

/-- `∏{p}[comp[2*n], C(3, #)]` -/
def P12804888888979157556.Spec : Prop :=
  ∀ n, (P12804888888979157556.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P13945980653936684553

`∏{p}[2*n+1, val(#, 3)²]`
-/

namespace A113047.P13945980653936684553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 ^ 2

end

end A113047.P13945980653936684553

namespace A113047

/-- `∏{p}[2*n+1, val(#, 3)²]` -/
def P13945980653936684553.Spec : Prop :=
  ∀ n, (P13945980653936684553.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P15462156201918058076

`∏{p}[2*n+1, sqrt(val(#, 3))]`
-/

namespace A113047.P15462156201918058076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (SequenceMachineLib.valuation p 3 : ℝ)

end

end A113047.P15462156201918058076

namespace A113047

/-- `∏{p}[2*n+1, sqrt(val(#, 3))]` -/
def P15462156201918058076.Spec : Prop :=
  ∀ n, P15462156201918058076.a n = (A113047 n : ℝ)

end A113047

/-! ## A113047.P192072345481318255

`C(3, ∑{p}[2*n+1, #])²`
-/

namespace A113047.P192072345481318255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), p) ^ 2

end

end A113047.P192072345481318255

namespace A113047

/-- `C(3, ∑{p}[2*n+1, #])²` -/
def P192072345481318255.Spec : Prop :=
  ∀ n, (P192072345481318255.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P9091459851144703913

`∏{p}[2*n+1, C(3, #)²]`
-/

namespace A113047.P9091459851144703913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p ^ 2

end

end A113047.P9091459851144703913

namespace A113047

/-- `∏{p}[2*n+1, C(3, #)²]` -/
def P9091459851144703913.Spec : Prop :=
  ∀ n, (P9091459851144703913.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P50441652597843677

`sqrt(C(3, ∑{p}[2*n+1, #]))`
-/

namespace A113047.P50441652597843677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A113047.P50441652597843677

namespace A113047

/-- `sqrt(C(3, ∑{p}[2*n+1, #]))` -/
def P50441652597843677.Spec : Prop :=
  ∀ n, P50441652597843677.a n = (A113047 n : ℝ)

end A113047

/-! ## A113047.P6842477050125272091

`∏{p}[2*n+1, sqrt(C(3, #))]`
-/

namespace A113047.P6842477050125272091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Real.sqrt (Nat.choose 3 p : ℝ)

end

end A113047.P6842477050125272091

namespace A113047

/-- `∏{p}[2*n+1, sqrt(C(3, #))]` -/
def P6842477050125272091.Spec : Prop :=
  ∀ n, P6842477050125272091.a n = (A113047 n : ℝ)

end A113047

/-! ## A113047.P10846229226651105748

`∏{p}[2*n+1, floor(3/#)]`
-/

namespace A113047.P10846229226651105748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊3 / (p : ℚ)⌋

end

end A113047.P10846229226651105748

namespace A113047

/-- `∏{p}[2*n+1, floor(3/#)]` -/
def P10846229226651105748.Spec : Prop :=
  ∀ n, P10846229226651105748.a n = A113047 n

end A113047

/-! ## A113047.P7772434152274297722

`round(∏{p}[2*n+1, 2/#])`
-/

namespace A113047.P7772434152274297722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), 2 / (p : ℚ))

end

end A113047.P7772434152274297722

namespace A113047

/-- `round(∏{p}[2*n+1, 2/#])` -/
def P7772434152274297722.Spec : Prop :=
  ∀ n, P7772434152274297722.a n = A113047 n

end A113047

/-! ## A113047.P5457640332525732624

`dr(∏{p}[2*n+1, val(#, 3)])`
-/

namespace A113047.P5457640332525732624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3 : ℕ) : ℤ)

end

end A113047.P5457640332525732624

namespace A113047

/-- `dr(∏{p}[2*n+1, val(#, 3)])` -/
def P5457640332525732624.Spec : Prop :=
  ∀ n, (P5457640332525732624.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P54468309286370388

`dr(C(3, ∑{p}[2*n+1, #]))`
-/

namespace A113047.P54468309286370388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.choose 3 (∑ p ∈ Nat.primeFactors (f1 n), p) : ℤ)

end

end A113047.P54468309286370388

namespace A113047

/-- `dr(C(3, ∑{p}[2*n+1, #]))` -/
def P54468309286370388.Spec : Prop :=
  ∀ n, (P54468309286370388.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P3883188533171975885

`dr(∏{p}[2*n+1, C(3, #)])`
-/

namespace A113047.P3883188533171975885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p : ℕ) : ℤ)

end

end A113047.P3883188533171975885

namespace A113047

/-- `dr(∏{p}[2*n+1, C(3, #)])` -/
def P3883188533171975885.Spec : Prop :=
  ∀ n, (P3883188533171975885.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P13639748955224975005

`∏{p}[n+1+n, val(#, 3)]²`
-/

namespace A113047.P13639748955224975005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 3) ^ 2

end

end A113047.P13639748955224975005

namespace A113047

/-- `∏{p}[n+1+n, val(#, 3)]²` -/
def P13639748955224975005.Spec : Prop :=
  ∀ n, (P13639748955224975005.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P6238001791093325166

`∏{p}[n+1+n, C(3, #)]²`
-/

namespace A113047.P6238001791093325166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 p) ^ 2

end

end A113047.P6238001791093325166

namespace A113047

/-- `∏{p}[n+1+n, C(3, #)]²` -/
def P6238001791093325166.Spec : Prop :=
  ∀ n, (P6238001791093325166.a n : ℤ) = A113047 n

end A113047

/-! ## A113047.P354495468511573589

`floor(∏{p}[n+1+n, 3/#])`
-/

namespace A113047.P354495468511573589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), 3 / (p : ℚ)⌋

end

end A113047.P354495468511573589

namespace A113047

/-- `floor(∏{p}[n+1+n, 3/#])` -/
def P354495468511573589.Spec : Prop :=
  ∀ n, P354495468511573589.a n = A113047 n

end A113047

/-! ## A113047.P17236262418389238489

`floor(acot(((1-n)^10)%(2*n+1)))`
-/

namespace A113047.P17236262418389238489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod ((1 - (n : ℤ)) ^ 10) (2 * n + 1 : ℤ) : ℝ)⌋

end

end A113047.P17236262418389238489

namespace A113047

/-- `floor(acot(((1-n)^10)%(2*n+1)))` -/
def P17236262418389238489.Spec : Prop :=
  ∀ n, P17236262418389238489.a n = A113047 n

end A113047

/-! ## A113047.P5682720376590507348

`C(gcd(2*n+1, (1-n)^10), 2*n+1)`
-/

namespace A113047.P5682720376590507348
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (2 * n + 1 : ℤ) ((1 - (n : ℤ)) ^ 10)) (2 * n + 1)

end

end A113047.P5682720376590507348

namespace A113047

/-- `C(gcd(2*n+1, (1-n)^10), 2*n+1)` -/
def P5682720376590507348.Spec : Prop :=
  ∀ n, (P5682720376590507348.a n : ℤ) = A113047 n

end A113047

/-!
# A113048: Binomial(4n,n)/(3n+1) mod 4.

The programs for A113048, the canonical program `A113048.P10304748390870685619` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113048 has offset 0).

The definition of A113048 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113048.P10304748390870685619

`(C(4*n, n)/(3*n+1))%4`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113048

/-- `(C(4*n, n)/(3*n+1))%4` -/
def P10304748390870685619.Spec : Prop :=
  ∀ n, P10304748390870685619.a n = A113048 n

theorem P10304748390870685619.correct : P10304748390870685619.Spec := by
  intro n
  simp only [A113048]

end A113048

/-! ## A113048.P10846232821421410637

`A351864(n)%4`
-/

namespace A113048.P10846232821421410637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351864 n) 4

end

end A113048.P10846232821421410637

namespace A113048

/-- `A351864(n)%4` -/
def P10846232821421410637.Spec : Prop :=
  ∀ n, P10846232821421410637.a n = A113048 n

end A113048

/-! ## A113048.P4046848206513562401

`C(2, A240883(n)²)`
-/

namespace A113048.P4046848206513562401
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A240883 n ^ 2).toNat

end

end A113048.P4046848206513562401

namespace A113048

/-- `C(2, A240883(n)²)` -/
def P4046848206513562401.Spec : Prop :=
  ∀ n, (P4046848206513562401.a n : ℤ) = A113048 n

end A113048

/-! ## A113048.P9984347234288913666

`A046818(n)!%3`
-/

namespace A113048.P9984347234288913666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A046818 n).toNat % 3

end

end A113048.P9984347234288913666

namespace A113048

/-- `A046818(n)!%3` -/
def P9984347234288913666.Spec : Prop :=
  ∀ n, (P9984347234288913666.a n : ℤ) = A113048 n

end A113048

/-! ## A113048.P16227127124272447230

`A000095(A351864(n))`
-/

namespace A113048.P16227127124272447230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A351864 n).toNat

end

end A113048.P16227127124272447230

namespace A113048

/-- `A000095(A351864(n))` -/
def P16227127124272447230.Spec : Prop :=
  ∀ n, P16227127124272447230.a n = A113048 n

end A113048

/-! ## A113048.P2705470290479491028

`A316828(C(2, A046818(n)))`
-/

namespace A113048.P2705470290479491028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (Nat.choose 2 (A046818 n).toNat)

end

end A113048.P2705470290479491028

namespace A113048

/-- `A316828(C(2, A046818(n)))` -/
def P2705470290479491028.Spec : Prop :=
  ∀ n, P2705470290479491028.a n = A113048 n

end A113048

/-! ## A113048.P816671118600944817

`A000010(A001316(3*n+1))%4`
-/

namespace A113048.P816671118600944817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A001316 (3 * n + 1)).toNat) 4

end

end A113048.P816671118600944817

namespace A113048

/-- `A000010(A001316(3*n+1))%4` -/
def P816671118600944817.Spec : Prop :=
  ∀ n, P816671118600944817.a n = A113048 n

end A113048

/-! ## A113048.P906774364556198526

`C(A020639(3*(n+1)), A006580(A046818(n)))`
-/

namespace A113048.P906774364556198526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (3 * (n + 1))).toNat (A006580 (A046818 n).toNat).toNat

end

end A113048.P906774364556198526

namespace A113048

/-- `C(A020639(3*(n+1)), A006580(A046818(n)))` -/
def P906774364556198526.Spec : Prop :=
  ∀ n, (P906774364556198526.a n : ℤ) = A113048 n

end A113048

/-! ## A113048.P14477171633413362670

`and(A010693(2*n+1), A172076(A001316(3*n+1)))`
-/

namespace A113048.P14477171633413362670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010693 (2 * n + 1)) (A172076 (A001316 (3 * n + 1)).toNat)

end

end A113048.P14477171633413362670

namespace A113048

/-- `and(A010693(2*n+1), A172076(A001316(3*n+1)))` -/
def P14477171633413362670.Spec : Prop :=
  ∀ n, P14477171633413362670.a n = A113048 n

end A113048

/-! ## A113048.P1714570485662841635

`A151705(A006257(3*n+1))%4`
-/

namespace A113048.P1714570485662841635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151705 (A006257 (3 * n + 1)).toNat) 4

end

end A113048.P1714570485662841635

namespace A113048

/-- `A151705(A006257(3*n+1))%4` -/
def P1714570485662841635.Spec : Prop :=
  ∀ n, P1714570485662841635.a n = A113048 n

end A113048

/-! ## A113048.P16944887510494842030

`A159981(3*n)`
-/

namespace A113048.P16944887510494842030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159981 (3 * n)

end

end A113048.P16944887510494842030

namespace A113048

/-- `A159981(3*n)` -/
def P16944887510494842030.Spec : Prop :=
  ∀ n, P16944887510494842030.a n = A113048 n

end A113048

/-! ## A113048.P17804291968723023785

`A048896(3*n)%4`
-/

namespace A113048.P17804291968723023785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048896 (3 * n)) 4

end

end A113048.P17804291968723023785

namespace A113048

/-- `A048896(3*n)%4` -/
def P17804291968723023785.Spec : Prop :=
  ∀ n, P17804291968723023785.a n = A113048 n

end A113048

/-! ## A113048.P3381576257946704628

`and(3, A048896(2*n+n))`
-/

namespace A113048.P3381576257946704628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048896 (2 * n + n))

end

end A113048.P3381576257946704628

namespace A113048

/-- `and(3, A048896(2*n+n))` -/
def P3381576257946704628.Spec : Prop :=
  ∀ n, P3381576257946704628.a n = A113048 n

end A113048

/-! ## A113048.P17927708712557499753

`A000120(3*n+1)!%3`
-/

namespace A113048.P17927708712557499753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000120 (3 * n + 1)).toNat % 3

end

end A113048.P17927708712557499753

namespace A113048

/-- `A000120(3*n+1)!%3` -/
def P17927708712557499753.Spec : Prop :=
  ∀ n, (P17927708712557499753.a n : ℤ) = A113048 n

end A113048

/-! ## A113048.P16537336462008151057

`A073267(A033627(n+2))`
-/

namespace A113048.P16537336462008151057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (A033627 (n + 2)).toNat

end

end A113048.P16537336462008151057

namespace A113048

/-- `A073267(A033627(n+2))` -/
def P16537336462008151057.Spec : Prop :=
  ∀ n, P16537336462008151057.a n = A113048 n

end A113048

/-! ## A113048.P472962696540354006

`A000095(A048896(3*n))`
-/

namespace A113048.P472962696540354006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A048896 (3 * n)).toNat

end

end A113048.P472962696540354006

namespace A113048

/-- `A000095(A048896(3*n))` -/
def P472962696540354006.Spec : Prop :=
  ∀ n, P472962696540354006.a n = A113048 n

end A113048

/-! ## A113048.P15142172933984691299

`A028586(A071055(3*n))`
-/

namespace A113048.P15142172933984691299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (A071055 (3 * n)).toNat

end

end A113048.P15142172933984691299

namespace A113048

/-- `A028586(A071055(3*n))` -/
def P15142172933984691299.Spec : Prop :=
  ∀ n, P15142172933984691299.a n = A113048 n

end A113048

/-! ## A113048.P37598480025986311

`A309954(A048896(2*n+n))`
-/

namespace A113048.P37598480025986311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A048896 (2 * n + n)).toNat

end

end A113048.P37598480025986311

namespace A113048

/-- `A309954(A048896(2*n+n))` -/
def P37598480025986311.Spec : Prop :=
  ∀ n, P37598480025986311.a n = A113048 n

end A113048

/-! ## A113048.P14367964683589817900

`∏{p}[A071055(3*n), A071055(#)]`
-/

namespace A113048.P14367964683589817900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A071055 p

end

end A113048.P14367964683589817900

namespace A113048

/-- `∏{p}[A071055(3*n), A071055(#)]` -/
def P14367964683589817900.Spec : Prop :=
  ∀ n, P14367964683589817900.a n = A113048 n

end A113048

/-! ## A113048.P15693817027409679244

`A093659(3*n+1)%3`
-/

namespace A113048.P15693817027409679244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093659 (3 * n + 1)) 3

end

end A113048.P15693817027409679244

namespace A113048

/-- `A093659(3*n+1)%3` -/
def P15693817027409679244.Spec : Prop :=
  ∀ n, P15693817027409679244.a n = A113048 n

end A113048

/-!
# A113049: Triangle of sums of Jacobsthal numbers related to binomial(4n,n)/(3n+1) mod 4.

The programs for A113049, there is no canonical definition to state claims against.
-/

/-! ## A113049.P3495223424049179868

`A078971(comp[∑[n]]+1)`
-/

namespace A113049.P3495223424049179868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078971 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A113049.P3495223424049179868

/-! ## A113049.P1953491866507559393

`A071162(record[and(n+1, xor(n, n+1)-n)])+1`
-/

namespace A113049.P1953491866507559393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.xor n (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071162 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A113049.P1953491866507559393

/-! ## A113049.P4756764967490060044

`A006288(A044990(n+1))`
-/

namespace A113049.P4756764967490060044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006288 (A044990 (n + 1)).toNat

end

end A113049.P4756764967490060044

/-! ## A113049.P4856784295615195204

`A147992(A099628(n+1))`
-/

namespace A113049.P4856784295615195204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147992 (A099628 (n + 1)).toNat

end

end A113049.P4856784295615195204

/-! ## A113049.P7212138449845544122

`A071162(A048645(n+1))+1`
-/

namespace A113049.P7212138449845544122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071162 (A048645 (n + 1)).toNat + 1

end

end A113049.P7212138449845544122

/-!
# A113050: a(1) = a(2) = 1; for n>2, a(n+1) = a(n) + a(n-1) iff n is prime, otherwise a(n+1) = a(n) + 1.

The programs for A113050, the canonical program `A113050.P6984668803832590430` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113050 has offset 1).

The definition of A113050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113050.P14201892158193698868

`a(n-1)+a(A135679(n)-2)` with `a(0)=1, a(1)=1`
-/

namespace A113050.P14201892158193698868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (A135679 n - 2).toNat

end

end A113050.P14201892158193698868

namespace A113050

/-- `a(n-1)+a(A135679(n)-2)` -/
def P14201892158193698868.Spec : Prop :=
  ∀ n, (P14201892158193698868.a n : ℤ) = A113050 (n + 1)

end A113050

/-! ## A113050.P1690180687310675211

`a((n-2)*char[A151800(n)])+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A113050.P1690180687310675211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (((n : ℤ) - 2) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat + a (n - 1)

end

end A113050.P1690180687310675211

namespace A113050

/-- `a((n-2)*char[A151800(n)])+a(n-1)` -/
def P1690180687310675211.Spec : Prop :=
  ∀ n, (P1690180687310675211.a n : ℤ) = A113050 (n + 1)

end A113050

/-! ## A113050.P6984668803832590430

`a((n-2)*char[A006530(n+2)])+a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A113050

/-- `a((n-2)*char[A006530(n+2)])+a(n-1)` -/
def P6984668803832590430.Spec : Prop :=
  ∀ n, (P6984668803832590430.a n : ℤ) = A113050 (n + 1)

theorem P6984668803832590430.correct : P6984668803832590430.Spec := by
  intro n
  simp only [A113050, Nat.add_sub_cancel]

end A113050

/-! ## A113050.P15618273087069062044

`a(n-1)+a(A052878(n)%n)` with `a(0)=1, a(1)=1`
-/

namespace A113050.P15618273087069062044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (Int.tmod (A052878 n) (n : ℤ)).toNat

end

end A113050.P15618273087069062044

namespace A113050

/-- `a(n-1)+a(A052878(n)%n)` -/
def P15618273087069062044.Spec : Prop :=
  ∀ n, (P15618273087069062044.a n : ℤ) = A113050 (n + 1)

end A113050

/-! ## A113050.P7340514856646512170

`A057561(A128216(n+1))`
-/

namespace A113050.P7340514856646512170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057561 (A128216 (n + 1)).toNat

end

end A113050.P7340514856646512170

namespace A113050

/-- `A057561(A128216(n+1))` -/
def P7340514856646512170.Spec : Prop :=
  ∀ n, P7340514856646512170.a n = A113050 (n + 1)

end A113050

/-!
# A113052: Binomial(5n,n)/(4n+1) mod 5.

The programs for A113052, the canonical program `A113052.P7243839297274783094` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113052 has offset 0).

The definition of A113052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113052.P12780468874436798092

`char[floor(5^n/4)]`
-/

namespace A113052.P12780468874436798092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 ^ n : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A113052.P12780468874436798092

namespace A113052

/-- `char[floor(5^n/4)]` -/
def P12780468874436798092.Spec : Prop :=
  ∀ n, (P12780468874436798092.a n : ℤ) = A113052 n

end A113052

/-! ## A113052.P13957115953073170272

`and(1, char[∑[round(5^(n-1))]])`
-/

namespace A113052.P13957115953073170272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A113052.P13957115953073170272

namespace A113052

/-- `and(1, char[∑[round(5^(n-1))]])` -/
def P13957115953073170272.Spec : Prop :=
  ∀ n, (P13957115953073170272.a n : ℤ) = A113052 n

end A113052

/-! ## A113052.P7243839297274783094

`∏{p}[2*n+2*n+1, val(#, 5)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113052

/-- `∏{p}[2*n+2*n+1, val(#, 5)]` -/
def P7243839297274783094.Spec : Prop :=
  ∀ n, (P7243839297274783094.a n : ℤ) = A113052 n

theorem P7243839297274783094.correct : P7243839297274783094.Spec := by
  intro n
  simp only [A113052]

end A113052

/-! ## A113052.P16404767512225093740

`floor(2*sqrt(3/∏{p}[5*(8*n+2), #]))`
-/

namespace A113052.P16404767512225093740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (8 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * Real.sqrt (3 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) : ℝ)⌋

end

end A113052.P16404767512225093740

namespace A113052

/-- `floor(2*sqrt(3/∏{p}[5*(8*n+2), #]))` -/
def P16404767512225093740.Spec : Prop :=
  ∀ n, P16404767512225093740.a n = A113052 n

end A113052

/-! ## A113052.P3340670680823351638

`C(char[A003463(n)]+1, 2)`
-/

namespace A113052.P3340670680823351638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003463 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) 2

end

end A113052.P3340670680823351638

namespace A113052

/-- `C(char[A003463(n)]+1, 2)` -/
def P3340670680823351638.Spec : Prop :=
  ∀ n, (P3340670680823351638.a n : ℤ) = A113052 n

end A113052

/-! ## A113052.P6591190788941803833

`C(∑[A151674(n)], 4*n+1)`
-/

namespace A113052.P6591190788941803833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151674 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (4 * n + 1)

end

end A113052.P6591190788941803833

namespace A113052

/-- `C(∑[A151674(n)], 4*n+1)` -/
def P6591190788941803833.Spec : Prop :=
  ∀ n, (P6591190788941803833.a n : ℤ) = A113052 n

end A113052

/-! ## A113052.P3186067046559292031

`C(A151670(n), ∑[A151666(n)])`
-/

namespace A113052.P3186067046559292031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A151670 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113052.P3186067046559292031

namespace A113052

/-- `C(A151670(n), ∑[A151666(n)])` -/
def P3186067046559292031.Spec : Prop :=
  ∀ n, (P3186067046559292031.a n : ℤ) = A113052 n

end A113052

/-! ## A113052.P10644843320174150724

`A010051(A173525(2*(2*n+1)))`
-/

namespace A113052.P10644843320174150724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A173525 (2 * (2 * n + 1))).toNat

end

end A113052.P10644843320174150724

namespace A113052

/-- `A010051(A173525(2*(2*n+1)))` -/
def P10644843320174150724.Spec : Prop :=
  ∀ n, P10644843320174150724.a n = A113052 n

end A113052

/-! ## A113052.P16391383138472712818

`A060584(A151671(2*n+2*n+1))`
-/

namespace A113052.P16391383138472712818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060584 (A151671 (2 * n + (2 * n + 1))).toNat

end

end A113052.P16391383138472712818

namespace A113052

/-- `A060584(A151671(2*n+2*n+1))` -/
def P16391383138472712818.Spec : Prop :=
  ∀ n, P16391383138472712818.a n = A113052 n

end A113052

/-! ## A113052.P3158736150939805303

`A135416(A319653(2*n+2*n+1))`
-/

namespace A113052.P3158736150939805303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A319653 (2 * n + (2 * n + 1))).toNat

end

end A113052.P3158736150939805303

namespace A113052

/-- `A135416(A319653(2*n+2*n+1))` -/
def P3158736150939805303.Spec : Prop :=
  ∀ n, P3158736150939805303.a n = A113052 n

end A113052

/-! ## A113052.P6746487409028873310

`A101455(A395775(2*n+2*n+1))`
-/

namespace A113052.P6746487409028873310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A395775 (2 * n + (2 * n + 1))).toNat

end

end A113052.P6746487409028873310

namespace A113052

/-- `A101455(A395775(2*n+2*n+1))` -/
def P6746487409028873310.Spec : Prop :=
  ∀ n, P6746487409028873310.a n = A113052 n

end A113052

/-! ## A113052.P5889213716717393129

`A125563(n)%5`
-/

namespace A113052.P5889213716717393129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125563 n) 5

end

end A113052.P5889213716717393129

namespace A113052

/-- `A125563(n)%5` -/
def P5889213716717393129.Spec : Prop :=
  ∀ n, P5889213716717393129.a n = A113052 n

end A113052

/-! ## A113052.P16951326048016164043

`A000086(A125563(n))`
-/

namespace A113052.P16951326048016164043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A125563 n).toNat

end

end A113052.P16951326048016164043

namespace A113052

/-- `A000086(A125563(n))` -/
def P16951326048016164043.Spec : Prop :=
  ∀ n, P16951326048016164043.a n = A113052 n

end A113052

/-! ## A113052.P6143181900507840862

`val(A014963(4*5*n+5)+1, 6)`
-/

namespace A113052.P6143181900507840862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014963 (4 * (5 * n) + 5) + 1).toNat 6

end

end A113052.P6143181900507840862

namespace A113052

/-- `val(A014963(4*5*n+5)+1, 6)` -/
def P6143181900507840862.Spec : Prop :=
  ∀ n, (P6143181900507840862.a n : ℤ) = A113052 n

end A113052

/-! ## A113052.P14704673924762687049

`A001222(A014963(5*(4*n+1)))`
-/

namespace A113052.P14704673924762687049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (5 * (4 * n + 1))).toNat

end

end A113052.P14704673924762687049

namespace A113052

/-- `A001222(A014963(5*(4*n+1)))` -/
def P14704673924762687049.Spec : Prop :=
  ∀ n, P14704673924762687049.a n = A113052 n

end A113052

/-! ## A113052.P8837578915117830060

`A001221(A014963(2*(10*n+2)+1))`
-/

namespace A113052.P8837578915117830060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014963 (2 * (10 * n + 2) + 1)).toNat

end

end A113052.P8837578915117830060

namespace A113052

/-- `A001221(A014963(2*(10*n+2)+1))` -/
def P8837578915117830060.Spec : Prop :=
  ∀ n, P8837578915117830060.a n = A113052 n

end A113052

/-! ## A113052.P13760600663492966321

`A131891(n)%5`
-/

namespace A113052.P13760600663492966321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131891 n) 5

end

end A113052.P13760600663492966321

namespace A113052

/-- `A131891(n)%5` -/
def P13760600663492966321.Spec : Prop :=
  ∀ n, P13760600663492966321.a n = A113052 n

end A113052

/-! ## A113052.P481392659129352716

`A278084(2*n+1)%2`
-/

namespace A113052.P481392659129352716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278084 (2 * n + 1)) 2

end

end A113052.P481392659129352716

namespace A113052

/-- `A278084(2*n+1)%2` -/
def P481392659129352716.Spec : Prop :=
  ∀ n, P481392659129352716.a n = A113052 n

end A113052

/-! ## A113052.P973494007972163948

`A023533(A083419(n+1))`
-/

namespace A113052.P973494007972163948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A083419 (n + 1)).toNat

end

end A113052.P973494007972163948

namespace A113052

/-- `A023533(A083419(n+1))` -/
def P973494007972163948.Spec : Prop :=
  ∀ n, P973494007972163948.a n = A113052 n

end A113052

/-! ## A113052.P4218981045100686460

`A012245(A003005(n+1))`
-/

namespace A113052.P4218981045100686460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (A003005 (n + 1)).toNat

end

end A113052.P4218981045100686460

namespace A113052

/-- `A012245(A003005(n+1))` -/
def P4218981045100686460.Spec : Prop :=
  ∀ n, P4218981045100686460.a n = A113052 n

end A113052

/-!
# A113059: a(n) = n! * Sum_{k=0..n} A000296(k)/k!.

The programs for A113059, there is no canonical definition to state claims against.
-/

/-! ## A113059.P16874544921405272730

`A000296(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A113059.P16874544921405272730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000296 n + (n : ℤ) * a (n - 1)

end

end A113059.P16874544921405272730

/-! ## A113059.P7409960472413618925

`A124323(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A113059.P7409960472413618925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A113059.P7409960472413618925

/-! ## A113059.P13096976151124087026

`n*a(n-1)-(A000038(n)-A000296(n))` with `a(0)=1`
-/

namespace A113059.P13096976151124087026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - (A000038 n - A000296 n)

end

end A113059.P13096976151124087026

/-!
# A113060: a(n) = n!*Sum_{k=0..n} bell(k+1)/k!, n=0,1..., where bell(n) are the Bell numbers, cf. A000110.

The programs for A113060, there is no canonical definition to state claims against.
-/

/-! ## A113060.P11477904170532117687

`A011972(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P11477904170532117687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A113060.P11477904170532117687

/-! ## A113060.P16561278922212944030

`A283424(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P16561278922212944030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283424 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A113060.P16561278922212944030

/-! ## A113060.P7449351595124852334

`record[A108087(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P7449351595124852334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A113060.P7449351595124852334

/-! ## A113060.P8458315892401633414

`record[A123346(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P8458315892401633414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A113060.P8458315892401633414

/-! ## A113060.P5314545763533000522

`record[A186020(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P5314545763533000522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A113060.P5314545763533000522

/-! ## A113060.P15558200990016481622

`record[A205574(n)]+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P15558200990016481622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205574 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * a (n - 1)

end

end A113060.P15558200990016481622

/-! ## A113060.P13732448502275304051

`A000110(n+1)+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P13732448502275304051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000110 (n + 1) + (n : ℤ) * a (n - 1)

end

end A113060.P13732448502275304051

/-! ## A113060.P7322432358726879854

`A011971(∑[n+1])+n*a(n-1)` with `a(0)=1`
-/

namespace A113060.P7322432358726879854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A113060.P7322432358726879854

/-! ## A113060.P17487143174258738888

`n*a(n-1)-(A087649(n)-A035098(n+2))` with `a(0)=1`
-/

namespace A113060.P17487143174258738888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) - (A087649 n - A035098 (n + 2))

end

end A113060.P17487143174258738888

/-! ## A113060.P16083807546734817884

`A101053(n+1)-A101054(n)`
-/

namespace A113060.P16083807546734817884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101053 (n + 1) - A101054 n

end

end A113060.P16083807546734817884

/-!
# A113061: Sum of cube divisors of n.

The programs for A113061, the canonical program `A113061.P11150295760055610552` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113061 has offset 1).

The definition of A113061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113061.P11150295760055610552

`∑{d}[n+1, #*A010057(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A113061

/-- `∑{d}[n+1, #*A010057(#)]` -/
def P11150295760055610552.Spec : Prop :=
  ∀ n, P11150295760055610552.a n = A113061 (n + 1)

theorem P11150295760055610552.correct : P11150295760055610552.Spec := by
  intro n
  simp only [A113061, Nat.add_sub_cancel]

end A113061

/-! ## A113061.P13363781367813919539

`A001158(A053150(n+1))`
-/

namespace A113061.P13363781367813919539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001158 (A053150 (n + 1)).toNat

end

end A113061.P13363781367813919539

namespace A113061

/-- `A001158(A053150(n+1))` -/
def P13363781367813919539.Spec : Prop :=
  ∀ n, P13363781367813919539.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P423988500639955174

`A327626(A008834(n+1))`
-/

namespace A113061.P423988500639955174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327626 (A008834 (n + 1)).toNat

end

end A113061.P423988500639955174

namespace A113061

/-- `A327626(A008834(n+1))` -/
def P423988500639955174.Spec : Prop :=
  ∀ n, P423988500639955174.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P5833731336658006181

`A361794(A000189(n+1))`
-/

namespace A113061.P5833731336658006181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 (A000189 (n + 1)).toNat

end

end A113061.P5833731336658006181

namespace A113061

/-- `A361794(A000189(n+1))` -/
def P5833731336658006181.Spec : Prop :=
  ∀ n, P5833731336658006181.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P14325296296889829204

`A361794(A053150(n+1)²)`
-/

namespace A113061.P14325296296889829204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 (A053150 (n + 1) ^ 2).toNat

end

end A113061.P14325296296889829204

namespace A113061

/-- `A361794(A053150(n+1)²)` -/
def P14325296296889829204.Spec : Prop :=
  ∀ n, P14325296296889829204.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P3217994442064415459

`A327626(A053150(n+1)^3)`
-/

namespace A113061.P3217994442064415459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327626 (A053150 (n + 1) ^ 3).toNat

end

end A113061.P3217994442064415459

namespace A113061

/-- `A327626(A053150(n+1)^3)` -/
def P3217994442064415459.Spec : Prop :=
  ∀ n, P3217994442064415459.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P2038222942247577702

`∑{d}[A053150(n+1), A000578(#)]`
-/

namespace A113061.P2038222942247577702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 d

end

end A113061.P2038222942247577702

namespace A113061

/-- `∑{d}[A053150(n+1), A000578(#)]` -/
def P2038222942247577702.Spec : Prop :=
  ∀ n, P2038222942247577702.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P17512118192865111130

`∑{d}[A008834(n+1), A078429(#)]`
-/

namespace A113061.P17512118192865111130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A078429 d

end

end A113061.P17512118192865111130

namespace A113061

/-- `∑{d}[A008834(n+1), A078429(#)]` -/
def P17512118192865111130.Spec : Prop :=
  ∀ n, P17512118192865111130.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P12975537219836914621

`A327626(n+1)/A050985(n+1)`
-/

namespace A113061.P12975537219836914621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327626 (n + 1) : ℚ) / (A050985 (n + 1) : ℚ)

end

end A113061.P12975537219836914621

namespace A113061

/-- `A327626(n+1)/A050985(n+1)` -/
def P12975537219836914621.Spec : Prop :=
  ∀ n, P12975537219836914621.a n = (A113061 (n + 1) : ℚ)

end A113061

/-! ## A113061.P13114830623096558363

`A361794(A053150(n+1)*A053150(n+1))`
-/

namespace A113061.P13114830623096558363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361794 (A053150 (n + 1) * A053150 (n + 1)).toNat

end

end A113061.P13114830623096558363

namespace A113061

/-- `A361794(A053150(n+1)*A053150(n+1))` -/
def P13114830623096558363.Spec : Prop :=
  ∀ n, P13114830623096558363.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P7606347974387789989

`A327626(A053150(n+1)²*A053150(n+1))`
-/

namespace A113061.P7606347974387789989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327626 (A053150 (n + 1) ^ 2 * A053150 (n + 1)).toNat

end

end A113061.P7606347974387789989

namespace A113061

/-- `A327626(A053150(n+1)²*A053150(n+1))` -/
def P7606347974387789989.Spec : Prop :=
  ∀ n, P7606347974387789989.a n = A113061 (n + 1)

end A113061

/-! ## A113061.P12623896277626571440

`∑{d}[n+1, A099894(#-1)*A304906((n+1)/#)]`
-/

namespace A113061.P12623896277626571440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A304906 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113061.P12623896277626571440

namespace A113061

/-- `∑{d}[n+1, A099894(#-1)*A304906((n+1)/#)]` -/
def P12623896277626571440.Spec : Prop :=
  ∀ n, P12623896277626571440.a n = A113061 (n + 1)

end A113061

/-!
# A113062: Expansion of theta series of hexagonal net with respect to a node.

The programs for A113062, there is no canonical definition to state claims against.
-/

/-! ## A113062.P618747065077118539

`abs(A005928(n))`
-/

namespace A113062.P618747065077118539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005928 n|

end

end A113062.P618747065077118539

/-! ## A113062.P12445618438460786205

`abs(A226535(n))`
-/

namespace A113062.P12445618438460786205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A226535 n|

end

end A113062.P12445618438460786205

/-! ## A113062.P13120690602420832747

`A004016(n)/2^(n%3)`
-/

namespace A113062.P13120690602420832747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (2 ^ (n % 3) : ℚ)

end

end A113062.P13120690602420832747

/-! ## A113062.P7494358464879410914

`A000196(A005928(n)²)`
-/

namespace A113062.P7494358464879410914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005928 n ^ 2).toNat

end

end A113062.P7494358464879410914

/-! ## A113062.P6202279891878484023

`A037213(A005928(n)²)`
-/

namespace A113062.P6202279891878484023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A005928 n ^ 2).toNat

end

end A113062.P6202279891878484023

/-! ## A113062.P14137413279544661644

`A138554(A005928(n)²)`
-/

namespace A113062.P14137413279544661644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A005928 n ^ 2).toNat

end

end A113062.P14137413279544661644

/-! ## A113062.P1241276634209515881

`A217219(n)+A005928(n)`
-/

namespace A113062.P1241276634209515881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217219 n + A005928 n

end

end A113062.P1241276634209515881

/-! ## A113062.P15080879625782388134

`A005928(n)*A049347(n)`
-/

namespace A113062.P15080879625782388134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n * A049347 n

end

end A113062.P15080879625782388134

/-! ## A113062.P3608953378259863901

`A010892(n)*A226535(n)`
-/

namespace A113062.P3608953378259863901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 n * A226535 n

end

end A113062.P3608953378259863901

/-! ## A113062.P2719694723869283604

`A005928(n)*A257075(n)`
-/

namespace A113062.P2719694723869283604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 n * A257075 n

end

end A113062.P2719694723869283604

/-! ## A113062.P1911681056835450095

`A130151(n)*A226535(n)`
-/

namespace A113062.P1911681056835450095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n * A226535 n

end

end A113062.P1911681056835450095

/-! ## A113062.P12319197118335205775

`A132367(n)*A226535(n)`
-/

namespace A113062.P12319197118335205775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132367 n * A226535 n

end

end A113062.P12319197118335205775

/-! ## A113062.P1956062634681021963

`A132419(n)*A226535(n)`
-/

namespace A113062.P1956062634681021963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 n * A226535 n

end

end A113062.P1956062634681021963

/-! ## A113062.P5624244950708080391

`A004016(n)/A010882(n)`
-/

namespace A113062.P5624244950708080391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A010882 n : ℚ)

end

end A113062.P5624244950708080391

/-! ## A113062.P7196674386048094574

`A004016(n)/A069705(n)`
-/

namespace A113062.P7196674386048094574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A069705 n : ℚ)

end

end A113062.P7196674386048094574

/-! ## A113062.P15690069061558588240

`A004016(n)/A130196(n)`
-/

namespace A113062.P15690069061558588240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A130196 n : ℚ)

end

end A113062.P15690069061558588240

/-! ## A113062.P13857537188611738249

`A004016(n)/A131534(n)`
-/

namespace A113062.P13857537188611738249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A131534 n : ℚ)

end

end A113062.P13857537188611738249

/-! ## A113062.P10450870166634268494

`A004016(n)/A132677(n)`
-/

namespace A113062.P10450870166634268494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004016 n : ℚ) / (A132677 n : ℚ)

end

end A113062.P10450870166634268494

/-! ## A113062.P5866492844058787112

`A180318(n)/A117373(n)`
-/

namespace A113062.P5866492844058787112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A117373 n : ℚ)

end

end A113062.P5866492844058787112

/-! ## A113062.P9342566651357722188

`A180318(n)/A131556(n)`
-/

namespace A113062.P9342566651357722188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180318 n : ℚ) / (A131556 n : ℚ)

end

end A113062.P9342566651357722188

/-!
# A113063: Associated with theta series of hexagonal net with respect to a node.

The programs for A113063, the canonical program `A113063.P2944476771486333311` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113063 has offset 1).

The definition of A113063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113063.P3505555353191940282

`(n²+1)%3*A002324(n+1)`
-/

namespace A113063.P3505555353191940282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2 + 1) % 3 : ℕ) : ℤ) * A002324 (n + 1)

end

end A113063.P3505555353191940282

namespace A113063

/-- `(n²+1)%3*A002324(n+1)` -/
def P3505555353191940282.Spec : Prop :=
  ∀ n, P3505555353191940282.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P2944476771486333311

`lcm(xor(n, n+1)%3, A255648(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113063

/-- `lcm(xor(n, n+1)%3, A255648(n+1))` -/
def P2944476771486333311.Spec : Prop :=
  ∀ n, (P2944476771486333311.a n : ℤ) = A113063 (n + 1)

theorem P2944476771486333311.correct : P2944476771486333311.Spec := by
  intro n
  simp only [A113063, Nat.add_sub_cancel]

end A113063

/-! ## A113063.P15906871704885275903

`A002264(abs(A005928(n+1)))`
-/

namespace A113063.P15906871704885275903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 |A005928 (n + 1)|.toNat

end

end A113063.P15906871704885275903

namespace A113063

/-- `A002264(abs(A005928(n+1)))` -/
def P15906871704885275903.Spec : Prop :=
  ∀ n, P15906871704885275903.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P11675998629734867944

`abs(A097109(A065883(n+1)))`
-/

namespace A113063.P11675998629734867944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097109 (A065883 (n + 1)).toNat|

end

end A113063.P11675998629734867944

namespace A113063

/-- `abs(A097109(A065883(n+1)))` -/
def P11675998629734867944.Spec : Prop :=
  ∀ n, P11675998629734867944.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P7139471206841860769

`A002324(n+1)*A130196(n)`
-/

namespace A113063.P7139471206841860769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A130196 n

end

end A113063.P7139471206841860769

namespace A113063

/-- `A002324(n+1)*A130196(n)` -/
def P7139471206841860769.Spec : Prop :=
  ∀ n, P7139471206841860769.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P10393314684681457797

`A002324(n+1)*A130784(n)`
-/

namespace A113063.P10393314684681457797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A130784 n

end

end A113063.P10393314684681457797

namespace A113063

/-- `A002324(n+1)*A130784(n)` -/
def P10393314684681457797.Spec : Prop :=
  ∀ n, P10393314684681457797.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P9113822123087735907

`A002324(n+1)*A153727(n)`
-/

namespace A113063.P9113822123087735907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A153727 n

end

end A113063.P9113822123087735907

namespace A113063

/-- `A002324(n+1)*A153727(n)` -/
def P9113822123087735907.Spec : Prop :=
  ∀ n, P9113822123087735907.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P17299354766385319711

`A002324(n+1)*A177702(n)`
-/

namespace A113063.P17299354766385319711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A177702 n

end

end A113063.P17299354766385319711

namespace A113063

/-- `A002324(n+1)*A177702(n)` -/
def P17299354766385319711.Spec : Prop :=
  ∀ n, P17299354766385319711.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P4620118393805866769

`A002324(n+1)*A280048(n)`
-/

namespace A113063.P4620118393805866769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A280048 n

end

end A113063.P4620118393805866769

namespace A113063

/-- `A002324(n+1)*A280048(n)` -/
def P4620118393805866769.Spec : Prop :=
  ∀ n, P4620118393805866769.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P15605363325215973424

`(A011655(n)+1)*A002324(n+1)`
-/

namespace A113063.P15605363325215973424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011655 n + 1) * A002324 (n + 1)

end

end A113063.P15605363325215973424

namespace A113063

/-- `(A011655(n)+1)*A002324(n+1)` -/
def P15605363325215973424.Spec : Prop :=
  ∀ n, P15605363325215973424.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P7698569455548837761

`A002324(n+1)*A060572(n+1)`
-/

namespace A113063.P7698569455548837761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A060572 (n + 1)

end

end A113063.P7698569455548837761

namespace A113063

/-- `A002324(n+1)*A060572(n+1)` -/
def P7698569455548837761.Spec : Prop :=
  ∀ n, P7698569455548837761.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P5320066872552113252

`A002324(n+1)*A085006(n+1)`
-/

namespace A113063.P5320066872552113252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A085006 (n + 1)

end

end A113063.P5320066872552113252

namespace A113063

/-- `A002324(n+1)*A085006(n+1)` -/
def P5320066872552113252.Spec : Prop :=
  ∀ n, P5320066872552113252.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P10844864966497512476

`A002324(n+1)*A101607(n+1)`
-/

namespace A113063.P10844864966497512476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1) * A101607 (n + 1)

end

end A113063.P10844864966497512476

namespace A113063

/-- `A002324(n+1)*A101607(n+1)` -/
def P10844864966497512476.Spec : Prop :=
  ∀ n, P10844864966497512476.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P11639767217723663976

`A035263(n+1)*A255648(n+1)`
-/

namespace A113063.P11639767217723663976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1) * A255648 (n + 1)

end

end A113063.P11639767217723663976

namespace A113063

/-- `A035263(n+1)*A255648(n+1)` -/
def P11639767217723663976.Spec : Prop :=
  ∀ n, P11639767217723663976.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P7991747677116232602

`A137893(n+1)*A255648(n+1)`
-/

namespace A113063.P7991747677116232602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1) * A255648 (n + 1)

end

end A113063.P7991747677116232602

namespace A113063

/-- `A137893(n+1)*A255648(n+1)` -/
def P7991747677116232602.Spec : Prop :=
  ∀ n, P7991747677116232602.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P10412034639088101108

`(1-A102283(n))*A002324(n+1)`
-/

namespace A113063.P10412034639088101108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A102283 n) * A002324 (n + 1)

end

end A113063.P10412034639088101108

namespace A113063

/-- `(1-A102283(n))*A002324(n+1)` -/
def P10412034639088101108.Spec : Prop :=
  ∀ n, P10412034639088101108.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P2716053019556370429

`(2-A049347(n))*A002324(n+1)`
-/

namespace A113063.P2716053019556370429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049347 n) * A002324 (n + 1)

end

end A113063.P2716053019556370429

namespace A113063

/-- `(2-A049347(n))*A002324(n+1)` -/
def P2716053019556370429.Spec : Prop :=
  ∀ n, P2716053019556370429.a n = A113063 (n + 1)

end A113063

/-! ## A113063.P13352459815035828148

`lcm(A002324(n+1), A112848(n+1))`
-/

namespace A113063.P13352459815035828148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002324 (n + 1)) (A112848 (n + 1))

end

end A113063.P13352459815035828148

namespace A113063

/-- `lcm(A002324(n+1), A112848(n+1))` -/
def P13352459815035828148.Spec : Prop :=
  ∀ n, (P13352459815035828148.a n : ℤ) = A113063 (n + 1)

end A113063

/-! ## A113063.P6230052585333798412

`lcm(A029883(n+1), A255648(n+1))`
-/

namespace A113063.P6230052585333798412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029883 (n + 1)) (A255648 (n + 1))

end

end A113063.P6230052585333798412

namespace A113063

/-- `lcm(A029883(n+1), A255648(n+1))` -/
def P6230052585333798412.Spec : Prop :=
  ∀ n, (P6230052585333798412.a n : ℤ) = A113063 (n + 1)

end A113063

/-! ## A113063.P1617387062991040458

`abs(A002324(n+1)*A061347(n+1))`
-/

namespace A113063.P1617387062991040458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002324 (n + 1) * A061347 (n + 1)|

end

end A113063.P1617387062991040458

namespace A113063

/-- `abs(A002324(n+1)*A061347(n+1))` -/
def P1617387062991040458.Spec : Prop :=
  ∀ n, P1617387062991040458.a n = A113063 (n + 1)

end A113063

/-!
# A113066: Expansion of (1 + x)^2/((1 + x + x^2)*(1 + 3*x + x^2)).

The programs for A113066, the canonical program `A113066.P14029972729263062841` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113066 has offset 0).

The definition of A113066 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+4x+5x^2+4x^3+x^4))` (program `A113066.P14029972729263062841`, by `A113066.P14029972729263062841.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113066.P14029972729263062841

`ogf((1+2x+x^2)/(1+4x+5x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113066

/-- `ogf((1+2x+x^2)/(1+4x+5x^2+4x^3+x^4))` -/
def P14029972729263062841.Spec : Prop :=
  ∀ n, P14029972729263062841.a n = A113066 n

theorem P14029972729263062841.correct : P14029972729263062841.Spec := by
  intro n
  simp only [A113066]

end A113066

/-! ## A113066.P11839382271275903397

`A049347(n)/2+(-1)^n*A001906(n+1)/2`
-/

namespace A113066.P11839382271275903397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 n : ℚ) / 2 + ((-1) ^ n * A001906 (n + 1) : ℚ) / 2

end

end A113066.P11839382271275903397

namespace A113066

/-- `A049347(n)/2+(-1)^n*A001906(n+1)/2` -/
def P11839382271275903397.Spec : Prop :=
  ∀ n, P11839382271275903397.a n = (A113066 n : ℚ)

end A113066

/-! ## A113066.P13612942405928097668

`(-1)^n*∑[A109961(n)]`
-/

namespace A113066.P13612942405928097668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113066.P13612942405928097668

namespace A113066

/-- `(-1)^n*∑[A109961(n)]` -/
def P13612942405928097668.Spec : Prop :=
  ∀ n, P13612942405928097668.a n = A113066 n

end A113066

/-! ## A113066.P9169422618040474524

`A113067(n)+A049347(n)`
-/

namespace A113066.P9169422618040474524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113067 n + A049347 n

end

end A113066.P9169422618040474524

namespace A113066

/-- `A113067(n)+A049347(n)` -/
def P9169422618040474524.Spec : Prop :=
  ∀ n, P9169422618040474524.a n = A113066 n

end A113066

/-! ## A113066.P836576346365911769

`∑[A109961(n)]*A033999(n)`
-/

namespace A113066.P836576346365911769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 n

end

end A113066.P836576346365911769

namespace A113066

/-- `∑[A109961(n)]*A033999(n)` -/
def P836576346365911769.Spec : Prop :=
  ∀ n, P836576346365911769.a n = A113066 n

end A113066

/-! ## A113066.P5379662394470510818

`A113067(n)-A057078(n+2)`
-/

namespace A113066.P5379662394470510818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113067 n - A057078 (n + 2)

end

end A113066.P5379662394470510818

namespace A113066

/-- `A113067(n)-A057078(n+2)` -/
def P5379662394470510818.Spec : Prop :=
  ∀ n, P5379662394470510818.a n = A113066 n

end A113066

/-! ## A113066.P4375860910482480072

`A113067(n)+A010892(4*n)`
-/

namespace A113066.P4375860910482480072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113067 n + A010892 (4 * n)

end

end A113066.P4375860910482480072

namespace A113066

/-- `A113067(n)+A010892(4*n)` -/
def P4375860910482480072.Spec : Prop :=
  ∀ n, P4375860910482480072.a n = A113066 n

end A113066

/-! ## A113066.P12246061594063340122

`∑[A109961(n)]*A087960(2*n)`
-/

namespace A113066.P12246061594063340122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A087960 (2 * n)

end

end A113066.P12246061594063340122

namespace A113066

/-- `∑[A109961(n)]*A087960(2*n)` -/
def P12246061594063340122.Spec : Prop :=
  ∀ n, P12246061594063340122.a n = A113066 n

end A113066

/-! ## A113066.P5934746195814604038

`A049347(n)+A290890(n)/(-1)^n`
-/

namespace A113066.P5934746195814604038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049347 n : ℚ) + (A290890 n : ℚ) / ((-1) ^ n : ℚ)

end

end A113066.P5934746195814604038

namespace A113066

/-- `A049347(n)+A290890(n)/(-1)^n` -/
def P5934746195814604038.Spec : Prop :=
  ∀ n, P5934746195814604038.a n = (A113066 n : ℚ)

end A113066

/-! ## A113066.P14969982786238514932

`A049347(n)+A056594(2*n)*A290890(n)`
-/

namespace A113066.P14969982786238514932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + A056594 (2 * n) * A290890 n

end

end A113066.P14969982786238514932

namespace A113066

/-- `A049347(n)+A056594(2*n)*A290890(n)` -/
def P14969982786238514932.Spec : Prop :=
  ∀ n, P14969982786238514932.a n = A113066 n

end A113066

/-! ## A113066.P6778512928754302830

`∑[A109961(n)]/A087960(n²)`
-/

namespace A113066.P6778512928754302830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A087960 (n ^ 2) : ℚ)

end

end A113066.P6778512928754302830

namespace A113066

/-- `∑[A109961(n)]/A087960(n²)` -/
def P6778512928754302830.Spec : Prop :=
  ∀ n, P6778512928754302830.a n = (A113066 n : ℚ)

end A113066

/-!
# A113067: Expansion of -x/((x^2+x+1)*(x^2+3*x+1)); invert transform gives signed version of tetrahedral numbers A000292.

The programs for A113067, the canonical program `A113067.P11048481094750430502` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113067 has offset 0).

The definition of A113067 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(-x/(1+4x+5x^2+4x^3+x^4))` (program `A113067.P11048481094750430502`, by `A113067.P11048481094750430502.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113067.P11048481094750430502

`ogf(-x/(1+4x+5x^2+4x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113067

/-- `ogf(-x/(1+4x+5x^2+4x^3+x^4))` -/
def P11048481094750430502.Spec : Prop :=
  ∀ n, P11048481094750430502.a n = A113067 n

theorem P11048481094750430502.correct : P11048481094750430502.Spec := by
  intro n
  simp only [A113067]

end A113067

/-! ## A113067.P17358365710722140311

`(-1)^n*A290890(n)`
-/

namespace A113067.P17358365710722140311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A290890 n

end

end A113067.P17358365710722140311

namespace A113067

/-- `(-1)^n*A290890(n)` -/
def P17358365710722140311.Spec : Prop :=
  ∀ n, P17358365710722140311.a n = A113067 n

end A113067

/-! ## A113067.P13509891627947507241

`A113066(n)-A049347(n)`
-/

namespace A113067.P13509891627947507241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113066 n - A049347 n

end

end A113067.P13509891627947507241

namespace A113067

/-- `A113066(n)-A049347(n)` -/
def P13509891627947507241.Spec : Prop :=
  ∀ n, P13509891627947507241.a n = A113067 n

end A113067

/-! ## A113067.P7743817944053460354

`A290890(n)/A033999(n)`
-/

namespace A113067.P7743817944053460354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290890 n : ℚ) / (A033999 n : ℚ)

end

end A113067.P7743817944053460354

namespace A113067

/-- `A290890(n)/A033999(n)` -/
def P7743817944053460354.Spec : Prop :=
  ∀ n, P7743817944053460354.a n = (A113067 n : ℚ)

end A113067

/-! ## A113067.P4699680892350500377

`Δ[A109961(n)]*A033999(n)`
-/

namespace A113067.P4699680892350500377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 n

end

end A113067.P4699680892350500377

namespace A113067

/-- `Δ[A109961(n)]*A033999(n)` -/
def P4699680892350500377.Spec : Prop :=
  ∀ n, P4699680892350500377.a n = A113067 n

end A113067

/-! ## A113067.P10961639026274009458

`A113066(n)+A057078(n+2)`
-/

namespace A113067.P10961639026274009458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113066 n + A057078 (n + 2)

end

end A113067.P10961639026274009458

namespace A113067

/-- `A113066(n)+A057078(n+2)` -/
def P10961639026274009458.Spec : Prop :=
  ∀ n, P10961639026274009458.a n = A113067 n

end A113067

/-! ## A113067.P7117562618450133725

`A113066(n)-A106510(n+1)`
-/

namespace A113067.P7117562618450133725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113066 n - A106510 (n + 1)

end

end A113067.P7117562618450133725

namespace A113067

/-- `A113066(n)-A106510(n+1)` -/
def P7117562618450133725.Spec : Prop :=
  ∀ n, P7117562618450133725.a n = A113067 n

end A113067

/-! ## A113067.P6655702222992781694

`A113066(n)-A010892(4*n)`
-/

namespace A113067.P6655702222992781694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113066 n - A010892 (4 * n)

end

end A113067.P6655702222992781694

namespace A113067

/-- `A113066(n)-A010892(4*n)` -/
def P6655702222992781694.Spec : Prop :=
  ∀ n, P6655702222992781694.a n = A113067 n

end A113067

/-! ## A113067.P8568140897972456971

`A290890(n)/A056594(2*n)`
-/

namespace A113067.P8568140897972456971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290890 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A113067.P8568140897972456971

namespace A113067

/-- `A290890(n)/A056594(2*n)` -/
def P8568140897972456971.Spec : Prop :=
  ∀ n, P8568140897972456971.a n = (A113067 n : ℚ)

end A113067

/-!
# A113070: Expansion of ((1+x)/(1-2*x))^2.

The programs for A113070, the canonical program `A113070.P3451803011623617177` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113070 has offset 0).

The definition of A113070 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-4x+4x^2))` (program `A113070.P3451803011623617177`, by `A113070.P3451803011623617177.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113070.P3451803011623617177

`ogf((1+2x+x^2)/(1-4x+4x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113070

/-- `ogf((1+2x+x^2)/(1-4x+4x^2))` -/
def P3451803011623617177.Spec : Prop :=
  ∀ n, P3451803011623617177.a n = A113070 n

theorem P3451803011623617177.correct : P3451803011623617177.Spec := by
  intro n
  simp only [A113070]

end A113070

/-! ## A113070.P11218884200401495659

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=21`
-/

namespace A113070.P11218884200401495659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 21] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A113070.P11218884200401495659

namespace A113070

/-- `4*a(n-1)-4*a(n-2)` -/
def P11218884200401495659.Spec : Prop :=
  ∀ n, P11218884200401495659.a n = A113070 n

end A113070

/-! ## A113070.P18248674953310559943

`2^n*Δ[n²]+floor(((n-1)*2^n-1)/4)+1`
-/

namespace A113070.P18248674953310559943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (⌊(((n : ℤ) - 1) * (2 ^ n : ℤ) - 1 : ℚ) / 4⌋ + 1)

end

end A113070.P18248674953310559943

namespace A113070

/-- `2^n*Δ[n²]+floor(((n-1)*2^n-1)/4)+1` -/
def P18248674953310559943.Spec : Prop :=
  ∀ n, P18248674953310559943.a n = A113070 n

end A113070

/-! ## A113070.P4262684162407959386

`(A022144(n)+3+n)*2^(n-2)`
-/

namespace A113070.P4262684162407959386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022144 n + 3 + (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

end

end A113070.P4262684162407959386

namespace A113070

/-- `(A022144(n)+3+n)*2^(n-2)` -/
def P4262684162407959386.Spec : Prop :=
  ∀ n, P4262684162407959386.a n = (A113070 n : ℚ)

end A113070

/-! ## A113070.P867699593479232659

`(A016921(n)+1)*A042950(n)/4`
-/

namespace A113070.P867699593479232659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016921 n + 1 : ℚ) * ((A042950 n : ℚ) / 4)

end

end A113070.P867699593479232659

namespace A113070

/-- `(A016921(n)+1)*A042950(n)/4` -/
def P867699593479232659.Spec : Prop :=
  ∀ n, P867699593479232659.a n = (A113070 n : ℚ)

end A113070

/-! ## A113070.P16047208010911047233

`(A167667(2*n+1)+A167667(2*n))/A198633(n+1)`
-/

namespace A113070.P16047208010911047233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167667 (2 * n + 1) + A167667 (2 * n) : ℚ) / (A198633 (n + 1) : ℚ)

end

end A113070.P16047208010911047233

namespace A113070

/-- `(A167667(2*n+1)+A167667(2*n))/A198633(n+1)` -/
def P16047208010911047233.Spec : Prop :=
  ∀ n, P16047208010911047233.a n = (A113070 n : ℚ)

end A113070

/-! ## A113070.P14804131752990845934

`A116412(∑[n+1]+1)`
-/

namespace A113070.P14804131752990845934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116412 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113070.P14804131752990845934

namespace A113070

/-- `A116412(∑[n+1]+1)` -/
def P14804131752990845934.Spec : Prop :=
  ∀ n, P14804131752990845934.a n = A113070 n

end A113070

/-! ## A113070.P7942451828288088407

`A249251(∑[n+2]-1)`
-/

namespace A113070.P7942451828288088407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249251 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A113070.P7942451828288088407

namespace A113070

/-- `A249251(∑[n+2]-1)` -/
def P7942451828288088407.Spec : Prop :=
  ∀ n, P7942451828288088407.a n = A113070 n

end A113070

/-!
# A113071: Expansion of g.f. ((1+x)/(1-3*x))^2.

The programs for A113071, the canonical program `A113071.P14936032631074903003` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113071 has offset 0).

The definition of A113071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1-6x+9x^2))` (program `A113071.P14936032631074903003`, by `A113071.P14936032631074903003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113071.P14936032631074903003

`ogf((1+2x+x^2)/(1-6x+9x^2))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113071

/-- `ogf((1+2x+x^2)/(1-6x+9x^2))` -/
def P14936032631074903003.Spec : Prop :=
  ∀ n, P14936032631074903003.a n = A113071 n

theorem P14936032631074903003.correct : P14936032631074903003.Spec := by
  intro n
  simp only [A113071]

end A113071

/-! ## A113071.P12573239959027502109

`6*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=8, a(2)=40`
-/

namespace A113071.P12573239959027502109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 40] fun n a =>
  6 * a (n - 1) - 9 * a (n - 2)

end

end A113071.P12573239959027502109

namespace A113071

/-- `6*a(n-1)-9*a(n-2)` -/
def P12573239959027502109.Spec : Prop :=
  ∀ n, P12573239959027502109.a n = A113071 n

end A113071

/-! ## A113071.P4457651943366730859

`(2*n+1)/3*A080923(n+1)`
-/

namespace A113071.P4457651943366730859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / 3 * (A080923 (n + 1) : ℚ)

end

end A113071.P4457651943366730859

namespace A113071

/-- `(2*n+1)/3*A080923(n+1)` -/
def P4457651943366730859.Spec : Prop :=
  ∀ n, P4457651943366730859.a n = (A113071 n : ℚ)

end A113071

/-! ## A113071.P4805679195976130171

`A120908(n+1)+ceil(4*(n+2)*3^(n-2))`
-/

namespace A113071.P4805679195976130171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120908 (n + 1) + ⌈4 * ((n + 2 : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))⌉

end

end A113071.P4805679195976130171

namespace A113071

/-- `A120908(n+1)+ceil(4*(n+2)*3^(n-2))` -/
def P4805679195976130171.Spec : Prop :=
  ∀ n, P4805679195976130171.a n = A113071 n

end A113071

/-! ## A113071.P9046740328584898193

`ratio[A011782(n)]*A167682(n)`
-/

namespace A113071.P9046740328584898193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A167682 n : ℚ)

end

end A113071.P9046740328584898193

namespace A113071

/-- `ratio[A011782(n)]*A167682(n)` -/
def P9046740328584898193.Spec : Prop :=
  ∀ n, P9046740328584898193.a n = (A113071 n : ℚ)

end A113071

/-! ## A113071.P2385594466674157580

`A036453(n+1)*A167682(n)`
-/

namespace A113071.P2385594466674157580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A167682 n

end

end A113071.P2385594466674157580

namespace A113071

/-- `A036453(n+1)*A167682(n)` -/
def P2385594466674157580.Spec : Prop :=
  ∀ n, P2385594466674157580.a n = A113071 n

end A113071

/-! ## A113071.P9324884437028135709

`(2-A000007(n))*A167682(n)`
-/

namespace A113071.P9324884437028135709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A167682 n

end

end A113071.P9324884437028135709

namespace A113071

/-- `(2-A000007(n))*A167682(n)` -/
def P9324884437028135709.Spec : Prop :=
  ∀ n, P9324884437028135709.a n = A113071 n

end A113071

/-! ## A113071.P169645506334739817

`A124647(n)-A229277(n)/3`
-/

namespace A113071.P169645506334739817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124647 n : ℚ) - (A229277 n : ℚ) / 3

end

end A113071.P169645506334739817

namespace A113071

/-- `A124647(n)-A229277(n)/3` -/
def P169645506334739817.Spec : Prop :=
  ∀ n, P169645506334739817.a n = (A113071 n : ℚ)

end A113071

/-! ## A113071.P5227565520904849654

`gcd(2, A000079(n))*A167682(n)`
-/

namespace A113071.P5227565520904849654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000079 n) : ℤ) * A167682 n

end

end A113071.P5227565520904849654

namespace A113071

/-- `gcd(2, A000079(n))*A167682(n)` -/
def P5227565520904849654.Spec : Prop :=
  ∀ n, P5227565520904849654.a n = A113071 n

end A113071

/-! ## A113071.P9982778980506613109

`A080923(n)+n*Δ[A080923(n)]`
-/

namespace A113071.P9982778980506613109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 n + (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A113071.P9982778980506613109

namespace A113071

/-- `A080923(n)+n*Δ[A080923(n)]` -/
def P9982778980506613109.Spec : Prop :=
  ∀ n, P9982778980506613109.a n = A113071 n

end A113071

/-! ## A113071.P2419930651026874276

`A120926(n+1)+A120908(n+1)`
-/

namespace A113071.P2419930651026874276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (n + 1) + A120908 (n + 1)

end

end A113071.P2419930651026874276

namespace A113071

/-- `A120926(n+1)+A120908(n+1)` -/
def P2419930651026874276.Spec : Prop :=
  ∀ n, P2419930651026874276.a n = A113071 n

end A113071

/-! ## A113071.P15874765914650745415

`(char[A321783(n+1)]+1)*A167682(n)`
-/

namespace A113071.P15874765914650745415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℤ) * A167682 n

end

end A113071.P15874765914650745415

namespace A113071

/-- `(char[A321783(n+1)]+1)*A167682(n)` -/
def P15874765914650745415.Spec : Prop :=
  ∀ n, P15874765914650745415.a n = A113071 n

end A113071

/-! ## A113071.P6661553891656041771

`A292482(n+1)-2*A003946(n+1)`
-/

namespace A113071.P6661553891656041771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292482 (n + 1) - 2 * A003946 (n + 1)

end

end A113071.P6661553891656041771

namespace A113071

/-- `A292482(n+1)-2*A003946(n+1)` -/
def P6661553891656041771.Spec : Prop :=
  ∀ n, P6661553891656041771.a n = A113071 n

end A113071

/-! ## A113071.P14569153163178067661

`A020639(A103517(n))*A167682(n)`
-/

namespace A113071.P14569153163178067661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A167682 n

end

end A113071.P14569153163178067661

namespace A113071

/-- `A020639(A103517(n))*A167682(n)` -/
def P14569153163178067661.Spec : Prop :=
  ∀ n, P14569153163178067661.a n = A113071 n

end A113071

/-! ## A113071.P7259705562231257817

`A020639(A111284(n+1))*A167682(n)`
-/

namespace A113071.P7259705562231257817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111284 (n + 1)).toNat * A167682 n

end

end A113071.P7259705562231257817

namespace A113071

/-- `A020639(A111284(n+1))*A167682(n)` -/
def P7259705562231257817.Spec : Prop :=
  ∀ n, P7259705562231257817.a n = A113071 n

end A113071

/-! ## A113071.P5986894507315246885

`A020639(A140853(n+1))*A167682(n)`
-/

namespace A113071.P5986894507315246885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A140853 (n + 1)).toNat * A167682 n

end

end A113071.P5986894507315246885

namespace A113071

/-- `A020639(A140853(n+1))*A167682(n)` -/
def P5986894507315246885.Spec : Prop :=
  ∀ n, P5986894507315246885.a n = A113071 n

end A113071

/-! ## A113071.P11120317014522104846

`A027471(n+1)+A120926(n+1)+A036290(n)`
-/

namespace A113071.P11120317014522104846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A120926 (n + 1) + A036290 n)

end

end A113071.P11120317014522104846

namespace A113071

/-- `A027471(n+1)+A120926(n+1)+A036290(n)` -/
def P11120317014522104846.Spec : Prop :=
  ∀ n, P11120317014522104846.a n = A113071 n

end A113071

/-! ## A113071.P15223622277920926140

`A268633(n+1)/3`
-/

namespace A113071.P15223622277920926140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268633 (n + 1) : ℚ) / 3

end

end A113071.P15223622277920926140

namespace A113071

/-- `A268633(n+1)/3` -/
def P15223622277920926140.Spec : Prop :=
  ∀ n, P15223622277920926140.a n = (A113071 n : ℚ)

end A113071

/-! ## A113071.P5841873741428803423

`Δ[(n-1)*A080923(n)]`
-/

namespace A113071.P5841873741428803423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A080923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113071.P5841873741428803423

namespace A113071

/-- `Δ[(n-1)*A080923(n)]` -/
def P5841873741428803423.Spec : Prop :=
  ∀ n, P5841873741428803423.a n = A113071 n

end A113071

/-!
# A113072: Tridiagonal matrix associated with coordination sequences.

The programs for A113072, there is no canonical definition to state claims against.
-/

/-! ## A113072.P14117633591426067031

`A132440(n)+A113125(n)`
-/

namespace A113072.P14117633591426067031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132440 n + A113125 n

end

end A113072.P14117633591426067031

/-! ## A113072.P8325870165142351604

`abs(A113125(n)*A185018(n))`
-/

namespace A113072.P8325870165142351604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A113125 n * A185018 n|

end

end A113072.P8325870165142351604

/-! ## A113072.P14825665409138716018

`A134402(n+1)+A113125(n)`
-/

namespace A113072.P14825665409138716018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134402 (n + 1) + A113125 n

end

end A113072.P14825665409138716018

/-! ## A113072.P757498381879542382

`A020906(n+1)*A113125(n)`
-/

namespace A113072.P757498381879542382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020906 (n + 1) * A113125 n

end

end A113072.P757498381879542382

/-! ## A113072.P7162853383170423873

`A042974(n+1)*A113125(n)`
-/

namespace A113072.P7162853383170423873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (n + 1) * A113125 n

end

end A113072.P7162853383170423873

/-! ## A113072.P13326572137891374193

`A113125(n)*A131406(n+1)`
-/

namespace A113072.P13326572137891374193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n * A131406 (n + 1)

end

end A113072.P13326572137891374193

/-! ## A113072.P5778031664021817802

`A113125(n)*A167194(n+1)`
-/

namespace A113072.P5778031664021817802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n * A167194 (n + 1)

end

end A113072.P5778031664021817802

/-! ## A113072.P14232090311200335318

`A113126(n)*A167194(n+1)`
-/

namespace A113072.P14232090311200335318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113126 n * A167194 (n + 1)

end

end A113072.P14232090311200335318

/-! ## A113072.P12459560814245801464

`A140756(n+1)*A185018(n)`
-/

namespace A113072.P12459560814245801464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1) * A185018 n

end

end A113072.P12459560814245801464

/-! ## A113072.P4643778678959046269

`A113125(n)*A220465(n+1)`
-/

namespace A113072.P4643778678959046269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113125 n * A220465 (n + 1)

end

end A113072.P4643778678959046269

/-!
# A113075: Beginning with 3, primes of the form: least multiple of the previous term followed by a 1. Beginning with 3, a(n) is the least prime of the form k*a(n-1)*10 +1.

The programs for A113075, there is no canonical definition to state claims against.
-/

/-! ## A113075.P16855895361986369323

`A070849(a(n-1))` with `a(0)=3`
-/

namespace A113075.P16855895361986369323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A070849 (a (n - 1)).toNat

end

end A113075.P16855895361986369323

/-!
# A113077: Column 3 of square table A093729; a(n) gives the number of n-th generation descendents of a node labeled (3) in the tree of tournament sequences, for n>=0.

The programs for A113077, there is no canonical definition to state claims against.
-/

/-! ## A113077.P10737941468213505908

`A093729(A167614(n+2))`
-/

namespace A113077.P10737941468213505908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (A167614 (n + 2)).toNat

end

end A113077.P10737941468213505908

/-! ## A113077.P11413651706025835328

`A093729(A052905(n)+8)`
-/

namespace A113077.P11413651706025835328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (A052905 n + 8).toNat

end

end A113077.P11413651706025835328

/-! ## A113077.P3274697699869050249

`A093729(A055999(n)+9)`
-/

namespace A113077.P3274697699869050249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (A055999 n + 9).toNat

end

end A113077.P3274697699869050249

/-! ## A113077.P5841193359764167086

`A093729(eq[3, A002262(n)])`
-/

namespace A113077.P5841193359764167086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113077.P5841193359764167086

/-! ## A113077.P952603981406474549

`A093729(eq[8, A059268(n)])`
-/

namespace A113077.P952603981406474549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113077.P952603981406474549

/-!
# A113078: Number of tournament sequences: a(n) gives the number of n-th generation descendents of a node labeled (4) in the tree of tournament sequences.

The programs for A113078, there is no canonical definition to state claims against.
-/

/-! ## A113078.P10882180199883174433

`record[Δ[-A093729(n)]]`
-/

namespace A113078.P10882180199883174433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A093729 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113078.P10882180199883174433

/-! ## A113078.P17853555363170417039

`A093729(eq[4, A002262(n)])`
-/

namespace A113078.P17853555363170417039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113078.P17853555363170417039

/-! ## A113078.P4120722785198737343

`A093729(eq[16, A059268(n)])`
-/

namespace A113078.P4120722785198737343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113078.P4120722785198737343

/-! ## A113078.P17183110157946062671

`A093729(eq[4, A144328(n+1)])`
-/

namespace A113078.P17183110157946062671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113078.P17183110157946062671

/-! ## A113078.P7467792050498702516

`A093729(eq[5, A002260(n+1)])`
-/

namespace A113078.P7467792050498702516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113078.P7467792050498702516

/-!
# A113079: Number of tournament sequences: a(n) gives the number of n-th generation descendents of a node labeled (5) in the tree of tournament sequences.

The programs for A113079, there is no canonical definition to state claims against.
-/

/-! ## A113079.P11862897764167225967

`A093729(eq[5, A002262(n)])`
-/

namespace A113079.P11862897764167225967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113079.P11862897764167225967

/-! ## A113079.P3482985998786623197

`A093729(eq[5, A144328(n+1)])`
-/

namespace A113079.P3482985998786623197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113079.P3482985998786623197

/-! ## A113079.P14226442900085212627

`A093729(eq[6, A002260(n+1)])`
-/

namespace A113079.P14226442900085212627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113079.P14226442900085212627

/-! ## A113079.P17006240263198204384

`record[A054527(n+1)*A093729(n)]`
-/

namespace A113079.P17006240263198204384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A093729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113079.P17006240263198204384

/-! ## A113079.P14058537270390609544

`record[A093729(A167499(n)%A008934(n))]`
-/

namespace A113079.P14058537270390609544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 (Int.tmod (A167499 n) (A008934 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113079.P14058537270390609544

/-!
# A113080: Square table, read by antidiagonals, where T(n,k) equals the number of k-tournament sequences of length n for k>=1, with T(0,k) = 1 for k>=1 and T(n,1) = 0 for n>0.

The programs for A113080, there is no canonical definition to state claims against.
-/

/-! ## A113080.P14868296172068889041

`A341618(A282275(n+1))+A093729(n)`
-/

namespace A113080.P14868296172068889041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341618 (A282275 (n + 1)).toNat + A093729 n

end

end A113080.P14868296172068889041

/-! ## A113080.P13325840656334660042

`A241091(A184962(n))`
-/

namespace A113080.P13325840656334660042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (A184962 n).toNat

end

end A113080.P13325840656334660042

/-! ## A113080.P5526124564363009429

`A241091(A265608(n))`
-/

namespace A113080.P5526124564363009429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241091 (A265608 n).toNat

end

end A113080.P5526124564363009429

/-! ## A113080.P2415533729460597846

`A117707(A394530(n))`
-/

namespace A113080.P2415533729460597846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A394530 n).toNat

end

end A113080.P2415533729460597846

/-! ## A113080.P3871747195193864698

`A325678(A254883(n)²)`
-/

namespace A113080.P3871747195193864698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A254883 n ^ 2).toNat

end

end A113080.P3871747195193864698

/-!
# A113081: Square table T, read by antidiagonals, where T(n,k) gives the number of n-th generation descendents of a node labeled (k), in the tree of 3-tournament sequences, for n>=1.

The programs for A113081, there is no canonical definition to state claims against.
-/

/-! ## A113081.P8133328777731839547

`A203076(A111106(n))`
-/

namespace A113081.P8133328777731839547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 (A111106 n).toNat

end

end A113081.P8133328777731839547

/-! ## A113081.P4836668431710577331

`A089843(A321964(n))`
-/

namespace A113081.P4836668431710577331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A321964 n).toNat

end

end A113081.P4836668431710577331

/-! ## A113081.P15810481528902800776

`A090894(A370419(n))`
-/

namespace A113081.P15810481528902800776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090894 (A370419 n).toNat

end

end A113081.P15810481528902800776

/-! ## A113081.P4919157645251851075

`A227568(A355282(n))`
-/

namespace A113081.P4919157645251851075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A355282 n).toNat

end

end A113081.P4919157645251851075

/-! ## A113081.P2108649140210918864

`A265531(A380841(n))`
-/

namespace A113081.P2108649140210918864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265531 (A380841 n).toNat

end

end A113081.P2108649140210918864

/-!
# A113082: Main diagonal of square table A113081; also, a(n) equals the n-th term in column 0 of the matrix n-th power of triangle A113084.

The programs for A113082, there is no canonical definition to state claims against.
-/

/-! ## A113082.P12239213736625336159

`A113081(∑[4*n])`
-/

namespace A113082.P12239213736625336159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113082.P12239213736625336159

/-!
# A113083: Diagonal of square table A113081; also, a(n) equals the n-th term in column 0 of the matrix (n+1)-th power of triangle A113084.

The programs for A113083, there is no canonical definition to state claims against.
-/

/-! ## A113083.P16201855262898152946

`A113081(2*(n+1)²)`
-/

namespace A113083.P16201855262898152946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 (2 * (n + 1) ^ 2)

end

end A113083.P16201855262898152946

/-!
# A113085: Number of 3-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 1 and t_i = 1 (mod 2) and t_{i+1} <= 3*t_i for 1

The programs for A113085, there is no canonical definition to state claims against.
-/

/-! ## A113085.P13930472471255322494

`A113084(∑[n])`
-/

namespace A113085.P13930472471255322494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113085.P13930472471255322494

/-! ## A113085.P16555458171657624631

`A113090(C(n, 2))`
-/

namespace A113085.P16555458171657624631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113090 (Nat.choose n 2)

end

end A113085.P16555458171657624631

/-! ## A113085.P6843709654899447924

`A113090(∑[n]-n)`
-/

namespace A113085.P6843709654899447924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113090 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A113085.P6843709654899447924

/-! ## A113085.P8151844439723714576

`abs(record[Δ[A113081(n)]])`
-/

namespace A113085.P8151844439723714576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A113085.P8151844439723714576

/-! ## A113085.P2964305892834183361

`A113081(∑[n+1]+1)`
-/

namespace A113085.P2964305892834183361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113085.P2964305892834183361

/-!
# A113086: Column 1 of triangle A113084, which satisfies the recurrence: A113084(n,k) = [A113084^3](n-1,k-1) + [A113084^3](n-1,k).

The programs for A113086, there is no canonical definition to state claims against.
-/

/-! ## A113086.P13533254230581260073

`record[A113084(comp[∑[n]])]`
-/

namespace A113086.P13533254230581260073
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113086.P13533254230581260073

/-! ## A113086.P858589262091273460

`A113084(∑[n+1]+1)`
-/

namespace A113086.P858589262091273460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113086.P858589262091273460

/-! ## A113086.P15630869029726602192

`record[A103631(n)*A113084(n)]`
-/

namespace A113086.P15630869029726602192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103631 n * A113084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113086.P15630869029726602192

/-! ## A113086.P17405338395387105205

`record[A113084(n)*A123110(n)]`
-/

namespace A113086.P17405338395387105205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113084 n * A123110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113086.P17405338395387105205

/-!
# A113087: Row sums of triangle A113084, which satisfies the recurrence: A113084(n,k) = [A113084^3](n-1,k-1) + [A113084^3](n-1,k).

The programs for A113087, there is no canonical definition to state claims against.
-/

/-! ## A113087.P969055601474902924

`4*A005180(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A113087.P969055601474902924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * A005180 (a (n - 1)).toNat

end

end A113087.P969055601474902924

/-!
# A113088: Triangle T, read by rows, equal to the matrix square of triangle A113084, which satisfies the recurrence: A113084(n,k) = [A113084^3](n-1,k-1) + [A113084^3](n-1,k).

The programs for A113088, there is no canonical definition to state claims against.
-/

/-! ## A113088.P14726846598837039050

`A256098(A150941(n))`
-/

namespace A113088.P14726846598837039050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256098 (A150941 n).toNat

end

end A113088.P14726846598837039050

/-! ## A113088.P10820994796473032463

`A178522(∑[A256680(n+1)+1])`
-/

namespace A113088.P10820994796473032463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256680 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178522 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A113088.P10820994796473032463

/-! ## A113088.P14149295661818911805

`A259466(A259477(n))-A259471(n)`
-/

namespace A113088.P14149295661818911805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259466 (A259477 n).toNat - A259471 n

end

end A113088.P14149295661818911805

/-!
# A113089: Number of 3-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 2 and t_i = 2 (mod 2) and t_{i+1} <= 3*t_i for 1

The programs for A113089, there is no canonical definition to state claims against.
-/

/-! ## A113089.P3657393719253101832

`A162127(n)-a(n-1)` with `a(0)=1`
-/

namespace A113089.P3657393719253101832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162127 n - a (n - 1)

end

end A113089.P3657393719253101832

/-! ## A113089.P3263716914812470158

`A113088(∑[n])`
-/

namespace A113089.P3263716914812470158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113088 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113089.P3263716914812470158

/-! ## A113089.P8377766226515330434

`A113081(∑[n+2]+3)`
-/

namespace A113089.P8377766226515330434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113081 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113089.P8377766226515330434

/-! ## A113089.P15720383031154687289

`A113080(abs(2-C(n+3, 2))+5)`
-/

namespace A113089.P15720383031154687289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113080 (|2 - (Nat.choose (n + 3) 2 : ℤ)| + 5).toNat

end

end A113089.P15720383031154687289

/-!
# A113091: Column 1 of triangle A113090.

The programs for A113091, there is no canonical definition to state claims against.
-/

/-! ## A113091.P8389940870769334038

`A113086(n+2)-A113085(n+2)`
-/

namespace A113091.P8389940870769334038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113086 (n + 2) - A113085 (n + 2)

end

end A113091.P8389940870769334038

/-! ## A113091.P6601581467553818304

`record[A113090(comp[∑[n]])]`
-/

namespace A113091.P6601581467553818304
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113090 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113091.P6601581467553818304

/-! ## A113091.P7122697927213976343

`A113090(∑[n+1]+1)`
-/

namespace A113091.P7122697927213976343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113090 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113091.P7122697927213976343

/-!
# A113092: Square table T, read by antidiagonals, where T(n,k) gives the number of n-th generation descendents of a node labeled (k) in the tree of 4-tournament sequences.

The programs for A113092, there is no canonical definition to state claims against.
-/

/-! ## A113092.P2117709365013682941

`A380841(n)+A364272(A380841(n))`
-/

namespace A113092.P2117709365013682941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380841 n + A364272 (A380841 n).toNat

end

end A113092.P2117709365013682941

/-! ## A113092.P9258054410978415277

`A192262(A199335(n+1))`
-/

namespace A113092.P9258054410978415277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 (A199335 (n + 1)).toNat

end

end A113092.P9258054410978415277

/-! ## A113092.P8078637765379164561

`A068670(A064045(n)^A040476(n))`
-/

namespace A113092.P8078637765379164561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (SequenceMachineLib.roundAway ((A064045 n : ℚ) ^ (A040476 n : ℤ))).toNat

end

end A113092.P8078637765379164561

/-! ## A113092.P8905779562912833840

`A068670(A067347(n)^A040476(n))`
-/

namespace A113092.P8905779562912833840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068670 (SequenceMachineLib.roundAway ((A067347 n : ℚ) ^ (A040476 n : ℤ))).toNat

end

end A113092.P8905779562912833840

/-! ## A113092.P2089142611405083405

`A072794(A084938(n)^A040476(n))`
-/

namespace A113092.P2089142611405083405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072794 (SequenceMachineLib.roundAway ((A084938 n : ℚ) ^ (A040476 n : ℤ))).toNat

end

end A113092.P2089142611405083405

/-!
# A113093: Main diagonal of square table A113092; also, a(n) equals the n-th term in column 0 of the matrix n-th power of triangle A113095.

The programs for A113093, there is no canonical definition to state claims against.
-/

/-! ## A113093.P10850775604810816812

`A113092(∑[4*n])`
-/

namespace A113093.P10850775604810816812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113093.P10850775604810816812

/-!
# A113096: Number of 4-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 1 and t_i = 1 (mod 3) and t_{i+1} <= 4*t_i for 1

The programs for A113096, there is no canonical definition to state claims against.
-/

/-! ## A113096.P17239658041027877233

`A113101(C(n, 2))`
-/

namespace A113096.P17239658041027877233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113101 (Nat.choose n 2)

end

end A113096.P17239658041027877233

/-! ## A113096.P3276051416965014701

`A113101(∑[n]-n)`
-/

namespace A113096.P3276051416965014701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113101 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A113096.P3276051416965014701

/-! ## A113096.P531349645152951944

`abs(record[Δ[A113092(n)]])`
-/

namespace A113096.P531349645152951944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A113096.P531349645152951944

/-! ## A113096.P13089329442904260950

`A113092(∑[n+1]+1)`
-/

namespace A113096.P13089329442904260950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113092 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113096.P13089329442904260950

/-! ## A113096.P2313605346269491278

`A000038(n)+record[Δ[A113092(n)]]`
-/

namespace A113096.P2313605346269491278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113096.P2313605346269491278

/-!
# A113097: Triangle T, read by rows, equal to the matrix square of triangle A113095, which satisfies the recurrence: A113095(n,k) = [A113095^4](n-1,k-1) + [A113095^4](n-1,k).

The programs for A113097, there is no canonical definition to state claims against.
-/

/-! ## A113097.P6730901517869923111

`A281653(n+1)+A033892(A049055(n+2))`
-/

namespace A113097.P6730901517869923111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (n + 1) + A033892 (A049055 (n + 2)).toNat

end

end A113097.P6730901517869923111

/-! ## A113097.P5959669199240883189

`A281653(n+1)+A257686(A297720(n+1)^A344180(n))`
-/

namespace A113097.P5959669199240883189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281653 (n + 1) + A257686 (SequenceMachineLib.roundAway ((A297720 (n + 1) : ℚ) ^ (A344180 n : ℤ))).toNat

end

end A113097.P5959669199240883189

/-!
# A113098: Number of 4-tournament sequences: a(n) gives the number of increasing sequences of n positive integers (t_1,t_2,...,t_n) such that t_1 = 2 and t_i = 2 (mod 3) and t_{i+1} <= 4*t_i for 1

The programs for A113098, there is no canonical definition to state claims against.
-/

/-! ## A113098.P1538424288733907428

`A113097(∑[n])`
-/

namespace A113098.P1538424288733907428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113097 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113098.P1538424288733907428

/-! ## A113098.P10641965247923137453

`A113092(∑[n+2]+3)`
-/

namespace A113098.P10641965247923137453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113092 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113098.P10641965247923137453

/-! ## A113098.P12486920944420818519

`record[A113097(A001971(n))]`
-/

namespace A113098.P12486920944420818519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113097 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113098.P12486920944420818519

/-! ## A113098.P5057422294903510825

`record[A113097(A055264(n))]`
-/

namespace A113098.P5057422294903510825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113097 (A055264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113098.P5057422294903510825

