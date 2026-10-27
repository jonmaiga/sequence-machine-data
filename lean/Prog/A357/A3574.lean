import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A357400: Coefficients T(n,k) of x^n*y^k in the function A(x,y) that satisfies: y = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x,y)^n, as a triangle read by rows with k = 0..n for each row index n >= 0.

The programs for A357400, there is no canonical definition to state claims against.
-/

/-! ## A357400.P17423380875823663928

`A325678(A277031(n+2)*A322549(n))`
-/

namespace A357400.P17423380875823663928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A277031 (n + 2) * A322549 n).toNat

end

end A357400.P17423380875823663928

/-! ## A357400.P14003185983477285217

`A325678(A277031(n+2)*A327751(n))`
-/

namespace A357400.P14003185983477285217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A277031 (n + 2) * A327751 n).toNat

end

end A357400.P14003185983477285217

/-! ## A357400.P10449439153439242628

`A022328(A006338(n+1)^A156881(n))`
-/

namespace A357400.P10449439153439242628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022328 (SequenceMachineLib.roundAway ((A006338 (n + 1) : ℚ) ^ (A156881 n : ℤ))).toNat

end

end A357400.P10449439153439242628

/-! ## A357400.P7891741295668591005

`and(A000961(n+1), A126295(A088567(n)))`
-/

namespace A357400.P7891741295668591005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000961 (n + 1)) (A126295 (A088567 n).toNat)

end

end A357400.P7891741295668591005

/-! ## A357400.P3722274943740861812

`A122203(A122203(n+1)*A218581(n+1))`
-/

namespace A357400.P3722274943740861812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A122203 (n + 1) * A218581 (n + 1)).toNat

end

end A357400.P3722274943740861812

/-!
# A357401: Coefficients in the power series expansion of 1/Sum_{n=-oo..+oo} n * x^(2*n+1) * (1 - x^n)^(n+1).

The programs for A357401, there is no canonical definition to state claims against.
-/

/-! ## A357401.P1978300830750816557

`A357400(∑[n+1]+1)`
-/

namespace A357401.P1978300830750816557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357400 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A357401.P1978300830750816557

/-!
# A357402: Coefficients in the power series A(x) such that: 2 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357402, there is no canonical definition to state claims against.
-/

/-! ## A357402.P8503068871360326909

`A008619(A345669(3*n+1)-A143823(n))`
-/

namespace A357402.P8503068871360326909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A345669 (3 * n + 1) - A143823 n).toNat

end

end A357402.P8503068871360326909

/-!
# A357403: Coefficients in the power series A(x) such that: 3 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357403, there is no canonical definition to state claims against.
-/

/-! ## A357403.P6670549352197453073

`A060384(record[3*(2^(n-1)-a(n-1))])` with `a(0)=2, a(1)=2`
-/

namespace A357403.P6670549352197453073
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  3 * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A357403.P6670549352197453073

/-!
# A357404: Coefficients in the power series A(x) such that: 4 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357404, there is no canonical definition to state claims against.
-/

/-! ## A357404.P777422951253796117

`A185717(A062731(a(n-1)))` with `a(0)=1, a(1)=4`
-/

namespace A357404.P777422951253796117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A185717 (A062731 (a (n - 1)).toNat).toNat

end

end A357404.P777422951253796117

/-!
# A357405: Coefficients in the power series A(x) such that: 5 = Sum_{n=-oo..+oo} x^(2*n+1) * (1 - x^n)^(n+1) * A(x)^n.

The programs for A357405, there is no canonical definition to state claims against.
-/

/-! ## A357405.P635677096387721789

`A234464(n)-A180472(A168448(n))`
-/

namespace A357405.P635677096387721789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234464 n - A180472 (A168448 n).toNat

end

end A357405.P635677096387721789

/-!
# A357407: a(n) = coefficient of x^n, n >= 0, in A(x) = exp( Sum_{n>=1} A183204(n)*x^n/n ), where A183204 equals the central terms of triangle A181544.

The programs for A357407, there is no canonical definition to state claims against.
-/

/-! ## A357407.P12252653496609148359

`A003002(A358962(n))*A358962(n)`
-/

namespace A357407.P12252653496609148359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A358962 n).toNat * A358962 n

end

end A357407.P12252653496609148359

/-!
# A357408: a(n) is the least sum n + y such that 1/n + 1/y = 1/z with gcd(n,y,z) = 1, for some integers y and z.

The programs for A357408, there is no canonical definition to state claims against.
-/

/-! ## A357408.P7096825760362764843

`A354933(n+2)²`
-/

namespace A357408.P7096825760362764843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (n + 2) ^ 2

end

end A357408.P7096825760362764843

/-! ## A357408.P16826326994798943185

`A000290((n+2)/A052128(n+2))`
-/

namespace A357408.P16826326994798943185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A052128 (n + 2) : ℚ))).toNat

end

end A357408.P16826326994798943185

/-! ## A357408.P16741431210381488800

`(A076388(n+2)+A052128(n+2))²`
-/

namespace A357408.P16741431210381488800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076388 (n + 2) + A052128 (n + 2)) ^ 2

end

end A357408.P16741431210381488800

/-! ## A357408.P2085633693670165111

`(A354995(n+2)+A034699(n+2))²`
-/

namespace A357408.P2085633693670165111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A354995 (n + 2) + A034699 (n + 2)) ^ 2

end

end A357408.P2085633693670165111

/-! ## A357408.P17322044566275671616

`A000290(A354933((n+1)/gcd(n, n+1)+1))`
-/

namespace A357408.P17322044566275671616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A354933 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd n (n + 1) : ℚ) + 1)).toNat).toNat

end

end A357408.P17322044566275671616

/-! ## A357408.P8052961278851408555

`A354933(∑[A004281(n+3)])`
-/

namespace A357408.P8052961278851408555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357408.P8052961278851408555

/-!
# A357409: a(n) is the maximum number of positive numbers in a set of n consecutive positive or negative odd numbers such that the number of pairs that add to a power of 2 is maximal.

The programs for A357409, there is no canonical definition to state claims against.
-/

/-! ## A357409.P5436729005963387987

`A123108(lt[A007954(2*n), A048794(n)])`
-/

namespace A357409.P5436729005963387987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357409.P5436729005963387987

/-! ## A357409.P394753486860432177

`A123108(lt[A183063(2*(n+2)), A324343(n)])`
-/

namespace A357409.P394753486860432177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357409.P394753486860432177

/-! ## A357409.P3213048826536455372

`A004526(lt[A330236(n+1), A019565(n)])`
-/

namespace A357409.P3213048826536455372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357409.P3213048826536455372

/-! ## A357409.P7457391652753299555

`A004526(lt[A335235(n+1), A019565(n)])`
-/

namespace A357409.P7457391652753299555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357409.P7457391652753299555

/-! ## A357409.P6511173229991867227

`A123108(lt[A343822(n+1), A019565(n)])`
-/

namespace A357409.P6511173229991867227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357409.P6511173229991867227

/-! ## A357409.P455059984874301698

`A004526(lt[A000005(n+2), A344947(n)])`
-/

namespace A357409.P455059984874301698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357409.P455059984874301698

/-!
# A357410: a(n) is the number of covering relations in the poset P of n X n idempotent matrices over GF(2) ordered by A <= B if and only if AB = BA = A.

The programs for A357410, there is no canonical definition to state claims against.
-/

/-! ## A357410.P14063491744914494431

`A041887(n)*A173888(A026011(n))`
-/

namespace A357410.P14063491744914494431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041887 n * A173888 (A026011 n).toNat

end

end A357410.P14063491744914494431

/-!
# A357411: Number of nonempty subsets of {1..n} whose elements have an odd harmonic mean.

The programs for A357411, there is no canonical definition to state claims against.
-/

/-! ## A357411.P5843782125538953499

`A339453(n+1)-A357412(n+1)`
-/

namespace A357411.P5843782125538953499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339453 (n + 1) - A357412 (n + 1)

end

end A357411.P5843782125538953499

/-! ## A357411.P8891554793458107049

`abs(A112539(2^n)-n)`
-/

namespace A357411.P8891554793458107049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112539 (2 ^ n) - (n : ℤ)|

end

end A357411.P8891554793458107049

/-! ## A357411.P2357051895337674678

`abs(A056594(∑[n]²)-n)`
-/

namespace A357411.P2357051895337674678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056594 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) - (n : ℤ)|

end

end A357411.P2357051895337674678

/-! ## A357411.P3865994220530400910

`abs(A059841(∑[n]²)-n)`
-/

namespace A357411.P3865994220530400910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059841 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) - (n : ℤ)|

end

end A357411.P3865994220530400910

/-! ## A357411.P6332076142174853743

`abs(A266982(∑[n]²)-n)`
-/

namespace A357411.P6332076142174853743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A266982 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) - (n : ℤ)|

end

end A357411.P6332076142174853743

/-!
# A357412: Number of nonempty subsets of {1..n} whose elements have an even harmonic mean.

The programs for A357412, there is no canonical definition to state claims against.
-/

/-! ## A357412.P13105406348593611346

`A339453(n+1)-A357411(n+1)`
-/

namespace A357412.P13105406348593611346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339453 (n + 1) - A357411 (n + 1)

end

end A357412.P13105406348593611346

/-!
# A357413: Number of nonempty subsets of {1..n} whose elements have an odd geometric mean.

The programs for A357413, there is no canonical definition to state claims against.
-/

/-! ## A357413.P15939528461445648049

`A326027(n)-A357414(n)`
-/

namespace A357413.P15939528461445648049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 n - A357414 n

end

end A357413.P15939528461445648049

/-! ## A357413.P16314664878966458303

`∑[A292242(∑[A000290(2*n+1)])]`
-/

namespace A357413.P16314664878966458303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292242 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357413.P16314664878966458303

/-! ## A357413.P9600677468445636573

`∑[and(3*n%2, A119754(2*(n+1)))]`
-/

