import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C026

/-!
# A387103: For any n >= 2, a(n) is the number of positive values k < A386482(n-1) missing from the first n-1 terms of A386482 such that gcd(k, A386482(n-1)) != 1.

The programs for A387103, there is no canonical definition to state claims against.
-/

/-! ## A387103.P11465104755480127720

`A277141(A260728(n)*A313940(n))`
-/

namespace A387103.P11465104755480127720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277141 (A260728 n * A313940 n).toNat

end

end A387103.P11465104755480127720

/-! ## A387103.P16655462798303106343

`A327310(A051450(2*n+1)%A280917(n))`
-/

namespace A387103.P16655462798303106343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327310 (Int.tmod (A051450 (2 * n + 1)) (A280917 n)).toNat

end

end A387103.P16655462798303106343

/-! ## A387103.P15373544639580065368

`and(A357621(A139457(3*(n+1))), A362956(n))`
-/

namespace A387103.P15373544639580065368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A357621 (A139457 (3 * (n + 1))).toNat) (A362956 n)

end

end A387103.P15373544639580065368

/-! ## A387103.P17950745745151266226

`A083894(∑[∑[A210221(3*n+4)]])`
-/

namespace A387103.P17950745745151266226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210221 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083894 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A387103.P17950745745151266226

/-! ## A387103.P1200458115207701403

`A356677(A115586(n+1)+A115567(n))`
-/

namespace A387103.P1200458115207701403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356677 (A115586 (n + 1) + A115567 n).toNat

end

end A387103.P1200458115207701403

/-!
# A387107: a(n) = psi(2^n-1), where psi = A002322.

The programs for A387107, there is no canonical definition to state claims against.
-/

/-! ## A387107.P1377418857927990390

`A006530(A281500(n))-1`
-/

namespace A387107.P1377418857927990390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A281500 n).toNat - 1

end

end A387107.P1377418857927990390

/-! ## A387107.P15139169248759997324

`A000010(A006530(∑[2^n]))`
-/

namespace A387107.P15139169248759997324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006530 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A387107.P15139169248759997324

/-! ## A387107.P13456873067174305222

`A003958(A006530(2^(n+1)-1))`
-/

namespace A387107.P13456873067174305222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A006530 (2 ^ (n + 1) - 1)).toNat

end

end A387107.P13456873067174305222

/-! ## A387107.P14289897972307699732

`∏{p}[A006530(A000225(n+1)), #-1]`
-/

namespace A387107.P14289897972307699732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - 1)

end

end A387107.P14289897972307699732

/-! ## A387107.P3799158004471410285

`A006530(A126646(n))-floor(n^(1/5))`
-/

namespace A387107.P3799158004471410285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A126646 n).toNat - ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋

end

end A387107.P3799158004471410285

/-!
# A387110: Number of ways to choose a sequence of distinct integer partitions, one of each prime index of n.

The programs for A387110, there is no canonical definition to state claims against.
-/

/-! ## A387110.P12563828148007205427

`A231117(n+1)+A212619(A270339(n+1))`
-/

namespace A387110.P12563828148007205427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231117 (n + 1) + A212619 (A270339 (n + 1)).toNat

end

end A387110.P12563828148007205427

/-! ## A387110.P10188412826135239503

`A231117(n+1)^A285357(A285357(n+1))`
-/

namespace A387110.P10188412826135239503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231117 (n + 1) : ℚ) ^ (A285357 (A285357 (n + 1)).toNat : ℤ)

end

end A387110.P10188412826135239503

/-! ## A387110.P6634568061896642449

`or(A008966(A227594(n+1)²), A231117(n+1))`
-/

namespace A387110.P6634568061896642449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (A227594 (n + 1) ^ 2).toNat) (A231117 (n + 1))

end

end A387110.P6634568061896642449

/-! ## A387110.P8514939978490655038

`A274616(A076109(n+1)%A352599(2*n+3))`
-/

namespace A387110.P8514939978490655038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (Int.tmod (A076109 (n + 1)) (A352599 (2 * n + 3))).toNat

end

end A387110.P8514939978490655038

/-!
# A387111: Number of ways to choose a sequence of distinct positive integers, one in the initial interval of each prime index of n.

The programs for A387111, there is no canonical definition to state claims against.
-/

/-! ## A387111.P715429042175935244

`A010051(A103142(2^val(n+1, 2)))*A064839(n+1)`
-/

namespace A387111.P715429042175935244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A103142 (2 ^ SequenceMachineLib.valuation (n + 1) 2)).toNat * A064839 (n + 1)

end

end A387111.P715429042175935244

/-! ## A387111.P9348196719393445503

`A325799(n+1)+A000035(A000740(n+1))`
-/

namespace A387111.P9348196719393445503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325799 (n + 1) + A000035 (A000740 (n + 1)).toNat

end

end A387111.P9348196719393445503

/-! ## A387111.P14891573589513711461

`A061395(A324886(n+1))-A001222(n+1)`
-/

namespace A387111.P14891573589513711461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A324886 (n + 1)).toNat - A001222 (n + 1)

end

end A387111.P14891573589513711461

/-! ## A387111.P4962359393114693855

`and(A351464(n+1), A374520(A178943(n+1)))`
-/

namespace A387111.P4962359393114693855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A351464 (n + 1)) (A374520 (A178943 (n + 1)).toNat)

end

end A387111.P4962359393114693855

/-! ## A387111.P64188893245876536

`A079067(n+1)+A035263(A003724(n))`
-/

namespace A387111.P64188893245876536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) + A035263 (A003724 n).toNat

end

end A387111.P64188893245876536

/-!
# A387112: Numbers with (strictly) choosable initial intervals of prime indices.

The programs for A387112, there is no canonical definition to state claims against.
-/

/-! ## A387112.P18326809425960467007

`A371088(n+1)%(a(n-1)+4)` with `a(0)=1`
-/

namespace A387112.P18326809425960467007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A371088 (n + 1)) (a (n - 1) + 4)

end

end A387112.P18326809425960467007

/-! ## A387112.P978897015262047749

`lt[A168036(n), A366794(n)]`
-/

namespace A387112.P978897015262047749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366794 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387112.P978897015262047749

/-! ## A387112.P6425919833034821017

`A371088(n+1)%A373866(n)`
-/

namespace A387112.P6425919833034821017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371088 (n + 1)) (A373866 n)

end

end A387112.P6425919833034821017

/-! ## A387112.P4362553233372106046

`filter[A004709(n+1), A371087(#)]`
-/

namespace A387112.P4362553233372106046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A387112.P4362553233372106046

/-! ## A387112.P9437890113761234797

`filter[A037144(n+1), A371087(#)]`
-/

namespace A387112.P9437890113761234797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A387112.P9437890113761234797

/-! ## A387112.P11289385970567665858

`filter[A039217(n+1), A371087(#)]`
-/

namespace A387112.P11289385970567665858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A387112.P11289385970567665858

/-! ## A387112.P14993857010656172510

`filter[A046100(n+1), A371087(#)]`
-/

namespace A387112.P14993857010656172510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A387112.P14993857010656172510

/-! ## A387112.P15771746079190008238

`filter[A048107(n+1), A371087(#)]`
-/

namespace A387112.P15771746079190008238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A387112.P15771746079190008238

/-! ## A387112.P12344721212093571673

`filter[A058035(n+1), A371087(#)]`
-/

namespace A387112.P12344721212093571673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A387112.P12344721212093571673

/-!
# A387113: Numbers whose prime indices do not have (strictly) choosable initial intervals.

The programs for A387113, there is no canonical definition to state claims against.
-/

/-! ## A387113.P6579447665097441261

`lt[n, A153152(A003415(n))]`
-/

namespace A387113.P6579447665097441261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387113.P6579447665097441261

/-! ## A387113.P10712257586276142701

`∪[A387096(n+1), A017113(n)]`
-/

namespace A387113.P10712257586276142701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P10712257586276142701

/-! ## A387113.P2144683781387515513

`lt[n, A153152(A129283(n)-n)]`
-/

namespace A387113.P2144683781387515513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A129283 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387113.P2144683781387515513

/-! ## A387113.P1416399405336317594

`∩[A059267(n+1), A355740(n+1)]`
-/

namespace A387113.P1416399405336317594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P1416399405336317594

/-! ## A387113.P12698700079339904142

`∩[A047229(n+1), A371089(n+1)]`
-/

namespace A387113.P12698700079339904142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P12698700079339904142

/-! ## A387113.P7087073292969923876

`∩[A056757(n+1), A371089(n+1)]`
-/

namespace A387113.P7087073292969923876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P7087073292969923876

/-! ## A387113.P16676995873048893282

`∩[A059267(n+1), A371089(n+1)]`
-/

namespace A387113.P16676995873048893282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P16676995873048893282

/-! ## A387113.P17479898623586722310

`∩[A094229(n+1), A371089(n+1)]`
-/

namespace A387113.P17479898623586722310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P17479898623586722310

/-! ## A387113.P1676609607425167535

`∩[A175526(n+1), A371089(n+1)]`
-/

namespace A387113.P1676609607425167535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P1676609607425167535

/-! ## A387113.P2147906012418965901

`∩[A192450(n+1), A355740(n+1)]`
-/

namespace A387113.P2147906012418965901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387113.P2147906012418965901

/-!
# A387114: Number of divisors in common to all prime indices of n.

The programs for A387114, there is no canonical definition to state claims against.
-/

/-! ## A387114.P10039538111275847138

`∑{d}[A289508(n+1), gcd(2, n+1)^(#-1)]`
-/

