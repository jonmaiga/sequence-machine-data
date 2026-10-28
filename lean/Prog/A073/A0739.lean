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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A073901: Number of primes with nonzero digits and digit sum n.

The programs for A073901, there is no canonical definition to state claims against.
-/

/-! ## A073901.P1084969125800636561

`A116381(n+1)-A116381(A212389(n))`
-/

namespace A073901.P1084969125800636561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116381 (n + 1) - A116381 (A212389 n).toNat

end

end A073901.P1084969125800636561

/-! ## A073901.P16436173718469880977

`A116381(n+1)-A316863(A116383(n))`
-/

namespace A073901.P16436173718469880977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116381 (n + 1) - A316863 (A116383 n).toNat

end

end A073901.P16436173718469880977

/-! ## A073901.P7131527877868383742

`xor(A116381(n+1), A349797(A285943(n)))`
-/

namespace A073901.P7131527877868383742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A116381 (n + 1)) (A349797 (A285943 n).toNat)

end

end A073901.P7131527877868383742

/-! ## A073901.P13381143312463543267

`A116381(n+1)-A212619(A285943(n+2))`
-/

namespace A073901.P13381143312463543267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116381 (n + 1) - A212619 (A285943 (n + 2)).toNat

end

end A073901.P13381143312463543267

/-! ## A073901.P11936013864256742487

`A116381(n+1)-A349797(A285943(n)+n)`
-/

namespace A073901.P11936013864256742487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116381 (n + 1) - A349797 (A285943 n + (n : ℤ)).toNat

end

end A073901.P11936013864256742487

/-!
# A073904: Smallest multiple k*n of n having n divisors.

The programs for A073904, there is no canonical definition to state claims against.
-/

/-! ## A073904.P15164102247628062728

`(n+1)*A076931(n+1)`
-/

namespace A073904.P15164102247628062728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A076931 (n + 1)

end

end A073904.P15164102247628062728

/-! ## A073904.P3931710987323960454

`A076931(A077168(n))*A077168(n)`
-/

namespace A073904.P3931710987323960454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076931 (A077168 n).toNat * A077168 n

end

end A073904.P3931710987323960454

/-! ## A073904.P4979506421636995128

`A033950(A111172(n+1))`
-/

namespace A073904.P4979506421636995128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (A111172 (n + 1)).toNat

end

end A073904.P4979506421636995128

/-! ## A073904.P12903349213346933838

`A036762(A111172(n+1))*A348553(n)`
-/

namespace A073904.P12903349213346933838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036762 (A111172 (n + 1)).toNat * A348553 n

end

end A073904.P12903349213346933838

/-! ## A073904.P14646224714585689736

`A000005(∏{digits}[n, 2^#])*A036762(A111172(n+1))`
-/

namespace A073904.P14646224714585689736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod * A036762 (A111172 (n + 1)).toNat

end

end A073904.P14646224714585689736

/-!
# A073906: Number of conjugacy classes in the symmetric group S_n with distinct cardinality.

The programs for A073906, there is no canonical definition to state claims against.
-/

/-! ## A073906.P16042017964936936194

`A003002(∑[A326015(3*(n+1))])`
-/

namespace A073906.P16042017964936936194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326015 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A073906.P16042017964936936194

/-! ## A073906.P2141154665613187139

`A334996(A002426(n))+A238866(n)`
-/

namespace A073906.P2141154665613187139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334996 (A002426 n).toNat + A238866 n

end

end A073906.P2141154665613187139

/-!
# A073908: Smallest number m such that m and the product of digits of m are both divisible by 7n, or 0 if no such number exists.

The programs for A073908, there is no canonical definition to state claims against.
-/

/-! ## A073908.P10259635709647386345

`A085124(7*(n+1))`
-/

namespace A073908.P10259635709647386345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085124 (7 * (n + 1))

end

end A073908.P10259635709647386345

/-!
# A073909: Smallest number m such that m and the product of digits of m are both divisible by 2n, or 0 if no such number exists.

The programs for A073909, there is no canonical definition to state claims against.
-/

/-! ## A073909.P2022464465535812161

`A085124(2*(n+1))`
-/

namespace A073909.P2022464465535812161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085124 (2 * (n + 1))

end

end A073909.P2022464465535812161

/-! ## A073909.P3356576928030742841

`lcm(2, A085124(Δ[n²+n]))`
-/

namespace A073909.P3356576928030742841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A085124 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A073909.P3356576928030742841

/-!
# A073910: Smallest number m such that m and the product of digits of m are both divisible by 3n, or 0 if no such number exists.

The programs for A073910, there is no canonical definition to state claims against.
-/

/-! ## A073910.P6434151300946104202

`A085124(3*(n+1))`
-/

namespace A073910.P6434151300946104202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085124 (3 * (n + 1))

end

end A073910.P6434151300946104202

/-! ## A073910.P11467048420200347523

`lcm(3, A085124(A008486(n+1)))`
-/

namespace A073910.P11467048420200347523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A085124 (A008486 (n + 1)).toNat)

end

end A073910.P11467048420200347523

/-! ## A073910.P7397240184215639531

`A085124(A008486(n+1))/A007318(∑[n])`
-/

namespace A073910.P7397240184215639531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085124 (A008486 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A073910.P7397240184215639531

/-! ## A073910.P6144836646355516550

`A085124(A008486(n+1))%A046020(n+1)`
-/

namespace A073910.P6144836646355516550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085124 (A008486 (n + 1)).toNat) (A046020 (n + 1))

end

end A073910.P6144836646355516550

/-!
# A073911: Smallest number m such that m and the product of digits of m are both divisible by 5n, or 0 if no such number exists.

The programs for A073911, there is no canonical definition to state claims against.
-/

/-! ## A073911.P15782971134894194239

`A085124(5*(n+1))`
-/

namespace A073911.P15782971134894194239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085124 (5 * (n + 1))

end

end A073911.P15782971134894194239

/-! ## A073911.P18122444277551904328

`lcm(5, A085124(A008706(n+1)))`
-/

namespace A073911.P18122444277551904328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 5 (A085124 (A008706 (n + 1)).toNat)

end

end A073911.P18122444277551904328

/-!
# A073912: Smallest number m such that m and the product of digits of m are both divisible by 8n, or 0 if no such number exists.

The programs for A073912, there is no canonical definition to state claims against.
-/

/-! ## A073912.P13146522791644220967

`A085124(8*(n+1))`
-/

namespace A073912.P13146522791644220967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085124 (8 * (n + 1))

end

end A073912.P13146522791644220967

/-! ## A073912.P1432046499308373593

`A073909(4*(n+1))`
-/

namespace A073912.P1432046499308373593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073909 (4 * (n + 1))

end

end A073912.P1432046499308373593

/-!
# A073913: Number of staircase polygons on the square lattice with perimeter 2n and one (possibly rotated) staircase polygonal hole.

The programs for A073913, there is no canonical definition to state claims against.
-/

/-! ## A073913.P783243482776271502

`A057410(n+8)-A025442(A068069(n))`
-/

namespace A073913.P783243482776271502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057410 (n + 8) - A025442 (A068069 n).toNat

end

end A073913.P783243482776271502

/-!
# A073914: Triangle read by rows in which row n gives n smallest n-digit primes.

The programs for A073914, there is no canonical definition to state claims against.
-/

/-! ## A073914.P11408043902807424010

`A000040(A006880(A003056(n))+A002260(n+1))`
-/

namespace A073914.P11408043902807424010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A006880 (A003056 n).toNat + A002260 (n + 1)).toNat

end

end A073914.P11408043902807424010

/-! ## A073914.P1532770886463113381

`filter[A139053(n+1), A104338(#)]`
-/

namespace A073914.P1532770886463113381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104338 (f1 j).toNat = 1) n)

end

end A073914.P1532770886463113381

/-! ## A073914.P15059717641373325704

`A139053(A175968(n+1))%A179109(n+1)`
-/

namespace A073914.P15059717641373325704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139053 (A175968 (n + 1)).toNat) (A179109 (n + 1))

end

end A073914.P15059717641373325704

/-!
# A073916: The n-th number with n divisors.

The programs for A073916, there is no canonical definition to state claims against.
-/

/-! ## A073916.P2815328124625412557

`A073915(∑[n+1])`
-/

namespace A073916.P2815328124625412557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073916.P2815328124625412557

/-! ## A073916.P7386958979410152659

`A073915(A000217(n+1))+A011655(3*(n+1))`
-/

namespace A073916.P7386958979410152659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073915 (A000217 (n + 1)).toNat + A011655 (3 * (n + 1))

end

end A073916.P7386958979410152659

/-! ## A073916.P16283222968538194587

`A073915(A000217(n+1))%A098028(2*n+1)`
-/

namespace A073916.P16283222968538194587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073915 (A000217 (n + 1)).toNat) (A098028 (2 * n + 1))

end

end A073916.P16283222968538194587

/-!
# A073917: Smallest prime which leaves a remainder 1 when divided by primorial(n), i.e., when divided by first n primes.

The programs for A073917, there is no canonical definition to state claims against.
-/

/-! ## A073917.P17458795097789176301

`record[A272981(A351080(n))]`
-/

namespace A073917.P17458795097789176301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272981 (A351080 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073917.P17458795097789176301

/-! ## A073917.P1250485132511481980

`A272981(A006093(n+1))`
-/

namespace A073917.P1250485132511481980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272981 (A006093 (n + 1)).toNat

end

end A073917.P1250485132511481980

/-! ## A073917.P12970912870120768976

`A272981(A075728(n+1))`
-/

namespace A073917.P12970912870120768976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272981 (A075728 (n + 1)).toNat

end

end A073917.P12970912870120768976

/-! ## A073917.P2227132506716436436

`A272981(record[A000010(n+1)])`
-/

namespace A073917.P2227132506716436436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073917.P2227132506716436436

/-! ## A073917.P11673025572771691136

`A272981(A000040(n+1)-1)`
-/

namespace A073917.P11673025572771691136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272981 (A000040 (n + 1) - 1).toNat

end

end A073917.P11673025572771691136

/-!
# A073918: Smallest prime which is 1 more than a product of n distinct primes: a(n) is a prime and a(n) - 1 is a squarefree number with n prime factors.

The programs for A073918, there is no canonical definition to state claims against.
-/

/-! ## A073918.P1106714020468865611

`A241196(A084749(n+2))`
-/

namespace A073918.P1106714020468865611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241196 (A084749 (n + 2)).toNat

end

end A073918.P1106714020468865611

/-! ## A073918.P4379104592167980330

`A241196(A024645(n+1))`
-/

namespace A073918.P4379104592167980330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241196 (A024645 (n + 1)).toNat

end

end A073918.P4379104592167980330

/-! ## A073918.P9945980576640117525

`A241196(A024646(n+1))`
-/

namespace A073918.P9945980576640117525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241196 (A024646 (n + 1)).toNat

end

end A073918.P9945980576640117525

/-!
# A073919: Smallest prime p with bigomega(p-1)=n, where bigomega(m)=A001222(m) is the number of prime divisors of m (counted with multiplicity).

The programs for A073919, there is no canonical definition to state claims against.
-/

/-! ## A073919.P6057166936314373463

`p?[A087980(n+1)+A014709(A280058(n))]`
-/

namespace A073919.P6057166936314373463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1) + A014709 (A280058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073919.P6057166936314373463

/-! ## A073919.P18293123086114896252

`p?[A087980(n+1)+1]%A025480(A281241(n+1)+1)`
-/

namespace A073919.P18293123086114896252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087980 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A025480 (A281241 (n + 1) + 1).toNat)

end

end A073919.P18293123086114896252

/-! ## A073919.P13512905049358829047

`p?[∑[A045783(A032739(n))]]`
-/

namespace A073919.P13512905049358829047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045783 (A032739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A073919.P13512905049358829047

/-!
# A073920: a(1)=1 and then odd numbers rearranged such that a(n) is prime if n is composite else vice versa.

The programs for A073920, there is no canonical definition to state claims against.
-/

/-! ## A073920.P17420391776603910119

`2*A284697(n+1)-1`
-/

namespace A073920.P17420391776603910119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284697 (n + 1) - 1

end

end A073920.P17420391776603910119

/-! ## A073920.P9711098576378255886

`A004273(A284697(n+1))`
-/

namespace A073920.P9711098576378255886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A284697 (n + 1)).toNat

end

end A073920.P9711098576378255886

/-! ## A073920.P17635872519863019839

`A005408(A284697(n+1)-1)`
-/

namespace A073920.P17635872519863019839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A284697 (n + 1) - 1).toNat

end

end A073920.P17635872519863019839

/-! ## A073920.P7751024638751721215

`A014681(2*A284697(n+1))`
-/

namespace A073920.P7751024638751721215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A284697 (n + 1)).toNat

end

end A073920.P7751024638751721215

/-! ## A073920.P9461653788103954429

`A023443(2*A284697(n+1))`
-/

namespace A073920.P9461653788103954429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A284697 (n + 1)).toNat

end

end A073920.P9461653788103954429

/-! ## A073920.P6698193933278516927

`A016945(A284697(n+1)-1)/3`
-/

namespace A073920.P6698193933278516927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016945 (A284697 (n + 1) - 1).toNat : ℚ) / 3

end

end A073920.P6698193933278516927

/-! ## A073920.P2593099558446574298

`A008683(A001359(n+1))+2*A284697(n+1)`
-/

namespace A073920.P2593099558446574298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A284697 (n + 1)

end

end A073920.P2593099558446574298

/-! ## A073920.P158900025483158254

`A008683(A002145(n+1))+2*A284697(n+1)`
-/

namespace A073920.P158900025483158254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002145 (n + 1)).toNat + 2 * A284697 (n + 1)

end

end A073920.P158900025483158254

/-! ## A073920.P17959912239805275533

`A008683(A004139(n+1))+2*A284697(n+1)`
-/

namespace A073920.P17959912239805275533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004139 (n + 1)).toNat + 2 * A284697 (n + 1)

end

end A073920.P17959912239805275533

/-! ## A073920.P18050537697898657989

`A008683(record[A014963(n+2)])+2*A284697(n+1)`
-/

namespace A073920.P18050537697898657989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A284697 (n + 1)

end

end A073920.P18050537697898657989

/-!
# A073923: a(1)=1, a(n) is the smallest power of 2 not included earlier such that Sum_{k=1..n} a(k) is prime.

The programs for A073923, there is no canonical definition to state claims against.
-/

/-! ## A073923.P15893535594661247185

`A000079(A059662(n)/a(C(2, (n+1)²)))` with `a(0)=1, a(1)=2`
-/

namespace A073923.P15893535594661247185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000079 (SequenceMachineLib.roundAway ((A059662 n : ℚ) / (a (Nat.choose 2 ((n + 1) ^ 2)) : ℚ))).toNat

end

end A073923.P15893535594661247185

/-! ## A073923.P2086341340468732074

`A000079(xor(A014055(n), A259630(n+1)))`
-/

namespace A073923.P2086341340468732074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.xor (A014055 n) (A259630 (n + 1))).toNat

end

end A073923.P2086341340468732074

/-! ## A073923.P16640709661229021383

`A000079(abs(A259630(n+1)-A014055(n)))`
-/

namespace A073923.P16640709661229021383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 |A259630 (n + 1) - A014055 n|.toNat

end

end A073923.P16640709661229021383

/-! ## A073923.P1777996668213570322

`A006530(A001316(n))*A011782(A259630(n+1))`
-/

namespace A073923.P1777996668213570322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001316 n).toNat * A011782 (A259630 (n + 1)).toNat

end

end A073923.P1777996668213570322

/-! ## A073923.P15802564567188808278

`A000079(A259630(n+1))-A008683(A302254(n+1))`
-/

namespace A073923.P15802564567188808278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A259630 (n + 1)).toNat - A008683 (A302254 (n + 1)).toNat

end

end A073923.P15802564567188808278

/-!
# A073924: Smallest power of 2 that is greater than the previous term such that every partial sum (n>1) is a prime.

The programs for A073924, there is no canonical definition to state claims against.
-/

/-! ## A073924.P10404548456501493353

`2^A113878(n+1)`
-/

namespace A073924.P10404548456501493353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A113878 (n + 1) : ℤ)

end

end A073924.P10404548456501493353

/-! ## A073924.P830416478483152234

`A011782(A162982(A296531(n))+n)`
-/

namespace A073924.P830416478483152234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A162982 (A296531 n).toNat + (n : ℤ)).toNat

end

end A073924.P830416478483152234

/-!
# A073925: Powers of 2 rearranged such that every partial sum (n>1) is composite.

The programs for A073925, there is no canonical definition to state claims against.
-/

/-! ## A073925.P3213041004365104405

`A343240(A091924(n+1))^A343226(n+1)`
-/

namespace A073925.P3213041004365104405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343240 (A091924 (n + 1)).toNat : ℚ) ^ (A343226 (n + 1) : ℤ)

end

end A073925.P3213041004365104405

/-! ## A073925.P11202663878758486337

`A140740(A064840(n+1)+∑[n])`
-/

namespace A073925.P11202663878758486337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140740 (A064840 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A073925.P11202663878758486337

/-! ## A073925.P4509443980128528178

`A318472(n+1)^(A070245(n+1)+1)`
-/

namespace A073925.P4509443980128528178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318472 (n + 1) : ℚ) ^ (A070245 (n + 1) + 1 : ℤ)

end

end A073925.P4509443980128528178

/-!
# A073927: Smallest n-th power >1 such that every partial sum is a prime.

The programs for A073927, there is no canonical definition to state claims against.
-/

/-! ## A073927.P3545131375490709380

`A000005(A276600(n+2)+n^8)^(n+1)`
-/

namespace A073927.P3545131375490709380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A276600 (n + 2) + (n ^ 8 : ℤ)).toNat ^ (n + 1)

end

end A073927.P3545131375490709380

/-!
# A073928: Smallest prime q of form q=-1+(c+1)*10^w, where c runs through composites not divisible by 3.

The programs for A073928, there is no canonical definition to state claims against.
-/

/-! ## A073928.P16520438000723701063

`A373859(A171993(n+2))`
-/

namespace A073928.P16520438000723701063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373859 (A171993 (n + 2)).toNat

end

end A073928.P16520438000723701063

/-! ## A073928.P1420629782290141456

`A373859(A157695(n+1))`
-/

namespace A073928.P1420629782290141456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373859 (A157695 (n + 1)).toNat

end

end A073928.P1420629782290141456

/-!
# A073929: a(1) = 1, a(n) = smallest number not included earlier such that the n-th partial sum (n>1) is divisible by n+1.

The programs for A073929, the canonical program `A073929.P216639716828988186` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073929 has offset 1).

The definition of A073929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073929.P15498445208552322598

`Δ[(C(2, C(3, n²))+n)*floor((n+1)/ϕ)]`
-/

namespace A073929.P15498445208552322598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n : ℤ) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073929.P15498445208552322598

namespace A073929

/-- `Δ[(C(2, C(3, n²))+n)*floor((n+1)/ϕ)]` -/
def P15498445208552322598.Spec : Prop :=
  ∀ n, P15498445208552322598.a n = A073929 (n + 1)