namespace A357413.P9600677468445636573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((3 * (n % 2) : ℕ) : ℤ) (A119754 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357413.P9600677468445636573

/-! ## A357413.P15023249489207329668

`∑[A325390(3*n+2)%A028356(n)]`
-/

namespace A357413.P15023249489207329668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325390 (3 * n + 2)) (A028356 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357413.P15023249489207329668

/-! ## A357413.P14732447921867416371

`∑[A008597(n)%A175834(2*(n+1))]`
-/

namespace A357413.P14732447921867416371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008597 n) (A175834 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357413.P14732447921867416371

/-!
# A357414: Number of nonempty subsets of {1..n} whose elements have an even geometric mean.

The programs for A357414, there is no canonical definition to state claims against.
-/

/-! ## A357414.P543074392832100560

`A326027(n)-A357413(n)`
-/

namespace A357414.P543074392832100560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326027 n - A357413 n

end

end A357414.P543074392832100560

/-!
# A357415: Number of nonempty subsets of {1..n} whose elements have an odd root mean square.

The programs for A357415, there is no canonical definition to state claims against.
-/

/-! ## A357415.P5721687999671327488

`A339454(n+1)-A357416(n+1)`
-/

namespace A357415.P5721687999671327488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339454 (n + 1) - A357416 (n + 1)

end

end A357415.P5721687999671327488

/-!
# A357416: Number of nonempty subsets of {1..n} whose elements have an even root mean square.

The programs for A357416, there is no canonical definition to state claims against.
-/

/-! ## A357416.P18043855177903041987

`A339454(n+1)-A357415(n+1)`
-/

namespace A357416.P18043855177903041987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339454 (n + 1) - A357415 (n + 1)

end

end A357416.P18043855177903041987

/-!
# A357417: Row sums of the triangular array A357431.

The programs for A357417, there is no canonical definition to state claims against.
-/

/-! ## A357417.P9433119665793700483

`A364970(n+1)+A093555(A067687(n))`
-/

namespace A357417.P9433119665793700483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364970 (n + 1) + A093555 (A067687 n).toNat

end

end A357417.P9433119665793700483

/-! ## A357417.P10804638592677349542

`A003056(A000041(n+1)*A344522(n+1))`
-/

namespace A357417.P10804638592677349542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000041 (n + 1) * A344522 (n + 1)).toNat

end

end A357417.P10804638592677349542

/-! ## A357417.P4305852667272463433

`A181497(2*n)+A083093(A325410(n+3))`
-/

namespace A357417.P4305852667272463433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181497 (2 * n) + A083093 (A325410 (n + 3)).toNat

end

end A357417.P4305852667272463433

/-!
# A357420: a(n) is the hafnian of the 2n X 2n symmetric matrix defined by M[i,j] = abs(i - j) if min(i, j) < max(i, j) <= 2*min(i, j), and otherwise 0.

The programs for A357420, there is no canonical definition to state claims against.
-/

/-! ## A357420.P3548971452112619737

`A312393(∑[A323502(n)-1])`
-/

namespace A357420.P3548971452112619737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323502 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312393 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357420.P3548971452112619737

/-! ## A357420.P12062227525689030890

`A312633(∑[A323502(n)-1])`
-/

namespace A357420.P12062227525689030890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323502 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312633 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357420.P12062227525689030890

/-!
# A357422: E.g.f. satisfies A(x) * exp(A(x)) = -log(1 - x * exp(A(x))).

The programs for A357422, there is no canonical definition to state claims against.
-/

/-! ## A357422.P10134433651535451102

`A109885(a(n-1))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=5`
-/

namespace A357422.P10134433651535451102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 5] fun n a =>
  A109885 (a (n - 1)).toNat

end

end A357422.P10134433651535451102

/-! ## A357422.P12552711615704006145

`A257684(A356572(n+1)+1)`
-/

namespace A357422.P12552711615704006145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A356572 (n + 1) + 1).toNat

end

end A357422.P12552711615704006145

/-!
# A357424: E.g.f. satisfies A(x) * exp(A(x)) = exp(x * exp(A(x))) - 1.

The programs for A357424, there is no canonical definition to state claims against.
-/

/-! ## A357424.P5398609688467403477

`A060426(∑[n²]+2)`
-/

namespace A357424.P5398609688467403477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A357424.P5398609688467403477

/-! ## A357424.P12041256769710960829

`A111857(A002720(n)+1)`
-/

namespace A357424.P12041256769710960829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111857 (A002720 n + 1).toNat

end

end A357424.P12041256769710960829

/-!
# A357425: Smallest number for which the sum of digits in fractional base 4/3 is n.

The programs for A357425, there is no canonical definition to state claims against.
-/

/-! ## A357425.P615021920814504352

`record[or(n, A002265(A119605(n+1)))]`
-/

namespace A357425.P615021920814504352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A002265 (A119605 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A357425.P615021920814504352

/-! ## A357425.P17686308497276284863

`lt[A179480(A006257(3*(n+1))), 3]`
-/

namespace A357425.P17686308497276284863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179480 (A006257 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357425.P17686308497276284863

/-! ## A357425.P10619498376482874886

`lt[A333805(A019565(3*(n+1))), 3]`
-/

namespace A357425.P10619498376482874886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (A019565 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357425.P10619498376482874886

/-! ## A357425.P10163482493823002910

`lt[A126738(A324465(3*(n+1))), 7]`
-/

namespace A357425.P10163482493823002910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126738 (A324465 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357425.P10163482493823002910

/-! ## A357425.P3132075724348968414

`lt[A049986(A052330(3*(n+1))), 12]`
-/

namespace A357425.P3132075724348968414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (A052330 (3 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A357425.P3132075724348968414

/-!
# A357426: Primes p such that p^2+4 is a prime times 5^k for some k >= 1.

The programs for A357426, there is no canonical definition to state claims against.
-/

/-! ## A357426.P2524374712184627787

`A038872(lt[A000378(2*n+5), A317368(2*(n+1))])`
-/

namespace A357426.P2524374712184627787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317368 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357426.P2524374712184627787

/-! ## A357426.P9503172807480442793

`A045468(A079726(n+1)%A123677(n+1))`
-/

namespace A357426.P9503172807480442793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (Int.tmod (A079726 (n + 1)) (A123677 (n + 1))).toNat

end

end A357426.P9503172807480442793

/-! ## A357426.P8942298891529522376

`A045468(A079726(n+1))%A352330(2*n+5)`
-/

namespace A357426.P8942298891529522376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045468 (A079726 (n + 1)).toNat) (A352330 (2 * n + 5))

end

end A357426.P8942298891529522376

/-! ## A357426.P18392151596669484549

`A064739(lt[A356948(2*n+5), A181544(2*n+1)])`
-/

namespace A357426.P18392151596669484549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356948 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181544 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357426.P18392151596669484549

/-! ## A357426.P18115461185550393085

`A045468(lt[A358286(n+2), A109860(n)])`
-/

namespace A357426.P18115461185550393085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358286 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A357426.P18115461185550393085

/-!
# A357428: Numbers whose digit representation in base 2 is equal to the digit representation in base 2 of the initial terms of their sets of divisors in increasing order.

The programs for A357428, there is no canonical definition to state claims against.
-/

/-! ## A357428.P17187744276169237725

`eq[2, A357481(n+1)]+1`
-/

namespace A357428.P17187744276169237725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357428.P17187744276169237725

/-!
# A357431: Triangle read by rows where each term in row n is the next greater multiple of n..1.

The programs for A357431, the canonical program `A357431.P12290996234461499153` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357431 has offset 1).

The definition of A357431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357431.P12290996234461499153

`T(n,k-1)+row(n)-col(n)+1-T(n,k-1)%(row(n)-col(n)+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357431

/-- `T(n,k-1)+row(n)-col(n)+1-T(n,k-1)%(row(n)-col(n)+1)` -/
def P12290996234461499153.Spec : Prop :=
  ∀ n, P12290996234461499153.a n = A357431 (n + 1)

theorem P12290996234461499153.correct : P12290996234461499153.Spec := by
  intro n
  simp only [A357431, Nat.add_sub_cancel]

end A357431

/-! ## A357431.P18009693555329407223

`(C(comp[∑[n]]-n, 2)-n)*A357498(n+1)`
-/

namespace A357431.P18009693555329407223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A357498 (n + 1)

end

end A357431.P18009693555329407223

namespace A357431

/-- `(C(comp[∑[n]]-n, 2)-n)*A357498(n+1)` -/
def P18009693555329407223.Spec : Prop :=
  ∀ n, P18009693555329407223.a n = A357431 (n + 1)

end A357431

/-! ## A357431.P13909761713380308878

`A004736(n+1)*A357498(n+1)`
-/

namespace A357431.P13909761713380308878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A357498 (n + 1)

end

end A357431.P13909761713380308878

namespace A357431

/-- `A004736(n+1)*A357498(n+1)` -/
def P13909761713380308878.Spec : Prop :=
  ∀ n, P13909761713380308878.a n = A357431 (n + 1)

end A357431

/-! ## A357431.P7961966884133546522

`A087088(A083044(n))*A357498(n+1)`
-/

namespace A357431.P7961966884133546522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (A083044 n).toNat * A357498 (n + 1)

end

end A357431.P7961966884133546522

namespace A357431

/-- `A087088(A083044(n))*A357498(n+1)` -/
def P7961966884133546522.Spec : Prop :=
  ∀ n, P7961966884133546522.a n = A357431 (n + 1)

end A357431

/-! ## A357431.P10571546652678094489

`A193020(A130321(n))*A357498(n+1)`
-/

namespace A357431.P10571546652678094489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193020 (A130321 n).toNat * A357498 (n + 1)

end

end A357431.P10571546652678094489

namespace A357431

/-- `A193020(A130321(n))*A357498(n+1)` -/
def P10571546652678094489.Spec : Prop :=
  ∀ n, P10571546652678094489.a n = A357431 (n + 1)

end A357431

/-! ## A357431.P8278415146649931487

`A140061(∑[char[∑[n]]]²-n)`
-/

namespace A357431.P8278415146649931487
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140061 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A357431.P8278415146649931487

namespace A357431

/-- `A140061(∑[char[∑[n]]]²-n)` -/
def P8278415146649931487.Spec : Prop :=
  ∀ n, P8278415146649931487.a n = A357431 (n + 1)

end A357431

/-!
# A357434: a(n) is the number of distinct Q-toothpicks after the n-th stage of the structure described in A211000.

The programs for A357434, there is no canonical definition to state claims against.
-/

/-! ## A357434.P2990264116236232311

`∑[A286351(2^ceil(log2(n+1))+1)]`
-/

namespace A357434.P2990264116236232311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286351 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357434.P2990264116236232311

/-! ## A357434.P3022266661109996079

`∑[A069513(∑[A167001(n)])]`
-/

namespace A357434.P3022266661109996079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167001 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357434.P3022266661109996079

/-! ## A357434.P2428229582980052773

`∑[∑[A010815(A383013(n+3))]]`
-/

namespace A357434.P2428229582980052773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A383013 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357434.P2428229582980052773

/-!
# A357438: Triangle T(n,k) read by rows, defined by the equation f(x, y) := Sum_{n, k} T(n, k) * y^k * x^n = 1/(1 - x*y - x^2*y*f(x, y+1)).

The programs for A357438, there is no canonical definition to state claims against.
-/

/-! ## A357438.P8887909487446064234

`A324173(n)-A044941(A000079(n))`
-/

namespace A357438.P8887909487446064234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 n - A044941 (A000079 n).toNat

end

end A357438.P8887909487446064234

/-! ## A357438.P8844772911298547473

`A324173(n)-A156729(A086645(n))`
-/

namespace A357438.P8844772911298547473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 n - A156729 (A086645 n).toNat

end

end A357438.P8844772911298547473

/-! ## A357438.P12557415113452575600

`A324173(n)-A112765(A157151(n))`
-/

namespace A357438.P12557415113452575600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 n - A112765 (A157151 n).toNat

end

end A357438.P12557415113452575600

/-! ## A357438.P7930733938323940989

`A324173(n)-A185034(A185036(n))`
-/

namespace A357438.P7930733938323940989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 n - A185034 (A185036 n).toNat

end

end A357438.P7930733938323940989

/-! ## A357438.P15303185277916968800

`A324173(n)-A185238(A252755(n))`
-/

namespace A357438.P15303185277916968800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324173 n - A185238 (A252755 n).toNat

end

end A357438.P15303185277916968800

/-!
# A357439: Sums of squares of two odd primes.

The programs for A357439, there is no canonical definition to state claims against.
-/

/-! ## A357439.P3165281183437606633

`2*A143850(n+1)`
-/

namespace A357439.P3165281183437606633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143850 (n + 1)

end

end A357439.P3165281183437606633

/-! ## A357439.P11409954067888263761

`lcm(2, A143850(C(n+1, n)))`
-/

namespace A357439.P11409954067888263761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A143850 (Nat.choose (n + 1) n))

end

end A357439.P11409954067888263761

/-! ## A357439.P6671189952152635609

`∩[2*n, A045636(n+2)]`
-/

namespace A357439.P6671189952152635609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357439.P6671189952152635609

/-! ## A357439.P8259142354058954748

`A003485(A143850(n+1))`
-/

namespace A357439.P8259142354058954748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 (A143850 (n + 1)).toNat

end

end A357439.P8259142354058954748

/-! ## A357439.P2476885966094216200

`A017089(A227697(n+1))`
-/

namespace A357439.P2476885966094216200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A227697 (n + 1)).toNat

end

end A357439.P2476885966094216200

/-! ## A357439.P17866870752394696911

`A005843(or(1, A143850(n+1)))`
-/

namespace A357439.P17866870752394696911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor 1 (A143850 (n + 1))).toNat

end

end A357439.P17866870752394696911

/-! ## A357439.P4746988759002873766

`filter[A045636(n+1), A021913(#)]`
-/

namespace A357439.P4746988759002873766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A357439.P4746988759002873766

/-! ## A357439.P14858960951824794042

`filter[A045636(n+1), A131078(#)]`
-/

namespace A357439.P14858960951824794042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A357439.P14858960951824794042

/-! ## A357439.P4544514922985583044

`filter[A045636(n+1), A217586(#)]`
-/

namespace A357439.P4544514922985583044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A357439.P4544514922985583044

/-! ## A357439.P17556109815491395406

`filter[A045636(n+1), A323170(#)]`
-/

namespace A357439.P17556109815491395406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A357439.P17556109815491395406

/-!
# A357440: Possible half-lengths of self-similar sequences over a finite alphabet that are invariant under retrograde inversion.

The programs for A357440, there is no canonical definition to state claims against.
-/

/-! ## A357440.P603327254894460488

`floor(A014663(n+1)/2)`
-/

namespace A357440.P603327254894460488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014663 (n + 1) : ℚ) / 2⌋

end

end A357440.P603327254894460488

/-! ## A357440.P4749473656955563984

`floor(A045315(n+2)/2)`
-/

namespace A357440.P4749473656955563984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045315 (n + 2) : ℚ) / 2⌋

end

end A357440.P4749473656955563984

/-! ## A357440.P10878032657729091378

`floor(A049564(n+2)/2)`
-/

namespace A357440.P10878032657729091378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049564 (n + 2) : ℚ) / 2⌋

end

end A357440.P10878032657729091378

/-! ## A357440.P7687637606771301841

`floor(p?[A036259(n+1)]/2)`
-/

namespace A357440.P7687637606771301841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌋

end

end A357440.P7687637606771301841

/-!
# A357441: Size of alphabet associated with A357440(n).

The programs for A357441, there is no canonical definition to state claims against.
-/

/-! ## A357441.P11093931769447344407

`A318622(A014663(n+1))`
-/

namespace A357441.P11093931769447344407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A014663 (n + 1)).toNat

end

end A357441.P11093931769447344407

/-! ## A357441.P4071411676687440329

`A318622(A045315(n+2))`
-/

namespace A357441.P4071411676687440329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A045315 (n + 2)).toNat

end

end A357441.P4071411676687440329

/-! ## A357441.P10853953144165935647

`A318622(A049564(n+2))`
-/

namespace A357441.P10853953144165935647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318622 (A049564 (n + 2)).toNat

end

end A357441.P10853953144165935647

/-! ## A357441.P5920812146529815529

`A006694(floor(A014663(n+1)/2))`
-/

namespace A357441.P5920812146529815529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 ⌊(A014663 (n + 1) : ℚ) / 2⌋.toNat

end

end A357441.P5920812146529815529

/-!
# A357442: Consider a clock face with 2*n "hours" marked around the dial; a(n) = number of ways to match the even hours to the odd hours, modulo rotations and reflections.

The programs for A357442, there is no canonical definition to state claims against.
-/

/-! ## A357442.P1200512284896225626

`A184305(A125898(n+2))`
-/

namespace A357442.P1200512284896225626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184305 (A125898 (n + 2)).toNat

end

end A357442.P1200512284896225626

/-! ## A357442.P4359302908926410929

`A241827(A000097(n)+n)`
-/

namespace A357442.P4359302908926410929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A000097 n + (n : ℤ)).toNat