namespace A387114.P10039538111275847138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (Nat.gcd 2 (n + 1) : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A387114.P10039538111275847138

/-! ## A387114.P5401031491973438207

`∑{d}[A289508(n+1), A057427(#)]`
-/

namespace A387114.P5401031491973438207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A387114.P5401031491973438207

/-! ## A387114.P2752365972747893066

`∑{d}[A289508(n+1), A070672(#)]`
-/

namespace A387114.P2752365972747893066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A070672 d

end

end A387114.P2752365972747893066

/-! ## A387114.P7613724874894574846

`∑{d}[A289508(n+1), A152847(#)]`
-/

namespace A387114.P7613724874894574846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A152847 d

end

end A387114.P7613724874894574846

/-! ## A387114.P8505388857764798114

`∑{d}[A289508(n+1), A158388(#)]`
-/

namespace A387114.P8505388857764798114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A158388 d

end

end A387114.P8505388857764798114

/-! ## A387114.P16669386573330073986

`∑{d}[A289508(n+1), A236861(#)]`
-/

namespace A387114.P16669386573330073986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A236861 d

end

end A387114.P16669386573330073986

/-! ## A387114.P17324518967235616324

`∑{d}[A289508(n+1), A319101(#)]`
-/

namespace A387114.P17324518967235616324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A319101 d

end

end A387114.P17324518967235616324

/-! ## A387114.P8728556346942787454

`∑{d}[A289508(n+1), A033999(n)^(#-1)]`
-/

namespace A387114.P8728556346942787454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A033999 n : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A387114.P8728556346942787454

/-!
# A387115: Number of ways to choose a sequence of distinct strict integer partitions, one of each prime index of n.

The programs for A387115, there is no canonical definition to state claims against.
-/

/-! ## A387115.P10807391135533170643

`A383706(A034699(n+1)%A119845(2*(n+1)))`
-/

namespace A387115.P10807391135533170643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (Int.tmod (A034699 (n + 1)) (A119845 (2 * (n + 1)))).toNat

end

end A387115.P10807391135533170643

/-! ## A387115.P16227218085248329869

`A000035(A000048(n+1))*A381454(n+1)`
-/

namespace A387115.P16227218085248329869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A000048 (n + 1)).toNat * A381454 (n + 1)

end

end A387115.P16227218085248329869

/-! ## A387115.P12968533415675448969

`A383706(A354933(n+1))%A177210(3*n+2)`
-/

namespace A387115.P12968533415675448969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383706 (A354933 (n + 1)).toNat) (A177210 (3 * n + 2))

end

end A387115.P12968533415675448969

/-! ## A387115.P2875984439734548242

`A296773(A197298(n+1))*A383706(n+1)`
-/

namespace A387115.P2875984439734548242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296773 (A197298 (n + 1)).toNat * A383706 (n + 1)

end

end A387115.P2875984439734548242

/-! ## A387115.P11059251801036970441

`lcm(A382857(A098859(n+1)), A383706(n+1))`
-/

namespace A387115.P11059251801036970441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A382857 (A098859 (n + 1)).toNat) (A383706 (n + 1))

end

end A387115.P11059251801036970441

/-!
# A387116: Number of ways to choose a constant sequence of integer partitions, one of each prime index of n.

The programs for A387116, there is no canonical definition to state claims against.
-/

/-! ## A387116.P17875556969676248516

`A000041(A055396(n+1))*A010055(n+1)`
-/

namespace A387116.P17875556969676248516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A055396 (n + 1)).toNat * A010055 (n + 1)

end

end A387116.P17875556969676248516

/-! ## A387116.P10968892214083193784

`A000041(A289508(n+1))*A010055(n+1)`
-/

namespace A387116.P10968892214083193784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A289508 (n + 1)).toNat * A010055 (n + 1)

end

end A387116.P10968892214083193784

/-! ## A387116.P10053817283745175387

`C(A000041(A055396(n+1)), A133910(n+1))`
-/

namespace A387116.P10053817283745175387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000041 (A055396 (n + 1)).toNat).toNat (A133910 (n + 1)).toNat

end

end A387116.P10053817283745175387

/-! ## A387116.P17000174213605455311

`C(A318285(A014963(n+1)), A001221(n+1))`
-/

namespace A387116.P17000174213605455311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318285 (A014963 (n + 1)).toNat).toNat (A001221 (n + 1)).toNat

end

end A387116.P17000174213605455311

/-! ## A387116.P18011166224808956705

`A116489(A278221(n+1))`
-/

namespace A387116.P18011166224808956705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116489 (A278221 (n + 1)).toNat

end

end A387116.P18011166224808956705

/-!
# A387117: a(n) = Sum_{k=0..n} binomial(3*n+k,n).

The programs for A387117, there is no canonical definition to state claims against.
-/

/-! ## A387117.P17645230499269693932

`A085391(A051870(n+1))`
-/

namespace A387117.P17645230499269693932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085391 (A051870 (n + 1)).toNat

end

end A387117.P17645230499269693932

/-!
# A387118: Number of integer partitions of n without choosable initial intervals.

The programs for A387118, there is no canonical definition to state claims against.
-/

/-! ## A387118.P11813503805824151577

`A000041(n)-A238873(n)`
-/

namespace A387118.P11813503805824151577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A238873 n

end

end A387118.P11813503805824151577

/-! ## A387118.P18221767395305780827

`A213598(n)-A238873(n)`
-/

namespace A387118.P18221767395305780827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A238873 n

end

end A387118.P18221767395305780827

/-! ## A387118.P2432918316370512075

`A387329(n)+A387330(n)-A238873(n)`
-/

namespace A387118.P2432918316370512075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387329 n + (A387330 n - A238873 n)

end

end A387118.P2432918316370512075

/-! ## A387118.P5138008128410685764

`A239312(n)+A370320(n)-A238873(n)`
-/

namespace A387118.P5138008128410685764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 n + (A370320 n - A238873 n)

end

end A387118.P5138008128410685764

/-! ## A387118.P4616275937683211029

`A354581(A238626(n+2))`
-/

namespace A387118.P4616275937683211029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354581 (A238626 (n + 2)).toNat

end

end A387118.P4616275937683211029

/-!
# A387119: Numbers whose prime indices all have exactly 2 divisors in common.

The programs for A387119, there is no canonical definition to state claims against.
-/

/-! ## A387119.P14443873804017341579

`eq[2, A387114(n+1)]+1`
-/

namespace A387119.P14443873804017341579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387114 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387119.P14443873804017341579

/-! ## A387119.P11694309008525328464

`A065475(eq[2, A387114(n+1)])`
-/

namespace A387119.P11694309008525328464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387119.P11694309008525328464

/-! ## A387119.P10603392358771683358

`∩[A305103(n+1), A331386(n+1)]`
-/

namespace A387119.P10603392358771683358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387119.P10603392358771683358

/-! ## A387119.P927386430593718426

`∩[A318978(n+1), A331386(n+1)]`
-/

namespace A387119.P927386430593718426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387119.P927386430593718426

/-! ## A387119.P18217055117449686333

`∩[A328867(n+1), A331386(n+1)]`
-/

namespace A387119.P18217055117449686333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387119.P18217055117449686333

/-!
# A387121: Array read by antidiagonals: T(n,k) is the number of sets of k integer sided cuboids with distinct volumes that fill an n X n X n cube.

The programs for A387121, there is no canonical definition to state claims against.
-/

/-! ## A387121.P17552955970205372243

`A386296(n+1)+A010815(A380857(n+4))`
-/

namespace A387121.P17552955970205372243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (n + 1) + A010815 (A380857 (n + 4)).toNat

end

end A387121.P17552955970205372243

/-!
# A387122: Greatest prime divisor of 2*prime(n) + 3.

The programs for A387122, the canonical program `A387122.P8961407856667893284` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387122 has offset 1).

The definition of A387122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387122.P8961407856667893284

