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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A319300: Irregular triangle where T(n,k) is the number of strict integer partitions of n with GCD equal to the k-th divisor of n.

The programs for A319300, there is no canonical definition to state claims against.
-/

/-! ## A319300.P3657710619435616706

`A078374(A056538(n+1))`
-/

namespace A319300.P3657710619435616706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 (A056538 (n + 1)).toNat

end

end A319300.P3657710619435616706

/-! ## A319300.P1934204859494532784

`A078374(abs(A233772(n+1)))`
-/

namespace A319300.P1934204859494532784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078374 |A233772 (n + 1)|.toNat

end

end A319300.P1934204859494532784

/-! ## A319300.P9608306097045772712

`A255327(A068012(n)+n)`
-/

namespace A319300.P9608306097045772712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (A068012 n + (n : ℤ)).toNat

end

end A319300.P9608306097045772712

/-! ## A319300.P1286449696331511697

`and(A025798(n), A318915(A107985(n)))`
-/

namespace A319300.P1286449696331511697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025798 n) (A318915 (A107985 n).toNat)

end

end A319300.P1286449696331511697

/-! ## A319300.P3317080760580517513

`A060280(A056538(n+1)%A060263(n+2))`
-/

namespace A319300.P3317080760580517513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060280 (Int.tmod (A056538 (n + 1)) (A060263 (n + 2))).toNat

end

end A319300.P3317080760580517513

/-!
# A319301: Sum of GCDs of strict integer partitions of n.

The programs for A319301, there is no canonical definition to state claims against.
-/

/-! ## A319301.P13299718016502956691

`∑{d}[n+1, #*A078374((n+1)/#)]`
-/

namespace A319301.P13299718016502956691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A078374 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319301.P13299718016502956691

/-!
# A319302: Integers whose binary representation contains a consecutive string of zeros of prime length.

The programs for A319302, there is no canonical definition to state claims against.
-/

/-! ## A319302.P4812470710829029655

`record[A289813(A110529(n+1))]`
-/

namespace A319302.P4812470710829029655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A110529 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319302.P4812470710829029655

/-! ## A319302.P5090163457907551867

`eq[A000009(A087117(n)+1)%2, A085405(A002061(2*n))]`
-/

namespace A319302.P5090163457907551867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000009 (A087117 n + 1).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (A002061 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319302.P5090163457907551867

/-! ## A319302.P3242745634634888090

`eq[0, A110471(A090077(n))]`
-/

namespace A319302.P3242745634634888090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 (A090077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319302.P3242745634634888090

/-! ## A319302.P14965020542168429798

`eq[3, A087117(A014445(A087117(n)))]`
-/

namespace A319302.P14965020542168429798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A014445 (A087117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319302.P14965020542168429798

/-! ## A319302.P7180341007774839730

`lt[A110471(A090077(n)), A057427(n)]`
-/

namespace A319302.P7180341007774839730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 (A090077 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319302.P7180341007774839730

/-! ## A319302.P8014607122743744911

`lt[A110471(A090077(n)), A267442(n)]`
-/

namespace A319302.P8014607122743744911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 (A090077 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319302.P8014607122743744911

/-! ## A319302.P8188158174503805171

`eq[A178334(n)², A167677(A087117(n))]`
-/

namespace A319302.P8188158174503805171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167677 (A087117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319302.P8188158174503805171

/-! ## A319302.P866797718404757834

`eq[A011647(A087117(n)²), A226464(n²)]`
-/

namespace A319302.P866797718404757834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011647 (A087117 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319302.P866797718404757834

/-! ## A319302.P17440567290133416008

`eq[2, A020639(A329385(A057335(n)))]`
-/

namespace A319302.P17440567290133416008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A329385 (A057335 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319302.P17440567290133416008

/-! ## A319302.P16497988080414340818

`eq[0, A110471(n)]`
-/

namespace A319302.P16497988080414340818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110471 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319302.P16497988080414340818

/-!
# A319303: a(n) is the value of the node of the Collatz tree encoded by the number n (see Comments for precise definition).

The programs for A319303, there is no canonical definition to state claims against.
-/

/-! ## A319303.P736101209097576914

`A088976(A087051(n))`
-/

namespace A319303.P736101209097576914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088976 (A087051 n).toNat

end

end A319303.P736101209097576914

/-! ## A319303.P5266394955097370676

`A088976(A227549(n+1))`
-/

namespace A319303.P5266394955097370676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088976 (A227549 (n + 1)).toNat

end

end A319303.P5266394955097370676

/-! ## A319303.P11997026545272520001

`A088976(A396204(n+1))`
-/

namespace A319303.P11997026545272520001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088976 (A396204 (n + 1)).toNat

end

end A319303.P11997026545272520001

/-! ## A319303.P8853188455696445340

`A088976(n)%A322643(n+1)`
-/

namespace A319303.P8853188455696445340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088976 n) (A322643 (n + 1))

end

end A319303.P8853188455696445340

/-! ## A319303.P3090763068416540175

`gcd(record[A334037(3*n+2)], A088976(n))`
-/

namespace A319303.P3090763068416540175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334037 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A088976 n)

end

end A319303.P3090763068416540175

/-!
# A319305: Digits of one of the three 7-adic integers 6^(1/3) that is related to A319098.

The programs for A319305, there is no canonical definition to state claims against.
-/

/-! ## A319305.P5169797451108755938

`Δ[A319098(n)]/7^n`
-/

namespace A319305.P5169797451108755938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319098 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (7 ^ n : ℚ)

end

end A319305.P5169797451108755938

/-! ## A319305.P4336153435898451130

`floor(A319098(n+1)/7^n)`
-/

namespace A319305.P4336153435898451130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319098 (n + 1) : ℚ) / (7 ^ n : ℚ)⌋

end

end A319305.P4336153435898451130

/-! ## A319305.P8472768540082117819

`Δ[A319098(n)]%A040031(n)`
-/

namespace A319305.P8472768540082117819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A040031 n)

end

end A319305.P8472768540082117819

/-!
# A319307: Expansion of theta_4(q)^16 in powers of q = exp(Pi i t).

The programs for A319307, there is no canonical definition to state claims against.
-/

/-! ## A319307.P14276355495587660922

`(-1)^n*A000152(n)`
-/

namespace A319307.P14276355495587660922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000152 n

end

end A319307.P14276355495587660922

/-! ## A319307.P2038831822829547725

`A000152(n)*A033999(n)`
-/

namespace A319307.P2038831822829547725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n * A033999 n

end

end A319307.P2038831822829547725

/-! ## A319307.P15601861519731265394

`A000152(n)*A109248(Δ[A004526(n)])`
-/

namespace A319307.P15601861519731265394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n * A109248 (f1 (n + 1) - f1 n).toNat

end

end A319307.P15601861519731265394

/-! ## A319307.P769765979403303713

`A000152(n)*A056594(2*n)`
-/

namespace A319307.P769765979403303713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n * A056594 (2 * n)

end

end A319307.P769765979403303713

/-! ## A319307.P842488085209450727

`A000152(n)*A010892(3*n)`
-/

namespace A319307.P842488085209450727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000152 n * A010892 (3 * n)

end

end A319307.P842488085209450727

/-! ## A319307.P14184906698800785885

`A193354(∑[n]+1)`
-/

namespace A319307.P14184906698800785885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A319307.P14184906698800785885

/-!
# A319308: Expansion of theta_4(q)^20 in powers of q = exp(Pi i t).

The programs for A319308, there is no canonical definition to state claims against.
-/

/-! ## A319308.P9782134660099533112

`2*A014747(n)-A022073(n)`
-/

namespace A319308.P9782134660099533112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014747 n - A022073 n

end

end A319308.P9782134660099533112

/-!
# A319309: Expansion of theta_4(q)^24 in powers of q = exp(Pi i t).

The programs for A319309, there is no canonical definition to state claims against.
-/

/-! ## A319309.P3346185119378960877

`A000156(n)*A033999(n)`
-/

namespace A319309.P3346185119378960877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n * A033999 n

end

end A319309.P3346185119378960877

/-! ## A319309.P11512818672892970175

`A000156(n)*A115607(A006519(n+1))`
-/

namespace A319309.P11512818672892970175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n * A115607 (A006519 (n + 1)).toNat

end

end A319309.P11512818672892970175

/-! ## A319309.P16467794734950875787

`A000156(n)/A033999(n)^A165747(n)`
-/

namespace A319309.P16467794734950875787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n : ℚ) / (A033999 n : ℚ) ^ (A165747 n : ℤ)

end

end A319309.P16467794734950875787

/-! ## A319309.P882401962555259641

`A002131(n+1)/A186690(n+1)*A000156(n)`
-/

namespace A319309.P882401962555259641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002131 (n + 1) : ℚ) / (A186690 (n + 1) : ℚ) * (A000156 n : ℚ)

end

end A319309.P882401962555259641

/-! ## A319309.P5369283184948897241

`A000156(n)/A033999(n+2)`
-/

namespace A319309.P5369283184948897241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A319309.P5369283184948897241

/-! ## A319309.P16124728426619673405

`A000156(n)*A009531(2*n+1)`
-/

namespace A319309.P16124728426619673405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000156 n * A009531 (2 * n + 1)

end

end A319309.P16124728426619673405

/-! ## A319309.P9715618133911797192

`A004404(n)/A319552(n)*A000156(n)`
-/

namespace A319309.P9715618133911797192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004404 n : ℚ) / (A319552 n : ℚ) * (A000156 n : ℚ)

end

end A319309.P9715618133911797192

/-! ## A319309.P1001518829185805730

`A000156(n)/A009531(A017377(n))`
-/

namespace A319309.P1001518829185805730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000156 n : ℚ) / (A009531 (A017377 n).toNat : ℚ)

end

end A319309.P1001518829185805730

/-! ## A319309.P15707167331496740921

`∑[A002448(n²)]*A000156(n)`
-/

namespace A319309.P15707167331496740921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002448 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000156 n

end

end A319309.P15707167331496740921

/-!
# A319310: Expansion of theta_4(q)^28 in powers of q = exp(Pi i t).

The programs for A319310, there is no canonical definition to state claims against.
-/

/-! ## A319310.P7053596663278112505

`A008683(A002110(n))*A022081(n)`
-/

namespace A319310.P7053596663278112505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002110 n).toNat * A022081 n

end

end A319310.P7053596663278112505

/-! ## A319310.P1941875868289531866

`A022081(n)*A033999(A000584(n))`
-/

namespace A319310.P1941875868289531866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022081 n * A033999 (A000584 n).toNat

end

end A319310.P1941875868289531866

/-! ## A319310.P11004114336241461120

`A022081(n)*A033999(A047781(n))`
-/

namespace A319310.P11004114336241461120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022081 n * A033999 (A047781 n).toNat

end

end A319310.P11004114336241461120

/-!
# A319312: Number of series-reduced rooted trees whose leaves are integer partitions whose multiset union is an integer partition of n.

The programs for A319312, there is no canonical definition to state claims against.
-/

/-! ## A319312.P7296266537715119246

`A331267(∏[eq[n, ∏{d}[n, #]]]+n)`
-/

namespace A319312.P7296266537715119246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331267 (∏ j ∈ Finset.range (n + 1), f1 j + n)

end

end A319312.P7296266537715119246

/-! ## A319312.P17926080822811202378

`A331267(A002110(n)+n)`
-/

namespace A319312.P17926080822811202378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331267 (A002110 n + (n : ℤ)).toNat

end

end A319312.P17926080822811202378

/-!
# A319313: a(n) is the least integer m such that A047994(m) = ((n-2)/n)*m where A047994 is the unitary totient function, or 0 if there is no such m.

The programs for A319313, there is no canonical definition to state claims against.
-/

/-! ## A319313.P3568840186284103989

`A323855(A116632(n+1)+record[A064989(3*n+5)])`
-/

namespace A319313.P3568840186284103989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323855 (A116632 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A319313.P3568840186284103989

/-!
# A319315: Heinz numbers of integer partitions such that every distinct submultiset has a different average.

The programs for A319315, there is no canonical definition to state claims against.
-/

/-! ## A319315.P1749094713535848244

`record[A007913(A002330(n+1))]`
-/

namespace A319315.P1749094713535848244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A002330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319315.P1749094713535848244

/-! ## A319315.P14412362963498753908

`record[A007947(A160453(n+1))]`
-/

namespace A319315.P14412362963498753908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A160453 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319315.P14412362963498753908

/-! ## A319315.P13787005622667879462

`record[A007913(A300587(n+1))]`
-/

namespace A319315.P13787005622667879462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A300587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319315.P13787005622667879462

/-! ## A319315.P2726598233252907964

`filter[A160453(n+1), A008966(#)]`
-/

namespace A319315.P2726598233252907964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A319315.P2726598233252907964

/-! ## A319315.P13144131731068750432

`filter[A160453(n+1), A323154(#)]`
-/

namespace A319315.P13144131731068750432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A319315.P13144131731068750432

/-! ## A319315.P15294668521094122764

`filter[A160453(n+1), A353559(#)]`
-/

namespace A319315.P15294668521094122764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A319315.P15294668521094122764

/-! ## A319315.P4871702301085361251

`record[A007947(A002330(n+1)²)]`
-/

namespace A319315.P4871702301085361251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002330 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319315.P4871702301085361251

/-! ## A319315.P17900376938051124206

`∪[A325398(n+1), A005380(n)]`
-/

namespace A319315.P17900376938051124206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005380 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319315.P17900376938051124206

/-! ## A319315.P6812314609921107083

`∪[A005567(n), A325398(n+1)]`
-/

namespace A319315.P6812314609921107083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005567 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319315.P6812314609921107083

/-! ## A319315.P8759503994282835586

`∪[A006356(n), A325398(n+1)]`
-/

namespace A319315.P8759503994282835586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319315.P8759503994282835586

/-!
# A319316: Numbers k such that A090616(k) < A054861(k).

The programs for A319316, the canonical program `A319316.P6395468559113761177` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319316 has offset 1).

The definition of A319316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319316.P6395468559113761177