end A073929

/-! ## A073929.P216639716828988186

`A002251(n+1-floor(1/a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073929

/-- `A002251(n+1-floor(1/a(n-1)))` -/
def P216639716828988186.Spec : Prop :=
  ∀ n, P216639716828988186.a n = A073929 (n + 1)

theorem P216639716828988186.correct : P216639716828988186.Spec := by
  intro n
  simp only [A073929, Nat.add_sub_cancel]

end A073929

/-! ## A073929.P16475424583941861146

`A002251(round(n+1-1/a(n-1)))` with `a(0)=1`
-/

namespace A073929.P16475424583941861146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - 1 / (a (n - 1) : ℚ))).toNat

end

end A073929.P16475424583941861146

namespace A073929

/-- `A002251(round(n+1-1/a(n-1)))` -/
def P16475424583941861146.Spec : Prop :=
  ∀ n, P16475424583941861146.a n = A073929 (n + 1)

end A073929

/-! ## A073929.P18296952955772464054

`A002251(A181440(n+1))`
-/

namespace A073929.P18296952955772464054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A181440 (n + 1)).toNat

end

end A073929.P18296952955772464054

namespace A073929

/-- `A002251(A181440(n+1))` -/
def P18296952955772464054.Spec : Prop :=
  ∀ n, P18296952955772464054.a n = A073929 (n + 1)

end A073929

/-! ## A073929.P16123536593839448847

`A011591(C(2, n+1))+A002251(n+1)`
-/

namespace A073929.P16123536593839448847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011591 (Nat.choose 2 (n + 1)) + A002251 (n + 1)

end

end A073929.P16123536593839448847

namespace A073929

/-- `A011591(C(2, n+1))+A002251(n+1)` -/
def P16123536593839448847.Spec : Prop :=
  ∀ n, P16123536593839448847.a n = A073929 (n + 1)

end A073929

/-! ## A073929.P11290685157369995655

`A002251(n+1)+a(n-1)%A002251(n)` with `a(0)=1`
-/

namespace A073929.P11290685157369995655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002251 (n + 1) + Int.tmod (a (n - 1)) (A002251 n)

end

end A073929.P11290685157369995655

namespace A073929

/-- `A002251(n+1)+a(n-1)%A002251(n)` -/
def P11290685157369995655.Spec : Prop :=
  ∀ n, P11290685157369995655.a n = A073929 (n + 1)

end A073929

/-! ## A073929.P5196942184666021129

`A181440(A002251(n+1))`
-/

namespace A073929.P5196942184666021129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A002251 (n + 1)).toNat

end

end A073929.P5196942184666021129

namespace A073929

/-- `A181440(A002251(n+1))` -/
def P5196942184666021129.Spec : Prop :=
  ∀ n, P5196942184666021129.a n = A073929 (n + 1)

end A073929

/-! ## A073929.P5239720015100281838

`A018219(A100542(n+1))`
-/

namespace A073929.P5239720015100281838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018219 (A100542 (n + 1)).toNat

end

end A073929.P5239720015100281838

namespace A073929

/-- `A018219(A100542(n+1))` -/
def P5239720015100281838.Spec : Prop :=
  ∀ n, P5239720015100281838.a n = A073929 (n + 1)

end A073929

/-!
# A073930: Numbers that are equal to the sum of their anti-divisors.

The programs for A073930, there is no canonical definition to state claims against.
-/

/-! ## A073930.P3615461954890678986

`∩[A192272(n+1), A229861(n+1)]`
-/

namespace A073930.P3615461954890678986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073930.P3615461954890678986

/-! ## A073930.P3716590515313307289

`∩[A192272(n+1), A229862(n+1)]`
-/

namespace A073930.P3716590515313307289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073930.P3716590515313307289

/-! ## A073930.P16641889748681263589

`∩[A214842(n+1), A229861(n+1)]`
-/

namespace A073930.P16641889748681263589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229861 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073930.P16641889748681263589

/-! ## A073930.P2857842395265479295

`∩[A214842(n+1), A229862(n+1)]`
-/

namespace A073930.P2857842395265479295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073930.P2857842395265479295

/-! ## A073930.P16038859615045165304

`∩[A229861(n+1), A229862(n+1)]`
-/

namespace A073930.P16038859615045165304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229861 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073930.P16038859615045165304

/-!
# A073932: Define f(n) = n - largest nontrivial divisor of n or f(n) = n-1 if n is a prime [that is, f(n) = A060681(n)]. Form a triangle in which the n-th row contains terms n, f(n), f(f(n)), ... until a 1 is reached; sequence gives triangle read by rows.

The programs for A073932, there is no canonical definition to state claims against.
-/

/-! ## A073932.P17577478402624009338

`A243832(n)!*A082404(n+1)`
-/

namespace A073932.P17577478402624009338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A243832 n).toNat : ℤ) * A082404 (n + 1)

end

end A073932.P17577478402624009338

/-! ## A073932.P18059444240507488773

`A082404(and(1, A001988(n+1))+n)`
-/

namespace A073932.P18059444240507488773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (Int.land 1 (A001988 (n + 1)) + (n : ℤ)).toNat

end

end A073932.P18059444240507488773

/-! ## A073932.P14800110409038293744

`A082404(n+1)+A000007(A094024(n))`
-/

namespace A073932.P14800110409038293744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082404 (n + 1) + A000007 (A094024 n).toNat

end

end A073932.P14800110409038293744

/-! ## A073932.P13556517032181965099

`and(A082404(n+1), A152388(n+1))`
-/

namespace A073932.P13556517032181965099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082404 (n + 1)) (A152388 (n + 1))

end

end A073932.P13556517032181965099

/-! ## A073932.P11678970138809206223

`and(A082404(n+1), A273236(n+1))`
-/

namespace A073932.P11678970138809206223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082404 (n + 1)) (A273236 (n + 1))

end

end A073932.P11678970138809206223

/-!
# A073933: Number of terms in n-th row of triangle in A073932.

The programs for A073933, the canonical program `A073933.P3226346954737411092` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073933 has offset 1).

The definition of A073933 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073933.P3226346954737411092

`1+A064097(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A073933

/-- `1+A064097(n+1)` -/
def P3226346954737411092.Spec : Prop :=
  ∀ n, P3226346954737411092.a n = A073933 (n + 1)

theorem P3226346954737411092.correct : P3226346954737411092.Spec := by
  intro n
  simp only [A073933, Nat.add_sub_cancel]

end A073933

/-! ## A073933.P2898139078842011274

`1+a(A060681(n+1)-1)` with `a(0)=1`
-/

namespace A073933.P2898139078842011274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A060681 (n + 1) - 1).toNat

end

end A073933.P2898139078842011274

namespace A073933

/-- `1+a(A060681(n+1)-1)` -/
def P2898139078842011274.Spec : Prop :=
  ∀ n, (P2898139078842011274.a n : ℤ) = A073933 (n + 1)

end A073933

/-! ## A073933.P13149285028517244968

`A334203(4*(n+1))`
-/

namespace A073933.P13149285028517244968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 (4 * (n + 1))

end

end A073933.P13149285028517244968

namespace A073933

/-- `A334203(4*(n+1))` -/
def P13149285028517244968.Spec : Prop :=
  ∀ n, P13149285028517244968.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P4989076780716631358

`∑[A334090(n+1)]+1`
-/

namespace A073933.P4989076780716631358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073933.P4989076780716631358

namespace A073933

/-- `∑[A334090(n+1)]+1` -/
def P4989076780716631358.Spec : Prop :=
  ∀ n, P4989076780716631358.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P5547956088746112476

`A334203(Δ[n²]+1)+1`
-/

namespace A073933.P5547956088746112476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat + 1

end

end A073933.P5547956088746112476

namespace A073933

/-- `A334203(Δ[n²]+1)+1` -/
def P5547956088746112476.Spec : Prop :=
  ∀ n, P5547956088746112476.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P9767467494185060966

`1+a(A171462(n+1)-1)` with `a(0)=1`
-/

namespace A073933.P9767467494185060966
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (A171462 (n + 1) - 1).toNat

end

end A073933.P9767467494185060966

namespace A073933

/-- `1+a(A171462(n+1)-1)` -/
def P9767467494185060966.Spec : Prop :=
  ∀ n, (P9767467494185060966.a n : ℤ) = A073933 (n + 1)

end A073933

/-! ## A073933.P1943998118234391103

`a(n-A032742(n+1))+1` with `a(0)=1`
-/

namespace A073933.P1943998118234391103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A032742 (n + 1)).toNat + 1

end

end A073933.P1943998118234391103

namespace A073933

/-- `a(n-A032742(n+1))+1` -/
def P1943998118234391103.Spec : Prop :=
  ∀ n, (P1943998118234391103.a n : ℤ) = A073933 (n + 1)

end A073933

/-! ## A073933.P12763579662174830837

`1+a(n-A052126(n+1))` with `a(0)=1`
-/

namespace A073933.P12763579662174830837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + a ((n : ℤ) - A052126 (n + 1)).toNat

end

end A073933.P12763579662174830837

namespace A073933

/-- `1+a(n-A052126(n+1))` -/
def P12763579662174830837.Spec : Prop :=
  ∀ n, (P12763579662174830837.a n : ℤ) = A073933 (n + 1)

end A073933

/-! ## A073933.P10802209521177133371

`a(n-(n+1)/A006530(n+1))+1` with `a(0)=1`
-/

namespace A073933.P10802209521177133371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat + 1

end

end A073933.P10802209521177133371

namespace A073933

/-- `a(n-(n+1)/A006530(n+1))+1` -/
def P10802209521177133371.Spec : Prop :=
  ∀ n, (P10802209521177133371.a n : ℤ) = A073933 (n + 1)

end A073933

/-! ## A073933.P6024353332669242224

`abs(a(n-(n+1)/A020639(n+1))+n+1)-n` with `a(0)=1`
-/

namespace A073933.P6024353332669242224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat + (n + 1 : ℤ)| - (n : ℤ)

end

end A073933.P6024353332669242224

namespace A073933

/-- `abs(a(n-(n+1)/A020639(n+1))+n+1)-n` -/
def P6024353332669242224.Spec : Prop :=
  ∀ n, P6024353332669242224.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P3289628919685469273

`A003313(n+1)+A076142(n+1)+1`
-/

namespace A073933.P3289628919685469273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1) + (A076142 (n + 1) + 1)

end

end A073933.P3289628919685469273

namespace A073933

/-- `A003313(n+1)+A076142(n+1)+1` -/
def P3289628919685469273.Spec : Prop :=
  ∀ n, P3289628919685469273.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P12761421418211454765

`A064415(n+1)+A329697(n+1)+1`
-/

namespace A073933.P12761421418211454765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + (A329697 (n + 1) + 1)

end

end A073933.P12761421418211454765

namespace A073933

/-- `A064415(n+1)+A329697(n+1)+1` -/
def P12761421418211454765.Spec : Prop :=
  ∀ n, P12761421418211454765.a n = A073933 (n + 1)

theorem P12761421418211454765.correct : P12761421418211454765.Spec := by
  intro n
  simp only [A073933, Nat.add_sub_cancel, A073933.P12761421418211454765.a, A073933.P3226346954737411092.a, A064097, A064097.P7596357096388061613.a, A064415, A064415.P3438679109517359530.a, A329697, A329697.P6355568551452954971.a, A060681, A060681.P11747361826650309872.a, A309243, A309243.P2615360336711731693.a, A032742, A032742.P14489579072839730134.a, A171462, A171462.P186066025836437895.a, A020639, A020639.P7578813688609615429.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073933

/-! ## A073933.P8597617419923831192

`A323077(n+1)+A334202(n+1)+1`
-/

namespace A073933.P8597617419923831192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323077 (n + 1) + (A334202 (n + 1) + 1)

end

end A073933.P8597617419923831192

namespace A073933

/-- `A323077(n+1)+A334202(n+1)+1` -/
def P8597617419923831192.Spec : Prop :=
  ∀ n, P8597617419923831192.a n = A073933 (n + 1)

theorem P8597617419923831192.correct : P8597617419923831192.Spec := by
  intro n
  simp only [A073933, Nat.add_sub_cancel, A073933.P8597617419923831192.a, A073933.P3226346954737411092.a, A064097, A064097.P7596357096388061613.a, A323077, A323077.P1062725111045104431.a, A334202, A334202.P7627444287747604241.a, A052126, A052126.P1944428405920482243.a, A060681, A060681.P11747361826650309872.a, A006530, A006530.P13372528560459906635.a, A032742, A032742.P14489579072839730134.a, A020639, A020639.P7578813688609615429.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073933

/-! ## A073933.P6288251758129770535

`A061373(n+1)+1-A054725(n+1)`
-/

namespace A073933.P6288251758129770535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061373 (n + 1) + (1 - A054725 (n + 1))

end

end A073933.P6288251758129770535

namespace A073933

/-- `A061373(n+1)+1-A054725(n+1)` -/
def P6288251758129770535.Spec : Prop :=
  ∀ n, P6288251758129770535.a n = A073933 (n + 1)

theorem P6288251758129770535.correct : P6288251758129770535.Spec := by
  intro n
  simp only [A073933, Nat.add_sub_cancel, A073933.P6288251758129770535.a, A073933.P3226346954737411092.a, A054725, A054725.P13629253926091839604.a, A061373, A061373.P17835350724076642860.a, A064097, A064097.P7596357096388061613.a, A060681, A060681.P11747361826650309872.a, A309243, A309243.P2615360336711731693.a, A032742, A032742.P14489579072839730134.a, A171462, A171462.P186066025836437895.a, A020639, A020639.P7578813688609615429.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073933

/-! ## A073933.P15211605993898499444

`A334863(n+1)+1-A334864(n+1)`
-/

namespace A073933.P15211605993898499444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334863 (n + 1) + (1 - A334864 (n + 1))

end

end A073933.P15211605993898499444

namespace A073933

/-- `A334863(n+1)+1-A334864(n+1)` -/
def P15211605993898499444.Spec : Prop :=
  ∀ n, P15211605993898499444.a n = A073933 (n + 1)

theorem P15211605993898499444.correct : P15211605993898499444.Spec := by
  intro n
  simp only [A073933, Nat.add_sub_cancel, A073933.P15211605993898499444.a, A073933.P3226346954737411092.a, A064097, A064097.P7596357096388061613.a, A334863, A334863.P12100679385437782938.a, A334864, A334864.P1367221112009939634.a, A003961, A003961.P5996473960037614004.a, A060681, A060681.P11747361826650309872.a, A032742, A032742.P14489579072839730134.a, A253885, A253885.P16715555451856890624.a, A020639, A020639.P7578813688609615429.a, A243501, A243501.P10707292738867961998.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073933

/-! ## A073933.P2400755296305264303

`∑[A334195(n+1)+A334091(n+1)]+1`
-/

namespace A073933.P2400755296305264303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1) + A334091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A073933.P2400755296305264303

namespace A073933

/-- `∑[A334195(n+1)+A334091(n+1)]+1` -/
def P2400755296305264303.Spec : Prop :=
  ∀ n, P2400755296305264303.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P14940718055027628597

`A001221(n+1)+a(A000010(n+1)-1)` with `a(0)=1`
-/

namespace A073933.P14940718055027628597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001221 (n + 1) + a (A000010 (n + 1) - 1).toNat

end

end A073933.P14940718055027628597

namespace A073933

/-- `A001221(n+1)+a(A000010(n+1)-1)` -/
def P14940718055027628597.Spec : Prop :=
  ∀ n, P14940718055027628597.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P15609193164830858283

`A329697(n+1)+A334097(n+1)+1-A334862(n+1)`
-/

namespace A073933.P15609193164830858283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (n + 1) + (A334097 (n + 1) + 1 - A334862 (n + 1))

end

end A073933.P15609193164830858283

namespace A073933

/-- `A329697(n+1)+A334097(n+1)+1-A334862(n+1)` -/
def P15609193164830858283.Spec : Prop :=
  ∀ n, P15609193164830858283.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P12594335760466150408

`A064097(A004277(n+1))`
-/

namespace A073933.P12594335760466150408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A004277 (n + 1)).toNat

end

end A073933.P12594335760466150408

namespace A073933

/-- `A064097(A004277(n+1))` -/
def P12594335760466150408.Spec : Prop :=
  ∀ n, P12594335760466150408.a n = A073933 (n + 1)

end A073933

/-! ## A073933.P2957099364388499516

`A064097(A005843(n+1))`
-/

namespace A073933.P2957099364388499516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A005843 (n + 1)).toNat

end

end A073933.P2957099364388499516

namespace A073933

/-- `A064097(A005843(n+1))` -/
def P2957099364388499516.Spec : Prop :=
  ∀ n, P2957099364388499516.a n = A073933 (n + 1)

end A073933

/-!
# A073934: Sum of terms in n-th row of triangle in A073932.

The programs for A073934, the canonical program `A073934.P17540977209768861224` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073934 has offset 1).

The definition of A073934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060681, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073934.P17540977209768861224