`A006530(A129069(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A387122

/-- `A006530(A129069(n+1))` -/
def P8961407856667893284.Spec : Prop :=
  ∀ n, P8961407856667893284.a n = A387122 (n + 1)

theorem P8961407856667893284.correct : P8961407856667893284.Spec := by
  intro n
  simp only [A387122, Nat.add_sub_cancel]

end A387122

/-! ## A387122.P11422967462697864486

`A006530(A072055(n+1)+2)`
-/

namespace A387122.P11422967462697864486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072055 (n + 1) + 2).toNat

end

end A387122.P11422967462697864486

namespace A387122

/-- `A006530(A072055(n+1)+2)` -/
def P11422967462697864486.Spec : Prop :=
  ∀ n, P11422967462697864486.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P9395927301129622374

`A076567(A000040(n+1))`
-/

namespace A387122.P9395927301129622374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A000040 (n + 1)).toNat

end

end A387122.P9395927301129622374

namespace A387122

/-- `A076567(A000040(n+1))` -/
def P9395927301129622374.Spec : Prop :=
  ∀ n, P9395927301129622374.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P8059860678036819437

`A076569(A006093(n+1))`
-/

namespace A387122.P8059860678036819437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076569 (A006093 (n + 1)).toNat

end

end A387122.P8059860678036819437

namespace A387122

/-- `A076569(A006093(n+1))` -/
def P8059860678036819437.Spec : Prop :=
  ∀ n, P8059860678036819437.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P10106860835403089464

`A076565(A008864(n+1))`
-/

namespace A387122.P10106860835403089464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A008864 (n + 1)).toNat

end

end A387122.P10106860835403089464

namespace A387122

/-- `A076565(A008864(n+1))` -/
def P10106860835403089464.Spec : Prop :=
  ∀ n, P10106860835403089464.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P4774882566424992219

`A076565(A028815(n+1))`
-/

namespace A387122.P4774882566424992219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A028815 (n + 1)).toNat

end

end A387122.P4774882566424992219

namespace A387122

/-- `A076565(A028815(n+1))` -/
def P4774882566424992219.Spec : Prop :=
  ∀ n, P4774882566424992219.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P15117500191356171514

`A076567(A008578(n+2))`
-/

namespace A387122.P15117500191356171514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A008578 (n + 2)).toNat

end

end A387122.P15117500191356171514

namespace A387122

/-- `A076567(A008578(n+2))` -/
def P15117500191356171514.Spec : Prop :=
  ∀ n, P15117500191356171514.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P16862347207831790134

`A076567(A182986(n+2))`
-/

namespace A387122.P16862347207831790134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A182986 (n + 2)).toNat

end

end A387122.P16862347207831790134

namespace A387122

/-- `A076567(A182986(n+2))` -/
def P16862347207831790134.Spec : Prop :=
  ∀ n, P16862347207831790134.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P10383729732834855995

`A076565(A008578(n+2)+1)`
-/

namespace A387122.P10383729732834855995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A008578 (n + 2) + 1).toNat

end

end A387122.P10383729732834855995

namespace A387122

/-- `A076565(A008578(n+2)+1)` -/
def P10383729732834855995.Spec : Prop :=
  ∀ n, P10383729732834855995.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P644171248986722735

`A076566(A089241(n+1))`
-/

namespace A387122.P644171248986722735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A089241 (n + 1)).toNat

end

end A387122.P644171248986722735

namespace A387122

/-- `A076566(A089241(n+1))` -/
def P644171248986722735.Spec : Prop :=
  ∀ n, P644171248986722735.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P1261070579397910677

`A076565(A129075(n+1))`
-/

namespace A387122.P1261070579397910677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (A129075 (n + 1)).toNat

end

end A387122.P1261070579397910677

namespace A387122

/-- `A076565(A129075(n+1))` -/
def P1261070579397910677.Spec : Prop :=
  ∀ n, P1261070579397910677.a n = A387122 (n + 1)

end A387122

/-! ## A387122.P14796792284758720978

`A076566(A129070(n+1))`
-/

namespace A387122.P14796792284758720978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076566 (A129070 (n + 1)).toNat

end

end A387122.P14796792284758720978

namespace A387122

/-- `A076566(A129070(n+1))` -/
def P14796792284758720978.Spec : Prop :=
  ∀ n, P14796792284758720978.a n = A387122 (n + 1)

end A387122

/-!
# A387124: Maximum number of transversals in an extended self-orthogonal diagonal Latin square of order n.

The programs for A387124, there is no canonical definition to state claims against.
-/

/-! ## A387124.P13398961921922109819

`A080764(n)*A090741(n+1)`
-/

namespace A387124.P13398961921922109819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080764 n * A090741 (n + 1)

end

end A387124.P13398961921922109819

/-! ## A387124.P16201373256990979183

`A090741(n+1)*A214015(n)`
-/

namespace A387124.P16201373256990979183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090741 (n + 1) * A214015 n

end

end A387124.P16201373256990979183

/-! ## A387124.P5475312203093077406

`A214015(n)*A287644(n+1)`
-/

namespace A387124.P5475312203093077406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214015 n * A287644 (n + 1)

end

end A387124.P5475312203093077406

/-! ## A387124.P13986498494160616637

`A287644(n+1)*A305161(n)`
-/

namespace A387124.P13986498494160616637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287644 (n + 1) * A305161 n

end

end A387124.P13986498494160616637

/-! ## A387124.P14142294868163407486

`lcm(A090741(n+1), A293530(n))`
-/

namespace A387124.P14142294868163407486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090741 (n + 1)) (A293530 n)

end

end A387124.P14142294868163407486

/-!
# A387125: Coefficient of x^n in the expansion of ((1+x) * (1+x^4))^n.

The programs for A387125, there is no canonical definition to state claims against.
-/

/-! ## A387125.P8702994264137165418

`A047168(A004277(n))+1`
-/

namespace A387125.P8702994264137165418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047168 (A004277 n).toNat + 1

end

end A387125.P8702994264137165418

/-! ## A387125.P4267595695942111310

`A107821(A301518(n))`
-/

namespace A387125.P4267595695942111310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107821 (A301518 n).toNat

end

end A387125.P4267595695942111310

/-! ## A387125.P2450043772902953859

`A301518(A004881(n+1))`
-/

namespace A387125.P2450043772902953859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301518 (A004881 (n + 1)).toNat

end

end A387125.P2450043772902953859

/-! ## A387125.P1468114354298747033

`A301518(A004892(n+1))`
-/

namespace A387125.P1468114354298747033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301518 (A004892 (n + 1)).toNat

end

end A387125.P1468114354298747033

/-! ## A387125.P11473400149214477051

`A301518(A004903(n+1))`
-/

namespace A387125.P11473400149214477051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301518 (A004903 (n + 1)).toNat

end

end A387125.P11473400149214477051

/-!
# A387126: Triangle read by rows: T(n, k) = (n! / (n - k)!) * Product_{k=1..n} radical(k), where radical(n) is the product of distinct prime factors of n, cf. A007947.

The programs for A387126, there is no canonical definition to state claims against.
-/

/-! ## A387126.P1430759773383410817

`A233543(n)*A387138(n)`
-/

namespace A387126.P1430759773383410817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n * A387138 n

end

end A387126.P1430759773383410817

/-! ## A387126.P396951908761184649

`A181024(A024493(n))`
-/

namespace A387126.P396951908761184649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181024 (A024493 n).toNat

end

end A387126.P396951908761184649

/-! ## A387126.P9251369620976163341

`A181024(A351970(n))`
-/

namespace A387126.P9251369620976163341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181024 (A351970 n).toNat

end

end A387126.P9251369620976163341

/-! ## A387126.P10156841070509543701

`A334230(A271216(n))`
-/

namespace A387126.P10156841070509543701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334230 (A271216 n).toNat

end

end A387126.P10156841070509543701

/-! ## A387126.P9789000912837459379

`A181024(A352045(n+1))`
-/

namespace A387126.P9789000912837459379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181024 (A352045 (n + 1)).toNat

end

end A387126.P9789000912837459379

/-!
# A387128: First numbers A = a(n) of two numbers (A, B) such that the sums 2*A^2 + B^2 = p == 3 mod 8, where p = A007520(n) and B = A387129(n).

The programs for A387128, there is no canonical definition to state claims against.
-/

/-! ## A387128.P3285203873616833530

`filter[A002333(n+2), A000035(#)]`
-/

namespace A387128.P3285203873616833530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002333 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A387128.P3285203873616833530

/-!
# A387130: a(n) is the number of complement pairs of imprimitive (periodic) 2n-bead balanced binary necklaces.

The programs for A387130, there is no canonical definition to state claims against.
-/

/-! ## A387130.P10818511870611150406

`(A386946(n)-A115118(n))/2`
-/

namespace A387130.P10818511870611150406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386946 n - A115118 n : ℚ) / 2

end

end A387130.P10818511870611150406

/-! ## A387130.P6841164543056341190

`A386388(n)-A383904(n)`
-/

namespace A387130.P6841164543056341190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386388 n - A383904 n

end

end A387130.P6841164543056341190

/-! ## A387130.P7868474225171582011

`A115122(n)-A115118(n)`
-/

namespace A387130.P7868474225171582011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115122 n - A115118 n

end

end A387130.P7868474225171582011

/-! ## A387130.P11259492445403768066

`A386946(n)-A115122(n)`
-/

namespace A387130.P11259492445403768066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386946 n - A115122 n

end

end A387130.P11259492445403768066

/-!
# A387133: Number of ways to choose a sequence of distinct integer partitions, one of each prime factor of n (with multiplicity).

The programs for A387133, there is no canonical definition to state claims against.
-/

/-! ## A387133.P2141350638700360244

`A387110(A064988(n+1))`
-/

namespace A387133.P2141350638700360244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387110 (A064988 (n + 1)).toNat

end

end A387133.P2141350638700360244

/-!
# A387134: Number of integer partitions of n whose parts do not have choosable sets of integer partitions.

The programs for A387134, there is no canonical definition to state claims against.
-/

/-! ## A387134.P12676875012977587140

`A000041(n)-A387328(n)`
-/

namespace A387134.P12676875012977587140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387328 n

end

end A387134.P12676875012977587140

/-!
# A387135: Number of distinct prime factors in common to all prime indices of n.

The programs for A387135, there is no canonical definition to state claims against.
-/

/-! ## A387135.P3157000790876884756

`∑{e}[∏{p}[A289508(n+1), #], #]`
-/

namespace A387135.P3157000790876884756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A387135.P3157000790876884756

/-! ## A387135.P11708960345697807531

`∑{d}[A289508(n+1), A010051(#)]`
-/

namespace A387135.P11708960345697807531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A387135.P11708960345697807531

/-! ## A387135.P6172103523844245630

`∑{p}[A289508(n+1), A001222(#)]`
-/

namespace A387135.P6172103523844245630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A387135.P6172103523844245630

/-! ## A387135.P11150282955424444697

`∑{p}[A289508(n+1), A033676(#)]`
-/

namespace A387135.P11150282955424444697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A033676 p

end

end A387135.P11150282955424444697

/-! ## A387135.P15182705395474884685

`A001222(∏{p}[A289508(n+1), #])`
-/

namespace A387135.P15182705395474884685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A387135.P15182705395474884685

/-! ## A387135.P8803334329011409466

`∑{e}[A289508(n+1), A242784(#)]`
-/

namespace A387135.P8803334329011409466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A242784 (Nat.factorization (f1 n).natAbs p)

end

end A387135.P8803334329011409466

/-! ## A387135.P11242747953525726555

`A001221(A289508(n+1)^A001221(n+1))`
-/

namespace A387135.P11242747953525726555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A289508 (n + 1) : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A387135.P11242747953525726555

/-! ## A387135.P1282443085233175056

`ceil(A322389(n+1)/gcd(2, ∑{e}[n+1, #]))`
-/

namespace A387135.P1282443085233175056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A322389 (n + 1) : ℚ) / (Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ)⌉

