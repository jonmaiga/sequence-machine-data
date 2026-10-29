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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B003.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A340100: Fixed points of A340069.

The programs for A340100, there is no canonical definition to state claims against.
-/

/-! ## A340100.P16213133679885865202

`eq[n, A340069(n)]`
-/

namespace A340100.P16213133679885865202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340069 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340100.P16213133679885865202

/-! ## A340100.P4521770139239788460

`A296274(a(n-1)+1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6`
-/

namespace A340100.P4521770139239788460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 6] fun n a =>
  A296274 (a (n - 1) + 1).toNat

end

end A340100.P4521770139239788460

/-! ## A340100.P13718022082883839994

`A243501((2*a(n-1)-a(n-2))²)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6`
-/

namespace A340100.P13718022082883839994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 6] fun n a =>
  A243501 ((2 * a (n - 1) - a (n - 2)) ^ 2).toNat

end

end A340100.P13718022082883839994

/-!
# A340101: Number of factorizations of 2n + 1 into odd factors > 1.

The programs for A340101, there is no canonical definition to state claims against.
-/

/-! ## A340101.P13638528587501724509

`A349907(2*n+1)`
-/

namespace A340101.P13638528587501724509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (2 * n + 1)

end

end A340101.P13638528587501724509

/-! ## A340101.P13595142118003113697

`A001055(2*n+1)`
-/

namespace A340101.P13595142118003113697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * n + 1)

end

end A340101.P13595142118003113697

/-! ## A340101.P15929402468222944422

`A371243(Δ[n²])`
-/

namespace A340101.P15929402468222944422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371243 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A340101.P15929402468222944422

/-! ## A340101.P6247485325748185901

`A050322(A101296(2*n+1))`
-/

namespace A340101.P6247485325748185901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (2 * n + 1)).toNat

end

end A340101.P6247485325748185901

/-! ## A340101.P18230831270437171253

`A340831(A054977(n)+A028310(n)+n)`
-/

namespace A340101.P18230831270437171253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (A054977 n + A028310 n + (n : ℤ)).toNat

end

end A340101.P18230831270437171253

/-! ## A340101.P3883440641550423889

`A319786(2*n+1)+A281116(2*n+1)`
-/

namespace A340101.P3883440641550423889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (2 * n + 1) + A281116 (2 * n + 1)

end

end A340101.P3883440641550423889

/-! ## A340101.P11532307115296795019

`A028422(Δ[n²])+1`
-/

namespace A340101.P11532307115296795019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A340101.P11532307115296795019

/-! ## A340101.P14032471795281961574

`∑{d}[2*n+1, A050370(#)]`
-/

namespace A340101.P14032471795281961574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050370 d

end

end A340101.P14032471795281961574

/-! ## A340101.P4770998020203452990

`A344368(2*n+1)/(2*n+1)`
-/

namespace A340101.P4770998020203452990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344368 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A340101.P4770998020203452990

/-! ## A340101.P13668601114766442092

`A096276(2*n+1)-A096276(2*n)`
-/

namespace A340101.P13668601114766442092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 (2 * n + 1) - A096276 (2 * n)

end

end A340101.P13668601114766442092

/-! ## A340101.P17462788073295199755

`A216599(Δ[n²])+1`
-/

namespace A340101.P17462788073295199755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A340101.P17462788073295199755

/-! ## A340101.P17149653123196200258

`A347438(Δ[n²]²)`
-/

namespace A340101.P17149653123196200258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A340101.P17149653123196200258

/-! ## A340101.P8107299726478236179

`filter[A347438(2*n+1), A079421(#)]`
-/

namespace A340101.P8107299726478236179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A340101.P8107299726478236179

/-! ## A340101.P11675192319911038903

`filter[A347438(2*n+1), A097325(#)]`
-/

namespace A340101.P11675192319911038903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347438 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A340101.P11675192319911038903

/-!
# A340102: Number of factorizations of 2n + 1 into an odd number of odd factors > 1.

The programs for A340102, there is no canonical definition to state claims against.
-/

/-! ## A340102.P9881694840241025289

`A339890(Δ[n²])`
-/

namespace A340102.P9881694840241025289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339890 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A340102.P9881694840241025289

/-! ## A340102.P16078469316161017825

`A340607(Δ[n²])`
-/

namespace A340102.P16078469316161017825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340607 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A340102.P16078469316161017825

/-! ## A340102.P10909436019652153816

`A360617(A064216(n+1))`
-/

namespace A340102.P10909436019652153816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 (A064216 (n + 1)).toNat

end

end A340102.P10909436019652153816

/-! ## A340102.P11128626807381141439

`round(log(A351612(2*n+1)))`
-/

namespace A340102.P11128626807381141439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A351612 (2 * n + 1) : ℝ))

end

end A340102.P11128626807381141439

/-! ## A340102.P11748010028174036770

`A360617(Δ[n²])`
-/

namespace A340102.P11748010028174036770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360617 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A340102.P11748010028174036770

/-!
# A340103: a(n) = [x^n] Product_{k>=1} (1 + n^(k-1)*x^k).

The programs for A340103, there is no canonical definition to state claims against.
-/

/-! ## A340103.P5108664315326269415

`n^n/∏{e}[10^n, #]*∑[A008611(n)]`
-/

namespace A340103.P5108664315326269415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A340103.P5108664315326269415

/-! ## A340103.P13634234736063800263

`A036703(A083062(n))`
-/

namespace A340103.P13634234736063800263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 (A083062 n).toNat

end

end A340103.P13634234736063800263

/-!
# A340104: Products of distinct primes of nonprime index (A007821).

The programs for A340104, there is no canonical definition to state claims against.
-/

/-! ## A340104.P10892264586117805782

`record[A360329(∏{p}[n, #])]`
-/

namespace A340104.P10892264586117805782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340104.P10892264586117805782

/-! ## A340104.P16660372424205181032

`record[A007913(A320628(n+1))]`
-/

namespace A340104.P16660372424205181032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340104.P16660372424205181032

/-! ## A340104.P16912811997353165697

`record[A360329(A005117(n+1))]`
-/

namespace A340104.P16912811997353165697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340104.P16912811997353165697

/-! ## A340104.P11748578779432787628

`record[A360329(A007913(n+1))]`
-/

namespace A340104.P11748578779432787628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340104.P11748578779432787628

/-! ## A340104.P5251509341854068105

`record[A360329(A007947(n+1))]`
-/

namespace A340104.P5251509341854068105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340104.P5251509341854068105

/-! ## A340104.P11396770730941600066

`filter[A320628(n+1), A008966(#)]`
-/

namespace A340104.P11396770730941600066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A340104.P11396770730941600066

/-! ## A340104.P8980242552225826945

`filter[A320628(n+1), A353559(#)]`
-/

namespace A340104.P8980242552225826945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A340104.P8980242552225826945

/-! ## A340104.P9050008982648273123

`filter[A320628(n+1), A359377(#)]`
-/

namespace A340104.P9050008982648273123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A340104.P9050008982648273123

/-! ## A340104.P16152440847605943386

`∩[A005117(n+1), A320628(n+1)]`
-/

namespace A340104.P16152440847605943386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340104.P16152440847605943386

/-! ## A340104.P7164388878989924587

`∩[A087246(n+1), A320628(n+1)]`
-/

namespace A340104.P7164388878989924587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320628 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340104.P7164388878989924587

/-!
# A340105: Odd products of distinct primes of nonprime index (A007821).

The programs for A340105, there is no canonical definition to state claims against.
-/

/-! ## A340105.P1922808948603152954

`record[∏{p}[A320629(n+1), #]]`
-/

namespace A340105.P1922808948603152954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340105.P1922808948603152954

/-! ## A340105.P9943348250965465760

`record[∏{p}[A360329(2*n+1), #]]`
-/

namespace A340105.P9943348250965465760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340105.P9943348250965465760

/-! ## A340105.P1295407024931081000

`record[A007913(A320629(n+1))]`
-/

namespace A340105.P1295407024931081000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A320629 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340105.P1295407024931081000

/-! ## A340105.P8327253183088888541

`record[A147661(A320628(n+1))]`
-/

namespace A340105.P8327253183088888541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147661 (A320628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340105.P8327253183088888541

/-! ## A340105.P11777713414290471654

`filter[A320629(n+1), A008966(#)]`
-/

namespace A340105.P11777713414290471654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A340105.P11777713414290471654

/-! ## A340105.P715003401592533995

`filter[A320629(n+1), A132350(#)]`
-/

namespace A340105.P715003401592533995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A340105.P715003401592533995

/-! ## A340105.P383372486802168673

`filter[A320629(n+1), A181183(#)]`
-/

namespace A340105.P383372486802168673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A340105.P383372486802168673

/-! ## A340105.P9782386482873451452

`filter[A320629(n+1), A295316(#)]`
-/

namespace A340105.P9782386482873451452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A340105.P9782386482873451452

/-! ## A340105.P8002620480448066076

`filter[A320629(n+1), A307421(#)]`
-/

namespace A340105.P8002620480448066076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A340105.P8002620480448066076

/-! ## A340105.P17700888672298387247

`filter[A320629(n+1), A323154(#)]`
-/

namespace A340105.P17700888672298387247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A340105.P17700888672298387247

/-!
# A340106: Triangle read by rows: T(n,k) is the number of permutations of k elements from [1..n] with longest consecutive chain size less than 3.

The programs for A340106, there is no canonical definition to state claims against.
-/

/-! ## A340106.P13266036985262082061

`A082137(A309767(A213001(n))+n)`
-/

namespace A340106.P13266036985262082061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082137 (A309767 (A213001 n).toNat + (n : ℤ)).toNat

end

end A340106.P13266036985262082061

/-! ## A340106.P1159914730341513801

`A056860(A077168(n))-A025465(n)`
-/

namespace A340106.P1159914730341513801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (A077168 n).toNat - A025465 n

end

end A340106.P1159914730341513801

/-! ## A340106.P3049348963009536635

`A098474(n)-A125005(A000124(n))`
-/

namespace A340106.P3049348963009536635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n - A125005 (A000124 n).toNat

end

end A340106.P3049348963009536635

/-! ## A340106.P12890451904887714528

`A098474(n)-A129251(A000051(n))`
-/

namespace A340106.P12890451904887714528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n - A129251 (A000051 n).toNat

end

end A340106.P12890451904887714528

/-! ## A340106.P18261465153654247613

`A098474(n)-A122840(A007910(n))`
-/

namespace A340106.P18261465153654247613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098474 n - A122840 (A007910 n).toNat

end

end A340106.P18261465153654247613

/-!
# A340107: Triangle read by rows: T(n,k) is the number of permutations of k elements from [1..n] with longest consecutive chain size less than 3, when 1 and n are considered to be consecutive.

The programs for A340107, there is no canonical definition to state claims against.
-/

/-! ## A340107.P1534161991794790944

`and(A008279(n), A146624(A072633(n)))`
-/

namespace A340107.P1534161991794790944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008279 n) (A146624 (A072633 n).toNat)

end

end A340107.P1534161991794790944

/-! ## A340107.P8601215490344028947

`and(A146624(A072633(n)), A340106(n))`
-/

namespace A340107.P8601215490344028947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A146624 (A072633 n).toNat) (A340106 n)

end

end A340107.P8601215490344028947

/-! ## A340107.P10092563905533014904

`and(A002383(A164961(n)), A008279(n))`
-/

namespace A340107.P10092563905533014904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002383 (A164961 n).toNat) (A008279 n)

end

end A340107.P10092563905533014904

/-! ## A340107.P6580782296953978666

`and(A003961(A110654(n)!), A008279(n))`
-/

namespace A340107.P6580782296953978666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003961 (Nat.factorial (A110654 n).toNat)) (A008279 n)

end

end A340107.P6580782296953978666

/-!
# A340108: Triangle read by rows: T(n,k) is the number of permutations of k elements from [1..n] in a circle with longest consecutive chain size less than 3, when 1 and n are considered to be consecutive, and rotations are considered to be distinct.

The programs for A340108, there is no canonical definition to state claims against.
-/

/-! ## A340108.P7607971741352397829

`A340107(n)%A155750(A050266(n+1))`
-/

namespace A340108.P7607971741352397829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340107 n) (A155750 (A050266 (n + 1)).toNat)

end

end A340108.P7607971741352397829

/-! ## A340108.P9487949456866999336

`C(A340107(n), A011973(A098925(n)!))`
-/

namespace A340108.P9487949456866999336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340107 n).toNat (A011973 (Nat.factorial (A098925 n).toNat)).toNat

end

end A340108.P9487949456866999336

/-! ## A340108.P13608707879462311143

`C(A340107(n), A098925(A098925(n)!))`
-/

namespace A340108.P13608707879462311143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A340107 n).toNat (A098925 (Nat.factorial (A098925 n).toNat)).toNat

end

end A340108.P13608707879462311143

/-! ## A340108.P11624575786415278262

`and(A230528(A340088(n+1)), A340107(n))`
-/

namespace A340108.P11624575786415278262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A230528 (A340088 (n + 1)).toNat) (A340107 n)

end

end A340108.P11624575786415278262

/-! ## A340108.P7883256109418805508

`and(A139250(A014668(n+1)), A340107(n))`
-/

namespace A340108.P7883256109418805508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139250 (A014668 (n + 1)).toNat) (A340107 n)

end

end A340108.P7883256109418805508

/-!
# A340109: Coreful 3-abundant numbers: numbers k such that csigma(k) > 3*k, where csigma(k) is the sum of the coreful divisors of k (A057723).

The programs for A340109, there is no canonical definition to state claims against.
-/

/-! ## A340109.P3973594365535982083

`A364991(n+1)+A305821(A005142(n))`
-/

namespace A340109.P3973594365535982083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364991 (n + 1) + A305821 (A005142 n).toNat

end

end A340109.P3973594365535982083

/-! ## A340109.P15912818910174052995

`A364991(n+1)+A341619(A005248(n))`
-/

namespace A340109.P15912818910174052995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364991 (n + 1) + A341619 (A005248 n).toNat

end

end A340109.P15912818910174052995

/-! ## A340109.P15613902449070570832

`A364991(n+1)+A000007(A349430(n))`
-/

namespace A340109.P15613902449070570832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364991 (n + 1) + A000007 (A349430 n).toNat

end

end A340109.P15613902449070570832

/-! ## A340109.P2546237005386667280

`A364991(n+1)/A204112(A257622(n))`
-/

namespace A340109.P2546237005386667280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364991 (n + 1) : ℚ) / (A204112 (A257622 n).toNat : ℚ)

end

end A340109.P2546237005386667280

/-! ## A340109.P2107708000055340018

`A364991(n+1)^A283287(A142886(n))`
-/

namespace A340109.P2107708000055340018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A364991 (n + 1) : ℚ) ^ (A283287 (A142886 n).toNat : ℤ)

end

end A340109.P2107708000055340018

/-!
# A340111: Coreful highly abundant numbers: numbers m such that csigma(m) > csigma(k) for all k < m, where csigma is the sum of the coreful divisors function (A057723).

The programs for A340111, there is no canonical definition to state claims against.
-/

/-! ## A340111.P12316318338179135939

`record[A335616(A049829(n+1)+1)]`
-/

namespace A340111.P12316318338179135939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (A049829 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340111.P12316318338179135939

/-! ## A340111.P5939411852472424802

`record[and(A078862(n+3), A225620(n+1))]`
-/

namespace A340111.P5939411852472424802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078862 (n + 3)) (A225620 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340111.P5939411852472424802

/-! ## A340111.P1965707242143203966

`A062847(n+1)+A010054(A092203(n))`
-/

namespace A340111.P1965707242143203966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062847 (n + 1) + A010054 (A092203 n).toNat

end

end A340111.P1965707242143203966

/-! ## A340111.P15301623213740141373

`A209229(A290517(n))+A062847(n+1)`
-/

namespace A340111.P15301623213740141373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A290517 n).toNat + A062847 (n + 1)

end

end A340111.P15301623213740141373

/-! ## A340111.P14667525862709459343

`A062847(n+1)+A010054(A092119(2*n))`
-/