`lt[A180017(n), 0]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319316

/-- `lt[A180017(n), 0]` -/
def P6395468559113761177.Spec : Prop :=
  ∀ n, (P6395468559113761177.a n : ℤ) = A319316 (n + 1)

theorem P6395468559113761177.correct : P6395468559113761177.Spec := by
  intro n
  simp only [A319316, Nat.add_sub_cancel]

end A319316

/-! ## A319316.P14648577052308579465

`lt[A053735(n), a(floor(n/2))+n%2]` with `a(0)=0`
-/

namespace A319316.P14648577052308579465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A319316.P14648577052308579465

namespace A319316

/-- `lt[A053735(n), a(floor(n/2))+n%2]` -/
def P14648577052308579465.Spec : Prop :=
  ∀ n, (P14648577052308579465.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P2156785352874921125

`lt[0, A007949(A136698(n))]`
-/

namespace A319316.P2156785352874921125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A136698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319316.P2156785352874921125

namespace A319316

/-- `lt[0, A007949(A136698(n))]` -/
def P2156785352874921125.Spec : Prop :=
  ∀ n, (P2156785352874921125.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P5511762781961694376

`lt[A053735(n), A000120(n)]`
-/

namespace A319316.P5511762781961694376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319316.P5511762781961694376

namespace A319316

/-- `lt[A053735(n), A000120(n)]` -/
def P5511762781961694376.Spec : Prop :=
  ∀ n, (P5511762781961694376.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P12875235327655180419

`lt[A230641(n), A092391(n)]`
-/

namespace A319316.P12875235327655180419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319316.P12875235327655180419

namespace A319316

/-- `lt[A230641(n), A092391(n)]` -/
def P12875235327655180419.Spec : Prop :=
  ∀ n, (P12875235327655180419.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P16876711855267420227

`lt[A180018(n), A180019(n)]`
-/

namespace A319316.P16876711855267420227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319316.P16876711855267420227

namespace A319316

/-- `lt[A180018(n), A180019(n)]` -/
def P16876711855267420227.Spec : Prop :=
  ∀ n, (P16876711855267420227.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P1389703800480257875

`eq[3, A085392(A136698(n)²)]`
-/

namespace A319316.P1389703800480257875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (A136698 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319316.P1389703800480257875

namespace A319316

/-- `eq[3, A085392(A136698(n)²)]` -/
def P1389703800480257875.Spec : Prop :=
  ∀ n, (P1389703800480257875.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P8860476494793078113

`eq[3, A204455(A136698(n)²)]`
-/

namespace A319316.P8860476494793078113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204455 (A136698 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319316.P8860476494793078113

namespace A319316

/-- `eq[3, A204455(A136698(n)²)]` -/
def P8860476494793078113.Spec : Prop :=
  ∀ n, (P8860476494793078113.a n : ℤ) = A319316 (n + 1)

end A319316

/-! ## A319316.P5587287335102519715

`lt[A000120(A006288(n)), A000120(n)]`
-/

namespace A319316.P5587287335102519715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006288 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319316.P5587287335102519715

namespace A319316

/-- `lt[A000120(A006288(n)), A000120(n)]` -/
def P5587287335102519715.Spec : Prop :=
  ∀ n, (P5587287335102519715.a n : ℤ) = A319316 (n + 1)

end A319316

/-!
# A319317: Numbers k such that A090616(k) > A054861(k).

The programs for A319317, the canonical program `A319317.P4293511078946830541` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319317 has offset 1).

The definition of A319317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5071 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319317.P4293511078946830541

`lt[1, A180017(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A319317

/-- `lt[1, A180017(n)]` -/
def P4293511078946830541.Spec : Prop :=
  ∀ n, (P4293511078946830541.a n : ℤ) = A319317 (n + 1)

theorem P4293511078946830541.correct : P4293511078946830541.Spec := by
  intro n
  simp only [A319317, Nat.add_sub_cancel]

end A319317

/-! ## A319317.P14042458910420375721

`lt[a(and(n, n-1))+1, A053735(n)]` with `a(0)=1, a(1)=1`
-/

namespace A319317.P14042458910420375721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A319317.P14042458910420375721

namespace A319317

/-- `lt[a(and(n, n-1))+1, A053735(n)]` -/
def P14042458910420375721.Spec : Prop :=
  ∀ n, (P14042458910420375721.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P15724524256596250942

`eq[1, A194447(A136698(n))]`
-/

namespace A319317.P15724524256596250942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (A136698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319317.P15724524256596250942

namespace A319317

/-- `eq[1, A194447(A136698(n))]` -/
def P15724524256596250942.Spec : Prop :=
  ∀ n, (P15724524256596250942.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P16169754815214944311

`eq[6, A344646(A136698(n)+6)]`
-/

namespace A319317.P16169754815214944311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344646 (A136698 n + 6).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319317.P16169754815214944311

namespace A319317

/-- `eq[6, A344646(A136698(n)+6)]` -/
def P16169754815214944311.Spec : Prop :=
  ∀ n, (P16169754815214944311.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P12073501393431090669

`eq[2, A136690(val(A136698(n), 2))]`
-/

namespace A319317.P12073501393431090669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 (SequenceMachineLib.valuation (A136698 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319317.P12073501393431090669

namespace A319317

/-- `eq[2, A136690(val(A136698(n), 2))]` -/
def P12073501393431090669.Spec : Prop :=
  ∀ n, (P12073501393431090669.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P7899282896876067014

`eq[2, A136691(val(A136698(n), 2))]`
-/

namespace A319317.P7899282896876067014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136691 (SequenceMachineLib.valuation (A136698 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319317.P7899282896876067014

namespace A319317

/-- `eq[2, A136691(val(A136698(n), 2))]` -/
def P7899282896876067014.Spec : Prop :=
  ∀ n, (P7899282896876067014.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P15932432021965007370

`eq[2, A048881(xor(2, A136698(n)))]`
-/

namespace A319317.P15932432021965007370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (Int.xor 2 (A136698 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319317.P15932432021965007370

namespace A319317

/-- `eq[2, A048881(xor(2, A136698(n)))]` -/
def P15932432021965007370.Spec : Prop :=
  ∀ n, (P15932432021965007370.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P17453425480866211967

`lt[A000120(n)+1, A053735(n)]`
-/

namespace A319317.P17453425480866211967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319317.P17453425480866211967

namespace A319317

/-- `lt[A000120(n)+1, A053735(n)]` -/
def P17453425480866211967.Spec : Prop :=
  ∀ n, (P17453425480866211967.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P13666394688580333280

`lt[A092391(n)+1, A230641(n)]`
-/

namespace A319317.P13666394688580333280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319317.P13666394688580333280

namespace A319317

/-- `lt[A092391(n)+1, A230641(n)]` -/
def P13666394688580333280.Spec : Prop :=
  ∀ n, (P13666394688580333280.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P16362245012473912877

`lt[A180019(n)+1, A180018(n)]`
-/

namespace A319317.P16362245012473912877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180019 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319317.P16362245012473912877

namespace A319317

/-- `lt[A180019(n)+1, A180018(n)]` -/
def P16362245012473912877.Spec : Prop :=
  ∀ n, (P16362245012473912877.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P11220092976100787091

`eq[2*A136690(n), A136698(A136698(n))]`
-/

namespace A319317.P11220092976100787091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A136690 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136698 (A136698 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319317.P11220092976100787091

namespace A319317

/-- `eq[2*A136690(n), A136698(A136698(n))]` -/
def P11220092976100787091.Spec : Prop :=
  ∀ n, (P11220092976100787091.a n : ℤ) = A319317 (n + 1)

end A319317

/-! ## A319317.P6012353826366010148

`lt[A000120(n)+1, A000120(A006288(n))]`
-/

namespace A319317.P6012353826366010148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A006288 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319317.P6012353826366010148

namespace A319317

/-- `lt[A000120(n)+1, A000120(A006288(n))]` -/
def P6012353826366010148.Spec : Prop :=
  ∀ n, (P6012353826366010148.a n : ℤ) = A319317 (n + 1)

end A319317

/-!
# A319318: Number of integer partitions of n such that every distinct submultiset has a different GCD.

The programs for A319318, there is no canonical definition to state claims against.
-/

/-! ## A319318.P1121697643001466957

`A077028(A253176(n+1))+A003165(n+1)`
-/

namespace A319318.P1121697643001466957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (A253176 (n + 1)).toNat + A003165 (n + 1)

end

end A319318.P1121697643001466957

/-! ## A319318.P3227365546799141928

`A069288(A181973(n))+A003165(n+1)`
-/

namespace A319318.P3227365546799141928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069288 (A181973 n).toNat + A003165 (n + 1)

end

end A319318.P3227365546799141928

/-! ## A319318.P4400723403691689423

`A003179(A058348(n))+A003165(n+1)`
-/

namespace A319318.P4400723403691689423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003179 (A058348 n).toNat + A003165 (n + 1)

end

end A319318.P4400723403691689423

/-! ## A319318.P5864909938559030722

`A005134(A185255(n))+A003165(n+1)`
-/

namespace A319318.P5864909938559030722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005134 (A185255 n).toNat + A003165 (n + 1)

end

end A319318.P5864909938559030722

/-! ## A319318.P3943111477563941439

`A061775(2^(ceil(n/2)+1-∏{e}[n+1, #+1]))`
-/

namespace A319318.P3943111477563941439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ + 1 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) : ℤ))).toNat

end

end A319318.P3943111477563941439

/-!
# A319319: Heinz numbers of integer partitions such that every distinct submultiset has a different GCD.

The programs for A319319, there is no canonical definition to state claims against.
-/

/-! ## A319319.P13953472434727672967

`record[A088835(A316476(n+1))]`
-/

namespace A319319.P13953472434727672967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088835 (A316476 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319319.P13953472434727672967

/-! ## A319319.P13317987425677343471

`eq[A304793(n+1), A316555(n+1)]+1`
-/

namespace A319319.P13317987425677343471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319319.P13317987425677343471

/-! ## A319319.P17963829569161550769

`eq[A304793(n+1), A316556(n+1)]+1`
-/

namespace A319319.P17963829569161550769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319319.P17963829569161550769

/-! ## A319319.P4709828093988290458

`eq[A305611(n+1), A316555(n+1)]+1`
-/

namespace A319319.P4709828093988290458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319319.P4709828093988290458

/-! ## A319319.P11107151552602001564

`eq[A000005(n+1)-1, A316555(n+1)]+1`
-/

namespace A319319.P11107151552602001564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319319.P11107151552602001564

/-! ## A319319.P10148559465195862077

`eq[A211110(n), A316555(A028310(n))]`
-/

namespace A319319.P10148559465195862077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319319.P10148559465195862077

/-! ## A319319.P16955625628821205286

`eq[A074206(n), A316556(A233583(n+1))]`
-/

namespace A319319.P16955625628821205286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316556 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319319.P16955625628821205286

/-! ## A319319.P17270425265385782096

`eq[A104725(n), A316555(A233583(n+1))]`
-/

namespace A319319.P17270425265385782096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316555 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319319.P17270425265385782096

/-! ## A319319.P9692029008881273589

`eq[A033273(n+1), A033273(A316556(n+1)+1)]+1`
-/

namespace A319319.P9692029008881273589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A316556 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319319.P9692029008881273589

/-! ## A319319.P2012975705278058688

`filter[A328603(n+1), A123927(#)]`
-/

namespace A319319.P2012975705278058688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A319319.P2012975705278058688

/-!
# A319320: Number of integer partitions of n such that every distinct submultiset has a different LCM.

The programs for A319320, there is no canonical definition to state claims against.
-/

/-! ## A319320.P6110139189825831273

`A303362(n+1)-A186718(A226398(n+1))`
-/

namespace A319320.P6110139189825831273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) - A186718 (A226398 (n + 1)).toNat

end

end A319320.P6110139189825831273

/-! ## A319320.P16652203280880411659

`A303362(n+1)+A010815(A080531(n))`
-/

namespace A319320.P16652203280880411659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) + A010815 (A080531 n).toNat

end

end A319320.P16652203280880411659

/-! ## A319320.P638387759408870283

`A303362(n+1)+A010815(A001567(n+1))`
-/

namespace A319320.P638387759408870283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) + A010815 (A001567 (n + 1)).toNat

end

end A319320.P638387759408870283

/-! ## A319320.P13097368087912268572

`A303362(n+1)-A025456(A335433(3*n+5))`
-/

namespace A319320.P13097368087912268572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303362 (n + 1) - A025456 (A335433 (3 * n + 5)).toNat

end

end A319320.P13097368087912268572

/-!
# A319321: a(n) is the number of d+/d- diagonally convex polyplets (polyominoes which need only touch at corners) with n cells.

The programs for A319321, there is no canonical definition to state claims against.
-/

/-! ## A319321.P15531279764058787455

`A086292(∑{digits}[n, 10^#]-∑{p}[n+1, #*val(n+1, #)])`
-/

namespace A319321.P15531279764058787455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086292 (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum - ∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A319321.P15531279764058787455

/-!
# A319322: Number of row convex polyhexes with n cells.

The programs for A319322, there is no canonical definition to state claims against.
-/

/-! ## A319322.P5939435050807870329

`A005843(A151116(n))-A151137(n)`
-/

namespace A319322.P5939435050807870329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151116 n).toNat - A151137 n

end

end A319322.P5939435050807870329

/-! ## A319322.P7487534500497560766

`A167011(n+1)+A111133(A014381(n))`
-/

namespace A319322.P7487534500497560766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167011 (n + 1) + A111133 (A014381 n).toNat

end

end A319322.P7487534500497560766

/-! ## A319322.P15456438146678266950

`A307825(A020118(n))+A167011(n+1)`
-/

namespace A319322.P15456438146678266950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307825 (A020118 n).toNat + A167011 (n + 1)

end

end A319322.P15456438146678266950

/-!
# A319323: a(n) is the number of column convex polyiamonds with n cells.

The programs for A319323, there is no canonical definition to state claims against.
-/

/-! ## A319323.P12384123566102430754

`A309095(A001519(n))+A168046(n)`
-/

namespace A319323.P12384123566102430754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (A001519 n).toNat + A168046 n

end

end A319323.P12384123566102430754

/-! ## A319323.P15086021459338571700

`A309095(A001519(n))+A279061(n)`
-/

namespace A319323.P15086021459338571700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (A001519 n).toNat + A279061 n

end

end A319323.P15086021459338571700

/-! ## A319323.P4446565316142501127

`A342515(A156561(n))+A122367(n)`
-/

namespace A319323.P4446565316142501127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342515 (A156561 n).toNat + A122367 n

end

end A319323.P4446565316142501127

/-! ## A319323.P17530467505287310445

`A309095(A001519(n))-A057428(n)`
-/

namespace A319323.P17530467505287310445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309095 (A001519 n).toNat - A057428 n

end

end A319323.P17530467505287310445

/-!
# A319325: a(n) is the number of row convex polyglasses (polyiamonds which need only touch at corners) with n cells.

The programs for A319325, there is no canonical definition to state claims against.
-/

/-! ## A319325.P9419863866405830367

`2*A047531(a(n-1))` with `a(0)=2, a(1)=10`
-/

namespace A319325.P9419863866405830367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n a =>
  2 * A047531 (a (n - 1)).toNat

end

end A319325.P9419863866405830367

/-! ## A319325.P5565368235254507180

`A310418(a(n-1))` with `a(0)=2`
-/

namespace A319325.P5565368235254507180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A310418 (a (n - 1)).toNat

end

end A319325.P5565368235254507180

/-!
# A319326: a(n) is the number of column convex polyglasses (polyiamonds which need only touch at corners) with n cells.

The programs for A319326, there is no canonical definition to state claims against.
-/

/-! ## A319326.P2771458800614978698

`A004277(or(A181296(n), A299916(n)))`
-/

namespace A319326.P2771458800614978698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.lor (A181296 n) (A299916 n)).toNat

end

end A319326.P2771458800614978698

/-!
# A319330: Number of integer partitions of n whose length is equal to the GCD of the parts and whose sum is equal to the LCM of the parts.

The programs for A319330, there is no canonical definition to state claims against.
-/

/-! ## A319330.P14188202064766751666

`A083893(or(A016520(n+1), A069684(n+1)))`
-/

namespace A319330.P14188202064766751666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (Int.lor (A016520 (n + 1)) (A069684 (n + 1))).toNat

end

end A319330.P14188202064766751666

/-! ## A319330.P7017904519894964190

`floor(A306697(n+1)/A211981(A062759(n+1)))`
-/

namespace A319330.P7017904519894964190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A306697 (n + 1) : ℚ) / (A211981 (A062759 (n + 1)).toNat : ℚ)⌋

end

end A319330.P7017904519894964190

/-! ## A319330.P14898543936525310281

`A010054(n*215)`
-/

namespace A319330.P14898543936525310281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n * 215)

end

end A319330.P14898543936525310281

/-! ## A319330.P580147803434156512

`A014894(A029629(n))`
-/

namespace A319330.P580147803434156512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014894 (A029629 n).toNat

end

end A319330.P580147803434156512

/-! ## A319330.P14580650571143721841

`A111406(A063729(n+1))`
-/

namespace A319330.P14580650571143721841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111406 (A063729 (n + 1)).toNat

end

end A319330.P14580650571143721841

/-!
# A319333: Heinz numbers of integer partitions whose sum is equal to their LCM.

The programs for A319333, there is no canonical definition to state claims against.
-/

/-! ## A319333.P13066091274456293797

`∩[A247180(n+1), A326841(n+1)]`
-/

namespace A319333.P13066091274456293797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P13066091274456293797

/-! ## A319333.P11910257639405597

`∩[A326841(n+1), A327906(n+1)]`
-/

namespace A319333.P11910257639405597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P11910257639405597

/-! ## A319333.P6933922537977413156

`∪[A000040(n+1), A064247(n+1)]`
-/

namespace A319333.P6933922537977413156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P6933922537977413156

/-! ## A319333.P15184979656233115990

`∪[A064247(n+1), A216883(n+1)]`
-/

namespace A319333.P15184979656233115990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P15184979656233115990

/-! ## A319333.P16925511247239497739

`∪[A064247(n+1), A216884(n+1)]`
-/

namespace A319333.P16925511247239497739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P16925511247239497739

/-! ## A319333.P3392213624167692234

`∪[A064247(n+1), A216885(n+1)]`
-/

namespace A319333.P3392213624167692234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P3392213624167692234

/-! ## A319333.P17527128609343654189

`∪[A064247(n+1), A216887(n+1)]`
-/

namespace A319333.P17527128609343654189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P17527128609343654189

/-! ## A319333.P18281635310386079803

`∪[A064247(n+1), A385492(n+1)]`
-/

namespace A319333.P18281635310386079803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P18281635310386079803

/-! ## A319333.P14881143529132350961

`∩[A034707(n+1), A327783(n+1)]`
-/

namespace A319333.P14881143529132350961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319333.P14881143529132350961

/-!
# A319334: Nonprime Heinz numbers of integer partitions whose sum is equal to their LCM.

The programs for A319334, there is no canonical definition to state claims against.
-/

/-! ## A319334.P10554199792653848215

`∩[A326841(n+1), A343340(n+1)]`
-/

namespace A319334.P10554199792653848215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343340 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319334.P10554199792653848215

/-!
# A319335: Numerator of the average of the averages of all integer partitions of n.

The programs for A319335, there is no canonical definition to state claims against.
-/

/-! ## A319335.P16841909972556271991

`A127679(A360918(3*n+1))+A034262(n)`
-/

namespace A319335.P16841909972556271991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127679 (A360918 (3 * n + 1)).toNat + A034262 n

end

end A319335.P16841909972556271991

/-!
# A319337: Filter sequence combining gcd(n,tau(n)) (= A009191) with the prime signature of n (A046523).

The programs for A319337, there is no canonical definition to state claims against.
-/

/-! ## A319337.P700707623217199489

`or(A277017(A048588(n)), A291761(n+1))`
-/

namespace A319337.P700707623217199489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277017 (A048588 n).toNat) (A291761 (n + 1))

end

end A319337.P700707623217199489

/-!
# A319338: Filter sequence combining the 2-adic valuation of n (A007814) with gcd(n,sigma(n)) (A009194).

The programs for A319338, there is no canonical definition to state claims against.
-/

/-! ## A319338.P14799909003393923904

`A300230(n+1)-A324967(A067538(3*n+4))`
-/

namespace A319338.P14799909003393923904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300230 (n + 1) - A324967 (A067538 (3 * n + 4)).toNat

end

end A319338.P14799909003393923904

/-! ## A319338.P2188514231443996592

`A158416(A291766(n)%A147306(n+1))`
-/

namespace A319338.P2188514231443996592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (Int.tmod (A291766 n) (A147306 (n + 1))).toNat

end

end A319338.P2188514231443996592

/-! ## A319338.P16281032399182959612

`A059129(lt[A000217(n), A249824(n+2)])`
-/

namespace A319338.P16281032399182959612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249824 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319338.P16281032399182959612

/-! ## A319338.P6197381525536039209

`A158416(A291766(n))%p?[A036030(n+1)]`
-/

namespace A319338.P6197381525536039209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158416 (A291766 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A319338.P6197381525536039209

/-! ## A319338.P2363722963945799801

`gcd(A238709(A001844(n)), A300230(n+1))`
-/

namespace A319338.P2363722963945799801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A238709 (A001844 n).toNat) (A300230 (n + 1))

end

end A319338.P2363722963945799801

/-!
# A319340: Sum of Euler totient function and its Dirichlet inverse: a(n) = A000010(n) + A023900(n).

The programs for A319340, the canonical program `A319340.P918367480918848699` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319340 has offset 1).

The definition of A319340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A023900, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319340.P918367480918848699

`A000010(n+1)+A023900(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319340

/-- `A000010(n+1)+A023900(n+1)` -/
def P918367480918848699.Spec : Prop :=
  ∀ n, P918367480918848699.a n = A319340 (n + 1)

theorem P918367480918848699.correct : P918367480918848699.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel]

end A319340

/-! ## A319340.P9897930764387631517

`A318833(n+1)-A051953(n+1)`
-/

namespace A319340.P9897930764387631517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (n + 1) - A051953 (n + 1)

end

end A319340.P9897930764387631517

namespace A319340

/-- `A318833(n+1)-A051953(n+1)` -/
def P9897930764387631517.Spec : Prop :=
  ∀ n, P9897930764387631517.a n = A319340 (n + 1)

theorem P9897930764387631517.correct : P9897930764387631517.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P9897930764387631517.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A051953, A051953.P11179276897610979764.a, A318833, A318833.P15994994677912991465.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-! ## A319340.P15808491978682564111

`A023900(n+1)+Δ[A002088(n)]`
-/

namespace A319340.P15808491978682564111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319340.P15808491978682564111

namespace A319340

/-- `A023900(n+1)+Δ[A002088(n)]` -/
def P15808491978682564111.Spec : Prop :=
  ∀ n, P15808491978682564111.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P14412229109242755568

`A023900(n+1)+Δ[A005728(n)]`
-/

namespace A319340.P14412229109242755568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (f1 (n + 1) - f1 n)

end

end A319340.P14412229109242755568

namespace A319340

/-- `A023900(n+1)+Δ[A005728(n)]` -/
def P14412229109242755568.Spec : Prop :=
  ∀ n, P14412229109242755568.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P16049155982377296348

`A023900(n+1)+A109606(n+1)+1`
-/

namespace A319340.P16049155982377296348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (A109606 (n + 1) + 1)

end

end A319340.P16049155982377296348

namespace A319340

/-- `A023900(n+1)+A109606(n+1)+1` -/
def P16049155982377296348.Spec : Prop :=
  ∀ n, P16049155982377296348.a n = A319340 (n + 1)

theorem P16049155982377296348.correct : P16049155982377296348.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P16049155982377296348.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-! ## A319340.P11547166855106418355

`A023900(n+1)+A039649(n+1)-1`
-/

namespace A319340.P11547166855106418355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (A039649 (n + 1) - 1)

end

end A319340.P11547166855106418355

namespace A319340

/-- `A023900(n+1)+A039649(n+1)-1` -/
def P11547166855106418355.Spec : Prop :=
  ∀ n, P11547166855106418355.a n = A319340 (n + 1)

theorem P11547166855106418355.correct : P11547166855106418355.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P11547166855106418355.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-! ## A319340.P3856103489203628302

`A023900(n+1)-A219428(n+1)+n`
-/

namespace A319340.P3856103489203628302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) - A219428 (n + 1) + (n : ℤ)

end

end A319340.P3856103489203628302

namespace A319340

/-- `A023900(n+1)-A219428(n+1)+n` -/
def P3856103489203628302.Spec : Prop :=
  ∀ n, P3856103489203628302.a n = A319340 (n + 1)

theorem P3856103489203628302.correct : P3856103489203628302.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P3856103489203628302.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-! ## A319340.P7202180136569376090

`∏{p}[n+1, A001222(#)-#]+Δ[A002088(n)]`
-/

namespace A319340.P7202180136569376090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 p - (p : ℤ)) + (f2 (n + 1) - f2 n)

end

end A319340.P7202180136569376090

namespace A319340

/-- `∏{p}[n+1, A001222(#)-#]+Δ[A002088(n)]` -/
def P7202180136569376090.Spec : Prop :=
  ∀ n, P7202180136569376090.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P6233448084653030769

`∏{p}[n+1, A001222(#)-#]+n-A219428(n+1)`
-/

namespace A319340.P6233448084653030769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A001222 p - (p : ℤ)) + ((n : ℤ) - A219428 (n + 1))

end

end A319340.P6233448084653030769

namespace A319340

/-- `∏{p}[n+1, A001222(#)-#]+n-A219428(n+1)` -/
def P6233448084653030769.Spec : Prop :=
  ∀ n, P6233448084653030769.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P760433634515251926

`A023900(n+1)+∏{p}[n+1, #-1]*A003557(n+1)`
-/

namespace A319340.P760433634515251926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1)

end

end A319340.P760433634515251926

namespace A319340

/-- `A023900(n+1)+∏{p}[n+1, #-1]*A003557(n+1)` -/
def P760433634515251926.Spec : Prop :=
  ∀ n, P760433634515251926.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P18382722981584798801

`∏{p}[n+1, A001222(#)-#]+A002618(n+1)/(n+1)`
-/

namespace A319340.P18382722981584798801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (A001222 p - (p : ℤ)) : ℤ) : ℚ) + (A002618 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A319340.P18382722981584798801

namespace A319340

/-- `∏{p}[n+1, A001222(#)-#]+A002618(n+1)/(n+1)` -/
def P18382722981584798801.Spec : Prop :=
  ∀ n, P18382722981584798801.a n = (A319340 (n + 1) : ℚ)

end A319340

/-! ## A319340.P4303878363563940922

`A008683(∏{p}[n+1, #])*∏{p}[n+1, #-1]+A109606(n+1)+1`
-/

namespace A319340.P4303878363563940922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) + (A109606 (n + 1) + 1)

end

end A319340.P4303878363563940922

namespace A319340

/-- `A008683(∏{p}[n+1, #])*∏{p}[n+1, #-1]+A109606(n+1)+1` -/
def P4303878363563940922.Spec : Prop :=
  ∀ n, P4303878363563940922.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P3235772481064942745

`A023900(n+1)+(n+1)/∏{p}[n+1, #]*A047994(∏{p}[n+1, #])`
-/

namespace A319340.P3235772481064942745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023900 (n + 1) : ℚ) + (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A047994 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A319340.P3235772481064942745

namespace A319340

/-- `A023900(n+1)+(n+1)/∏{p}[n+1, #]*A047994(∏{p}[n+1, #])` -/
def P3235772481064942745.Spec : Prop :=
  ∀ n, P3235772481064942745.a n = (A319340 (n + 1) : ℚ)

end A319340

/-! ## A319340.P12213347832667965619

`A008683(∏{p}[n+1, #])*∏{p}[n+1, #-1]+1-A051953(n+1)+n`
-/

namespace A319340.P12213347832667965619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1)) + (1 - A051953 (n + 1) + (n : ℤ))

end

end A319340.P12213347832667965619

namespace A319340

/-- `A008683(∏{p}[n+1, #])*∏{p}[n+1, #-1]+1-A051953(n+1)+n` -/
def P12213347832667965619.Spec : Prop :=
  ∀ n, P12213347832667965619.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P17716220058088126780

`A097945(A007947(n+1))+A000010(n+1)`
-/

namespace A319340.P17716220058088126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A007947 (n + 1)).toNat + A000010 (n + 1)

end

end A319340.P17716220058088126780

namespace A319340

/-- `A097945(A007947(n+1))+A000010(n+1)` -/
def P17716220058088126780.Spec : Prop :=
  ∀ n, P17716220058088126780.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P3205571904031255143

`A002088(n+1)+A023900(n+1)-A002088(n)`
-/

namespace A319340.P3205571904031255143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A023900 (n + 1) - A002088 n)

end

end A319340.P3205571904031255143

namespace A319340

/-- `A002088(n+1)+A023900(n+1)-A002088(n)` -/
def P3205571904031255143.Spec : Prop :=
  ∀ n, P3205571904031255143.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P3789818040707333121

`∑{d}[A062953(n+1), A062953(#)]+A000010(n+1)`
-/

namespace A319340.P3789818040707333121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062953 d + A000010 (n + 1)

end

end A319340.P3789818040707333121

namespace A319340

/-- `∑{d}[A062953(n+1), A062953(#)]+A000010(n+1)` -/
def P3789818040707333121.Spec : Prop :=
  ∀ n, P3789818040707333121.a n = A319340 (n + 1)

end A319340

/-! ## A319340.P10425599254545145868

`A023900(n+1)+A319341(n+1)+A173557(n+1)`
-/

namespace A319340.P10425599254545145868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + (A319341 (n + 1) + A173557 (n + 1))

end

end A319340.P10425599254545145868

namespace A319340

/-- `A023900(n+1)+A319341(n+1)+A173557(n+1)` -/
def P10425599254545145868.Spec : Prop :=
  ∀ n, P10425599254545145868.a n = A319340 (n + 1)

theorem P10425599254545145868.correct : P10425599254545145868.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P10425599254545145868.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A173557, A173557.P15666735857375843373.a, A319341, A319341.P11516969970215772159.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-! ## A319340.P517025562768462344

`A318833(n+1)+A319341(n+1)-A318841(n+1)`
-/

namespace A319340.P517025562768462344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (n + 1) + (A319341 (n + 1) - A318841 (n + 1))

end

end A319340.P517025562768462344

namespace A319340

/-- `A318833(n+1)+A319341(n+1)-A318841(n+1)` -/
def P517025562768462344.Spec : Prop :=
  ∀ n, P517025562768462344.a n = A319340 (n + 1)

theorem P517025562768462344.correct : P517025562768462344.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P517025562768462344.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A318833, A318833.P15994994677912991465.a, A318841, A318841.P6517978691631055757.a, A319341, A319341.P11516969970215772159.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-! ## A319340.P15047361753256825826

`A023900(n+1)+A003557(n+1)*A173557(n+1)`
-/

namespace A319340.P15047361753256825826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1) + A003557 (n + 1) * A173557 (n + 1)