end

end A387135.P1282443085233175056

/-!
# A387136: Number of ways to choose a sequence of distinct prime factors, one of each prime index of 2n - 1.

The programs for A387136, there is no canonical definition to state claims against.
-/

/-! ## A387136.P2319369859057091070

`C(A014710(A349051(n+1)), A333628(n+1))`
-/

namespace A387136.P2319369859057091070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014710 (A349051 (n + 1)).toNat).toNat (A333628 (n + 1)).toNat

end

end A387136.P2319369859057091070

/-!
# A387137: Number of integer partitions of n whose parts do not have choosable sets of strict integer partitions.

The programs for A387137, there is no canonical definition to state claims against.
-/

/-! ## A387137.P5243662437364375637

`A000041(n)-A387178(n)`
-/

namespace A387137.P5243662437364375637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387178 n

end

end A387137.P5243662437364375637

/-! ## A387137.P9620932509638514529

`A213598(n)-A387178(n)`
-/

namespace A387137.P9620932509638514529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A387178 n

end

end A387137.P9620932509638514529

/-! ## A387137.P395387900253245973

`∑{d}[n+1, A133732(#)]-A387178(n)`
-/

namespace A387137.P395387900253245973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A387178 n

end

end A387137.P395387900253245973

/-! ## A387137.P12214900127297359687

`A018783(n)+A000837(n)-A387178(n)`
-/

namespace A387137.P12214900127297359687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n + A000837 n - A387178 n

end

end A387137.P12214900127297359687

/-! ## A387137.P14418353544318459986

`A238873(n)+A387118(n)-A387178(n)`
-/

namespace A387137.P14418353544318459986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238873 n + (A387118 n - A387178 n)

end

end A387137.P14418353544318459986

/-!
# A387138: Triangle read by rows: T(n, k) = binomial(n, k) * Product_{k=1..n} radical(k), where radical(n) is the product of distinct prime factors of n, cf. A007947.

The programs for A387138, there is no canonical definition to state claims against.
-/

/-! ## A387138.P6262107265147212107

`A387126(n)/A233543(n)`
-/

namespace A387138.P6262107265147212107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387126 n : ℚ) / (A233543 n : ℚ)

end

end A387138.P6262107265147212107

/-! ## A387138.P9181402105296113065

`A000189(A356636(n))`
-/

namespace A387138.P9181402105296113065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000189 (A356636 n).toNat

end

end A387138.P9181402105296113065

/-!
# A387139: Row sums of A387138.

The programs for A387139, there is no canonical definition to state claims against.
-/

/-! ## A387139.P6139524456724183476

`∏[2*∏{p}[n, #]]/2`
-/

namespace A387139.P6139524456724183476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A387139.P6139524456724183476

/-! ## A387139.P16920168393347708943

`2^n*∏[∏{p}[n, #]]`
-/

namespace A387139.P16920168393347708943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A387139.P16920168393347708943

/-! ## A387139.P49457952578273021

`2*a(n-1)*∏{p}[n, #]` with `a(0)=1`
-/

namespace A387139.P49457952578273021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A387139.P49457952578273021

/-! ## A387139.P18108104757372720877

`2^n*A048803(n)`
-/

namespace A387139.P18108104757372720877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A048803 n

end

end A387139.P18108104757372720877

/-! ## A387139.P12429974395642940730

`A048803(n)*A156552(A000040(n+1))`
-/

namespace A387139.P12429974395642940730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048803 n * A156552 (A000040 (n + 1)).toNat

end

end A387139.P12429974395642940730

/-!
# A387140: a(n) = (1/n) * Product_{k=1..n} radical(k) for n >= 1, a(0) = 1, where radical(n) is the product of distinct prime factors of n, cf. A007947.

The programs for A387140, there is no canonical definition to state claims against.
-/

/-! ## A387140.P10998187845725335615

`A048803(n)/A028310(n)`
-/

namespace A387140.P10998187845725335615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 n : ℚ) / (A028310 n : ℚ)

end

end A387140.P10998187845725335615

/-! ## A387140.P16258939930367750319

`A048803(n)/(A000007(n)+n)`
-/

namespace A387140.P16258939930367750319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 n : ℚ) / (A000007 n + (n : ℤ) : ℚ)

end

end A387140.P16258939930367750319

/-! ## A387140.P7014189145195151970

`A048803(n)/(log2(A011782(n))+1)`
-/

namespace A387140.P7014189145195151970
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A048803 n : ℝ) / (Real.logb 2 (A011782 n : ℝ) + 1)

end

end A387140.P7014189145195151970

/-! ## A387140.P913506994801812256

`A048803(n)/A000005(A011782(n))`
-/

namespace A387140.P913506994801812256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 n : ℚ) / (A000005 (A011782 n).toNat : ℚ)

end

end A387140.P913506994801812256

/-! ## A387140.P6948181448613267463

`A048803(n)/A053534(A000124(n))`
-/

namespace A387140.P6948181448613267463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048803 n : ℚ) / (A053534 (A000124 n).toNat : ℚ)

end

end A387140.P6948181448613267463

/-!
# A387142: a(n) is the smallest integer k >= 2 such that the digit string of prime(n) is contained as a substring in the digit string of prime(n)^k.

The programs for A387142, there is no canonical definition to state claims against.
-/

/-! ## A387142.P1811249553274375363

`A045537(A000040(n+1))`
-/

namespace A387142.P1811249553274375363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A000040 (n + 1)).toNat

end

end A387142.P1811249553274375363

/-! ## A387142.P4945386958959791128

`A045537(A161847(n+1))`
-/

namespace A387142.P4945386958959791128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A161847 (n + 1)).toNat

end

end A387142.P4945386958959791128

/-! ## A387142.P10736228622694046218

`A045537(A008578(n+2))`
-/

namespace A387142.P10736228622694046218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A008578 (n + 2)).toNat

end

end A387142.P10736228622694046218

/-! ## A387142.P14537372872617940207

`A045537(A182986(n+2))`
-/

namespace A387142.P14537372872617940207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A182986 (n + 2)).toNat

end

end A387142.P14537372872617940207

/-! ## A387142.P17082544148324818785

`A045537(eq[1, A003415(n)])`
-/

namespace A387142.P17082544148324818785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387142.P17082544148324818785

/-! ## A387142.P18095362949132333462

`A045537(eq[n, A062584(n)])`
-/

namespace A387142.P18095362949132333462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A387142.P18095362949132333462

/-! ## A387142.P4520239441755007735

`A045537(A040976(n+1)+2)`
-/

namespace A387142.P4520239441755007735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (A040976 (n + 1) + 2).toNat

end

end A387142.P4520239441755007735

/-! ## A387142.P15229075371212258416

`A045537(or(1, A039915(n+1)))`
-/

namespace A387142.P15229075371212258416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045537 (Int.lor 1 (A039915 (n + 1))).toNat

end

end A387142.P15229075371212258416

/-!
# A387146: Number of unlabeled biconnected cubic simple graphs with 2n nodes.

The programs for A387146, there is no canonical definition to state claims against.
-/

/-! ## A387146.P161411621135152010

`A330558(A038507(n)+A000007(n))`
-/

namespace A387146.P161411621135152010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A038507 n + A000007 n).toNat

end

end A387146.P161411621135152010

/-! ## A387146.P9814013346118783199

`A330558(A038507(n)+A027641(n))`
-/

namespace A387146.P9814013346118783199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A038507 n + A027641 n).toNat

end

end A387146.P9814013346118783199

/-! ## A387146.P3750141001557533540

`A330558(A038507(n))+A185118(n)`
-/

namespace A387146.P3750141001557533540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A038507 n).toNat + A185118 n

end

end A387146.P3750141001557533540

/-! ## A387146.P9517704179134447028

`A330558(xor(A000007(n), A038507(n)))`
-/

namespace A387146.P9517704179134447028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (Int.xor (A000007 n) (A038507 n)).toNat

end

end A387146.P9517704179134447028

/-!
# A387151: a(n) = n*n! / Product_{k=1..n} radical(k), where radical(n) is the product of distinct prime factors of n, cf. A007947.

The programs for A387151, there is no canonical definition to state claims against.
-/

/-! ## A387151.P10625442652313412358

`Δ[A000142(n)]/A048803(n)`
-/

namespace A387151.P10625442652313412358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A048803 n : ℚ)

end

end A387151.P10625442652313412358

/-! ## A387151.P1033251826137766560

`n*A000188(A049614(n))`
-/

namespace A387151.P1033251826137766560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000188 (A049614 n).toNat

end

end A387151.P1033251826137766560

/-! ## A387151.P6983716119069433719

`n*A009223(A047691(n))`
-/

namespace A387151.P6983716119069433719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A009223 (A047691 n).toNat

end

end A387151.P6983716119069433719

/-! ## A387151.P7158706336788968068

`n*A129706(A000332(n))`
-/

namespace A387151.P7158706336788968068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A129706 (A000332 n).toNat

end

end A387151.P7158706336788968068

/-! ## A387151.P9372478075797991168

`n*A169891(A006720(n))`
-/

namespace A387151.P9372478075797991168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169891 (A006720 n).toNat

end

end A387151.P9372478075797991168