end

end A357442.P4359302908926410929

/-! ## A357442.P15186305560657193494

`A241827(∑[∑[A152194(n)]])`
-/

namespace A357442.P15186305560657193494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152194 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A357442.P15186305560657193494

/-!
# A357443: Inventory sequence, second version: record where the 1's, 2's, etc. are located starting with a(1) = 1, a(2) = 1.

The programs for A357443, there is no canonical definition to state claims against.
-/

/-! ## A357443.P9883889340014945779

`A356784(n)+1`
-/

namespace A357443.P9883889340014945779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356784 n + 1

end

end A357443.P9883889340014945779

/-! ## A357443.P5109255426157192477

`A008619(2*A356784(n))`
-/

namespace A357443.P5109255426157192477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A356784 n).toNat

end

end A357443.P5109255426157192477

/-! ## A357443.P14810087686149053019

`A027656(2*A356784(n))`
-/

namespace A357443.P14810087686149053019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A356784 n).toNat

end

end A357443.P14810087686149053019

/-! ## A357443.P698955448655263639

`A028242(2*A356784(n))`
-/

namespace A357443.P698955448655263639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A356784 n).toNat

end

end A357443.P698955448655263639

/-! ## A357443.P8190617540127115867

`A131732(2*A356784(n))`
-/

namespace A357443.P8190617540127115867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (2 * A356784 n).toNat

end

end A357443.P8190617540127115867

/-! ## A357443.P13952806273945539001

`A242971(2*A356784(n))`
-/

namespace A357443.P13952806273945539001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 (2 * A356784 n).toNat

end

end A357443.P13952806273945539001

/-! ## A357443.P603756684583978125

`A008618(18*A356784(n))`
-/

namespace A357443.P603756684583978125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (18 * A356784 n).toNat

end

end A357443.P603756684583978125

/-! ## A357443.P2233196983715287242

`A357492(n)+1-A053644(n)`
-/

namespace A357443.P2233196983715287242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357492 n + (1 - A053644 n)

end

end A357443.P2233196983715287242

/-! ## A357443.P8255716332743821286

`1-(A053644(A357491(n))-A357492(n))`
-/

namespace A357443.P8255716332743821286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A053644 (A357491 n).toNat - A357492 n)

end

end A357443.P8255716332743821286

/-! ## A357443.P4469322219782613053

`A357492(n)%A053644(A028310(n))+1`
-/

namespace A357443.P4469322219782613053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357492 n) (A053644 (A028310 n).toNat) + 1

end

end A357443.P4469322219782613053

/-!
# A357444: Numerators of certain densities associated with partitions into squares.

The programs for A357444, there is no canonical definition to state claims against.
-/

/-! ## A357444.P4523892451482280451

`A196381(A000138(n)%A196381(3*n+5))`
-/

namespace A357444.P4523892451482280451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196381 (Int.tmod (A000138 n) (A196381 (3 * n + 5))).toNat

end

end A357444.P4523892451482280451

/-! ## A357444.P6035922398836135909

`A153409(A189111(3*n+1))%A157400(3*(n+1))`
-/

namespace A357444.P6035922398836135909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153409 (A189111 (3 * n + 1)).toNat) (A157400 (3 * (n + 1)))

end

end A357444.P6035922398836135909

/-!
# A357446: Number of connected cubic simple graphs on 2n unlabeled nodes with chromatic index 4.

The programs for A357446, there is no canonical definition to state claims against.
-/

/-! ## A357446.P10110580352544871584

`A033103(A145267(n)²)`
-/

namespace A357446.P10110580352544871584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033103 (A145267 n ^ 2).toNat

end

end A357446.P10110580352544871584

/-! ## A357446.P17430613856621176832

`∑[A017333(2*n+3)]%A331156(n)`
-/

namespace A357446.P17430613856621176832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017333 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A331156 n)

end

end A357446.P17430613856621176832

/-! ## A357446.P2068717649475260356

`A059026(A059037(n))-A000079(n)`
-/

namespace A357446.P2068717649475260356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059026 (A059037 n).toNat - A000079 n

end

end A357446.P2068717649475260356

/-!
# A357447: Number of connected cubic simple graphs on 2n unlabeled nodes with a unique 3-edge-coloring up to edge-Kempe equivalence.

The programs for A357447, there is no canonical definition to state claims against.
-/

/-! ## A357447.P4548931541435001884

`A356075(A360273(n))`
-/

namespace A357447.P4548931541435001884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356075 (A360273 n).toNat

end

end A357447.P4548931541435001884

/-! ## A357447.P3140997404959340251

`A277192(or(2^n, A002577(n))-and(1, n))`
-/

namespace A357447.P3140997404959340251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277192 (Int.lor (2 ^ n : ℤ) (A002577 n) - (Nat.land 1 n : ℤ)).toNat

end

end A357447.P3140997404959340251

/-!
# A357448: Fixed point starting with 0 of the two-block substitution 00->010, 01->010, 10->101, 11->101.

The programs for A357448, the canonical program `A357448.P9984939825109866771` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357448 has offset 0).

The definition of A357448 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357448.P9984939825109866771

