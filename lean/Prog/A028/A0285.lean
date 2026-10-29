import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C043
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A028503: Numbers k such that k*(k+2) is a palindrome.

The programs for A028503, there is no canonical definition to state claims against.
-/

/-! ## A028503.P10444198714433451407

`A070253(n+1)-1`
-/

namespace A028503.P10444198714433451407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070253 (n + 1) - 1

end

end A028503.P10444198714433451407

/-! ## A028503.P9833463274211469976

`floor(sqrt(A028504(n+1)))`
-/

namespace A028503.P9833463274211469976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028504 (n + 1))

end

end A028503.P9833463274211469976

/-! ## A028503.P17799310660644202472

`sqrt(A070254(n+1))-1`
-/

namespace A028503.P17799310660644202472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A070254 (n + 1) : ℝ) - 1

end

end A028503.P17799310660644202472

/-! ## A028503.P16702288827879961158

`A153881(n+2)+A070253(n+1)`
-/

namespace A028503.P16702288827879961158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A070253 (n + 1)

end

end A028503.P16702288827879961158

/-! ## A028503.P6041563876866652158

`A260196(n+2)+A070253(n+1)`
-/

namespace A028503.P6041563876866652158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A070253 (n + 1)

end

end A028503.P6041563876866652158

/-! ## A028503.P2571826674495869843

`A028504(n+1)%A070253(n+1)`
-/

namespace A028503.P2571826674495869843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028504 (n + 1)) (A070253 (n + 1))

end

end A028503.P2571826674495869843

/-! ## A028503.P2315518872909466201

`A118830(2*n+1)+sqrt(A070254(n+1))`
-/

namespace A028503.P2315518872909466201
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A118830 (2 * n + 1) : ℝ) + Real.sqrt (A070254 (n + 1) : ℝ)

end

end A028503.P2315518872909466201

/-! ## A028503.P12543761753736210249

`sqrt(A028504(n+1)+1)-(A005408(n)-n-n)`
-/

namespace A028503.P12543761753736210249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A028504 (n + 1) + 1 : ℝ) - (A005408 n - (n : ℤ) - (n : ℤ) : ℝ)

end

end A028503.P12543761753736210249

/-! ## A028503.P16936863687635232311

`A158052(A158055(n+1))+A070253(n+1)`
-/

namespace A028503.P16936863687635232311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A158055 (n + 1)).toNat + A070253 (n + 1)

end

end A028503.P16936863687635232311

/-! ## A028503.P5745385662355676287

`A316441(A000040(n+1))+A070253(n+1)`
-/

namespace A028503.P5745385662355676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A070253 (n + 1)

end

end A028503.P5745385662355676287

/-!
# A028504: Palindromes of form k*(k+2); or palindromes 1 less than a square.

The programs for A028504, there is no canonical definition to state claims against.
-/

/-! ## A028504.P8534109554850115793

`A070254(n+1)-1`
-/

namespace A028504.P8534109554850115793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070254 (n + 1) - 1

end

end A028504.P8534109554850115793

/-! ## A028504.P16802793401468089949

`A070253(n+1)²-1`
-/

namespace A028504.P16802793401468089949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070253 (n + 1) ^ 2 - 1

end

end A028504.P16802793401468089949

/-! ## A028504.P11548717399116194888

`A028503(n+1)*(A028503(n+1)+2)`
-/

namespace A028504.P11548717399116194888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028503 (n + 1) * (A028503 (n + 1) + 2)

end

end A028504.P11548717399116194888

/-! ## A028504.P14775104831235504091

`(A028503(n+1)+1)²-1`
-/

namespace A028504.P14775104831235504091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028503 (n + 1) + 1) ^ 2 - 1

end

end A028504.P14775104831235504091

/-! ## A028504.P282114552866819075

`A158052(A158055(n+1))+A070253(n+1)²`
-/

namespace A028504.P282114552866819075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A158055 (n + 1)).toNat + A070253 (n + 1) ^ 2

end

end A028504.P282114552866819075

/-! ## A028504.P14781257480685413476

`A316441(A000040(n+1))+A070253(n+1)²`
-/

namespace A028504.P14781257480685413476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A000040 (n + 1)).toNat + A070253 (n + 1) ^ 2

end

end A028504.P14781257480685413476

/-! ## A028504.P17706231300082956812

`A008683(A244572(n+2))+A070253(n+1)²`
-/

namespace A028504.P17706231300082956812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A244572 (n + 2)).toNat + A070253 (n + 1) ^ 2

end

end A028504.P17706231300082956812

/-!
# A028505: Number of primes <= 100*n.

The programs for A028505, the canonical program `A028505.P17073343684297780336` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028505 has offset 1).

The definition of A028505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028505.P17073343684297780336