end

end A319340.P15047361753256825826

namespace A319340

/-- `A023900(n+1)+A003557(n+1)*A173557(n+1)` -/
def P15047361753256825826.Spec : Prop :=
  ∀ n, P15047361753256825826.a n = A319340 (n + 1)

theorem P15047361753256825826.correct : P15047361753256825826.Spec := by
  intro n
  simp only [A319340, Nat.add_sub_cancel, A319340.P15047361753256825826.a, A319340.P918367480918848699.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319340

/-!
# A319341: a(n) = A000010(n) - A173557(n).

The programs for A319341, the canonical program `A319341.P11516969970215772159` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319341 has offset 1).

The definition of A319341 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A173557, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319341.P11516969970215772159

`A000010(n+1)-A173557(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A319341

/-- `A000010(n+1)-A173557(n+1)` -/
def P11516969970215772159.Spec : Prop :=
  ∀ n, P11516969970215772159.a n = A319341 (n + 1)

theorem P11516969970215772159.correct : P11516969970215772159.Spec := by
  intro n
  simp only [A319341, Nat.add_sub_cancel]

end A319341

/-! ## A319341.P10662269787963545091

`A318841(n+1)-A051953(n+1)`
-/

namespace A319341.P10662269787963545091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318841 (n + 1) - A051953 (n + 1)

end

end A319341.P10662269787963545091

namespace A319341

/-- `A318841(n+1)-A051953(n+1)` -/
def P10662269787963545091.Spec : Prop :=
  ∀ n, P10662269787963545091.a n = A319341 (n + 1)

theorem P10662269787963545091.correct : P10662269787963545091.Spec := by
  intro n
  simp only [A319341, Nat.add_sub_cancel, A319341.P10662269787963545091.a, A319341.P11516969970215772159.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P15666735857375843373.a, A318841, A318841.P6517978691631055757.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319341

/-! ## A319341.P18385501235173557670

`Δ[A002088(n)]-A173557(n+1)`
-/

namespace A319341.P18385501235173557670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173557 (n + 1)

end

end A319341.P18385501235173557670

namespace A319341

/-- `Δ[A002088(n)]-A173557(n+1)` -/
def P18385501235173557670.Spec : Prop :=
  ∀ n, P18385501235173557670.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P3997461829445640221

`Δ[A005728(n)]-A173557(n+1)`
-/

namespace A319341.P3997461829445640221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A173557 (n + 1)

end

end A319341.P3997461829445640221

namespace A319341

/-- `Δ[A005728(n)]-A173557(n+1)` -/
def P3997461829445640221.Spec : Prop :=
  ∀ n, P3997461829445640221.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P8747756242558591759

`A173557(n+1)*A336551(n+1)`
-/

namespace A319341.P8747756242558591759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) * A336551 (n + 1)

end

end A319341.P8747756242558591759

namespace A319341

/-- `A173557(n+1)*A336551(n+1)` -/
def P8747756242558591759.Spec : Prop :=
  ∀ n, P8747756242558591759.a n = A319341 (n + 1)

theorem P8747756242558591759.correct : P8747756242558591759.Spec := by
  intro n
  simp only [A319341, Nat.add_sub_cancel, A319341.P8747756242558591759.a, A319341.P11516969970215772159.a, A000010, A000010.P4673923239450215316.a, A173557, A173557.P15666735857375843373.a, A336551, A336551.P8666843674191054020.a, A001221, A001221.P10258181745752134128.a, A003557, A003557.P6364735403900941810.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319341

/-! ## A319341.P12337068912816309288

`A000010(n+1)-abs(A023900(n+1))`
-/

namespace A319341.P12337068912816309288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - |A023900 (n + 1)|

end

end A319341.P12337068912816309288

namespace A319341

/-- `A000010(n+1)-abs(A023900(n+1))` -/
def P12337068912816309288.Spec : Prop :=
  ∀ n, P12337068912816309288.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P13186270100630967667

`Δ[A100449(n)/4]-A173557(n+1)`
-/

namespace A319341.P13186270100630967667
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A173557 (n + 1) : ℚ)

end

end A319341.P13186270100630967667

namespace A319341

/-- `Δ[A100449(n)/4]-A173557(n+1)` -/
def P13186270100630967667.Spec : Prop :=
  ∀ n, P13186270100630967667.a n = (A319341 (n + 1) : ℚ)

end A319341

/-! ## A319341.P2838964869989703145

`(A003557(n+1)-1)*A173557(n+1)`
-/

namespace A319341.P2838964869989703145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) - 1) * A173557 (n + 1)

end

end A319341.P2838964869989703145

namespace A319341

/-- `(A003557(n+1)-1)*A173557(n+1)` -/
def P2838964869989703145.Spec : Prop :=
  ∀ n, P2838964869989703145.a n = A319341 (n + 1)

theorem P2838964869989703145.correct : P2838964869989703145.Spec := by
  intro n
  simp only [A319341, Nat.add_sub_cancel, A319341.P2838964869989703145.a, A319341.P11516969970215772159.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A319341

/-! ## A319341.P16214356619135190009

`A000010(n+1)-A000010(∏{p}[n+1, #])`
-/

namespace A319341.P16214356619135190009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000010 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A319341.P16214356619135190009

namespace A319341

/-- `A000010(n+1)-A000010(∏{p}[n+1, #])` -/
def P16214356619135190009.Spec : Prop :=
  ∀ n, P16214356619135190009.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P5722784961242519732

`A039649(n+1)-A039649(∏{p}[n+1, #])`
-/

namespace A319341.P5722784961242519732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A039649 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A319341.P5722784961242519732

namespace A319341

/-- `A039649(n+1)-A039649(∏{p}[n+1, #])` -/
def P5722784961242519732.Spec : Prop :=
  ∀ n, P5722784961242519732.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P16666358689085046048

`A109606(n+1)-A109606(∏{p}[n+1, #])`
-/

namespace A319341.P16666358689085046048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A109606 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A319341.P16666358689085046048

namespace A319341

/-- `A109606(n+1)-A109606(∏{p}[n+1, #])` -/
def P16666358689085046048.Spec : Prop :=
  ∀ n, P16666358689085046048.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P8082517900791389861

`A000010(n+1)-A000010(A007947(n+1))`
-/

namespace A319341.P8082517900791389861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000010 (A007947 (n + 1)).toNat

end

end A319341.P8082517900791389861

namespace A319341

/-- `A000010(n+1)-A000010(A007947(n+1))` -/
def P8082517900791389861.Spec : Prop :=
  ∀ n, P8082517900791389861.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P9205194887374780564

`A000010(n+1)-A000010(A099985(n+1))`
-/

namespace A319341.P9205194887374780564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000010 (A099985 (n + 1)).toNat

end

end A319341.P9205194887374780564

namespace A319341

/-- `A000010(n+1)-A000010(A099985(n+1))` -/
def P9205194887374780564.Spec : Prop :=
  ∀ n, P9205194887374780564.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P13892910200614836598

`A086798(n+1)-A086798(A007947(n+1))`
-/

namespace A319341.P13892910200614836598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086798 (n + 1) - A086798 (A007947 (n + 1)).toNat

end

end A319341.P13892910200614836598

namespace A319341

/-- `A086798(n+1)-A086798(A007947(n+1))` -/
def P13892910200614836598.Spec : Prop :=
  ∀ n, P13892910200614836598.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P9310759769547421741

`A000010(n+1)-A000010(A204455(n+1))`
-/

namespace A319341.P9310759769547421741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000010 (A204455 (n + 1)).toNat

end

end A319341.P9310759769547421741

namespace A319341

/-- `A000010(n+1)-A000010(A204455(n+1))` -/
def P9310759769547421741.Spec : Prop :=
  ∀ n, P9310759769547421741.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P14977125226834637789

`A109606(n+1)-A109606(A007947(n+1))`
-/

namespace A319341.P14977125226834637789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) - A109606 (A007947 (n + 1)).toNat

end

end A319341.P14977125226834637789

namespace A319341

/-- `A109606(n+1)-A109606(A007947(n+1))` -/
def P14977125226834637789.Spec : Prop :=
  ∀ n, P14977125226834637789.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P13153518239212243575

`A000010(A007947(n+1))*A336551(n+1)`
-/

namespace A319341.P13153518239212243575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007947 (n + 1)).toNat * A336551 (n + 1)