namespace A340111.P14667525862709459343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062847 (n + 1) + A010054 (A092119 (2 * n)).toNat

end

end A340111.P14667525862709459343

/-!
# A340112: Prime-acronym numbers: sums of primes which also equal the concatenation of the initial digits of these primes.

The programs for A340112, there is no canonical definition to state claims against.
-/

/-! ## A340112.P7944961648688366028

`A283324(A015521(n))+A011973(n)`
-/

namespace A340112.P7944961648688366028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283324 (A015521 n).toNat + A011973 n

end

end A340112.P7944961648688366028

/-! ## A340112.P2868181564960370800

`A336573(n)+A283324(A015521(n))`
-/

namespace A340112.P2868181564960370800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336573 n + A283324 (A015521 n).toNat

end

end A340112.P2868181564960370800

/-! ## A340112.P12044958567180725787

`A342512(n)+A342499(A041385(n))`
-/

namespace A340112.P12044958567180725787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342512 n + A342499 (A041385 n).toNat

end

end A340112.P12044958567180725787

/-!
# A340113: Acronym primes: primes which are the sums of primes and also equal the concatenation of the initial digits of these primes.

The programs for A340113, there is no canonical definition to state claims against.
-/

/-! ## A340113.P13363292220253536300

`p?[A340112(n+1)]`
-/

namespace A340113.P13363292220253536300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340113.P13363292220253536300

/-! ## A340113.P1022399646931101407

`p?[record[A340112(A106466(n))]]`
-/

namespace A340113.P1022399646931101407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340112 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340113.P1022399646931101407

/-! ## A340113.P3979817805188958818

`filter[A340112(n+1), A010051(#)]`
-/

namespace A340113.P3979817805188958818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A340113.P3979817805188958818

/-! ## A340113.P11858627732554311901

`filter[A340112(n+1), A080339(#)]`
-/

namespace A340113.P11858627732554311901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A340113.P11858627732554311901

/-! ## A340113.P16792152177712272075

`filter[A340112(n+1), A174897(#)]`
-/

namespace A340113.P16792152177712272075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340112 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A340113.P16792152177712272075

/-!
# A340117: a(n) is the least prime p such that the 2-adic valuation of p+q is n, where q is the next prime after p, or 0 if there is no such p.

The programs for A340117, there is no canonical definition to state claims against.
-/

/-! ## A340117.P13943010058472452429

`A023444(6*4^n+1)%(5*2^n-2)`
-/

namespace A340117.P13943010058472452429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023444 (6 * 4 ^ n + 1)) ((5 * 2 ^ n : ℤ) - 2)

end

end A340117.P13943010058472452429

/-! ## A340117.P1385254076277152061

`A006530(A116969(n+1)*A243425(n))`
-/

namespace A340117.P1385254076277152061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A116969 (n + 1) * A243425 n).toNat

end

end A340117.P1385254076277152061

/-!
# A340119: Odd composite integers m such that A006190(2*m-J(m,13)) == 1 (mod m), where J(m,13) is the Jacobi symbol.

The programs for A340119, there is no canonical definition to state claims against.
-/

/-! ## A340119.P8044676701162869228

`A133636(record[Δ[A039715(n+1)]])`
-/

namespace A340119.P8044676701162869228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039715 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133636 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340119.P8044676701162869228

/-! ## A340119.P1429333035170552218

`A053795(record[A119704(24*n)])`
-/

namespace A340119.P1429333035170552218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 (24 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340119.P1429333035170552218

/-!
# A340120: Odd composite integers m such that A052918(2*m-J(m,29)) == 1 (mod m), where J(m,29) is the Jacobi symbol.

The programs for A340120, there is no canonical definition to state claims against.
-/

/-! ## A340120.P6957791629643099809

`∩[A337237(n+1), A360799(n)]`
-/

namespace A340120.P6957791629643099809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360799 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340120.P6957791629643099809

/-! ## A340120.P10021152102252807661

`∩[A160532(n+1), A337237(n+1)]`
-/

namespace A340120.P10021152102252807661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340120.P10021152102252807661

/-! ## A340120.P13361758278464751002

`A337237(A255582(n+1)%A352221(3*n+1))`
-/

namespace A340120.P13361758278464751002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337237 (Int.tmod (A255582 (n + 1)) (A352221 (3 * n + 1))).toNat

end

end A340120.P13361758278464751002

/-!
# A340122: Odd composite integers m such that A001906(2*m-J(m,5)) == J(m,5) (mod m), where J(m,5) is the Jacobi symbol.

The programs for A340122, there is no canonical definition to state claims against.
-/

/-! ## A340122.P15287386410111345311

`record[A173459(n+5)]`
-/

namespace A340122.P15287386410111345311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173459 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340122.P15287386410111345311

/-! ## A340122.P8727626917973256665

`record[A173458(n+5)/2]`
-/

namespace A340122.P8727626917973256665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173458 (n + 5) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340122.P8727626917973256665

/-! ## A340122.P7147541593103970074

`record[gcd(n, A166481(n+5))]`
-/

namespace A340122.P7147541593103970074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A166481 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340122.P7147541593103970074

/-!
# A340125: Numbers whose sum of even digits and sum of odd digits are equal and whose digits are in nondecreasing order.

The programs for A340125, there is no canonical definition to state claims against.
-/

/-! ## A340125.P2997498019554985305

`∩[A009994(n+1), A036301(n+1)]`
-/

namespace A340125.P2997498019554985305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340125.P2997498019554985305

/-! ## A340125.P8112113983893833231

`record[A004185(A036301(n+1))]`
-/

namespace A340125.P8112113983893833231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A036301 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340125.P8112113983893833231

/-! ## A340125.P13967064143294354479

`record[A004185(A103849(n+1))]`
-/

namespace A340125.P13967064143294354479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A103849 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340125.P13967064143294354479

/-!
# A340128: a(n) = (n*prime(n)) mod prime(n+1).

The programs for A340128, the canonical program `A340128.P3309180363051821482` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340128 has offset 1).

The definition of A340128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)*A000040(n+1))%A000040(n+2)` (program `A340128.P3309180363051821482`, by `A340128.P3309180363051821482.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340128.P3309180363051821482

`((n+1)*A000040(n+1))%A000040(n+2)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340128

/-- `((n+1)*A000040(n+1))%A000040(n+2)` -/
def P3309180363051821482.Spec : Prop :=
  ∀ n, P3309180363051821482.a n = A340128 (n + 1)

theorem P3309180363051821482.correct : P3309180363051821482.Spec := by
  intro n
  simp only [A340128, Nat.add_sub_cancel]

end A340128

/-! ## A340128.P13371639642349448018

`A033286(n+1)%A065091(n+1)`
-/

namespace A340128.P13371639642349448018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033286 (n + 1)) (A065091 (n + 1))

end

end A340128.P13371639642349448018

namespace A340128

/-- `A033286(n+1)%A065091(n+1)` -/
def P13371639642349448018.Spec : Prop :=
  ∀ n, P13371639642349448018.a n = A340128 (n + 1)

end A340128

/-! ## A340128.P13556625441841004813

`A152117(n+1)%A065091(n+1)`
-/

namespace A340128.P13556625441841004813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152117 (n + 1)) (A065091 (n + 1))

end

end A340128.P13556625441841004813

namespace A340128

/-- `A152117(n+1)%A065091(n+1)` -/
def P13556625441841004813.Spec : Prop :=
  ∀ n, P13556625441841004813.a n = A340128 (n + 1)

end A340128

/-! ## A340128.P1367540852797574192

`((n+1)*A008578(n+2))%A008578(n+3)`
-/

namespace A340128.P1367540852797574192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A008578 (n + 2)) (A008578 (n + 3))

end

end A340128.P1367540852797574192

namespace A340128

/-- `((n+1)*A008578(n+2))%A008578(n+3)` -/
def P1367540852797574192.Spec : Prop :=
  ∀ n, P1367540852797574192.a n = A340128 (n + 1)

end A340128

/-! ## A340128.P8453054873879319434

`A033286(n+1)%p?[A004273(n)]`
-/

namespace A340128.P8453054873879319434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033286 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A340128.P8453054873879319434

namespace A340128

/-- `A033286(n+1)%p?[A004273(n)]` -/
def P8453054873879319434.Spec : Prop :=
  ∀ n, P8453054873879319434.a n = A340128 (n + 1)

end A340128

/-! ## A340128.P16973298735766894438

`A152117(n+1)%p?[A004273(n)]`
-/

namespace A340128.P16973298735766894438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152117 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A340128.P16973298735766894438

namespace A340128

/-- `A152117(n+1)%p?[A004273(n)]` -/
def P16973298735766894438.Spec : Prop :=
  ∀ n, P16973298735766894438.a n = A340128 (n + 1)

end A340128

/-!
# A340129: a(n) is the number of solutions of the Diophantine equation x^2 + y^2 = z^5 + z, gcd(x, y, z) = 1, x <= y, where z = A008784(n).

The programs for A340129, there is no canonical definition to state claims against.
-/

/-! ## A340129.P9991870446147409652

`A034444(A071778(or(1, A053446(n+1))))`
-/

namespace A340129.P9991870446147409652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A071778 (Int.lor 1 (A053446 (n + 1))).toNat).toNat

end

end A340129.P9991870446147409652

/-! ## A340129.P7312154205902163262

`A001227(A195328(n+1)-A374251(n+1))`
-/

namespace A340129.P7312154205902163262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A195328 (n + 1) - A374251 (n + 1)).toNat

end

end A340129.P7312154205902163262

/-!
# A340130: Number of convex polygons on the lines of a triangular grid with edge length n.

The programs for A340130, the canonical program `A340130.P12130479159462743424` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340130 has offset 1).

The definition of A340130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340130.P12130479159462743424

`ogf((1+5x-2x^2-3x^3+2x^4)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340130

/-- `ogf((1+5x-2x^2-3x^3+2x^4)/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))` -/
def P12130479159462743424.Spec : Prop :=
  ∀ n, P12130479159462743424.a n = A340130 (n + 1)

theorem P12130479159462743424.correct : P12130479159462743424.Spec := by
  intro n
  simp only [A340130, Nat.add_sub_cancel]

end A340130

/-! ## A340130.P6254279685817032561

`∑[∑[A331390(n+1)]]`
-/

namespace A340130.P6254279685817032561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340130.P6254279685817032561

namespace A340130

/-- `∑[∑[A331390(n+1)]]` -/
def P6254279685817032561.Spec : Prop :=
  ∀ n, P6254279685817032561.a n = A340130 (n + 1)

end A340130

/-! ## A340130.P13470246027681881141

`∑[∑[A344791(n+2)+∑[n-1]]]`
-/

namespace A340130.P13470246027681881141
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344791 (n + 2) + ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340130.P13470246027681881141

namespace A340130

/-- `∑[∑[A344791(n+2)+∑[n-1]]]` -/
def P13470246027681881141.Spec : Prop :=
  ∀ n, P13470246027681881141.a n = A340130 (n + 1)

end A340130

/-! ## A340130.P10261325532480778806

`∑[∑[∑[A248851(n+1)-2]]]`
-/

namespace A340130.P10261325532480778806
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340130.P10261325532480778806

namespace A340130

/-- `∑[∑[∑[A248851(n+1)-2]]]` -/
def P10261325532480778806.Spec : Prop :=
  ∀ n, P10261325532480778806.a n = A340130 (n + 1)

end A340130

/-! ## A340130.P6516064708534524003

`∑[∑[∑[A019298(n+2)-3]]]`
-/

namespace A340130.P6516064708534524003
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (n + 2) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340130.P6516064708534524003

namespace A340130

/-- `∑[∑[∑[A019298(n+2)-3]]]` -/
def P6516064708534524003.Spec : Prop :=
  ∀ n, P6516064708534524003.a n = A340130 (n + 1)

end A340130

/-! ## A340130.P6920900688798503317

`∑[∑[∑[A117143(3*(n+1))-2]]]`
-/

namespace A340130.P6920900688798503317
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117143 (3 * (n + 1)) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340130.P6920900688798503317

namespace A340130

/-- `∑[∑[∑[A117143(3*(n+1))-2]]]` -/
def P6920900688798503317.Spec : Prop :=
  ∀ n, P6920900688798503317.a n = A340130 (n + 1)

end A340130

/-!
# A340134: a(n+1) = a(n-2*a(n)) + 1, starting with a(1) = a(2) = 0.

The programs for A340134, the canonical program `A340134.P4954548322694541411` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340134 has offset 1).

The definition of A340134 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340134.P4954548322694541411