`A000720((n+1)*100)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028505

/-- `A000720((n+1)*100)` -/
def P17073343684297780336.Spec : Prop :=
  ∀ n, P17073343684297780336.a n = A028505 (n + 1)

theorem P17073343684297780336.correct : P17073343684297780336.Spec := by
  intro n
  simp only [A028505, Nat.add_sub_cancel]

end A028505

/-! ## A028505.P13213388014564453535

`∑[A038822(n)]`
-/

namespace A028505.P13213388014564453535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028505.P13213388014564453535

namespace A028505

/-- `∑[A038822(n)]` -/
def P13213388014564453535.Spec : Prop :=
  ∀ n, P13213388014564453535.a n = A028505 (n + 1)

end A028505

/-! ## A028505.P5412432205913641941

`∑[A298009(n+1)%50]`
-/

namespace A028505.P5412432205913641941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298009 (n + 1)) 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A028505.P5412432205913641941

namespace A028505

/-- `∑[A298009(n+1)%50]` -/
def P5412432205913641941.Spec : Prop :=
  ∀ n, P5412432205913641941.a n = A028505 (n + 1)

end A028505

/-! ## A028505.P1274255068025847590

`A038801(10*(n+1))`
-/

namespace A028505.P1274255068025847590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038801 (10 * (n + 1))

end

end A028505.P1274255068025847590

namespace A028505

/-- `A038801(10*(n+1))` -/
def P1274255068025847590.Spec : Prop :=
  ∀ n, P1274255068025847590.a n = A028505 (n + 1)

end A028505

/-! ## A028505.P11303530873444722152

`A099801(7*7*(n+1)+n)`
-/

namespace A028505.P11303530873444722152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (7 * (7 * (n + 1)) + n)

end

end A028505.P11303530873444722152

namespace A028505

/-- `A099801(7*7*(n+1)+n)` -/
def P11303530873444722152.Spec : Prop :=
  ∀ n, P11303530873444722152.a n = A028505 (n + 1)

end A028505

/-! ## A028505.P1130180716435395557

`A000720(A158128(n+1)-1)/A064179(n+1)²`
-/

namespace A028505.P1130180716435395557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A158128 (n + 1) - 1).toNat : ℚ) / (A064179 (n + 1) ^ 2 : ℚ)

end

end A028505.P1130180716435395557

namespace A028505

/-- `A000720(A158128(n+1)-1)/A064179(n+1)²` -/
def P1130180716435395557.Spec : Prop :=
  ∀ n, P1130180716435395557.a n = (A028505 (n + 1) : ℚ)

end A028505

/-! ## A028505.P6623880747687686452

`A056172(A157955(n+1))`
-/

namespace A028505.P6623880747687686452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A157955 (n + 1)).toNat

end

end A028505.P6623880747687686452

namespace A028505

/-- `A056172(A157955(n+1))` -/
def P6623880747687686452.Spec : Prop :=
  ∀ n, P6623880747687686452.a n = A028505 (n + 1)

end A028505

/-! ## A028505.P14320327772545837990

`A056172(A117412(n+3))`
-/

namespace A028505.P14320327772545837990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A117412 (n + 3)).toNat

end

end A028505.P14320327772545837990

namespace A028505

/-- `A056172(A117412(n+3))` -/
def P14320327772545837990.Spec : Prop :=
  ∀ n, P14320327772545837990.a n = A028505 (n + 1)

end A028505

/-!
# A028506: Number of non-descending integral vectors b of length n such that number of symmetric 0-1-matrices A of order n with row sums <= b is odd.

The programs for A028506, there is no canonical definition to state claims against.
-/

/-! ## A028506.P2089983108311159922

`A029893(n+1)+char[8]`
-/

namespace A028506.P2089983108311159922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029893 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A028506.P2089983108311159922

/-! ## A028506.P3226359358525989594

`A029893(∑[A005710(n)])`
-/

namespace A028506.P3226359358525989594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028506.P3226359358525989594

/-! ## A028506.P17315669630279333592

`A029893(∑[A065941(n)])`
-/

namespace A028506.P17315669630279333592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028506.P17315669630279333592

/-! ## A028506.P458293160608244084

`A029893(∑[A124530(n)])`
-/

namespace A028506.P458293160608244084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124530 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029893 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A028506.P458293160608244084

/-!
# A028508: Continued fraction expansion for log_2(5).

The programs for A028508, there is no canonical definition to state claims against.
-/

/-! ## A028508.P4342870488361203990

`A028232(ceil(acot(n))²+n)`
-/

namespace A028508.P4342870488361203990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (⌈SequenceMachineLib.acot (n : ℝ)⌉ ^ 2 + (n : ℤ)).toNat

end

end A028508.P4342870488361203990

/-! ## A028508.P13185622111960578796

`ceil(A028232(n+1)-acot(n))`
-/

namespace A028508.P13185622111960578796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028232 (n + 1) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A028508.P13185622111960578796

/-! ## A028508.P5558825110757292874

`A028232(A054977(n)²+n)`
-/

namespace A028508.P5558825110757292874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (A054977 n ^ 2 + (n : ℤ)).toNat

end

end A028508.P5558825110757292874

/-! ## A028508.P14700784467181012540

`A028232(n+1)-A000007(n)`
-/

namespace A028508.P14700784467181012540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) - A000007 n

end

end A028508.P14700784467181012540

/-! ## A028508.P10029363354183363924

`A028232(n+1)+1-A054977(n)`
-/

namespace A028508.P10029363354183363924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) + (1 - A054977 n)

end

end A028508.P10029363354183363924

/-! ## A028508.P15989016671606849443

`xor(A046523(n+1)%2, A028232(n+1))`
-/

namespace A028508.P15989016671606849443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A046523 (n + 1)) 2) (A028232 (n + 1))

end

end A028508.P15989016671606849443

/-! ## A028508.P7749285069194827614

`A028232(n+1)-A028240(A000120(n))`
-/

namespace A028508.P7749285069194827614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) - A028240 (A000120 n).toNat

end

end A028508.P7749285069194827614

/-! ## A028508.P5804915762326059431

`A028232((A054977(n)+n)*A054977(n))`
-/

namespace A028508.P5804915762326059431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 ((A054977 n + (n : ℤ)) * A054977 n).toNat

end

end A028508.P5804915762326059431

/-! ## A028508.P17452955378401635700

`A028232(n+1)-A000035(A320140(n))`
-/

namespace A028508.P17452955378401635700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028232 (n + 1) - A000035 (A320140 n).toNat

end

end A028508.P17452955378401635700

/-! ## A028508.P14942870614332070055

`xor(A000035(A320140(n)+2), A028232(n+1))`
-/

namespace A028508.P14942870614332070055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A320140 n + 2).toNat) (A028232 (n + 1))

end

end A028508.P14942870614332070055

/-! ## A028508.P11179055079336585022

`and(A028232(n+1), A070199(n+1))`
-/

namespace A028508.P11179055079336585022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028232 (n + 1)) (A070199 (n + 1))

end

end A028508.P11179055079336585022

/-! ## A028508.P293050058008236904

`and(A028232(n+1), A198693(n))`
-/

namespace A028508.P293050058008236904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028232 (n + 1)) (A198693 n)

end

end A028508.P293050058008236904

/-! ## A028508.P17615176804020001801

`and(A028232(n+1), A198694(n))`
-/

namespace A028508.P17615176804020001801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028232 (n + 1)) (A198694 n)

end

end A028508.P17615176804020001801

/-! ## A028508.P892879787322705600

`and(A028232(n+1), A198695(n))`
-/

namespace A028508.P892879787322705600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028232 (n + 1)) (A198695 n)

end

end A028508.P892879787322705600

/-!
# A028552: a(n) = n*(n+3).

The programs for A028552, the canonical program `A028552.P13982725828206412774` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028552 has offset 0).

The definition of A028552 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+3)` (program `A028552.P13982725828206412774`, by `A028552.P13982725828206412774.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028552.P13982725828206412774

`n*(n+3)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028552

/-- `n*(n+3)` -/
def P13982725828206412774.Spec : Prop :=
  ∀ n, (P13982725828206412774.a n : ℤ) = A028552 n

theorem P13982725828206412774.correct : P13982725828206412774.Spec := by
  intro n
  simp only [A028552]

end A028552

/-!
# A028553: Numbers k such that k*(k+3) is a palindrome.

The programs for A028553, there is no canonical definition to state claims against.
-/

/-! ## A028553.P13423318505934381659

`floor(sqrt(A028554(n+1)+1))-1`
-/

namespace A028553.P13423318505934381659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A028554 (n + 1) + 1) - 1

end

end A028553.P13423318505934381659

/-! ## A028553.P4420271431336489691

`eq[n*(n+3), A004086(n*(n+3))]`
-/

namespace A028553.P4420271431336489691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A028553.P4420271431336489691

/-! ## A028553.P9698260148558318966

`eq[A004086(A028552(n)), A028552(n)]`
-/

namespace A028553.P9698260148558318966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028552 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028553.P9698260148558318966

/-!
# A028554: Palindromes of form n(n+3).

The programs for A028554, there is no canonical definition to state claims against.
-/

/-! ## A028554.P5717171335266265055

`(A028553(n+1)+3)*A028553(n+1)`
-/

namespace A028554.P5717171335266265055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028553 (n + 1) + 3) * A028553 (n + 1)

end

end A028554.P5717171335266265055

/-! ## A028554.P9144002334206294318

`A028552(A028553(n+1))`
-/

namespace A028554.P9144002334206294318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A028553 (n + 1)).toNat

end

end A028554.P9144002334206294318

/-! ## A028554.P12374109049042272450

`∩[A002113(n+1), A028552(n)]`
-/

namespace A028554.P12374109049042272450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028554.P12374109049042272450

/-! ## A028554.P13649047312544956686

`∩[A029951(n+1), A028552(n)]`
-/

namespace A028554.P13649047312544956686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028554.P13649047312544956686

/-!
# A028555: Numbers k such that k*(k+4) is a palindrome.

The programs for A028555, there is no canonical definition to state claims against.
-/

/-! ## A028555.P15914539821262088764

`floor(sqrt(A028556(n+1))-atan(n))`
-/

namespace A028555.P15914539821262088764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A028556 (n + 1) : ℝ) - Real.arctan (n : ℝ)⌋

end

end A028555.P15914539821262088764

/-! ## A028555.P15988122696478080611

`eq[A004086(A164005(n)), A164005(n)]`
-/

namespace A028555.P15988122696478080611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A164005 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164005 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028555.P15988122696478080611

/-! ## A028555.P17751144967515729160

`eq[A004086(A028347(n+2)), A028347(n+2)]`
-/

namespace A028555.P17751144967515729160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028347 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028555.P17751144967515729160

/-!
# A028556: Palindromes of form k*(k+4).