end

end A319341.P13153518239212243575

namespace A319341

/-- `A000010(A007947(n+1))*A336551(n+1)` -/
def P13153518239212243575.Spec : Prop :=
  ∀ n, P13153518239212243575.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P5300669084486546639

`A000010(n+1)-A000010(abs(A062953(n+1)))`
-/

namespace A319341.P5300669084486546639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000010 |A062953 (n + 1)|.toNat

end

end A319341.P5300669084486546639

namespace A319341

/-- `A000010(n+1)-A000010(abs(A062953(n+1)))` -/
def P5300669084486546639.Spec : Prop :=
  ∀ n, P5300669084486546639.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P5708513282640174106

`A000010(n+1)-A000010(sqrt(A078615(n+1)))`
-/

namespace A319341.P5708513282640174106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000010 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A319341.P5708513282640174106

namespace A319341

/-- `A000010(n+1)-A000010(sqrt(A078615(n+1)))` -/
def P5708513282640174106.Spec : Prop :=
  ∀ n, P5708513282640174106.a n = A319341 (n + 1)

end A319341

/-! ## A319341.P17760131021605399813

`A062570(n+1)/A000034(n)-A173557(n+1)`
-/

namespace A319341.P17760131021605399813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062570 (n + 1) : ℚ) / (A000034 n : ℚ) - (A173557 (n + 1) : ℚ)

end

end A319341.P17760131021605399813

namespace A319341

/-- `A062570(n+1)/A000034(n)-A173557(n+1)` -/
def P17760131021605399813.Spec : Prop :=
  ∀ n, P17760131021605399813.a n = (A319341 (n + 1) : ℚ)

end A319341

/-!
# A319342: a(n) = Product_{d|n, d

The programs for A319342, there is no canonical definition to state claims against.
-/

/-! ## A319342.P5245488977612410052

`2*A319344(n+1)/A006530(2*A319344(n+1))`
-/

namespace A319342.P5245488977612410052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A319344 (n + 1) : ℚ) / (A006530 (2 * A319344 (n + 1)).toNat : ℚ)

end

end A319342.P5245488977612410052

/-! ## A319342.P8002621599501372571

`A052126(2*A319344(n+1))`
-/

namespace A319342.P8002621599501372571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (2 * A319344 (n + 1)).toNat

end

end A319342.P8002621599501372571

/-! ## A319342.P10912034358578820064

`A052126(A005843(A319344(n+1)))`
-/

namespace A319342.P10912034358578820064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A005843 (A319344 (n + 1)).toNat).toNat

end

end A319342.P10912034358578820064

/-! ## A319342.P6381135729861840111

`and(A038573(A115920(n+1)), A318834(n+1))`
-/

namespace A319342.P6381135729861840111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038573 (A115920 (n + 1)).toNat) (A318834 (n + 1))

end

end A319342.P6381135729861840111

/-! ## A319342.P13968787201597289056

`A318834(n+1)%A001316(A260267(2*n+5))`
-/

namespace A319342.P13968787201597289056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A318834 (n + 1)) (A001316 (A260267 (2 * n + 5)).toNat)

end

end A319342.P13968787201597289056

/-!
# A319347: Filter sequence combining A000035(n) (parity of n), A003557(n), and A046523(n) (prime signature of n).

The programs for A319347, there is no canonical definition to state claims against.
-/

/-! ## A319347.P15127224351458403805

`A300226(n+1)+A001221(A016116(n))`
-/

namespace A319347.P15127224351458403805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300226 (n + 1) + A001221 (A016116 n).toNat

end

end A319347.P15127224351458403805

/-! ## A319347.P15774500926758648253

`A329620(n+1)+A061395(A016116(n))`
-/

namespace A319347.P15774500926758648253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329620 (n + 1) + A061395 (A016116 n).toNat

end

end A319347.P15774500926758648253

/-! ## A319347.P16669846670154410994

`A300246(n+1)+A300234(A016116(n))`
-/

namespace A319347.P16669846670154410994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300246 (n + 1) + A300234 (A016116 n).toNat

end

end A319347.P16669846670154410994

/-! ## A319347.P7935073506526592557

`A329620(n+1)-A057428(A047967(n))`
-/

namespace A319347.P7935073506526592557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329620 (n + 1) - A057428 (A047967 n).toNat

end

end A319347.P7935073506526592557

/-! ## A319347.P11999031923154858148

`A329620(n+1)+A057428(A047967(n))*A057428(n)`
-/

namespace A319347.P11999031923154858148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329620 (n + 1) + A057428 (A047967 n).toNat * A057428 n

end

end A319347.P11999031923154858148

/-!
# A319348: Lexicographically earliest infinite sequence such that a(i) = a(j) => A003557(i) = A003557(j) and A051953(i) = A051953(j), for all i, j >= 1.

The programs for A319348, there is no canonical definition to state claims against.
-/

/-! ## A319348.P1781615029724154859

`A319349(n+1)-floor(atan(n))`
-/

namespace A319348.P1781615029724154859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319349 (n + 1) - ⌊Real.arctan (n : ℝ)⌋

end

end A319348.P1781615029724154859

/-! ## A319348.P18040082550004710248

`A319349(n+1)-A157928(n)`
-/

namespace A319348.P18040082550004710248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319349 (n + 1) - A157928 n

end

end A319348.P18040082550004710248

/-! ## A319348.P10105773895003997716

`A000010(n+1)%2+A319349(n+1)-1`
-/

namespace A319348.P10105773895003997716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 2 + (A319349 (n + 1) - 1)

end

end A319348.P10105773895003997716

/-! ## A319348.P6553323628225422816

`A319349(n+1)-A066247(A014683(n+1))`
-/

namespace A319348.P6553323628225422816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319349 (n + 1) - A066247 (A014683 (n + 1)).toNat

end

end A319348.P6553323628225422816

/-! ## A319348.P12833544963356430820

`A319349(n+1)-A001221(a(A001221(n)))` with `a(0)=1`
-/

namespace A319348.P12833544963356430820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A319349 (n + 1) - A001221 (a (A001221 n).toNat).toNat

end

end A319348.P12833544963356430820

/-! ## A319348.P8668332142699199442

`A319349(n+1)-A000035(A019426(n))`
-/

namespace A319348.P8668332142699199442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319349 (n + 1) - A000035 (A019426 n).toNat

end

end A319348.P8668332142699199442

/-! ## A319348.P8409223724741526644

`A319349(n+1)-A066247(A025487(n+1))`
-/

namespace A319348.P8409223724741526644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319349 (n + 1) - A066247 (A025487 (n + 1)).toNat

end

end A319348.P8409223724741526644

/-!
# A319349: Filter sequence combining parity of n, A003557(n) and A051953(n).

The programs for A319349, there is no canonical definition to state claims against.
-/

/-! ## A319349.P7584994880359534311

`A319348(n+1)+A157928(n)`
-/

namespace A319349.P7584994880359534311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + A157928 n

end

end A319349.P7584994880359534311

/-! ## A319349.P11909426412067839946

`A319348(n+1)+char[A305800(n+2)]`
-/

namespace A319349.P11909426412067839946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319349.P11909426412067839946

/-! ## A319349.P14391880013557378387

`A319348(n+1)+char[A319348(n+2)]`
-/

namespace A319349.P14391880013557378387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319349.P14391880013557378387

/-! ## A319349.P12456940306577041054

`A319348(n+1)+(A000010(n+1)+1)%2`
-/

namespace A319349.P12456940306577041054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + Int.tmod (A000010 (n + 1) + 1) 2

end

end A319349.P12456940306577041054

/-! ## A319349.P281888251504386221

`A319348(n+1)+(A001615(n+1)+1)%2`
-/

namespace A319349.P281888251504386221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + Int.tmod (A001615 (n + 1) + 1) 2

end

end A319349.P281888251504386221

/-! ## A319349.P9749383785393539247

`A319348(n+1)+A057427(A049472(n))`
-/

namespace A319349.P9749383785393539247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + A057427 (A049472 n).toNat

end

end A319349.P9749383785393539247

/-! ## A319349.P7879796682307273766

`A319348(n+1)+A019425(A201629(n))`
-/

namespace A319349.P7879796682307273766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + A019425 (A201629 n).toNat

end

end A319349.P7879796682307273766

/-! ## A319349.P16276002812158726773

`A319348(n+1)+A001221(a(A001221(n)))` with `a(0)=1`
-/

namespace A319349.P16276002812158726773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A319348 (n + 1) + A001221 (a (A001221 n).toNat).toNat

end

end A319349.P16276002812158726773

/-! ## A319349.P9524011663078475772

`A319348(n+1)+A057427(n-A057427(n))`
-/

namespace A319349.P9524011663078475772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + A057427 ((n : ℤ) - A057427 n).toNat

end

end A319349.P9524011663078475772

/-! ## A319349.P5391088598582917757

`A319348(n+1)+A000035(A151800(n))`
-/

namespace A319349.P5391088598582917757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319348 (n + 1) + A000035 (A151800 n).toNat

end

end A319349.P5391088598582917757

/-!
# A319351: Filter sequence which records the number of cyclotomic cosets of 2 mod p^k for powers of odd primes p, and for any other number assigns a unique number.

The programs for A319351, there is no canonical definition to state claims against.
-/

/-! ## A319351.P14159003347458069599

`A122314(A319349(n+1))*A322482(A175840(n))`
-/

namespace A319351.P14159003347458069599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122314 (A319349 (n + 1)).toNat * A322482 (A175840 n).toNat

end

end A319351.P14159003347458069599

/-!
# A319352: a(n) = Product_{d|n, d

The programs for A319352, there is no canonical definition to state claims against.
-/

/-! ## A319352.P2902459829708841413

`A353564(A072087(n+1))`
-/

namespace A319352.P2902459829708841413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353564 (A072087 (n + 1)).toNat

end

end A319352.P2902459829708841413

/-! ## A319352.P5977416176921012680

`A329607(A349567(n+2))`
-/

namespace A319352.P5977416176921012680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A349567 (n + 2)).toNat

end

end A319352.P5977416176921012680

/-! ## A319352.P3970816925417697450

`gcd(A300834(n+1), A322693(A288476(n)))`
-/

namespace A319352.P3970816925417697450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300834 (n + 1)) (A322693 (A288476 n).toNat)

end

end A319352.P3970816925417697450

/-! ## A319352.P6435116184546639660

`A300834(n+1)/A300826(A122534(n+1))`
-/

namespace A319352.P6435116184546639660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300834 (n + 1) : ℚ) / (A300826 (A122534 (n + 1)).toNat : ℚ)

end

end A319352.P6435116184546639660

/-!
# A319353: Filter sequence combining weights of partitions with Heinz-numbers equal to the proper divisors of n.

The programs for A319353, there is no canonical definition to state claims against.
-/

/-! ## A319353.P2320725411515796289

`A300827(n+1)-A178798(A087153(n))`
-/

namespace A319353.P2320725411515796289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) - A178798 (A087153 n).toNat

end

end A319353.P2320725411515796289

/-! ## A319353.P2718931468577095270

`A319343(n+1)-A178798(A087153(n))`
-/

namespace A319353.P2718931468577095270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319343 (n + 1) - A178798 (A087153 n).toNat

end

end A319353.P2718931468577095270

/-! ## A319353.P11533855404283495656

`A319343(n+1)-A185284(A000931(n))`
-/

namespace A319353.P11533855404283495656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319343 (n + 1) - A185284 (A000931 n).toNat

end

end A319353.P11533855404283495656

/-! ## A319353.P16039902339287818202

`A300827(n+1)-A184946(A334652(n))`
-/

namespace A319353.P16039902339287818202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) - A184946 (A334652 n).toNat

end

end A319353.P16039902339287818202

/-! ## A319353.P17967750702329029499

`A300827(n+1)-A184946(A334653(n))`
-/

namespace A319353.P17967750702329029499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) - A184946 (A334653 n).toNat

end

end A319353.P17967750702329029499