/-!
# A387152: Array read by ascending antidiagonals: A(n, k) = Sum_{j=0..n} binomial(k, j)*|Stirling1(n, j)|.

The programs for A387152, there is no canonical definition to state claims against.
-/

/-! ## A387152.P10099990477134592841

`A193582(A371026(n))`
-/

namespace A387152.P10099990477134592841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A371026 n).toNat

end

end A387152.P10099990477134592841

/-! ## A387152.P18162107550879218638

`A276333(A285849(n)²)`
-/

namespace A387152.P18162107550879218638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276333 (A285849 n ^ 2).toNat

end

end A387152.P18162107550879218638

/-! ## A387152.P17880032582854927394

`A343638(A266861(n+2))`
-/

namespace A387152.P17880032582854927394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343638 (A266861 (n + 2)).toNat

end

end A387152.P17880032582854927394

/-!
# A387153: Squarefree 3-abundant numbers: squarefree numbers k such that A000203(k) > 3*k.

The programs for A387153, there is no canonical definition to state claims against.
-/

/-! ## A387153.P12578147721034803810

`2*A112643(n+1)`
-/

namespace A387153.P12578147721034803810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112643 (n + 1)

end

end A387153.P12578147721034803810

/-! ## A387153.P10465473961162976007

`2*sqrt(A391430(n+1))`
-/

namespace A387153.P10465473961162976007
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A391430 (n + 1) : ℝ)

end

end A387153.P10465473961162976007

/-! ## A387153.P4000891838967499371

`lcm(A010696(n), A112643(n+1))`
-/

namespace A387153.P4000891838967499371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010696 n) (A112643 (n + 1))

end

end A387153.P4000891838967499371

/-! ## A387153.P3212253085547581469

`A112643(A000027(n+1))+A112643(n+1)`
-/

namespace A387153.P3212253085547581469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (A000027 (n + 1)).toNat + A112643 (n + 1)

end

end A387153.P3212253085547581469

/-! ## A387153.P3886640120409181803

`A112643(n+1)+A391430(n+1)/A112643(n+1)`
-/

namespace A387153.P3886640120409181803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112643 (n + 1) : ℚ) + (A391430 (n + 1) : ℚ) / (A112643 (n + 1) : ℚ)

end

end A387153.P3886640120409181803

/-! ## A387153.P16685910418366379785

`∩[A336509(n+1), A392653(n+1)]`
-/

namespace A387153.P16685910418366379785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387153.P16685910418366379785

/-!
# A387156: a(n) = A003557(sigma(n)), where A003557(n) is multiplicative with a(p^e) = p^(e-1), and sigma is the sum of divisors function.

The programs for A387156, the canonical program `A387156.P4696553104120467965` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387156 has offset 1).

The definition of A387156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080398, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A387156.P4696553104120467965

`A000203(n+1)/A080398(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A387156

/-- `A000203(n+1)/A080398(n+1)` -/
def P4696553104120467965.Spec : Prop :=
  ∀ n, P4696553104120467965.a n = (A387156 (n + 1) : ℚ)

end A387156

/-! ## A387156.P11071016180250429273

`A062401(n+1)/A387157(n+1)`
-/

namespace A387156.P11071016180250429273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A387157 (n + 1) : ℚ)

end

end A387156.P11071016180250429273

namespace A387156

/-- `A062401(n+1)/A387157(n+1)` -/
def P11071016180250429273.Spec : Prop :=
  ∀ n, P11071016180250429273.a n = (A387156 (n + 1) : ℚ)

end A387156

/-! ## A387156.P13829888527137193596

`A353784(n+1)*A353785(n+1)`
-/

namespace A387156.P13829888527137193596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353784 (n + 1) * A353785 (n + 1)

end

end A387156.P13829888527137193596

namespace A387156

/-- `A353784(n+1)*A353785(n+1)` -/
def P13829888527137193596.Spec : Prop :=
  ∀ n, P13829888527137193596.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P12999875182833688975

`A000203(n+1)/A007947(A353783(n+1))`
-/

namespace A387156.P12999875182833688975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A007947 (A353783 (n + 1)).toNat : ℚ)

end

end A387156.P12999875182833688975

namespace A387156

/-- `A000203(n+1)/A007947(A353783(n+1))` -/
def P12999875182833688975.Spec : Prop :=
  ∀ n, P12999875182833688975.a n = (A387156 (n + 1) : ℚ)

end A387156

/-! ## A387156.P3038629138300826465

`A000203(n+1)/A353783(n+1)*A353785(n+1)`
-/

namespace A387156.P3038629138300826465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A353783 (n + 1) : ℚ) * (A353785 (n + 1) : ℚ)

end

end A387156.P3038629138300826465

namespace A387156

/-- `A000203(n+1)/A353783(n+1)*A353785(n+1)` -/
def P3038629138300826465.Spec : Prop :=
  ∀ n, P3038629138300826465.a n = (A387156 (n + 1) : ℚ)

end A387156

/-! ## A387156.P14477966279742155228

`A003557(A387726(n+1))`
-/

namespace A387156.P14477966279742155228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A387726 (n + 1)).toNat

end

end A387156.P14477966279742155228

namespace A387156

/-- `A003557(A387726(n+1))` -/
def P14477966279742155228.Spec : Prop :=
  ∀ n, P14477966279742155228.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P12013948397911027777

`A003557(∑{d}[n+1, #])`
-/

namespace A387156.P12013948397911027777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A387156.P12013948397911027777

namespace A387156

/-- `A003557(∑{d}[n+1, #])` -/
def P12013948397911027777.Spec : Prop :=
  ∀ n, P12013948397911027777.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P9057070292798782768

`A003557(A000203(n+1))`
-/

namespace A387156.P9057070292798782768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000203 (n + 1)).toNat

end

end A387156.P9057070292798782768

namespace A387156

/-- `A003557(A000203(n+1))` -/
def P9057070292798782768.Spec : Prop :=
  ∀ n, P9057070292798782768.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P2666268608296935949

`A003557(A001065(n+1)+n+1)`
-/

namespace A387156.P2666268608296935949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A387156.P2666268608296935949

namespace A387156

/-- `A003557(A001065(n+1)+n+1)` -/
def P2666268608296935949.Spec : Prop :=
  ∀ n, P2666268608296935949.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P6937445362534185925

`A003557(A326187(n+1)+A003557(n+1))`
-/

namespace A387156.P6937445362534185925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A326187 (n + 1) + A003557 (n + 1)).toNat

end

end A387156.P6937445362534185925

namespace A387156

/-- `A003557(A326187(n+1)+A003557(n+1))` -/
def P6937445362534185925.Spec : Prop :=
  ∀ n, P6937445362534185925.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P18407273156350466274

`A003557(A326184(n+1)+A057521(n+1))`
-/

namespace A387156.P18407273156350466274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A326184 (n + 1) + A057521 (n + 1)).toNat

end

end A387156.P18407273156350466274

namespace A387156

/-- `A003557(A326184(n+1)+A057521(n+1))` -/
def P18407273156350466274.Spec : Prop :=
  ∀ n, P18407273156350466274.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P16603113458312505531

`A003557(A092261(n+1)*A295294(n+1))`
-/

namespace A387156.P16603113458312505531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A092261 (n + 1) * A295294 (n + 1)).toNat

end

end A387156.P16603113458312505531

namespace A387156

/-- `A003557(A092261(n+1)*A295294(n+1))` -/
def P16603113458312505531.Spec : Prop :=
  ∀ n, P16603113458312505531.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P6220054183989847304

`A003557(A344695(n+1)*A344696(n+1))`
-/

namespace A387156.P6220054183989847304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A344695 (n + 1) * A344696 (n + 1)).toNat

end

end A387156.P6220054183989847304

namespace A387156

/-- `A003557(A344695(n+1)*A344696(n+1))` -/
def P6220054183989847304.Spec : Prop :=
  ∀ n, P6220054183989847304.a n = A387156 (n + 1)

end A387156

/-! ## A387156.P11494357058231428844

`A003557(A335341((n+1)*A007947(n+1)))`
-/

namespace A387156.P11494357058231428844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A335341 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A387156.P11494357058231428844

namespace A387156

/-- `A003557(A335341((n+1)*A007947(n+1)))` -/
def P11494357058231428844.Spec : Prop :=
  ∀ n, P11494357058231428844.a n = A387156 (n + 1)

end A387156

/-!
# A387157: a(n) = A173557(sigma(n)), where A173557(n) is multiplicative with a(p^e) = p-1 and sigma is the sum of divisors function.

The programs for A387157, the canonical program `A387157.P14434565659215519733` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387157 has offset 1).

The definition of A387157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A387157.P14434565659215519733

`∏{p}[∑{d}[n+1, #], #-1]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A387157

/-- `∏{p}[∑{d}[n+1, #], #-1]` -/
def P14434565659215519733.Spec : Prop :=
  ∀ n, P14434565659215519733.a n = A387157 (n + 1)

theorem P14434565659215519733.correct : P14434565659215519733.Spec := by
  intro n
  simp only [A387157, Nat.add_sub_cancel]

end A387157

/-! ## A387157.P14546127475855020109

`A173557(∑{d}[n+1, #])`
-/

namespace A387157.P14546127475855020109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A387157.P14546127475855020109

namespace A387157

/-- `A173557(∑{d}[n+1, #])` -/
def P14546127475855020109.Spec : Prop :=
  ∀ n, P14546127475855020109.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P14524172047361413983

`A000010(A080398(n+1))`
-/

namespace A387157.P14524172047361413983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A080398 (n + 1)).toNat

end

end A387157.P14524172047361413983

namespace A387157

/-- `A000010(A080398(n+1))` -/
def P14524172047361413983.Spec : Prop :=
  ∀ n, P14524172047361413983.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P17255716611215200488

`A173557(A000203(n+1))`
-/

namespace A387157.P17255716611215200488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A000203 (n + 1)).toNat