The programs for A028556, there is no canonical definition to state claims against.
-/

/-! ## A028556.P16429163500755950421

`A028555(n+1)*(A028555(n+1)+4)`
-/

namespace A028556.P16429163500755950421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028555 (n + 1) * (A028555 (n + 1) + 4)

end

end A028556.P16429163500755950421

/-! ## A028556.P4284568338084580410

`(A028555(n+1)+2)²-4`
-/

namespace A028556.P4284568338084580410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028555 (n + 1) + 2) ^ 2 - 4

end

end A028556.P4284568338084580410

/-! ## A028556.P5328481250818860451

`∩[A002113(n+1), n*(n+4)]`
-/

namespace A028556.P5328481250818860451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A028556.P5328481250818860451

/-! ## A028556.P4662181397823071968

`A028347(A028555(n+1)+2)`
-/

namespace A028556.P4662181397823071968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028347 (A028555 (n + 1) + 2).toNat

end

end A028556.P4662181397823071968

/-! ## A028556.P202187124954946716

`A028555(A000027(n+1))+A028552(A028555(n+1))`
-/

namespace A028556.P202187124954946716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028555 (A000027 (n + 1)).toNat + A028552 (A028555 (n + 1)).toNat

end

end A028556.P202187124954946716

/-!
# A028557: a(n) = n*(n+5).

The programs for A028557, the canonical program `A028557.P14629390258788046737` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028557 has offset 0).

The definition of A028557 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+5)` (program `A028557.P14629390258788046737`, by `A028557.P14629390258788046737.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028557.P14629390258788046737

`n*(n+5)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028557

/-- `n*(n+5)` -/
def P14629390258788046737.Spec : Prop :=
  ∀ n, (P14629390258788046737.a n : ℤ) = A028557 n

theorem P14629390258788046737.correct : P14629390258788046737.Spec := by
  intro n
  simp only [A028557]

end A028557

/-!
# A028558: Numbers k such that k*(k+5) is a palindrome.

The programs for A028558, there is no canonical definition to state claims against.
-/

/-! ## A028558.P17479124891654691139

`eq[A004086(A028557(n)), A028557(n)]`
-/

namespace A028558.P17479124891654691139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028557 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028558.P17479124891654691139

/-! ## A028558.P16941876452515269700

`lt[A244763(n+1), A244448(n+4)]`
-/

namespace A028558.P16941876452515269700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244448 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A028558.P16941876452515269700

/-!
# A028559: Palindromes of the form k*(k+5).

The programs for A028559, there is no canonical definition to state claims against.
-/

/-! ## A028559.P8985068009182337828

`A028558(n+1)*(A028558(n+1)+5)`
-/

namespace A028559.P8985068009182337828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028558 (n + 1) * (A028558 (n + 1) + 5)

end

end A028559.P8985068009182337828

/-! ## A028559.P11179055519035108879

`A028557(A028558(n+1))`
-/

namespace A028559.P11179055519035108879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 (A028558 (n + 1)).toNat

end

end A028559.P11179055519035108879

/-! ## A028559.P12507166593621378532

`∩[A002113(n+1), A028557(n)]`
-/

namespace A028559.P12507166593621378532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028559.P12507166593621378532

/-! ## A028559.P5299571805524201528

`∩[A029951(n+1), A028557(n)]`
-/

namespace A028559.P5299571805524201528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028559.P5299571805524201528

/-! ## A028559.P17538575008759256586

`∩[A002113(n+1), A028560(n)-n]`
-/

namespace A028559.P17538575008759256586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028559.P17538575008759256586

/-!
# A028560: a(n) = n*(n + 6).

The programs for A028560, the canonical program `A028560.P2309686278855513759` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028560 has offset 0).

The definition of A028560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+6)` (program `A028560.P2309686278855513759`, by `A028560.P2309686278855513759.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028560.P2309686278855513759

`n*(n+6)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028560

/-- `n*(n+6)` -/
def P2309686278855513759.Spec : Prop :=
  ∀ n, (P2309686278855513759.a n : ℤ) = A028560 n

theorem P2309686278855513759.correct : P2309686278855513759.Spec := by
  intro n
  simp only [A028560]

end A028560

/-!
# A028561: Numbers k such that k*(k+6) is a palindrome.

The programs for A028561, there is no canonical definition to state claims against.
-/

/-! ## A028561.P13728240962971104325

`A016125(n)%A018252(A018348(n+1))`
-/

namespace A028561.P13728240962971104325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016125 n) (A018252 (A018348 (n + 1)).toNat)

end

end A028561.P13728240962971104325

/-! ## A028561.P13682913306386353523

`A056239(A320095(n+1))%A027849(n)`
-/

namespace A028561.P13682913306386353523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A320095 (n + 1)).toNat) (A027849 n)

end

end A028561.P13682913306386353523

/-!
# A028562: Palindromes of form k*(k+6).

The programs for A028562, there is no canonical definition to state claims against.
-/

/-! ## A028562.P8926636746070328429

`A028561(n+1)*(A028561(n+1)+6)`
-/

namespace A028562.P8926636746070328429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028561 (n + 1) * (A028561 (n + 1) + 6)

end

end A028562.P8926636746070328429

/-! ## A028562.P11050721359484818608

`A028560(A028561(n+1))`
-/

namespace A028562.P11050721359484818608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (A028561 (n + 1)).toNat

end

end A028562.P11050721359484818608

/-! ## A028562.P528577314283156593

`A028884(A028561(n+1))-A283531(n)`
-/

namespace A028562.P528577314283156593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (A028561 (n + 1)).toNat - A283531 n

end

end A028562.P528577314283156593

/-! ## A028562.P10502130610016376478

`A028884(A028561(n+1))-(val(A253948(n+1), 4)+1)`
-/

namespace A028562.P10502130610016376478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (A028561 (n + 1)).toNat - (SequenceMachineLib.valuation (A253948 (n + 1)).toNat 4 + 1 : ℤ)

end

end A028562.P10502130610016376478

/-!
# A028563: a(n) = n*(n+7).

The programs for A028563, the canonical program `A028563.P15186121141906373506` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028563 has offset 0).

The definition of A028563 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+7)` (program `A028563.P15186121141906373506`, by `A028563.P15186121141906373506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028563.P15186121141906373506