/-!
# A319354: a(n) = Product prime(k), where k ranges over the lengths of all arithmetic progressions formed from the divisors of n (with at least two distinct terms each); a(1) = 2 by convention.

The programs for A319354, there is no canonical definition to state claims against.
-/

/-! ## A319354.P1080174359660412227

`A229870(A289078(n+1)+A214815(n))`
-/

namespace A319354.P1080174359660412227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229870 (A289078 (n + 1) + A214815 n).toNat

end

end A319354.P1080174359660412227

/-! ## A319354.P8446798153543613919

`A088491(lcm(A000244(n), A074792(n+1)))`
-/

namespace A319354.P8446798153543613919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088491 (Int.lcm (A000244 n) (A074792 (n + 1)))

end

end A319354.P8446798153543613919

/-!
# A319355: Filter sequence constructed from the lengths of arithmetic progressions occurring among the divisors of n.

The programs for A319355, there is no canonical definition to state claims against.
-/

/-! ## A319355.P15502698730720150950

`A290110(n+1)+A102683(A081437(n))`
-/

namespace A319355.P15502698730720150950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290110 (n + 1) + A102683 (A081437 n).toNat

end

end A319355.P15502698730720150950

/-! ## A319355.P674407620542261589

`A319357(n+1)+A102683(A081437(n))`
-/

namespace A319355.P674407620542261589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319357 (n + 1) + A102683 (A081437 n).toNat

end

end A319355.P674407620542261589

/-! ## A319355.P17698927148610305382

`A324203(n+1)+A102683(A081437(n))`
-/

namespace A319355.P17698927148610305382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324203 (n + 1) + A102683 (A081437 n).toNat

end

end A319355.P17698927148610305382

/-! ## A319355.P185931406135098493

`or(A235145(A302119(n)), A290110(n+1))`
-/

namespace A319355.P185931406135098493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235145 (A302119 n).toNat) (A290110 (n + 1))

end

end A319355.P185931406135098493

/-!
# A319358: 

The programs for A319358, there is no canonical definition to state claims against.
-/

/-! ## A319358.P3422267867743171031

`(10^n-1)^9`
-/

namespace A319358.P3422267867743171031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1) ^ 9

end

end A319358.P3422267867743171031

/-! ## A319358.P4067936221979674389

`A272066(n)²*A272066(n)`
-/

namespace A319358.P4067936221979674389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272066 n ^ 2 * A272066 n

end

end A319358.P4067936221979674389

/-!
# A319361: a(n) = [x^n] exp(Sum_{k>=1} sigma_n(k)*x^k/k).

The programs for A319361, there is no canonical definition to state claims against.
-/

/-! ## A319361.P1314793292428141904

`A144048(2*n²)`
-/

namespace A319361.P1314793292428141904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144048 (2 * n ^ 2)

end

end A319361.P1314793292428141904

/-! ## A319361.P1417492059430153563

`A062513(n+1)*A144048(A001105(n))`
-/

namespace A319361.P1417492059430153563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A144048 (A001105 n).toNat

end

end A319361.P1417492059430153563

/-! ## A319361.P15563675262903141543

`or(A037858(n+1), A144048(A001105(n)))`
-/

namespace A319361.P15563675262903141543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037858 (n + 1)) (A144048 (A001105 n).toNat)

end

end A319361.P15563675262903141543

/-! ## A319361.P14162301396964491950

`or(A105523(2*n), A144048(A001105(n)))`
-/

namespace A319361.P14162301396964491950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A105523 (2 * n)) (A144048 (A001105 n).toNat)

end

end A319361.P14162301396964491950

/-! ## A319361.P13719766049680923048

`a(A086017(n))*A144048(A001105(n))` with `a(0)=1`
-/

namespace A319361.P13719766049680923048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A086017 n).toNat * A144048 (A001105 n).toNat

end

end A319361.P13719766049680923048

/-!
# A319362: a(n) = [x^n] exp(Sum_{k>=1} sigma(n*k)*x^k/k).

The programs for A319362, there is no canonical definition to state claims against.
-/

/-! ## A319362.P17918784376715678340

`A255509(∑[n^n]-and(1, n))`
-/

namespace A319362.P17918784376715678340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255509 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.land 1 n)

end

end A319362.P17918784376715678340

/-!
# A319363: a(n) = [x^n] exp(Sum_{k>=1} sigma(k^n)*x^k/k).

The programs for A319363, there is no canonical definition to state claims against.
-/

/-! ## A319363.P13708000808619235548

`A117117(ceil(exp(n-1)))`
-/

namespace A319363.P13708000808619235548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117117 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A319363.P13708000808619235548

/-!
# A319364: Expansion of e.g.f. exp(x^3/3)/(1 - x).

The programs for A319364, there is no canonical definition to state claims against.
-/

/-! ## A319364.P803968034782035344

`A060726(n)+A002264(A002264(n)*A060726(n))`
-/

namespace A319364.P803968034782035344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060726 n + A002264 (A002264 n * A060726 n).toNat

end

end A319364.P803968034782035344

/-! ## A319364.P11626976706822426745

`A151969(∑[n!]-n)`
-/

namespace A319364.P11626976706822426745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151969 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A319364.P11626976706822426745

/-! ## A319364.P9169930925812143572

`A151969(n*a(n-1))` with `a(0)=1`
-/

namespace A319364.P9169930925812143572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151969 ((n : ℤ) * a (n - 1)).toNat

end

end A319364.P9169930925812143572

/-!
# A319367: Triangle read by rows: T(n,k) is the number of simple vertex transitive graphs with n nodes and valency k, (0 <= k < n).

The programs for A319367, there is no canonical definition to state claims against.
-/

/-! ## A319367.P8269509638600477773

`A347245(A333159(n))+A319372(n+1)`
-/

namespace A319367.P8269509638600477773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (A333159 n).toNat + A319372 (n + 1)

end

end A319367.P8269509638600477773

/-! ## A319367.P16560414513114818759

`or(A000035(A333580(n+1)), A319372(n+1))`
-/

namespace A319367.P16560414513114818759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A333580 (n + 1)).toNat) (A319372 (n + 1))

end

end A319367.P16560414513114818759

/-! ## A319367.P11951717837533139228

`A319372(n+1)+A181838(A187596(n))`
-/

namespace A319367.P11951717837533139228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319372 (n + 1) + A181838 (A187596 n).toNat

end

end A319367.P11951717837533139228

/-! ## A319367.P9038166365210503098

`A319372(n+1)+A011738(A218879(n+1))`
-/

namespace A319367.P9038166365210503098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319372 (n + 1) + A011738 (A218879 (n + 1)).toNat

end

end A319367.P9038166365210503098

/-! ## A319367.P15062430469657028578

`or(A036987(A066401(n+1)), A319372(n+1))`
-/

namespace A319367.P15062430469657028578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A066401 (n + 1)).toNat) (A319372 (n + 1))

end

end A319367.P15062430469657028578

/-! ## A319367.P7498237715143453179

`or(A257000(A025613(n+1)), A319372(n+1))`
-/

namespace A319367.P7498237715143453179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257000 (A025613 (n + 1)).toNat) (A319372 (n + 1))

end

end A319367.P7498237715143453179

/-!
# A319368: Triangle read by rows: T(n,k) is the number of simple connected vertex transitive graphs with n nodes and valency k, (0 <= k < n).

The programs for A319368, there is no canonical definition to state claims against.
-/

/-! ## A319368.P8879918979066305272

`A054054(A068934(n+1)^Δ[A073692(n)])`
-/

namespace A319368.P8879918979066305272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (SequenceMachineLib.roundAway ((A068934 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A319368.P8879918979066305272

/-! ## A319368.P14836813999601820030

`A060500(A068934(n+1)^A000194(n))`
-/

namespace A319368.P14836813999601820030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A068934 (n + 1) : ℚ) ^ (A000194 n : ℤ))).toNat

end

end A319368.P14836813999601820030

/-! ## A319368.P13001685814311525057

`A030172(A068934(n+1)^A040218(n))`
-/

namespace A319368.P13001685814311525057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030172 (SequenceMachineLib.roundAway ((A068934 (n + 1) : ℚ) ^ (A040218 n : ℤ))).toNat

end

end A319368.P13001685814311525057

/-! ## A319368.P18031709265591707765

`A189024(A040063(n)^A068934(n+1))`
-/

namespace A319368.P18031709265591707765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (SequenceMachineLib.roundAway ((A040063 n : ℚ) ^ (A068934 (n + 1) : ℤ))).toNat

end

end A319368.P18031709265591707765

/-! ## A319368.P9988416113593812993

`A326702(A068934(n+1)^A008480(n+4))`
-/

namespace A319368.P9988416113593812993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326702 (SequenceMachineLib.roundAway ((A068934 (n + 1) : ℚ) ^ (A008480 (n + 4) : ℤ))).toNat

end

end A319368.P9988416113593812993

/-!
# A319369: Number of series-reduced rooted trees with n leaves of n colors.

The programs for A319369, there is no canonical definition to state claims against.
-/

/-! ## A319369.P974761005060808053

`A319254(∑[4*n]+1)`
-/

namespace A319369.P974761005060808053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A319369.P974761005060808053

/-! ## A319369.P12909701751731494251

`record[A003982(n)*A319254(n+1)]`
-/

namespace A319369.P12909701751731494251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A319254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319369.P12909701751731494251

/-! ## A319369.P7560560076818305871

`record[gcd(A114327(n), A319254(n+1))]`
-/

namespace A319369.P7560560076818305871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A319254 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319369.P7560560076818305871

/-! ## A319369.P15916266801864382168

`A319254(A001844(n))+A025469(n)`
-/

namespace A319369.P15916266801864382168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A001844 n).toNat + A025469 n

end

end A319369.P15916266801864382168

/-! ## A319369.P2992951326697948303

`A319254(A001844(n))+(2*n)%2*Δ[A000045(n)]`
-/

namespace A319369.P2992951326697948303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A001844 n).toNat + ((2 * n % 2 : ℕ) : ℤ) * (f1 (n + 1) - f1 n)

end

end A319369.P2992951326697948303

/-!
# A319371: Numbers k such that the characteristic polynomial of a wheel graph of k nodes has exactly one monomial with vanishing coefficient.

The programs for A319371, the canonical program `A319371.P4775293655570008450` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319371 has offset 1).

The definition of A319371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319371.P4804210175186916239

`comp[4*(n+1)]+1`
-/

namespace A319371.P4804210175186916239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A319371.P4804210175186916239

namespace A319371