`A244040(n)%2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357448

/-- `A244040(n)%2` -/
def P9984939825109866771.Spec : Prop :=
  ∀ n, P9984939825109866771.a n = A357448 n

theorem P9984939825109866771.correct : P9984939825109866771.Spec := by
  intro n
  simp only [A357448]

end A357448

/-! ## A357448.P4861327211381687092

`A261691(n)%2`
-/

namespace A357448.P4861327211381687092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261691 n) 2

end

end A357448.P4861327211381687092

namespace A357448

/-- `A261691(n)%2` -/
def P4861327211381687092.Spec : Prop :=
  ∀ n, P4861327211381687092.a n = A357448 n

end A357448

/-! ## A357448.P17340205549822642937

`∑{digits}[A024629(n), #]%2`
-/

namespace A357448.P17340205549822642937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum % 2

end

end A357448.P17340205549822642937

namespace A357448

/-- `∑{digits}[A024629(n), #]%2` -/
def P17340205549822642937.Spec : Prop :=
  ∀ n, (P17340205549822642937.a n : ℤ) = A357448 n

end A357448

/-! ## A357448.P10485232740404690441

`and(1, A244040(round(sqrt(n²+n))))`
-/

namespace A357448.P10485232740404690441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A244040 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + n : ℝ))).toNat)

end

end A357448.P10485232740404690441

namespace A357448

/-- `and(1, A244040(round(sqrt(n²+n))))` -/
def P10485232740404690441.Spec : Prop :=
  ∀ n, P10485232740404690441.a n = A357448 n

end A357448

/-! ## A357448.P483340919185059854

`A000035(A244040(n))`
-/

namespace A357448.P483340919185059854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244040 n).toNat

end

end A357448.P483340919185059854

namespace A357448

/-- `A000035(A244040(n))` -/
def P483340919185059854.Spec : Prop :=
  ∀ n, P483340919185059854.a n = A357448 n

end A357448

/-! ## A357448.P11949259546234643872

`A096268(A244040(n)²)`
-/

namespace A357448.P11949259546234643872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A244040 n ^ 2).toNat

end

end A357448.P11949259546234643872

namespace A357448

/-- `A096268(A244040(n)²)` -/
def P11949259546234643872.Spec : Prop :=
  ∀ n, P11949259546234643872.a n = A357448 n

end A357448

/-! ## A357448.P17460937676190218338

`A096268(A244040(n)*A244040(n))`
-/

namespace A357448.P17460937676190218338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A244040 n * A244040 n).toNat

end

end A357448.P17460937676190218338

namespace A357448

/-- `A096268(A244040(n)*A244040(n))` -/
def P17460937676190218338.Spec : Prop :=
  ∀ n, P17460937676190218338.a n = A357448 n

end A357448

/-! ## A357448.P3778824407652790864

`and(1, ∑{digits}[A024637(2*n)/2, #])`
-/

namespace A357448.P3778824407652790864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024637 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A357448.P3778824407652790864

namespace A357448

/-- `and(1, ∑{digits}[A024637(2*n)/2, #])` -/
def P3778824407652790864.Spec : Prop :=
  ∀ n, (P3778824407652790864.a n : ℤ) = A357448 n

end A357448

/-! ## A357448.P3602223195097110304

`and(A244040(n), A305262(A244040(n)²))`
-/

namespace A357448.P3602223195097110304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244040 n) (A305262 (A244040 n ^ 2).toNat)

end

end A357448.P3602223195097110304

namespace A357448

/-- `and(A244040(n), A305262(A244040(n)²))` -/
def P3602223195097110304.Spec : Prop :=
  ∀ n, P3602223195097110304.a n = A357448 n

end A357448

/-! ## A357448.P15343418638924948000

`and(A244040(n), A305269(A244040(n)²))`
-/

namespace A357448.P15343418638924948000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244040 n) (A305269 (A244040 n ^ 2).toNat)

end

end A357448.P15343418638924948000

namespace A357448

/-- `and(A244040(n), A305269(A244040(n)²))` -/
def P15343418638924948000.Spec : Prop :=
  ∀ n, P15343418638924948000.a n = A357448 n

end A357448

/-! ## A357448.P8574169762969042843

`and(A195744(n), A261691(n))`
-/

namespace A357448.P8574169762969042843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A261691 n)

end

end A357448.P8574169762969042843

namespace A357448

/-- `and(A195744(n), A261691(n))` -/
def P8574169762969042843.Spec : Prop :=
  ∀ n, P8574169762969042843.a n = A357448 n

end A357448

/-! ## A357448.P10991811074997443404

`and(A206371(n), A261691(n))`
-/

namespace A357448.P10991811074997443404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A206371 n) (A261691 n)

end

end A357448.P10991811074997443404

namespace A357448

/-- `and(A206371(n), A261691(n))` -/
def P10991811074997443404.Spec : Prop :=
  ∀ n, P10991811074997443404.a n = A357448 n

end A357448

/-! ## A357448.P6922315878562733084

`and(A122041(n+1), A261691(n))`
-/

namespace A357448.P6922315878562733084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122041 (n + 1)) (A261691 n)

end

end A357448.P6922315878562733084

namespace A357448

/-- `and(A122041(n+1), A261691(n))` -/
def P6922315878562733084.Spec : Prop :=
  ∀ n, P6922315878562733084.a n = A357448 n

end A357448

/-! ## A357448.P627738902905436423

`and(A196657(n), A261691(n))`
-/

namespace A357448.P627738902905436423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196657 n) (A261691 n)

end

end A357448.P627738902905436423

namespace A357448

/-- `and(A196657(n), A261691(n))` -/
def P627738902905436423.Spec : Prop :=
  ∀ n, P627738902905436423.a n = A357448 n

end A357448

/-! ## A357448.P6587431474376986304

`and(A244040(n), A305262(n))`
-/

namespace A357448.P6587431474376986304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244040 n) (A305262 n)

end

end A357448.P6587431474376986304

namespace A357448

/-- `and(A244040(n), A305262(n))` -/
def P6587431474376986304.Spec : Prop :=
  ∀ n, P6587431474376986304.a n = A357448 n

end A357448

/-! ## A357448.P3249242309416142250

`and(A244040(n), A305269(n))`
-/

namespace A357448.P3249242309416142250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244040 n) (A305269 n)

end

end A357448.P3249242309416142250

namespace A357448

/-- `and(A244040(n), A305269(n))` -/
def P3249242309416142250.Spec : Prop :=
  ∀ n, P3249242309416142250.a n = A357448 n

end A357448

/-! ## A357448.P14336010229424225522

`and(A244040(n), A345109(n+1))`
-/

namespace A357448.P14336010229424225522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244040 n) (A345109 (n + 1))

end

end A357448.P14336010229424225522

namespace A357448

/-- `and(A244040(n), A345109(n+1))` -/
def P14336010229424225522.Spec : Prop :=
  ∀ n, P14336010229424225522.a n = A357448 n

end A357448

/-! ## A357448.P9550320090050760278

`and(A057775(n), A261691(n))`
-/

namespace A357448.P9550320090050760278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057775 n) (A261691 n)

end

end A357448.P9550320090050760278

namespace A357448

/-- `and(A057775(n), A261691(n))` -/
def P9550320090050760278.Spec : Prop :=
  ∀ n, P9550320090050760278.a n = A357448 n

end A357448

/-! ## A357448.P5505275129797615987

`and(A244040(n), A345108(n+1))`
-/

namespace A357448.P5505275129797615987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A244040 n) (A345108 (n + 1))

end

end A357448.P5505275129797615987

namespace A357448

/-- `and(A244040(n), A345108(n+1))` -/
def P5505275129797615987.Spec : Prop :=
  ∀ n, P5505275129797615987.a n = A357448 n

end A357448

/-! ## A357448.P8882256736823864369

`and(1, A244040(n)*A305155(n))`
-/

namespace A357448.P8882256736823864369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A244040 n * A305155 n)

end

end A357448.P8882256736823864369

namespace A357448

/-- `and(1, A244040(n)*A305155(n))` -/
def P8882256736823864369.Spec : Prop :=
  ∀ n, P8882256736823864369.a n = A357448 n

end A357448

/-!
# A357450: a(n) is the smallest integer having exactly n odd square divisors (A298735).

The programs for A357450, there is no canonical definition to state claims against.
-/

/-! ## A357450.P8918201849041354358

`A038547(n+1)²`
-/

namespace A357450.P8918201849041354358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038547 (n + 1) ^ 2

end

end A357450.P8918201849041354358

/-! ## A357450.P11248809804804071356

`A119265(∑[n+1])²`
-/

namespace A357450.P11248809804804071356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A357450.P11248809804804071356

/-! ## A357450.P4225238381388392583

`A038547(n+1)^A000005(A042966(n+1))`
-/

namespace A357450.P4225238381388392583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038547 (n + 1) : ℚ) ^ (A000005 (A042966 (n + 1)).toNat : ℤ)

end

end A357450.P4225238381388392583

/-! ## A357450.P896450878790487354

`A038547(n+1)^A000005(A045471(n+1))`
-/

namespace A357450.P896450878790487354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038547 (n + 1) : ℚ) ^ (A000005 (A045471 (n + 1)).toNat : ℤ)

end

end A357450.P896450878790487354

/-! ## A357450.P15211903442696704795

`A038547(n+1)^A000005(A051071(n+1))`
-/

namespace A357450.P15211903442696704795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038547 (n + 1) : ℚ) ^ (A000005 (A051071 (n + 1)).toNat : ℤ)

end

end A357450.P15211903442696704795

/-! ## A357450.P15444907046375150105

`A038547(n+1)^A000005(A052042(n+1))`
-/

namespace A357450.P15444907046375150105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038547 (n + 1) : ℚ) ^ (A000005 (A052042 (n + 1)).toNat : ℤ)

end

end A357450.P15444907046375150105

/-! ## A357450.P12618694579513234254

`A038547(n+1)^A000005(A078494(n+1))`
-/

namespace A357450.P12618694579513234254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038547 (n + 1) : ℚ) ^ (A000005 (A078494 (n + 1)).toNat : ℤ)

end

end A357450.P12618694579513234254

/-!
# A357451: Number of compositions (ordered partitions) of n into tribonacci numbers 1,2,4,7,13,24, ... (A000073).

The programs for A357451, there is no canonical definition to state claims against.
-/

/-! ## A357451.P2721278954268578348

`A381781(A018074(n+1))`
-/

namespace A357451.P2721278954268578348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381781 (A018074 (n + 1)).toNat

end

end A357451.P2721278954268578348

/-! ## A357451.P17442906923517920013

`A226190(A181649(n+1))`
-/

namespace A357451.P17442906923517920013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A181649 (n + 1)).toNat

end

end A357451.P17442906923517920013

/-! ## A357451.P18369848533892767057

`A181649(n)-A277157(A073039(n+1))`
-/

namespace A357451.P18369848533892767057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181649 n - A277157 (A073039 (n + 1)).toNat