`n*(n+7)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028563

/-- `n*(n+7)` -/
def P15186121141906373506.Spec : Prop :=
  ∀ n, (P15186121141906373506.a n : ℤ) = A028563 n

theorem P15186121141906373506.correct : P15186121141906373506.Spec := by
  intro n
  simp only [A028563]

end A028563

/-!
# A028564: Numbers k such that k*(k+7) is a palindrome.

The programs for A028564, there is no canonical definition to state claims against.
-/

/-! ## A028564.P10206514720863590626

`record[A184946(n)]%A142239(n)`
-/

namespace A028564.P10206514720863590626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A142239 n)

end

end A028564.P10206514720863590626

/-! ## A028564.P5826787788972362992

`eq[A004086(A028563(n)), A028563(n)]`
-/

namespace A028564.P5826787788972362992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028563 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028564.P5826787788972362992

/-!
# A028565: Palindromes of form k*(k+7).

The programs for A028565, there is no canonical definition to state claims against.
-/

/-! ## A028565.P5652838464549361078

`A028564(n+1)*(A028564(n+1)+7)`
-/

namespace A028565.P5652838464549361078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028564 (n + 1) * (A028564 (n + 1) + 7)

end

end A028565.P5652838464549361078

/-! ## A028565.P1946931846828124241

`A028563(A028564(n+1))`
-/

namespace A028565.P1946931846828124241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 (A028564 (n + 1)).toNat

end

end A028565.P1946931846828124241

/-! ## A028565.P9979565116492143427

`∩[A002113(n+1), A028563(n)]`
-/

namespace A028565.P9979565116492143427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028565.P9979565116492143427

/-! ## A028565.P11989247245055129033

`∩[A002113(n+1), A028560(n)+n]`
-/

namespace A028565.P11989247245055129033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028565.P11989247245055129033

/-!
# A028566: a(n) = n*(n+8).

The programs for A028566, the canonical program `A028566.P16217811333001459457` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028566 has offset 0).

The definition of A028566 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+8)` (program `A028566.P16217811333001459457`, by `A028566.P16217811333001459457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028566.P16217811333001459457

`n*(n+8)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028566

/-- `n*(n+8)` -/
def P16217811333001459457.Spec : Prop :=
  ∀ n, (P16217811333001459457.a n : ℤ) = A028566 n

theorem P16217811333001459457.correct : P16217811333001459457.Spec := by
  intro n
  simp only [A028566]

end A028566

/-!
# A028567: Numbers k such that k*(k+8) is a palindrome.

The programs for A028567, there is no canonical definition to state claims against.
-/

/-! ## A028567.P789942180804242883

`eq[A004086(A028566(n)), A028566(n)]`
-/

namespace A028567.P789942180804242883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028566 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028567.P789942180804242883

/-!
# A028568: Palindromes of the form k*(k+8).

The programs for A028568, there is no canonical definition to state claims against.
-/

/-! ## A028568.P3548827700797210973

`A028567(n+1)*(A028567(n+1)+8)`
-/

namespace A028568.P3548827700797210973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028567 (n + 1) * (A028567 (n + 1) + 8)

end

end A028568.P3548827700797210973

/-! ## A028568.P555915723707640710

`A028566(A028567(n+1))`
-/

namespace A028568.P555915723707640710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 (A028567 (n + 1)).toNat

end

end A028568.P555915723707640710

/-! ## A028568.P1668565779797238791

`∩[A002113(n+1), A028566(n)]`
-/

namespace A028568.P1668565779797238791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028568.P1668565779797238791

/-!
# A028569: a(n) = n*(n + 9).

The programs for A028569, the canonical program `A028569.P13869279125010986353` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028569 has offset 0).

The definition of A028569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+9)` (program `A028569.P13869279125010986353`, by `A028569.P13869279125010986353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A028569.P13869279125010986353

`n*(n+9)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028569

/-- `n*(n+9)` -/
def P13869279125010986353.Spec : Prop :=
  ∀ n, (P13869279125010986353.a n : ℤ) = A028569 n

theorem P13869279125010986353.correct : P13869279125010986353.Spec := by
  intro n
  simp only [A028569]

end A028569

/-!
# A028570: Numbers k such that k*(k + 9) is a palindrome.

The programs for A028570, there is no canonical definition to state claims against.
-/

/-! ## A028570.P6637334861316175529

`eq[A004086(A028569(n)), A028569(n)]`
-/

namespace A028570.P6637334861316175529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A028569 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A028570.P6637334861316175529

/-!
# A028571: Palindromes of form k*(k+9).

The programs for A028571, there is no canonical definition to state claims against.
-/

/-! ## A028571.P16559825284840439577

`A028570(n+1)*(A028570(n+1)+9)`
-/

namespace A028571.P16559825284840439577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028570 (n + 1) * (A028570 (n + 1) + 9)

end

end A028571.P16559825284840439577

/-! ## A028571.P2876900670382716376

`A028569(A028570(n+1))`
-/

namespace A028571.P2876900670382716376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 (A028570 (n + 1)).toNat

end

end A028571.P2876900670382716376

/-! ## A028571.P8306642500525250677

`∩[A029951(n+1), A028569(n)]`
-/

namespace A028571.P8306642500525250677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028569 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A028571.P8306642500525250677

/-! ## A028571.P2818319359632945396

`A020639(A000079(n))*A056000(A028570(n+1))`
-/

namespace A028571.P2818319359632945396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000079 n).toNat * A056000 (A028570 (n + 1)).toNat

end

end A028571.P2818319359632945396

/-!
# A028572: Expansion of theta_3(z)*theta_3(2z) + theta_2(z)*theta_2(2z) in powers of q^(1/4).

The programs for A028572, the canonical program `A028572.P14327433802400248636` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028572 has offset 0).

The definition of A028572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A028572.P17958435948853653245

`A102560(n)*A133692(n)`
-/

namespace A028572.P17958435948853653245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A133692 n

end

end A028572.P17958435948853653245

namespace A028572

/-- `A102560(n)*A133692(n)` -/
def P17958435948853653245.Spec : Prop :=
  ∀ n, P17958435948853653245.a n = A028572 n

end A028572

/-! ## A028572.P2388972405490363660

`A102560(n)*A139093(n)`
-/

namespace A028572.P2388972405490363660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A139093 n

end

end A028572.P2388972405490363660

namespace A028572

/-- `A102560(n)*A139093(n)` -/
def P2388972405490363660.Spec : Prop :=
  ∀ n, P2388972405490363660.a n = A028572 n

end A028572

/-! ## A028572.P5528664074042650366

`lcm(A033715(n), A102560(n))`
-/

namespace A028572.P5528664074042650366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033715 n) (A102560 n)

end

end A028572.P5528664074042650366

namespace A028572

/-- `lcm(A033715(n), A102560(n))` -/
def P5528664074042650366.Spec : Prop :=
  ∀ n, (P5528664074042650366.a n : ℤ) = A028572 n

end A028572

/-! ## A028572.P754217727907544125

`Δ[A004525(n)]*A033715(n)`
-/

namespace A028572.P754217727907544125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033715 n

end

end A028572.P754217727907544125

namespace A028572

/-- `Δ[A004525(n)]*A033715(n)` -/
def P754217727907544125.Spec : Prop :=
  ∀ n, P754217727907544125.a n = A028572 n

end A028572

/-! ## A028572.P4619990235772685261

`Δ[A004525(n)]*A082564(n)`
-/

namespace A028572.P4619990235772685261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A082564 n

end

end A028572.P4619990235772685261

namespace A028572

/-- `Δ[A004525(n)]*A082564(n)` -/
def P4619990235772685261.Spec : Prop :=
  ∀ n, P4619990235772685261.a n = A028572 n

end A028572

/-! ## A028572.P10092818391970833686

`char[A014601(n)]*A033715(n)`
-/

namespace A028572.P10092818391970833686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A033715 n

end

end A028572.P10092818391970833686

namespace A028572

/-- `char[A014601(n)]*A033715(n)` -/
def P10092818391970833686.Spec : Prop :=
  ∀ n, P10092818391970833686.a n = A028572 n

end A028572

/-! ## A028572.P14596661692480664122

`char[A014601(n)]*A082564(n)`
-/

namespace A028572.P14596661692480664122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A082564 n

end

end A028572.P14596661692480664122

namespace A028572

/-- `char[A014601(n)]*A082564(n)` -/
def P14596661692480664122.Spec : Prop :=
  ∀ n, P14596661692480664122.a n = A028572 n

end A028572

/-! ## A028572.P14199528882378116339

`lcm(Δ[A004525(n)], A139093(n))`
-/

namespace A028572.P14199528882378116339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A139093 n)

end

end A028572.P14199528882378116339

namespace A028572

/-- `lcm(Δ[A004525(n)], A139093(n))` -/
def P14199528882378116339.Spec : Prop :=
  ∀ n, (P14199528882378116339.a n : ℤ) = A028572 n

end A028572

/-! ## A028572.P2321415830597267433

`A033715(n)*A133872(n+1)`
-/

namespace A028572.P2321415830597267433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n * A133872 (n + 1)

end

end A028572.P2321415830597267433

namespace A028572

/-- `A033715(n)*A133872(n+1)` -/
def P2321415830597267433.Spec : Prop :=
  ∀ n, P2321415830597267433.a n = A028572 n

end A028572

/-! ## A028572.P9149467447085011872

`A082564(n)*A133872(n+1)`
-/

namespace A028572.P9149467447085011872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 n * A133872 (n + 1)

end

end A028572.P9149467447085011872

namespace A028572

/-- `A082564(n)*A133872(n+1)` -/
def P9149467447085011872.Spec : Prop :=
  ∀ n, P9149467447085011872.a n = A028572 n

end A028572

/-! ## A028572.P8263498406262560780

`(A082564(n)+A033715(n))/2`
-/

namespace A028572.P8263498406262560780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082564 n + A033715 n : ℚ) / 2

end

end A028572.P8263498406262560780

namespace A028572

/-- `(A082564(n)+A033715(n))/2` -/
def P8263498406262560780.Spec : Prop :=
  ∀ n, P8263498406262560780.a n = (A028572 n : ℚ)

end A028572

/-! ## A028572.P14327433802400248636

`(2-A130731(n))*A129438(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A028572

/-- `(2-A130731(n))*A129438(n)` -/
def P14327433802400248636.Spec : Prop :=
  ∀ n, P14327433802400248636.a n = A028572 n

theorem P14327433802400248636.correct : P14327433802400248636.Spec := by
  intro n
  simp only [A028572]

end A028572

/-! ## A028572.P2449446317836741997

`(2-A245187(n))*A129438(n)`
-/

namespace A028572.P2449446317836741997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A245187 n) * A129438 n