/-- `comp[4*(n+1)]+1` -/
def P4804210175186916239.Spec : Prop :=
  ∀ n, (P4804210175186916239.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P1279708135425396420

`comp[a(n-1)+4]` with `a(0)=0, a(1)=5`
-/

namespace A319371.P1279708135425396420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A319371.P1279708135425396420

namespace A319371

/-- `comp[a(n-1)+4]` -/
def P1279708135425396420.Spec : Prop :=
  ∀ n, (P1279708135425396420.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P4775293655570008450

`ceil(record[lcm(2, n)+2]/3)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319371

/-- `ceil(record[lcm(2, n)+2]/3)` -/
def P4775293655570008450.Spec : Prop :=
  ∀ n, P4775293655570008450.a n = A319371 (n + 1)

theorem P4775293655570008450.correct : P4775293655570008450.Spec := by
  intro n
  simp only [A319371, Nat.add_sub_cancel]

end A319371

/-! ## A319371.P4408651319753110597

`record[gcd(n-1, val(n+2, 4))]`
-/

namespace A319371.P4408651319753110597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 1) (SequenceMachineLib.valuation (n + 2) 4 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319371.P4408651319753110597

namespace A319371

/-- `record[gcd(n-1, val(n+2, 4))]` -/
def P4408651319753110597.Spec : Prop :=
  ∀ n, (P4408651319753110597.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P1963480853323227126

`comp[C(n+2, lcm(4, n+1))]`
-/

namespace A319371.P1963480853323227126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (Nat.lcm 4 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A319371.P1963480853323227126

namespace A319371

/-- `comp[C(n+2, lcm(4, n+1))]` -/
def P1963480853323227126.Spec : Prop :=
  ∀ n, (P1963480853323227126.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P600322407913191012

`record[n-a(n-1)%2]` with `a(0)=1`
-/

namespace A319371.P600322407913191012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - Int.tmod (f1 (n - 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319371.P600322407913191012

namespace A319371

/-- `record[n-a(n-1)%2]` -/
def P600322407913191012.Spec : Prop :=
  ∀ n, P600322407913191012.a n = A319371 (n + 1)

end A319371

/-! ## A319371.P14374244109015606920

`lt[val(n+3, 4), acot(n-1)]`
-/

namespace A319371.P14374244109015606920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A319371.P14374244109015606920

namespace A319371

/-- `lt[val(n+3, 4), acot(n-1)]` -/
def P14374244109015606920.Spec : Prop :=
  ∀ n, (P14374244109015606920.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P14385963800479755719

`abs(a(n-3)+4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A319371.P14385963800479755719
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  a (n - 3) + 4

end

end A319371.P14385963800479755719

namespace A319371

/-- `abs(a(n-3)+4)` -/
def P14385963800479755719.Spec : Prop :=
  ∀ n, (P14385963800479755719.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P18367197204660480773

`∑[abs(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A319371.P18367197204660480773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319371.P18367197204660480773

namespace A319371

/-- `∑[abs(a(n-3))]` -/
def P18367197204660480773.Spec : Prop :=
  ∀ n, (P18367197204660480773.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P10335863120625046876

`record[a(n-3)+4]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=3`
-/

namespace A319371.P10335863120625046876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 3] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319371.P10335863120625046876

namespace A319371

/-- `record[a(n-3)+4]` -/
def P10335863120625046876.Spec : Prop :=
  ∀ n, (P10335863120625046876.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P982713500858849515

`∑[a(n-3)!]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A319371.P982713500858849515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  Nat.factorial (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319371.P982713500858849515

namespace A319371

/-- `∑[a(n-3)!]` -/
def P982713500858849515.Spec : Prop :=
  ∀ n, (P982713500858849515.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P790891705622449114

`∑[dr(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A319371.P790891705622449114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319371.P790891705622449114

namespace A319371

/-- `∑[dr(a(n-3))]` -/
def P790891705622449114.Spec : Prop :=
  ∀ n, (P790891705622449114.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P8287314438933427865

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A319371.P8287314438933427865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319371.P8287314438933427865

namespace A319371

/-- `∑[floor(a(n-3))]` -/
def P8287314438933427865.Spec : Prop :=
  ∀ n, (P8287314438933427865.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P16864897350609483666

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A319371.P16864897350609483666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319371.P16864897350609483666

namespace A319371

/-- `∑[ceil(a(n-3))]` -/
def P16864897350609483666.Spec : Prop :=
  ∀ n, (P16864897350609483666.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P14833963451321318508

`∑[round(a(n-3))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A319371.P14833963451321318508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319371.P14833963451321318508

namespace A319371

/-- `∑[round(a(n-3))]` -/
def P14833963451321318508.Spec : Prop :=
  ∀ n, (P14833963451321318508.a n : ℤ) = A319371 (n + 1)

end A319371

/-! ## A319371.P4961912768966492872

`record[n-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A319371.P4961912768966492872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319371.P4961912768966492872

namespace A319371

/-- `record[n-a(n-4)]` -/
def P4961912768966492872.Spec : Prop :=
  ∀ n, P4961912768966492872.a n = A319371 (n + 1)

end A319371

/-! ## A319371.P7236744251235821876

`floor(2/atan(3/(2*n+1)))`
-/

namespace A319371.P7236744251235821876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.arctan (3 / (2 * n + 1 : ℚ) : ℝ)⌋

end

end A319371.P7236744251235821876

namespace A319371

/-- `floor(2/atan(3/(2*n+1)))` -/
def P7236744251235821876.Spec : Prop :=
  ∀ n, P7236744251235821876.a n = A319371 (n + 1)

end A319371

/-! ## A319371.P8515432606513845130

`floor(2/acot((2*n+1)/3))`
-/

namespace A319371.P8515432606513845130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot ((2 * n + 1 : ℚ) / 3 : ℝ)⌋

end

end A319371.P8515432606513845130

namespace A319371

/-- `floor(2/acot((2*n+1)/3))` -/
def P8515432606513845130.Spec : Prop :=
  ∀ n, P8515432606513845130.a n = A319371 (n + 1)

end A319371

/-! ## A319371.P17639534257042685847

`lt[(n-1)*val(n+3, 2), n]`
-/

namespace A319371.P17639534257042685847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (SequenceMachineLib.valuation (n + 3) 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A319371.P17639534257042685847

namespace A319371

/-- `lt[(n-1)*val(n+3, 2), n]` -/
def P17639534257042685847.Spec : Prop :=
  ∀ n, (P17639534257042685847.a n : ℤ) = A319371 (n + 1)

end A319371

/-!
# A319372: Triangle read by rows: T(n,k) is the number of Cayley graphs with n nodes and valency k, (0 <= k < n).

The programs for A319372, there is no canonical definition to state claims against.
-/

/-! ## A319372.P15587560933771463104

`A319367(n+1)-A347245(A333159(n))`
-/

namespace A319372.P15587560933771463104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (n + 1) - A347245 (A333159 n).toNat

end

end A319372.P15587560933771463104

/-! ## A319372.P2239721769329976407

`A319367(n+1)-A181838(A187596(n))`
-/

namespace A319372.P2239721769329976407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (n + 1) - A181838 (A187596 n).toNat

end

end A319372.P2239721769329976407

/-! ## A319372.P7013173757248682019

`A319367(n+1)-A011738(A218879(n+1))`
-/

namespace A319372.P7013173757248682019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (n + 1) - A011738 (A218879 (n + 1)).toNat

end

end A319372.P7013173757248682019

/-! ## A319372.P10485965471393870704

`dr(A169683(A125186(A187596(n))))`
-/

namespace A319372.P10485965471393870704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A169683 (A125186 (A187596 n).toNat).toNat)

end

end A319372.P10485965471393870704

/-! ## A319372.P17270623374980556659

`A319367(n+1)-A165878(A068934(n+1))`
-/

namespace A319372.P17270623374980556659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319367 (n + 1) - A165878 (A068934 (n + 1)).toNat

end

end A319372.P17270623374980556659

/-!
# A319373: a(n) = 1*2 - 3*4 + 5*6 - 7*8 + 9*10 - 11*12 + 13*14 - ... + (up to n).

The programs for A319373, the canonical program `A319373.P4266076748036600597` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319373 has offset 1).

The definition of A319373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319373.P4266076748036600597

`∑[A009001(n)*A109613(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A319373

/-- `∑[A009001(n)*A109613(n)]` -/
def P4266076748036600597.Spec : Prop :=
  ∀ n, P4266076748036600597.a n = A319373 (n + 1)

theorem P4266076748036600597.correct : P4266076748036600597.Spec := by
  intro n
  simp only [A319373, Nat.add_sub_cancel]

end A319373

/-! ## A319373.P7911215736615459014

`A319885(n+1)-A056594(n)`
-/

namespace A319373.P7911215736615459014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319885 (n + 1) - A056594 n

end

end A319373.P7911215736615459014

namespace A319373

/-- `A319885(n+1)-A056594(n)` -/
def P7911215736615459014.Spec : Prop :=
  ∀ n, P7911215736615459014.a n = A319373 (n + 1)

theorem P7911215736615459014.correct : P7911215736615459014.Spec := by
  intro n
  simp only [A319373, Nat.add_sub_cancel, A319373.P7911215736615459014.a, A319373.P4266076748036600597.f1, A319373.P4266076748036600597.a, A009001, A009001.P14275162091830881705.a, A056594, A056594.P16236062631889685808.a, A109613, A109613.P11033607296544520888.a, A319885, A319885.P12897512140959124864.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A319373

/-! ## A319373.P14705764064733907432

`∑[Δ[A009531(n)]*A093178(n)]`
-/

namespace A319373.P14705764064733907432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319373.P14705764064733907432

namespace A319373

/-- `∑[Δ[A009531(n)]*A093178(n)]` -/
def P14705764064733907432.Spec : Prop :=
  ∀ n, P14705764064733907432.a n = A319373 (n + 1)

end A319373

/-! ## A319373.P5731759804626937851

`∑[A009001(n)²*A009001(A004442(n))]`
-/

namespace A319373.P5731759804626937851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n ^ 2 * A009001 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319373.P5731759804626937851

namespace A319373

/-- `∑[A009001(n)²*A009001(A004442(n))]` -/
def P5731759804626937851.Spec : Prop :=
  ∀ n, P5731759804626937851.a n = A319373 (n + 1)

end A319373

/-! ## A319373.P11391677957344443603

`∑[A004525(2*n+1)*A009001(n)]`
-/

namespace A319373.P11391677957344443603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1) * A009001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319373.P11391677957344443603

namespace A319373

/-- `∑[A004525(2*n+1)*A009001(n)]` -/
def P11391677957344443603.Spec : Prop :=
  ∀ n, P11391677957344443603.a n = A319373 (n + 1)

end A319373

/-!
# A319374: Number of cubic Cayley graphs with 2n nodes.

The programs for A319374, there is no canonical definition to state claims against.
-/

/-! ## A319374.P3959542343124334111

`A319372(∑[a(n-1)+4])` with `a(0)=7`
-/

namespace A319374.P3959542343124334111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319372 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319374.P3959542343124334111

/-! ## A319374.P5637298462314479188

`A319372((n+1)*(2*n+7))`
-/

namespace A319374.P5637298462314479188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319372 ((n + 1) * (2 * n + 7))

end

end A319374.P5637298462314479188

/-!
# A319376: Triangle read by rows: T(n,k) is the number of lone-child-avoiding rooted trees with n leaves of exactly k colors.

The programs for A319376, there is no canonical definition to state claims against.
-/

/-! ## A319376.P3977743059862508855

`ceil(A109128(n)/2)*A196241(A210736(n))`
-/

namespace A319376.P3977743059862508855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉ * A196241 (A210736 n).toNat

end

end A319376.P3977743059862508855

/-! ## A319376.P9654655286501959354

`(A131060(n)+2)/3*A196241(A210736(n))`
-/

namespace A319376.P9654655286501959354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131060 n + 2 : ℚ) / 3 * (A196241 (A210736 n).toNat : ℚ)

end

end A319376.P9654655286501959354

/-!
# A319377: Number of series-reduced rooted trees with n leaves of exactly two colors.

The programs for A319377, there is no canonical definition to state claims against.
-/

/-! ## A319377.P3007567434268534473

`A050381(n+2)-2*A000669(n+2)`
-/

namespace A319377.P3007567434268534473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050381 (n + 2) - 2 * A000669 (n + 2)

end

end A319377.P3007567434268534473

/-! ## A319377.P2239505336337918082

`A050381(n+2)-A000084(n+2)`
-/

namespace A319377.P2239505336337918082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050381 (n + 2) - A000084 (n + 2)

end

end A319377.P2239505336337918082

/-! ## A319377.P49398719540539665

`A319376(∑[n+1]+2)`
-/

namespace A319377.P49398719540539665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319376 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A319377.P49398719540539665

/-! ## A319377.P10077747616248366863

`record[gcd(A319376(n+2), A339650(n))]`
-/

namespace A319377.P10077747616248366863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319376 (n + 2)) (A339650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319377.P10077747616248366863

/-! ## A319377.P11334816024805461202

`record[gcd(A319376(n+3), A339649(n))]`
-/

namespace A319377.P11334816024805461202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319376 (n + 3)) (A339649 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319377.P11334816024805461202

/-!
# A319378: Number of plane trees with n nodes where the sequence of branches directly under any given node with at least two branches has empty intersection.

The programs for A319378, there is no canonical definition to state claims against.
-/

/-! ## A319378.P1562571152760693323

`A243412(n)+A208981(A003104(n^ceil(n/8)))`
-/

namespace A319378.P1562571152760693323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243412 n + A208981 (A003104 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈(n : ℚ) / 8⌉ : ℤ))).toNat).toNat

end

end A319378.P1562571152760693323

/-! ## A319378.P13707338143770325170

`A360271(n)+A056170(A360266(n))`
-/

namespace A319378.P13707338143770325170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360271 n + A056170 (A360266 n).toNat

end

end A319378.P13707338143770325170

/-! ## A319378.P6163999604125535097

`A000108(n)-A010455(A325922(n))`
-/

namespace A319378.P6163999604125535097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A010455 (A325922 n).toNat

end

end A319378.P6163999604125535097

/-! ## A319378.P4494750887536972260

`A287967(n)-A102442(A000142(n))`
-/

namespace A319378.P4494750887536972260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287967 n - A102442 (A000142 n).toNat

end

end A319378.P4494750887536972260

/-!
# A319379: Number of plane trees with n nodes where the sequence of branches directly under any given node is a chain of multisets.

The programs for A319379, there is no canonical definition to state claims against.
-/

/-! ## A319379.P5704904895250521724

`A347011(n)-A322306(A322298(n))`
-/

namespace A319379.P5704904895250521724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 n - A322306 (A322298 n).toNat

end

end A319379.P5704904895250521724

/-! ## A319379.P10819101607389791130

`A347011(n)-A107846(A049125(n+1))`
-/

namespace A319379.P10819101607389791130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 n - A107846 (A049125 (n + 1)).toNat

end

end A319379.P10819101607389791130

/-! ## A319379.P11928140381154439746

`A206301(n)-A147952(A165878(2*n+1))`
-/

namespace A319379.P11928140381154439746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206301 n - A147952 (A165878 (2 * n + 1)).toNat

end

end A319379.P11928140381154439746

/-! ## A319379.P15771540437141193343

`A347011(n)-A107846(ceil(3^(n-1)))`
-/

namespace A319379.P15771540437141193343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347011 n - A107846 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A319379.P15771540437141193343

/-! ## A319379.P4329702803082177946

`A206301(n)-A124761(A002378(n))`
-/

namespace A319379.P4329702803082177946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206301 n - A124761 (A002378 n).toNat

end

end A319379.P4329702803082177946

/-!
# A319380: Number of plane trees with n nodes where the sequence of branches directly under any given node is a chain of distinct multisets.

The programs for A319380, there is no canonical definition to state claims against.
-/

/-! ## A319380.P10090398132402138587

`A259361(A036765(n)+1)`
-/

namespace A319380.P10090398132402138587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A036765 n + 1).toNat

end

end A319380.P10090398132402138587

/-! ## A319380.P10598634492206128841

`A259361(A136751(n)+1)`
-/

namespace A319380.P10598634492206128841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A136751 n + 1).toNat

end

end A319380.P10598634492206128841

/-! ## A319380.P5033817583338596747

`A295866(A390132(n+1))`
-/

namespace A319380.P5033817583338596747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A390132 (n + 1)).toNat

end

end A319380.P5033817583338596747

/-! ## A319380.P16132037063541850771

`A259361(or(2, A036765(n)))`
-/

namespace A319380.P16132037063541850771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.lor 2 (A036765 n)).toNat

end

end A319380.P16132037063541850771

/-! ## A319380.P17075739588849043621

`A003056(ceil(A036765(n)/2))`
-/

namespace A319380.P17075739588849043621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈(A036765 n : ℚ) / 2⌉.toNat

end

end A319380.P17075739588849043621

/-!
# A319382: Binomial coefficients binomial(m,k) for 2 <= k <= m/2 in sorted order.

The programs for A319382, there is no canonical definition to state claims against.
-/

/-! ## A319382.P8301140261604171320

`C(A022911(n+1), A022912(n+1))`
-/

namespace A319382.P8301140261604171320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A022911 (n + 1)).toNat (A022912 (n + 1)).toNat

end

end A319382.P8301140261604171320

/-! ## A319382.P16105287533142793724

`A006987(n+1)-A185236(A321316(n+1))`
-/

namespace A319382.P16105287533142793724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1) - A185236 (A321316 (n + 1)).toNat

end

end A319382.P16105287533142793724

/-! ## A319382.P3250894549215772113

`A006987(n+1)-A349797(A171944(3*(n+1)))`
-/

namespace A319382.P3250894549215772113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1) - A349797 (A171944 (3 * (n + 1))).toNat

end

end A319382.P3250894549215772113

/-!
# A319384: a(n) = a(n-1) + 2*a(n-2) - 2*a(n-3) - a(n-4) + a(n-5), a(0)=1, a(1)=5, a(2)=9, a(3)=21, a(4)=29.

The programs for A319384, the canonical program `A319384.P10157944300359546244` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319384 has offset 0).

The definition of A319384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` (program `A319384.P10157944300359546244`, by `A319384.P10157944300359546244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319384.P8841392716540624054

`(6*n²+6*n+5-(2*n+1)*(-1)^n)/4`
-/