end

end A387157.P17255716611215200488

namespace A387157

/-- `A173557(A000203(n+1))` -/
def P17255716611215200488.Spec : Prop :=
  ∀ n, P17255716611215200488.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P15612529107761296327

`A173557(A161942(n+1))`
-/

namespace A387157.P15612529107761296327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A161942 (n + 1)).toNat

end

end A387157.P15612529107761296327

namespace A387157

/-- `A173557(A161942(n+1))` -/
def P15612529107761296327.Spec : Prop :=
  ∀ n, P15612529107761296327.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P18036358656936136399

`A173557(A175433(n+1))`
-/

namespace A387157.P18036358656936136399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A175433 (n + 1)).toNat

end

end A387157.P18036358656936136399

namespace A387157

/-- `A173557(A175433(n+1))` -/
def P18036358656936136399.Spec : Prop :=
  ∀ n, P18036358656936136399.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P2545309939238098597

`A173557(A353783(n+1))`
-/

namespace A387157.P2545309939238098597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A353783 (n + 1)).toNat

end

end A387157.P2545309939238098597

namespace A387157

/-- `A173557(A353783(n+1))` -/
def P2545309939238098597.Spec : Prop :=
  ∀ n, P2545309939238098597.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P3436416500464742706

`A003958(2*A080398(n+1))`
-/

namespace A387157.P3436416500464742706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (2 * A080398 (n + 1)).toNat

end

end A387157.P3436416500464742706

namespace A387157

/-- `A003958(2*A080398(n+1))` -/
def P3436416500464742706.Spec : Prop :=
  ∀ n, P3436416500464742706.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P609270934557348102

`A173557(2*A080398(n+1))`
-/

namespace A387157.P609270934557348102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (2 * A080398 (n + 1)).toNat

end

end A387157.P609270934557348102

namespace A387157

/-- `A173557(2*A080398(n+1))` -/
def P609270934557348102.Spec : Prop :=
  ∀ n, P609270934557348102.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P4306870334268274206

`A173557(A001065(n+1)+n+1)`
-/

namespace A387157.P4306870334268274206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A387157.P4306870334268274206

namespace A387157

/-- `A173557(A001065(n+1)+n+1)` -/
def P4306870334268274206.Spec : Prop :=
  ∀ n, P4306870334268274206.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P12320709319554933263

`A173557(A064987(n+1)/(n+1))`
-/

namespace A387157.P12320709319554933263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A387157.P12320709319554933263

namespace A387157

/-- `A173557(A064987(n+1)/(n+1))` -/
def P12320709319554933263.Spec : Prop :=
  ∀ n, P12320709319554933263.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P17391251681779461764

`A062401(n+1)/A387156(n+1)`
-/

namespace A387157.P17391251681779461764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A387156 (n + 1) : ℚ)

end

end A387157.P17391251681779461764

namespace A387157

/-- `A062401(n+1)/A387156(n+1)` -/
def P17391251681779461764.Spec : Prop :=
  ∀ n, P17391251681779461764.a n = (A387157 (n + 1) : ℚ)

end A387157

/-! ## A387157.P10299249009022885194

`A000010(A007947(A001065(n+1)+n+1))`
-/

namespace A387157.P10299249009022885194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A387157.P10299249009022885194

namespace A387157

/-- `A000010(A007947(A001065(n+1)+n+1))` -/
def P10299249009022885194.Spec : Prop :=
  ∀ n, P10299249009022885194.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P4737412309525288657

`A003958(A080398(n+1)+A080398(n+1))`
-/

namespace A387157.P4737412309525288657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A080398 (n + 1) + A080398 (n + 1)).toNat

end

end A387157.P4737412309525288657

namespace A387157

/-- `A003958(A080398(n+1)+A080398(n+1))` -/
def P4737412309525288657.Spec : Prop :=
  ∀ n, P4737412309525288657.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P14605712720218326130

`A173557(A062355(n+1)-A079536(n+1))`
-/

namespace A387157.P14605712720218326130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A062355 (n + 1) - A079536 (n + 1)).toNat

end

end A387157.P14605712720218326130

namespace A387157

/-- `A173557(A062355(n+1)-A079536(n+1))` -/
def P14605712720218326130.Spec : Prop :=
  ∀ n, P14605712720218326130.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P4304448828341282334

`A003958(A000203(n+1)/A387156(n+1))`
-/

namespace A387157.P4304448828341282334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A387156 (n + 1) : ℚ))).toNat

end

end A387157.P4304448828341282334

namespace A387157

/-- `A003958(A000203(n+1)/A387156(n+1))` -/
def P4304448828341282334.Spec : Prop :=
  ∀ n, P4304448828341282334.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P7657183441821402649

`A351442(n+1)/A003958(A387156(n+1))`
-/

namespace A387157.P7657183441821402649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351442 (n + 1) : ℚ) / (A003958 (A387156 (n + 1)).toNat : ℚ)

end

end A387157.P7657183441821402649

namespace A387157

/-- `A351442(n+1)/A003958(A387156(n+1))` -/
def P7657183441821402649.Spec : Prop :=
  ∀ n, P7657183441821402649.a n = (A387157 (n + 1) : ℚ)

end A387157

/-! ## A387157.P16050622457364180801

`A062401(n+1)/A000203(n+1)*A080398(n+1)`
-/

namespace A387157.P16050622457364180801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A080398 (n + 1) : ℚ)

end

end A387157.P16050622457364180801

namespace A387157

/-- `A062401(n+1)/A000203(n+1)*A080398(n+1)` -/
def P16050622457364180801.Spec : Prop :=
  ∀ n, P16050622457364180801.a n = (A387157 (n + 1) : ℚ)

end A387157

/-! ## A387157.P6687016080458128993

`A173557(A074400(n+1))`
-/

namespace A387157.P6687016080458128993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A074400 (n + 1)).toNat

end

end A387157.P6687016080458128993

namespace A387157

/-- `A173557(A074400(n+1))` -/
def P6687016080458128993.Spec : Prop :=
  ∀ n, P6687016080458128993.a n = A387157 (n + 1)

end A387157

/-! ## A387157.P15512052575980048454

`A173557(A239050(n+1))`
-/

namespace A387157.P15512052575980048454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (A239050 (n + 1)).toNat

end

end A387157.P15512052575980048454

namespace A387157

/-- `A173557(A239050(n+1))` -/
def P15512052575980048454.Spec : Prop :=
  ∀ n, P15512052575980048454.a n = A387157 (n + 1)

end A387157

/-!
# A387159: Odd numbers k such that A173557(k) = A173557(sigma(k)), where A173557(n) is multiplicative with a(p^e) = p-1 and sigma is the sum of divisors function.

The programs for A387159, there is no canonical definition to state claims against.
-/

/-! ## A387159.P1068438193068148935

`filter[A387158(n+1), A374134(#)]`
-/

namespace A387159.P1068438193068148935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A387159.P1068438193068148935

/-! ## A387159.P18359253390982591344

`filter[A387158(n+1), A379952(#)]`
-/

namespace A387159.P18359253390982591344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A387159.P18359253390982591344

/-! ## A387159.P9809336029350638332

`∩[A175761(n+1), A387158(n+1)]`
-/

namespace A387159.P9809336029350638332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387159.P9809336029350638332

/-! ## A387159.P8229203621648949877

`filter[A387158(n+1), A000035(#)]`
-/

namespace A387159.P8229203621648949877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A387159.P8229203621648949877

/-! ## A387159.P17598903274102993818

`filter[A387158(n+1), A284948(#)]`
-/

namespace A387159.P17598903274102993818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284948 (f1 j).toNat = 1) n)

end

end A387159.P17598903274102993818

/-!
# A387160: Terms of the form prime * m^2 in A351554.

The programs for A387160, there is no canonical definition to state claims against.
-/

/-! ## A387160.P5522706140854851477

`filter[A351554(n+1), A358769(#)]`
-/

namespace A387160.P5522706140854851477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A387160.P5522706140854851477

/-! ## A387160.P11079362691864267957

`∩[A229125(n+1), A351554(n+1)]`
-/

namespace A387160.P11079362691864267957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387160.P11079362691864267957

/-!
# A387161: Numbers k for which A324644(k)/A324198(k) = 3.

The programs for A387161, there is no canonical definition to state claims against.
-/

/-! ## A387161.P14187333058875865526

`2*A073473(n+1)`
-/

namespace A387161.P14187333058875865526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073473 (n + 1)

end

end A387161.P14187333058875865526

/-! ## A387161.P16706753321284395928

`A005843(A073473(n+1))`
-/

namespace A387161.P16706753321284395928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A073473 (n + 1)).toNat

end

end A387161.P16706753321284395928

/-! ## A387161.P2228884935470433201

`A153883(A153880(2*n))+2`
-/

namespace A387161.P2228884935470433201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A153880 (2 * n)).toNat + 2

end

end A387161.P2228884935470433201

/-! ## A387161.P5890967665667799362

`∩[A236264(n+1), A251536(n+1)]`
-/

namespace A387161.P5890967665667799362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387161.P5890967665667799362

/-! ## A387161.P4990436500059578215

`∩[A236264(n+1), A353466(n+1)]`
-/

namespace A387161.P4990436500059578215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387161.P4990436500059578215

/-!
# A387168: Number of isomorphism classes of multigraphs representing particle interactions in phi-4-theory on n non-external vertices.

The programs for A387168, there is no canonical definition to state claims against.
-/