end

end A357451.P18369848533892767057

/-! ## A357451.P4066574124372507107

`A181649(A062399(n))`
-/

namespace A357451.P4066574124372507107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181649 (A062399 n).toNat

end

end A357451.P4066574124372507107

/-! ## A357451.P14811382075111356968

`A181649(A120126(n))`
-/

namespace A357451.P14811382075111356968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181649 (A120126 n).toNat

end

end A357451.P14811382075111356968

/-!
# A357452: Number of partitions of n into tetranacci numbers 1,2,4,8,15,29, ... (A000078).

The programs for A357452, there is no canonical definition to state claims against.
-/

/-! ## A357452.P2100094269397442032

`A185284(A070752(n+1))+A018819(n)`
-/

namespace A357452.P2100094269397442032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A070752 (n + 1)).toNat + A018819 n

end

end A357452.P2100094269397442032

/-! ## A357452.P8085349690930256237

`A079998(A184705(n+1))+A018819(n)`
-/

namespace A357452.P8085349690930256237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079998 (A184705 (n + 1)).toNat + A018819 n

end

end A357452.P8085349690930256237

/-! ## A357452.P1146563661830258178

`A185284(A104428(n+1))+A018819(n)`
-/

namespace A357452.P1146563661830258178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A104428 (n + 1)).toNat + A018819 n

end

end A357452.P1146563661830258178

/-! ## A357452.P4335164676081642974

`A357454(n)+A185284(A070752(n+1))`
-/

namespace A357452.P4335164676081642974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357454 n + A185284 (A070752 (n + 1)).toNat

end

end A357452.P4335164676081642974

/-! ## A357452.P9703216706569554782

`A101264(A101286(3*(n+1)))+A018819(n)`
-/

namespace A357452.P9703216706569554782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A101286 (3 * (n + 1))).toNat + A018819 n

end

end A357452.P9703216706569554782

/-!
# A357453: Number of compositions (ordered partitions) of n into tetranacci numbers 1,2,4,8,15,29, ... (A000078).

The programs for A357453, there is no canonical definition to state claims against.
-/

/-! ## A357453.P2867764506712491684

`A185284(2*(n+1))+A050379(2^n)`
-/

namespace A357453.P2867764506712491684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * (n + 1)) + A050379 (2 ^ n)

end

end A357453.P2867764506712491684

/-! ## A357453.P10405250265108211792

`A112473(A207642(n))+A050379(2^n)`
-/

namespace A357453.P10405250265108211792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112473 (A207642 n).toNat + A050379 (2 ^ n)

end

end A357453.P10405250265108211792

/-! ## A357453.P2185448738387654048

`A023359(n)+A010815(A018908(n))`
-/

namespace A357453.P2185448738387654048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023359 n + A010815 (A018908 n).toNat

end

end A357453.P2185448738387654048

/-! ## A357453.P908133870004462325

`A185044(A238858(n))+A023359(n)`
-/

namespace A357453.P908133870004462325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A238858 n).toNat + A023359 n

end

end A357453.P908133870004462325

/-! ## A357453.P7971701265750900064

`A102683(A139051(n+1))+A023359(n)`
-/

namespace A357453.P7971701265750900064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A139051 (n + 1)).toNat + A023359 n

end

end A357453.P7971701265750900064

/-!
# A357454: Number of partitions of n into pentanacci numbers 1,2,4,8,16,31, ... (A001591).

The programs for A357454, there is no canonical definition to state claims against.
-/

/-! ## A357454.P11534339090141953560

`Δ[A000123(n)-A008644(n)]`
-/

namespace A357454.P11534339090141953560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n - A008644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357454.P11534339090141953560

/-! ## A357454.P16217438570424190445

`A018819(n)+A010054(A250320(n+1))`
-/

namespace A357454.P16217438570424190445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n + A010054 (A250320 (n + 1)).toNat

end

end A357454.P16217438570424190445

/-! ## A357454.P9897053452012043711

`or(A010054(A062052(n+4)), A018819(n))`
-/

namespace A357454.P9897053452012043711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A062052 (n + 4)).toNat) (A018819 n)

end

end A357454.P9897053452012043711

/-! ## A357454.P5685841262004620207

`A070109(A257459(3*n+2))+A018819(n)`
-/

namespace A357454.P5685841262004620207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070109 (A257459 (3 * n + 2)).toNat + A018819 n

end

end A357454.P5685841262004620207

/-! ## A357454.P5319256479156849901

`A018819(n)+A010054(A130206(2*n+5))`
-/

namespace A357454.P5319256479156849901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n + A010054 (A130206 (2 * n + 5)).toNat

end

end A357454.P5319256479156849901

/-!
# A357456: Number of partitions of n into two or more odd parts.

The programs for A357456, there is no canonical definition to state claims against.
-/

/-! ## A357456.P8746029882550441736

`A052839(n)-(n%2+1)`
-/

namespace A357456.P8746029882550441736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - ((n % 2 + 1 : ℕ) : ℤ)

end

end A357456.P8746029882550441736

/-! ## A357456.P5375137356770957204

`A000009(n)-and(1, n)^n`
-/

namespace A357456.P5375137356770957204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - (Nat.land 1 n ^ n : ℤ)

end

end A357456.P5375137356770957204

/-! ## A357456.P15050764983154477620

`abs(A081360(n))-and(1, n)^n`
-/

namespace A357456.P15050764983154477620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - (Nat.land 1 n ^ n : ℤ)

end

end A357456.P15050764983154477620

/-! ## A357456.P4152266821452182748

`∑{d}[n, A078374(#)]-char[2*n+1]`
-/

namespace A357456.P4152266821452182748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078374 d - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A357456.P4152266821452182748

/-! ## A357456.P9110654685148047118

`∑[A087897(n)]-(n^floor(atan(n)))%2`
-/

namespace A357456.P9110654685148047118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))) 2

end

end A357456.P9110654685148047118

/-! ## A357456.P4956666433239933430

`A357457(n)+A331848(n)`
-/

namespace A357456.P4956666433239933430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357457 n + A331848 n

end

end A357456.P4956666433239933430

/-! ## A357456.P17467935646462032241

`A052839(n)-A000034(n)`
-/

namespace A357456.P17467935646462032241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n - A000034 n

end

end A357456.P17467935646462032241

/-! ## A357456.P8066729419644636529

`A000009(n)-A135528(n+1)`
-/

namespace A357456.P8066729419644636529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A135528 (n + 1)

end

end A357456.P8066729419644636529

/-! ## A357456.P3178120939212834726

`A000009(n)+A040001(n)-2`
-/

namespace A357456.P3178120939212834726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A040001 n - 2)

end

end A357456.P3178120939212834726

/-! ## A357456.P17758613451627569500

`A000009(n)+A357457(n)-A000700(n)`
-/

namespace A357456.P17758613451627569500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A357457 n - A000700 n)

end

end A357456.P17758613451627569500

/-! ## A357456.P7903882904106484404

`A111133(n)+Δ[A065033(n)]`
-/

namespace A357456.P7903882904106484404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (f1 (n + 1) - f1 n)

end

end A357456.P7903882904106484404

/-! ## A357456.P3210792072418558760

`A000009(n)-A266591(n+1)`
-/

namespace A357456.P3210792072418558760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A266591 (n + 1)

end

end A357456.P3210792072418558760

/-! ## A357456.P13774279138353375736

`A052816(n)-a(n-1)-1` with `a(0)=0, a(1)=0`
-/

namespace A357456.P13774279138353375736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A052816 n - a (n - 1) - 1

end

end A357456.P13774279138353375736

/-! ## A357456.P12493835159992870219

`A061199(∑[n]+1)-and(1, n)`
-/

namespace A357456.P12493835159992870219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061199 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - (Nat.land 1 n : ℤ)

end

end A357456.P12493835159992870219

/-!
# A357457: Number of partitions of n into two or more distinct odd parts.

The programs for A357457, there is no canonical definition to state claims against.
-/

/-! ## A357457.P7348028455552712654

`A357456(n)-A331848(n)`
-/

namespace A357457.P7348028455552712654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 n - A331848 n

end

end A357457.P7348028455552712654

/-! ## A357457.P5707030241491203835

`A000700(n)-A135528(n+1)`
-/

namespace A357457.P5707030241491203835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A135528 (n + 1)

end

end A357457.P5707030241491203835

/-! ## A357457.P9906499203993271747

`abs(A081362(n))-A135528(n+1)`
-/

namespace A357457.P9906499203993271747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 n| - A135528 (n + 1)

end

end A357457.P9906499203993271747

/-! ## A357457.P8304005471597226966

`(A000700(n)-n%2)%A145977(n)`
-/

namespace A357457.P8304005471597226966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n - ((n % 2 : ℕ) : ℤ)) (A145977 n)

end

end A357457.P8304005471597226966

/-! ## A357457.P8604687491522604687

`A000700(n)-A000035(A000007(n)+n)`
-/

namespace A357457.P8604687491522604687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - A000035 (A000007 n + (n : ℤ)).toNat

end

end A357457.P8604687491522604687

/-! ## A357457.P5140117751360545158

`A000700(n)+A357456(n)-A000009(n)`
-/

namespace A357457.P5140117751360545158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n + (A357456 n - A000009 n)

end

end A357457.P5140117751360545158

/-! ## A357457.P13961172053448317750

`(A000700(n)-A000035(n))%A000009(n)`
-/

namespace A357457.P13961172053448317750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 n - A000035 n) (A000009 n)

end

end A357457.P13961172053448317750

/-! ## A357457.P13676311319329792984

`abs(A081362(n))+A357456(n)-A000009(n)`
-/

namespace A357457.P13676311319329792984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081362 n| + (A357456 n - A000009 n)

end

end A357457.P13676311319329792984

/-! ## A357457.P11772931244063107102

`A033999(n)*A081362(n)-A135528(n+1)`
-/

namespace A357457.P11772931244063107102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A081362 n - A135528 (n + 1)

end

end A357457.P11772931244063107102

/-! ## A357457.P13507711398267142633

`gcd(A000038(n), A081362(n))-A135528(n+1)`
-/

namespace A357457.P13507711398267142633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A081362 n) : ℤ) - A135528 (n + 1)

end

end A357457.P13507711398267142633

/-! ## A357457.P13764448538284281135

`lcm(A020985(n), A081362(n))-A135528(n+1)`
-/

namespace A357457.P13764448538284281135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A020985 n) (A081362 n) : ℤ) - A135528 (n + 1)

end

end A357457.P13764448538284281135

/-! ## A357457.P18358264865526037919

`A000035(n+1)-(A054977(n)-A000700(n))`
-/

namespace A357457.P18358264865526037919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - (A054977 n - A000700 n)

end

end A357457.P18358264865526037919

/-! ## A357457.P3646060940058008316