namespace A319384.P8841392716540624054
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n ^ 2 + 6 * n + 5 : ℤ) - (2 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 4

end

end A319384.P8841392716540624054

namespace A319384

/-- `(6*n²+6*n+5-(2*n+1)*(-1)^n)/4` -/
def P8841392716540624054.Spec : Prop :=
  ∀ n, P8841392716540624054.a n = (A319384 n : ℚ)

theorem P8841392716540624054.correct : P8841392716540624054.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A319384, Nat.add_sub_cancel, A319384.P8841392716540624054.a, A319384.P10157944300359546244.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A319384, Nat.add_sub_cancel, A319384.P8841392716540624054.a, A319384.P10157944300359546244.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A319384

/-! ## A319384.P10157944300359546244

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=9, a(3)=21, a(4)=29`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319384

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10157944300359546244.Spec : Prop :=
  ∀ n, P10157944300359546244.a n = A319384 n

theorem P10157944300359546244.correct : P10157944300359546244.Spec := by
  intro n
  simp only [A319384]

end A319384

/-! ## A319384.P9344679382973310556

`A104585(n)+A032766(n+1)`
-/

namespace A319384.P9344679382973310556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104585 n + A032766 (n + 1)

end

end A319384.P9344679382973310556

namespace A319384

/-- `A104585(n)+A032766(n+1)` -/
def P9344679382973310556.Spec : Prop :=
  ∀ n, P9344679382973310556.a n = A319384 n

end A319384

/-! ## A319384.P1758526646764723407

`∑[2*lcm(2, n)]+1`
-/

namespace A319384.P1758526646764723407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319384.P1758526646764723407

namespace A319384

/-- `∑[2*lcm(2, n)]+1` -/
def P1758526646764723407.Spec : Prop :=
  ∀ n, (P1758526646764723407.a n : ℤ) = A319384 n

end A319384

/-! ## A319384.P11736960133682090365

`or(1, ∑[lcm(4, 2*n)])`
-/

namespace A319384.P11736960133682090365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319384.P11736960133682090365

namespace A319384

/-- `or(1, ∑[lcm(4, 2*n)])` -/
def P11736960133682090365.Spec : Prop :=
  ∀ n, (P11736960133682090365.a n : ℤ) = A319384 n

end A319384

/-! ## A319384.P18347835277387745653

`∑[4*gcd(n, ∑[n])]+1`
-/

namespace A319384.P18347835277387745653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319384.P18347835277387745653

namespace A319384

/-- `∑[4*gcd(n, ∑[n])]+1` -/
def P18347835277387745653.Spec : Prop :=
  ∀ n, (P18347835277387745653.a n : ℤ) = A319384 n

end A319384

/-! ## A319384.P16870028995167659891

`∑[C(2*n+1, and(1, n))]+n²`
-/

namespace A319384.P16870028995167659891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2

end

end A319384.P16870028995167659891

namespace A319384

/-- `∑[C(2*n+1, and(1, n))]+n²` -/
def P16870028995167659891.Spec : Prop :=
  ∀ n, (P16870028995167659891.a n : ℤ) = A319384 n

end A319384

/-! ## A319384.P14559674811604800598

`a(n-1)+2*n*(n%2+1)` with `a(0)=1`
-/

namespace A319384.P14559674811604800598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * (n * (n % 2 + 1))

end

end A319384.P14559674811604800598

namespace A319384

/-- `a(n-1)+2*n*(n%2+1)` -/
def P14559674811604800598.Spec : Prop :=
  ∀ n, (P14559674811604800598.a n : ℤ) = A319384 n

end A319384

/-! ## A319384.P2488646760362379951

`∑[floor((2*n+1)/a(n-1))]+n²` with `a(0)=1`
-/

namespace A319384.P2488646760362379951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(2 * n + 1 : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A319384.P2488646760362379951

namespace A319384

/-- `∑[floor((2*n+1)/a(n-1))]+n²` -/
def P2488646760362379951.Spec : Prop :=
  ∀ n, P2488646760362379951.a n = A319384 n

end A319384

/-! ## A319384.P18166716655187259560

`a(n-1)+2*n*gcd(n-1, 2*n)` with `a(0)=1`
-/

namespace A319384.P18166716655187259560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * n * Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)

end

end A319384.P18166716655187259560

namespace A319384

/-- `a(n-1)+2*n*gcd(n-1, 2*n)` -/
def P18166716655187259560.Spec : Prop :=
  ∀ n, (P18166716655187259560.a n : ℤ) = A319384 n

end A319384

/-! ## A319384.P10866262209883315361

`∑[A382154(n)]`
-/

namespace A319384.P10866262209883315361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319384.P10866262209883315361

namespace A319384

/-- `∑[A382154(n)]` -/
def P10866262209883315361.Spec : Prop :=
  ∀ n, P10866262209883315361.a n = A319384 n

end A319384

/-! ## A319384.P13546560996972288979

`ceil(A298037(n)/3)`
-/

namespace A319384.P13546560996972288979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A298037 n : ℚ) / 3⌉

end

end A319384.P13546560996972288979

namespace A319384

/-- `ceil(A298037(n)/3)` -/
def P13546560996972288979.Spec : Prop :=
  ∀ n, P13546560996972288979.a n = A319384 n

end A319384

/-! ## A319384.P8469820606539498509

`Δ[A124350(n)/4]`
-/

namespace A319384.P8469820606539498509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124350 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319384.P8469820606539498509

namespace A319384

/-- `Δ[A124350(n)/4]` -/
def P8469820606539498509.Spec : Prop :=
  ∀ n, P8469820606539498509.a n = (A319384 n : ℚ)

end A319384

/-! ## A319384.P6577854881155191805

`A266883(n)+∑[n]`
-/

namespace A319384.P6577854881155191805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A319384.P6577854881155191805

namespace A319384

/-- `A266883(n)+∑[n]` -/
def P6577854881155191805.Spec : Prop :=
  ∀ n, P6577854881155191805.a n = A319384 n

end A319384

/-! ## A319384.P5786637586211364927

`A062717(n+1)+1`
-/

namespace A319384.P5786637586211364927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062717 (n + 1) + 1

end

end A319384.P5786637586211364927

namespace A319384

/-- `A062717(n+1)+1` -/
def P5786637586211364927.Spec : Prop :=
  ∀ n, P5786637586211364927.a n = A319384 n

end A319384

/-! ## A319384.P2939612218587747369

`2*A152749(n)+1`
-/

namespace A319384.P2939612218587747369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152749 n + 1

end

end A319384.P2939612218587747369

namespace A319384

/-- `2*A152749(n)+1` -/
def P2939612218587747369.Spec : Prop :=
  ∀ n, P2939612218587747369.a n = A319384 n

end A319384

/-! ## A319384.P5552582520290020075

`4*A001318(n)+1`
-/

namespace A319384.P5552582520290020075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001318 n + 1

end

end A319384.P5552582520290020075

namespace A319384

/-- `4*A001318(n)+1` -/
def P5552582520290020075.Spec : Prop :=
  ∀ n, P5552582520290020075.a n = A319384 n

end A319384

/-! ## A319384.P11688968597111334117

`4*A319390(n)-3`
-/

namespace A319384.P11688968597111334117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A319390 n - 3

end

end A319384.P11688968597111334117

namespace A319384

/-- `4*A319390(n)-3` -/
def P11688968597111334117.Spec : Prop :=
  ∀ n, P11688968597111334117.a n = A319384 n

end A319384

/-! ## A319384.P635416807156020199

`A354594(n+1)-n`
-/

namespace A319384.P635416807156020199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354594 (n + 1) - (n : ℤ)

end

end A319384.P635416807156020199

namespace A319384

/-- `A354594(n+1)-n` -/
def P635416807156020199.Spec : Prop :=
  ∀ n, P635416807156020199.a n = A319384 n

end A319384

/-! ## A319384.P3918246570985197857

`Δ[A323724(n)+n²]`
-/

namespace A319384.P3918246570985197857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323724 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319384.P3918246570985197857

namespace A319384

/-- `Δ[A323724(n)+n²]` -/
def P3918246570985197857.Spec : Prop :=
  ∀ n, P3918246570985197857.a n = A319384 n

end A319384

/-!
# A319385: Assuming the truth of the Collatz conjecture, let {m, f(m), f(f(m)), ..., 1} be the set where f is the Collatz function. The sequence lists the numbers m such that m/phi(m) + f(m)/phi(f(m)) + f(f(m))/phi(f(f(m))) + ... + 1/phi(1) is an integer, where phi is the Euler totient function A000010.

The programs for A319385, there is no canonical definition to state claims against.
-/

/-! ## A319385.P6766110119223103002

`record[A074206(A198632(n))]`
-/

namespace A319385.P6766110119223103002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A198632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319385.P6766110119223103002

/-! ## A319385.P7767521640041826220

`record[A002033(A129142(n+1))]`
-/

namespace A319385.P7767521640041826220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A129142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319385.P7767521640041826220

/-! ## A319385.P12174779172954737025

`record[gcd(A008949(n), A124540(n))]`
-/

namespace A319385.P12174779172954737025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008949 n) (A124540 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319385.P12174779172954737025

/-! ## A319385.P3631806897038520401

`∩[A373847(n+1), A114398(n)]`
-/

namespace A319385.P3631806897038520401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114398 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319385.P3631806897038520401

/-! ## A319385.P13836709650027389393

`∩[A045583(n+1), A191985(n+1)]`
-/

namespace A319385.P13836709650027389393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319385.P13836709650027389393

/-!
# A319386: Semiprimes k = pq with primes p < q such that p-1 does not divide q-1.

The programs for A319386, there is no canonical definition to state claims against.
-/

/-! ## A319386.P7822956436514133623

`filter[A121707(n+1), A064911(#)]`
-/

namespace A319386.P7822956436514133623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A319386.P7822956436514133623

/-! ## A319386.P12529983485212207750

`filter[A121707(n+1), A101040(#)]`
-/

namespace A319386.P12529983485212207750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A319386.P12529983485212207750

/-! ## A319386.P9566390922924918400

`filter[A121707(n+1), A280710(#)]`
-/

namespace A319386.P9566390922924918400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A319386.P9566390922924918400

/-! ## A319386.P13792126796944046505

`filter[A121707(n+1), A340370(#)]`
-/

namespace A319386.P13792126796944046505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A319386.P13792126796944046505

/-! ## A319386.P14955099072678731405

`filter[A121707(n+1), A353471(#)]`
-/

namespace A319386.P14955099072678731405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A319386.P14955099072678731405

/-! ## A319386.P12783666780418545541

`filter[A121707(n+1), A353480(#)]`
-/

namespace A319386.P12783666780418545541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A319386.P12783666780418545541

/-! ## A319386.P14232885201529623240

`filter[A121707(n+1), A353481(#)]`
-/

namespace A319386.P14232885201529623240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A319386.P14232885201529623240

/-! ## A319386.P5223033561042312162

`∩[A001358(n+1), A121707(n+1)]`
-/

namespace A319386.P5223033561042312162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319386.P5223033561042312162

/-! ## A319386.P10023122508265374424

`∩[A121707(n+1), A374129(n+1)]`
-/

namespace A319386.P10023122508265374424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319386.P10023122508265374424

/-! ## A319386.P11432550768170356955

`filter[A340269(n+1), A064911(#)]`
-/

namespace A319386.P11432550768170356955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A319386.P11432550768170356955

/-! ## A319386.P3600296925302156954

`filter[A340269(n+1), A101040(#)]`
-/

namespace A319386.P3600296925302156954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A319386.P3600296925302156954

/-! ## A319386.P6163012070042268049

`filter[A340269(n+1), A280710(#)]`
-/

namespace A319386.P6163012070042268049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A319386.P6163012070042268049

/-! ## A319386.P9214117416083909124

`filter[A340269(n+1), A340370(#)]`
-/

namespace A319386.P9214117416083909124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A319386.P9214117416083909124

/-! ## A319386.P8616534118444902432

`filter[A340269(n+1), A353471(#)]`
-/

namespace A319386.P8616534118444902432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A319386.P8616534118444902432

/-! ## A319386.P15558017207061594548

`filter[A340269(n+1), A353480(#)]`
-/

namespace A319386.P15558017207061594548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A319386.P15558017207061594548

/-! ## A319386.P10877200425094394856

`filter[A340269(n+1), A353481(#)]`
-/

namespace A319386.P10877200425094394856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A319386.P10877200425094394856

/-! ## A319386.P17212165973845215316

`filter[A340269(n+1), A353788(#)]`
-/

namespace A319386.P17212165973845215316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A319386.P17212165973845215316

/-! ## A319386.P11915372935232224872

`filter[A340269(n+1), A353799(#)]`
-/

namespace A319386.P11915372935232224872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A319386.P11915372935232224872

/-! ## A319386.P8347367256819039618

`filter[A340269(n+1), A354927(#)]`
-/

namespace A319386.P8347367256819039618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A319386.P8347367256819039618

/-! ## A319386.P17017976694028649680

`∩[A340269(n+1), A374129(n+1)]`
-/

namespace A319386.P17017976694028649680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319386.P17017976694028649680

/-!
# A319387: Smallest palindrome p such that n-p is again a palindrome, or n if no such p exists.

The programs for A319387, there is no canonical definition to state claims against.
-/

/-! ## A319387.P15293756369072646826

`n-A262087(n)`
-/

namespace A319387.P15293756369072646826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262087 n

end

end A319387.P15293756369072646826

/-! ## A319387.P10561404370148747852

`abs(A262087(n)+A001489(n))`
-/

namespace A319387.P10561404370148747852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262087 n + A001489 n|

end

end A319387.P10561404370148747852

/-! ## A319387.P12262317952105475320

`A057428(n)*A262087(n)+n`
-/

namespace A319387.P12262317952105475320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A262087 n + (n : ℤ)

end

end A319387.P12262317952105475320

/-! ## A319387.P727016698822419916

`A016789(n)%(A262087(n)+A103517(n))`
-/

namespace A319387.P727016698822419916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A262087 n + A103517 n)

end

end A319387.P727016698822419916

/-! ## A319387.P7016776458790090823

`A004442(A004442(n))+A001489(A262087(n))`
-/

namespace A319387.P7016776458790090823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A004442 n).toNat + A001489 (A262087 n).toNat

end

end A319387.P7016776458790090823

/-! ## A319387.P11843298951153799491

`A014681(A014681(n))+A001489(A262087(n))`
-/

namespace A319387.P11843298951153799491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A014681 n).toNat + A001489 (A262087 n).toNat

end

end A319387.P11843298951153799491

/-! ## A319387.P414067212083149256

`A056926((A262087(n)+A001489(n))²)`
-/

namespace A319387.P414067212083149256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((A262087 n + A001489 n) ^ 2).toNat

end

end A319387.P414067212083149256

/-! ## A319387.P1728606610949453722

`A025581(A262087(n)+∑[n])`
-/

namespace A319387.P1728606610949453722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A262087 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A319387.P1728606610949453722

/-!
# A319388: Non-palindromic squares.

The programs for A319388, there is no canonical definition to state claims against.
-/

/-! ## A319388.P16431890941575896773

`comp[A002778(n+1)]²`
-/

namespace A319388.P16431890941575896773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A319388.P16431890941575896773

/-! ## A319388.P12054050750986570632

`A253909(comp[A002778(n+1)])`
-/

namespace A319388.P12054050750986570632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A319388.P12054050750986570632

/-! ## A319388.P15235007665583217192

`A002522(comp[A002778(n+1)])-1`
-/

namespace A319388.P15235007665583217192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002778 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A319388.P15235007665583217192

/-! ## A319388.P13873694451107651476

`comp[eq[n², A004086(n²)]]²`
-/

namespace A319388.P13873694451107651476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2

end

end A319388.P13873694451107651476

/-! ## A319388.P776391350300697261

`comp[A056926(A002113(n+1))]²`
-/

namespace A319388.P776391350300697261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A002113 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2

end

end A319388.P776391350300697261

/-!
# A319389: Non-palindromic cubes.

The programs for A319389, there is no canonical definition to state claims against.
-/

/-! ## A319389.P6941386321080742834

`comp[A002780(n+1)]^3`
-/

namespace A319389.P6941386321080742834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 3

end

end A319389.P6941386321080742834

/-! ## A319389.P5557840187215755512

`A068601(comp[A002780(n+1)])+1`
-/

namespace A319389.P5557840187215755512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068601 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A319389.P5557840187215755512

/-! ## A319389.P8917409923874079455

`A066023(comp[A002780(n+1)])`
-/

namespace A319389.P8917409923874079455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066023 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A319389.P8917409923874079455

/-! ## A319389.P5069235313571500939

`A000578(lt[A370833(3*n+4), A080288(n+1)])`
-/

namespace A319389.P5069235313571500939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370833 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319389.P5069235313571500939

/-! ## A319389.P15956023029260882258

`A000578(lt[A087706(2*n+3), A270613(n+1)])`
-/

namespace A319389.P15956023029260882258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087706 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A319389.P15956023029260882258

/-!
# A319390: a(n) = a(n-1) + 2*a(n-2) - 2*a(n-3) - a(n-4) + a(n-5), a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=8.

The programs for A319390, the canonical program `A319390.P15060225293002748640` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319390 has offset 0).

The definition of A319390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` (program `A319390.P15060225293002748640`, by `A319390.P15060225293002748640.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319390.P15060225293002748640

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A319390

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15060225293002748640.Spec : Prop :=
  ∀ n, P15060225293002748640.a n = A319390 n

theorem P15060225293002748640.correct : P15060225293002748640.Spec := by
  intro n
  simp only [A319390]

end A319390

/-! ## A319390.P12723269952079997579

`1+A001318(n)`
-/

namespace A319390.P12723269952079997579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001318 n

end

end A319390.P12723269952079997579

namespace A319390

/-- `1+A001318(n)` -/
def P12723269952079997579.Spec : Prop :=
  ∀ n, P12723269952079997579.a n = A319390 n

end A319390

/-! ## A319390.P3908738937663491514

`a(n-1)+A026741(n)` with `a(0)=1`
-/

namespace A319390.P3908738937663491514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A026741 n

end

end A319390.P3908738937663491514

namespace A319390

/-- `a(n-1)+A026741(n)` -/
def P3908738937663491514.Spec : Prop :=
  ∀ n, P3908738937663491514.a n = A319390 n

end A319390

/-! ## A319390.P15824189337024950609

`∑[gcd(n, ∑[n])]+1`
-/

namespace A319390.P15824189337024950609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319390.P15824189337024950609

namespace A319390

/-- `∑[gcd(n, ∑[n])]+1` -/
def P15824189337024950609.Spec : Prop :=
  ∀ n, (P15824189337024950609.a n : ℤ) = A319390 n

end A319390

/-! ## A319390.P10848984372026382437

`∑[lcm(2, n)/2]+1`
-/

namespace A319390.P10848984372026382437
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319390.P10848984372026382437

namespace A319390

/-- `∑[lcm(2, n)/2]+1` -/
def P10848984372026382437.Spec : Prop :=
  ∀ n, P10848984372026382437.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P4578096764778169153

`∑[n/(2-n%2)]+1`
-/

namespace A319390.P4578096764778169153
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319390.P4578096764778169153

namespace A319390

/-- `∑[n/(2-n%2)]+1` -/
def P4578096764778169153.Spec : Prop :=
  ∀ n, P4578096764778169153.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P13271580220683762432

`∑[n/(2-and(1, n))]+1`
-/

namespace A319390.P13271580220683762432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319390.P13271580220683762432

namespace A319390

/-- `∑[n/(2-and(1, n))]+1` -/
def P13271580220683762432.Spec : Prop :=
  ∀ n, P13271580220683762432.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P3552373764482096933

`∑[-(n/or(n, -2))]+1`
-/