end

end A028572.P2449446317836741997

namespace A028572

/-- `(2-A245187(n))*A129438(n)` -/
def P2449446317836741997.Spec : Prop :=
  ∀ n, P2449446317836741997.a n = A028572 n

end A028572

/-! ## A028572.P14183211590636389168

`A000124(n)%2*A033715(n)`
-/

namespace A028572.P14183211590636389168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) 2 * A033715 n

end

end A028572.P14183211590636389168

namespace A028572

/-- `A000124(n)%2*A033715(n)` -/
def P14183211590636389168.Spec : Prop :=
  ∀ n, P14183211590636389168.a n = A028572 n

end A028572

/-! ## A028572.P15795216453096599165

`and(1, A000124(n))*A082564(n)`
-/

namespace A028572.P15795216453096599165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000124 n) * A082564 n

end

end A028572.P15795216453096599165

namespace A028572

/-- `and(1, A000124(n))*A082564(n)` -/
def P15795216453096599165.Spec : Prop :=
  ∀ n, P15795216453096599165.a n = A028572 n

end A028572

/-! ## A028572.P7464769156814876087

`lcm(A133692(n), A143432(n+1))`
-/

namespace A028572.P7464769156814876087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A133692 n) (A143432 (n + 1))

end

end A028572.P7464769156814876087

namespace A028572

/-- `lcm(A133692(n), A143432(n+1))` -/
def P7464769156814876087.Spec : Prop :=
  ∀ n, (P7464769156814876087.a n : ℤ) = A028572 n

end A028572

/-! ## A028572.P17787141180604819179

`A128130(n+1)²*A033715(n)`
-/

namespace A028572.P17787141180604819179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (n + 1) ^ 2 * A033715 n

end

end A028572.P17787141180604819179

namespace A028572

/-- `A128130(n+1)²*A033715(n)` -/
def P17787141180604819179.Spec : Prop :=
  ∀ n, P17787141180604819179.a n = A028572 n

end A028572

/-! ## A028572.P13058314156881204388

`A219977(n+1)²*A033715(n)`
-/

namespace A028572.P13058314156881204388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 1) ^ 2 * A033715 n

end

end A028572.P13058314156881204388

namespace A028572

/-- `A219977(n+1)²*A033715(n)` -/
def P13058314156881204388.Spec : Prop :=
  ∀ n, P13058314156881204388.a n = A028572 n

end A028572

/-! ## A028572.P9108837505917006445

`A219977(n+1)²*A082564(n)`
-/

namespace A028572.P9108837505917006445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n + 1) ^ 2 * A082564 n

end

end A028572.P9108837505917006445

namespace A028572

/-- `A219977(n+1)²*A082564(n)` -/
def P9108837505917006445.Spec : Prop :=
  ∀ n, P9108837505917006445.a n = A028572 n

end A028572

/-! ## A028572.P13782302120075990357

`A059841(A003188(n))*A082564(n)`
-/

namespace A028572.P13782302120075990357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A003188 n).toNat * A082564 n

end

end A028572.P13782302120075990357

namespace A028572

/-- `A059841(A003188(n))*A082564(n)` -/
def P13782302120075990357.Spec : Prop :=
  ∀ n, P13782302120075990357.a n = A028572 n

end A028572

/-!
# A028573: Expansion of theta_3(z)*theta_3(4z)+theta_2(z)*theta_2(4z).

The programs for A028573, there is no canonical definition to state claims against.
-/

/-! ## A028573.P6444447386440431759

`(A246950(n)+A004531(n))/2`
-/

namespace A028573.P6444447386440431759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246950 n + A004531 n : ℚ) / 2

end

end A028573.P6444447386440431759

/-! ## A028573.P2432633953596261899

`A001281(A246950(n)+A004531(n))`
-/

namespace A028573.P2432633953596261899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A246950 n + A004531 n).toNat

end

end A028573.P2432633953596261899

/-! ## A028573.P728338391077246762

`A004525(A246950(n)+A004531(n))`
-/

namespace A028573.P728338391077246762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A246950 n + A004531 n).toNat

end

end A028573.P728338391077246762

/-! ## A028573.P3830545132653560609

`A004526(A246950(n)+A004531(n))`
-/

namespace A028573.P3830545132653560609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A246950 n + A004531 n).toNat

end

end A028573.P3830545132653560609

/-! ## A028573.P11446663194672417635

`A006370(A246950(n)+A004531(n))`
-/

namespace A028573.P11446663194672417635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A246950 n + A004531 n).toNat

end

end A028573.P11446663194672417635

/-! ## A028573.P14016363046718340687

`A029578(A246950(n)+A004531(n))`
-/

namespace A028573.P14016363046718340687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A246950 n + A004531 n).toNat

end

end A028573.P14016363046718340687

/-! ## A028573.P9455982269240767837

`A064680(A246950(n)+A004531(n))`
-/

namespace A028573.P9455982269240767837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A246950 n + A004531 n).toNat

end

end A028573.P9455982269240767837

/-! ## A028573.P5999535663638117785

`A142150(A246950(n)+A004531(n))`
-/

namespace A028573.P5999535663638117785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A246950 n + A004531 n).toNat

end

end A028573.P5999535663638117785

/-! ## A028573.P6444981625547010088

`A004531(n)-A004526(A004531(n)-A246950(n))`
-/

namespace A028573.P6444981625547010088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 n - A004526 (A004531 n - A246950 n).toNat

end

end A028573.P6444981625547010088

/-! ## A028573.P14783013426158282894

`A004531(gcd(A000332(n), A109043(n)))`
-/

namespace A028573.P14783013426158282894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004531 (Int.gcd (A000332 n) (A109043 n))

end

end A028573.P14783013426158282894

/-!
# A028576: a(n) = (1/(4*n)) * Sum_{d|n} mu(n/d) * binomial(2*d, d)^2.

The programs for A028576, the canonical program `A028576.P16089740289504000580` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028576 has offset 1).

The definition of A028576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028576.P16089740289504000580