`(A000035(n+1)-A000035(n))*A081362(n)-A135528(n+1)`
-/

namespace A357457.P3646060940058008316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) - A000035 n) * A081362 n - A135528 (n + 1)

end

end A357457.P3646060940058008316

/-! ## A357457.P14137926152856070756

`A000700(n)-A210882(n+3)%2`
-/

namespace A357457.P14137926152856070756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 n - Int.tmod (A210882 (n + 3)) 2

end

end A357457.P14137926152856070756

/-! ## A357457.P1169582904186425561

`A046682(n)-(A135528(n+1)+A000701(n))`
-/

namespace A357457.P1169582904186425561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046682 n - (A135528 (n + 1) + A000701 n)

end

end A357457.P1169582904186425561

/-! ## A357457.P6545030095242563918

`abs(A027187(n)-A027193(n))-A135528(n+1)`
-/

namespace A357457.P6545030095242563918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027187 n - A027193 n| - A135528 (n + 1)

end

end A357457.P6545030095242563918

/-! ## A357457.P253809453823458848

`A357456(n)-A000009(n)+A046682(n)-A000701(n)`
-/

namespace A357457.P253809453823458848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357456 n - A000009 n + (A046682 n - A000701 n)

end

end A357457.P253809453823458848

/-! ## A357457.P4972579457613580666

`A000041(n)-(A330644(n)+A135528(n+1))`
-/

namespace A357457.P4972579457613580666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A330644 n + A135528 (n + 1))

end

end A357457.P4972579457613580666

/-!
# A357458: First differences of A325033 = "Sum of sums of the multiset of prime indices of each prime index of n.".

The programs for A357458, the canonical program `A357458.P18104595977379584020` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357458 has offset 1).

The definition of A357458 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A325033, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A357458.P18104595977379584020

`A325033(n+2)-A325033(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A357458

/-- `A325033(n+2)-A325033(n+1)` -/
def P18104595977379584020.Spec : Prop :=
  ∀ n, P18104595977379584020.a n = A357458 (n + 1)

theorem P18104595977379584020.correct : P18104595977379584020.Spec := by
  intro n
  simp only [A357458, Nat.add_sub_cancel]

end A357458

/-! ## A357458.P13644736306688375781

`Δ[A325033(n+1)]`
-/

namespace A357458.P13644736306688375781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P13644736306688375781

namespace A357458

/-- `Δ[A325033(n+1)]` -/
def P13644736306688375781.Spec : Prop :=
  ∀ n, P13644736306688375781.a n = A357458 (n + 1)

theorem P13644736306688375781.correct : P13644736306688375781.Spec := by
  intro n
  simp only [A357458, Nat.add_sub_cancel, A357458.P13644736306688375781.f1, A357458.P13644736306688375781.a, A357458.P18104595977379584020.a, SequenceMachineLib.memo_apply]

end A357458

/-! ## A357458.P15720080605451094441

`Δ[A056239(A003963(n+1))]`
-/

namespace A357458.P15720080605451094441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P15720080605451094441

namespace A357458

/-- `Δ[A056239(A003963(n+1))]` -/
def P15720080605451094441.Spec : Prop :=
  ∀ n, P15720080605451094441.a n = A357458 (n + 1)

theorem P15720080605451094441.correct : P15720080605451094441.Spec := by
  intro n
  simp only [A357458, Nat.add_sub_cancel, A357458.P15720080605451094441.f1, A357458.P15720080605451094441.a, A357458.P18104595977379584020.a, A003963, A003963.P6853423646423809573.a, A056239, A056239.P11316688788989965672.a, A325033, A325033.P18279495578190988988.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A048896, A048896.P6461019053085857547.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A048881, A048881.P16567064232951496228.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A357458

/-! ## A357458.P15985047101858264434

`Δ[A346698(A003963((n+1)²))]`
-/

namespace A357458.P15985047101858264434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (A003963 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P15985047101858264434

namespace A357458

/-- `Δ[A346698(A003963((n+1)²))]` -/
def P15985047101858264434.Spec : Prop :=
  ∀ n, P15985047101858264434.a n = A357458 (n + 1)

end A357458

/-! ## A357458.P13791931799267501524

`Δ[A346700(A003963(n+1)²)]`
-/

namespace A357458.P13791931799267501524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346700 (A003963 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P13791931799267501524

namespace A357458

/-- `Δ[A346700(A003963(n+1)²)]` -/
def P13791931799267501524.Spec : Prop :=
  ∀ n, P13791931799267501524.a n = A357458 (n + 1)

end A357458

/-! ## A357458.P7247966203083638445

`Δ[A302039(A003963(2*(n+1)))]`
-/

namespace A357458.P7247966203083638445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302039 (A003963 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P7247966203083638445

namespace A357458

/-- `Δ[A302039(A003963(2*(n+1)))]` -/
def P7247966203083638445.Spec : Prop :=
  ∀ n, P7247966203083638445.a n = A357458 (n + 1)

end A357458

/-! ## A357458.P9306050973097728801

`Δ[A056239(A325036(n+1)+A056239(n+1))]`
-/

namespace A357458.P9306050973097728801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325036 (n + 1) + A056239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P9306050973097728801

namespace A357458

/-- `Δ[A056239(A325036(n+1)+A056239(n+1))]` -/
def P9306050973097728801.Spec : Prop :=
  ∀ n, P9306050973097728801.a n = A357458 (n + 1)

theorem P9306050973097728801.correct : P9306050973097728801.Spec := by
  intro n
  simp only [A357458, Nat.add_sub_cancel, A357458.P9306050973097728801.f1, A357458.P9306050973097728801.a, A357458.P18104595977379584020.a, A056239, A056239.P11316688788989965672.a, A325033, A325033.P18279495578190988988.a, A325036, A325036.P14148753285896189603.a, A003963, A003963.P6853423646423809573.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048896, A048896.P6461019053085857547.a, A243499, A243499.P13821279400790425584.a, A023416, A023416.P8124303482289229133.a, A048881, A048881.P16567064232951496228.a, A053645, A053645.P13234994043849603743.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A357458

/-! ## A357458.P16700152457396941008

`Δ[A056239(A156061(n+1)*A290106(n+1))]`
-/

namespace A357458.P16700152457396941008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A156061 (n + 1) * A290106 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A357458.P16700152457396941008

namespace A357458

/-- `Δ[A056239(A156061(n+1)*A290106(n+1))]` -/
def P16700152457396941008.Spec : Prop :=
  ∀ n, P16700152457396941008.a n = A357458 (n + 1)

end A357458

/-! ## A357458.P7642520322162808710

`A056239(A003963(n+2))-A056239(A003963(n+1))`
-/

namespace A357458.P7642520322162808710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A003963 (n + 2)).toNat - A056239 (A003963 (n + 1)).toNat

end

end A357458.P7642520322162808710

namespace A357458

/-- `A056239(A003963(n+2))-A056239(A003963(n+1))` -/
def P7642520322162808710.Spec : Prop :=
  ∀ n, P7642520322162808710.a n = A357458 (n + 1)

end A357458

/-!
# A357459: The total number of fixed points among all partitions of n, when parts are written in nondecreasing order.

The programs for A357459, there is no canonical definition to state claims against.
-/

/-! ## A357459.P9855087502020683993

`A262265(A088314(n+1))`
-/

namespace A357459.P9855087502020683993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (A088314 (n + 1)).toNat

end

end A357459.P9855087502020683993

/-! ## A357459.P2556494767482188707

`A262265(A130898(n+1))`
-/

namespace A357459.P2556494767482188707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (A130898 (n + 1)).toNat

end

end A357459.P2556494767482188707

/-! ## A357459.P12943725618473390646

`A262265(A199016(n+1))`
-/

namespace A357459.P12943725618473390646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (A199016 (n + 1)).toNat

end

end A357459.P12943725618473390646

/-! ## A357459.P15883147791791195394

`A262265(A341125(n+8))`
-/

namespace A357459.P15883147791791195394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262265 (A341125 (n + 8)).toNat

end

end A357459.P15883147791791195394

/-! ## A357459.P12227179011884059367

`A145735(n+1)-A238689(n+1)`
-/

namespace A357459.P12227179011884059367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145735 (n + 1) - A238689 (n + 1)

end

end A357459.P12227179011884059367

/-!
# A357460: Numbers whose number of deficient divisors is equal to their number of nondeficient divisors.

The programs for A357460, the canonical program `A357460.P2237439147357638215` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357460 has offset 1).

The definition of A357460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357460.P2237439147357638215

`eq[A080226(n+1), A341620(n+1)]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A357460

/-- `eq[A080226(n+1), A341620(n+1)]+1` -/
def P2237439147357638215.Spec : Prop :=
  ∀ n, (P2237439147357638215.a n : ℤ) = A357460 (n + 1)

theorem P2237439147357638215.correct : P2237439147357638215.Spec := by
  intro n
  simp only [A357460, Nat.add_sub_cancel]

end A357460

/-! ## A357460.P666648391409140696

`A153152(eq[A080226(n+1), A341620(n+1)])`
-/

namespace A357460.P666648391409140696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A357460.P666648391409140696

namespace A357460

/-- `A153152(eq[A080226(n+1), A341620(n+1)])` -/
def P666648391409140696.Spec : Prop :=
  ∀ n, P666648391409140696.a n = A357460 (n + 1)

end A357460

/-!
# A357462: Numbers whose sum of deficient divisors is equal to their sum of nondeficient divisors.

The programs for A357462, there is no canonical definition to state claims against.
-/

/-! ## A357462.P16094967521513460193

`∩[A048265(n+1), A389463(n+1)]`
-/

namespace A357462.P16094967521513460193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357462.P16094967521513460193

/-! ## A357462.P7970245821024131867

`∩[A120370(n+1), A389463(n+1)]`
-/

namespace A357462.P7970245821024131867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357462.P7970245821024131867

/-! ## A357462.P7533380920090788307

`∩[A184967(n+1), A389463(n+1)]`
-/

namespace A357462.P7533380920090788307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357462.P7533380920090788307

/-! ## A357462.P11852488245437168587

`∩[A074902(n+1), A143907(n+1)]`
-/

namespace A357462.P11852488245437168587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357462.P11852488245437168587

/-!
# A357474: Squarely correct numbers.

The programs for A357474, there is no canonical definition to state claims against.
-/

/-! ## A357474.P7179898977254260953

`∩[A166498(n+1), A229300(n+1)]`
-/

namespace A357474.P7179898977254260953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357474.P7179898977254260953

/-! ## A357474.P13657743470518613409

`∩[A166498(n+1), A225859(n+1)]`
-/

namespace A357474.P13657743470518613409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357474.P13657743470518613409

/-! ## A357474.P15961765482333850380

`∩[A166498(n+1), A346129(n+1)]`
-/