`n+1+a(A060681(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A073934

/-- `n+1+a(A060681(n+1)-1)` -/
def P17540977209768861224.Spec : Prop :=
  ∀ n, (P17540977209768861224.a n : ℤ) = A073934 (n + 1)

theorem P17540977209768861224.correct : P17540977209768861224.Spec := by
  intro n
  simp only [A073934, Nat.add_sub_cancel]

end A073934

/-! ## A073934.P1281804927483652278

`a(n-A032742(n+1))+1+n` with `a(0)=1`
-/

namespace A073934.P1281804927483652278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A032742 (n + 1)).toNat + 1 + n

end

end A073934.P1281804927483652278

namespace A073934

/-- `a(n-A032742(n+1))+1+n` -/
def P1281804927483652278.Spec : Prop :=
  ∀ n, (P1281804927483652278.a n : ℤ) = A073934 (n + 1)

theorem P1281804927483652278.correct : P1281804927483652278.Spec := by
  intro n
  simp only [A073934, Nat.add_sub_cancel, A073934.P1281804927483652278.a, A073934.P17540977209768861224.a, A032742, A032742.P14489579072839730134.a, A060681, A060681.P11747361826650309872.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A061395, A061395.P8431317036300486107.a, A158611, A158611.P9275629407611603775.a, A243055, A243055.P2464886309294058059.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073934

/-! ## A073934.P13055458549710971233

`a(n-(n+1)/A020639(n+1))+n+1` with `a(0)=1`
-/

namespace A073934.P13055458549710971233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (n + 1 : ℚ) / (A020639 (n + 1) : ℚ))).toNat + (n + 1)

end

end A073934.P13055458549710971233

namespace A073934

/-- `a(n-(n+1)/A020639(n+1))+n+1` -/
def P13055458549710971233.Spec : Prop :=
  ∀ n, (P13055458549710971233.a n : ℤ) = A073934 (n + 1)

end A073934

/-! ## A073934.P3159287534496008418

`A333794(n+1)-A333793(n+1)`
-/

namespace A073934.P3159287534496008418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333794 (n + 1) - A333793 (n + 1)

end

end A073934.P3159287534496008418

namespace A073934

/-- `A333794(n+1)-A333793(n+1)` -/
def P3159287534496008418.Spec : Prop :=
  ∀ n, P3159287534496008418.a n = A073934 (n + 1)

theorem P3159287534496008418.correct : P3159287534496008418.Spec := by
  intro n
  simp only [A073934, Nat.add_sub_cancel, A073934.P3159287534496008418.a, A073934.P17540977209768861224.a, A060681, A060681.P11747361826650309872.a, A333793, A333793.P11711561047129840571.a, A333794, A333794.P1319636771459117035.a, A032742, A032742.P14489579072839730134.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, A020639, A020639.P7578813688609615429.a, A008578, A008578.P3639467937083264764.a, A055396, A055396.P18305262754425103137.a, A070229, A070229.P5792893597916963980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073934

/-! ## A073934.P4699980136798549217

`A333794(n+1)-∑[A333792(n+1)]`
-/

namespace A073934.P4699980136798549217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333794 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073934.P4699980136798549217

namespace A073934

/-- `A333794(n+1)-∑[A333792(n+1)]` -/
def P4699980136798549217.Spec : Prop :=
  ∀ n, P4699980136798549217.a n = A073934 (n + 1)

end A073934

/-!
# A073935: Numbers n such that the n-th row of triangle in A073932 contains exactly the divisors of n.

The programs for A073935, there is no canonical definition to state claims against.
-/

/-! ## A073935.P12531165387628021755

`filter[A060765(n+1), A168185(#)]`
-/

namespace A073935.P12531165387628021755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A073935.P12531165387628021755

/-! ## A073935.P3092428077252660213

`filter[A140110(n+1), A168185(#)]`
-/

namespace A073935.P3092428077252660213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140110 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A073935.P3092428077252660213

/-! ## A073935.P10546748110131668768

`∩[A060765(n+1), A361232(n+1)]`
-/

namespace A073935.P10546748110131668768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073935.P10546748110131668768

/-! ## A073935.P18128060671276415718

`∩[A124240(n+1), A361232(n+1)]`
-/

namespace A073935.P18128060671276415718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073935.P18128060671276415718

/-! ## A073935.P11536711470871265359

`∩[A140110(n+1), A361232(n+1)]`
-/

namespace A073935.P11536711470871265359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073935.P11536711470871265359

/-!
# A073936: Numbers k such that 2^k + 1 is the product of two distinct primes.

The programs for A073936, there is no canonical definition to state claims against.
-/

/-! ## A073936.P12411477356633310056

`A092559(n+2)`
-/

namespace A073936.P12411477356633310056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 2)

end

end A073936.P12411477356633310056

/-! ## A073936.P5434733825326827347

`record[A092559(or(n, A000038(n)))]`
-/

namespace A073936.P5434733825326827347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073936.P5434733825326827347

/-! ## A073936.P4601881852988987008

`record[A092559(A262672(abs(1-n)))]`
-/

namespace A073936.P4601881852988987008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (A262672 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073936.P4601881852988987008

/-! ## A073936.P8700066182724106455

`or(char[2], A092559(2-A001057(2*n)))`
-/

namespace A073936.P8700066182724106455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A092559 (2 - A001057 (2 * n)).toNat)

end

end A073936.P8700066182724106455

/-! ## A073936.P4687580248748780590

`record[A092559(2-(n%2-A025480(n)))]`
-/

namespace A073936.P4687580248748780590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (2 - (((n % 2 : ℕ) : ℤ) - A025480 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073936.P4687580248748780590

/-! ## A073936.P3513713398714378224

`lcm(A020985(n), A092559(2-A001057(2*n)))`
-/

namespace A073936.P3513713398714378224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A092559 (2 - A001057 (2 * n)).toNat)

end

end A073936.P3513713398714378224

/-! ## A073936.P6710058666734097959

`A007318(∑[n])*A092559(2-A001057(2*n))`
-/

namespace A073936.P6710058666734097959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A092559 (2 - A001057 (2 * n)).toNat

end

end A073936.P6710058666734097959

/-! ## A073936.P2443582550752664671

`A092559(2-A001057(2*n))/A007318(C(2, n))`
-/

namespace A073936.P2443582550752664671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092559 (2 - A001057 (2 * n)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A073936.P2443582550752664671

/-! ## A073936.P17498726020743102323

`A092559(2-A001057(2*n))%∑[6*A000032(n)]`
-/

namespace A073936.P17498726020743102323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092559 (2 - A001057 (2 * n)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073936.P17498726020743102323

/-!
# A073937: a(n) = a(n-1) - a(n-2) + a(n-3) + a(n-4), a(0)=4, a(1)=1, a(2)=-1, a(3)=1.

The programs for A073937, the canonical program `A073937.P18267623462926466979` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073937 has offset 0).

The definition of A073937 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-2)+a(n-3)+a(n-4)` (program `A073937.P18267623462926466979`, by `A073937.P18267623462926466979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A073937.P13975085731829378989

`ogf((4-3x+2x^2-x^3)/(1-x+x^2-x^3-x^4))`
-/

namespace A073937.P13975085731829378989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, 2, -1] [1, -1, 1, -1, -1] n

end

end A073937.P13975085731829378989

namespace A073937

/-- `ogf((4-3x+2x^2-x^3)/(1-x+x^2-x^3-x^4))` -/
def P13975085731829378989.Spec : Prop :=
  ∀ n, P13975085731829378989.a n = A073937 n

end A073937

/-! ## A073937.P18267623462926466979

`a(n-1)-a(n-2)+a(n-3)+a(n-4)` with `a(0)=4, a(1)=1, a(2)=-1, a(3)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A073937

/-- `a(n-1)-a(n-2)+a(n-3)+a(n-4)` -/
def P18267623462926466979.Spec : Prop :=
  ∀ n, P18267623462926466979.a n = A073937 n

theorem P18267623462926466979.correct : P18267623462926466979.Spec := by
  intro n
  simp only [A073937]

end A073937

/-! ## A073937.P14994121403077270431

`(-1)^n*A074058(n)`
-/

namespace A073937.P14994121403077270431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A074058 n

end

end A073937.P14994121403077270431

namespace A073937

/-- `(-1)^n*A074058(n)` -/
def P14994121403077270431.Spec : Prop :=
  ∀ n, P14994121403077270431.a n = A073937 n

end A073937

/-! ## A073937.P7970003859616453791

`A074058(n)*A195017(A000040(n+1))`
-/

namespace A073937.P7970003859616453791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074058 n * A195017 (A000040 (n + 1)).toNat

end

end A073937.P7970003859616453791

namespace A073937

/-- `A074058(n)*A195017(A000040(n+1))` -/
def P7970003859616453791.Spec : Prop :=
  ∀ n, P7970003859616453791.a n = A073937 n

end A073937

/-! ## A073937.P8398835696251115621

`A074058(n)/A074193(n)*A074453(n)`
-/

namespace A073937.P8398835696251115621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074058 n : ℚ) / (A074193 n : ℚ) * (A074453 n : ℚ)

end

end A073937.P8398835696251115621

namespace A073937

/-- `A074058(n)/A074193(n)*A074453(n)` -/
def P8398835696251115621.Spec : Prop :=
  ∀ n, P8398835696251115621.a n = (A073937 n : ℚ)

end A073937

/-! ## A073937.P186414202739941627

`A074058(n)*A074193(n)/A074453(n)`
-/

namespace A073937.P186414202739941627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074058 n * A074193 n : ℚ) / (A074453 n : ℚ)

end

end A073937.P186414202739941627

namespace A073937

/-- `A074058(n)*A074193(n)/A074453(n)` -/
def P186414202739941627.Spec : Prop :=
  ∀ n, P186414202739941627.a n = (A073937 n : ℚ)

end A073937

/-! ## A073937.P16650805695016384159

`A073817(n)*A074058(n)/A074081(n)`
-/

namespace A073937.P16650805695016384159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073817 n * A074058 n : ℚ) / (A074081 n : ℚ)

end

end A073937.P16650805695016384159

namespace A073937

/-- `A073817(n)*A074058(n)/A074081(n)` -/
def P16650805695016384159.Spec : Prop :=
  ∀ n, P16650805695016384159.a n = (A073937 n : ℚ)

end A073937

/-!
# A073938: Numbers n such that A078142(n) = A078142(n+1) = A078142(n+2), where A078142(n) is the sum of the differences of the distinct prime factors p of n and the next square larger than p.

The programs for A073938, there is no canonical definition to state claims against.
-/

/-! ## A073938.P9395027903986670446

`∩[A071247(n+1)-1, A071247(n+1)]`
-/

namespace A073938.P9395027903986670446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071247 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073938.P9395027903986670446

/-!
# A073939: Least m such that A078142(m) gives the n-th prime, where A078142(n) is the sum of the differences of the distinct prime factors p of n and the next square larger than p.

The programs for A073939, there is no canonical definition to state claims against.
-/

/-! ## A073939.P6226921107009721138

`sqrt(A076830(n+1))`
-/

namespace A073939.P6226921107009721138
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076830 (n + 1) : ℝ)

end

end A073939.P6226921107009721138

/-! ## A073939.P8085597178487925053

`root(A076830(root(n+1, 2)²), 2)`
-/

namespace A073939.P8085597178487925053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076830 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A073939.P8085597178487925053

/-! ## A073939.P13136559388312925132

`root(A076830(n+1), 2)%A005718(n)`
-/

namespace A073939.P13136559388312925132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A005718 n)

end

end A073939.P13136559388312925132

/-! ## A073939.P4734164778350369275

`ceil(root(A076830(n+1), 2))%A063258(n)`
-/

namespace A073939.P4734164778350369275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌉ (A063258 n)

end

end A073939.P4734164778350369275

/-! ## A073939.P10879140244832222259

`A000038(n+1)+root(A076830(n+1), 2)`
-/

namespace A073939.P10879140244832222259
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + (A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A073939.P10879140244832222259

/-! ## A073939.P6504379742362503445

`A046665(A000015(n+1))+root(A076830(n+1), 2)`
-/

namespace A073939.P6504379742362503445
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046665 (A000015 (n + 1)).toNat : ℝ) + (A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A073939.P6504379742362503445

/-! ## A073939.P6150064611226581774

`A046665(A006530(n+1))+root(A076830(n+1), 2)`
-/

namespace A073939.P6150064611226581774
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046665 (A006530 (n + 1)).toNat : ℝ) + (A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ))

end

end A073939.P6150064611226581774

/-! ## A073939.P1407861759753830831

`root(A076830(n+1), 2)*A057427(A133819(n+1))`
-/

namespace A073939.P1407861759753830831
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A057427 (A133819 (n + 1)).toNat : ℝ)

end

end A073939.P1407861759753830831

/-! ## A073939.P3809795106192103328

`A007913(root(A076830(n+1), 2))`
-/

namespace A073939.P3809795106192103328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway ((A076830 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A073939.P3809795106192103328

/-!
# A073940: 

The programs for A073940, there is no canonical definition to state claims against.
-/

/-! ## A073940.P13270372583161685256

`14^n²`
-/

namespace A073940.P13270372583161685256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14 ^ n ^ 2

end

end A073940.P13270372583161685256

/-!
# A073941: a(n) = ceiling((Sum_{k=1..n-1} a(k)) / 2) for n >= 2 starting with a(1) = 1.

The programs for A073941, the canonical program `A073941.P15569608911463552460` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073941 has offset 1).

The definition of A073941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081848, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A073941.P15569608911463552460

`A081848(n+1)/3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073941

/-- `A081848(n+1)/3` -/
def P15569608911463552460.Spec : Prop :=
  ∀ n, P15569608911463552460.a n = (A073941 (n + 1) : ℚ)

end A073941

/-! ## A073941.P12942140264252596633

`A005428(abs(1-n))`
-/

namespace A073941.P12942140264252596633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005428 |1 - (n : ℤ)|.toNat

end

end A073941.P12942140264252596633

namespace A073941

/-- `A005428(abs(1-n))` -/
def P12942140264252596633.Spec : Prop :=
  ∀ n, P12942140264252596633.a n = A073941 (n + 1)

end A073941

/-! ## A073941.P13041292302964327373

`A104740(2*n+3)`
-/

namespace A073941.P13041292302964327373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104740 (2 * n + 3)

end

end A073941.P13041292302964327373

namespace A073941

/-- `A104740(2*n+3)` -/
def P13041292302964327373.Spec : Prop :=
  ∀ n, P13041292302964327373.a n = A073941 (n + 1)

end A073941

/-! ## A073941.P6182290963485256738

`Δ[floor(3*a(n-1)/2)]` with `a(0)=1, a(1)=2`
-/

namespace A073941.P6182290963485256738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌊3 * ((f1 (n - 1) : ℚ) / 2)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073941.P6182290963485256738

namespace A073941

/-- `Δ[floor(3*a(n-1)/2)]` -/
def P6182290963485256738.Spec : Prop :=
  ∀ n, P6182290963485256738.a n = A073941 (n + 1)

end A073941

/-! ## A073941.P2751333956746452938

`floor(A003312(n+1)/3)`
-/

namespace A073941.P2751333956746452938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003312 (n + 1) : ℚ) / 3⌋

end

end A073941.P2751333956746452938

namespace A073941

/-- `floor(A003312(n+1)/3)` -/
def P2751333956746452938.Spec : Prop :=
  ∀ n, P2751333956746452938.a n = A073941 (n + 1)

end A073941

/-! ## A073941.P5158321562677531517

`ceil(A061419(n+1)/3)`
-/

namespace A073941.P5158321562677531517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A061419 (n + 1) : ℚ) / 3⌉

end

end A073941.P5158321562677531517

namespace A073941

/-- `ceil(A061419(n+1)/3)` -/
def P5158321562677531517.Spec : Prop :=
  ∀ n, P5158321562677531517.a n = A073941 (n + 1)

end A073941

/-! ## A073941.P17947225158608635693

`round(A061418(n+1)/3)`
-/

namespace A073941.P17947225158608635693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A061418 (n + 1) : ℚ) / 3)

end

end A073941.P17947225158608635693

namespace A073941

/-- `round(A061418(n+1)/3)` -/
def P17947225158608635693.Spec : Prop :=
  ∀ n, P17947225158608635693.a n = A073941 (n + 1)

end A073941

/-! ## A073941.P17822478056764385017

`(A304273(n+1)+A061419(n+1))/3`
-/

namespace A073941.P17822478056764385017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304273 (n + 1) + A061419 (n + 1) : ℚ) / 3

end

end A073941.P17822478056764385017

namespace A073941

/-- `(A304273(n+1)+A061419(n+1))/3` -/
def P17822478056764385017.Spec : Prop :=
  ∀ n, P17822478056764385017.a n = (A073941 (n + 1) : ℚ)

end A073941

/-! ## A073941.P14108857734186029431

`abs(Δ[ceil(3*a(n-1)/2)])` with `a(0)=2, a(1)=1`
-/