/-! ## A387168.P11410276277096856336

`A096182(A079225(n))`
-/

namespace A387168.P11410276277096856336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096182 (A079225 n).toNat

end

end A387168.P11410276277096856336

/-! ## A387168.P7132795861975742631

`A273200(A330227(n))-1`
-/

namespace A387168.P7132795861975742631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273200 (A330227 n).toNat - 1

end

end A387168.P7132795861975742631

/-!
# A387171: Number of 4 element sets of distinct integer sided rectangles that fill an n X n square.

The programs for A387171, there is no canonical definition to state claims against.
-/

/-! ## A387171.P16738995926615203653

`A384311(n+1)-A265645(n)`
-/

namespace A387171.P16738995926615203653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384311 (n + 1) - A265645 n

end

end A387171.P16738995926615203653

/-! ## A387171.P4357203289829959628

`A385240(A141214(n+1))`
-/

namespace A387171.P4357203289829959628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (A141214 (n + 1)).toNat

end

end A387171.P4357203289829959628

/-! ## A387171.P1854657968396142798

`A385240(A115744(n+1)+n+1)`
-/

namespace A387171.P1854657968396142798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385240 (A115744 (n + 1) + (n + 1 : ℤ)).toNat

end

end A387171.P1854657968396142798

/-!
# A387173: First differences of A067175.

The programs for A387173, there is no canonical definition to state claims against.
-/

/-! ## A387173.P74101222324868730

`Δ[A067175(n)]`
-/

namespace A387173.P74101222324868730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A387173.P74101222324868730

/-! ## A387173.P6884308591336376099

`A067175(n+1)-A067175(n)`
-/

namespace A387173.P6884308591336376099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067175 (n + 1) - A067175 n

end

end A387173.P6884308591336376099

/-! ## A387173.P6688045853862901982

`A061498(A193159(n+1))`
-/

namespace A387173.P6688045853862901982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (A193159 (n + 1)).toNat

end

end A387173.P6688045853862901982

/-! ## A387173.P1536051402011177666

`A175078(A331333(n)+A262781(n+1))`
-/

namespace A387173.P1536051402011177666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A331333 n + A262781 (n + 1)).toNat

end

end A387173.P1536051402011177666

/-! ## A387173.P6858668111315616038

`A243840(A044819(n+2))`
-/

namespace A387173.P6858668111315616038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243840 (A044819 (n + 2)).toNat

end

end A387173.P6858668111315616038

/-!
# A387174: a(n) is a prime that is the average of two distinct primes p and q, neither of which has been used before as such. However, the average can be any prime, including previous p's or q's.

The programs for A387174, there is no canonical definition to state claims against.
-/

/-! ## A387174.P7021446512620414544

`∩[A175966(n+1), A338339(n+1)]`
-/

namespace A387174.P7021446512620414544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387174.P7021446512620414544

/-!
# A387176: Numbers whose prime indices do not have choosable sets of strict integer partitions. Zeros of A387115.

The programs for A387176, there is no canonical definition to state claims against.
-/

/-! ## A387176.P14420146349867796422

`eq[floor(1/(n+1)), A326938(3*(n+1))]+1`
-/

namespace A387176.P14420146349867796422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326938 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A387176.P14420146349867796422

/-! ## A387176.P1840710852074064699

`lt[1, A366904(A008458(n))]`
-/

namespace A387176.P1840710852074064699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366904 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387176.P1840710852074064699

/-! ## A387176.P1601092770186037380

`lt[2, A051903(A008486(2*n))]`
-/

namespace A387176.P1601092770186037380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387176.P1601092770186037380

/-! ## A387176.P2116987019216986601

`lt[A328618(n+1), A000217(n)]+1`
-/

namespace A387176.P2116987019216986601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A387176.P2116987019216986601

/-! ## A387176.P4410989782172521929

`∪[A016096(n+1), A387180(n+1)]`
-/

namespace A387176.P4410989782172521929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387176.P4410989782172521929

/-! ## A387176.P18337582021677135687

`∪[A051063(n+1), A387180(n+1)]`
-/

namespace A387176.P18337582021677135687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387176.P18337582021677135687

/-! ## A387176.P9117413057326464538

`∪[A070279(n+1), A387180(n+1)]`
-/

namespace A387176.P9117413057326464538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387176.P9117413057326464538

/-! ## A387176.P797862446799428495

`∪[A195085(n+1), A387180(n+1)]`
-/

namespace A387176.P797862446799428495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387176.P797862446799428495

/-! ## A387176.P8870465165776654399

`∪[A217373(n+1), A387180(n+1)]`
-/

namespace A387176.P8870465165776654399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A387176.P8870465165776654399

/-!
# A387177: Numbers whose prime indices have choosable sets of strict integer partitions. Positions of nonzero terms in A387115.

The programs for A387177, there is no canonical definition to state claims against.
-/

/-! ## A387177.P7578041513822265417

`lt[A244417(n+1), 2]+1`
-/

namespace A387177.P7578041513822265417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387177.P7578041513822265417

/-! ## A387177.P8883064288710719535

`eq[1, A327939(3*(n+1))]+1`
-/

namespace A387177.P8883064288710719535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387177.P8883064288710719535

/-! ## A387177.P10387564394103820239

`lt[A368332(3*(n+1)), 2]+1`
-/

namespace A387177.P10387564394103820239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368332 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387177.P10387564394103820239

/-! ## A387177.P16812906165484556578

`record[(n+1)/A365632(3*(n+1))]`
-/

namespace A387177.P16812906165484556578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A365632 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387177.P16812906165484556578

/-! ## A387177.P7891883228156517542

`record[(n+1)/A368335(3*(n+1))]`
-/

namespace A387177.P7891883228156517542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368335 (3 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387177.P7891883228156517542

/-! ## A387177.P11675000165470969980

`comp[∪[A301293(2*(n+1)), 4*n]]`
-/

namespace A387177.P11675000165470969980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A387177.P11675000165470969980

/-! ## A387177.P2719296239798739216

`filter[A190621(n), A168182(#)]`
-/

namespace A387177.P2719296239798739216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A387177.P2719296239798739216

/-! ## A387177.P15694313625853771400

`eq[A114099(n), A264769(n)]`
-/

namespace A387177.P15694313625853771400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387177.P15694313625853771400

/-! ## A387177.P17644332229794047849

`eq[A088440(n), A305762(n)]`
-/

namespace A387177.P17644332229794047849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387177.P17644332229794047849

/-! ## A387177.P1405810081138450986

`record[A283443(A283443(n+1))]`
-/

namespace A387177.P1405810081138450986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283443 (A283443 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387177.P1405810081138450986

/-!
# A387178: Number of integer partitions of n whose parts have choosable sets of strict integer partitions.

The programs for A387178, there is no canonical definition to state claims against.
-/

/-! ## A387178.P18256531582570389133

`A000041(n)-A387137(n)`
-/

namespace A387178.P18256531582570389133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A387137 n

end

end A387178.P18256531582570389133

/-! ## A387178.P3636851168788201968

`A213598(n)-A387137(n)`
-/

namespace A387178.P3636851168788201968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A387137 n

end

end A387178.P3636851168788201968

/-! ## A387178.P5913383682946558974

`∑[A002865(n)]-A387137(n)`
-/

namespace A387178.P5913383682946558974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A387137 n

end

end A387178.P5913383682946558974

/-!
# A387179: Number of twice-partitions of n into distinct constant partitions.

The programs for A387179, there is no canonical definition to state claims against.
-/

/-! ## A387179.P1636977334276250198

`A367128(A367656(n))`
-/

namespace A387179.P1636977334276250198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367128 (A367656 n).toNat

end

end A387179.P1636977334276250198

/-! ## A387179.P11577173012335434429

`A130573(A242362(n))`
-/

namespace A387179.P11577173012335434429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130573 (A242362 n).toNat

end

end A387179.P11577173012335434429

/-! ## A387179.P5093320685881037183

`A028237(A039900(n+1))`
-/

namespace A387179.P5093320685881037183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A039900 (n + 1)).toNat

end

end A387179.P5093320685881037183

/-! ## A387179.P8622466740866948356

`A028237(A039902(n+1))`
-/

namespace A387179.P8622466740866948356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028237 (A039902 (n + 1)).toNat

end

end A387179.P8622466740866948356

/-! ## A387179.P7757989765962197634

`A259899(A056364(n)+A034691(n))`
-/

namespace A387179.P7757989765962197634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259899 (A056364 n + A034691 n).toNat

end

end A387179.P7757989765962197634

/-!
# A387180: Numbers of which it is not possible to choose a different constant integer partition of each prime index.

The programs for A387180, there is no canonical definition to state claims against.
-/

/-! ## A387180.P7742929286878270643

`lt[4, ∏{e}[2*n, #!]]`
-/

namespace A387180.P7742929286878270643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387180.P7742929286878270643

/-! ## A387180.P13764634248747984961

`lt[∏{e}[2*n, 3-#], 1]`
-/

namespace A387180.P13764634248747984961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (3 - (Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A387180.P13764634248747984961

/-! ## A387180.P5482784569437041272

`lt[∑{e}[2*n, 2-#!], 0]`
-/

namespace A387180.P5482784569437041272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorial (Nat.factorization (f2 n) p) : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A387180.P5482784569437041272

/-! ## A387180.P13582761894780580081

`lt[1, A294333(2*n)]`
-/

namespace A387180.P13582761894780580081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387180.P13582761894780580081

/-! ## A387180.P16322896848006214369

`eq[0, A327276(n+1)]+1`
-/

namespace A387180.P16322896848006214369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327276 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387180.P16322896848006214369

/-! ## A387180.P9389269685664373793

`eq[0, A327278(n+1)]+1`
-/

namespace A387180.P9389269685664373793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327278 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387180.P9389269685664373793

/-! ## A387180.P1082811379235621526

`lt[2, A376645(n+1)]+1`
-/

namespace A387180.P1082811379235621526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376645 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387180.P1082811379235621526

/-! ## A387180.P14224642635530815454

`lt[2, A051903(2*(n+1))]+1`
-/

namespace A387180.P14224642635530815454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387180.P14224642635530815454

/-! ## A387180.P1219422451362310775

`lt[A371242(2*(n+1)), n]+1`
-/

namespace A387180.P1219422451362310775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371242 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A387180.P1219422451362310775

/-! ## A387180.P8054023863406430039

`lt[1, A363332(A004277(n))]`
-/

namespace A387180.P8054023863406430039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363332 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A387180.P8054023863406430039

/-!
# A387181: Heinz numbers of integer partitions with no part k appearing more than A000005(k) times.

The programs for A387181, there is no canonical definition to state claims against.
-/

/-! ## A387181.P12969414910079481177

`lt[∑{e}[2*n, n^#], (2*n)²]`
-/

namespace A387181.P12969414910079481177
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), n ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A387181.P12969414910079481177

/-! ## A387181.P12312307298764496813

`comp[A387180(n+1)-1]+1`
-/

namespace A387181.P12312307298764496813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387180 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A387181.P12312307298764496813

/-! ## A387181.P12055227825754122103

`record[A367699(2*(n+1))/2]`
-/

namespace A387181.P12055227825754122103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367699 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A387181.P12055227825754122103

/-! ## A387181.P14795687431845654555

`lt[1, A387120(n+1)+1]+1`
-/

namespace A387181.P14795687431845654555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387120 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387181.P14795687431845654555

/-! ## A387181.P11253792903099633654

`eq[1, A050361(2*(n+1))]+1`
-/

namespace A387181.P11253792903099633654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387181.P11253792903099633654

/-! ## A387181.P11440244642117865620

`eq[1, A318667(2*(n+1))]+1`
-/

namespace A387181.P11440244642117865620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318667 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387181.P11440244642117865620

/-! ## A387181.P4074900056598994729

`eq[1, A366906(2*(n+1))]+1`
-/

namespace A387181.P4074900056598994729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366906 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387181.P4074900056598994729

/-! ## A387181.P6071857952073902518

`eq[1, A385418(2*(n+1))]+1`
-/

namespace A387181.P6071857952073902518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385418 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A387181.P6071857952073902518

/-! ## A387181.P6825830485639615054

`lt[n, A371242(2*(n+1))]+1`
-/

namespace A387181.P6825830485639615054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371242 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A387181.P6825830485639615054

/-! ## A387181.P15169663732452027287

`eq[A010195(n), A294333(n)]`
-/

namespace A387181.P15169663732452027287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294333 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A387181.P15169663732452027287

/-!
# A387183: Denominators of the expected number of steps to hit the opposite corner by simple random walk on the n-cube.

The programs for A387183, there is no canonical definition to state claims against.
-/

/-! ## A387183.P13811784646115487466

`gcd(A046826(n), A217858(n+1))`
-/

namespace A387183.P13811784646115487466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046826 n) (A217858 (n + 1))

end

end A387183.P13811784646115487466

/-! ## A387183.P5749353629867364568

`gcd(A046826(n), A055634(n))`
-/

namespace A387183.P5749353629867364568
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046826 n) (A055634 n)