`floor(sqrt(n))+((-1)^(n+1+floor(sqrt(n+1)))-1)/2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340134

/-- `floor(sqrt(n))+((-1)^(n+1+floor(sqrt(n+1)))-1)/2` -/
def P4954548322694541411.Spec : Prop :=
  ∀ n, P4954548322694541411.a n = (A340134 (n + 1) : ℚ)

end A340134

/-! ## A340134.P12367661696389102407

`a(n-(2*a(n-1)+1))+1` with `a(0)=0, a(1)=0`
-/

namespace A340134.P12367661696389102407
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - (2 * a (n - 1) + 1)) + 1

end

end A340134.P12367661696389102407

namespace A340134

/-- `a(n-(2*a(n-1)+1))+1` -/
def P12367661696389102407.Spec : Prop :=
  ∀ n, (P12367661696389102407.a n : ℤ) = A340134 (n + 1)

end A340134

/-! ## A340134.P17593852039845415564

`round(sinh(log(A070864(n+1))))`
-/

namespace A340134.P17593852039845415564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Real.log (A070864 (n + 1) : ℝ)))

end

end A340134.P17593852039845415564

namespace A340134

/-- `round(sinh(log(A070864(n+1))))` -/
def P17593852039845415564.Spec : Prop :=
  ∀ n, P17593852039845415564.a n = A340134 (n + 1)

end A340134

/-! ## A340134.P14731030041205076603

`A004524(A070864(n+1))`
-/

namespace A340134.P14731030041205076603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A070864 (n + 1)).toNat

end

end A340134.P14731030041205076603

namespace A340134

/-- `A004524(A070864(n+1))` -/
def P14731030041205076603.Spec : Prop :=
  ∀ n, P14731030041205076603.a n = A340134 (n + 1)

end A340134

/-! ## A340134.P10738325070709747812

`A110654(A070864(n+1)-1)`
-/

namespace A340134.P10738325070709747812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A070864 (n + 1) - 1).toNat

end

end A340134.P10738325070709747812

namespace A340134

/-- `A110654(A070864(n+1)-1)` -/
def P10738325070709747812.Spec : Prop :=
  ∀ n, P10738325070709747812.a n = A340134 (n + 1)

end A340134

/-! ## A340134.P17735012049987414674

`A000196(A127367(n-A000196(n)))`
-/

namespace A340134.P17735012049987414674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A127367 ((n : ℤ) - A000196 n).toNat).toNat

end

end A340134.P17735012049987414674

namespace A340134

/-- `A000196(A127367(n-A000196(n)))` -/
def P17735012049987414674.Spec : Prop :=
  ∀ n, P17735012049987414674.a n = A340134 (n + 1)

end A340134

/-!
# A340135: Number of pairs of independent nontrivial subsets of a finite set composed of n elements.

The programs for A340135, there is no canonical definition to state claims against.
-/

/-! ## A340135.P6540610862955071691

`A121312(n)-A173033(n)`
-/

namespace A340135.P6540610862955071691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121312 n - A173033 n

end

end A340135.P6540610862955071691

/-! ## A340135.P17017093582205701240

`A121312(n)-A023758(∑[n+2])`
-/

namespace A340135.P17017093582205701240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121312 n - A023758 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340135.P17017093582205701240

/-! ## A340135.P1664397742248415846

`A121312(n)-A000203(A003945(n))`
-/

namespace A340135.P1664397742248415846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121312 n - A000203 (A003945 n).toNat

end

end A340135.P1664397742248415846

/-! ## A340135.P5517274778980599066

`A121312(n)-A008574(A000225(n))`
-/

namespace A340135.P5517274778980599066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121312 n - A008574 (A000225 n).toNat

end

end A340135.P5517274778980599066

/-!
# A340136: Primes p1 such that, with p2, p3, p4 the next three primes, p1*p2+p3*p4+p1, p1*p2+p3*p4+p2, p1*p2+p3*p4+p3 and p1*p2+p3*p4+p4 are all composite.

The programs for A340136, there is no canonical definition to state claims against.
-/

/-! ## A340136.P15623231620433530586

`p?[A348551(2*n+1)+8]`
-/

namespace A340136.P15623231620433530586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348551 (2 * n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340136.P15623231620433530586

/-! ## A340136.P9413578296614158427

`A364962(A000040(n+4)-A027926(n))`
-/

namespace A340136.P9413578296614158427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364962 (A000040 (n + 4) - A027926 n).toNat

end

end A340136.P9413578296614158427

/-! ## A340136.P7512012770303483423

`A364962(A000040(n+4)-A001221(2*n+3))`
-/

namespace A340136.P7512012770303483423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364962 (A000040 (n + 4) - A001221 (2 * n + 3)).toNat

end

end A340136.P7512012770303483423

/-!
# A340138: a(1)=0, a(n+1) = the least m not already in the sequence such that the decimal digital root r of a(n-1) is found somewhere among the decimal digits of m.

The programs for A340138, there is no canonical definition to state claims against.
-/

/-! ## A340138.P12011811263654720803

`A107408(lt[A107408(n), 30])`
-/

namespace A340138.P12011811263654720803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A340138.P12011811263654720803

/-! ## A340138.P6482051901516887406

`A107408(A347520(n))%A048374(n+1)`
-/

namespace A340138.P6482051901516887406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107408 (A347520 n).toNat) (A048374 (n + 1))

end

end A340138.P6482051901516887406

/-! ## A340138.P15655558603530737600

`A107408(A347520(n)%A048249(3*n+1))`
-/

namespace A340138.P15655558603530737600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (Int.tmod (A347520 n) (A048249 (3 * n + 1))).toNat

end

end A340138.P15655558603530737600

/-! ## A340138.P15044952657352045567

`A107408(record[A008679(A316114(n+1))])`
-/

namespace A340138.P15044952657352045567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (A316114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340138.P15044952657352045567

/-! ## A340138.P12375471753036538259

`A347520(A238880(n+1))`
-/

namespace A340138.P12375471753036538259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A238880 (n + 1)).toNat

end

end A340138.P12375471753036538259

/-!
# A340139: a(n) = 4^((n-2)*(n-1)) * Product_{1<=i<j<=n-1} (1 - sin(i*Pi/(2*n))^2 * sin(j*Pi/(2*n))^2).

The programs for A340139, there is no canonical definition to state claims against.
-/

/-! ## A340139.P11079286008342697780

`A340176(n+1)/4^n`
-/

namespace A340139.P11079286008342697780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340176 (n + 1) : ℚ) / (4 ^ n : ℚ)

end

end A340139.P11079286008342697780

/-!
# A340140: a(1) = -1, for n > 1, a(n) = Sum_{d|n, d<n} A340197(n/d) * a(d).

The programs for A340140, there is no canonical definition to state claims against.
-/

/-! ## A340140.P7526029340754179383

`A323913(A247439(n+2))-A340197(n+1)`
-/

namespace A340140.P7526029340754179383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323913 (A247439 (n + 2)).toNat - A340197 (n + 1)

end

end A340140.P7526029340754179383

/-! ## A340140.P9047861954595144512

`-(∏{p}[(n+1)^5, 1-#]+n)`
-/

namespace A340140.P9047861954595144512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + (n : ℤ))

end

end A340140.P9047861954595144512

/-! ## A340140.P11416526306424576617

`A066086(2^n)-(∏{p}[n+1, 1-#]+1+n)`
-/

namespace A340140.P11416526306424576617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066086 (2 ^ n) - (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ))

end

end A340140.P11416526306424576617

/-! ## A340140.P12969626762637182830

`A126760(2^n)-(∏{p}[n+1, 1-#]+1+n)`
-/

namespace A340140.P12969626762637182830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (2 ^ n) - (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ))

end

end A340140.P12969626762637182830

/-! ## A340140.P2850648696205678582

`A323406(2^n)-(∏{p}[n+1, 1-#]+1+n)`
-/

namespace A340140.P2850648696205678582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323406 (2 ^ n) - (∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + 1 + (n : ℤ))

end

end A340140.P2850648696205678582

/-!
# A340141: Numerators of the sequence whose Dirichlet convolution with itself yields sequence A160595(x) = phi(x)/gcd(phi(x), x-1).

The programs for A340141, there is no canonical definition to state claims against.
-/

/-! ## A340141.P916145829575249982

`or(A137585(A104701(n+1)), A340144(n+1))`
-/

namespace A340141.P916145829575249982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137585 (A104701 (n + 1)).toNat) (A340144 (n + 1))

end

end A340141.P916145829575249982

/-! ## A340141.P17727598140065153774

`or(A000688(A279290(n+1)), A340144(n+1))`
-/

namespace A340141.P17727598140065153774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000688 (A279290 (n + 1)).toNat) (A340144 (n + 1))

end

end A340141.P17727598140065153774

/-! ## A340141.P12650783633060945176

`or(A007949(A100981(n+1)), A340144(n+1))`
-/

namespace A340141.P12650783633060945176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007949 (A100981 (n + 1)).toNat) (A340144 (n + 1))

end

end A340141.P12650783633060945176

/-! ## A340141.P9520103917183130756

`or(A320832(A034302(n+1)), A340144(n+1))`
-/

namespace A340141.P9520103917183130756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A320832 (A034302 (n + 1)).toNat) (A340144 (n + 1))

end

end A340141.P9520103917183130756

/-! ## A340141.P9891138546709928441

`A340144(A077168(n))`
-/

namespace A340141.P9891138546709928441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340144 (A077168 n).toNat

end

end A340141.P9891138546709928441

/-!
# A340142: Dirichlet inverse of A160595, where A160595(x) = phi(x)/gcd(phi(x), x-1).

The programs for A340142, there is no canonical definition to state claims against.
-/

/-! ## A340142.P8749515082820266862

`or(A123759(A000073(n)), A340145(n+1))`
-/

namespace A340142.P8749515082820266862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A123759 (A000073 n).toNat) (A340145 (n + 1))

end

end A340142.P8749515082820266862

/-! ## A340142.P2734039752726247659

`A340145(n+1)-A290081(A057814(n))`
-/

namespace A340142.P2734039752726247659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340145 (n + 1) - A290081 (A057814 n).toNat

end

end A340142.P2734039752726247659

/-! ## A340142.P7389204512476079292

`A340145(A187829(n+1))-A300717(A039649(n+1))`
-/

namespace A340142.P7389204512476079292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340145 (A187829 (n + 1)).toNat - A300717 (A039649 (n + 1)).toNat

end

end A340142.P7389204512476079292

/-!
# A340143: Möbius transform of A160595, where A160595(x) = phi(x)/gcd(phi(x), x-1).

The programs for A340143, the canonical program `A340143.P8205766012284906924` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340143 has offset 1).

The definition of A340143 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A160595, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340143.P8205766012284906924

`∑{d}[n+1, A008683((n+1)/#)*A160595(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340143

/-- `∑{d}[n+1, A008683((n+1)/#)*A160595(#)]` -/
def P8205766012284906924.Spec : Prop :=
  ∀ n, P8205766012284906924.a n = A340143 (n + 1)

theorem P8205766012284906924.correct : P8205766012284906924.Spec := by
  intro n
  simp only [A340143, Nat.add_sub_cancel]

end A340143

/-! ## A340143.P11356959833038640408

`A071891(A322193(n))*A340146(n+1)`
-/

namespace A340143.P11356959833038640408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071891 (A322193 n).toNat * A340146 (n + 1)

end

end A340143.P11356959833038640408

namespace A340143

/-- `A071891(A322193(n))*A340146(n+1)` -/
def P11356959833038640408.Spec : Prop :=
  ∀ n, P11356959833038640408.a n = A340143 (n + 1)

end A340143

/-! ## A340143.P3051336617841043840

`A304042(A038753(n+1))*A340146(n+1)`
-/

namespace A340143.P3051336617841043840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A038753 (n + 1)).toNat * A340146 (n + 1)

end

end A340143.P3051336617841043840

namespace A340143

/-- `A304042(A038753(n+1))*A340146(n+1)` -/
def P3051336617841043840.Spec : Prop :=
  ∀ n, P3051336617841043840.a n = A340143 (n + 1)

end A340143

/-! ## A340143.P998045174446589348

`A038500(A000032(n))*A340146(n+1)`
-/

namespace A340143.P998045174446589348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (A000032 n).toNat * A340146 (n + 1)

end

end A340143.P998045174446589348

namespace A340143

/-- `A038500(A000032(n))*A340146(n+1)` -/
def P998045174446589348.Spec : Prop :=
  ∀ n, P998045174446589348.a n = A340143 (n + 1)

end A340143

/-! ## A340143.P6727862124806301878

`lcm(A176187(A326849(n)), A340146(n+1))`
-/

namespace A340143.P6727862124806301878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A176187 (A326849 n).toNat) (A340146 (n + 1))

end

end A340143.P6727862124806301878

namespace A340143

/-- `lcm(A176187(A326849(n)), A340146(n+1))` -/
def P6727862124806301878.Spec : Prop :=
  ∀ n, (P6727862124806301878.a n : ℤ) = A340143 (n + 1)

end A340143

/-!
# A340144: Numerators of the sequence whose Dirichlet convolution with itself yields sequence A247074(x) = phi(x)/(Product_{primes p dividing x} gcd(p-1, x-1)).

The programs for A340144, there is no canonical definition to state claims against.
-/

/-! ## A340144.P9919180854082261868

`A340141(n+1)%A173285(p?[A340141(n+1)])`
-/

namespace A340144.P9919180854082261868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340141 (n + 1)) (A173285 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A340144.P9919180854082261868

/-! ## A340144.P17554181476308555019

`and(A093178(A158765(n+1)), A340141(n+1))`
-/

namespace A340144.P17554181476308555019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093178 (A158765 (n + 1)).toNat) (A340141 (n + 1))

end

end A340144.P17554181476308555019

/-! ## A340144.P7889739695171181368

`and(A285127(A068912(n)), A340141(n+1))`
-/

namespace A340144.P7889739695171181368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285127 (A068912 n).toNat) (A340141 (n + 1))

end

end A340144.P7889739695171181368

/-! ## A340144.P17381343963334050432

`A085736(and(A158765(n+1), A340141(n+1)))`
-/

namespace A340144.P17381343963334050432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (Int.land (A158765 (n + 1)) (A340141 (n + 1))).toNat

end

end A340144.P17381343963334050432

/-! ## A340144.P4005008417550754663

`and(A158765(n+1), A340141(A161951(n+1)))`
-/

namespace A340144.P4005008417550754663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158765 (n + 1)) (A340141 (A161951 (n + 1)).toNat)

end

end A340144.P4005008417550754663

/-!
# A340145: Dirichlet inverse of A247074(x) = phi(x)/(Product_{primes p dividing x} gcd(p-1, x-1)).

The programs for A340145, there is no canonical definition to state claims against.
-/

/-! ## A340145.P1534791781028658931

`A340142(n+1)+A002448(A244583(n+2))`
-/

namespace A340145.P1534791781028658931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (n + 1) + A002448 (A244583 (n + 2)).toNat

end

end A340145.P1534791781028658931

/-! ## A340145.P7113068330889600650

`A340142(n+1)%A000720(A109833(3*n+5))`
-/

namespace A340145.P7113068330889600650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340142 (n + 1)) (A000720 (A109833 (3 * n + 5)).toNat)

end

end A340145.P7113068330889600650

/-! ## A340145.P2594749614778255229

`A340142(n+1)^A156727(A006068(n))`
-/

namespace A340145.P2594749614778255229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340142 (n + 1) : ℚ) ^ (A156727 (A006068 n).toNat : ℤ)

end

end A340145.P2594749614778255229

/-! ## A340145.P6488687589139198165

`A008966(A083329(n))*A340142(n+1)`
-/

namespace A340145.P6488687589139198165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A083329 n).toNat * A340142 (n + 1)

end

end A340145.P6488687589139198165

/-! ## A340145.P17365445308739875127

`A340142(n+1)+A290081(A057814(n))`
-/

namespace A340145.P17365445308739875127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340142 (n + 1) + A290081 (A057814 n).toNat

end

end A340145.P17365445308739875127

/-!
# A340146: Möbius transform of A247074(x) = phi(x)/(Product_{primes p dividing x} gcd(p-1, x-1)).

The programs for A340146, the canonical program `A340146.P7724559249739446551` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340146 has offset 1).

The definition of A340146 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A247074, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340146.P7724559249739446551

`∑{d}[n+1, A008683((n+1)/#)*A247074(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A340146

/-- `∑{d}[n+1, A008683((n+1)/#)*A247074(#)]` -/
def P7724559249739446551.Spec : Prop :=
  ∀ n, P7724559249739446551.a n = A340146 (n + 1)

theorem P7724559249739446551.correct : P7724559249739446551.Spec := by
  intro n
  simp only [A340146, Nat.add_sub_cancel]

end A340146

/-! ## A340146.P4594502642568495114

`A340143(n+1)/A071891(A322193(n))`
-/

namespace A340146.P4594502642568495114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340143 (n + 1) : ℚ) / (A071891 (A322193 n).toNat : ℚ)

end

end A340146.P4594502642568495114

namespace A340146

/-- `A340143(n+1)/A071891(A322193(n))` -/
def P4594502642568495114.Spec : Prop :=
  ∀ n, P4594502642568495114.a n = (A340146 (n + 1) : ℚ)

end A340146

/-! ## A340146.P16547364921695076898

`A340143(n+1)/A304042(A038753(n+1))`
-/

namespace A340146.P16547364921695076898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340143 (n + 1) : ℚ) / (A304042 (A038753 (n + 1)).toNat : ℚ)

end

end A340146.P16547364921695076898

namespace A340146

/-- `A340143(n+1)/A304042(A038753(n+1))` -/
def P16547364921695076898.Spec : Prop :=
  ∀ n, P16547364921695076898.a n = (A340146 (n + 1) : ℚ)

end A340146

/-! ## A340146.P5317117483841791379

`and(A087807(n+1), A340143(n+1))`
-/

namespace A340146.P5317117483841791379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087807 (n + 1)) (A340143 (n + 1))

end

end A340146.P5317117483841791379

namespace A340146

/-- `and(A087807(n+1), A340143(n+1))` -/
def P5317117483841791379.Spec : Prop :=
  ∀ n, P5317117483841791379.a n = A340146 (n + 1)

end A340146

/-! ## A340146.P8639132840860302817

`A340143(n+1)%A324655(A084938(3*n+2))`
-/

namespace A340146.P8639132840860302817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340143 (n + 1)) (A324655 (A084938 (3 * n + 2)).toNat)

end

end A340146.P8639132840860302817

namespace A340146

/-- `A340143(n+1)%A324655(A084938(3*n+2))` -/
def P8639132840860302817.Spec : Prop :=
  ∀ n, P8639132840860302817.a n = A340146 (n + 1)

end A340146

/-!
# A340147: a(n) = A247074(A003961(n)).

The programs for A340147, the canonical program `A340147.P12367643598761050819` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340147 has offset 1).

The definition of A340147 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340147.P13307827125495765228

`A003972(n+1)/A340148(n+1)`
-/

namespace A340147.P13307827125495765228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A340148 (n + 1) : ℚ)

end

end A340147.P13307827125495765228

namespace A340147

/-- `A003972(n+1)/A340148(n+1)` -/
def P13307827125495765228.Spec : Prop :=
  ∀ n, P13307827125495765228.a n = (A340147 (n + 1) : ℚ)

end A340147

/-! ## A340147.P12367643598761050819