`1/(4*(n+1))*∑{d}[n+1, A008683((n+1)/#)*C(2*#, #)²]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A028576

/-- `1/(4*(n+1))*∑{d}[n+1, A008683((n+1)/#)*C(2*#, #)²]` -/
def P16089740289504000580.Spec : Prop :=
  ∀ n, P16089740289504000580.a n = (A028576 (n + 1) : ℚ)

end A028576

/-!
# A028577: Expansion of (theta_3(z)*theta_3(2z)+theta_2(z)*theta_2(2z))^2.

The programs for A028577, there is no canonical definition to state claims against.
-/

/-! ## A028577.P1430913061951935286

`A028638(9*n)`
-/

namespace A028577.P1430913061951935286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028638 (9 * n)

end

end A028577.P1430913061951935286

/-!
# A028580: C_{n+1}*C_n*C_{n-1}^2*C_{n-2}^4*...*C_2^{2^(n-2)}, where C_k are the Catalan numbers (A000108).

The programs for A028580, the canonical program `A028580.P17085763098436424120` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A028580 has offset 1).

The definition of A028580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A028580.P17085763098436424120

`2*(2*(n+1)-1)*a(n-1)²/(n+2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A028580

/-- `2*(2*(n+1)-1)*a(n-1)²/(n+2)` -/
def P17085763098436424120.Spec : Prop :=
  ∀ n, P17085763098436424120.a n = (A028580 (n + 1) : ℚ)

end A028580

/-! ## A028580.P7045552845960876865

`2*(2*n+1)*a(n-1)²/(n+2)` with `a(0)=1`
-/

namespace A028580.P7045552845960876865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n + 1 : ℚ) * (a (n - 1) ^ 2 / (n + 2 : ℚ)))

end

end A028580.P7045552845960876865

namespace A028580

/-- `2*(2*n+1)*a(n-1)²/(n+2)` -/
def P7045552845960876865.Spec : Prop :=
  ∀ n, P7045552845960876865.a n = (A028580 (n + 1) : ℚ)

end A028580

/-! ## A028580.P9601158110396263752

`A003047(n+2)`
-/

namespace A028580.P9601158110396263752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003047 (n + 2)

end

end A028580.P9601158110396263752

namespace A028580

/-- `A003047(n+2)` -/
def P9601158110396263752.Spec : Prop :=
  ∀ n, P9601158110396263752.a n = A028580 (n + 1)

end A028580

/-! ## A028580.P5751636713537697051

`record[A055633(n+1)]`
-/

namespace A028580.P5751636713537697051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A028580.P5751636713537697051

namespace A028580

/-- `record[A055633(n+1)]` -/
def P5751636713537697051.Spec : Prop :=
  ∀ n, P5751636713537697051.a n = A028580 (n + 1)

end A028580

/-! ## A028580.P9419803776543444299

`a(n-1)²*ratio[A000108(n)]` with `a(0)=1`
-/

namespace A028580.P9419803776543444299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A028580.P9419803776543444299

namespace A028580

/-- `a(n-1)²*ratio[A000108(n)]` -/
def P9419803776543444299.Spec : Prop :=
  ∀ n, P9419803776543444299.a n = (A028580 (n + 1) : ℚ)

end A028580

/-!
# A028581: Quotients associated with A024011.

The programs for A028581, there is no canonical definition to state claims against.
-/

/-! ## A028581.P12164282594425905437

`A028582(n+1)/A007506(n+1)`
-/

namespace A028581.P12164282594425905437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028582 (n + 1) : ℚ) / (A007506 (n + 1) : ℚ)

end

end A028581.P12164282594425905437

/-!
# A028582: Dividends associated with A024011.

The programs for A028582, there is no canonical definition to state claims against.
-/

/-! ## A028582.P5531421955276362093

`A007506(n+1)*A028581(n+1)`
-/

namespace A028582.P5531421955276362093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007506 (n + 1) * A028581 (n + 1)

end

end A028582.P5531421955276362093

/-!
# A028584: Expansion of (theta_3(z)*theta_3(4z)+theta_2(z)*theta_2(4z))^3.

The programs for A028584, there is no canonical definition to state claims against.
-/

/-! ## A028584.P18231917227750013996

`A004016(A041637(n)-A078374(n+1))`
-/

namespace A028584.P18231917227750013996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A041637 n - A078374 (n + 1)).toNat

end

end A028584.P18231917227750013996

/-! ## A028584.P1467312738277549578

`A004016(A154138(n+1)-A326480(n))`
-/

namespace A028584.P1467312738277549578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A154138 (n + 1) - A326480 n).toNat

end

end A028584.P1467312738277549578

/-! ## A028584.P8160066751413154024

`A028623(A038712(n+1)*A087051(n))`
-/

namespace A028584.P8160066751413154024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028623 (A038712 (n + 1) * A087051 n).toNat

end

end A028584.P8160066751413154024

/-! ## A028584.P16934929732517685791

`A028607(A120634(n)%A336419(2*n+1))`
-/

namespace A028584.P16934929732517685791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028607 (Int.tmod (A120634 n) (A336419 (2 * n + 1))).toNat

end

end A028584.P16934929732517685791

/-!
# A028585: Expansion of (theta_3(z)*theta_3(4z)+theta_2(z)*theta_2(4z))^4.

The programs for A028585, there is no canonical definition to state claims against.
-/

/-! ## A028585.P5040827611768644718

`and(A000118(n), A124054(∑[n+3]-2))`
-/

namespace A028585.P5040827611768644718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 n) (A124054 (∑ j ∈ Finset.range (n + 1), f1 j - 2))

end

end A028585.P5040827611768644718

/-! ## A028585.P5915890863153059171

`and(A122858(n), A124054(∑[n+3]-2))`
-/

namespace A028585.P5915890863153059171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122858 n) (A124054 (∑ j ∈ Finset.range (n + 1), f1 j - 2))

end

end A028585.P5915890863153059171

/-! ## A028585.P17848999514926075817

`and(A000118(n), A003963(A042753(n)))`
-/

namespace A028585.P17848999514926075817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 n) (A003963 (A042753 n).toNat)

end

end A028585.P17848999514926075817

/-! ## A028585.P5195198438440612465

`and(A000118(n), A000196(A048696(n)))`
-/

namespace A028585.P5195198438440612465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000118 n) (A000196 (A048696 n).toNat)

end

end A028585.P5195198438440612465

/-!
# A028586: Theta series of lattice with Gram matrix [2 1; 1 3].

The programs for A028586, there is no canonical definition to state claims against.
-/

/-! ## A028586.P9237145810294954621

`2*A124233(n)-A033718(n)`
-/

namespace A028586.P9237145810294954621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124233 n - A033718 n

end

end A028586.P9237145810294954621

/-! ## A028586.P14422794014970880687

`A033718(2*n)`
-/

namespace A028586.P14422794014970880687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (2 * n)

end

end A028586.P14422794014970880687

/-! ## A028586.P3244953399830771948

`A033718(A064680(n))%47`
-/

namespace A028586.P3244953399830771948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033718 (A064680 n).toNat) 47

end

end A028586.P3244953399830771948

/-! ## A028586.P1171374076457074148

`A033718(A005843(n))%83`
-/

namespace A028586.P1171374076457074148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033718 (A005843 n).toNat) 83

end

end A028586.P1171374076457074148

/-! ## A028586.P4047724254294046675

`A033718(n+n)^A033718(n)!`
-/

namespace A028586.P4047724254294046675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033718 (n + n) ^ Nat.factorial (A033718 n).toNat

end

end A028586.P4047724254294046675

/-! ## A028586.P9413519406030068963

`A146297(A033718(n+n)+2)-2`
-/

namespace A028586.P9413519406030068963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146297 (A033718 (n + n) + 2).toNat - 2

end

end A028586.P9413519406030068963

/-! ## A028586.P2467661621442978613

`A033718(n+n)%A297278(n+1)`
-/

namespace A028586.P2467661621442978613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033718 (n + n)) (A297278 (n + 1))

end

end A028586.P2467661621442978613

/-! ## A028586.P1325788774516683398

`A244413(A005117(n+1))+A033718(A005843(n))`
-/

namespace A028586.P1325788774516683398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A005117 (n + 1)).toNat + A033718 (A005843 n).toNat

end

end A028586.P1325788774516683398

/-! ## A028586.P13349093603229035844

`A028645(A174312(n))`
-/

namespace A028586.P13349093603229035844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028645 (A174312 n).toNat

end

end A028586.P13349093603229035844

/-!
# A028589: Expansion of (theta_3(z)*theta_3(5z)+theta_2(z)*theta_2(5z))^4.

The programs for A028589, there is no canonical definition to state claims against.
-/

/-! ## A028589.P5216262316680707008

`A350819(∑[n+3]+n+3)%∏[A054575(n+1)]`
-/

namespace A028589.P5216262316680707008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A350819 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))) (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A028589.P5216262316680707008

/-! ## A028589.P5242336759919183214

`A246811(A123620(n)+A089594(n+1))`
-/

namespace A028589.P5242336759919183214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246811 (A123620 n + A089594 (n + 1)).toNat

end

end A028589.P5242336759919183214

/-! ## A028589.P5405884625108528332

`and(A000203(A094567(n)), A103026(n+4))`
-/

namespace A028589.P5405884625108528332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (A094567 n).toNat) (A103026 (n + 4))

end

end A028589.P5405884625108528332

/-!
# A028590: Expansion of (theta_3(z)*theta_3(6z)+theta_2(z)*theta_2(6z)).

The programs for A028590, there is no canonical definition to state claims against.
-/

/-! ## A028590.P7388120686548848207

`A102560(n)*A260309(n)`
-/

namespace A028590.P7388120686548848207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n * A260309 n

end

end A028590.P7388120686548848207

/-! ## A028590.P3912730963040036411

`lcm(A046113(n), A102560(n))`
-/

namespace A028590.P3912730963040036411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A046113 n) (A102560 n)

end

end A028590.P3912730963040036411

/-! ## A028590.P15593657669926642255

`Δ[A004525(n)]*A046113(n)`
-/

namespace A028590.P15593657669926642255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A046113 n

end

end A028590.P15593657669926642255

/-! ## A028590.P2385012104595227666

`A092498(n)%2*A046113(n)`
-/

namespace A028590.P2385012104595227666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092498 n) 2 * A046113 n

end

end A028590.P2385012104595227666

/-! ## A028590.P9204682640977750861

`and(1, A005891(n))*A046113(n)`
-/

namespace A028590.P9204682640977750861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A005891 n) * A046113 n

end

end A028590.P9204682640977750861

/-! ## A028590.P11994778111982452259

`(1-char[A042963(n+1)])*A046113(n)`
-/

namespace A028590.P11994778111982452259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A046113 n

end

end A028590.P11994778111982452259

/-! ## A028590.P600680804295706880

`Δ[A004525(n)]*A108563(2*n)`
-/

namespace A028590.P600680804295706880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A108563 (2 * n)

end

end A028590.P600680804295706880

/-! ## A028590.P7105253434741988967

`A108563(2*n)*A133872(n+1)`
-/

namespace A028590.P7105253434741988967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (2 * n) * A133872 (n + 1)

end

end A028590.P7105253434741988967

/-! ## A028590.P8661079761740497925

`A021913(n+3)*A108563(2*n)`
-/

namespace A028590.P8661079761740497925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (n + 3) * A108563 (2 * n)

end

end A028590.P8661079761740497925

/-! ## A028590.P7720945206390004051

`A108563(A112652(n))`
-/

namespace A028590.P7720945206390004051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (A112652 n).toNat

end

end A028590.P7720945206390004051

/-! ## A028590.P7703405698143669249

`A108563(xor(2, A016789(n)))`
-/

namespace A028590.P7703405698143669249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (Int.xor 2 (A016789 n)).toNat

end

end A028590.P7703405698143669249

/-! ## A028590.P2549307249792155838

`A263577(xor(2, A016789(n)))`
-/

namespace A028590.P2549307249792155838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263577 (Int.xor 2 (A016789 n)).toNat

end

end A028590.P2549307249792155838

/-! ## A028590.P1153106048781345706

`A046113(2*A112652(n))`
-/

namespace A028590.P1153106048781345706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (2 * A112652 n).toNat

end

end A028590.P1153106048781345706

/-! ## A028590.P6419975642676131933

`A046113(xor(5, A016969(n)))`
-/

namespace A028590.P6419975642676131933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046113 (Int.xor 5 (A016969 n)).toNat

end

end A028590.P6419975642676131933

/-! ## A028590.P5906139092762697950

`A108563(xor(8, A017617(n)))`
-/

namespace A028590.P5906139092762697950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108563 (Int.xor 8 (A017617 n)).toNat

end

end A028590.P5906139092762697950

/-! ## A028590.P6842384708458606109

`and(A046113(n), A359066(n+1))`
-/

namespace A028590.P6842384708458606109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046113 n) (A359066 (n + 1))

end

end A028590.P6842384708458606109

/-!
# A028591: Expansion of (theta_3(z)*theta_3(6z)+theta_2(z)*theta_2(6z))^2.

The programs for A028591, there is no canonical definition to state claims against.
-/

/-! ## A028591.P8012827527406986578

`A028598(A120634(n))%A034699(A000032(n))`
-/

namespace A028591.P8012827527406986578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028598 (A120634 n).toNat) (A034699 (A000032 n).toNat)

end

end A028591.P8012827527406986578

/-! ## A028591.P2233195122696676426

`A151878(A001263(n+1))+A028598(A120634(n))`
-/

namespace A028591.P2233195122696676426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 (A001263 (n + 1)).toNat + A028598 (A120634 n).toNat

end

end A028591.P2233195122696676426

/-! ## A028591.P17200082628341877773

`A028598(A120634(n))+A000007(A170831(n+2))`
-/

namespace A028591.P17200082628341877773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028598 (A120634 n).toNat + A000007 (A170831 (n + 2)).toNat

end

end A028591.P17200082628341877773

/-! ## A028591.P7020695160154853555

`A001221(A023194(n+1))*A028598(A120634(n))`
-/

namespace A028591.P7020695160154853555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A023194 (n + 1)).toNat * A028598 (A120634 n).toNat

end

end A028591.P7020695160154853555

/-!
# A028592: Expansion of (theta_3(z)*theta_3(6z)+theta_2(z)*theta_2(6z))^3.

The programs for A028592, there is no canonical definition to state claims against.
-/

/-! ## A028592.P2109535830024374012

`A028599(A120634(n))%A101163(n+3)`
-/

namespace A028592.P2109535830024374012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028599 (A120634 n).toNat) (A101163 (n + 3))

end

end A028592.P2109535830024374012

/-! ## A028592.P2752522161687572192

`A000034(A195321(n))*A028599(A120634(n))`
-/

namespace A028592.P2752522161687572192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A195321 n).toNat * A028599 (A120634 n).toNat

end

end A028592.P2752522161687572192

/-! ## A028592.P8209475608887429168

`A028599(A120634(n))%A000027(A006221(n))`
-/

namespace A028592.P8209475608887429168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028599 (A120634 n).toNat) (A000027 (A006221 n).toNat)

end

end A028592.P8209475608887429168

/-! ## A028592.P9000523615581365738

`A028599(A120634(n))+A000007(A014476(n+1))`
-/

namespace A028592.P9000523615581365738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028599 (A120634 n).toNat + A000007 (A014476 (n + 1)).toNat

end

end A028592.P9000523615581365738

/-! ## A028592.P2681141400631136356

`A028599(A120634(n))^A014963(A022802(n+1))`
-/

namespace A028592.P2681141400631136356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028599 (A120634 n).toNat : ℚ) ^ (A014963 (A022802 (n + 1)).toNat : ℤ)

end

end A028592.P2681141400631136356

/-!
# A028593: Expansion of (theta_3(z)*theta_3(6z)+theta_2(z)*theta_2(6z))^4.

The programs for A028593, there is no canonical definition to state claims against.
-/

/-! ## A028593.P3315726241059602711

`A028600(A120634(n)%A246775(n+1))`
-/

namespace A028593.P3315726241059602711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028600 (Int.tmod (A120634 n) (A246775 (n + 1))).toNat

end

end A028593.P3315726241059602711

/-! ## A028593.P12654456314675150414

`A028600(A120634(n))*A295205(C(n+2, 2))`
-/

namespace A028593.P12654456314675150414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028600 (A120634 n).toNat * A295205 (Nat.choose (n + 2) 2)

end

end A028593.P12654456314675150414

/-! ## A028593.P11693184601002707853

`A028600(A120634(n))%A001748(A003271(n))`
-/

namespace A028593.P11693184601002707853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028600 (A120634 n).toNat) (A001748 (A003271 n).toNat)

end

end A028593.P11693184601002707853

/-! ## A028593.P1925059616894912115

`A028600(A120634(n)%A088292(n))`
-/

namespace A028593.P1925059616894912115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028600 (Int.tmod (A120634 n) (A088292 n)).toNat

end

end A028593.P1925059616894912115

/-!
# A028594: Expansion of (theta_3(q) * theta_3(q^7) + theta_2(q) * theta_2(q^7))^2 in powers of q.

The programs for A028594, there is no canonical definition to state claims against.
-/

/-! ## A028594.P15741148460879429219

`(A028997(2*n)+A028997(n))/2`
-/

namespace A028594.P15741148460879429219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028997 (2 * n) + A028997 n : ℚ) / 2

end

end A028594.P15741148460879429219

/-! ## A028594.P5908466689094081067

`(A125555(2*n)+A125555(4*n))/2`
-/

namespace A028594.P5908466689094081067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125555 (2 * n) + A125555 (4 * n) : ℚ) / 2

end

end A028594.P5908466689094081067

/-! ## A028594.P14775564166180438755

`A026741(A028997(2*n)+A028997(n))`
-/

namespace A028594.P14775564166180438755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A028997 (2 * n) + A028997 n).toNat

end

end A028594.P14775564166180438755

/-! ## A028594.P2414816489346814151

`A078898(A028997(2*n)+A028997(n))`
-/

namespace A028594.P2414816489346814151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A028997 (2 * n) + A028997 n).toNat

end

end A028594.P2414816489346814151

/-! ## A028594.P15919849942162167483

`A110654(A028997(2*n)+A028997(n))`
-/

namespace A028594.P15919849942162167483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028997 (2 * n) + A028997 n).toNat

end

end A028594.P15919849942162167483

/-! ## A028594.P12429260327740669612

`A205976(n)/A324969(n+1)`
-/

namespace A028594.P12429260327740669612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205976 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A028594.P12429260327740669612

/-! ## A028594.P6873533455106540193

`A209456(n)/A215928(n)`
-/

namespace A028594.P6873533455106540193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209456 n : ℚ) / (A215928 n : ℚ)

end

end A028594.P6873533455106540193

/-! ## A028594.P771480721555405463

`A209456(n)/gcd(A000129(n), A209456(n))`
-/

namespace A028594.P771480721555405463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209456 n : ℚ) / (Int.gcd (A000129 n) (A209456 n) : ℚ)

end

end A028594.P771480721555405463

/-! ## A028594.P9651436907238712498

`A170773(9*n)`
-/

namespace A028594.P9651436907238712498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170773 (9 * n)

end

end A028594.P9651436907238712498

/-!
# A028596: Expansion of (theta_3(z)*theta_3(7z) + theta_2(z)*theta_2(7z))^4.

The programs for A028596, there is no canonical definition to state claims against.
-/

/-! ## A028596.P13088891361527957301

`A333255(∏{e}[A093143(n+2), #])`
-/

namespace A028596.P13088891361527957301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093143 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333255 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A028596.P13088891361527957301

/-!
# A028597: Expansion of theta_3(z) * theta_3(8*z) + theta_2(z) * theta_2(8*z) in powers of q^(1/4).

The programs for A028597, there is no canonical definition to state claims against.
-/

/-! ## A028597.P9862595756215591711

`and(A001316(n), A007862(A073470(n)))`
-/

namespace A028597.P9862595756215591711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001316 n) (A007862 (A073470 n).toNat)

end

end A028597.P9862595756215591711

/-! ## A028597.P5957658862816658938

`and(A001316(n), A332337(A375123(n)))`
-/

namespace A028597.P5957658862816658938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001316 n) (A332337 (A375123 n).toNat)

end

end A028597.P5957658862816658938

/-! ## A028597.P575534528766799906

`and(A028599(n), A182731(n+1))`
-/

namespace A028597.P575534528766799906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028599 n) (A182731 (n + 1))