end

end A387183.P5749353629867364568

/-! ## A387183.P2465007101959616677

`A000265(A046826(n))`
-/

namespace A387183.P2465007101959616677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046826 n).toNat

end

end A387183.P2465007101959616677

/-! ## A387183.P13858338667879713894

`A000265(A115389(n+1))`
-/

namespace A387183.P13858338667879713894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A115389 (n + 1)).toNat

end

end A387183.P13858338667879713894

/-! ## A387183.P2609719688700968729

`A000265(A334721(n+1))`
-/

namespace A387183.P2609719688700968729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A334721 (n + 1)).toNat

end

end A387183.P2609719688700968729

/-!
# A387184: Numbers d such that a!*b!*c!*d! is a perfect square for some 1<=a

The programs for A387184, there is no canonical definition to state claims against.
-/

/-! ## A387184.P16420385214628028222

`∩[A056653(n+1), A235986(n+1)]`
-/

namespace A387184.P16420385214628028222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387184.P16420385214628028222

/-! ## A387184.P7151167476757579430

`lt[A333220(A126246(n+1)), A335405(n)]`
-/

namespace A387184.P7151167476757579430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (A126246 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387184.P7151167476757579430

/-! ## A387184.P9827877736954068471

`lt[A357138(A225630(n)), A167865(n)]`
-/

namespace A387184.P9827877736954068471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (A225630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387184.P9827877736954068471

/-! ## A387184.P7803597805994709163

`lt[A304118(A051377(n+4)), A167865(n)]`
-/

namespace A387184.P7803597805994709163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A051377 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387184.P7803597805994709163

/-! ## A387184.P18356172260594171101

`lt[A000005(A353851(n+4)), A353851(n)]`
-/

namespace A387184.P18356172260594171101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A353851 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A387184.P18356172260594171101

/-!
# A387185: a(n) = n*2^(n-1) + binomial(n,2)*2^(n-2) + binomial(n,3)*2^(n-3).

The programs for A387185, the canonical program `A387185.P11494096129281402244` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A387185 has offset 0).

The definition of A387185 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A387185.P11494096129281402244

`n*2^n*(20+3*n+n²)/48`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A387185

/-- `n*2^n*(20+3*n+n²)/48` -/
def P11494096129281402244.Spec : Prop :=
  ∀ n, P11494096129281402244.a n = (A387185 n : ℚ)

end A387185

/-! ## A387185.P11318031464685156679

`A134396(n)-2^n`
-/

namespace A387185.P11318031464685156679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134396 n - (2 ^ n : ℤ)

end

end A387185.P11318031464685156679

namespace A387185

/-- `A134396(n)-2^n` -/
def P11318031464685156679.Spec : Prop :=
  ∀ n, P11318031464685156679.a n = A387185 n

end A387185

/-! ## A387185.P11124145024224962014

`A093374(n+4)-A084851(n)`
-/

namespace A387185.P11124145024224962014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093374 (n + 4) - A084851 n

end

end A387185.P11124145024224962014

namespace A387185

/-- `A093374(n+4)-A084851(n)` -/
def P11124145024224962014.Spec : Prop :=
  ∀ n, P11124145024224962014.a n = A387185 n

end A387185

/-!
# A387186: Numbers k such that m!*k is a perfect square for some m < k-1.

The programs for A387186, there is no canonical definition to state claims against.
-/

/-! ## A387186.P9555758741787312014

`∩[A347262(n+1), A388851(n+1)]`
-/

namespace A387186.P9555758741787312014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387186.P9555758741787312014

/-! ## A387186.P186900422591478133

`∩[A346129(n+1), A388851(n+1)]`
-/

namespace A387186.P186900422591478133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387186.P186900422591478133

/-!
# A387188: a(n) = s*(s+1)/2 + t + 1 where s = A160384(n) and t = A081603(n) are the number of nonzero and number of 2 digits of n in ternary.

The programs for A387188, there is no canonical definition to state claims against.
-/

/-! ## A387188.P12520598221977913845

`A088936(A255291(n))`
-/

namespace A387188.P12520598221977913845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (A255291 n).toNat

end

end A387188.P12520598221977913845

/-! ## A387188.P16362500207577468938

`A382397(A255293(n))`
-/

namespace A387188.P16362500207577468938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382397 (A255293 n).toNat

end

end A387188.P16362500207577468938

/-! ## A387188.P17544849087044410761

`A373953(A038586(n))+1`
-/

namespace A387188.P17544849087044410761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373953 (A038586 n).toNat + 1

end

end A387188.P17544849087044410761

/-!
# A387192: Primes prime(k) whose sum of digits and sum of digits of k are prime.

The programs for A387192, there is no canonical definition to state claims against.
-/

/-! ## A387192.P7750112304594979635

`∩[A028834(n+1), A000040(A028834(n+1))]`
-/

namespace A387192.P7750112304594979635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A028834 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387192.P7750112304594979635

/-! ## A387192.P9913945231500222884

`∩[A139483(n+1), A226017(n+1)]`
-/

namespace A387192.P9913945231500222884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139483 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387192.P9913945231500222884

/-!
# A387199: Numbers which are not themselves palindromes, but a single swap of two digits creates a palindrome.

The programs for A387199, there is no canonical definition to state claims against.
-/

/-! ## A387199.P4036261237270424703

`∩[A261907(n+1), A276115(n+1)]`
-/

namespace A387199.P4036261237270424703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387199.P4036261237270424703

/-! ## A387199.P745004730907152921

`∩[A038687(n+1), A044866(n+1)]`
-/

namespace A387199.P745004730907152921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A387199.P745004730907152921

/-! ## A387199.P126359807389632763

`A096135(A044866(n+2))`
-/

namespace A387199.P126359807389632763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096135 (A044866 (n + 2)).toNat

end

end A387199.P126359807389632763

/-! ## A387199.P11221174864890549087

`A044866(A187829(n+2))`
-/

namespace A387199.P11221174864890549087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (A187829 (n + 2)).toNat

end

end A387199.P11221174864890549087

/-! ## A387199.P8473212659151463366

`A044866(A077168(n+1))`
-/

namespace A387199.P8473212659151463366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044866 (A077168 (n + 1)).toNat

end

end A387199.P8473212659151463366