`A247074(A003961(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340147

/-- `A247074(A003961(n+1))` -/
def P12367643598761050819.Spec : Prop :=
  ∀ n, P12367643598761050819.a n = A340147 (n + 1)

theorem P12367643598761050819.correct : P12367643598761050819.Spec := by
  intro n
  simp only [A340147, Nat.add_sub_cancel]

end A340147

/-! ## A340147.P13786439354069766186

`A000010(A003961(n+1))/A340148(n+1)`
-/

namespace A340147.P13786439354069766186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A003961 (n + 1)).toNat : ℚ) / (A340148 (n + 1) : ℚ)

end

end A340147.P13786439354069766186

namespace A340147

/-- `A000010(A003961(n+1))/A340148(n+1)` -/
def P13786439354069766186.Spec : Prop :=
  ∀ n, P13786439354069766186.a n = (A340147 (n + 1) : ℚ)

end A340147

/-! ## A340147.P4281864235947023184

`A247074(A045965(n+1))`
-/

namespace A340147.P4281864235947023184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A045965 (n + 1)).toNat

end

end A340147.P4281864235947023184

namespace A340147

/-- `A247074(A045965(n+1))` -/
def P4281864235947023184.Spec : Prop :=
  ∀ n, P4281864235947023184.a n = A340147 (n + 1)

end A340147

/-! ## A340147.P9375429972001085980

`A247074(A253885(n)+1)`
-/

namespace A340147.P9375429972001085980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247074 (A253885 n + 1).toNat

end

end A340147.P9375429972001085980

namespace A340147

/-- `A247074(A253885(n)+1)` -/
def P9375429972001085980.Spec : Prop :=
  ∀ n, P9375429972001085980.a n = A340147 (n + 1)

end A340147

/-! ## A340147.P12599222039926404127

`A003972(n+1)/A063994(A003961(n+1))`
-/

namespace A340147.P12599222039926404127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A063994 (A003961 (n + 1)).toNat : ℚ)

end

end A340147.P12599222039926404127

namespace A340147

/-- `A003972(n+1)/A063994(A003961(n+1))` -/
def P12599222039926404127.Spec : Prop :=
  ∀ n, P12599222039926404127.a n = (A340147 (n + 1) : ℚ)

end A340147

/-!
# A340148: a(n) = Product_{distinct primes p dividing n} gcd(q-1, A003961(n)-1), where q = A151800(p), the next prime larger than p.

The programs for A340148, the canonical program `A340148.P15077992982366263936` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340148 has offset 1).

The definition of A340148 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A063994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340148.P7327768824767681899

`A003972(n+1)/A340147(n+1)`
-/

namespace A340148.P7327768824767681899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A340147 (n + 1) : ℚ)

end

end A340148.P7327768824767681899

namespace A340148

/-- `A003972(n+1)/A340147(n+1)` -/
def P7327768824767681899.Spec : Prop :=
  ∀ n, P7327768824767681899.a n = (A340148 (n + 1) : ℚ)

end A340148

/-! ## A340148.P15077992982366263936

`A063994(A003961(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340148

/-- `A063994(A003961(n+1))` -/
def P15077992982366263936.Spec : Prop :=
  ∀ n, P15077992982366263936.a n = A340148 (n + 1)

theorem P15077992982366263936.correct : P15077992982366263936.Spec := by
  intro n
  simp only [A340148, Nat.add_sub_cancel]

end A340148

/-! ## A340148.P15282856533915659699

`A063994(A045965(n+1))`
-/

namespace A340148.P15282856533915659699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A045965 (n + 1)).toNat

end

end A340148.P15282856533915659699

namespace A340148

/-- `A063994(A045965(n+1))` -/
def P15282856533915659699.Spec : Prop :=
  ∀ n, P15282856533915659699.a n = A340148 (n + 1)

end A340148

/-! ## A340148.P6533616796489979483

`A063994(A253885(n)+1)`
-/

namespace A340148.P6533616796489979483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (A253885 n + 1).toNat

end

end A340148.P6533616796489979483

namespace A340148

/-- `A063994(A253885(n)+1)` -/
def P6533616796489979483.Spec : Prop :=
  ∀ n, P6533616796489979483.a n = A340148 (n + 1)

end A340148

/-! ## A340148.P5843079993466964435

`A003972(n+1)/A247074(A003961(n+1))`
-/

namespace A340148.P5843079993466964435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A247074 (A003961 (n + 1)).toNat : ℚ)

end

end A340148.P5843079993466964435

namespace A340148

/-- `A003972(n+1)/A247074(A003961(n+1))` -/
def P5843079993466964435.Spec : Prop :=
  ∀ n, P5843079993466964435.a n = (A340148 (n + 1) : ℚ)

end A340148

/-!
# A340149: Odd part of A340147: a(n) = A000265(A247074(A003961(n))).

The programs for A340149, the canonical program `A340149.P6698096006664650943` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340149 has offset 1).

The definition of A340149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A247074, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340149.P7121883807488384156

`A000265(A340147(n+1))`
-/

namespace A340149.P7121883807488384156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A340147 (n + 1)).toNat

end

end A340149.P7121883807488384156

namespace A340149

/-- `A000265(A340147(n+1))` -/
def P7121883807488384156.Spec : Prop :=
  ∀ n, P7121883807488384156.a n = A340149 (n + 1)

end A340149

/-! ## A340149.P6698096006664650943