namespace A073941.P14108857734186029431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  ⌈(3 * f1 (n - 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A073941.P14108857734186029431

namespace A073941

/-- `abs(Δ[ceil(3*a(n-1)/2)])` -/
def P14108857734186029431.Spec : Prop :=
  ∀ n, P14108857734186029431.a n = A073941 (n + 1)

end A073941

/-!
# A073942: Numbers k such that A002977(k) - A002977(k-1) = 1.

The programs for A073942, there is no canonical definition to state claims against.
-/

/-! ## A073942.P14675571327331316151

`eq[1, A076291(n+1)]+2`
-/

namespace A073942.P14675571327331316151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073942.P14675571327331316151

/-! ## A073942.P14361193322233223259

`record[(n+3)/A076291(n+2)]`
-/

namespace A073942.P14361193322233223259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A076291 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073942.P14361193322233223259

/-! ## A073942.P17882175342008569578

`A009056(eq[1, A076291(n+1)])`
-/

namespace A073942.P17882175342008569578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073942.P17882175342008569578

/-! ## A073942.P14970002882312161556

`eq[1, Δ[A002977(n+1)]]+2`
-/

namespace A073942.P14970002882312161556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073942.P14970002882312161556

/-! ## A073942.P6281832066128400688

`A009056(eq[1, Δ[A002977(n+1)]])`
-/

namespace A073942.P6281832066128400688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A073942.P6281832066128400688

/-! ## A073942.P12578059568952516643

`eq[1, A132138(A002977(n+1)+1)]+2`
-/

namespace A073942.P12578059568952516643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (A002977 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A073942.P12578059568952516643

/-!
# A073943: a(n) = smallest m such that n-th prime divides m^m + 1.

The programs for A073943, there is no canonical definition to state claims against.
-/

/-! ## A073943.P16125784027873413481

`∏{p}[A006005(n+1), A009661(#)]`
-/

namespace A073943.P16125784027873413481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A009661 p

end

end A073943.P16125784027873413481

/-! ## A073943.P530008177593254644

`A009661(A000040(n+1))+C(2, n+2)`
-/

namespace A073943.P530008177593254644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009661 (A000040 (n + 1)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A073943.P530008177593254644

/-! ## A073943.P17847325549757464576

`A009661(record[A006530(n+2)])+C(2, n+2)`
-/

namespace A073943.P17847325549757464576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A073943.P17847325549757464576

/-! ## A073943.P3093728536520278496

`A009661(A000040(n+1))+A000007(n)`
-/

namespace A073943.P3093728536520278496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009661 (A000040 (n + 1)).toNat + A000007 n

end

end A073943.P3093728536520278496

/-! ## A073943.P2293646897804920183

`A009661(record[A006530(n+2)])+A000007(n)`
-/

namespace A073943.P2293646897804920183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A000007 n

end

end A073943.P2293646897804920183

/-! ## A073943.P6095937143369739307

`A335909(2*(n+1))+A009661(record[A006530(n+2)])`
-/

namespace A073943.P6095937143369739307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335909 (2 * (n + 1)) + A009661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A073943.P6095937143369739307

/-! ## A073943.P12169263088960321663

`A009661(p?[A001057(n)])^-A057428(n)`
-/

namespace A073943.P12169263088960321663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009661 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A073943.P12169263088960321663

/-!
# A073944: a(n) is the smallest m such that n-th prime divides m! + 1.

The programs for A073944, there is no canonical definition to state claims against.
-/

/-! ## A073944.P4018326457489333877

`A221861(Δ[A007504(n)])+A000007(n)`
-/

namespace A073944.P4018326457489333877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (f1 (n + 1) - f1 n).toNat + A000007 n

end

end A073944.P4018326457489333877

/-! ## A073944.P15586905309550232453

`A221861(p?[A014681(n)])+A000007(n)`
-/

namespace A073944.P15586905309550232453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A000007 n

end

end A073944.P15586905309550232453

/-! ## A073944.P4895721900241760045

`A221861(A000040(n+1))+A000007(n)`
-/

namespace A073944.P4895721900241760045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A000040 (n + 1)).toNat + A000007 n

end

end A073944.P4895721900241760045

/-! ## A073944.P5715888043301533509

`A221861(A008578(n+2))+A000007(n)`
-/

namespace A073944.P5715888043301533509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A008578 (n + 2)).toNat + A000007 n

end

end A073944.P5715888043301533509

/-! ## A073944.P7938115640376358124

`A221861(A182986(n+2))+A000007(n)`
-/

namespace A073944.P7938115640376358124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (A182986 (n + 2)).toNat + A000007 n

end

end A073944.P7938115640376358124

/-! ## A073944.P17595820231794744755

`A221861(p?[A015919(n+1)])+A000007(n)`
-/

namespace A073944.P17595820231794744755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221861 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A000007 n

end

end A073944.P17595820231794744755

/-!
# A073945: Numbers n such that n + pi(n) is a square.

The programs for A073945, there is no canonical definition to state claims against.
-/

/-! ## A073945.P11079839546861713874

`record[A181642(n²+1)]`
-/

namespace A073945.P11079839546861713874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181642 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073945.P11079839546861713874

/-! ## A073945.P1989368074821826164

`eq[0, A053186(A095117(n))]`
-/

namespace A073945.P1989368074821826164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A095117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073945.P1989368074821826164

/-! ## A073945.P5823554908861413388

`eq[0, A088226(A064427(n+1))]`
-/

namespace A073945.P5823554908861413388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A064427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A073945.P5823554908861413388

/-! ## A073945.P10180213285057784697

`eq[A000007(n), A316649(A095117(n))]`
-/

namespace A073945.P10180213285057784697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A095117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073945.P10180213285057784697

/-! ## A073945.P4296540692730207075

`eq[A057427(n), A316649(A064427(n+1))]`
-/

namespace A073945.P4296540692730207075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316649 (A064427 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A073945.P4296540692730207075

/-!
# A073946: Squares k such that k + pi(k) is a prime.

The programs for A073946, there is no canonical definition to state claims against.
-/

/-! ## A073946.P5001695401238911224

`A113944(n+1)²`
-/

namespace A073946.P5001695401238911224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (n + 1) ^ 2

end

end A073946.P5001695401238911224

/-! ## A073946.P5556530384951316766

`A113944(C(n+1, n))^2`
-/

namespace A073946.P5556530384951316766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (Nat.choose (n + 1) n) ^ 2

end

end A073946.P5556530384951316766

/-! ## A073946.P10136617144146025030

`A113944(ϕ²-(ϕ-n))^2`
-/

namespace A073946.P10136617144146025030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat ^ 2

end

end A073946.P10136617144146025030

/-! ## A073946.P8686275891475781541

`record[A113944(A134478(n))²]`
-/

namespace A073946.P8686275891475781541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073946.P8686275891475781541

/-! ## A073946.P10335976603552059568

`record[A113944(A291766(n))²]`
-/

namespace A073946.P10335976603552059568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (A291766 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073946.P10335976603552059568

/-! ## A073946.P6597594065687521365

`record[A113944(A328399(n))²]`
-/

namespace A073946.P6597594065687521365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (A328399 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073946.P6597594065687521365

/-! ## A073946.P248148509423300875

`A000463(2*A113944(n+1))`
-/

namespace A073946.P248148509423300875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A113944 (n + 1)).toNat

end

end A073946.P248148509423300875

/-! ## A073946.P14024004343386008065

`A000290(A113944(ϕ²-(ϕ-n)))`
-/

namespace A073946.P14024004343386008065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A113944 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat).toNat

end

end A073946.P14024004343386008065

/-! ## A073946.P16605498334809406293

`A113944(ϕ²-(ϕ-n))²*A007318(∑[n])`
-/

namespace A073946.P16605498334809406293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113944 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat ^ 2 * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A073946.P16605498334809406293

/-! ## A073946.P900481491360979590

`(A007318(C(2, n))*A113944(ϕ²-(ϕ-n)))²`
-/

namespace A073946.P900481491360979590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) * A113944 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) ^ 2

end

end A073946.P900481491360979590

/-!
# A073947: Number of strings over Z_3 of length n with trace 0 and subtrace 0.

The programs for A073947, there is no canonical definition to state claims against.
-/

/-! ## A073947.P13586923865578756879

`A073952(n+1)+A057681(n+1)`
-/

namespace A073947.P13586923865578756879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1) + A057681 (n + 1)

end

end A073947.P13586923865578756879

/-! ## A073947.P11227710641615102328

`A103312(n+2)+A073952(n+1)`
-/

namespace A073947.P11227710641615102328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 2) + A073952 (n + 1)

end

end A073947.P11227710641615102328

/-! ## A073947.P10501762156754433877

`A073952(n+1)+Δ[A057682(n+1)]`
-/

namespace A073947.P10501762156754433877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073947.P10501762156754433877

/-! ## A073947.P4604331746270537272

`Δ[A073950(n+1)]-A073952(n+1)`
-/

namespace A073947.P4604331746270537272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073952 (n + 1)

end

end A073947.P4604331746270537272

/-! ## A073947.P11485968717080888621

`A101990(n+1)-2*A073952(n+1)`
-/

namespace A073947.P11485968717080888621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101990 (n + 1) - 2 * A073952 (n + 1)

end

end A073947.P11485968717080888621

/-! ## A073947.P5739481451564047694

`A073950(n+2)-(A073952(n+1)+A073950(n+1))`
-/

namespace A073947.P5739481451564047694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 2) - (A073952 (n + 1) + A073950 (n + 1))

end

end A073947.P5739481451564047694

/-!
# A073948: Number of strings over Z_3 of length n with trace 0 and subtrace 1.

The programs for A073948, there is no canonical definition to state claims against.
-/

/-! ## A073948.P15431016193173907285

`∑[2*A073952(A028310(n))]`
-/

namespace A073948.P15431016193173907285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073952 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073948.P15431016193173907285

/-! ## A073948.P9479201974121725966

`∑[2*A073952(A123108(2*n))]`
-/

namespace A073948.P9479201974121725966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A073952 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073948.P9479201974121725966

/-! ## A073948.P11325001863676563246

`A073950(n+1)-∑[A057681(n)]`
-/

namespace A073948.P11325001863676563246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073948.P11325001863676563246

/-! ## A073948.P2787345296134219764

`A073950(n+1)-A057682(n+1)`
-/

namespace A073948.P2787345296134219764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1) - A057682 (n + 1)

end

end A073948.P2787345296134219764

/-! ## A073948.P17540438058001373654

`A073950(n+1)-∑[A103312(n+1)]`
-/

namespace A073948.P17540438058001373654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073948.P17540438058001373654

/-! ## A073948.P11938439452959853635

`2*(∑[A073952(n+1)]-A073952(n+1))`
-/

namespace A073948.P11938439452959853635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A073952 (n + 1))

end

end A073948.P11938439452959853635

/-! ## A073948.P17567891902037525368

`Δ[A073951(n+1)]-A073950(n+1)`
-/

namespace A073948.P17567891902037525368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073950 (n + 1)

end

end A073948.P17567891902037525368

/-! ## A073948.P7344741763902513576

`A073951(n+2)-(A073951(n+1)+A073950(n+1))`
-/

namespace A073948.P7344741763902513576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 2) - (A073951 (n + 1) + A073950 (n + 1))

end

end A073948.P7344741763902513576

/-!
# A073949: Number of strings over Z_3 of length n with trace 0 and subtrace 2.

The programs for A073949, there is no canonical definition to state claims against.
-/

/-! ## A073949.P18434873869430783150

`A073951(n+1)+∑[A057682(n)]`
-/

namespace A073949.P18434873869430783150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073949.P18434873869430783150

/-! ## A073949.P11645173841941924401

`A073951(n+1)+∑[∑[A103312(n)]]`
-/

namespace A073949.P11645173841941924401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073949.P11645173841941924401

/-! ## A073949.P11510531893636018635

`A073951(n+1)-Δ[A057681(n+1)]`
-/

namespace A073949.P11510531893636018635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1) - (f1 (n + 1) - f1 n)

end

end A073949.P11510531893636018635

/-! ## A073949.P4063920947502208424

`2*(∑[A073950(n+1)]-A073950(n+1))`
-/

namespace A073949.P4063920947502208424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A073950 (n + 1))

end

end A073949.P4063920947502208424

/-! ## A073949.P6459611065314013223

`Δ[A073952(n+1)]-A073951(n+1)`
-/

namespace A073949.P6459611065314013223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073951 (n + 1)

end

end A073949.P6459611065314013223

/-! ## A073949.P4323859800599043567

`A318610(n+1)-2*A073951(n+1)`
-/

namespace A073949.P4323859800599043567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318610 (n + 1) - 2 * A073951 (n + 1)

end

end A073949.P4323859800599043567

/-! ## A073949.P4831770185288863182

`A073952(n+2)-(A073952(n+1)+A073951(n+1))`
-/

namespace A073949.P4831770185288863182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 2) - (A073952 (n + 1) + A073951 (n + 1))

end

end A073949.P4831770185288863182

/-!
# A073950: Number of strings over Z_3 of length n with trace 1 and subtrace 0.

The programs for A073950, there is no canonical definition to state claims against.
-/

/-! ## A073950.P6532102972628337259

`A073948(n+1)+∑[A057681(n)]`
-/

namespace A073950.P6532102972628337259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073950.P6532102972628337259

/-! ## A073950.P6300640818231102615

`A073948(n+1)+A057682(n+1)`
-/

namespace A073950.P6300640818231102615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1) + A057682 (n + 1)

end

end A073950.P6300640818231102615

/-! ## A073950.P11093890047716050750

`A073948(n+1)+∑[A103312(n+1)]`
-/

namespace A073950.P11093890047716050750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073948 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073950.P11093890047716050750

/-! ## A073950.P11840745200590399948

`Δ[A073949(n+1)/2]`
-/

namespace A073950.P11840745200590399948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073949 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073950.P11840745200590399948

/-! ## A073950.P3251919810655087738

`Δ[A073951(n+1)]-A073948(n+1)`
-/

namespace A073950.P3251919810655087738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073948 (n + 1)

end

end A073950.P3251919810655087738

/-! ## A073950.P5256393099481469451

`(A318609(n+1)-A073948(n+1))/2`
-/

namespace A073950.P5256393099481469451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318609 (n + 1) - A073948 (n + 1) : ℚ) / 2

end

end A073950.P5256393099481469451

/-! ## A073950.P3566947674972277966

`A000244(n)-(A073952(n+1)+A073951(n+1))`
-/

namespace A073950.P3566947674972277966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A073952 (n + 1) + A073951 (n + 1))

end

end A073950.P3566947674972277966

/-! ## A073950.P7284514393629316538

`A073951(n+2)-(A073951(n+1)+A073948(n+1))`
-/

namespace A073950.P7284514393629316538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073951 (n + 2) - (A073951 (n + 1) + A073948 (n + 1))

end

end A073950.P7284514393629316538

/-!
# A073951: Number of strings over Z_3 of length n with trace 1 and subtrace 1.

The programs for A073951, there is no canonical definition to state claims against.
-/

/-! ## A073951.P2972446921278353270

`A073949(n+1)-∑[A057682(n)]`
-/

namespace A073951.P2972446921278353270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073951.P2972446921278353270

/-! ## A073951.P8752597721432618551

`A073949(n+1)-∑[∑[A103312(n)]]`
-/

namespace A073951.P8752597721432618551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103312 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A073951.P8752597721432618551

/-! ## A073951.P5874299779565250328

`A073949(n+1)+Δ[A057681(n+1)]`
-/

namespace A073951.P5874299779565250328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073949 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073951.P5874299779565250328

/-! ## A073951.P12920013340455842010

`Δ[A073947(n+1)/2]`
-/

namespace A073951.P12920013340455842010
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073947 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073951.P12920013340455842010

/-! ## A073951.P12395701295400328045

`Δ[A073947(Δ[n²]-n)]/2`
-/

namespace A073951.P12395701295400328045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A073951.P12395701295400328045

/-! ## A073951.P514354077219412982

`Δ[A073952(n+1)]-A073949(n+1)`
-/

namespace A073951.P514354077219412982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073949 (n + 1)

end

end A073951.P514354077219412982

/-! ## A073951.P4880041863240353611

`(A318610(n+1)-A073949(n+1))/2`
-/

namespace A073951.P4880041863240353611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318610 (n + 1) - A073949 (n + 1) : ℚ) / 2

end

end A073951.P4880041863240353611

/-! ## A073951.P17313730795034694410

`A000244(n)-(A073952(n+1)+A073950(n+1))`
-/

namespace A073951.P17313730795034694410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - (A073952 (n + 1) + A073950 (n + 1))

end

end A073951.P17313730795034694410

/-! ## A073951.P16909931525619173766

`A073952(n+2)-(A073952(n+1)+A073949(n+1))`
-/

namespace A073951.P16909931525619173766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073952 (n + 2) - (A073952 (n + 1) + A073949 (n + 1))

end

end A073951.P16909931525619173766

/-!
# A073952: Number of strings over Z_3 of length n with trace 1 and subtrace 2.

The programs for A073952, there is no canonical definition to state claims against.
-/

/-! ## A073952.P4103723708851640391

`A073947(n+1)-A057681(n+1)`
-/

namespace A073952.P4103723708851640391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1) - A057681 (n + 1)

end

end A073952.P4103723708851640391

/-! ## A073952.P3836250114316423805

`A073947(n+1)-A103312(n+2)`
-/

namespace A073952.P3836250114316423805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1) - A103312 (n + 2)

end

end A073952.P3836250114316423805

/-! ## A073952.P12125761342377685814

`A073947(n+1)-Δ[A057682(n+1)]`
-/

namespace A073952.P12125761342377685814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073947 (n + 1) - (f1 (n + 1) - f1 n)

end

end A073952.P12125761342377685814

/-! ## A073952.P15936822762246431608

`Δ[A073948(n+1)/2]`
-/

namespace A073952.P15936822762246431608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073948 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073952.P15936822762246431608

/-! ## A073952.P9446617026475972717

`Δ[A073950(n+1)]-A073947(n+1)`
-/

namespace A073952.P9446617026475972717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A073947 (n + 1)

end

end A073952.P9446617026475972717

/-! ## A073952.P12745211784609891676

`(A101990(n+1)-A073947(n+1))/2`
-/

namespace A073952.P12745211784609891676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101990 (n + 1) - A073947 (n + 1) : ℚ) / 2

end

end A073952.P12745211784609891676

/-! ## A073952.P13418034930380901254

`A073950(n+2)-(A073950(n+1)+A073947(n+1))`
-/

namespace A073952.P13418034930380901254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073950 (n + 2) - (A073950 (n + 1) + A073947 (n + 1))

end

end A073952.P13418034930380901254

/-!
# A073954: Numbers k such that the sum of the anti-divisors of k exceeds 2*k.

The programs for A073954, there is no canonical definition to state claims against.
-/

/-! ## A073954.P12225365593974133300

`lt[2*(n+1), A066417(n+1)]+1`
-/

namespace A073954.P12225365593974133300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A073954.P12225365593974133300

/-! ## A073954.P420824811883860546

`lt[2*n, A066417(A028310(n))]`
-/

namespace A073954.P420824811883860546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073954.P420824811883860546

/-! ## A073954.P223640350213983155

`lt[A005408(n), A066417(A233583(n+1))]`
-/

namespace A073954.P223640350213983155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073954.P223640350213983155

/-! ## A073954.P8468843576698143206

`lt[A047532(n+1), A066417(A233583(n+1))]`
-/

namespace A073954.P8468843576698143206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A073954.P8468843576698143206

/-! ## A073954.P3775670261451997227

`lt[n, A066417(A233583(n+1))-A014681(n)]`
-/

namespace A073954.P3775670261451997227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (A233583 (n + 1)).toNat - A014681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A073954.P3775670261451997227

/-!
# A073956: Palindromes whose sum of anti-divisors is palindromic.

The programs for A073956, there is no canonical definition to state claims against.
-/

/-! ## A073956.P12789013770554863603

`∩[A002113(n+1), A274049(n+1)]`
-/

namespace A073956.P12789013770554863603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073956.P12789013770554863603

/-! ## A073956.P17101223666588557370

`filter[A274049(n+1), A136522(#)]`
-/

namespace A073956.P17101223666588557370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A073956.P17101223666588557370

/-! ## A073956.P13193800335470537280

`∩[A274049(n+1), A056142(n)]`
-/

namespace A073956.P13193800335470537280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A073956.P13193800335470537280

/-!
# A073958: Fibonacci numbers for which the number of prime factors (with multiplicity) is a Fibonacci number.

The programs for A073958, there is no canonical definition to state claims against.
-/

/-! ## A073958.P265959873830697463

`A000045(A329138(n+1))%A118212(n+2)`
-/

namespace A073958.P265959873830697463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (A329138 (n + 1)).toNat) (A118212 (n + 2))

end

end A073958.P265959873830697463

/-! ## A073958.P13827917386364853196

`A000045(A342526(n+2)%A248907(2*(n+1)))`
-/

namespace A073958.P13827917386364853196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A342526 (n + 2)) (A248907 (2 * (n + 1)))).toNat

end

end A073958.P13827917386364853196

/-! ## A073958.P1572327590604395576

`A000045(A329138(n+1)%A329138(3*n+2))`
-/

namespace A073958.P1572327590604395576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A329138 (n + 1)) (A329138 (3 * n + 2))).toNat

end

end A073958.P1572327590604395576

/-! ## A073958.P12021867822425126837

`A000045(A304678(n+2)%A338121(n+3))`
-/

namespace A073958.P12021867822425126837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A304678 (n + 2)) (A338121 (n + 3))).toNat

end

end A073958.P12021867822425126837

/-! ## A073958.P14597430821491010114

`A000045(A329138(n+1)%A074631(n+1))`
-/

namespace A073958.P14597430821491010114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A329138 (n + 1)) (A074631 (n + 1))).toNat

end

end A073958.P14597430821491010114

/-!
# A073960: Number of commuting elements: number of ordered pairs g, h in the group GL(n,2) such that gh = hg.

The programs for A073960, there is no canonical definition to state claims against.
-/

/-! ## A073960.P10188337638925815209

`A002884(n+1)*A006951(n+1)`
-/

namespace A073960.P10188337638925815209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 (n + 1) * A006951 (n + 1)

end

end A073960.P10188337638925815209

/-!
# A073963: Number of strings of length n over Z_5 with trace 0 and subtrace 0.

The programs for A073963, there is no canonical definition to state claims against.
-/

/-! ## A073963.P10056187898112016509

`A063928(5^n)`
-/

namespace A073963.P10056187898112016509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (5 ^ n)

end

end A073963.P10056187898112016509

/-! ## A073963.P9372468970719266302

`filter[A273732(2*n), A156595(#)]`
-/

namespace A073963.P9372468970719266302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273732 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156595 (f1 j).toNat = 1) n)

end

end A073963.P9372468970719266302

/-!
# A073964: Number of strings of length n over Z_5 with trace 0 and subtrace 1.

The programs for A073964, there is no canonical definition to state claims against.
-/

/-! ## A073964.P12634082558003882474

`A028310(A074008(n+1))-A022078(n)`
-/