namespace A357474.P15961765482333850380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166498 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357474.P15961765482333850380

/-!
# A357476: Number of partitions of n into two or more powers of 2.

The programs for A357476, the canonical program `A357476.P18270851588785334001` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357476 has offset 0).

The definition of A357476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357476.P18270851588785334001

`A018819(n)-∏{p}[n, val(#, 2)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A357476

/-- `A018819(n)-∏{p}[n, val(#, 2)]` -/
def P18270851588785334001.Spec : Prop :=
  ∀ n, P18270851588785334001.a n = A357476 n

theorem P18270851588785334001.correct : P18270851588785334001.Spec := by
  intro n
  simp only [A357476]

end A357476

/-! ## A357476.P7290894806912705786

`A000123(floor(n/2))-∏{p}[n, val(#, 2)]`
-/

namespace A357476.P7290894806912705786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 ⌊(n : ℚ) / 2⌋.toNat - ((∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A357476.P7290894806912705786

namespace A357476

/-- `A000123(floor(n/2))-∏{p}[n, val(#, 2)]` -/
def P7290894806912705786.Spec : Prop :=
  ∀ n, P7290894806912705786.a n = A357476 n

end A357476

/-! ## A357476.P4460601094312585091

`A018819(n)-char[A131577(n)]`
-/

namespace A357476.P4460601094312585091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357476.P4460601094312585091

namespace A357476

/-- `A018819(n)-char[A131577(n)]` -/
def P4460601094312585091.Spec : Prop :=
  ∀ n, P4460601094312585091.a n = A357476 n

end A357476

/-! ## A357476.P15168188693317748638

`A018819(n)-A255738(n+1)`
-/

namespace A357476.P15168188693317748638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - A255738 (n + 1)

end

end A357476.P15168188693317748638

namespace A357476

/-- `A018819(n)-A255738(n+1)` -/
def P15168188693317748638.Spec : Prop :=
  ∀ n, P15168188693317748638.a n = A357476 n

end A357476

/-! ## A357476.P16025235221278184141

`A018819(n)-char[A135416(n+1)]`
-/

namespace A357476.P16025235221278184141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357476.P16025235221278184141

namespace A357476

/-- `A018819(n)-char[A135416(n+1)]` -/
def P16025235221278184141.Spec : Prop :=
  ∀ n, P16025235221278184141.a n = A357476 n

end A357476

/-! ## A357476.P15209266594025016291

`A018819(n)-A209229(comp[xor(n, 2*n)])`
-/

namespace A357476.P15209266594025016291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - A209229 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A357476.P15209266594025016291

namespace A357476

/-- `A018819(n)-A209229(comp[xor(n, 2*n)])` -/
def P15209266594025016291.Spec : Prop :=
  ∀ n, P15209266594025016291.a n = A357476 n

end A357476

/-! ## A357476.P8783284841078011237

`A018819(n)-char[A099894(n)]`
-/

namespace A357476.P8783284841078011237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A357476.P8783284841078011237

namespace A357476

/-- `A018819(n)-char[A099894(n)]` -/
def P8783284841078011237.Spec : Prop :=
  ∀ n, P8783284841078011237.a n = A357476 n

end A357476

/-! ## A357476.P611795235989027178

`A018819(n)-A075897(2*n+1)`
-/

namespace A357476.P611795235989027178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n - A075897 (2 * n + 1)

end

end A357476.P611795235989027178

namespace A357476

/-- `A018819(n)-A075897(2*n+1)` -/
def P611795235989027178.Spec : Prop :=
  ∀ n, P611795235989027178.a n = A357476 n

end A357476

/-! ## A357476.P4041784554968006142

`A018819(n)+A357534(n)-A023359(n)`
-/

namespace A357476.P4041784554968006142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018819 n + (A357534 n - A023359 n)

end

end A357476.P4041784554968006142

namespace A357476

/-- `A018819(n)+A357534(n)-A023359(n)` -/
def P4041784554968006142.Spec : Prop :=
  ∀ n, P4041784554968006142.a n = A357476 n

end A357476

/-!
# A357479: a(n) = (n!/6) * Sum_{k=0..n-3} 1/k!.

The programs for A357479, the canonical program `A357479.P12570726233584423552` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357479 has offset 0).

The definition of A357479 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357479.P12570726233584423552

`n*a(n-1)+C(n, 3)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357479

/-- `n*a(n-1)+C(n, 3)` -/
def P12570726233584423552.Spec : Prop :=
  ∀ n, (P12570726233584423552.a n : ℤ) = A357479 n

theorem P12570726233584423552.correct : P12570726233584423552.Spec := by
  intro n
  simp only [A357479]

end A357479

/-! ## A357479.P594072371276298223

`∑[∑[n]]+n*(a(n-1)-n)` with `a(0)=0`
-/

namespace A357479.P594072371276298223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * (a (n - 1) - (n : ℤ))

end

end A357479.P594072371276298223

namespace A357479

/-- `∑[∑[n]]+n*(a(n-1)-n)` -/
def P594072371276298223.Spec : Prop :=
  ∀ n, P594072371276298223.a n = A357479 n

end A357479

/-! ## A357479.P6167916127234043155

`∑[∑[n]]-n*(n-a(n-1))` with `a(0)=0`
-/

namespace A357479.P6167916127234043155
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) * ((n : ℤ) - a (n - 1))

end

end A357479.P6167916127234043155

namespace A357479

/-- `∑[∑[n]]-n*(n-a(n-1))` -/
def P6167916127234043155.Spec : Prop :=
  ∀ n, P6167916127234043155.a n = A357479 n

end A357479

/-! ## A357479.P11078920468871394891

`Δ[A000332(n)]+n*a(n-1)` with `a(0)=0`
-/

namespace A357479.P11078920468871394891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  f1 (n + 1) - f1 n + (n : ℤ) * a (n - 1)

end

end A357479.P11078920468871394891

namespace A357479

/-- `Δ[A000332(n)]+n*a(n-1)` -/
def P11078920468871394891.Spec : Prop :=
  ∀ n, P11078920468871394891.a n = A357479 n

end A357479

/-! ## A357479.P1400074977811826121

`(A038155(n)-∑[n-1]-1)/3`
-/

namespace A357479.P1400074977811826121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A038155 n - ∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 3

end

end A357479.P1400074977811826121

namespace A357479

/-- `(A038155(n)-∑[n-1]-1)/3` -/
def P1400074977811826121.Spec : Prop :=
  ∀ n, P1400074977811826121.a n = (A357479 n : ℚ)

end A357479

/-!
# A357480: a(n) = (n!/24) * Sum_{k=0..n-4} 1/k!.

The programs for A357480, the canonical program `A357480.P6128717014901503624` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357480 has offset 0).

The definition of A357480 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A357480.P6128717014901503624

`n*a(n-1)+C(n, 4)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A357480

/-- `n*a(n-1)+C(n, 4)` -/
def P6128717014901503624.Spec : Prop :=
  ∀ n, (P6128717014901503624.a n : ℤ) = A357480 n

theorem P6128717014901503624.correct : P6128717014901503624.Spec := by
  intro n
  simp only [A357480]

end A357480

/-! ## A357480.P13374826068960943271

`A000332(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A357480.P13374826068960943271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000332 n + (n : ℤ) * a (n - 1)

end

end A357480.P13374826068960943271

namespace A357480

/-- `A000332(n)+n*a(n-1)` -/
def P13374826068960943271.Spec : Prop :=
  ∀ n, P13374826068960943271.a n = A357480 n

end A357480

/-! ## A357480.P3157129303488221340

`A060008(n)/9+n*a(n-1)` with `a(0)=0`
-/

namespace A357480.P3157129303488221340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (A060008 n : ℚ) / 9 + (n : ℚ) * a (n - 1)

end

end A357480.P3157129303488221340

namespace A357480

/-- `A060008(n)/9+n*a(n-1)` -/
def P3157129303488221340.Spec : Prop :=
  ∀ n, P3157129303488221340.a n = (A357480 n : ℚ)

end A357480

/-! ## A357480.P9778765836970044152

`A079688(A000073(n)^3)`
-/

namespace A357480.P9778765836970044152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079688 (A000073 n ^ 3).toNat

end

end A357480.P9778765836970044152

namespace A357480

/-- `A079688(A000073(n)^3)` -/
def P9778765836970044152.Spec : Prop :=
  ∀ n, P9778765836970044152.a n = A357480 n

end A357480

/-!
# A357485: Heinz numbers of integer partitions with the same length as reverse-alternating sum.

The programs for A357485, there is no canonical definition to state claims against.
-/

/-! ## A357485.P17020441653146381823

`eq[A001222(n+1), A316524(n+1)]+1`
-/

namespace A357485.P17020441653146381823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357485.P17020441653146381823

/-! ## A357485.P12899858103230136716

`eq[A056239(n+1)-2*A346698(n+1), A073093(n+1)-1]+1`
-/

namespace A357485.P12899858103230136716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - 2 * A346698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357485.P12899858103230136716

/-! ## A357485.P14201239810781366045

`∩[A026422(n+1), A357486(n+1)]`
-/

namespace A357485.P14201239810781366045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357485.P14201239810781366045

/-! ## A357485.P16057123398145002312

`∩[A344609(n+1), A357486(n+1)]`
-/

namespace A357485.P16057123398145002312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A357485.P16057123398145002312

/-!
# A357486: Heinz numbers of integer partitions with the same length as alternating sum.

The programs for A357486, there is no canonical definition to state claims against.
-/

/-! ## A357486.P13174387502028136131

`eq[A001222(n+1), A344616(n+1)]+1`
-/

namespace A357486.P13174387502028136131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357486.P13174387502028136131

/-! ## A357486.P9900500941119122645

`eq[abs(A316524(n+1)), A001222(n+1)]+1`
-/

namespace A357486.P9900500941119122645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A316524 (n + 1)|

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357486.P9900500941119122645

/-! ## A357486.P6129046329803402980

`eq[val(A165827(n+1), 2), A344616(n+1)]+1`
-/

namespace A357486.P6129046329803402980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357486.P6129046329803402980

/-! ## A357486.P11947811396285269862

`eq[val(A165851(n+1), 2), A344616(n+1)]+1`
-/

namespace A357486.P11947811396285269862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165851 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A357486.P11947811396285269862

/-! ## A357486.P6329322235181345421

`eq[A302242(A000040(n+1)), A344616(n+1)]+1`
-/

namespace A357486.P6329322235181345421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A357486.P6329322235181345421

/-!
# A357487: Number of integer partitions of n with the same length as reverse-alternating sum.

The programs for A357487, there is no canonical definition to state claims against.
-/

/-! ## A357487.P14355797011630589226

`A357189(floor(atan(n))+(n-1)^(n%2))`
-/

namespace A357487.P14355797011630589226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 (⌊Real.arctan (n : ℝ)⌋ + ((n : ℤ) - 1) ^ (n % 2)).toNat

end

end A357487.P14355797011630589226

/-! ## A357487.P12219488612091628198

`A357189(gcd(n, -xor(n, C(n, n²)-2)))`
-/

namespace A357487.P12219488612091628198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 (Int.gcd (n : ℤ) (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)))

end

end A357487.P12219488612091628198

/-! ## A357487.P12339957709457975344

`A357189(gcd(n, A114112(n+1)))`
-/

namespace A357487.P12339957709457975344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 (Int.gcd (n : ℤ) (A114112 (n + 1)))

end

end A357487.P12339957709457975344

/-! ## A357487.P8618720294024083847

`lcm(and(1, ∏{d}[n, #]), A357189(n))`
-/

namespace A357487.P8618720294024083847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.land 1 (∏ d ∈ Nat.divisors (f1 n), d) : ℤ) (A357189 n)

end

end A357487.P8618720294024083847

/-! ## A357487.P4705482171992183905

`A357189(n)%A221073(n)`
-/

namespace A357487.P4705482171992183905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357189 n) (A221073 n)

end

end A357487.P4705482171992183905

/-! ## A357487.P15243204965859770427

`lcm(A073097(n), A357189(n))`
-/

namespace A357487.P15243204965859770427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A357189 n)

end

end A357487.P15243204965859770427

/-! ## A357487.P9526138780826111838

`and(A051049(n), A357189(n))`
-/

namespace A357487.P9526138780826111838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A051049 n) (A357189 n)

end

end A357487.P9526138780826111838

/-! ## A357487.P714946763268718886

`and(A266090(n), A357189(n))`
-/

namespace A357487.P714946763268718886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266090 n) (A357189 n)

end

end A357487.P714946763268718886

/-! ## A357487.P4862702065745558713

`and(A266324(n), A357189(n))`
-/

namespace A357487.P4862702065745558713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266324 n) (A357189 n)