namespace A319390.P3552373764482096933
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((n : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319390.P3552373764482096933

namespace A319390

/-- `∑[-(n/or(n, -2))]+1` -/
def P3552373764482096933.Spec : Prop :=
  ∀ n, P3552373764482096933.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P7983978394833790839

`∑[C(n, 2)/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A319390.P7983978394833790839
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.choose n 2 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319390.P7983978394833790839

namespace A319390

/-- `∑[C(n, 2)/a(n-1)]` -/
def P7983978394833790839.Spec : Prop :=
  ∀ n, P7983978394833790839.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P8460975277280437542

`∑[n/(char[2*n]+1)]+1`
-/

namespace A319390.P8460975277280437542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319390.P8460975277280437542

namespace A319390

/-- `∑[n/(char[2*n]+1)]+1` -/
def P8460975277280437542.Spec : Prop :=
  ∀ n, P8460975277280437542.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P5627855281551257927

`∑[(∑[n]-n)/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A319390.P5627855281551257927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319390.P5627855281551257927

namespace A319390

/-- `∑[(∑[n]-n)/a(n-1)]` -/
def P5627855281551257927.Spec : Prop :=
  ∀ n, P5627855281551257927.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P10516964918910192088

`∑[ogf((1+x-x^2+x^3+x^4)/(1-2x^2+x^4))]`
-/

namespace A319390.P10516964918910192088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1, 1] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319390.P10516964918910192088

namespace A319390

/-- `∑[ogf((1+x-x^2+x^3+x^4)/(1-2x^2+x^4))]` -/
def P10516964918910192088.Spec : Prop :=
  ∀ n, P10516964918910192088.a n = A319390 n

end A319390

/-! ## A319390.P11514825189032166022

`(A152749(n)+2)/2`
-/

namespace A319390.P11514825189032166022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152749 n + 2 : ℚ) / 2

end

end A319390.P11514825189032166022

namespace A319390

/-- `(A152749(n)+2)/2` -/
def P11514825189032166022.Spec : Prop :=
  ∀ n, P11514825189032166022.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P3650973096153760496

`(A319384(n)+3)/4`
-/

namespace A319390.P3650973096153760496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319384 n + 3 : ℚ) / 4

end

end A319390.P3650973096153760496

namespace A319390

/-- `(A319384(n)+3)/4` -/
def P3650973096153760496.Spec : Prop :=
  ∀ n, P3650973096153760496.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P16509355280572538168

`∑[A028310(gcd(n, ∑[n]))]`
-/

namespace A319390.P16509355280572538168
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319390.P16509355280572538168

namespace A319390

/-- `∑[A028310(gcd(n, ∑[n]))]` -/
def P16509355280572538168.Spec : Prop :=
  ∀ n, P16509355280572538168.a n = A319390 n

end A319390

/-! ## A319390.P16928190654276334600

`(A247018(n+1)-1)/2`
-/

namespace A319390.P16928190654276334600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247018 (n + 1) - 1 : ℚ) / 2

end

end A319390.P16928190654276334600

namespace A319390

/-- `(A247018(n+1)-1)/2` -/
def P16928190654276334600.Spec : Prop :=
  ∀ n, P16928190654276334600.a n = (A319390 n : ℚ)

end A319390

/-! ## A319390.P9307318772356840408

`∑[2-A319702(n+1)+n]`
-/

namespace A319390.P9307318772356840408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A319702 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319390.P9307318772356840408

namespace A319390

/-- `∑[2-A319702(n+1)+n]` -/
def P9307318772356840408.Spec : Prop :=
  ∀ n, P9307318772356840408.a n = A319390 n

end A319390

/-! ## A319390.P2462387568977436550

`∑[n+3-A319701(n+2)]`
-/

namespace A319390.P2462387568977436550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A319701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319390.P2462387568977436550

namespace A319390

/-- `∑[n+3-A319701(n+2)]` -/
def P2462387568977436550.Spec : Prop :=
  ∀ n, P2462387568977436550.a n = A319390 n

end A319390

/-! ## A319390.P12846079797707083564

`∪[A104249(n), A143689(n)]`
-/

namespace A319390.P12846079797707083564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319390.P12846079797707083564

namespace A319390

/-- `∪[A104249(n), A143689(n)]` -/
def P12846079797707083564.Spec : Prop :=
  ∀ n, (P12846079797707083564.a n : ℤ) = A319390 n

end A319390

/-! ## A319390.P70184232593128417

`Δ[A034828(n)+n]`
-/

namespace A319390.P70184232593128417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319390.P70184232593128417

namespace A319390

/-- `Δ[A034828(n)+n]` -/
def P70184232593128417.Spec : Prop :=
  ∀ n, P70184232593128417.a n = A319390 n

end A319390

/-!
# A319392: a(n) = Sum_{k=0..n} (-1)^(n-k)*binomial(n,k)*k!*n^k.

The programs for A319392, there is no canonical definition to state claims against.
-/

/-! ## A319392.P3952127775143258109

`A320032(∑[4*n])`
-/

namespace A319392.P3952127775143258109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320032 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319392.P3952127775143258109

/-! ## A319392.P13834537060913936520

`abs(A320032(A046092(n)))`
-/

namespace A319392.P13834537060913936520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320032 (A046092 n).toNat|

end

end A319392.P13834537060913936520

/-! ## A319392.P7597131915491856308

`abs(A320032(A008574(∑[n])))`
-/

namespace A319392.P7597131915491856308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320032 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A319392.P7597131915491856308

/-! ## A319392.P6732019812819881765

`abs(A320032(A008586(∑[n])))`
-/

namespace A319392.P6732019812819881765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A320032 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A319392.P6732019812819881765

/-! ## A319392.P14036489570245425055

`A320032(A008574(∑[n]))^(A076530(n+1)%2)`
-/

namespace A319392.P14036489570245425055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320032 (A008574 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) ^ (Int.tmod (A076530 (n + 1)) 2 : ℤ)

end

end A319392.P14036489570245425055

/-!
# A319394: Number T(n,k) of partitions of n into exactly k positive Fibonacci numbers; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A319394, there is no canonical definition to state claims against.
-/

/-! ## A319394.P7385317835561583621

`gcd(A061197(n), A350673(A300756(n)))`
-/

namespace A319394.P7385317835561583621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061197 n) (A350673 (A300756 n).toNat)

end

end A319394.P7385317835561583621

/-! ## A319394.P14841496445325552072

`A061197(n)+A025469(A047916(n+1))`
-/

namespace A319394.P14841496445325552072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061197 n + A025469 (A047916 (n + 1)).toNat

end

end A319394.P14841496445325552072

/-! ## A319394.P16145255665055375302

`A061197(n)^A331570(A157044(3*n+2))`
-/

namespace A319394.P16145255665055375302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061197 n : ℚ) ^ (A331570 (A157044 (3 * n + 2)).toNat : ℤ)

end

end A319394.P16145255665055375302

/-! ## A319394.P13993699443391071598

`or(A005369(A004089(n)), A061197(n))`
-/

namespace A319394.P13993699443391071598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 (A004089 n).toNat) (A061197 n)

end

end A319394.P13993699443391071598

/-! ## A319394.P1207898416102472155

`A061197(or(n, A025469(A107458(n))))`
-/

namespace A319394.P1207898416102472155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061197 (Int.lor (n : ℤ) (A025469 (A107458 n).toNat)).toNat

end

end A319394.P1207898416102472155

/-!
# A319395: Number of partitions of n into exactly two positive Fibonacci numbers.

The programs for A319395, there is no canonical definition to state claims against.
-/

/-! ## A319395.P10609644974249420689

`ceil(A121549(A028310(n))/2)`
-/

namespace A319395.P10609644974249420689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A121549 (A028310 n).toNat : ℚ) / 2⌉

end

end A319395.P10609644974249420689

/-! ## A319395.P6387145934273290738

`A121549(n)-a(A121549(n))` with `a(0)=0`
-/

namespace A319395.P6387145934273290738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A121549 n - a (A121549 n).toNat

end

end A319395.P6387145934273290738

/-! ## A319395.P5942926417239136583

`A319394(∑[char[1]+n]+1)`
-/

namespace A319395.P5942926417239136583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A319395.P5942926417239136583

/-! ## A319395.P13045390221478398199

`A319394(∑[n]+2)%(n+1)`
-/

namespace A319395.P13045390221478398199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (n + 1 : ℤ)

end

end A319395.P13045390221478398199

/-! ## A319395.P15738085092956728662

`xor(1, xor(1, A319394(A133263(n))))`
-/

namespace A319395.P15738085092956728662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A319394 (A133263 n).toNat))

end

end A319395.P15738085092956728662

/-! ## A319395.P11154569845118794070

`A319394(∑[n]+2)-A000007(n)`
-/

namespace A319395.P11154569845118794070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A000007 n

end

end A319395.P11154569845118794070

/-! ## A319395.P3292593708622056532

`A057427(n)*A319394(∑[n]+2)`
-/

namespace A319395.P3292593708622056532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A319395.P3292593708622056532

/-! ## A319395.P11344248882616865287

`and(A004273(n), A319394(∑[n]+2))`
-/

namespace A319395.P11344248882616865287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004273 n) (A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2))

end

end A319395.P11344248882616865287

/-! ## A319395.P3851376755398667314

`A319394(∑[n]+2)-A008683((n+1)²)`
-/

namespace A319395.P3851376755398667314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A008683 ((n + 1) ^ 2)

end

end A319395.P3851376755398667314

/-! ## A319395.P1147750252482931310

`A319394(∑[n]+2)-val(A000040(n+1), 2)`
-/

namespace A319395.P1147750252482931310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A319395.P1147750252482931310

/-! ## A319395.P2668817502451663177

`A319394(∑[n]+2)-A000045(C(2, n+2))`
-/

namespace A319395.P2668817502451663177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A000045 (Nat.choose 2 (n + 2))

end

end A319395.P2668817502451663177

/-! ## A319395.P11259021902934401965

`A007318(a(n-1))*A319394(∑[n]+2)` with `a(0)=0`
-/

namespace A319395.P11259021902934401965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007318 (a (n - 1)).toNat * A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A319395.P11259021902934401965

/-! ## A319395.P14210253185662959947

`A001222(A006530(n+1)^A319394(∑[n]+2))`
-/

namespace A319395.P14210253185662959947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) ^ (A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℤ))).toNat

end

end A319395.P14210253185662959947

/-! ## A319395.P1800045787206768912

`A001222(A020639(n+1)^A319394(∑[n]+2))`
-/

namespace A319395.P1800045787206768912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A020639 (n + 1) : ℚ) ^ (A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℤ))).toNat

end

end A319395.P1800045787206768912

/-! ## A319395.P15177585072982614840

`A008683(2*A000040(n+1))*A319394(∑[n]+2)`
-/

namespace A319395.P15177585072982614840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A000040 (n + 1)).toNat * A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A319395.P15177585072982614840

/-!
# A319396: Number of partitions of n into exactly three positive Fibonacci numbers.

The programs for A319396, there is no canonical definition to state claims against.
-/

/-! ## A319396.P14898664188121911383

`A319394(A152950(char[1]+1+n))`
-/

namespace A319396.P14898664188121911383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A152950 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat

end

end A319396.P14898664188121911383

/-! ## A319396.P1558091422639220983

`A319394(∑[n-A167407(C(2, n))]+2)`
-/

namespace A319396.P1558091422639220983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A167407 (Nat.choose 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A319396.P1558091422639220983

/-! ## A319396.P3941817682265044545

`A319394(A133263(n)+1)%round(1/acot(n))`
-/

namespace A319396.P3941817682265044545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319394 (A133263 n + 1).toNat) (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)))

end

end A319396.P3941817682265044545

/-! ## A319396.P15528587033496424578

`A319394(∑[char[2]+n]+2)%(A033759(n)+n)`
-/

namespace A319396.P15528587033496424578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)) (A033759 n + (n : ℤ))

end

end A319396.P15528587033496424578

/-! ## A319396.P503293417889208551

`A319394(A157928(n)+A133263(n))`
-/

namespace A319396.P503293417889208551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A157928 n + A133263 n).toNat

end

end A319396.P503293417889208551

/-! ## A319396.P533436342893500771

`A319394(∑[A029579(A004278(n+1))])`
-/

namespace A319396.P533436342893500771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A004278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319396.P533436342893500771

/-! ## A319396.P11375941208612837459

`A319394(A000124(A233583(n+1))+2)`
-/

namespace A319396.P11375941208612837459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A000124 (A233583 (n + 1)).toNat + 2).toNat

end

end A319396.P11375941208612837459

/-! ## A319396.P18161374948195199326

`A319394(A034856(n+1)-A004275(n))`
-/

namespace A319396.P18161374948195199326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A034856 (n + 1) - A004275 n).toNat

end

end A319396.P18161374948195199326

/-! ## A319396.P9572643371644307303

`A319394(A152950(n+1))%A000041(n)`
-/

namespace A319396.P9572643371644307303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319394 (A152950 (n + 1)).toNat) (A000041 n)

end

end A319396.P9572643371644307303

/-! ## A319396.P4728154096617006148

`A319394(A145018(n+1)-1)+A159075(n)`
-/

namespace A319396.P4728154096617006148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A145018 (n + 1) - 1).toNat + A159075 n

end

end A319396.P4728154096617006148

/-! ## A319396.P7896961646241041651

`A319394(A152950(n+1)%A032810(n+1))`
-/

namespace A319396.P7896961646241041651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (Int.tmod (A152950 (n + 1)) (A032810 (n + 1))).toNat

end

end A319396.P7896961646241041651

/-! ## A319396.P6777169179695080077

`A319394(∑[A103128(A133263(n))])`
-/

namespace A319396.P6777169179695080077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319396.P6777169179695080077

/-! ## A319396.P7780562724416257030

`A319394(A316101(A133263(n))+A133263(n))`
-/

namespace A319396.P7780562724416257030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A316101 (A133263 n).toNat + A133263 n).toNat

end

end A319396.P7780562724416257030

/-!
# A319397: Number of partitions of n into exactly four positive Fibonacci numbers.

The programs for A319397, there is no canonical definition to state claims against.
-/

/-! ## A319397.P12792471763634106718

`A319394(A077169(n+1)-1)`
-/

namespace A319397.P12792471763634106718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A077169 (n + 1) - 1).toNat

end

end A319397.P12792471763634106718

/-! ## A319397.P6618414430268171053

`A319394(A145018(n+1)-C(2, n))`
-/

namespace A319397.P6618414430268171053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A145018 (n + 1) - (Nat.choose 2 n : ℤ)).toNat

end

end A319397.P6618414430268171053

/-! ## A319397.P12841477214164937930

`A319394(∑[n+2]-1-A004274(n))`
-/

namespace A319397.P12841477214164937930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 - A004274 n).toNat

end

end A319397.P12841477214164937930

/-! ## A319397.P11805701973489855475

`A130543(n)*A319394(A145018(n+1))`
-/

namespace A319397.P11805701973489855475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130543 n * A319394 (A145018 (n + 1)).toNat

end

end A319397.P11805701973489855475

/-! ## A319397.P12419579229987332392

`A319394(A145018(n+1))%A321359(n)`
-/

namespace A319397.P12419579229987332392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319394 (A145018 (n + 1)).toNat) (A321359 n)

end

end A319397.P12419579229987332392

/-! ## A319397.P15562458312279763664

`A319394(A145018(n+1))-char[A339027(n)]`
-/

namespace A319397.P15562458312279763664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339027 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A145018 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A319397.P15562458312279763664

/-! ## A319397.P17603761125504204954

`A319394(A145018(n+1))+A159075(A065033(n))`
-/

namespace A319397.P17603761125504204954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A145018 (n + 1)).toNat + A159075 (A065033 n).toNat

end

end A319397.P17603761125504204954

/-! ## A319397.P5910677555194497330

`A319394(A145018(n+1))+A159075(A062298(n+1))`
-/

namespace A319397.P5910677555194497330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A145018 (n + 1)).toNat + A159075 (A062298 (n + 1)).toNat

end

end A319397.P5910677555194497330

/-! ## A319397.P12617255653601700700

`A319394(A145018(n+1))+A036453(A006949(n))-2`
-/

namespace A319397.P12617255653601700700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A145018 (n + 1)).toNat + (A036453 (A006949 n).toNat - 2)

end

end A319397.P12617255653601700700

/-! ## A319397.P10890177160232019948

`A319394(∑[A172471(A133263(n))])`
-/

namespace A319397.P10890177160232019948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319397.P10890177160232019948

/-!
# A319398: Number of partitions of n into exactly five positive Fibonacci numbers.

The programs for A319398, there is no canonical definition to state claims against.
-/

/-! ## A319398.P5715623776441427450

`A319394(A077169(n)+n)`
-/

namespace A319398.P5715623776441427450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319394 (A077169 n + (n : ℤ)).toNat

end

end A319398.P5715623776441427450