namespace A073964.P12634082558003882474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A074008 (n + 1)).toNat - A022078 n

end

end A073964.P12634082558003882474

/-! ## A073964.P4367745843006592339

`A289435(or(1, A030934(n+1)))`
-/

namespace A073964.P4367745843006592339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (Int.lor 1 (A030934 (n + 1))).toNat

end

end A073964.P4367745843006592339

/-!
# A073965: Number of strings of length n over Z_5 with trace 0 and subtrace 2.

The programs for A073965, there is no canonical definition to state claims against.
-/

/-! ## A073965.P13447356541649058227

`A004526(A074007(n+1)*A143393(n+1))`
-/

namespace A073965.P13447356541649058227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A074007 (n + 1) * A143393 (n + 1)).toNat

end

end A073965.P13447356541649058227

/-! ## A073965.P82287097682284679

`A004525(A074007(n+1))*A020649(n+3)`
-/

namespace A073965.P82287097682284679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A074007 (n + 1)).toNat * A020649 (n + 3)

end

end A073965.P82287097682284679

/-! ## A073965.P5738983129346281712

`A115384(A020649(n+3)*A074007(n+1))`
-/

namespace A073965.P5738983129346281712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (A020649 (n + 3) * A074007 (n + 1)).toNat

end

end A073965.P5738983129346281712

/-!
# A073966: Number of strings of length n over Z_5 with trace 1 and subtrace 0.

The programs for A073966, there is no canonical definition to state claims against.
-/

/-! ## A073966.P16115908169912590224

`record[gcd((n+1)², A008930(n))]`
-/

namespace A073966.P16115908169912590224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 2 : ℤ) (A008930 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A073966.P16115908169912590224

/-! ## A073966.P1634907484816159376

`A356015(n+1)-A010051(A168603(n))`
-/

namespace A073966.P1634907484816159376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356015 (n + 1) - A010051 (A168603 n).toNat

end

end A073966.P1634907484816159376

/-!
# A073967: Number of strings of length n over Z_5 with trace 1 and subtrace 1.

The programs for A073967, there is no canonical definition to state claims against.
-/

/-! ## A073967.P549758362359671192

`Δ[A073963(n+1)/4]`
-/

namespace A073967.P549758362359671192
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073963 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073967.P549758362359671192

/-! ## A073967.P1294647035051497115

`Δ[A003602(A073963(n+1)+1)]`
-/

namespace A073967.P1294647035051497115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A073963 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073967.P1294647035051497115

/-!
# A073968: Number of strings of length n over Z_5 with trace 1 and subtrace 2.

The programs for A073968, there is no canonical definition to state claims against.
-/

/-! ## A073968.P17383307180311701775

`A346622(A000010(5^n))`
-/

namespace A073968.P17383307180311701775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346622 (A000010 (5 ^ n)).toNat

end

end A073968.P17383307180311701775

/-! ## A073968.P1821817007794323263

`A074013(n+1)%A002821(A001147(n))`
-/

namespace A073968.P1821817007794323263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074013 (n + 1)) (A002821 (A001147 n).toNat)

end

end A073968.P1821817007794323263

/-!
# A073969: Number of strings of length n over Z_5 with trace 1 and subtrace 3.

The programs for A073969, there is no canonical definition to state claims against.
-/

/-! ## A073969.P4247201841703090413

`A154721(A364739(n))+A074010(n+1)`
-/

namespace A073969.P4247201841703090413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154721 (A364739 n).toNat + A074010 (n + 1)

end

end A073969.P4247201841703090413

/-! ## A073969.P4624258685462938372

`A019461(2*n+1)-A067513(A360584(n))`
-/

namespace A073969.P4624258685462938372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019461 (2 * n + 1) - A067513 (A360584 n).toNat

end

end A073969.P4624258685462938372

/-!
# A073970: Number of strings of length n over Z_5 with trace 1 and subtrace 4.

The programs for A073970, there is no canonical definition to state claims against.
-/

/-! ## A073970.P15100546268206479464

`A002264(A087443(n)*A149914(n))`
-/

namespace A073970.P15100546268206479464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A087443 n * A149914 n).toNat

end

end A073970.P15100546268206479464

/-! ## A073970.P2019124048407870860

`A110657(A002378(n)*A085633(n+1))`
-/

namespace A073970.P2019124048407870860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A002378 n * A085633 (n + 1)).toNat

end

end A073970.P2019124048407870860

/-!
# A073971: Number of strings of length n over Z_6 with trace 0 and subtrace 0.

The programs for A073971, there is no canonical definition to state claims against.
-/

/-! ## A073971.P3909044688194369421

`A038503(n+1)*A073947(n+1)`
-/

namespace A073971.P3909044688194369421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A073947 (n + 1)

end

end A073971.P3909044688194369421

/-! ## A073971.P1881437943198351395

`A073989(n+1)+A073992(n+1)-A073974(n+1)`
-/

namespace A073971.P1881437943198351395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073989 (n + 1) + (A073992 (n + 1) - A073974 (n + 1))

end

end A073971.P1881437943198351395

/-! ## A073971.P6753934381478219207

`A073983(n+1)/A073977(n+1)*A073989(n+1)`
-/

namespace A073971.P6753934381478219207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073983 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073971.P6753934381478219207

/-!
# A073972: Number of strings of length n over Z_6 with trace 0 and subtrace 1.

The programs for A073972, there is no canonical definition to state claims against.
-/

/-! ## A073972.P8112412119967860858

`∑[A038504(n)]*A073948(n+1)`
-/

namespace A073972.P8112412119967860858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073948 (n + 1)

end

end A073972.P8112412119967860858

/-! ## A073972.P5946006797365147564

`A038505(n+1)*A073948(n+1)`
-/

namespace A073972.P5946006797365147564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) * A073948 (n + 1)

end

end A073972.P5946006797365147564

/-! ## A073972.P17044011268350270153

`A073948(n+1)/A073947(n+1)*A073974(n+1)`
-/

namespace A073972.P17044011268350270153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073948 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073974 (n + 1) : ℚ)

end

end A073972.P17044011268350270153

/-! ## A073972.P1511700554572886770

`A073974(n+1)/A073971(n+1)*A073975(n+1)`
-/

namespace A073972.P1511700554572886770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073974 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073975 (n + 1) : ℚ)

end

end A073972.P1511700554572886770

/-! ## A073972.P1194867565442053121

`A073975(n+1)/A073983(n+1)*A073986(n+1)`
-/

namespace A073972.P1194867565442053121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073975 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073986 (n + 1) : ℚ)

end

end A073972.P1194867565442053121

/-!
# A073973: Number of strings of length n over Z_6 with trace 0 and subtrace 2.

The programs for A073973, there is no canonical definition to state claims against.
-/

/-! ## A073973.P17644106061058520258

`A038503(n+1)*A073949(n+1)`
-/

namespace A073973.P17644106061058520258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A073949 (n + 1)

end

end A073973.P17644106061058520258

/-! ## A073973.P9699827970175138183

`A073991(n+1)+A073994(n+1)-A073976(n+1)`
-/

namespace A073973.P9699827970175138183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073991 (n + 1) + (A073994 (n + 1) - A073976 (n + 1))

end

end A073973.P9699827970175138183

/-! ## A073973.P15710244905599468353

`A073949(n+1)/A073947(n+1)*A073971(n+1)`
-/

namespace A073973.P15710244905599468353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073949 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073971 (n + 1) : ℚ)

end

end A073973.P15710244905599468353

/-! ## A073973.P15035058527893385067

`A073971(n+1)/A073989(n+1)*A073991(n+1)`
-/

namespace A073973.P15035058527893385067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073989 (n + 1) : ℚ) * (A073991 (n + 1) : ℚ)

end

end A073973.P15035058527893385067

/-! ## A073973.P11819779156878640309

`A073983(n+1)/A073977(n+1)*A073991(n+1)`
-/

namespace A073973.P11819779156878640309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073983 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073991 (n + 1) : ℚ)

end

end A073973.P11819779156878640309

/-!
# A073974: Number of strings of length n over Z_6 with trace 0 and subtrace 3.

The programs for A073974, there is no canonical definition to state claims against.
-/

/-! ## A073974.P1992611265517578736

`∑[A038504(n)]*A073947(n+1)`
-/

namespace A073974.P1992611265517578736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073947 (n + 1)

end

end A073974.P1992611265517578736

/-! ## A073974.P4566547183207369142

`A038505(n+1)*A073947(n+1)`
-/

namespace A073974.P4566547183207369142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) * A073947 (n + 1)

end

end A073974.P4566547183207369142

/-! ## A073974.P16472611996851887950

`A073986(n+1)/A073977(n+1)*A073989(n+1)`
-/

namespace A073974.P16472611996851887950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073986 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073974.P16472611996851887950

/-! ## A073974.P6529222656894512895

`A073989(n+1)+A073992(n+1)-A073971(n+1)`
-/

namespace A073974.P6529222656894512895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073989 (n + 1) + (A073992 (n + 1) - A073971 (n + 1))

end

end A073974.P6529222656894512895

/-! ## A073974.P568516616666352858

`A073971(n+1)/A073983(n+1)*A073986(n+1)`
-/

namespace A073974.P568516616666352858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073986 (n + 1) : ℚ)

end

end A073974.P568516616666352858

/-!
# A073975: Number of strings of length n over Z_6 with trace 0 and subtrace 4.

The programs for A073975, there is no canonical definition to state claims against.
-/

/-! ## A073975.P4265675451274258914

`A038503(n+1)*A073948(n+1)`
-/

namespace A073975.P4265675451274258914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A073948 (n + 1)

end

end A073975.P4265675451274258914

/-! ## A073975.P9643830021367099080

`Δ[A038504(n+1)]*A073948(n+1)`
-/

namespace A073975.P9643830021367099080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073948 (n + 1)

end

end A073975.P9643830021367099080

/-! ## A073975.P6033221760170769118

`A073990(n+1)+A073993(n+1)-A073972(n+1)`
-/

namespace A073975.P6033221760170769118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073990 (n + 1) + (A073993 (n + 1) - A073972 (n + 1))

end

end A073975.P6033221760170769118

/-! ## A073975.P13658209766687608722

`A073948(n+1)/A073947(n+1)*A073971(n+1)`
-/

namespace A073975.P13658209766687608722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073948 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073971 (n + 1) : ℚ)

end

end A073975.P13658209766687608722

/-! ## A073975.P706900798624942811

`A073983(n+1)/A073977(n+1)*A073993(n+1)`
-/

namespace A073975.P706900798624942811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073983 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073993 (n + 1) : ℚ)

end

end A073975.P706900798624942811

/-!
# A073976: Number of strings of length n over Z_6 with trace 0 and subtrace 5.

The programs for A073976, there is no canonical definition to state claims against.
-/

/-! ## A073976.P9440823073284864812

`∑[A038504(n)]*A073949(n+1)`
-/

namespace A073976.P9440823073284864812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073949 (n + 1)

end

end A073976.P9440823073284864812

/-! ## A073976.P16536299355320362103

`A038505(n+1)*A073949(n+1)`
-/

namespace A073976.P16536299355320362103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) * A073949 (n + 1)

end

end A073976.P16536299355320362103

/-! ## A073976.P7093976801942882073

`A073991(n+1)+A073994(n+1)-A073973(n+1)`
-/

namespace A073976.P7093976801942882073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073991 (n + 1) + (A073994 (n + 1) - A073973 (n + 1))

end

end A073976.P7093976801942882073

/-! ## A073976.P12140802482900707007

`A073986(n+1)/A073977(n+1)*A073991(n+1)`
-/

namespace A073976.P12140802482900707007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073986 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073991 (n + 1) : ℚ)

end

end A073976.P12140802482900707007

/-! ## A073976.P5721793512345552401

`A073973(n+1)/A073971(n+1)*A073974(n+1)`
-/

namespace A073976.P5721793512345552401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073973 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073974 (n + 1) : ℚ)

end

end A073976.P5721793512345552401

/-!
# A073977: Number of strings of length n over Z_6 with trace 1 and subtrace 0.

The programs for A073977, there is no canonical definition to state claims against.
-/

/-! ## A073977.P611463857115889045

`∑[A038503(n)]*A073950(n+1)`
-/

namespace A073977.P611463857115889045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073950 (n + 1)

end

end A073977.P611463857115889045

/-! ## A073977.P7693633902966078591

`A038504(n+1)*A073950(n+1)`
-/

namespace A073977.P7693633902966078591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A073950 (n + 1)

end

end A073977.P7693633902966078591

/-! ## A073977.P7467082127331925394

`A073983(n+1)+A073986(n+1)-A073980(n+1)`
-/

namespace A073977.P7467082127331925394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073983 (n + 1) + (A073986 (n + 1) - A073980 (n + 1))

end

end A073977.P7467082127331925394

/-! ## A073977.P7570927352101753739

`A073983(n+1)/A073971(n+1)*A073989(n+1)`
-/

namespace A073977.P7570927352101753739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073983 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073977.P7570927352101753739

/-! ## A073977.P5299684242465365635

`A004526(A131885(n+1))*A073950(n+1)`
-/

namespace A073977.P5299684242465365635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131885 (n + 1)).toNat * A073950 (n + 1)

end

end A073977.P5299684242465365635

/-!
# A073978: Number of strings of length n over Z_6 with trace 1 and subtrace 1.

The programs for A073978, there is no canonical definition to state claims against.
-/

/-! ## A073978.P2804748827932993136

`∑[A038505(n)]*A073951(n+1)`
-/

namespace A073978.P2804748827932993136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073951 (n + 1)

end

end A073978.P2804748827932993136

/-! ## A073978.P9129026829935545242

`A000749(n+1)*A073951(n+1)`
-/

namespace A073978.P9129026829935545242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A073951 (n + 1)

end

end A073978.P9129026829935545242

/-! ## A073978.P12601165338167379350

`A073951(n+1)/A073950(n+1)*A073980(n+1)`
-/

namespace A073978.P12601165338167379350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073951 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073980 (n + 1) : ℚ)

end

end A073978.P12601165338167379350

/-! ## A073978.P860995323052858515

`A073980(n+1)/A073977(n+1)*A073981(n+1)`
-/

namespace A073978.P860995323052858515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073980 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073981 (n + 1) : ℚ)

end

end A073978.P860995323052858515

/-! ## A073978.P8666733135825306763

`A073984(n+1)+A073987(n+1)-A073981(n+1)`
-/

namespace A073978.P8666733135825306763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073984 (n + 1) + (A073987 (n + 1) - A073981 (n + 1))

end

end A073978.P8666733135825306763

/-!
# A073979: Number of strings of length n over Z_6 with trace 1 and subtrace 2.

The programs for A073979, there is no canonical definition to state claims against.
-/

/-! ## A073979.P16224005610624613625

`∑[A038503(n)]*A073952(n+1)`
-/

namespace A073979.P16224005610624613625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073952 (n + 1)

end

end A073979.P16224005610624613625

/-! ## A073979.P14469346214737062968

`A038504(n+1)*A073952(n+1)`
-/

namespace A073979.P14469346214737062968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A073952 (n + 1)

end

end A073979.P14469346214737062968

/-! ## A073979.P17892405246596127267

`A073952(n+1)/A073950(n+1)*A073977(n+1)`
-/

namespace A073979.P17892405246596127267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073952 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073979.P17892405246596127267

/-! ## A073979.P2751153196229215241

`A073985(n+1)/A073971(n+1)*A073989(n+1)`
-/

namespace A073979.P2751153196229215241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073985 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073979.P2751153196229215241

/-! ## A073979.P15323236536649626074

`A073985(n+1)+A073988(n+1)-A073982(n+1)`
-/

namespace A073979.P15323236536649626074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073985 (n + 1) + (A073988 (n + 1) - A073982 (n + 1))

end

end A073979.P15323236536649626074

/-!
# A073980: Number of strings of length n over Z_6 with trace 1 and subtrace 3.

The programs for A073980, there is no canonical definition to state claims against.
-/

/-! ## A073980.P2382431239726227078

`∑[A038505(n)]*A073950(n+1)`
-/

namespace A073980.P2382431239726227078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073950 (n + 1)

end

end A073980.P2382431239726227078

/-! ## A073980.P7520573280983791242

`A000749(n+1)*A073950(n+1)`
-/

namespace A073980.P7520573280983791242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A073950 (n + 1)

end

end A073980.P7520573280983791242

/-! ## A073980.P700961831832206977

`A073977(n+1)/A073989(n+1)*A073992(n+1)`
-/

namespace A073980.P700961831832206977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073977 (n + 1) : ℚ) / (A073989 (n + 1) : ℚ) * (A073992 (n + 1) : ℚ)

end

end A073980.P700961831832206977

/-! ## A073980.P12276691000961457745

`A073983(n+1)+A073986(n+1)-A073977(n+1)`
-/

namespace A073980.P12276691000961457745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073983 (n + 1) + (A073986 (n + 1) - A073977 (n + 1))

end

end A073980.P12276691000961457745

/-! ## A073980.P17219242499219941678

`A073983(n+1)/A073971(n+1)*A073992(n+1)`
-/

namespace A073980.P17219242499219941678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073983 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073992 (n + 1) : ℚ)

end

end A073980.P17219242499219941678

/-!
# A073981: Number of strings of length n over Z_6 with trace 1 and subtrace 4.

The programs for A073981, there is no canonical definition to state claims against.
-/

/-! ## A073981.P16516923392794905912

`∑[A038503(n)]*A073951(n+1)`
-/

namespace A073981.P16516923392794905912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073951 (n + 1)

end

end A073981.P16516923392794905912

/-! ## A073981.P9296780195673051911

`A038504(n+1)*A073951(n+1)`
-/

namespace A073981.P9296780195673051911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A073951 (n + 1)

end

end A073981.P9296780195673051911

/-! ## A073981.P3678753968252097515

`Δ[A038505(n+1)]*A073951(n+1)`
-/

namespace A073981.P3678753968252097515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073951 (n + 1)

end

end A073981.P3678753968252097515

/-! ## A073981.P3149091601055302499

`A073951(n+1)/A073950(n+1)*A073977(n+1)`
-/

namespace A073981.P3149091601055302499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073951 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073981.P3149091601055302499

/-! ## A073981.P3768911595228880580

`A073984(n+1)+A073987(n+1)-A073978(n+1)`
-/

namespace A073981.P3768911595228880580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073984 (n + 1) + (A073987 (n + 1) - A073978 (n + 1))

end

end A073981.P3768911595228880580

/-!
# A073982: Number of strings of length n over Z_6 with trace 1 and subtrace 5.

The programs for A073982, there is no canonical definition to state claims against.
-/

/-! ## A073982.P2458693424368292359

`∑[A038505(n)]*A073952(n+1)`
-/

namespace A073982.P2458693424368292359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073952 (n + 1)

end

end A073982.P2458693424368292359

/-! ## A073982.P9941670931165325015

`A000749(n+1)*A073952(n+1)`
-/

namespace A073982.P9941670931165325015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A073952 (n + 1)

end

end A073982.P9941670931165325015