`A000265(A247074(A003961(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340149

/-- `A000265(A247074(A003961(n+1)))` -/
def P6698096006664650943.Spec : Prop :=
  ∀ n, P6698096006664650943.a n = A340149 (n + 1)

theorem P6698096006664650943.correct : P6698096006664650943.Spec := by
  intro n
  simp only [A340149, Nat.add_sub_cancel]

end A340149

/-! ## A340149.P2116487560156558239

`gcd(A340075(n+1), A340147(n+1))`
-/

namespace A340149.P2116487560156558239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340075 (n + 1)) (A340147 (n + 1))

end

end A340149.P2116487560156558239

namespace A340149

/-- `gcd(A340075(n+1), A340147(n+1))` -/
def P2116487560156558239.Spec : Prop :=
  ∀ n, (P2116487560156558239.a n : ℤ) = A340149 (n + 1)

end A340149

/-! ## A340149.P6183725301679577999

`A000265(A003972(n+1)/A340148(n+1))`
-/

namespace A340149.P6183725301679577999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A003972 (n + 1) : ℚ) / (A340148 (n + 1) : ℚ))).toNat

end

end A340149.P6183725301679577999

namespace A340149

/-- `A000265(A003972(n+1)/A340148(n+1))` -/
def P6183725301679577999.Spec : Prop :=
  ∀ n, P6183725301679577999.a n = A340149 (n + 1)

end A340149

/-! ## A340149.P9397272705827610565

`A171435(2*A340147(n+1))`
-/

namespace A340149.P9397272705827610565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * A340147 (n + 1)).toNat

end

end A340149.P9397272705827610565

namespace A340149

/-- `A171435(2*A340147(n+1))` -/
def P9397272705827610565.Spec : Prop :=
  ∀ n, P9397272705827610565.a n = A340149 (n + 1)

end A340149

/-! ## A340149.P4811143574512286956

`A028234(2*A340147(n+1))`
-/

namespace A340149.P4811143574512286956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (2 * A340147 (n + 1)).toNat

end

end A340149.P4811143574512286956

namespace A340149

/-- `A028234(2*A340147(n+1))` -/
def P4811143574512286956.Spec : Prop :=
  ∀ n, P4811143574512286956.a n = A340149 (n + 1)

end A340149

/-! ## A340149.P6486795157841054022

`A093803(2*A340147(n+1))`
-/

namespace A340149.P6486795157841054022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093803 (2 * A340147 (n + 1)).toNat

end

end A340149.P6486795157841054022

namespace A340149

/-- `A093803(2*A340147(n+1))` -/
def P6486795157841054022.Spec : Prop :=
  ∀ n, P6486795157841054022.a n = A340149 (n + 1)

end A340149

/-! ## A340149.P11715917441394418606

`gcd(2*A340147(n+1), A323499(n+2))`
-/

namespace A340149.P11715917441394418606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A340147 (n + 1)) (A323499 (n + 2))

end

end A340149.P11715917441394418606

namespace A340149

/-- `gcd(2*A340147(n+1), A323499(n+2))` -/
def P11715917441394418606.Spec : Prop :=
  ∀ n, (P11715917441394418606.a n : ℤ) = A340149 (n + 1)

end A340149

/-! ## A340149.P8189311315335883025

`gcd(A256402(n), A340147(n+1))`
-/

namespace A340149.P8189311315335883025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A256402 n) (A340147 (n + 1))

end

end A340149.P8189311315335883025

namespace A340149

/-- `gcd(A256402(n), A340147(n+1))` -/
def P8189311315335883025.Spec : Prop :=
  ∀ n, (P8189311315335883025.a n : ℤ) = A340149 (n + 1)

end A340149

/-!
# A340150: Positions of ones in A340149.

The programs for A340150, the canonical program `A340150.P13758689573420697297` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340150 has offset 1).

The definition of A340150 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340150.P13758689573420697297

`record[A007913(n+1)/A340149(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340150

/-- `record[A007913(n+1)/A340149(n+1)]` -/
def P13758689573420697297.Spec : Prop :=
  ∀ n, P13758689573420697297.a n = (A340150 (n + 1) : ℚ)

end A340150

/-! ## A340150.P10322364551583159260

`record[A007947(n+1)/A340149(n+1)]`
-/

namespace A340150.P10322364551583159260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A340149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340150.P10322364551583159260

namespace A340150

/-- `record[A007947(n+1)/A340149(n+1)]` -/
def P10322364551583159260.Spec : Prop :=
  ∀ n, P10322364551583159260.a n = (A340150 (n + 1) : ℚ)

end A340150

/-! ## A340150.P13830501600169445006

`eq[1, A340149(n+1)]+1`
-/

namespace A340150.P13830501600169445006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340150.P13830501600169445006

namespace A340150

/-- `eq[1, A340149(n+1)]+1` -/
def P13830501600169445006.Spec : Prop :=
  ∀ n, (P13830501600169445006.a n : ℤ) = A340150 (n + 1)

end A340150

/-! ## A340150.P559707598497867442

`record[A038388(n+1)/A340149(n+1)]`
-/

namespace A340150.P559707598497867442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038388 (n + 1) : ℚ) / (A340149 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340150.P559707598497867442

namespace A340150

/-- `record[A038388(n+1)/A340149(n+1)]` -/
def P559707598497867442.Spec : Prop :=
  ∀ n, P559707598497867442.a n = (A340150 (n + 1) : ℚ)

end A340150

/-! ## A340150.P3082210785812397532

`eq[A057427(n), A340149(A028310(n))]`
-/

namespace A340150.P3082210785812397532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340149 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340150.P3082210785812397532

namespace A340150

/-- `eq[A057427(n), A340149(A028310(n))]` -/
def P3082210785812397532.Spec : Prop :=
  ∀ n, (P3082210785812397532.a n : ℤ) = A340150 (n + 1)

end A340150

/-! ## A340150.P11084769523978680456

`record[(n+1)/A000265(A340147(n+1))]`
-/

namespace A340150.P11084769523978680456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000265 (A340147 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340150.P11084769523978680456

namespace A340150

/-- `record[(n+1)/A000265(A340147(n+1))]` -/
def P11084769523978680456.Spec : Prop :=
  ∀ n, P11084769523978680456.a n = (A340150 (n + 1) : ℚ)

end A340150

/-! ## A340150.P8816589032642269135

`eq[1, A000120(A340147(n+1))]+1`
-/

namespace A340150.P8816589032642269135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A340147 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340150.P8816589032642269135

namespace A340150

/-- `eq[1, A000120(A340147(n+1))]+1` -/
def P8816589032642269135.Spec : Prop :=
  ∀ n, (P8816589032642269135.a n : ℤ) = A340150 (n + 1)

end A340150

/-!
# A340152: Numbers k such that k and k+1 are both cubefree numbers (A004709).

The programs for A340152, the canonical program `A340152.P12975233211975297466` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340152 has offset 1).

The definition of A340152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340152.P12975233211975297466

`eq[A113061(n+1), A113061(n+2)]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340152

/-- `eq[A113061(n+1), A113061(n+2)]+1` -/
def P12975233211975297466.Spec : Prop :=
  ∀ n, (P12975233211975297466.a n : ℤ) = A340152 (n + 1)

theorem P12975233211975297466.correct : P12975233211975297466.Spec := by
  intro n
  simp only [A340152, Nat.add_sub_cancel]

end A340152

/-! ## A340152.P5347612730347821844

`A004709(comp[comp[A004709(n+1)]-n])`
-/

namespace A340152.P5347612730347821844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340152.P5347612730347821844

namespace A340152

/-- `A004709(comp[comp[A004709(n+1)]-n])` -/
def P5347612730347821844.Spec : Prop :=
  ∀ n, P5347612730347821844.a n = A340152 (n + 1)

end A340152

/-! ## A340152.P13580699595700011443

`∩[A398164(n+1), A398165(n+1)]`
-/

namespace A340152.P13580699595700011443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340152.P13580699595700011443

namespace A340152

/-- `∩[A398164(n+1), A398165(n+1)]` -/
def P13580699595700011443.Spec : Prop :=
  ∀ n, (P13580699595700011443.a n : ℤ) = A340152 (n + 1)

end A340152

/-! ## A340152.P17920826677858382859

`record[A007948(A007948(n+2)-1)]`
-/

namespace A340152.P17920826677858382859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A007948 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P17920826677858382859

namespace A340152

/-- `record[A007948(A007948(n+2)-1)]` -/
def P17920826677858382859.Spec : Prop :=
  ∀ n, P17920826677858382859.a n = A340152 (n + 1)

end A340152

/-! ## A340152.P13978953387797934062

`record[A066990(A066990(n+2)-1)]`
-/

namespace A340152.P13978953387797934062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (A066990 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P13978953387797934062

namespace A340152

/-- `record[A066990(A066990(n+2)-1)]` -/
def P13978953387797934062.Spec : Prop :=
  ∀ n, P13978953387797934062.a n = A340152 (n + 1)

end A340152

/-! ## A340152.P17631109175567194127

`record[A097377(A097377(n+1))-2]`
-/

namespace A340152.P17631109175567194127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (A097377 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P17631109175567194127

namespace A340152

/-- `record[A097377(A097377(n+1))-2]` -/
def P17631109175567194127.Spec : Prop :=
  ∀ n, P17631109175567194127.a n = A340152 (n + 1)

end A340152

/-! ## A340152.P18099557418310007506

`record[A117656(A117656(n+2)-1)]`
-/

namespace A340152.P18099557418310007506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (A117656 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P18099557418310007506

namespace A340152

/-- `record[A117656(A117656(n+2)-1)]` -/
def P18099557418310007506.Spec : Prop :=
  ∀ n, P18099557418310007506.a n = A340152 (n + 1)

end A340152

/-! ## A340152.P240881065862018955

`record[A355261(A355261(n+2)-1)]`
-/

namespace A340152.P240881065862018955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (A355261 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P240881065862018955

namespace A340152

/-- `record[A355261(A355261(n+2)-1)]` -/
def P240881065862018955.Spec : Prop :=
  ∀ n, P240881065862018955.a n = A340152 (n + 1)

end A340152

/-! ## A340152.P16450156911521408769

`lt[A056626(n+1), char[A004709(n+1)]]`
-/

namespace A340152.P16450156911521408769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340152.P16450156911521408769

namespace A340152

/-- `lt[A056626(n+1), char[A004709(n+1)]]` -/
def P16450156911521408769.Spec : Prop :=
  ∀ n, (P16450156911521408769.a n : ℤ) = A340152 (n + 1)

end A340152

/-! ## A340152.P4180580420794371552

`eq[A053150(n+2), A053150(n+1)]+1`
-/

namespace A340152.P4180580420794371552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340152.P4180580420794371552

namespace A340152

/-- `eq[A053150(n+2), A053150(n+1)]+1` -/
def P4180580420794371552.Spec : Prop :=
  ∀ n, (P4180580420794371552.a n : ℤ) = A340152 (n + 1)

end A340152

/-! ## A340152.P4261362515188947681

`eq[A062378(n+2), A062378(n+1)]+1`
-/

namespace A340152.P4261362515188947681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340152.P4261362515188947681

namespace A340152

/-- `eq[A062378(n+2), A062378(n+1)]+1` -/
def P4261362515188947681.Spec : Prop :=
  ∀ n, (P4261362515188947681.a n : ℤ) = A340152 (n + 1)

end A340152

/-! ## A340152.P10662928910925610183

`record[A007948(n+1)/Δ[A007948(n+1)]]`
-/

namespace A340152.P10662928910925610183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007948 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P10662928910925610183

namespace A340152

/-- `record[A007948(n+1)/Δ[A007948(n+1)]]` -/
def P10662928910925610183.Spec : Prop :=
  ∀ n, P10662928910925610183.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P5506149273202503966

`record[A050985(n+1)/Δ[A050985(n+1)]]`
-/

namespace A340152.P5506149273202503966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050985 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P5506149273202503966

namespace A340152

/-- `record[A050985(n+1)/Δ[A050985(n+1)]]` -/
def P5506149273202503966.Spec : Prop :=
  ∀ n, P5506149273202503966.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P5227643323386613814

`record[A066990(n+1)/Δ[A066990(n+1)]]`
-/

namespace A340152.P5227643323386613814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066990 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P5227643323386613814

namespace A340152

/-- `record[A066990(n+1)/Δ[A066990(n+1)]]` -/
def P5227643323386613814.Spec : Prop :=
  ∀ n, P5227643323386613814.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P16561497660595468253

`record[A117656(n+1)/Δ[A117656(n+1)]]`
-/

namespace A340152.P16561497660595468253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117656 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P16561497660595468253

namespace A340152

/-- `record[A117656(n+1)/Δ[A117656(n+1)]]` -/
def P16561497660595468253.Spec : Prop :=
  ∀ n, P16561497660595468253.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P12336368921011556299

`record[A355261(n+1)/Δ[A355261(n+1)]]`
-/

namespace A340152.P12336368921011556299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P12336368921011556299

namespace A340152

/-- `record[A355261(n+1)/Δ[A355261(n+1)]]` -/
def P12336368921011556299.Spec : Prop :=
  ∀ n, P12336368921011556299.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P408803175755156367

`record[A360539(n+1)/Δ[A360539(n+1)]]`
-/

namespace A340152.P408803175755156367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360539 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P408803175755156367

namespace A340152

/-- `record[A360539(n+1)/Δ[A360539(n+1)]]` -/
def P408803175755156367.Spec : Prop :=
  ∀ n, P408803175755156367.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P11297218286058901354

`record[A367699(n+1)/Δ[A367699(n+1)]]`
-/

namespace A340152.P11297218286058901354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367699 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P11297218286058901354

namespace A340152

/-- `record[A367699(n+1)/Δ[A367699(n+1)]]` -/
def P11297218286058901354.Spec : Prop :=
  ∀ n, P11297218286058901354.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P9393640761659475183

`record[A368171(n+1)/Δ[A368171(n+1)]]`
-/

namespace A340152.P9393640761659475183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368171 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P9393640761659475183

namespace A340152

/-- `record[A368171(n+1)/Δ[A368171(n+1)]]` -/
def P9393640761659475183.Spec : Prop :=
  ∀ n, P9393640761659475183.a n = (A340152 (n + 1) : ℚ)

end A340152

/-! ## A340152.P1721255276249842726

`record[(n+1)/(A061704(n+2)*A061704(n+1))]`
-/

namespace A340152.P1721255276249842726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061704 (n + 2) * A061704 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340152.P1721255276249842726

namespace A340152

/-- `record[(n+1)/(A061704(n+2)*A061704(n+1))]` -/
def P1721255276249842726.Spec : Prop :=
  ∀ n, P1721255276249842726.a n = (A340152 (n + 1) : ℚ)

end A340152

/-!
# A340154: Primes p such that p == 5 (mod 6) and p+1 is squarefree.

The programs for A340154, the canonical program `A340154.P18257994120769492185` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340154 has offset 1).

The definition of A340154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340154.P18257994120769492185

`∩[A040117(n+1), A049097(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340154

/-- `∩[A040117(n+1), A049097(n+1)]` -/
def P18257994120769492185.Spec : Prop :=
  ∀ n, (P18257994120769492185.a n : ℤ) = A340154 (n + 1)

theorem P18257994120769492185.correct : P18257994120769492185.Spec := by
  intro n
  simp only [A340154, Nat.add_sub_cancel]

end A340154

/-! ## A340154.P10469495704199677370

`∩[A040117(n+1), A065301(n+1)]`
-/

namespace A340154.P10469495704199677370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P10469495704199677370

namespace A340154

/-- `∩[A040117(n+1), A065301(n+1)]` -/
def P10469495704199677370.Spec : Prop :=
  ∀ n, (P10469495704199677370.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P11518280772016053189

`∩[A007528(n+1), A049097(n+1)]`
-/

namespace A340154.P11518280772016053189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P11518280772016053189

namespace A340154

/-- `∩[A007528(n+1), A049097(n+1)]` -/
def P11518280772016053189.Spec : Prop :=
  ∀ n, (P11518280772016053189.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P6740296953540974304

`∩[A007528(n+1), A065301(n+1)]`
-/

namespace A340154.P6740296953540974304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P6740296953540974304

namespace A340154

/-- `∩[A007528(n+1), A065301(n+1)]` -/
def P6740296953540974304.Spec : Prop :=
  ∀ n, (P6740296953540974304.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P178923029406233585

`∩[A045410(n+1), A049097(n+1)]`
-/

namespace A340154.P178923029406233585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P178923029406233585

namespace A340154

/-- `∩[A045410(n+1), A049097(n+1)]` -/
def P178923029406233585.Spec : Prop :=
  ∀ n, (P178923029406233585.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P8990593646508305707

`∩[A049097(n+1), A056955(n+1)]`
-/

namespace A340154.P8990593646508305707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P8990593646508305707

namespace A340154

/-- `∩[A049097(n+1), A056955(n+1)]` -/
def P8990593646508305707.Spec : Prop :=
  ∀ n, (P8990593646508305707.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P13937876721714540533

`∩[A045410(n+1), A065301(n+1)]`
-/

namespace A340154.P13937876721714540533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P13937876721714540533

namespace A340154

/-- `∩[A045410(n+1), A065301(n+1)]` -/
def P13937876721714540533.Spec : Prop :=
  ∀ n, (P13937876721714540533.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P9027889843847285053

`∩[A056955(n+1), A065301(n+1)]`
-/

namespace A340154.P9027889843847285053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P9027889843847285053

namespace A340154

/-- `∩[A056955(n+1), A065301(n+1)]` -/
def P9027889843847285053.Spec : Prop :=
  ∀ n, (P9027889843847285053.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P13696119418940076370

`∩[A003630(n+1), A049097(n+1)]`
-/

namespace A340154.P13696119418940076370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P13696119418940076370

namespace A340154

/-- `∩[A003630(n+1), A049097(n+1)]` -/
def P13696119418940076370.Spec : Prop :=
  ∀ n, (P13696119418940076370.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P5419387232382703348

`∩[A003630(n+1), A065301(n+1)]`
-/

namespace A340154.P5419387232382703348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P5419387232382703348

namespace A340154

/-- `∩[A003630(n+1), A065301(n+1)]` -/
def P5419387232382703348.Spec : Prop :=
  ∀ n, (P5419387232382703348.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P288066033001662683

`∩[A040117(n+1), A066652(n+1)]`
-/

namespace A340154.P288066033001662683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P288066033001662683

namespace A340154

/-- `∩[A040117(n+1), A066652(n+1)]` -/
def P288066033001662683.Spec : Prop :=
  ∀ n, (P288066033001662683.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P1697504720417774954

`∩[A066652(n+1), A243183(n+1)]`
-/

namespace A340154.P1697504720417774954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P1697504720417774954

namespace A340154

/-- `∩[A066652(n+1), A243183(n+1)]` -/
def P1697504720417774954.Spec : Prop :=
  ∀ n, (P1697504720417774954.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P17128864901272536993

`∩[A045410(n+1), A386424(n+1)]`
-/

namespace A340154.P17128864901272536993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P17128864901272536993

namespace A340154

/-- `∩[A045410(n+1), A386424(n+1)]` -/
def P17128864901272536993.Spec : Prop :=
  ∀ n, (P17128864901272536993.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P2056525595839480102

`∩[A040117(n+1), A075430(n+1)]`
-/

namespace A340154.P2056525595839480102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P2056525595839480102

namespace A340154

/-- `∩[A040117(n+1), A075430(n+1)]` -/
def P2056525595839480102.Spec : Prop :=
  ∀ n, (P2056525595839480102.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P17742510107711381677

`∩[A040117(n+1), A192862(n+1)]`
-/

namespace A340154.P17742510107711381677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P17742510107711381677

namespace A340154

/-- `∩[A040117(n+1), A192862(n+1)]` -/
def P17742510107711381677.Spec : Prop :=
  ∀ n, (P17742510107711381677.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P4927678058392934225

`∩[A192862(n+1), A243183(n+1)]`
-/

namespace A340154.P4927678058392934225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P4927678058392934225

namespace A340154

/-- `∩[A192862(n+1), A243183(n+1)]` -/
def P4927678058392934225.Spec : Prop :=
  ∀ n, (P4927678058392934225.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P2619987998921962944

`∩[A003630(n+1), A065300(n+1)]`
-/

namespace A340154.P2619987998921962944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P2619987998921962944

namespace A340154

/-- `∩[A003630(n+1), A065300(n+1)]` -/
def P2619987998921962944.Spec : Prop :=
  ∀ n, (P2619987998921962944.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P2919237226022484309

`∩[A007528(n+1), A065300(n+1)]`
-/

namespace A340154.P2919237226022484309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P2919237226022484309

namespace A340154

/-- `∩[A007528(n+1), A065300(n+1)]` -/
def P2919237226022484309.Spec : Prop :=
  ∀ n, (P2919237226022484309.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P9633147055196619732

`∩[A040117(n+1), A065300(n+1)]`
-/

namespace A340154.P9633147055196619732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P9633147055196619732

namespace A340154

/-- `∩[A040117(n+1), A065300(n+1)]` -/
def P9633147055196619732.Spec : Prop :=
  ∀ n, (P9633147055196619732.a n : ℤ) = A340154 (n + 1)

end A340154

/-! ## A340154.P14821096206511595421

`∩[A045410(n+1), A065300(n+1)]`
-/

namespace A340154.P14821096206511595421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340154.P14821096206511595421

namespace A340154

/-- `∩[A045410(n+1), A065300(n+1)]` -/
def P14821096206511595421.Spec : Prop :=
  ∀ n, (P14821096206511595421.a n : ℤ) = A340154 (n + 1)

end A340154

/-!
# A340156: Square array read by upward antidiagonals: T(n, k) is the number of n-ary strings of length k containing 00.

The programs for A340156, there is no canonical definition to state claims against.
-/

/-! ## A340156.P5339148768049837424

`A340242(n+2)-A010894(A098473(n))`
-/

namespace A340156.P5339148768049837424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340242 (n + 2) - A010894 ((A098473 n).toNat + 21)

end

end A340156.P5339148768049837424

/-! ## A340156.P10413530109726394110

`A340242(n+2)-A186741(A005703(n))`
-/

namespace A340156.P10413530109726394110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340242 (n + 2) - A186741 (A005703 n).toNat

end

end A340156.P10413530109726394110

/-! ## A340156.P9085449240225194014

`A340242(n+2)-A010054(A262267(n+1))`
-/

namespace A340156.P9085449240225194014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340242 (n + 2) - A010054 (A262267 (n + 1)).toNat

end

end A340156.P9085449240225194014

/-!
# A340161: a(n) is the smallest number k for which the set {k + 1, k + 2, ..., k + k} contains exactly n elements with exactly three 1-bits (A014311).

The programs for A340161, the canonical program `A340161.P779018813949303739` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340161 has offset 0).

The definition of A340161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340161.P779018813949303739

`A018900(n)+a(floor(sin(n+1)²))` with `a(0)=1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340161

/-- `A018900(n)+a(floor(sin(n+1)²))` -/
def P779018813949303739.Spec : Prop :=
  ∀ n, P779018813949303739.a n = A340161 n

theorem P779018813949303739.correct : P779018813949303739.Spec := by
  intro n
  simp only [A340161]

end A340161

/-! ## A340161.P1675059717903539679

`record[ceil(xor(2, A018900(n+1))/2)]`
-/

namespace A340161.P1675059717903539679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor 2 (A018900 (n + 1)) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340161.P1675059717903539679

namespace A340161

/-- `record[ceil(xor(2, A018900(n+1))/2)]` -/
def P1675059717903539679.Spec : Prop :=
  ∀ n, P1675059717903539679.a n = A340161 n

end A340161

/-! ## A340161.P9892892199289204249

`A048645(comp[∑[char[1]+n]])+ceil(sin(n)²)`
-/

namespace A340161.P9892892199289204249
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A340161.P9892892199289204249

namespace A340161

/-- `A048645(comp[∑[char[1]+n]])+ceil(sin(n)²)` -/
def P9892892199289204249.Spec : Prop :=
  ∀ n, P9892892199289204249.a n = A340161 n

end A340161

/-! ## A340161.P16807112703724594930

`record[A110962(A014311(n+1)+2)]`
-/

namespace A340161.P16807112703724594930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A014311 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340161.P16807112703724594930

namespace A340161

/-- `record[A110962(A014311(n+1)+2)]` -/
def P16807112703724594930.Spec : Prop :=
  ∀ n, P16807112703724594930.a n = A340161 n

end A340161

/-! ## A340161.P8244426599123896155

`A057168(a(n-1)-1)+1` with `a(0)=1, a(1)=4`
-/

namespace A340161.P8244426599123896155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A057168 (a (n - 1) - 1).toNat + 1

end

end A340161.P8244426599123896155

namespace A340161

/-- `A057168(a(n-1)-1)+1` -/
def P8244426599123896155.Spec : Prop :=
  ∀ n, P8244426599123896155.a n = A340161 n

end A340161

/-! ## A340161.P7427318158799409006

`A171942(a(n-1))+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A340161.P7427318158799409006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A171942 (a (n - 1)).toNat + a (n - 1)

end

end A340161.P7427318158799409006

namespace A340161

/-- `A171942(a(n-1))+a(n-1)` -/
def P7427318158799409006.Spec : Prop :=
  ∀ n, P7427318158799409006.a n = A340161 n

end A340161

/-! ## A340161.P14197348823037066597

`record[and(n+1, A006068(n))]+1`
-/

namespace A340161.P14197348823037066597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A006068 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A340161.P14197348823037066597

namespace A340161

/-- `record[and(n+1, A006068(n))]+1` -/
def P14197348823037066597.Spec : Prop :=
  ∀ n, P14197348823037066597.a n = A340161 n

end A340161

/-! ## A340161.P3370813724007575448

`eq[n-1, A038556(floor(n-atan(n)))]`
-/

namespace A340161.P3370813724007575448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340161.P3370813724007575448

namespace A340161

/-- `eq[n-1, A038556(floor(n-atan(n)))]` -/
def P3370813724007575448.Spec : Prop :=
  ∀ n, (P3370813724007575448.a n : ℤ) = A340161 n

end A340161

/-! ## A340161.P2581420765940131657

`lt[3%(Δ[n²]-A005187(n)), 1]+1`
-/

namespace A340161.P2581420765940131657
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - A005187 n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A340161.P2581420765940131657

namespace A340161

/-- `lt[3%(Δ[n²]-A005187(n)), 1]+1` -/
def P2581420765940131657.Spec : Prop :=
  ∀ n, (P2581420765940131657.a n : ℤ) = A340161 n

end A340161

/-! ## A340161.P5992783609767539066

`A038556(record[A038558(n)])+1`
-/

namespace A340161.P5992783609767539066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A340161.P5992783609767539066

namespace A340161

/-- `A038556(record[A038558(n)])+1` -/
def P5992783609767539066.Spec : Prop :=
  ∀ n, P5992783609767539066.a n = A340161 n

end A340161

/-!
# A340162: a(1) = 7; thereafter a(n) is the smallest number k with exactly three 1-bits, not already in the sequence, for which k*a(n - 1) has exactly three 1-bits (A014311).

The programs for A340162, the canonical program `A340162.P6033627073434879638` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340162 has offset 1).

The definition of A340162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340162.P8540040567231532091

`ogf((7+14x+5x^2-15x^4-28x^5-46x^6)/(1-2x^2-2x^4+4x^6))`
-/

namespace A340162.P8540040567231532091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 14, 5, 0, -15, -28, -46] [1, 0, -2, 0, -2, 0, 4] n

end

end A340162.P8540040567231532091

namespace A340162

/-- `ogf((7+14x+5x^2-15x^4-28x^5-46x^6)/(1-2x^2-2x^4+4x^6))` -/
def P8540040567231532091.Spec : Prop :=
  ∀ n, P8540040567231532091.a n = A340162 (n + 1)

end A340162

/-! ## A340162.P6033627073434879638

`2*a(n-2)+2*a(n-4)-4*a(n-6)` with `a(0)=7, a(1)=14, a(2)=19, a(3)=28, a(4)=37, a(5)=56, a(6)=38`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340162

/-- `2*a(n-2)+2*a(n-4)-4*a(n-6)` -/
def P6033627073434879638.Spec : Prop :=
  ∀ n, P6033627073434879638.a n = A340162 (n + 1)

theorem P6033627073434879638.correct : P6033627073434879638.Spec := by
  intro n
  simp only [A340162, Nat.add_sub_cancel]

end A340162

/-!
# A340163: For n>=1, smallest integer k such that for all m>=k: m^(1/n)+(m+1)^(1/n) >= (2^n*m+2^(n-1)-1)^(1/n).

The programs for A340163, there is no canonical definition to state claims against.
-/

/-! ## A340163.P5494219702616631232

`round(n*2^(n-2)/(n+1))`
-/

namespace A340163.P5494219702616631232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) / (n + 1 : ℚ)))

end

end A340163.P5494219702616631232

/-! ## A340163.P12872834299042089681

`floor((A350294(n)+2)/4)`
-/

namespace A340163.P12872834299042089681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350294 n + 2 : ℚ) / 4⌋

end

end A340163.P12872834299042089681

/-! ## A340163.P3270972298486215677

`ceil(floor(A001787(n)/(n+1))/2)`
-/

namespace A340163.P3270972298486215677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌊(A001787 n : ℚ) / (n + 1 : ℚ)⌋ : ℚ) / 2⌉

end

end A340163.P3270972298486215677

/-! ## A340163.P14328678780404913331

`floor(ceil(A005183(n)/(n+1))/2)`
-/

namespace A340163.P14328678780404913331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A005183 n : ℚ) / (n + 1 : ℚ)⌉ : ℚ) / 2⌋

end

end A340163.P14328678780404913331

/-! ## A340163.P8543702626444181446

`floor(A188626(n+1)/(2*(n+1)))`
-/

namespace A340163.P8543702626444181446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A188626 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)⌋

end

end A340163.P8543702626444181446

/-!
# A340164: Rotationally ambigrammatic square numbers with no trailing zeros.

The programs for A340164, there is no canonical definition to state claims against.
-/

/-! ## A340164.P8639241816933466005

`A339996(n+1)²`
-/

namespace A340164.P8639241816933466005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339996 (n + 1) ^ 2

end

end A340164.P8639241816933466005

/-! ## A340164.P17695715040610056171

`A339996(1-(n-2*n))^2`
-/

namespace A340164.P17695715040610056171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339996 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat ^ 2

end

end A340164.P17695715040610056171

/-! ## A340164.P7996452673415341609

`record[A339996(A082854(n))²]`
-/

namespace A340164.P7996452673415341609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339996 (A082854 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340164.P7996452673415341609

/-! ## A340164.P14808596305398265991

`record[A339996(A106466(n))²]`
-/

namespace A340164.P14808596305398265991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339996 (A106466 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340164.P14808596305398265991

/-! ## A340164.P9715239023886555577

`record[A339996(A028920(n))²]`
-/

namespace A340164.P9715239023886555577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339996 (A028920 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340164.P9715239023886555577

/-! ## A340164.P13382806264899341136

`A000290(A339996(A000290(n+1)/(n+1)))`
-/

namespace A340164.P13382806264899341136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A339996 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A340164.P13382806264899341136

/-!
# A340169: a(n) is the number of strings of length n over the alphabet {a,b,c} with the number of a's divisible by 3, and the number of b's and c's is at most 3.

The programs for A340169, the canonical program `A340169.P9096248367537316484` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340169 has offset 0).

The definition of A340169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340169.P9096248367537316484

`ogf((1+2x+4x^2+5x^3+24x^5+131x^6-6x^7-24x^8+79x^9+4x^10-4x^11)/(1-4x^3+6x^6-4x^9+x^12))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340169

/-- `ogf((1+2x+4x^2+5x^3+24x^5+131x^6-6x^7-24x^8+79x^9+4x^10-4x^11)/(1-4x^3+6x^6-4x^9+x^12))` -/
def P9096248367537316484.Spec : Prop :=
  ∀ n, P9096248367537316484.a n = A340169 n

theorem P9096248367537316484.correct : P9096248367537316484.Spec := by
  intro n
  simp only [A340169]

end A340169

/-! ## A340169.P17318135442401455104

`A263274(A309664(3*n)+A124006(n))`
-/

namespace A340169.P17318135442401455104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 (A309664 (3 * n) + A124006 n).toNat

end

end A340169.P17318135442401455104

namespace A340169

/-- `A263274(A309664(3*n)+A124006(n))` -/
def P17318135442401455104.Spec : Prop :=
  ∀ n, P17318135442401455104.a n = A340169 n

end A340169

/-!
# A340171: List of X-coordinates of point moving along one of the arms of a counterclockwise double square spiral; A340172 gives Y-coordinates.

The programs for A340171, the canonical program `A340171.P3916832094635592034` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340171 has offset 0).

The definition of A340171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340171.P3916832094635592034

`∑[A056594(A172471(abs(1-n)))]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340171

/-- `∑[A056594(A172471(abs(1-n)))]` -/
def P3916832094635592034.Spec : Prop :=
  ∀ n, P3916832094635592034.a n = A340171 n

theorem P3916832094635592034.correct : P3916832094635592034.Spec := by
  intro n
  simp only [A340171]

end A340171

/-! ## A340171.P15147882565211839758

`A340172(A182834(n+1))`
-/

namespace A340171.P15147882565211839758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (A182834 (n + 1)).toNat

end

end A340171.P15147882565211839758

namespace A340171

/-- `A340172(A182834(n+1))` -/
def P15147882565211839758.Spec : Prop :=
  ∀ n, P15147882565211839758.a n = A340171 n

end A340171

/-! ## A340171.P9586525584119051495

`A340172(A101776(n)+n)`
-/

namespace A340171.P9586525584119051495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (A101776 n + (n : ℤ)).toNat

end

end A340171.P9586525584119051495

namespace A340171

/-- `A340172(A101776(n)+n)` -/
def P9586525584119051495.Spec : Prop :=
  ∀ n, P9586525584119051495.a n = A340171 n

end A340171

/-! ## A340171.P9969370134451830689

`A340172(comp[∑[A109613(n)]])`
-/

namespace A340171.P9969370134451830689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340171.P9969370134451830689

namespace A340171

/-- `A340172(comp[∑[A109613(n)]])` -/
def P9969370134451830689.Spec : Prop :=
  ∀ n, P9969370134451830689.a n = A340171 n

end A340171

/-! ## A340171.P14648524708909379600

`A340172(A172471(n)+1+n)`
-/

namespace A340171.P14648524708909379600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (A172471 n + 1 + (n : ℤ)).toNat

end

end A340171.P14648524708909379600

namespace A340171

/-- `A340172(A172471(n)+1+n)` -/
def P14648524708909379600.Spec : Prop :=
  ∀ n, P14648524708909379600.a n = A340171 n

end A340171

/-! ## A340171.P16742552052091794038

`A329116(∑[1-A266982(2*n)])`
-/

namespace A340171.P16742552052091794038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A266982 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340171.P16742552052091794038

namespace A340171

/-- `A329116(∑[1-A266982(2*n)])` -/
def P16742552052091794038.Spec : Prop :=
  ∀ n, P16742552052091794038.a n = A340171 n

end A340171

/-! ## A340171.P3002816455754621521

`A340172(A000196(2*n)+n+1)`
-/

namespace A340171.P3002816455754621521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340172 (A000196 (2 * n) + (n + 1 : ℤ)).toNat

end

end A340171.P3002816455754621521

namespace A340171

/-- `A340172(A000196(2*n)+n+1)` -/
def P3002816455754621521.Spec : Prop :=
  ∀ n, P3002816455754621521.a n = A340171 n

end A340171

/-!
# A340172: List of Y-coordinates of point moving along one of the arms of a counterclockwise double square spiral; A340171 gives X-coordinates.

The programs for A340172, the canonical program `A340172.P10637103934445995388` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340172 has offset 0).

The definition of A340172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340172.P10637103934445995388

`Δ[A340171(n)]-A340171(A182834(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340172

/-- `Δ[A340171(n)]-A340171(A182834(n+1))` -/
def P10637103934445995388.Spec : Prop :=
  ∀ n, P10637103934445995388.a n = A340172 n

theorem P10637103934445995388.correct : P10637103934445995388.Spec := by
  intro n
  simp only [A340172]

end A340172

/-! ## A340172.P13891115929806316247

`A329116(∑[A266982(2*n)]-1)`
-/

namespace A340172.P13891115929806316247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A340172.P13891115929806316247

namespace A340172

/-- `A329116(∑[A266982(2*n)]-1)` -/
def P13891115929806316247.Spec : Prop :=
  ∀ n, P13891115929806316247.a n = A340172 n

end A340172

/-! ## A340172.P18059255597855513241

`A340171(n-A340134(2*n+1))`
-/

namespace A340172.P18059255597855513241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340171 ((n : ℤ) - A340134 (2 * n + 1)).toNat

end

end A340172.P18059255597855513241

namespace A340172

/-- `A340171(n-A340134(2*n+1))` -/
def P18059255597855513241.Spec : Prop :=
  ∀ n, P18059255597855513241.a n = A340172 n

end A340172

/-! ## A340172.P4205367455737384262

`A329116(∑[A266982(2*n+1)*A266982(2*n)])`
-/

namespace A340172.P4205367455737384262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (2 * n + 1) * A266982 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340172.P4205367455737384262

namespace A340172

/-- `A329116(∑[A266982(2*n+1)*A266982(2*n)])` -/
def P4205367455737384262.Spec : Prop :=
  ∀ n, P4205367455737384262.a n = A340172 n

end A340172

/-! ## A340172.P12699917863990536536

`A329116(∑[A267034(2*n+1)]-A267034(2*n+1))`
-/

namespace A340172.P12699917863990536536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (∑ j ∈ Finset.range (n + 1), f1 j - A267034 (2 * n + 1)).toNat

end

end A340172.P12699917863990536536

namespace A340172

/-- `A329116(∑[A267034(2*n+1)]-A267034(2*n+1))` -/
def P12699917863990536536.Spec : Prop :=
  ∀ n, P12699917863990536536.a n = A340172 n

end A340172

/-!
# A340173: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(4,n) (with n at least 3) missing two edges, where the two removed edges are not incident to the same vertex in the 4-point set but are incident to the same vertex in the other set.

The programs for A340173, the canonical program `A340173.P10364993221521954539` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340173 has offset 3).

The definition of A340173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340173.P10364993221521954539

`3*15^(n+2)-8*7^(n+2)+7*3^(n+2)-2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340173

/-- `3*15^(n+2)-8*7^(n+2)+7*3^(n+2)-2` -/
def P10364993221521954539.Spec : Prop :=
  ∀ n, P10364993221521954539.a n = A340173 (n + 3)

theorem P10364993221521954539.correct : P10364993221521954539.Spec := by
  intro n
  simp only [A340173, Nat.add_sub_cancel]

end A340173

/-!
# A340174: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(5,n) (with n at least 3) missing two edges, where the two removed edges are not incident to the same vertex in the 5-point set but are incident to the same vertex in the other set.

The programs for A340174, the canonical program `A340174.P1096778608167523810` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340174 has offset 3).

The definition of A340174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340174.P1096778608167523810

`7*31^(n+2)-23*15^(n+2)+4*7^(n+3)-5*3^(n+3)+3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340174

/-- `7*31^(n+2)-23*15^(n+2)+4*7^(n+3)-5*3^(n+3)+3` -/
def P1096778608167523810.Spec : Prop :=
  ∀ n, P1096778608167523810.a n = A340174 (n + 3)

theorem P1096778608167523810.correct : P1096778608167523810.Spec := by
  intro n
  simp only [A340174, Nat.add_sub_cancel]

end A340174

/-!
# A340176: Number of spanning trees in the halved Aztec diamond HMD_n.

The programs for A340176, there is no canonical definition to state claims against.
-/

/-! ## A340176.P777697707726013630

`A243953(n)*A353860(A329968(n))`
-/

namespace A340176.P777697707726013630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243953 n * A353860 (A329968 n).toNat

end

end A340176.P777697707726013630

/-!
# A340178: Euler brick triples, side dimensions (a,b,c) in increasing order for a.

The programs for A340178, there is no canonical definition to state claims against.
-/

/-! ## A340178.P16570810796743929025

`A268396(record[A103314(n)])`
-/

namespace A340178.P16570810796743929025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340178.P16570810796743929025

/-! ## A340178.P14643090324039692243

`A268396(A103314(2*n))`
-/

namespace A340178.P14643090324039692243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268396 (A103314 (2 * n)).toNat

end

end A340178.P14643090324039692243

/-!
# A340184: n with the rightmost occurrence of the smallest digit of n deleted.

The programs for A340184, there is no canonical definition to state claims against.
-/

/-! ## A340184.P16098993563461668420

`A087051(n)%A139337(n)`
-/

namespace A340184.P16098993563461668420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 n) (A139337 n)

end

end A340184.P16098993563461668420

/-! ## A340184.P15654924599241275509

`A054054(A010785(n-A054054(n)))`
-/

namespace A340184.P15654924599241275509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A010785 ((n : ℤ) - A054054 n).toNat).toNat

end

end A340184.P15654924599241275509

/-! ## A340184.P7615134577224504511

`A067456(n)%A146011(n+1)`
-/

namespace A340184.P7615134577224504511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067456 n) (A146011 (n + 1))

end

end A340184.P7615134577224504511

/-!
# A340185: Number of spanning trees in the halved Aztec diamond HOD_n.

The programs for A340185, there is no canonical definition to state claims against.
-/

/-! ## A340185.P2153744125734629077

`A340052(n)*A065072(n)`
-/

namespace A340185.P2153744125734629077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340052 n * A065072 n

end

end A340185.P2153744125734629077

/-! ## A340185.P9703723970163972931

`A065072(n)*A340052(n)`
-/

namespace A340185.P9703723970163972931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065072 n * A340052 n

end

end A340185.P9703723970163972931

/-! ## A340185.P14767909086494983223

`1/2^n*sqrt(A127605(n)*A004003(n)/(2*n+1))`
-/

namespace A340185.P14767909086494983223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / (2 ^ n : ℚ) : ℝ) * Real.sqrt ((A127605 n * A004003 n : ℚ) / (2 * n + 1 : ℚ) : ℝ)

end

end A340185.P14767909086494983223

/-!
# A340187: Dirichlet inverse of A063994(x) = Product_{primes p dividing x} gcd(p-1, x-1).

The programs for A340187, there is no canonical definition to state claims against.
-/

/-! ## A340187.P5622894093336175129

`A340189(n+1)-(n+1)`
-/

namespace A340187.P5622894093336175129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340189 (n + 1) - (n + 1 : ℤ)

end

end A340187.P5622894093336175129

/-! ## A340187.P1509427080546561321

`A340188(n+1)-A063994(n+1)`
-/

namespace A340187.P1509427080546561321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - A063994 (n + 1)

end

end A340187.P1509427080546561321

/-! ## A340187.P17644100273698994751

`A340188(n+1)-(A348259(n+1)+1)`
-/

namespace A340187.P17644100273698994751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - (A348259 (n + 1) + 1)

end

end A340187.P17644100273698994751

/-! ## A340187.P13623100820638394963

`A318828(n+1)+A340188(n+1)-(n+1)`
-/

namespace A340187.P13623100820638394963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318828 (n + 1) + (A340188 (n + 1) - (n + 1 : ℤ))

end

end A340187.P13623100820638394963

/-! ## A340187.P5999522403805965695

`A340188(n+1)-(A340191(n+1)+A340190(n+1))`
-/

namespace A340187.P5999522403805965695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - (A340191 (n + 1) + A340190 (n + 1))

end

end A340187.P5999522403805965695

/-! ## A340187.P18244831099445820342

`A340188(n+1)-A049559(n+1)*A318829(n+1)`
-/

namespace A340187.P18244831099445820342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - A049559 (n + 1) * A318829 (n + 1)

end

end A340187.P18244831099445820342

/-!
# A340188: Sum of A063994 and its Dirichlet inverse, where A063994(x) = Product_{primes p dividing x} gcd(p-1, x-1).

The programs for A340188, there is no canonical definition to state claims against.
-/

/-! ## A340188.P18236567889622912411

`A063994(n+1)+A340187(n+1)`
-/

namespace A340188.P18236567889622912411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) + A340187 (n + 1)

end

end A340188.P18236567889622912411

/-! ## A340188.P6402411242609412787

`A340189(n+1)-A318828(n+1)`
-/

namespace A340188.P6402411242609412787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340189 (n + 1) - A318828 (n + 1)

end

end A340188.P6402411242609412787

/-! ## A340188.P1071876945854709852

`A063994(n+1)+A340189(n+1)-(n+1)`
-/

namespace A340188.P1071876945854709852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) + (A340189 (n + 1) - (n + 1 : ℤ))

end

end A340188.P1071876945854709852

/-! ## A340188.P12516457202815568691

`A340187(n+1)+n+1-A318828(n+1)`
-/

namespace A340188.P12516457202815568691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340187 (n + 1) + ((n + 1 : ℤ) - A318828 (n + 1))

end

end A340188.P12516457202815568691

/-! ## A340188.P5796813967463347871

`A340187(n+1)+A340191(n+1)+A340190(n+1)`
-/

namespace A340188.P5796813967463347871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340187 (n + 1) + (A340191 (n + 1) + A340190 (n + 1))

end

end A340188.P5796813967463347871

/-! ## A340188.P5572747016767676945

`A340187(n+1)+A000010(n+1)/A247074(n+1)`
-/

namespace A340188.P5572747016767676945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340187 (n + 1) : ℚ) + (A000010 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ)

end

end A340188.P5572747016767676945

/-!
# A340189: a(n) = n + A340187(n).

The programs for A340189, there is no canonical definition to state claims against.
-/

/-! ## A340189.P14596871753676322650

`n+1+A340187(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340189.P14596871753676322650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A340187 (n + 1)

end

end A340189.P14596871753676322650

/-! ## A340189.P7885791616816660141

`A340188(n+1)+A318828(n+1)`
-/

namespace A340189.P7885791616816660141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) + A318828 (n + 1)

end

end A340189.P7885791616816660141

/-! ## A340189.P4688420968665974943

`A340188(n+1)-A348259(n+1)+n`
-/

namespace A340189.P4688420968665974943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - A348259 (n + 1) + (n : ℤ)

end

end A340189.P4688420968665974943

/-! ## A340189.P9120132683659246726

`A340188(n+1)+n+1-A063994(n+1)`
-/

namespace A340189.P9120132683659246726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) + ((n + 1 : ℤ) - A063994 (n + 1))

end

end A340189.P9120132683659246726

/-! ## A340189.P10149512080366928421

`A340187(A008619(2*n))-xor(n, -1)`
-/

namespace A340189.P10149512080366928421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340187 (A008619 (2 * n)).toNat - Int.xor (n : ℤ) (-1)

end

end A340189.P10149512080366928421

/-!
# A340190: Möbius transform of A063994(x) = Product_{primes p dividing x} gcd(p-1, x-1).

The programs for A340190, the canonical program `A340190.P11460079198066302671` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340190 has offset 1).

The definition of A340190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340190.P10730352021315574322

`A063994(n+1)-A340191(n+1)`
-/

namespace A340190.P10730352021315574322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) - A340191 (n + 1)

end

end A340190.P10730352021315574322

namespace A340190

/-- `A063994(n+1)-A340191(n+1)` -/
def P10730352021315574322.Spec : Prop :=
  ∀ n, P10730352021315574322.a n = A340190 (n + 1)

theorem P10730352021315574322.correct : P10730352021315574322.Spec := by
  intro n
  simp only [A340190, Nat.add_sub_cancel, A340190.P10730352021315574322.a, A340190.P11460079198066302671.f1, A340190.P11460079198066302671.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A340191, A340191.P14637291367481792060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340190

/-! ## A340190.P11460079198066302671

`∑{d}[n+1, A008683((n+1)/#)*A063994(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340190

/-- `∑{d}[n+1, A008683((n+1)/#)*A063994(#)]` -/
def P11460079198066302671.Spec : Prop :=
  ∀ n, P11460079198066302671.a n = A340190 (n + 1)

theorem P11460079198066302671.correct : P11460079198066302671.Spec := by
  intro n
  simp only [A340190, Nat.add_sub_cancel]

end A340190

/-! ## A340190.P138616519176838241

`A348259(n+1)+1-A340191(n+1)`
-/

namespace A340190.P138616519176838241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1) + (1 - A340191 (n + 1))

end

end A340190.P138616519176838241

namespace A340190

/-- `A348259(n+1)+1-A340191(n+1)` -/
def P138616519176838241.Spec : Prop :=
  ∀ n, P138616519176838241.a n = A340190 (n + 1)

theorem P138616519176838241.correct : P138616519176838241.Spec := by
  intro n
  simp only [A340190, Nat.add_sub_cancel, A340190.P138616519176838241.a, A340190.P11460079198066302671.f1, A340190.P11460079198066302671.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A340191, A340191.P14637291367481792060.a, A348259, A348259.P10362202789070795068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340190

/-! ## A340190.P10840272047459267941

`n+1-(A340191(n+1)+A318828(n+1))`
-/

namespace A340190.P10840272047459267941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A340191 (n + 1) + A318828 (n + 1))

end

end A340190.P10840272047459267941

namespace A340190

/-- `n+1-(A340191(n+1)+A318828(n+1))` -/
def P10840272047459267941.Spec : Prop :=
  ∀ n, P10840272047459267941.a n = A340190 (n + 1)

theorem P10840272047459267941.correct : P10840272047459267941.Spec := by
  intro n
  simp only [A340190, Nat.add_sub_cancel, A340190.P10840272047459267941.a, A340190.P11460079198066302671.f1, A340190.P11460079198066302671.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A318828, A318828.P2519863586055671682.a, A340191, A340191.P14637291367481792060.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340190

/-! ## A340190.P4476642913627224492

`∑{d}[n+1, A007427(#)*A340192((n+1)/#)]`
-/

namespace A340190.P4476642913627224492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A340192 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340190.P4476642913627224492

namespace A340190

/-- `∑{d}[n+1, A007427(#)*A340192((n+1)/#)]` -/
def P4476642913627224492.Spec : Prop :=
  ∀ n, P4476642913627224492.a n = A340190 (n + 1)

end A340190

/-! ## A340190.P6861042549023727831

`A340188(n+1)-(A340191(n+1)+A340187(n+1))`
-/

namespace A340190.P6861042549023727831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - (A340191 (n + 1) + A340187 (n + 1))

end

end A340190.P6861042549023727831

namespace A340190

/-- `A340188(n+1)-(A340191(n+1)+A340187(n+1))` -/
def P6861042549023727831.Spec : Prop :=
  ∀ n, P6861042549023727831.a n = A340190 (n + 1)

end A340190

/-!
# A340191: Difference between A063994 and its Möbius transform.

The programs for A340191, the canonical program `A340191.P14637291367481792060` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340191 has offset 1).

The definition of A340191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, A340190, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340191.P14637291367481792060

`A063994(n+1)-A340190(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340191

/-- `A063994(n+1)-A340190(n+1)` -/
def P14637291367481792060.Spec : Prop :=
  ∀ n, P14637291367481792060.a n = A340191 (n + 1)

theorem P14637291367481792060.correct : P14637291367481792060.Spec := by
  intro n
  simp only [A340191, Nat.add_sub_cancel]

end A340191

/-! ## A340191.P16433378164814962471

`A348259(n+1)+1-A340190(n+1)`
-/

namespace A340191.P16433378164814962471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348259 (n + 1) + (1 - A340190 (n + 1))

end

end A340191.P16433378164814962471

namespace A340191

/-- `A348259(n+1)+1-A340190(n+1)` -/
def P16433378164814962471.Spec : Prop :=
  ∀ n, P16433378164814962471.a n = A340191 (n + 1)

theorem P16433378164814962471.correct : P16433378164814962471.Spec := by
  intro n
  simp only [A340191, Nat.add_sub_cancel, A340191.P16433378164814962471.a, A340191.P14637291367481792060.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A340190, A340190.P11460079198066302671.f1, A340190.P11460079198066302671.a, A348259, A348259.P10362202789070795068.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340191

/-! ## A340191.P7458302519185735964

`∑{d}[n+1, A340190(#)]-A340190(n+1)`
-/

namespace A340191.P7458302519185735964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A340190 d - A340190 (n + 1)

end

end A340191.P7458302519185735964

namespace A340191

/-- `∑{d}[n+1, A340190(#)]-A340190(n+1)` -/
def P7458302519185735964.Spec : Prop :=
  ∀ n, P7458302519185735964.a n = A340191 (n + 1)

end A340191

/-! ## A340191.P15500475090422681141

`∑{d}[n+1, A063994(#)*A157658((n+1)/#)]`
-/

namespace A340191.P15500475090422681141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063994 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340191.P15500475090422681141

namespace A340191

/-- `∑{d}[n+1, A063994(#)*A157658((n+1)/#)]` -/
def P15500475090422681141.Spec : Prop :=
  ∀ n, P15500475090422681141.a n = A340191 (n + 1)

end A340191

/-! ## A340191.P17708206265693128168

`A340188(n+1)-(A340190(n+1)+A340187(n+1))`
-/

namespace A340191.P17708206265693128168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340188 (n + 1) - (A340190 (n + 1) + A340187 (n + 1))

end

end A340191.P17708206265693128168

namespace A340191

/-- `A340188(n+1)-(A340190(n+1)+A340187(n+1))` -/
def P17708206265693128168.Spec : Prop :=
  ∀ n, P17708206265693128168.a n = A340191 (n + 1)

end A340191

/-! ## A340191.P8130156344712697780

`A000010(n+1)/A247074(n+1)-A340190(n+1)`
-/

namespace A340191.P8130156344712697780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A247074 (n + 1) : ℚ) - (A340190 (n + 1) : ℚ)

end

end A340191.P8130156344712697780

namespace A340191

/-- `A000010(n+1)/A247074(n+1)-A340190(n+1)` -/
def P8130156344712697780.Spec : Prop :=
  ∀ n, P8130156344712697780.a n = (A340191 (n + 1) : ℚ)

end A340191

/-!
# A340192: a(n) = Sum_{d|n} A063994(d), where A063994(x) = Product_{primes p dividing x} gcd(p-1, x-1).

The programs for A340192, the canonical program `A340192.P16363621436527466059` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340192 has offset 1).

The definition of A340192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340192.P16363621436527466059

`∑{d}[n+1, A063994(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340192

/-- `∑{d}[n+1, A063994(#)]` -/
def P16363621436527466059.Spec : Prop :=
  ∀ n, P16363621436527466059.a n = A340192 (n + 1)

theorem P16363621436527466059.correct : P16363621436527466059.Spec := by
  intro n
  simp only [A340192, Nat.add_sub_cancel]

end A340192

/-! ## A340192.P9291875250697368364

`n+1-A340193(n+1)`
-/

namespace A340192.P9291875250697368364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340193 (n + 1)

end

end A340192.P9291875250697368364

namespace A340192

/-- `n+1-A340193(n+1)` -/
def P9291875250697368364.Spec : Prop :=
  ∀ n, P9291875250697368364.a n = A340192 (n + 1)

theorem P9291875250697368364.correct : P9291875250697368364.Spec := by
  intro n
  simp only [A340192, Nat.add_sub_cancel, A340192.P9291875250697368364.a, A340192.P16363621436527466059.f1, A340192.P16363621436527466059.a, A063994, A063994.P16689841622396858113.f1, A063994.P16689841622396858113.a, A340193, A340193.P3266787681671506109.f1, A340193.P3266787681671506109.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340192

/-! ## A340192.P7273769216261129904

`1-∑{d}[n+1, A318840(#)]+n`
-/

namespace A340192.P7273769216261129904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A318840 d + (n : ℤ)

end

end A340192.P7273769216261129904

namespace A340192

/-- `1-∑{d}[n+1, A318840(#)]+n` -/
def P7273769216261129904.Spec : Prop :=
  ∀ n, P7273769216261129904.a n = A340192 (n + 1)

end A340192

/-! ## A340192.P15934504637528224185

`A024000(A340193(n+1))+n`
-/

namespace A340192.P15934504637528224185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A340193 (n + 1)).toNat + (n : ℤ)

end

end A340192.P15934504637528224185

namespace A340192

/-- `A024000(A340193(n+1))+n` -/
def P15934504637528224185.Spec : Prop :=
  ∀ n, P15934504637528224185.a n = A340192 (n + 1)

end A340192

/-! ## A340192.P14551585407801405069

`∑{d}[n+1, A000005(#)*A340190((n+1)/#)]`
-/

namespace A340192.P14551585407801405069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A340190 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340192.P14551585407801405069

namespace A340192

/-- `∑{d}[n+1, A000005(#)*A340190((n+1)/#)]` -/
def P14551585407801405069.Spec : Prop :=
  ∀ n, P14551585407801405069.a n = A340192 (n + 1)

end A340192

/-! ## A340192.P9048132221401015719

`A025581(A340193(n+1)+A000217(n))+1`
-/

namespace A340192.P9048132221401015719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A340193 (n + 1) + A000217 n).toNat + 1

end

end A340192.P9048132221401015719

namespace A340192

/-- `A025581(A340193(n+1)+A000217(n))+1` -/
def P9048132221401015719.Spec : Prop :=
  ∀ n, P9048132221401015719.a n = A340192 (n + 1)

end A340192

/-! ## A340192.P1437124165743248254

`A004736(A340193(n+1)+A167614(n+1))`
-/

namespace A340192.P1437124165743248254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A340193 (n + 1) + A167614 (n + 1)).toNat

end

end A340192.P1437124165743248254

namespace A340192

/-- `A004736(A340193(n+1)+A167614(n+1))` -/
def P1437124165743248254.Spec : Prop :=
  ∀ n, P1437124165743248254.a n = A340192 (n + 1)

end A340192

/-!
# A340193: a(n) = n - (Sum_{d|n} A063994(d)).

The programs for A340193, the canonical program `A340193.P3266787681671506109` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340193 has offset 1).

The definition of A340193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340193.P17730764845059908962

`∑{d}[n+1, A318840(#)]`
-/

namespace A340193.P17730764845059908962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318840 d

end

end A340193.P17730764845059908962

namespace A340193

/-- `∑{d}[n+1, A318840(#)]` -/
def P17730764845059908962.Spec : Prop :=
  ∀ n, P17730764845059908962.a n = A340193 (n + 1)

end A340193

/-! ## A340193.P15265675900811841985

`n+1-A340192(n+1)`
-/

namespace A340193.P15265675900811841985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340192 (n + 1)

end

end A340193.P15265675900811841985

namespace A340193

/-- `n+1-A340192(n+1)` -/
def P15265675900811841985.Spec : Prop :=
  ∀ n, P15265675900811841985.a n = A340193 (n + 1)

end A340193

/-! ## A340193.P3266787681671506109

`n+1-∑{d}[n+1, A063994(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340193

/-- `n+1-∑{d}[n+1, A063994(#)]` -/
def P3266787681671506109.Spec : Prop :=
  ∀ n, P3266787681671506109.a n = A340193 (n + 1)

theorem P3266787681671506109.correct : P3266787681671506109.Spec := by
  intro n
  simp only [A340193, Nat.add_sub_cancel]

end A340193

/-! ## A340193.P2982816645074535440

`1-∑{d}[n+1, A063994(#)]+n`
-/

namespace A340193.P2982816645074535440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A063994 d + (n : ℤ)

end

end A340193.P2982816645074535440

namespace A340193

/-- `1-∑{d}[n+1, A063994(#)]+n` -/
def P2982816645074535440.Spec : Prop :=
  ∀ n, P2982816645074535440.a n = A340193 (n + 1)

theorem P2982816645074535440.correct : P2982816645074535440.Spec := by
  intro n
  simp only [A340193, Nat.add_sub_cancel, A340193.P2982816645074535440.f1, A340193.P2982816645074535440.a, A340193.P3266787681671506109.f1, A340193.P3266787681671506109.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A340193

/-! ## A340193.P16924118747656681319

`n-A023443(A340192(n+1))`
-/

namespace A340193.P16924118747656681319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A340192 (n + 1)).toNat

end

end A340193.P16924118747656681319

namespace A340193

/-- `n-A023443(A340192(n+1))` -/
def P16924118747656681319.Spec : Prop :=
  ∀ n, P16924118747656681319.a n = A340193 (n + 1)

end A340193

/-!
# A340194: a(n) = A337544(A003961(n)).

The programs for A340194, the canonical program `A340194.P2585245132100315364` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340194 has offset 1).

The definition of A340194 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A337544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340194.P2585245132100315364

`A337544(A003961(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A340194

/-- `A337544(A003961(n+1))` -/
def P2585245132100315364.Spec : Prop :=
  ∀ n, P2585245132100315364.a n = A340194 (n + 1)

theorem P2585245132100315364.correct : P2585245132100315364.Spec := by
  intro n
  simp only [A340194, Nat.add_sub_cancel]

end A340194

/-! ## A340194.P13548255072230602805

`∑{d}[n+1, A357852(#)*A378225((n+1)/#)]`
-/

namespace A340194.P13548255072230602805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A357852 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A340194.P13548255072230602805

namespace A340194

/-- `∑{d}[n+1, A357852(#)*A378225((n+1)/#)]` -/
def P13548255072230602805.Spec : Prop :=
  ∀ n, P13548255072230602805.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P10229771257927573421

`A337544(A045965(n+1))`
-/

namespace A340194.P10229771257927573421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A045965 (n + 1)).toNat

end

end A340194.P10229771257927573421

namespace A340194

/-- `A337544(A045965(n+1))` -/
def P10229771257927573421.Spec : Prop :=
  ∀ n, P10229771257927573421.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P10731171276207895769

`A337544(A253885(n)+1)`
-/

namespace A340194.P10731171276207895769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A253885 n + 1).toNat

end

end A340194.P10731171276207895769

namespace A340194

/-- `A337544(A253885(n)+1)` -/
def P10731171276207895769.Spec : Prop :=
  ∀ n, P10731171276207895769.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P17595773178872977696

`A337544(∑{d}[n+1, #*A349387((n+1)/#)])`
-/

namespace A340194.P17595773178872977696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A340194.P17595773178872977696

namespace A340194

/-- `A337544(∑{d}[n+1, #*A349387((n+1)/#)])` -/
def P17595773178872977696.Spec : Prop :=
  ∀ n, P17595773178872977696.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P6450865466968751254

`A337544(A344587(n+1)+A336851(n+1))`
-/

namespace A340194.P6450865466968751254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (A344587 (n + 1) + A336851 (n + 1)).toNat

end

end A340194.P6450865466968751254

namespace A340194

/-- `A337544(A344587(n+1)+A336851(n+1))` -/
def P6450865466968751254.Spec : Prop :=
  ∀ n, P6450865466968751254.a n = A340194 (n + 1)

theorem P6450865466968751254.correct : P6450865466968751254.Spec := by
  intro n
  simp only [A340194, Nat.add_sub_cancel, A340194.P6450865466968751254.a, A340194.P2585245132100315364.a, A003961, A003961.P5996473960037614004.a, A336851, A336851.P12982912948484651023.a, A337544, A337544.P9000997842443162116.a, A344587, A344587.P4180067790187357523.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A253885, A253885.P16715555451856890624.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A243501, A243501.P10707292738867961998.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048673, A048673.P3613002930333742504.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340194

/-! ## A340194.P14678042604399446630

`A003972(2*A003961(n+1))-A003961(A003961(n+1))`
-/

namespace A340194.P14678042604399446630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (2 * A003961 (n + 1)).toNat - A003961 (A003961 (n + 1)).toNat

end

end A340194.P14678042604399446630

namespace A340194

/-- `A003972(2*A003961(n+1))-A003961(A003961(n+1))` -/
def P14678042604399446630.Spec : Prop :=
  ∀ n, P14678042604399446630.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P9189673935273876056

`2*A000010(A045966(n+1))-A045966(n+1)`
-/

namespace A340194.P9189673935273876056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (A045966 (n + 1)).toNat - A045966 (n + 1)

end

end A340194.P9189673935273876056

namespace A340194

/-- `2*A000010(A045966(n+1))-A045966(n+1)` -/
def P9189673935273876056.Spec : Prop :=
  ∀ n, P9189673935273876056.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P17100918774228830847

`A337544(A337544((n+1)²)/A337544(n+1))`
-/

namespace A340194.P17100918774228830847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337544 (SequenceMachineLib.roundAway ((A337544 ((n + 1) ^ 2) : ℚ) / (A337544 (n + 1) : ℚ))).toNat

end

end A340194.P17100918774228830847

namespace A340194

/-- `A337544(A337544((n+1)²)/A337544(n+1))` -/
def P17100918774228830847.Spec : Prop :=
  ∀ n, P17100918774228830847.a n = A340194 (n + 1)

end A340194

/-! ## A340194.P14095869107209347553

`A083254(A045966(n+1))`
-/

namespace A340194.P14095869107209347553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (A045966 (n + 1)).toNat

end

end A340194.P14095869107209347553

namespace A340194

/-- `A083254(A045966(n+1))` -/
def P14095869107209347553.Spec : Prop :=
  ∀ n, P14095869107209347553.a n = A340194 (n + 1)

end A340194

/-!
# A340195: a(n) = Sum_{divisors d of n} A049559(d), where A049559(x) = gcd(phi(x), x-1).

The programs for A340195, the canonical program `A340195.P5948241727633577160` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340195 has offset 1).

The definition of A340195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340195.P5948241727633577160

`∑{d}[n+1, A049559(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A340195

/-- `∑{d}[n+1, A049559(#)]` -/
def P5948241727633577160.Spec : Prop :=
  ∀ n, P5948241727633577160.a n = A340195 (n + 1)

theorem P5948241727633577160.correct : P5948241727633577160.Spec := by
  intro n
  simp only [A340195, Nat.add_sub_cancel]

end A340195

/-! ## A340195.P18123019797285598958

`n+1-A340196(n+1)`
-/

namespace A340195.P18123019797285598958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A340196 (n + 1)

end

end A340195.P18123019797285598958

namespace A340195

/-- `n+1-A340196(n+1)` -/
def P18123019797285598958.Spec : Prop :=
  ∀ n, P18123019797285598958.a n = A340195 (n + 1)

theorem P18123019797285598958.correct : P18123019797285598958.Spec := by
  intro n
  simp only [A340195, Nat.add_sub_cancel, A340195.P18123019797285598958.a, A340195.P5948241727633577160.f1, A340195.P5948241727633577160.a, A049559, A049559.P6342530742529976710.a, A340196, A340196.P13204647791419670441.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340195

/-! ## A340195.P1039961862794980491

`1-∑{d}[n+1, A318830(#)]+n`
-/

namespace A340195.P1039961862794980491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A318830 d + (n : ℤ)

end

end A340195.P1039961862794980491

namespace A340195

/-- `1-∑{d}[n+1, A318830(#)]+n` -/
def P1039961862794980491.Spec : Prop :=
  ∀ n, P1039961862794980491.a n = A340195 (n + 1)

end A340195

/-! ## A340195.P17495837501179897673

`∑{d}[n+1, gcd(1-#, A000010(#))]`
-/

namespace A340195.P17495837501179897673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd (1 - (d : ℤ)) (A000010 d)

end

end A340195.P17495837501179897673

namespace A340195

/-- `∑{d}[n+1, gcd(1-#, A000010(#))]` -/
def P17495837501179897673.Spec : Prop :=
  ∀ n, (P17495837501179897673.a n : ℤ) = A340195 (n + 1)

end A340195

/-! ## A340195.P93418905040764776

`n-A023443(A340196(n+1))`
-/

namespace A340195.P93418905040764776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A340196 (n + 1)).toNat

end

end A340195.P93418905040764776

namespace A340195

/-- `n-A023443(A340196(n+1))` -/
def P93418905040764776.Spec : Prop :=
  ∀ n, P93418905040764776.a n = A340195 (n + 1)

end A340195

/-!
# A340196: a(n) = n - A340195(n).

The programs for A340196, the canonical program `A340196.P13204647791419670441` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340196 has offset 1).

The definition of A340196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340196.P8926434118484914028

`∑{d}[n+1, A318830(#)]`
-/

namespace A340196.P8926434118484914028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318830 d

end

end A340196.P8926434118484914028

namespace A340196

/-- `∑{d}[n+1, A318830(#)]` -/
def P8926434118484914028.Spec : Prop :=
  ∀ n, P8926434118484914028.a n = A340196 (n + 1)

end A340196

/-! ## A340196.P13204647791419670441

`n+1-A340195(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A340196

/-- `n+1-A340195(n+1)` -/
def P13204647791419670441.Spec : Prop :=
  ∀ n, P13204647791419670441.a n = A340196 (n + 1)

theorem P13204647791419670441.correct : P13204647791419670441.Spec := by
  intro n
  simp only [A340196, Nat.add_sub_cancel]

end A340196

/-! ## A340196.P7131136276398302662

`1-∑{d}[n+1, A049559(#)]+n`
-/

namespace A340196.P7131136276398302662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A049559 d + (n : ℤ)

end

end A340196.P7131136276398302662

namespace A340196

/-- `1-∑{d}[n+1, A049559(#)]+n` -/
def P7131136276398302662.Spec : Prop :=
  ∀ n, P7131136276398302662.a n = A340196 (n + 1)

theorem P7131136276398302662.correct : P7131136276398302662.Spec := by
  intro n
  simp only [A340196, Nat.add_sub_cancel, A340196.P7131136276398302662.f1, A340196.P7131136276398302662.a, A340196.P13204647791419670441.a, A049559, A049559.P6342530742529976710.a, A340195, A340195.P5948241727633577160.f1, A340195.P5948241727633577160.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340196

/-! ## A340196.P10275387801379504605

`n+1-∑{d}[n+1, gcd(1-#, A000010(#))]`
-/

namespace A340196.P10275387801379504605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), Int.gcd (1 - (d : ℤ)) (A000010 d) : ℕ) : ℤ)

end

end A340196.P10275387801379504605

namespace A340196

/-- `n+1-∑{d}[n+1, gcd(1-#, A000010(#))]` -/
def P10275387801379504605.Spec : Prop :=
  ∀ n, P10275387801379504605.a n = A340196 (n + 1)

end A340196

/-! ## A340196.P17305849846825280841

`(n*A340195(n+1))%A205006(n+1)`
-/

namespace A340196.P17305849846825280841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A340195 (n + 1)) (A205006 (n + 1))

end

end A340196.P17305849846825280841

namespace A340196

/-- `(n*A340195(n+1))%A205006(n+1)` -/
def P17305849846825280841.Spec : Prop :=
  ∀ n, P17305849846825280841.a n = A340196 (n + 1)

end A340196

/-!
# A340197: a(1) = 1; for n > 1, a(n) = Sum_{d|n, d<n} (A318833(n/d)-1) * A340197(d).

The programs for A340197, there is no canonical definition to state claims against.
-/

/-! ## A340197.P9032264266560645993

`A323913(A247439(n+2))-A340140(n+1)`
-/

namespace A340197.P9032264266560645993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323913 (A247439 (n + 2)).toNat - A340140 (n + 1)

end

end A340197.P9032264266560645993

/-! ## A340197.P4000744240838737938

`A061020(A019555(n+1))%A089795(n+1)+n`
-/

namespace A340197.P4000744240838737938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061020 (A019555 (n + 1)).toNat) (A089795 (n + 1)) + (n : ℤ)

end

end A340197.P4000744240838737938

/-! ## A340197.P4317781289578471399

`A000005(2^n)+A061020(A019555(n+1))-1`
-/

namespace A340197.P4317781289578471399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ n) + (A061020 (A019555 (n + 1)).toNat - 1)

end

end A340197.P4317781289578471399

/-! ## A340197.P4621983551510267704

`A061020(A019555(n+1))+A001222(A000079(n))`
-/

namespace A340197.P4621983551510267704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A019555 (n + 1)).toNat + A001222 (A000079 n).toNat

end

end A340197.P4621983551510267704

/-! ## A340197.P8801890425976958626

`∏{p}[(n+1)^5, 1-#]+n`
-/

namespace A340197.P8801890425976958626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + (n : ℤ)

end

end A340197.P8801890425976958626

/-!
# A340198: Dirichlet inverse of sequence f(n) = A319340(n)-1 = (A000010(n) + A023900(n) - 1), where A000010 is Euler Totient function phi, and A023900 is its Dirichlet inverse.

The programs for A340198, there is no canonical definition to state claims against.
-/

/-! ## A340198.P17330580064731081452

`A065387(n+1)-A018804(A187829(n+1))`
-/

namespace A340198.P17330580064731081452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A018804 (A187829 (n + 1)).toNat

end

end A340198.P17330580064731081452

/-! ## A340198.P3112651863117831644

`A065387(n+1)-A018804(A077168(n))`
-/

namespace A340198.P3112651863117831644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - A018804 (A077168 n).toNat

end

end A340198.P3112651863117831644

/-!
# A340199: Number of sets in the geometry determined by the Hausdorff metric at each location between two sets defined by a complete bipartite graph K(3,n) (with n at least 3) missing two edges, where the two removed edges are not incident to the same vertex in the 3-point set and are also not incident to the same vertex in the other set.

The programs for A340199, the canonical program `A340199.P1439775220284465717` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340199 has offset 3).

The definition of A340199 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340199.P13455151062671390550

`ogf((43-94x+63x^2)/(1-11x+31x^2-21x^3))`
-/

namespace A340199.P13455151062671390550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [43, -94, 63] [1, -11, 31, -21] n

end

end A340199.P13455151062671390550

namespace A340199

/-- `ogf((43-94x+63x^2)/(1-11x+31x^2-21x^3))` -/
def P13455151062671390550.Spec : Prop :=
  ∀ n, P13455151062671390550.a n = A340199 (n + 3)

end A340199

/-! ## A340199.P1439775220284465717

`9*7^(n+1)-7*3^(n+1)+1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A340199

/-- `9*7^(n+1)-7*3^(n+1)+1` -/
def P1439775220284465717.Spec : Prop :=
  ∀ n, P1439775220284465717.a n = A340199 (n + 3)

theorem P1439775220284465717.correct : P1439775220284465717.Spec := by
  intro n
  simp only [A340199, Nat.add_sub_cancel]

end A340199

/-! ## A340199.P14500619645962861789

`A340436(n+4)%(A342850(n+4)/3)`
-/

namespace A340199.P14500619645962861789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340436 (n + 4)) (SequenceMachineLib.roundAway ((A342850 (n + 4) : ℚ) / 3))

end

end A340199.P14500619645962861789

namespace A340199

/-- `A340436(n+4)%(A342850(n+4)/3)` -/
def P14500619645962861789.Spec : Prop :=
  ∀ n, P14500619645962861789.a n = A340199 (n + 3)

end A340199