end

end A028597.P575534528766799906

/-!
# A028598: Expansion of (theta_3(z)*theta_3(8z)+theta_2(z)*theta_2(8z))^2.

The programs for A028598, there is no canonical definition to state claims against.
-/

/-! ## A028598.P4157251702581745036

`A028622(A120634(n))%p?[A071921(n)]`
-/

namespace A028598.P4157251702581745036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028622 (A120634 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A028598.P4157251702581745036

/-! ## A028598.P16548727248410777928

`and(A028602(n), A213217(A177463(n+3)))`
-/

namespace A028598.P16548727248410777928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028602 n) (A213217 (A177463 (n + 3)).toNat)

end

end A028598.P16548727248410777928

/-! ## A028598.P18380354506599939731

`A028622(A120634(n)%A342274(3*(n+1)))`
-/

namespace A028598.P18380354506599939731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028622 (Int.tmod (A120634 n) (A342274 (3 * (n + 1)))).toNat

end

end A028598.P18380354506599939731

/-! ## A028598.P14519338722831172457

`A028622(A120634(n))^A001221(A000079(n))`
-/

namespace A028598.P14519338722831172457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028622 (A120634 n).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A028598.P14519338722831172457

/-!
# A028599: Expansion of (theta_3(z)*theta_3(8z)+theta_2(z)*theta_2(8z))^3.