/-! ## A073982.P12889837889156189864

`A073979(n+1)/A073977(n+1)*A073980(n+1)`
-/

namespace A073982.P12889837889156189864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073979 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073980 (n + 1) : ℚ)

end

end A073982.P12889837889156189864

/-! ## A073982.P11071449135141737791

`A073980(n+1)/A073983(n+1)*A073985(n+1)`
-/

namespace A073982.P11071449135141737791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073980 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073985 (n + 1) : ℚ)

end

end A073982.P11071449135141737791

/-! ## A073982.P414399823006908374

`A073985(n+1)/A073971(n+1)*A073992(n+1)`
-/

namespace A073982.P414399823006908374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073985 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073992 (n + 1) : ℚ)

end

end A073982.P414399823006908374

/-!
# A073983: Number of strings of length n over Z_6 with trace 2 and subtrace 0.

The programs for A073983, there is no canonical definition to state claims against.
-/

/-! ## A073983.P13865570433087704772

`A038503(n+1)*A073950(n+1)`
-/

namespace A073983.P13865570433087704772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A073950 (n + 1)

end

end A073983.P13865570433087704772

/-! ## A073983.P6536252573112557652

`A073977(n+1)+A073980(n+1)-A073986(n+1)`
-/

namespace A073983.P6536252573112557652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073977 (n + 1) + (A073980 (n + 1) - A073986 (n + 1))

end

end A073983.P6536252573112557652

/-! ## A073983.P9338131260923269814

`A073950(n+1)/A073947(n+1)*A073971(n+1)`
-/

namespace A073983.P9338131260923269814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073950 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073971 (n + 1) : ℚ)

end

end A073983.P9338131260923269814

/-! ## A073983.P16260884919515867322

`A073971(n+1)/A073989(n+1)*A073977(n+1)`
-/

namespace A073983.P16260884919515867322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073989 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073983.P16260884919515867322

/-!
# A073984: Number of strings of length n over Z_6 with trace 2 and subtrace 1.

The programs for A073984, there is no canonical definition to state claims against.
-/

/-! ## A073984.P14637097805785923916

`∑[A038504(n)]*A073951(n+1)`
-/

namespace A073984.P14637097805785923916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073951 (n + 1)

end

end A073984.P14637097805785923916

/-! ## A073984.P17704438837647446672

`A038505(n+1)*A073951(n+1)`
-/

namespace A073984.P17704438837647446672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) * A073951 (n + 1)

end

end A073984.P17704438837647446672

/-! ## A073984.P8384811656975199614

`A073978(n+1)+A073981(n+1)-A073987(n+1)`
-/

namespace A073984.P8384811656975199614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073978 (n + 1) + (A073981 (n + 1) - A073987 (n + 1))

end

end A073984.P8384811656975199614

/-! ## A073984.P5432137053142996358

`A073951(n+1)/A073947(n+1)*A073974(n+1)`
-/

namespace A073984.P5432137053142996358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073951 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073974 (n + 1) : ℚ)

end

end A073984.P5432137053142996358

/-! ## A073984.P8599501979120379111

`A073986(n+1)/A073983(n+1)*A073987(n+1)`
-/

namespace A073984.P8599501979120379111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073986 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073987 (n + 1) : ℚ)

end

end A073984.P8599501979120379111

/-!
# A073985: Number of strings of length n over Z_6 with trace 2 and subtrace 2.

The programs for A073985, there is no canonical definition to state claims against.
-/

/-! ## A073985.P10257124234431092665

`A038503(n+1)*A073952(n+1)`
-/

namespace A073985.P10257124234431092665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A073952 (n + 1)

end

end A073985.P10257124234431092665

/-! ## A073985.P8971587146567773736

`A073952(n+1)/A073947(n+1)*A073971(n+1)`
-/

namespace A073985.P8971587146567773736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073952 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073971 (n + 1) : ℚ)

end

end A073985.P8971587146567773736

/-! ## A073985.P15899393775951618076

`A073971(n+1)/A073989(n+1)*A073979(n+1)`
-/

namespace A073985.P15899393775951618076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073989 (n + 1) : ℚ) * (A073979 (n + 1) : ℚ)

end

end A073985.P15899393775951618076

/-! ## A073985.P2158632714074764125

`A073979(n+1)/A073977(n+1)*A073983(n+1)`
-/

namespace A073985.P2158632714074764125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073979 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073983 (n + 1) : ℚ)

end

end A073985.P2158632714074764125

/-! ## A073985.P14652927071586959407

`A073979(n+1)+A073982(n+1)-A073988(n+1)`
-/

namespace A073985.P14652927071586959407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073979 (n + 1) + (A073982 (n + 1) - A073988 (n + 1))

end

end A073985.P14652927071586959407

/-!
# A073986: Number of strings of length n over Z_6 with trace 2 and subtrace 3.

The programs for A073986, there is no canonical definition to state claims against.
-/

/-! ## A073986.P9797193306133706014

`∑[A038504(n)]*A073950(n+1)`
-/

namespace A073986.P9797193306133706014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073950 (n + 1)

end

end A073986.P9797193306133706014

/-! ## A073986.P6146531908763535915

`A038505(n+1)*A073950(n+1)`
-/

namespace A073986.P6146531908763535915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) * A073950 (n + 1)

end

end A073986.P6146531908763535915

/-! ## A073986.P7087740861263362608

`A073950(n+1)/A073947(n+1)*A073974(n+1)`
-/

namespace A073986.P7087740861263362608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073950 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073974 (n + 1) : ℚ)

end

end A073986.P7087740861263362608

/-! ## A073986.P5863768578804991634

`A073974(n+1)/A073989(n+1)*A073977(n+1)`
-/

namespace A073986.P5863768578804991634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073974 (n + 1) : ℚ) / (A073989 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073986.P5863768578804991634

/-! ## A073986.P4975622842730642868

`A073977(n+1)+A073980(n+1)-A073983(n+1)`
-/

namespace A073986.P4975622842730642868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073977 (n + 1) + (A073980 (n + 1) - A073983 (n + 1))

end

end A073986.P4975622842730642868

/-!
# A073987: Number of strings of length n over Z_6 with trace 2 and subtrace 4.

The programs for A073987, there is no canonical definition to state claims against.
-/

/-! ## A073987.P1165543545574682536

`A038503(n+1)*A073951(n+1)`
-/

namespace A073987.P1165543545574682536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A073951 (n + 1)

end

end A073987.P1165543545574682536

/-! ## A073987.P12350928204958535588

`A073951(n+1)/A073947(n+1)*A073971(n+1)`
-/

namespace A073987.P12350928204958535588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073951 (n + 1) : ℚ) / (A073947 (n + 1) : ℚ) * (A073971 (n + 1) : ℚ)

end

end A073987.P12350928204958535588

/-! ## A073987.P17586082061475781398

`A073971(n+1)/A073989(n+1)*A073981(n+1)`
-/

namespace A073987.P17586082061475781398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073989 (n + 1) : ℚ) * (A073981 (n + 1) : ℚ)

end

end A073987.P17586082061475781398

/-! ## A073987.P14209526105880096675

`A073981(n+1)/A073977(n+1)*A073983(n+1)`
-/

namespace A073987.P14209526105880096675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073981 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073983 (n + 1) : ℚ)

end

end A073987.P14209526105880096675

/-! ## A073987.P3457387630922209760

`A073978(n+1)+A073981(n+1)-A073984(n+1)`
-/

namespace A073987.P3457387630922209760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073978 (n + 1) + (A073981 (n + 1) - A073984 (n + 1))

end

end A073987.P3457387630922209760

/-!
# A073988: Number of strings of length n over Z_6 with trace 2 and subtrace 5.

The programs for A073988, there is no canonical definition to state claims against.
-/

/-! ## A073988.P9541577845566226140

`∑[A038504(n)]*A073952(n+1)`
-/

namespace A073988.P9541577845566226140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073952 (n + 1)

end

end A073988.P9541577845566226140

/-! ## A073988.P15734744513423272977

`A038505(n+1)*A073952(n+1)`
-/

namespace A073988.P15734744513423272977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) * A073952 (n + 1)

end

end A073988.P15734744513423272977

/-! ## A073988.P16893445265056385437

`A073979(n+1)/A073977(n+1)*A073986(n+1)`
-/

namespace A073988.P16893445265056385437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073979 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073986 (n + 1) : ℚ)

end

end A073988.P16893445265056385437

/-! ## A073988.P4178076857816654831

`A073974(n+1)/A073971(n+1)*A073985(n+1)`
-/

namespace A073988.P4178076857816654831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073974 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073985 (n + 1) : ℚ)

end

end A073988.P4178076857816654831

/-! ## A073988.P3607372528473277755

`A073979(n+1)+A073982(n+1)-A073985(n+1)`
-/

namespace A073988.P3607372528473277755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073979 (n + 1) + (A073982 (n + 1) - A073985 (n + 1))

end

end A073988.P3607372528473277755

/-!
# A073989: Number of strings of length n over Z_6 with trace 3 and subtrace 0.

The programs for A073989, there is no canonical definition to state claims against.
-/

/-! ## A073989.P5015558115631019842

`∑[A038503(n)]*A073947(n+1)`
-/

namespace A073989.P5015558115631019842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073947 (n + 1)

end

end A073989.P5015558115631019842

/-! ## A073989.P1033584742503993956

`A038504(n+1)*A073947(n+1)`
-/

namespace A073989.P1033584742503993956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A073947 (n + 1)

end

end A073989.P1033584742503993956

/-! ## A073989.P7246459489025907788

`A073947(n+1)/A073950(n+1)*A073977(n+1)`
-/

namespace A073989.P7246459489025907788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073947 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073989.P7246459489025907788

/-! ## A073989.P13253175341534952379

`A073971(n+1)+A073974(n+1)-A073992(n+1)`
-/

namespace A073989.P13253175341534952379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073971 (n + 1) + (A073974 (n + 1) - A073992 (n + 1))

end

end A073989.P13253175341534952379

/-! ## A073989.P3468398690602350315

`A073971(n+1)/A073983(n+1)*A073977(n+1)`
-/

namespace A073989.P3468398690602350315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073989.P3468398690602350315

/-!
# A073990: Number of strings of length n over Z_6 with trace 3 and subtrace 1.

The programs for A073990, there is no canonical definition to state claims against.
-/

/-! ## A073990.P6375142338507343702

`∑[A038505(n)]*A073948(n+1)`
-/

namespace A073990.P6375142338507343702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073948 (n + 1)

end

end A073990.P6375142338507343702

/-! ## A073990.P17225978314339704068

`A000749(n+1)*A073948(n+1)`
-/

namespace A073990.P17225978314339704068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A073948 (n + 1)

end

end A073990.P17225978314339704068

/-! ## A073990.P14763886366145360161

`A073948(n+1)/A073950(n+1)*A073980(n+1)`
-/

namespace A073990.P14763886366145360161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073948 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073980 (n + 1) : ℚ)

end

end A073990.P14763886366145360161

/-! ## A073990.P11434046336702660317

`A073975(n+1)/A073971(n+1)*A073992(n+1)`
-/

namespace A073990.P11434046336702660317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073975 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073992 (n + 1) : ℚ)

end

end A073990.P11434046336702660317

/-! ## A073990.P3933630589606889307

`A073975(n+1)/A073983(n+1)*A073980(n+1)`
-/

namespace A073990.P3933630589606889307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073975 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073980 (n + 1) : ℚ)

end

end A073990.P3933630589606889307

/-!
# A073991: Number of strings of length n over Z_6 with trace 3 and subtrace 2.

The programs for A073991, there is no canonical definition to state claims against.
-/

/-! ## A073991.P1387142001456051681

`∑[A038503(n)]*A073949(n+1)`
-/

namespace A073991.P1387142001456051681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073949 (n + 1)

end

end A073991.P1387142001456051681

/-! ## A073991.P860099101518459937

`A038504(n+1)*A073949(n+1)`
-/

namespace A073991.P860099101518459937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A073949 (n + 1)

end

end A073991.P860099101518459937

/-! ## A073991.P11726433862889333215

`A073973(n+1)+A073976(n+1)-A073994(n+1)`
-/

namespace A073991.P11726433862889333215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073973 (n + 1) + (A073976 (n + 1) - A073994 (n + 1))

end

end A073991.P11726433862889333215

/-! ## A073991.P11406505475376340936

`A073949(n+1)/A073950(n+1)*A073977(n+1)`
-/

namespace A073991.P11406505475376340936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073949 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073991.P11406505475376340936

/-! ## A073991.P1941339462590237361

`A073973(n+1)/A073971(n+1)*A073989(n+1)`
-/

namespace A073991.P1941339462590237361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073973 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073991.P1941339462590237361

/-!
# A073992: Number of strings of length n over Z_6 with trace 3 and subtrace 3.

The programs for A073992, there is no canonical definition to state claims against.
-/

/-! ## A073992.P7491797558936794958

`∑[A038505(n)]*A073947(n+1)`
-/

namespace A073992.P7491797558936794958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073947 (n + 1)

end

end A073992.P7491797558936794958

/-! ## A073992.P10583191996545286857

`A000749(n+1)*A073947(n+1)`
-/

namespace A073992.P10583191996545286857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A073947 (n + 1)

end

end A073992.P10583191996545286857

/-! ## A073992.P12018059409781315022

`A073980(n+1)/A073977(n+1)*A073989(n+1)`
-/

namespace A073992.P12018059409781315022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073980 (n + 1) : ℚ) / (A073977 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073992.P12018059409781315022

/-! ## A073992.P11388974112633346097

`A073971(n+1)+A073974(n+1)-A073989(n+1)`
-/

namespace A073992.P11388974112633346097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073971 (n + 1) + (A073974 (n + 1) - A073989 (n + 1))

end

end A073992.P11388974112633346097

/-! ## A073992.P5122970392424661632

`A073971(n+1)/A073983(n+1)*A073980(n+1)`
-/

namespace A073992.P5122970392424661632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073971 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073980 (n + 1) : ℚ)

end

end A073992.P5122970392424661632

/-!
# A073993: Number of strings of length n over Z_6 with trace 3 and subtrace 4.

The programs for A073993, there is no canonical definition to state claims against.
-/

/-! ## A073993.P9457307023448244186

`∑[A038503(n)]*A073948(n+1)`
-/

namespace A073993.P9457307023448244186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073948 (n + 1)

end

end A073993.P9457307023448244186

/-! ## A073993.P8304929318831196852

`A038504(n+1)*A073948(n+1)`
-/

namespace A073993.P8304929318831196852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A073948 (n + 1)

end

end A073993.P8304929318831196852

/-! ## A073993.P3528406479616729186

`A073948(n+1)/A073950(n+1)*A073977(n+1)`
-/

namespace A073993.P3528406479616729186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073948 (n + 1) : ℚ) / (A073950 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073993.P3528406479616729186

/-! ## A073993.P233886155622720033

`A073975(n+1)/A073971(n+1)*A073989(n+1)`
-/

namespace A073993.P233886155622720033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073975 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073989 (n + 1) : ℚ)

end

end A073993.P233886155622720033

/-! ## A073993.P8323120781297557006

`A073975(n+1)/A073983(n+1)*A073977(n+1)`
-/

namespace A073993.P8323120781297557006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073975 (n + 1) : ℚ) / (A073983 (n + 1) : ℚ) * (A073977 (n + 1) : ℚ)

end

end A073993.P8323120781297557006

/-!
# A073994: Number of strings of length n over Z_6 with trace 3 and subtrace 5.

The programs for A073994, there is no canonical definition to state claims against.
-/

/-! ## A073994.P1886596193206531347

`∑[A038505(n)]*A073949(n+1)`
-/

namespace A073994.P1886596193206531347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A073949 (n + 1)

end

end A073994.P1886596193206531347

/-! ## A073994.P12934998753896133906

`A000749(n+1)*A073949(n+1)`
-/

namespace A073994.P12934998753896133906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A073949 (n + 1)

end

end A073994.P12934998753896133906

/-! ## A073994.P6789803046109019092

`Δ[A038503(n+1)]*A073949(n+1)`
-/

namespace A073994.P6789803046109019092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A073949 (n + 1)

end

end A073994.P6789803046109019092

/-! ## A073994.P1397899102976099879

`A073973(n+1)+A073976(n+1)-A073991(n+1)`
-/

namespace A073994.P1397899102976099879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073973 (n + 1) + (A073976 (n + 1) - A073991 (n + 1))

end

end A073994.P1397899102976099879

/-! ## A073994.P2131113772296982578

`A073973(n+1)/A073971(n+1)*A073992(n+1)`
-/

namespace A073994.P2131113772296982578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073973 (n + 1) : ℚ) / (A073971 (n + 1) : ℚ) * (A073992 (n + 1) : ℚ)

end

end A073994.P2131113772296982578

/-!
# A073995: Number of strings of length n over GF(4) with trace 0 and subtrace 0.

The programs for A073995, the canonical program `A073995.P1846185900125942284` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073995 has offset 1).

The definition of A073995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073995.P1846185900125942284