end

end A357487.P4862702065745558713

/-! ## A357487.P13398571905418733132

`and(A266380(n), A357189(n))`
-/

namespace A357487.P13398571905418733132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266380 n) (A357189 n)

end

end A357487.P13398571905418733132

/-!
# A357488: Number of integer partitions of 2n - 1 with the same length as alternating sum.

The programs for A357488, there is no canonical definition to state claims against.
-/

/-! ## A357488.P18012409839041934942

`A357189(2*(n+1)-1)`
-/

namespace A357488.P18012409839041934942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357189 (2 * (n + 1) - 1)

end

end A357488.P18012409839041934942

/-! ## A357488.P8982106847571730510

`A357487(Δ[n²])`
-/

namespace A357488.P8982106847571730510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357487 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A357488.P8982106847571730510

/-! ## A357488.P2054990877522988454

`or(char[2], A357487(2*n+1))`
-/

namespace A357488.P2054990877522988454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A357487 (2 * n + 1))

end

end A357488.P2054990877522988454

/-! ## A357488.P2747407774571339854

`A357487(2*n+1)%A000032(n)`
-/

namespace A357488.P2747407774571339854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357487 (2 * n + 1)) (A000032 n)

end

end A357488.P2747407774571339854

/-! ## A357488.P11505348940323515192

`lcm(A284562(n), A357487(2*n+1))`
-/

namespace A357488.P11505348940323515192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284562 n) (A357487 (2 * n + 1))

end

end A357488.P11505348940323515192

/-!
# A357490: Numbers k such that the k-th composition in standard order has integer geometric mean.

The programs for A357490, there is no canonical definition to state claims against.
-/

/-! ## A357490.P15268731365798122256

`eq[A333632(A285328(n+1)), A333632(n)]`
-/

namespace A357490.P15268731365798122256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A285328 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357490.P15268731365798122256

/-! ## A357490.P11366992629758674198

`eq[A065941(A058398(3*n+2)), A351014(n)]`
-/

namespace A357490.P11366992629758674198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A058398 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357490.P11366992629758674198

/-! ## A357490.P4549359433736313541

`eq[A124767(n), A367419(A062312(2*n+3))]`
-/

namespace A357490.P4549359433736313541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367419 (A062312 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357490.P4549359433736313541

/-! ## A357490.P11767360011938817374

`eq[A124767(n), A320750(A361642(2*n+5))]`
-/

namespace A357490.P11767360011938817374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320750 (A361642 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A357490.P11767360011938817374

/-! ## A357490.P6626693650691371353

`∑[A316978(A164975(2*n+1))]`
-/

namespace A357490.P6626693650691371353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316978 (A164975 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A357490.P6626693650691371353

/-!
# A357492: Inverse permutation to A357491.

The programs for A357492, there is no canonical definition to state claims against.
-/

/-! ## A357492.P5517096339404109428

`A356784(n)+A053644(n)`
-/

namespace A357492.P5517096339404109428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356784 n + A053644 n

end

end A357492.P5517096339404109428

/-! ## A357492.P1721265335903334216

`A357443(n+1)+A053644(n)-1`
-/

namespace A357492.P1721265335903334216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357443 (n + 1) + (A053644 n - 1)

end

end A357492.P1721265335903334216

/-! ## A357492.P17965460086940292037

`A053644(n)+A002837(A357443(n+1))`
-/

namespace A357492.P17965460086940292037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + A002837 (A357443 (n + 1)).toNat

end

end A357492.P17965460086940292037

/-! ## A357492.P5292993508763931729

`A053644(n)+A030494(n+1)%A357443(n+1)`
-/

namespace A357492.P5292993508763931729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + Int.tmod (A030494 (n + 1)) (A357443 (n + 1))

end

end A357492.P5292993508763931729

/-! ## A357492.P6746581857337923739

`A053644(n)+A072828(n+1)%A357443(n+1)`
-/

namespace A357492.P6746581857337923739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n + Int.tmod (A072828 (n + 1)) (A357443 (n + 1))

end

end A357492.P6746581857337923739

/-!
# A357497: Nonsquarefree numbers whose harmonic mean of nonsquarefree divisors in an integer.

The programs for A357497, there is no canonical definition to state claims against.
-/

/-! ## A357497.P6245692769507683991

`A326071(n+2)-A326075(A326098(n))`
-/

namespace A357497.P6245692769507683991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 2) - A326075 (A326098 n).toNat

end

end A357497.P6245692769507683991

/-! ## A357497.P8965472623967082060

`A326071(n+2)+A124120(A303541(n+1))`
-/

namespace A357497.P8965472623967082060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 2) + A124120 (A303541 (n + 1)).toNat

end

end A357497.P8965472623967082060

/-! ## A357497.P6874499508126268059

`A326071(n+2)+A266243(A350026(n+3))`
-/

namespace A357497.P6874499508126268059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326071 (n + 2) + A266243 (A350026 (n + 3)).toNat

end

end A357497.P6874499508126268059

/-!
# A357498: Triangle read by rows where each term in row n is the next greater multiple of n..1 divided by n..1.

The programs for A357498, the canonical program `A357498.P11020466044338297942` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A357498 has offset 1).

The definition of A357498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A357498.P11020466044338297942

`A357431(n+1)/A004736(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A357498

/-- `A357431(n+1)/A004736(n+1)` -/
def P11020466044338297942.Spec : Prop :=
  ∀ n, P11020466044338297942.a n = (A357498 (n + 1) : ℚ)

end A357498

/-! ## A357498.P6979671920584348876

`A357431(n+1)/A002260(A038722(n+1))`
-/

namespace A357498.P6979671920584348876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357431 (n + 1) : ℚ) / (A002260 (A038722 (n + 1)).toNat : ℚ)

end

end A357498.P6979671920584348876

namespace A357498

/-- `A357431(n+1)/A002260(A038722(n+1))` -/
def P6979671920584348876.Spec : Prop :=
  ∀ n, P6979671920584348876.a n = (A357498 (n + 1) : ℚ)

end A357498

/-! ## A357498.P8368397178024826540

`A140061(A038722(n+1))/A004736(n+1)`
-/

namespace A357498.P8368397178024826540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140061 (A038722 (n + 1)).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A357498.P8368397178024826540

namespace A357498

/-- `A140061(A038722(n+1))/A004736(n+1)` -/
def P8368397178024826540.Spec : Prop :=
  ∀ n, P8368397178024826540.a n = (A357498 (n + 1) : ℚ)

end A357498

/-! ## A357498.P10231754225391521559

`A140061(A061579(n)+1)/A004736(n+1)`
-/

namespace A357498.P10231754225391521559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140061 (A061579 n + 1).toNat : ℚ) / (A004736 (n + 1) : ℚ)

end

end A357498.P10231754225391521559

namespace A357498

/-- `A140061(A061579(n)+1)/A004736(n+1)` -/
def P10231754225391521559.Spec : Prop :=
  ∀ n, P10231754225391521559.a n = (A357498 (n + 1) : ℚ)

end A357498

/-! ## A357498.P9982738040034569368

`A244160(A125704(n+1)!)`
-/

namespace A357498.P9982738040034569368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (Nat.factorial (A125704 (n + 1)).toNat)

end

end A357498.P9982738040034569368

namespace A357498

/-- `A244160(A125704(n+1)!)` -/
def P9982738040034569368.Spec : Prop :=
  ∀ n, P9982738040034569368.a n = A357498 (n + 1)

end A357498

/-!
# A357499: Triangle read by rows: T(n,k) is the length of the longest induced path in the n-dimensional hypercube, such that the end points of the path are at Hamming distance k, 0 <= k <= n.

The programs for A357499, there is no canonical definition to state claims against.
-/

/-! ## A357499.P17587537340155190615

`A308590(A002262(n)^A130321(n))`
-/

namespace A357499.P17587537340155190615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A130321 n : ℤ))).toNat

end

end A357499.P17587537340155190615

/-! ## A357499.P3416585347742335367

`A057145(n+2)-A302243(A101275(n))`
-/

namespace A357499.P3416585347742335367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057145 (n + 2) - A302243 (A101275 n).toNat

end

end A357499.P3416585347742335367

/-! ## A357499.P14199026921166985128

`A359546(A097333(2*n))+A103438(n)`
-/

namespace A357499.P14199026921166985128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359546 (A097333 (2 * n)).toNat + A103438 n

end

end A357499.P14199026921166985128

/-! ## A357499.P7105735002413622807

`A125005(A223092(n))+A103438(n)`
-/

namespace A357499.P7105735002413622807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (A223092 n).toNat + A103438 n

end

end A357499.P7105735002413622807

/-! ## A357499.P2181583891767202874

`A353862(A195892(n+1))+A144903(n)`
-/

namespace A357499.P2181583891767202874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353862 (A195892 (n + 1)).toNat + A144903 n

end

end A357499.P2181583891767202874