The programs for A028599, there is no canonical definition to state claims against.
-/

/-! ## A028599.P12491689296363172395

`A000196(A028607(2*and(3, n)+n)²)`
-/

namespace A028599.P12491689296363172395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028607 (2 * Nat.land 3 n + n) ^ 2).toNat

end

end A028599.P12491689296363172395

/-! ## A028599.P10028833820051180853

`A000005(2^n)/(n+1)*A028623(A120634(n))`
-/

namespace A028599.P10028833820051180853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (2 ^ n) : ℚ) / (n + 1 : ℚ) * (A028623 (A120634 n).toNat : ℚ)

end

end A028599.P10028833820051180853

/-! ## A028599.P10841154174206532806

`A001222(A014210(n))*A028623(A120634(n))`
-/

namespace A028599.P10841154174206532806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014210 n).toNat * A028623 (A120634 n).toNat

end

end A028599.P10841154174206532806

/-! ## A028599.P6597318907221309914

`A028623(A120634(n))%A006530(A000051(n))`
-/

namespace A028599.P6597318907221309914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028623 (A120634 n).toNat) (A006530 (A000051 n).toNat)

end

end A028599.P6597318907221309914

/-! ## A028599.P12672517158795894356

`A001222(A203074(n+1))*A028623(A120634(n))`
-/

namespace A028599.P12672517158795894356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A203074 (n + 1)).toNat * A028623 (A120634 n).toNat

end

end A028599.P12672517158795894356