`A073996(n+1)+A090132(n)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073995

/-- `A073996(n+1)+A090132(n)²` -/
def P1846185900125942284.Spec : Prop :=
  ∀ n, P1846185900125942284.a n = A073995 (n + 1)

theorem P1846185900125942284.correct : P1846185900125942284.Spec := by
  intro n
  simp only [A073995, Nat.add_sub_cancel]

end A073995

/-! ## A073995.P13944719927564293456

`A073997(n+1)+Δ[A009116(n)²]`
-/

namespace A073995.P13944719927564293456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) + (f1 (n + 1) - f1 n)

end

end A073995.P13944719927564293456

namespace A073995

/-- `A073997(n+1)+Δ[A009116(n)²]` -/
def P13944719927564293456.Spec : Prop :=
  ∀ n, P13944719927564293456.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P16164942314618366255

`A073996(n+1)+A009116(n+1)²`
-/

namespace A073995.P16164942314618366255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A009116 (n + 1) ^ 2

end

end A073995.P16164942314618366255

namespace A073995

/-- `A073996(n+1)+A009116(n+1)²` -/
def P16164942314618366255.Spec : Prop :=
  ∀ n, P16164942314618366255.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P2346322522651113512

`3*(A073999(n+1)-A006095(n))+1`
-/

namespace A073995.P2346322522651113512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A073999 (n + 1) - A006095 n) + 1

end

end A073995.P2346322522651113512

namespace A073995

/-- `3*(A073999(n+1)-A006095(n))+1` -/
def P2346322522651113512.Spec : Prop :=
  ∀ n, P2346322522651113512.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P11776307294786074547

`A090132(n)²+A073997(n+1)-A009116(n)²`
-/

namespace A073995.P11776307294786074547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + (A073997 (n + 1) - A009116 n ^ 2)

end

end A073995.P11776307294786074547

namespace A073995

/-- `A090132(n)²+A073997(n+1)-A009116(n)²` -/
def P11776307294786074547.Spec : Prop :=
  ∀ n, P11776307294786074547.a n = A073995 (n + 1)

theorem P11776307294786074547.correct : P11776307294786074547.Spec := by
  intro n
  simp only [A073995, Nat.add_sub_cancel, A073995.P11776307294786074547.a, A073995.P1846185900125942284.a, A009116, A009116.P721434042884447878.a, A073996, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A073997, A073997.P4523075487907254813.a, A090132, A090132.P12173721879526071538.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A146559, A146559.P10823798363315330489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073995

/-! ## A073995.P15998144249737921818

`A090132(n)²+∑[A038504(n)]*A038503(n+1)`
-/

namespace A073995.P15998144249737921818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) * A038503 (n + 1)

end

end A073995.P15998144249737921818

namespace A073995

/-- `A090132(n)²+∑[A038504(n)]*A038503(n+1)` -/
def P15998144249737921818.Spec : Prop :=
  ∀ n, P15998144249737921818.a n = A073995 (n + 1)

theorem P15998144249737921818.correct : P15998144249737921818.Spec := by
  intro n
  simp only [A073995, Nat.add_sub_cancel, A073995.P15998144249737921818.f1, A073995.P15998144249737921818.a, A073995.P1846185900125942284.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A073996, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A090132, A090132.P12173721879526071538.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073995

/-! ## A073995.P3158874083112886445

`A090132(n)²+A038518(n+1)*A038519(n+1)`
-/

namespace A073995.P3158874083112886445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + A038518 (n + 1) * A038519 (n + 1)

end

end A073995.P3158874083112886445

namespace A073995

/-- `A090132(n)²+A038518(n+1)*A038519(n+1)` -/
def P3158874083112886445.Spec : Prop :=
  ∀ n, P3158874083112886445.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P6566824825811708984

`A090132(n)²+(A009545(n)+A000749(n+1))*A038503(n+1)`
-/

namespace A073995.P6566824825811708984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + (A009545 n + A000749 (n + 1)) * A038503 (n + 1)

end

end A073995.P6566824825811708984

namespace A073995

/-- `A090132(n)²+(A009545(n)+A000749(n+1))*A038503(n+1)` -/
def P6566824825811708984.Spec : Prop :=
  ∀ n, P6566824825811708984.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P1411152964132333723

`A090132(n)²+(A000079(n)-A038503(n+1))*A038503(n+1)`
-/

namespace A073995.P1411152964132333723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + (A000079 n - A038503 (n + 1)) * A038503 (n + 1)

end

end A073995.P1411152964132333723

namespace A073995

/-- `A090132(n)²+(A000079(n)-A038503(n+1))*A038503(n+1)` -/
def P1411152964132333723.Spec : Prop :=
  ∀ n, P1411152964132333723.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P16236301918909507817

`A090132(n)²+(A038519(n+1)-A009116(n+1))*A038519(n+1)`
-/

namespace A073995.P16236301918909507817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + (A038519 (n + 1) - A009116 (n + 1)) * A038519 (n + 1)

end

end A073995.P16236301918909507817

namespace A073995

/-- `A090132(n)²+(A038519(n+1)-A009116(n+1))*A038519(n+1)` -/
def P16236301918909507817.Spec : Prop :=
  ∀ n, P16236301918909507817.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P17926873665512721344

`A090132(n)²+(A011782(n+1)-A038503(n+1))*A038503(n+1)`
-/

namespace A073995.P17926873665512721344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090132 n ^ 2 + (A011782 (n + 1) - A038503 (n + 1)) * A038503 (n + 1)

end

end A073995.P17926873665512721344

namespace A073995

/-- `A090132(n)²+(A011782(n+1)-A038503(n+1))*A038503(n+1)` -/
def P17926873665512721344.Spec : Prop :=
  ∀ n, P17926873665512721344.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P7817290348425506070

`A000302(n)-3*A073996(n+1)`
-/

namespace A073995.P7817290348425506070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - 3 * A073996 (n + 1)

end

end A073995.P7817290348425506070

namespace A073995

/-- `A000302(n)-3*A073996(n+1)` -/
def P7817290348425506070.Spec : Prop :=
  ∀ n, P7817290348425506070.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P9811101072306457840

`A073997(n+2)-Δ[A073996(n+1)]`
-/

namespace A073995.P9811101072306457840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 2) - (f1 (n + 1) - f1 n)

end

end A073995.P9811101072306457840

namespace A073995

/-- `A073997(n+2)-Δ[A073996(n+1)]` -/
def P9811101072306457840.Spec : Prop :=
  ∀ n, P9811101072306457840.a n = A073995 (n + 1)

end A073995

/-! ## A073995.P911557392396331124

`A073996(n+1)+A073997(n+2)-A073996(n+2)`
-/

namespace A073995.P911557392396331124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + (A073997 (n + 2) - A073996 (n + 2))

end

end A073995.P911557392396331124

namespace A073995

/-- `A073996(n+1)+A073997(n+2)-A073996(n+2)` -/
def P911557392396331124.Spec : Prop :=
  ∀ n, P911557392396331124.a n = A073995 (n + 1)

end A073995

/-!
# A073996: Number of strings of length n over GF(4) with trace 0 and subtrace 1.

The programs for A073996, the canonical program `A073996.P17359561944595902144` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073996 has offset 1).

The definition of A073996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073996.P16262852266076979373

`A073997(n+1)-A009116(n)²`
-/

namespace A073996.P16262852266076979373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) - A009116 n ^ 2

end

end A073996.P16262852266076979373

namespace A073996

/-- `A073997(n+1)-A009116(n)²` -/
def P16262852266076979373.Spec : Prop :=
  ∀ n, P16262852266076979373.a n = A073996 (n + 1)

theorem P16262852266076979373.correct : P16262852266076979373.Spec := by
  intro n
  simp only [A073996, Nat.add_sub_cancel, A073996.P16262852266076979373.a, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A009116, A009116.P721434042884447878.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A073997, A073997.P4523075487907254813.a, A146559, A146559.P10823798363315330489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073996

/-! ## A073996.P11196568524841291312

`A073998(n+1)-A009545(n)²`
-/

namespace A073996.P11196568524841291312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073998 (n + 1) - A009545 n ^ 2

end

end A073996.P11196568524841291312

namespace A073996

/-- `A073998(n+1)-A009545(n)²` -/
def P11196568524841291312.Spec : Prop :=
  ∀ n, P11196568524841291312.a n = A073996 (n + 1)

theorem P11196568524841291312.correct : P11196568524841291312.Spec := by
  intro n
  simp only [A073996, Nat.add_sub_cancel, A073996.P11196568524841291312.a, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A009545, A009545.P3649878572304201088.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A073998, A073998.P13650005313177628228.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073996

/-! ## A073996.P11577097752790205927

`A073995(n+1)-A090132(n)²`
-/

namespace A073996.P11577097752790205927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073995 (n + 1) - A090132 n ^ 2

end

end A073996.P11577097752790205927

namespace A073996

/-- `A073995(n+1)-A090132(n)²` -/
def P11577097752790205927.Spec : Prop :=
  ∀ n, P11577097752790205927.a n = A073996 (n + 1)

theorem P11577097752790205927.correct : P11577097752790205927.Spec := by
  intro n
  simp only [A073996, Nat.add_sub_cancel, A073996.P11577097752790205927.a, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A073995, A073995.P1846185900125942284.a, A090132, A090132.P12173721879526071538.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073996

/-! ## A073996.P8241960061833603822

`A073997(n+1)-A146559(n)²`
-/

namespace A073996.P8241960061833603822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) - A146559 n ^ 2

end

end A073996.P8241960061833603822

namespace A073996

/-- `A073997(n+1)-A146559(n)²` -/
def P8241960061833603822.Spec : Prop :=
  ∀ n, P8241960061833603822.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P17359561944595902144

`∑[A038504(n)]*A038503(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A073996

/-- `∑[A038504(n)]*A038503(n+1)` -/
def P17359561944595902144.Spec : Prop :=
  ∀ n, P17359561944595902144.a n = A073996 (n + 1)

theorem P17359561944595902144.correct : P17359561944595902144.Spec := by
  intro n
  simp only [A073996, Nat.add_sub_cancel]

end A073996

/-! ## A073996.P7139188749411906674

`A038503(n+1)*A038505(n+1)`
-/

namespace A073996.P7139188749411906674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1) * A038505 (n + 1)

end

end A073996.P7139188749411906674

namespace A073996

/-- `A038503(n+1)*A038505(n+1)` -/
def P7139188749411906674.Spec : Prop :=
  ∀ n, P7139188749411906674.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P6899013702381267940

`A038518(n+1)*A038519(n+1)`
-/

namespace A073996.P6899013702381267940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) * A038519 (n + 1)

end

end A073996.P6899013702381267940

namespace A073996

/-- `A038518(n+1)*A038519(n+1)` -/
def P6899013702381267940.Spec : Prop :=
  ∀ n, P6899013702381267940.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P9964534152316885280

`Δ[A038504(n+1)]*A038505(n+1)`
-/

namespace A073996.P9964534152316885280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038505 (n + 1)

end

end A073996.P9964534152316885280

namespace A073996

/-- `Δ[A038504(n+1)]*A038505(n+1)` -/
def P9964534152316885280.Spec : Prop :=
  ∀ n, P9964534152316885280.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P5379630579339905799

`A073999(n+1)+and(2, n+2)^n-A009116(n)²`
-/

namespace A073996.P5379630579339905799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (n + 1) + (Nat.land 2 (n + 2) ^ n : ℤ) - A009116 n ^ 2

end

end A073996.P5379630579339905799

namespace A073996

/-- `A073999(n+1)+and(2, n+2)^n-A009116(n)²` -/
def P5379630579339905799.Spec : Prop :=
  ∀ n, P5379630579339905799.a n = A073996 (n + 1)

theorem P5379630579339905799.correct : P5379630579339905799.Spec := by
  intro n
  simp only [A073996, Nat.add_sub_cancel, A073996.P5379630579339905799.a, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A009116, A009116.P721434042884447878.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A073999, A073999.P12976610018167318063.a, A073997, A073997.P4523075487907254813.a, A146559, A146559.P10823798363315330489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073996

/-! ## A073996.P3310692840960355624

`(A038521(n)+A038518(n))*A038518(n+1)`
-/

namespace A073996.P3310692840960355624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038521 n + A038518 n) * A038518 (n + 1)

end

end A073996.P3310692840960355624

namespace A073996

/-- `(A038521(n)+A038518(n))*A038518(n+1)` -/
def P3310692840960355624.Spec : Prop :=
  ∀ n, P3310692840960355624.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P11134504309653191326

`(A038520(n)+A038519(n))*A038519(n+1)`
-/

namespace A073996.P11134504309653191326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038520 n + A038519 n) * A038519 (n + 1)

end

end A073996.P11134504309653191326

namespace A073996

/-- `(A038520(n)+A038519(n))*A038519(n+1)` -/
def P11134504309653191326.Spec : Prop :=
  ∀ n, P11134504309653191326.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P3163974423092715437

`(A009545(n)+A000749(n+1))*A038503(n+1)`
-/

namespace A073996.P3163974423092715437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009545 n + A000749 (n + 1)) * A038503 (n + 1)

end

end A073996.P3163974423092715437

namespace A073996

/-- `(A009545(n)+A000749(n+1))*A038503(n+1)` -/
def P3163974423092715437.Spec : Prop :=
  ∀ n, P3163974423092715437.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P2018414344244865719

`(A000079(n)-A038503(n+1))*A038503(n+1)`
-/

namespace A073996.P2018414344244865719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A038503 (n + 1)) * A038503 (n + 1)

end

end A073996.P2018414344244865719

namespace A073996

/-- `(A000079(n)-A038503(n+1))*A038503(n+1)` -/
def P2018414344244865719.Spec : Prop :=
  ∀ n, P2018414344244865719.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P639186399120648745

`(A000079(n)-A038505(n+1))*A038505(n+1)`
-/

namespace A073996.P639186399120648745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A038505 (n + 1)) * A038505 (n + 1)

end

end A073996.P639186399120648745

namespace A073996

/-- `(A000079(n)-A038505(n+1))*A038505(n+1)` -/
def P639186399120648745.Spec : Prop :=
  ∀ n, P639186399120648745.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P15540968184115796980

`(A000079(n)-A038518(n+1))*A038518(n+1)`
-/

namespace A073996.P15540968184115796980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A038518 (n + 1)) * A038518 (n + 1)

end

end A073996.P15540968184115796980

namespace A073996

/-- `(A000079(n)-A038518(n+1))*A038518(n+1)` -/
def P15540968184115796980.Spec : Prop :=
  ∀ n, P15540968184115796980.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P14179807891674655389

`(A000079(n)-A038519(n+1))*A038519(n+1)`
-/

namespace A073996.P14179807891674655389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A038519 (n + 1)) * A038519 (n + 1)

end

end A073996.P14179807891674655389

namespace A073996

/-- `(A000079(n)-A038519(n+1))*A038519(n+1)` -/
def P14179807891674655389.Spec : Prop :=
  ∀ n, P14179807891674655389.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P9958248697332250211

`(A038504(n+1)-A009545(n))*A038505(n+1)`
-/

namespace A073996.P9958248697332250211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038504 (n + 1) - A009545 n) * A038505 (n + 1)

end

end A073996.P9958248697332250211

namespace A073996

/-- `(A038504(n+1)-A009545(n))*A038505(n+1)` -/
def P9958248697332250211.Spec : Prop :=
  ∀ n, P9958248697332250211.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P5117617206590476446

`(A038518(n+1)+A009116(n+1))*A038518(n+1)`
-/

namespace A073996.P5117617206590476446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038518 (n + 1) + A009116 (n + 1)) * A038518 (n + 1)

end

end A073996.P5117617206590476446

namespace A073996

/-- `(A038518(n+1)+A009116(n+1))*A038518(n+1)` -/
def P5117617206590476446.Spec : Prop :=
  ∀ n, P5117617206590476446.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P7029507144686798061

`(A146559(n+1)+A038505(n+1))*A038505(n+1)`
-/

namespace A073996.P7029507144686798061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A146559 (n + 1) + A038505 (n + 1)) * A038505 (n + 1)

end

end A073996.P7029507144686798061

namespace A073996

/-- `(A146559(n+1)+A038505(n+1))*A038505(n+1)` -/
def P7029507144686798061.Spec : Prop :=
  ∀ n, P7029507144686798061.a n = A073996 (n + 1)

end A073996

/-! ## A073996.P11124859975972452488

`(A038519(n+1)-A009116(n+1))*A038519(n+1)`
-/

namespace A073996.P11124859975972452488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038519 (n + 1) - A009116 (n + 1)) * A038519 (n + 1)

end

end A073996.P11124859975972452488

namespace A073996

/-- `(A038519(n+1)-A009116(n+1))*A038519(n+1)` -/
def P11124859975972452488.Spec : Prop :=
  ∀ n, P11124859975972452488.a n = A073996 (n + 1)

end A073996

/-!
# A073997: Number of strings of length n over GF(4) with trace 1 and subtrace 0.

The programs for A073997, the canonical program `A073997.P4523075487907254813` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073997 has offset 1).

The definition of A073997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073997.P9855123517997271052

`A073999(n+1)+and(2, n+2)^n`
-/

namespace A073997.P9855123517997271052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (n + 1) + (Nat.land 2 (n + 2) ^ n : ℤ)

end

end A073997.P9855123517997271052

namespace A073997

/-- `A073999(n+1)+and(2, n+2)^n` -/
def P9855123517997271052.Spec : Prop :=
  ∀ n, P9855123517997271052.a n = A073997 (n + 1)

theorem P9855123517997271052.correct : P9855123517997271052.Spec := by
  intro n
  simp only [A073997, Nat.add_sub_cancel, A073997.P9855123517997271052.a, A073997.P4523075487907254813.a, A009116, A009116.P721434042884447878.a, A073996, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A073999, A073999.P12976610018167318063.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A146559, A146559.P10823798363315330489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073997

/-! ## A073997.P4844088032944092890

`A108474(n)+A073999(n+1)`
-/

namespace A073997.P4844088032944092890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108474 n + A073999 (n + 1)

end

end A073997.P4844088032944092890

namespace A073997

/-- `A108474(n)+A073999(n+1)` -/
def P4844088032944092890.Spec : Prop :=
  ∀ n, P4844088032944092890.a n = A073997 (n + 1)

end A073997

/-! ## A073997.P4523075487907254813

`A073996(n+1)+A009116(n)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073997

/-- `A073996(n+1)+A009116(n)²` -/
def P4523075487907254813.Spec : Prop :=
  ∀ n, P4523075487907254813.a n = A073997 (n + 1)

theorem P4523075487907254813.correct : P4523075487907254813.Spec := by
  intro n
  simp only [A073997, Nat.add_sub_cancel]

end A073997

/-! ## A073997.P5876040970482215788

`A073996(n+1)+A146559(n)²`
-/

namespace A073997.P5876040970482215788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073996 (n + 1) + A146559 n ^ 2

end

end A073997.P5876040970482215788

namespace A073997

/-- `A073996(n+1)+A146559(n)²` -/
def P5876040970482215788.Spec : Prop :=
  ∀ n, P5876040970482215788.a n = A073997 (n + 1)

end A073997

/-! ## A073997.P12793627808553078580

`A073998(n+1)+A009116(2*n)`
-/

namespace A073997.P12793627808553078580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073998 (n + 1) + A009116 (2 * n)

end

end A073997.P12793627808553078580

namespace A073997

/-- `A073998(n+1)+A009116(2*n)` -/
def P12793627808553078580.Spec : Prop :=
  ∀ n, P12793627808553078580.a n = A073997 (n + 1)

end A073997

/-! ## A073997.P13148925453543780703

`A108474(n)+∑[A038503(n)]*A000749(n+1)`
-/

namespace A073997.P13148925453543780703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108474 n + (∑ j ∈ Finset.range (n + 1), f1 j) * A000749 (n + 1)

end

end A073997.P13148925453543780703

namespace A073997

/-- `A108474(n)+∑[A038503(n)]*A000749(n+1)` -/
def P13148925453543780703.Spec : Prop :=
  ∀ n, P13148925453543780703.a n = A073997 (n + 1)

end A073997

/-! ## A073997.P14480130984002681300

`A073998(n+1)+A073996(n+2)-A073999(n+2)`
-/

namespace A073997.P14480130984002681300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073998 (n + 1) + (A073996 (n + 2) - A073999 (n + 2))

end

end A073997.P14480130984002681300

namespace A073997

/-- `A073998(n+1)+A073996(n+2)-A073999(n+2)` -/
def P14480130984002681300.Spec : Prop :=
  ∀ n, P14480130984002681300.a n = A073997 (n + 1)

end A073997

/-! ## A073997.P15787025360616040572

`A038520(2*n+1)-A038503(n+1)*A038505(n+1)`
-/

namespace A073997.P15787025360616040572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (2 * n + 1) - A038503 (n + 1) * A038505 (n + 1)

end

end A073997.P15787025360616040572

namespace A073997

/-- `A038520(2*n+1)-A038503(n+1)*A038505(n+1)` -/
def P15787025360616040572.Spec : Prop :=
  ∀ n, P15787025360616040572.a n = A073997 (n + 1)

end A073997

/-! ## A073997.P3663406790089250580

`A038504(2*n+1)-A038518(n+1)*A038519(n+1)`
-/

namespace A073997.P3663406790089250580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (2 * n + 1) - A038518 (n + 1) * A038519 (n + 1)

end

end A073997.P3663406790089250580

namespace A073997

/-- `A038504(2*n+1)-A038518(n+1)*A038519(n+1)` -/
def P3663406790089250580.Spec : Prop :=
  ∀ n, P3663406790089250580.a n = A073997 (n + 1)

end A073997

/-!
# A073998: Number of strings of length n over GF(4) with trace 1 and subtrace 1.

The programs for A073998, the canonical program `A073998.P13650005313177628228` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073998 has offset 1).

The definition of A073998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073998.P13650005313177628228

`A073996(n+1)+A009545(n)²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A073998

/-- `A073996(n+1)+A009545(n)²` -/
def P13650005313177628228.Spec : Prop :=
  ∀ n, P13650005313177628228.a n = A073998 (n + 1)

theorem P13650005313177628228.correct : P13650005313177628228.Spec := by
  intro n
  simp only [A073998, Nat.add_sub_cancel]

end A073998

/-! ## A073998.P11428459319512366303

`A073997(n+1)-A009116(2*n)`
-/

namespace A073998.P11428459319512366303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) - A009116 (2 * n)

end

end A073998.P11428459319512366303

namespace A073998

/-- `A073997(n+1)-A009116(2*n)` -/
def P11428459319512366303.Spec : Prop :=
  ∀ n, P11428459319512366303.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P2379188322106265276

`A073997(n+1)-A146559(2*n)`
-/

namespace A073998.P2379188322106265276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) - A146559 (2 * n)

end

end A073998.P2379188322106265276

namespace A073998

/-- `A073997(n+1)-A146559(2*n)` -/
def P2379188322106265276.Spec : Prop :=
  ∀ n, P2379188322106265276.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P11194060197160257654

`A009545(n)²+A073997(n+1)-A009116(n)²`
-/

namespace A073998.P11194060197160257654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A073997 (n + 1) - A009116 n ^ 2)

end

end A073998.P11194060197160257654

namespace A073998

/-- `A009545(n)²+A073997(n+1)-A009116(n)²` -/
def P11194060197160257654.Spec : Prop :=
  ∀ n, P11194060197160257654.a n = A073998 (n + 1)

theorem P11194060197160257654.correct : P11194060197160257654.Spec := by
  intro n
  simp only [A073998, Nat.add_sub_cancel, A073998.P11194060197160257654.a, A073998.P13650005313177628228.a, A009116, A009116.P721434042884447878.a, A009545, A009545.P3649878572304201088.a, A073996, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, A073997, A073997.P4523075487907254813.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A146559, A146559.P10823798363315330489.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073998

/-! ## A073998.P11948026042135167591

`A009545(n)²+∑[A038504(n)]*A038503(n+1)`
-/

namespace A073998.P11948026042135167591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) * A038503 (n + 1)

end

end A073998.P11948026042135167591

namespace A073998

/-- `A009545(n)²+∑[A038504(n)]*A038503(n+1)` -/
def P11948026042135167591.Spec : Prop :=
  ∀ n, P11948026042135167591.a n = A073998 (n + 1)

theorem P11948026042135167591.correct : P11948026042135167591.Spec := by
  intro n
  simp only [A073998, Nat.add_sub_cancel, A073998.P11948026042135167591.f1, A073998.P11948026042135167591.a, A073998.P13650005313177628228.a, A009545, A009545.P3649878572304201088.a, A038503, A038503.P6100478724578909006.a, A038504, A038504.P339107708639265369.a, A073996, A073996.P17359561944595902144.f1, A073996.P17359561944595902144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A073998

/-! ## A073998.P10799691750925347400

`A009545(n)²+A038503(n+1)*A038505(n+1)`
-/

namespace A073998.P10799691750925347400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + A038503 (n + 1) * A038505 (n + 1)

end

end A073998.P10799691750925347400

namespace A073998

/-- `A009545(n)²+A038503(n+1)*A038505(n+1)` -/
def P10799691750925347400.Spec : Prop :=
  ∀ n, P10799691750925347400.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P14698502637118686066

`A009545(n)²+A038518(n+1)*A038519(n+1)`
-/

namespace A073998.P14698502637118686066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + A038518 (n + 1) * A038519 (n + 1)

end

end A073998.P14698502637118686066

namespace A073998

/-- `A009545(n)²+A038518(n+1)*A038519(n+1)` -/
def P14698502637118686066.Spec : Prop :=
  ∀ n, P14698502637118686066.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P2057184676495321373

`A009545(n)²+(A038520(n)+A038519(n))*A038519(n+1)`
-/

namespace A073998.P2057184676495321373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A038520 n + A038519 n) * A038519 (n + 1)

end

end A073998.P2057184676495321373

namespace A073998

/-- `A009545(n)²+(A038520(n)+A038519(n))*A038519(n+1)` -/
def P2057184676495321373.Spec : Prop :=
  ∀ n, P2057184676495321373.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P14561570576120658265

`A009545(n)²+(A009545(n)+A000749(n+1))*A038503(n+1)`
-/

namespace A073998.P14561570576120658265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A009545 n + A000749 (n + 1)) * A038503 (n + 1)

end

end A073998.P14561570576120658265

namespace A073998

/-- `A009545(n)²+(A009545(n)+A000749(n+1))*A038503(n+1)` -/
def P14561570576120658265.Spec : Prop :=
  ∀ n, P14561570576120658265.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P6012474206534560569

`A009545(n)²+(A000079(n)-A038503(n+1))*A038503(n+1)`
-/

namespace A073998.P6012474206534560569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A000079 n - A038503 (n + 1)) * A038503 (n + 1)

end

end A073998.P6012474206534560569

namespace A073998

/-- `A009545(n)²+(A000079(n)-A038503(n+1))*A038503(n+1)` -/
def P6012474206534560569.Spec : Prop :=
  ∀ n, P6012474206534560569.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P6055333384989402611

`A009545(n)²+(A000079(n)-A038505(n+1))*A038505(n+1)`
-/

namespace A073998.P6055333384989402611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A000079 n - A038505 (n + 1)) * A038505 (n + 1)

end

end A073998.P6055333384989402611

namespace A073998

/-- `A009545(n)²+(A000079(n)-A038505(n+1))*A038505(n+1)` -/
def P6055333384989402611.Spec : Prop :=
  ∀ n, P6055333384989402611.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P15088406236918029930

`A009545(n)²+(A038519(n+1)-A009116(n+1))*A038519(n+1)`
-/

namespace A073998.P15088406236918029930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A038519 (n + 1) - A009116 (n + 1)) * A038519 (n + 1)

end

end A073998.P15088406236918029930

namespace A073998

/-- `A009545(n)²+(A038519(n+1)-A009116(n+1))*A038519(n+1)` -/
def P15088406236918029930.Spec : Prop :=
  ∀ n, P15088406236918029930.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P14117622055689880650

`A009545(n)²+(A011782(n+1)-A038503(n+1))*A038503(n+1)`
-/

namespace A073998.P14117622055689880650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A011782 (n + 1) - A038503 (n + 1)) * A038503 (n + 1)

end

end A073998.P14117622055689880650

namespace A073998

/-- `A009545(n)²+(A011782(n+1)-A038503(n+1))*A038503(n+1)` -/
def P14117622055689880650.Spec : Prop :=
  ∀ n, P14117622055689880650.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P12346505269659251943

`A009545(n)²+(A011782(n+1)-A038505(n+1))*A038505(n+1)`
-/

namespace A073998.P12346505269659251943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n ^ 2 + (A011782 (n + 1) - A038505 (n + 1)) * A038505 (n + 1)

end

end A073998.P12346505269659251943

namespace A073998

/-- `A009545(n)²+(A011782(n+1)-A038505(n+1))*A038505(n+1)` -/
def P12346505269659251943.Spec : Prop :=
  ∀ n, P12346505269659251943.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P6342607387399223615

`Δ[A073995(n+1)/3]`
-/

namespace A073998.P6342607387399223615
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073995 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073998.P6342607387399223615

namespace A073998

/-- `Δ[A073995(n+1)/3]` -/
def P6342607387399223615.Spec : Prop :=
  ∀ n, P6342607387399223615.a n = (A073998 (n + 1) : ℚ)

end A073998

/-! ## A073998.P16706610405292917738

`Δ[A073999(n+1)-A006095(n)]`
-/

namespace A073998.P16706610405292917738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (n + 1) - A006095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073998.P16706610405292917738

namespace A073998

/-- `Δ[A073999(n+1)-A006095(n)]` -/
def P16706610405292917738.Spec : Prop :=
  ∀ n, P16706610405292917738.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P5570211877956530822

`Δ[A073999(n+1)]-A006516(n)`
-/

namespace A073998.P5570211877956530822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006516 n

end

end A073998.P5570211877956530822

namespace A073998

/-- `Δ[A073999(n+1)]-A006516(n)` -/
def P5570211877956530822.Spec : Prop :=
  ∀ n, P5570211877956530822.a n = A073998 (n + 1)

end A073998

/-! ## A073998.P819523139135467757

`Δ[A073999(n+1)]-A020522(n)/2`
-/

namespace A073998.P819523139135467757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A020522 n : ℚ) / 2

end

end A073998.P819523139135467757

namespace A073998

/-- `Δ[A073999(n+1)]-A020522(n)/2` -/
def P819523139135467757.Spec : Prop :=
  ∀ n, P819523139135467757.a n = (A073998 (n + 1) : ℚ)

end A073998

/-! ## A073998.P7590758919983088256

`Δ[(A073996(n+1)+A090132(n)²)/3]`
-/

namespace A073998.P7590758919983088256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073996 (n + 1) + A090132 n ^ 2 : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A073998.P7590758919983088256

namespace A073998

/-- `Δ[(A073996(n+1)+A090132(n)²)/3]` -/
def P7590758919983088256.Spec : Prop :=
  ∀ n, P7590758919983088256.a n = (A073998 (n + 1) : ℚ)

end A073998

/-! ## A073998.P2578403803976615904

`Δ[A073999(n+1)]-floor(A020515(n)/2)`
-/

namespace A073998.P2578403803976615904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊(A020515 n : ℚ) / 2⌋

end

end A073998.P2578403803976615904

namespace A073998

/-- `Δ[A073999(n+1)]-floor(A020515(n)/2)` -/
def P2578403803976615904.Spec : Prop :=
  ∀ n, P2578403803976615904.a n = A073998 (n + 1)

end A073998

/-!
# A073999: Number of strings of length n over GF(4) with trace 1 and subtrace x where x = RootOf(z^2+z+1).

The programs for A073999, the canonical program `A073999.P12976610018167318063` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A073999 has offset 1).

The definition of A073999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A073999.P12976610018167318063

`A073997(n+1)-and(2, n+2)^n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A073999

/-- `A073997(n+1)-and(2, n+2)^n` -/
def P12976610018167318063.Spec : Prop :=
  ∀ n, P12976610018167318063.a n = A073999 (n + 1)

theorem P12976610018167318063.correct : P12976610018167318063.Spec := by
  intro n
  simp only [A073999, Nat.add_sub_cancel]

end A073999

/-! ## A073999.P9402027967058646052

`A073997(n+1)-A108474(n)`
-/

namespace A073999.P9402027967058646052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073997 (n + 1) - A108474 n

end

end A073999.P9402027967058646052

namespace A073999

/-- `A073997(n+1)-A108474(n)` -/
def P9402027967058646052.Spec : Prop :=
  ∀ n, P9402027967058646052.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P7476410774029055761

`∑[A038503(n)]*∑[A038505(n)]`
-/

namespace A073999.P7476410774029055761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A073999.P7476410774029055761

namespace A073999

/-- `∑[A038503(n)]*∑[A038505(n)]` -/
def P7476410774029055761.Spec : Prop :=
  ∀ n, P7476410774029055761.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P7967735113153044627

`∑[A038503(n)]*A000749(n+1)`
-/

namespace A073999.P7967735113153044627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000749 (n + 1)

end

end A073999.P7967735113153044627

namespace A073999

/-- `∑[A038503(n)]*A000749(n+1)` -/
def P7967735113153044627.Spec : Prop :=
  ∀ n, P7967735113153044627.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P16274952431725813454

`∑[A038505(n)]*A038504(n+1)`
-/

namespace A073999.P16274952431725813454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A038504 (n + 1)

end

end A073999.P16274952431725813454

namespace A073999

/-- `∑[A038505(n)]*A038504(n+1)` -/
def P16274952431725813454.Spec : Prop :=
  ∀ n, P16274952431725813454.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P7562930912274775501

`A000749(n+1)*A038504(n+1)`
-/

namespace A073999.P7562930912274775501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) * A038504 (n + 1)

end

end A073999.P7562930912274775501

namespace A073999

/-- `A000749(n+1)*A038504(n+1)` -/
def P7562930912274775501.Spec : Prop :=
  ∀ n, P7562930912274775501.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P5363332799401260157

`A038520(n+1)*A038521(n+1)`
-/

namespace A073999.P5363332799401260157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (n + 1) * A038521 (n + 1)

end

end A073999.P5363332799401260157

namespace A073999

/-- `A038520(n+1)*A038521(n+1)` -/
def P5363332799401260157.Spec : Prop :=
  ∀ n, P5363332799401260157.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P8037900255240670597

`Δ[A038503(n+1)]*A038504(n+1)`
-/

namespace A073999.P8037900255240670597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A038504 (n + 1)

end

end A073999.P8037900255240670597

namespace A073999

/-- `Δ[A038503(n+1)]*A038504(n+1)` -/
def P8037900255240670597.Spec : Prop :=
  ∀ n, P8037900255240670597.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P11959689118303098721

`A038504(n+1)*A138569(2*(n+1))`
-/

namespace A073999.P11959689118303098721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) * A138569 (2 * (n + 1))

end

end A073999.P11959689118303098721

namespace A073999

/-- `A038504(n+1)*A138569(2*(n+1))` -/
def P11959689118303098721.Spec : Prop :=
  ∀ n, P11959689118303098721.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P13735117116682400850

`A000749(n+1)/2*A131885(n+1)`
-/

namespace A073999.P13735117116682400850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000749 (n + 1) : ℚ) / 2 * (A131885 (n + 1) : ℚ)

end

end A073999.P13735117116682400850

namespace A073999

/-- `A000749(n+1)/2*A131885(n+1)` -/
def P13735117116682400850.Spec : Prop :=
  ∀ n, P13735117116682400850.a n = (A073999 (n + 1) : ℚ)

end A073999

/-! ## A073999.P16047749531151708969

`Δ[A038503(n+1)]*Δ[A038505(n+1)]`
-/

namespace A073999.P16047749531151708969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A073999.P16047749531151708969

namespace A073999

/-- `Δ[A038503(n+1)]*Δ[A038505(n+1)]` -/
def P16047749531151708969.Spec : Prop :=
  ∀ n, P16047749531151708969.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P4310457824984192067

`(A038520(n)+A038518(n))*A038520(n+1)`
-/

namespace A073999.P4310457824984192067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038520 n + A038518 n) * A038520 (n + 1)

end

end A073999.P4310457824984192067

namespace A073999

/-- `(A038520(n)+A038518(n))*A038520(n+1)` -/
def P4310457824984192067.Spec : Prop :=
  ∀ n, P4310457824984192067.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P9561638960090331088

`(A038521(n)+A038519(n))*A038521(n+1)`
-/

namespace A073999.P9561638960090331088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038521 n + A038519 n) * A038521 (n + 1)

end

end A073999.P9561638960090331088

namespace A073999

/-- `(A038521(n)+A038519(n))*A038521(n+1)` -/
def P9561638960090331088.Spec : Prop :=
  ∀ n, P9561638960090331088.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P6557245747541922118

`(A038503(n+1)+A009545(n))*A000749(n+1)`
-/

namespace A073999.P6557245747541922118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038503 (n + 1) + A009545 n) * A000749 (n + 1)

end

end A073999.P6557245747541922118

namespace A073999

/-- `(A038503(n+1)+A009545(n))*A000749(n+1)` -/
def P6557245747541922118.Spec : Prop :=
  ∀ n, P6557245747541922118.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P12471077721183954

`(A099087(n)+A000749(n+1))*A000749(n+1)`
-/

namespace A073999.P12471077721183954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099087 n + A000749 (n + 1)) * A000749 (n + 1)

end

end A073999.P12471077721183954

namespace A073999

/-- `(A099087(n)+A000749(n+1))*A000749(n+1)` -/
def P12471077721183954.Spec : Prop :=
  ∀ n, P12471077721183954.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P711165673499234094

`(A108520(n)+A038521(n+1))*A038521(n+1)`
-/

namespace A073999.P711165673499234094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108520 n + A038521 (n + 1)) * A038521 (n + 1)

end

end A073999.P711165673499234094

namespace A073999

/-- `(A108520(n)+A038521(n+1))*A038521(n+1)` -/
def P711165673499234094.Spec : Prop :=
  ∀ n, P711165673499234094.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P5768395621275164069

`(A000079(n)-A000749(n+1))*A000749(n+1)`
-/

namespace A073999.P5768395621275164069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A000749 (n + 1)) * A000749 (n + 1)

end

end A073999.P5768395621275164069

namespace A073999

/-- `(A000079(n)-A000749(n+1))*A000749(n+1)` -/
def P5768395621275164069.Spec : Prop :=
  ∀ n, P5768395621275164069.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P7201389841309581607

`(A000079(n)-A038504(n+1))*A038504(n+1)`
-/

namespace A073999.P7201389841309581607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A038504 (n + 1)) * A038504 (n + 1)

end

end A073999.P7201389841309581607

namespace A073999

/-- `(A000079(n)-A038504(n+1))*A038504(n+1)` -/
def P7201389841309581607.Spec : Prop :=
  ∀ n, P7201389841309581607.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P2733260126252021088

`(A038505(n+1)-A009545(n))*A038504(n+1)`
-/

namespace A073999.P2733260126252021088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038505 (n + 1) - A009545 n) * A038504 (n + 1)

end

end A073999.P2733260126252021088

namespace A073999

/-- `(A038505(n+1)-A009545(n))*A038504(n+1)` -/
def P2733260126252021088.Spec : Prop :=
  ∀ n, P2733260126252021088.a n = A073999 (n + 1)

end A073999

/-! ## A073999.P14285900719276731087

`(A009545(n+1)+A000749(n+1))*A000749(n+1)`
-/

namespace A073999.P14285900719276731087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A009545 (n + 1) + A000749 (n + 1)) * A000749 (n + 1)

end

end A073999.P14285900719276731087

namespace A073999

/-- `(A009545(n+1)+A000749(n+1))*A000749(n+1)` -/
def P14285900719276731087.Spec : Prop :=
  ∀ n, P14285900719276731087.a n = A073999 (n + 1)

end A073999

