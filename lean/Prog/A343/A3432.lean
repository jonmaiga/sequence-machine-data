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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A343200: Expansion of Product_{k>=1} (1 + x^k)^binomial(k+3,3).

The programs for A343200, there is no canonical definition to state claims against.
-/

/-! ## A343200.P17163983951723818773

`A355524(A026035(n+2))+A089883(n)`
-/

namespace A343200.P17163983951723818773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355524 (A026035 (n + 2)).toNat + A089883 n

end

end A343200.P17163983951723818773

/-!
# A343203: Sum of x- and y-coordinate of a point moving in a triangular spiral.

The programs for A343203, the canonical program `A343203.P7383915526188843710` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343203 has offset 0).

The definition of A343203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343203.P13076317498314873777

`A329972(n)+A329116(n)`
-/

namespace A343203.P13076317498314873777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 n + A329116 n

end

end A343203.P13076317498314873777

namespace A343203

/-- `A329972(n)+A329116(n)` -/
def P13076317498314873777.Spec : Prop :=
  ∀ n, P13076317498314873777.a n = A343203 n

end A343203

/-! ## A343203.P1597989272546655627

`A359216(2*n)+A329972(n)`
-/

namespace A343203.P1597989272546655627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359216 (2 * n) + A329972 n

end

end A343203.P1597989272546655627

namespace A343203

/-- `A359216(2*n)+A329972(n)` -/
def P1597989272546655627.Spec : Prop :=
  ∀ n, P1597989272546655627.a n = A343203 n

end A343203

/-! ## A343203.P12996597018226201082

`A329972(n)+A255175(abs(1-n))`
-/

namespace A343203.P12996597018226201082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 n + A255175 |1 - (n : ℤ)|.toNat

end

end A343203.P12996597018226201082

namespace A343203

/-- `A329972(n)+A255175(abs(1-n))` -/
def P12996597018226201082.Spec : Prop :=
  ∀ n, P12996597018226201082.a n = A343203 n

end A343203

/-! ## A343203.P7383915526188843710

`A340172(A165775(n))+A329972(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343203

/-- `A340172(A165775(n))+A329972(n)` -/
def P7383915526188843710.Spec : Prop :=
  ∀ n, P7383915526188843710.a n = A343203 n

theorem P7383915526188843710.correct : P7383915526188843710.Spec := by
  intro n
  simp only [A343203]

end A343203

/-! ## A343203.P7347873511943991410

`A329972(n)+A274923(A316884(n+1))`
-/

namespace A343203.P7347873511943991410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329972 n + A274923 (A316884 (n + 1)).toNat

end

end A343203.P7347873511943991410

namespace A343203

/-- `A329972(n)+A274923(A316884(n+1))` -/
def P7347873511943991410.Spec : Prop :=
  ∀ n, P7347873511943991410.a n = A343203 n

end A343203

/-! ## A343203.P13122360067406487510

`A255175(n)+A329972(n)-A339265(n)`
-/

namespace A343203.P13122360067406487510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255175 n + (A329972 n - A339265 n)

end

end A343203.P13122360067406487510

namespace A343203

/-- `A255175(n)+A329972(n)-A339265(n)` -/
def P13122360067406487510.Spec : Prop :=
  ∀ n, P13122360067406487510.a n = A343203 n

end A343203

/-! ## A343203.P1627841507309899394

`A319290(n)+A329972(n)-A319289(n)`
-/

namespace A343203.P1627841507309899394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319290 n + (A329972 n - A319289 n)

end

end A343203.P1627841507309899394

namespace A343203

/-- `A319290(n)+A329972(n)-A319289(n)` -/
def P1627841507309899394.Spec : Prop :=
  ∀ n, P1627841507309899394.a n = A343203 n

end A343203

/-! ## A343203.P18258791137524977756

`A329116(n)+A010751(∑[A266982(n+1)])`
-/

namespace A343203.P18258791137524977756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n + A010751 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343203.P18258791137524977756

namespace A343203

/-- `A329116(n)+A010751(∑[A266982(n+1)])` -/
def P18258791137524977756.Spec : Prop :=
  ∀ n, P18258791137524977756.a n = A343203 n

end A343203

/-! ## A343203.P7661929307684612048

`A329116(n)+A010751(∑[A267034(n)]-1)`
-/

namespace A343203.P7661929307684612048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n + A010751 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A343203.P7661929307684612048

namespace A343203

/-- `A329116(n)+A010751(∑[A267034(n)]-1)` -/
def P7661929307684612048.Spec : Prop :=
  ∀ n, P7661929307684612048.a n = A343203 n

end A343203

/-! ## A343203.P6533042247421729673

`A174344(n+1)+A319290(n)-A000196(n)`
-/

namespace A343203.P6533042247421729673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (A319290 n - A000196 n)

end

end A343203.P6533042247421729673

namespace A343203

/-- `A174344(n+1)+A319290(n)-A000196(n)` -/
def P6533042247421729673.Spec : Prop :=
  ∀ n, P6533042247421729673.a n = A343203 n

end A343203

/-! ## A343203.P9581283603547567922

`A174344(n+1)+A329972(n)+A268038(n+1)`
-/

namespace A343203.P9581283603547567922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (A329972 n + A268038 (n + 1))

end

end A343203.P9581283603547567922

namespace A343203

/-- `A174344(n+1)+A329972(n)+A268038(n+1)` -/
def P9581283603547567922.Spec : Prop :=
  ∀ n, P9581283603547567922.a n = A343203 n

end A343203

/-! ## A343203.P17420673552230961151

`A220603(n+1)+A329972(n)-A220604(n+1)`
-/

namespace A343203.P17420673552230961151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220603 (n + 1) + (A329972 n - A220604 (n + 1))

end

end A343203.P17420673552230961151

namespace A343203

/-- `A220603(n+1)+A329972(n)-A220604(n+1)` -/
def P17420673552230961151.Spec : Prop :=
  ∀ n, P17420673552230961151.a n = A343203 n

end A343203

/-! ## A343203.P139903612373479011

`A174344(n+1)+A329972(n)-A274923(n+1)`
-/

namespace A343203.P139903612373479011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) + (A329972 n - A274923 (n + 1))

end

end A343203.P139903612373479011

namespace A343203

/-- `A174344(n+1)+A329972(n)-A274923(n+1)` -/
def P139903612373479011.Spec : Prop :=
  ∀ n, P139903612373479011.a n = A343203 n

end A343203

/-!
# A343204: Numerators of coefficients in expansion of Product_{k>=1} (1 + x^k)^(1/2).

The programs for A343204, there is no canonical definition to state claims against.
-/

/-! ## A343204.P1495939860199188969

`A298994(n)/A001316(n)`
-/

namespace A343204.P1495939860199188969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298994 n : ℚ) / (A001316 n : ℚ)

end

end A343204.P1495939860199188969

/-! ## A343204.P5886790563522519038

`A298994(n)/Δ[A006046(n)]`
-/

namespace A343204.P5886790563522519038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298994 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A343204.P5886790563522519038

/-! ## A343204.P9979415185206501924

`A298994(n)/A048896(2*n)`
-/

namespace A343204.P9979415185206501924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298994 n : ℚ) / (A048896 (2 * n) : ℚ)

end

end A343204.P9979415185206501924

/-! ## A343204.P18073221222711356121

`A298994(n)/A000079(A000120(n))`
-/

namespace A343204.P18073221222711356121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298994 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A343204.P18073221222711356121

/-! ## A343204.P2646396415008622267

`A298994(n)/A000005(A019565(n))`
-/

namespace A343204.P2646396415008622267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298994 n : ℚ) / (A000005 (A019565 n).toNat : ℚ)

end

end A343204.P2646396415008622267

/-!
# A343205: a(n) is the unique positive integer m such that n < m*sqrt(A261865(n)) < n + 1.

The programs for A343205, there is no canonical definition to state claims against.
-/

/-! ## A343205.P2390514803588974472

`A000034(p?[3-A228110(n+3)])*A026249(n+1)`
-/

namespace A343205.P2390514803588974472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A228110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A026249 (n + 1)

end

end A343205.P2390514803588974472

/-! ## A343205.P12423823506645343715

`A000045(p?[3-A228110(n+3)])*A026249(n+1)`
-/

namespace A343205.P12423823506645343715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A228110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A026249 (n + 1)

end

end A343205.P12423823506645343715

/-! ## A343205.P3199761221225466362

`A004523(p?[3-A228110(n+3)])*A026249(n+1)`
-/

namespace A343205.P3199761221225466362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A228110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A026249 (n + 1)

end

end A343205.P3199761221225466362

/-! ## A343205.P5639106495606414287

`A026249(n+1)*A062050(p?[3-A228110(n+3)])`
-/

namespace A343205.P5639106495606414287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A228110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1) * A062050 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343205.P5639106495606414287

/-! ## A343205.P17190883564210526118

`A026249(n+1)*A106486(p?[3-A228110(n+3)])`
-/

namespace A343205.P17190883564210526118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A228110 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 1) * A106486 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343205.P17190883564210526118

/-!
# A343206: Numerators of Daehee numbers.

The programs for A343206, there is no canonical definition to state claims against.
-/

/-! ## A343206.P11885778125265761789

`A033999(n)*A092043(n+1)`
-/

namespace A343206.P11885778125265761789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A092043 (n + 1)

end

end A343206.P11885778125265761789

/-! ## A343206.P6554506452907950927

`A133942(n)/A181569(A028310(n))`
-/

namespace A343206.P6554506452907950927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133942 n : ℚ) / (A181569 (A028310 n).toNat : ℚ)

end

end A343206.P6554506452907950927

/-! ## A343206.P10604035157483946403

`A016327(A005811(n))*A092043(n+1)`
-/

namespace A343206.P10604035157483946403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016327 (A005811 n).toNat * A092043 (n + 1)

end

end A343206.P10604035157483946403

/-! ## A343206.P6496739165642611826

`n!/A181569(A028310(n))*A057428(n)^n`
-/

namespace A343206.P6496739165642611826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A181569 (A028310 n).toNat : ℚ) * (A057428 n ^ n : ℚ)

end

end A343206.P6496739165642611826

/-! ## A343206.P5129814062496236524

`A092043(A281873(n+1))/A033999(n)`
-/

namespace A343206.P5129814062496236524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092043 (A281873 (n + 1)).toNat : ℚ) / (A033999 n : ℚ)

end

end A343206.P5129814062496236524

/-!
# A343207: Numbers k such that there exists a unique partition of k into positive integers x,y,z such that x+y, y+z and x+z divide x*y, y*z and x*z, respectively.

The programs for A343207, there is no canonical definition to state claims against.
-/

/-! ## A343207.P17315073745728127362

`eq[1, A270417((n+1)^A316789(or(1, n+1)))]+1`
-/

namespace A343207.P17315073745728127362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A316789 (Nat.lor 1 (n + 1)) : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343207.P17315073745728127362

/-! ## A343207.P17438029925052064820

`eq[A014963(A216915(n+1)), A270417(n+1)]+1`
-/

namespace A343207.P17438029925052064820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A216915 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343207.P17438029925052064820

/-! ## A343207.P5175141801811964201

`eq[A040784(A008459(n)), A270417(n+1)]+1`
-/

namespace A343207.P5175141801811964201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040784 (A008459 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343207.P5175141801811964201

/-! ## A343207.P12331956783362991670

`eq[A152845(A277239(3*n+2)), A270417(n+1)]+1`
-/

namespace A343207.P12331956783362991670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 (A277239 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A343207.P12331956783362991670

/-!
# A343208: a(n) = Sum_{k=1..n} k*A001168(k)*binomial(n-1,k-1), where A001168(k) is the number of fixed polyominoes with k cells.

The programs for A343208, there is no canonical definition to state claims against.
-/

/-! ## A343208.P13437094734246662820

`Δ[n*A113174(A028310(n))]`
-/

namespace A343208.P13437094734246662820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113174 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343208.P13437094734246662820

/-!
# A343213: Number of spanning trees of the graphs of the platonic solids sorted by the number of faces.

The programs for A343213, there is no canonical definition to state claims against.
-/

/-! ## A343213.P12919183656264573887

`A053572(A053602(3*n)+4)`
-/

namespace A343213.P12919183656264573887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053572 (A053602 (3 * n) + 4).toNat

end

end A343213.P12919183656264573887

/-!
# A343215: Differences between consecutive numbers with unique nonzero digit in decimal representation.

The programs for A343215, there is no canonical definition to state claims against.
-/

/-! ## A343215.P15170693571300171566

`A125289(n+2)-A125289(n+1)`
-/

namespace A343215.P15170693571300171566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 2) - A125289 (n + 1)

end

end A343215.P15170693571300171566

/-! ## A343215.P14019253617899979214

`Δ[A125289(n+1)]`
-/

namespace A343215.P14019253617899979214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343215.P14019253617899979214

/-! ## A343215.P15867940549291200229

`Δ[eq[1, A061827(n+1)]]`
-/

namespace A343215.P15867940549291200229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061827 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343215.P15867940549291200229

/-! ## A343215.P11476199551940212960

`Δ[eq[1, A052429(A350494(n+1))]]`
-/

namespace A343215.P11476199551940212960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (A350494 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343215.P11476199551940212960

/-! ## A343215.P12881612035699631514

`Δ[eq[2, A151949(A004185(n+1))+2]]`
-/

namespace A343215.P12881612035699631514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151949 (A004185 (n + 1)).toNat + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343215.P12881612035699631514

/-! ## A343215.P13105003774307010901

`Δ[eq[A052423(n+1), A052429(n+1)]]`
-/

namespace A343215.P13105003774307010901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052423 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343215.P13105003774307010901

/-!
# A343216: Numbers k such that A003415(sigma(k)) < k, where A003415(x) gives the arithmetic derivative of x.

The programs for A343216, the canonical program `A343216.P4920638713080032200` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343216 has offset 1).

The definition of A343216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343216.P1309080829763123260

`lt[A342925(round(sqrt(n²+1))), n]`
-/

namespace A343216.P1309080829763123260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343216.P1309080829763123260

namespace A343216

/-- `lt[A342925(round(sqrt(n²+1))), n]` -/
def P1309080829763123260.Spec : Prop :=
  ∀ n, (P1309080829763123260.a n : ℤ) = A343216 (n + 1)

end A343216

/-! ## A343216.P4920638713080032200

`lt[A342925(n+1), n+1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A343216

/-- `lt[A342925(n+1), n+1]+1` -/
def P4920638713080032200.Spec : Prop :=
  ∀ n, (P4920638713080032200.a n : ℤ) = A343216 (n + 1)

theorem P4920638713080032200.correct : P4920638713080032200.Spec := by
  intro n
  simp only [A343216, Nat.add_sub_cancel]

end A343216

/-! ## A343216.P3366922894846089328

`lt[A342926(n+1), A347883(n+1)]+1`
-/

namespace A343216.P3366922894846089328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343216.P3366922894846089328

namespace A343216

/-- `lt[A342926(n+1), A347883(n+1)]+1` -/
def P3366922894846089328.Spec : Prop :=
  ∀ n, (P3366922894846089328.a n : ℤ) = A343216 (n + 1)

end A343216

/-! ## A343216.P7373548856104276087

`lt[A003415(∑{d}[n, #]), n]`
-/

namespace A343216.P7373548856104276087
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f2 n), d)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A343216.P7373548856104276087

namespace A343216

/-- `lt[A003415(∑{d}[n, #]), n]` -/
def P7373548856104276087.Spec : Prop :=
  ∀ n, (P7373548856104276087.a n : ℤ) = A343216 (n + 1)

end A343216

/-! ## A343216.P8869273065945358786

`lt[A003415(A039653(n)+1), n]`
-/

namespace A343216.P8869273065945358786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A039653 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343216.P8869273065945358786

namespace A343216

/-- `lt[A003415(A039653(n)+1), n]` -/
def P8869273065945358786.Spec : Prop :=
  ∀ n, (P8869273065945358786.a n : ℤ) = A343216 (n + 1)

end A343216

/-! ## A343216.P1992390586177892848

`lt[A003415(A000203(n+1)), n+1]+1`
-/

namespace A343216.P1992390586177892848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343216.P1992390586177892848

namespace A343216

/-- `lt[A003415(A000203(n+1)), n+1]+1` -/
def P1992390586177892848.Spec : Prop :=
  ∀ n, (P1992390586177892848.a n : ℤ) = A343216 (n + 1)

end A343216

/-! ## A343216.P137797918302177619

`lt[A003415(A003959(n+1)-A348029(n+1)), n+1]+1`
-/

namespace A343216.P137797918302177619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003959 (n + 1) - A348029 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343216.P137797918302177619

namespace A343216

/-- `lt[A003415(A003959(n+1)-A348029(n+1)), n+1]+1` -/
def P137797918302177619.Spec : Prop :=
  ∀ n, (P137797918302177619.a n : ℤ) = A343216 (n + 1)

theorem P137797918302177619.correct : P137797918302177619.Spec := by
  intro n
  simp only [A343216, Nat.add_sub_cancel, A343216.P137797918302177619.f1, A343216.P137797918302177619.f2, A343216.P137797918302177619.a, A343216.P4920638713080032200.f1, A343216.P4920638713080032200.f2, A343216.P4920638713080032200.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A342925, A342925.P15548023362340798578.a, A348029, A348029.P15301953817482989203.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A014963, A014963.P5975177236000282614.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A080304, A080304.P9910366703239988167.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343216

/-! ## A343216.P11545009310660707148

`lt[A003415(A351568(n+1)*A351569(n+1)), n+1]+1`
-/

namespace A343216.P11545009310660707148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A351568 (n + 1) * A351569 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A343216.P11545009310660707148

namespace A343216

/-- `lt[A003415(A351568(n+1)*A351569(n+1)), n+1]+1` -/
def P11545009310660707148.Spec : Prop :=
  ∀ n, (P11545009310660707148.a n : ℤ) = A343216 (n + 1)

end A343216

/-!
# A343217: Numbers k such that A003415(sigma(k)) >= k, where A003415(x) gives the arithmetic derivative of x.

The programs for A343217, the canonical program `A343217.P4280884664025876512` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343217 has offset 1).

The definition of A343217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343217.P4280884664025876512

`lt[n, A342925(n+1)]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A343217

/-- `lt[n, A342925(n+1)]+1` -/
def P4280884664025876512.Spec : Prop :=
  ∀ n, (P4280884664025876512.a n : ℤ) = A343217 (n + 1)

theorem P4280884664025876512.correct : P4280884664025876512.Spec := by
  intro n
  simp only [A343217, Nat.add_sub_cancel]

end A343217

/-! ## A343217.P10655512303555361660

`eq[n+1, (n+1)%A342925(n+2)]+2`
-/

namespace A343217.P10655512303555361660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A342925 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A343217.P10655512303555361660

namespace A343217

/-- `eq[n+1, (n+1)%A342925(n+2)]+2` -/
def P10655512303555361660.Spec : Prop :=
  ∀ n, (P10655512303555361660.a n : ℤ) = A343217 (n + 1)

end A343217

/-! ## A343217.P4729013345791068461

`A020725(lt[n, A342925(n+1)])`
-/

namespace A343217.P4729013345791068461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A343217.P4729013345791068461

namespace A343217

/-- `A020725(lt[n, A342925(n+1)])` -/
def P4729013345791068461.Spec : Prop :=
  ∀ n, P4729013345791068461.a n = A343217 (n + 1)

end A343217

/-! ## A343217.P11586391471000985249

`A065475(lt[n, A342925(n+1)])`
-/

namespace A343217.P11586391471000985249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A343217.P11586391471000985249

namespace A343217

/-- `A065475(lt[n, A342925(n+1)])` -/
def P11586391471000985249.Spec : Prop :=
  ∀ n, P11586391471000985249.a n = A343217 (n + 1)

end A343217

/-! ## A343217.P4902564109822521750

`lt[-1, A342926(n+1)]+1`
-/

namespace A343217.P4902564109822521750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A343217.P4902564109822521750

namespace A343217

/-- `lt[-1, A342926(n+1)]+1` -/
def P4902564109822521750.Spec : Prop :=
  ∀ n, (P4902564109822521750.a n : ℤ) = A343217 (n + 1)

end A343217

/-! ## A343217.P18408830159497633191

`lt[n, A003415(∑{d}[n+1, #])]+1`
-/

namespace A343217.P18408830159497633191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343217.P18408830159497633191

namespace A343217

/-- `lt[n, A003415(∑{d}[n+1, #])]+1` -/
def P18408830159497633191.Spec : Prop :=
  ∀ n, (P18408830159497633191.a n : ℤ) = A343217 (n + 1)

end A343217

/-! ## A343217.P2044308762668772274

`lt[n, A003415(A000203(n+1))]+1`
-/

namespace A343217.P2044308762668772274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000203 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343217.P2044308762668772274

namespace A343217

/-- `lt[n, A003415(A000203(n+1))]+1` -/
def P2044308762668772274.Spec : Prop :=
  ∀ n, (P2044308762668772274.a n : ℤ) = A343217 (n + 1)

end A343217

/-! ## A343217.P13903810574811990507

`∪[A004767(n), A227760(n+1)]`
-/

namespace A343217.P13903810574811990507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343217.P13903810574811990507

namespace A343217

/-- `∪[A004767(n), A227760(n+1)]` -/
def P13903810574811990507.Spec : Prop :=
  ∀ n, (P13903810574811990507.a n : ℤ) = A343217 (n + 1)

end A343217

/-! ## A343217.P13034644890849953589

`∪[A002052(n+1), A227760(n+1)]`
-/

namespace A343217.P13034644890849953589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343217.P13034644890849953589

namespace A343217

/-- `∪[A002052(n+1), A227760(n+1)]` -/
def P13034644890849953589.Spec : Prop :=
  ∀ n, (P13034644890849953589.a n : ℤ) = A343217 (n + 1)

end A343217

/-! ## A343217.P2912587685983054232

`∪[A002145(n+1), A227760(n+1)]`
-/

namespace A343217.P2912587685983054232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343217.P2912587685983054232

namespace A343217

/-- `∪[A002145(n+1), A227760(n+1)]` -/
def P2912587685983054232.Spec : Prop :=
  ∀ n, (P2912587685983054232.a n : ℤ) = A343217 (n + 1)

end A343217

/-!
# A343218: Numbers k such that A003415(sigma(k)) > k.

The programs for A343218, the canonical program `A343218.P8338746516779628182` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343218 has offset 1).

The definition of A343218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343218.P13881713950954655652

`lt[0, A343220(n+1)]+1`
-/

namespace A343218.P13881713950954655652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343218.P13881713950954655652

namespace A343218

/-- `lt[0, A343220(n+1)]+1` -/
def P13881713950954655652.Spec : Prop :=
  ∀ n, (P13881713950954655652.a n : ℤ) = A343218 (n + 1)

end A343218

/-! ## A343218.P10652982453531394707

`eq[1, A343219(n+1)]+1`
-/

namespace A343218.P10652982453531394707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343219 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343218.P10652982453531394707

namespace A343218

/-- `eq[1, A343219(n+1)]+1` -/
def P10652982453531394707.Spec : Prop :=
  ∀ n, (P10652982453531394707.a n : ℤ) = A343218 (n + 1)

end A343218

/-! ## A343218.P8338746516779628182

`lt[n, A342925(gcd(n, C(2, n)))]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A343218

/-- `lt[n, A342925(gcd(n, C(2, n)))]` -/
def P8338746516779628182.Spec : Prop :=
  ∀ n, (P8338746516779628182.a n : ℤ) = A343218 (n + 1)

theorem P8338746516779628182.correct : P8338746516779628182.Spec := by
  intro n
  simp only [A343218, Nat.add_sub_cancel]

end A343218

/-! ## A343218.P15718754770691888928

`record[(n+3)*A343219(n+3)]`
-/

namespace A343218.P15718754770691888928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A343219 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343218.P15718754770691888928

namespace A343218

/-- `record[(n+3)*A343219(n+3)]` -/
def P15718754770691888928.Spec : Prop :=
  ∀ n, P15718754770691888928.a n = A343218 (n + 1)

end A343218

/-! ## A343218.P13543482591311554691

`record[(n+3)%A342925(n+3)]`
-/

namespace A343218.P13543482591311554691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (A342925 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343218.P13543482591311554691

namespace A343218

/-- `record[(n+3)%A342925(n+3)]` -/
def P13543482591311554691.Spec : Prop :=
  ∀ n, P13543482591311554691.a n = A343218 (n + 1)

end A343218

/-! ## A343218.P4283849478172911515

`lt[n, A342925(round(sqrt(n²+1)))]`
-/

namespace A343218.P4283849478172911515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343218.P4283849478172911515

namespace A343218

/-- `lt[n, A342925(round(sqrt(n²+1)))]` -/
def P4283849478172911515.Spec : Prop :=
  ∀ n, (P4283849478172911515.a n : ℤ) = A343218 (n + 1)

end A343218

/-! ## A343218.P4339931664383789107

`filter[A343217(n+1), A343219(#)]`
-/

namespace A343218.P4339931664383789107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A343218.P4339931664383789107

namespace A343218

/-- `filter[A343217(n+1), A343219(#)]` -/
def P4339931664383789107.Spec : Prop :=
  ∀ n, P4339931664383789107.a n = A343218 (n + 1)

end A343218

/-! ## A343218.P9415803680347186663

`filter[A213367(n+1), A343219(#)]`
-/

namespace A343218.P9415803680347186663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A343218.P9415803680347186663

namespace A343218

/-- `filter[A213367(n+1), A343219(#)]` -/
def P9415803680347186663.Spec : Prop :=
  ∀ n, P9415803680347186663.a n = A343218 (n + 1)

end A343218

/-! ## A343218.P5685196229852600839

`filter[A163162(n+1), A343219(#)]`
-/

namespace A343218.P5685196229852600839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A343218.P5685196229852600839

namespace A343218

/-- `filter[A163162(n+1), A343219(#)]` -/
def P5685196229852600839.Spec : Prop :=
  ∀ n, P5685196229852600839.a n = A343218 (n + 1)

end A343218

/-! ## A343218.P4492794511867728126

`A020725(eq[1, A343219(n+1)])`
-/

namespace A343218.P4492794511867728126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343218.P4492794511867728126

namespace A343218

/-- `A020725(eq[1, A343219(n+1)])` -/
def P4492794511867728126.Spec : Prop :=
  ∀ n, P4492794511867728126.a n = A343218 (n + 1)

end A343218

/-! ## A343218.P8857815277252425775

`lt[0, A342926(n+1)]+1`
-/

namespace A343218.P8857815277252425775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A343218.P8857815277252425775

namespace A343218

/-- `lt[0, A342926(n+1)]+1` -/
def P8857815277252425775.Spec : Prop :=
  ∀ n, (P8857815277252425775.a n : ℤ) = A343218 (n + 1)

end A343218

/-! ## A343218.P9131833883799876079

`lt[0, A342926(n^floor(atan(n)))]`
-/

namespace A343218.P9131833883799876079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343218.P9131833883799876079

namespace A343218

/-- `lt[0, A342926(n^floor(atan(n)))]` -/
def P9131833883799876079.Spec : Prop :=
  ∀ n, (P9131833883799876079.a n : ℤ) = A343218 (n + 1)

end A343218

/-! ## A343218.P12972994673501040996

`lt[n, A003415(∑{d}[n, #])]`
-/

namespace A343218.P12972994673501040996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343218.P12972994673501040996

namespace A343218

/-- `lt[n, A003415(∑{d}[n, #])]` -/
def P12972994673501040996.Spec : Prop :=
  ∀ n, (P12972994673501040996.a n : ℤ) = A343218 (n + 1)

end A343218

/-!
# A343219: a(n) = 1 if A003415(sigma(k)) > k, otherwise 0.

The programs for A343219, the canonical program `A343219.P139965300624176428` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343219 has offset 1).

The definition of A343219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343219.P10476457546763804353

`char[lt[0, A343220(n+1)]]`
-/

namespace A343219.P10476457546763804353
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A343219.P10476457546763804353

namespace A343219

/-- `char[lt[0, A343220(n+1)]]` -/
def P10476457546763804353.Spec : Prop :=
  ∀ n, (P10476457546763804353.a n : ℤ) = A343219 (n + 1)

end A343219

/-! ## A343219.P12517728830592108188

`abs(A011597(A343220(n+1)))`
-/

namespace A343219.P12517728830592108188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011597 (A343220 (n + 1)).toNat|

end

end A343219.P12517728830592108188

namespace A343219

/-- `abs(A011597(A343220(n+1)))` -/
def P12517728830592108188.Spec : Prop :=
  ∀ n, P12517728830592108188.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P3366570785809356303

`A011597(A343220(n+1)²)`
-/

namespace A343219.P3366570785809356303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011597 (A343220 (n + 1) ^ 2).toNat

end

end A343219.P3366570785809356303

namespace A343219

/-- `A011597(A343220(n+1)²)` -/
def P3366570785809356303.Spec : Prop :=
  ∀ n, P3366570785809356303.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P18085239526146271576

`1-A000007(A343220(n+1)²)`
-/

namespace A343219.P18085239526146271576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A343220 (n + 1) ^ 2).toNat

end

end A343219.P18085239526146271576

namespace A343219

/-- `1-A000007(A343220(n+1)²)` -/
def P18085239526146271576.Spec : Prop :=
  ∀ n, P18085239526146271576.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P5529863883131005513

`1-A000007(2*A343220(n+1))`
-/

namespace A343219.P5529863883131005513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (2 * A343220 (n + 1)).toNat

end

end A343219.P5529863883131005513

namespace A343219

/-- `1-A000007(2*A343220(n+1))` -/
def P5529863883131005513.Spec : Prop :=
  ∀ n, P5529863883131005513.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P5890182526248889989

`1-∏{d}[A343220(n+1), A000007(#)]`
-/

namespace A343219.P5890182526248889989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ d ∈ Nat.divisors (f1 n).natAbs, A000007 d

end

end A343219.P5890182526248889989

namespace A343219

/-- `1-∏{d}[A343220(n+1), A000007(#)]` -/
def P5890182526248889989.Spec : Prop :=
  ∀ n, P5890182526248889989.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P14601263501201288160

`1-∏{d}[A343220(n+1), A343220(#)]`
-/

namespace A343219.P14601263501201288160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ d ∈ Nat.divisors (f1 n).natAbs, A343220 d

end

end A343219.P14601263501201288160

namespace A343219

/-- `1-∏{d}[A343220(n+1), A343220(#)]` -/
def P14601263501201288160.Spec : Prop :=
  ∀ n, P14601263501201288160.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P15253634287157979764

`ceil(A342926(n+1)/A005231(n+1))`
-/

namespace A343219.P15253634287157979764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A005231 (n + 1) : ℚ)⌉

end

end A343219.P15253634287157979764

namespace A343219

/-- `ceil(A342926(n+1)/A005231(n+1))` -/
def P15253634287157979764.Spec : Prop :=
  ∀ n, P15253634287157979764.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P139965300624176428

`ceil(A342926(n+1)/(A016754(n)+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A343219

/-- `ceil(A342926(n+1)/(A016754(n)+1))` -/
def P139965300624176428.Spec : Prop :=
  ∀ n, P139965300624176428.a n = A343219 (n + 1)

theorem P139965300624176428.correct : P139965300624176428.Spec := by
  intro n
  simp only [A343219, Nat.add_sub_cancel]

end A343219

/-! ## A343219.P16132675049108285053

`ceil(A342926(n+1)/A030291(n+1))`
-/

namespace A343219.P16132675049108285053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A030291 (n + 1) : ℚ)⌉

end

end A343219.P16132675049108285053

namespace A343219

/-- `ceil(A342926(n+1)/A030291(n+1))` -/
def P16132675049108285053.Spec : Prop :=
  ∀ n, P16132675049108285053.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P11692425603415174189

`ceil(A342926(n+1)/A156942(n+1))`
-/

namespace A343219.P11692425603415174189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A156942 (n + 1) : ℚ)⌉

end

end A343219.P11692425603415174189

namespace A343219

/-- `ceil(A342926(n+1)/A156942(n+1))` -/
def P11692425603415174189.Spec : Prop :=
  ∀ n, P11692425603415174189.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P11771465820074293092

`ceil(A342926(n+1)/A174830(n+1))`
-/

namespace A343219.P11771465820074293092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A174830 (n + 1) : ℚ)⌉

end

end A343219.P11771465820074293092

namespace A343219

/-- `ceil(A342926(n+1)/A174830(n+1))` -/
def P11771465820074293092.Spec : Prop :=
  ∀ n, P11771465820074293092.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P1137733173655655191

`ceil(A342926(n+1)/A325311(n+1))`
-/

namespace A343219.P1137733173655655191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A325311 (n + 1) : ℚ)⌉

end

end A343219.P1137733173655655191

namespace A343219

/-- `ceil(A342926(n+1)/A325311(n+1))` -/
def P1137733173655655191.Spec : Prop :=
  ∀ n, P1137733173655655191.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P14757316815893529768

`ceil(A342926(n+1)/(A028982(n+1)+1))`
-/

namespace A343219.P14757316815893529768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A028982 (n + 1) + 1 : ℚ)⌉

end

end A343219.P14757316815893529768

namespace A343219

/-- `ceil(A342926(n+1)/(A028982(n+1)+1))` -/
def P14757316815893529768.Spec : Prop :=
  ∀ n, P14757316815893529768.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P9494542259791981555

`A092030(ceil(A342926(n+1)/(8*(n+1)))+5)`
-/

namespace A343219.P9494542259791981555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092030 (⌈(A342926 (n + 1) : ℚ) / (8 * (n + 1) : ℚ)⌉ + 5).toNat

end

end A343219.P9494542259791981555

namespace A343219

/-- `A092030(ceil(A342926(n+1)/(8*(n+1)))+5)` -/
def P9494542259791981555.Spec : Prop :=
  ∀ n, P9494542259791981555.a n = A343219 (n + 1)

end A343219

/-! ## A343219.P6910383648213126643

`A343220(n+1)²/A028310(A343220(n+1)²)`
-/

namespace A343219.P6910383648213126643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343220 (n + 1) ^ 2 : ℚ) / (A028310 (A343220 (n + 1) ^ 2).toNat : ℚ)

end

end A343219.P6910383648213126643

namespace A343219

/-- `A343220(n+1)²/A028310(A343220(n+1)²)` -/
def P6910383648213126643.Spec : Prop :=
  ∀ n, P6910383648213126643.a n = (A343219 (n + 1) : ℚ)

end A343219

/-! ## A343219.P13090355653876839266

`char[lt[0, A342926(n+1)]]`
-/

namespace A343219.P13090355653876839266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A343219.P13090355653876839266

namespace A343219

/-- `char[lt[0, A342926(n+1)]]` -/
def P13090355653876839266.Spec : Prop :=
  ∀ n, (P13090355653876839266.a n : ℤ) = A343219 (n + 1)

end A343219

/-! ## A343219.P16618962727875533407

`ceil(A342926(n+1)/A028982(n+2))`
-/

namespace A343219.P16618962727875533407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342926 (n + 1) : ℚ) / (A028982 (n + 2) : ℚ)⌉

end

end A343219.P16618962727875533407

namespace A343219

/-- `ceil(A342926(n+1)/A028982(n+2))` -/
def P16618962727875533407.Spec : Prop :=
  ∀ n, P16618962727875533407.a n = A343219 (n + 1)

end A343219

/-!
# A343220: Number of unitary divisors d of n for which A003415(sigma(d)) > d.

The programs for A343220, there is no canonical definition to state claims against.
-/

/-! ## A343220.P16919372320604685894

`A327259(A301331(n))%A326039(n+1)`
-/

namespace A343220.P16919372320604685894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327259 (A301331 n).toNat) (A326039 (n + 1))

end

end A343220.P16919372320604685894

/-! ## A343220.P15394090339070735977

`A124762(A328668(n)+A002865(n))`
-/

namespace A343220.P15394090339070735977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A328668 n + A002865 n).toNat

end

end A343220.P15394090339070735977

/-! ## A343220.P14762615240600311021

`A074293(A161536(n+1))*A343219(n+1)`
-/

namespace A343220.P14762615240600311021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074293 (A161536 (n + 1)).toNat * A343219 (n + 1)

end

end A343220.P14762615240600311021

/-! ## A343220.P3844762918190960169

`A001221(gcd(A002654(n+1), A161951(n+1)))`
-/

namespace A343220.P3844762918190960169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A002654 (n + 1)) (A161951 (n + 1)))

end

end A343220.P3844762918190960169

/-! ## A343220.P17018146542146177073

`A335449(n+1)-A217831(A335484(3*n+5))`
-/

namespace A343220.P17018146542146177073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335449 (n + 1) - A217831 (A335484 (3 * n + 5)).toNat

end

end A343220.P17018146542146177073

/-!
# A343221: Number of iterations of x -> A003961(x) needed until A003415(x) < x, when starting from x=n, where A003415(x) gives the arithmetic derivative of x, and A003961 shifts its prime factorization one step towards the larger primes.

The programs for A343221, there is no canonical definition to state claims against.
-/

/-! ## A343221.P15106051294236020191

`A343222((A158229(n+1)+n)/2)`
-/

namespace A343221.P15106051294236020191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (SequenceMachineLib.roundAway ((A158229 (n + 1) + (n : ℤ) : ℚ) / 2)).toNat

end

end A343221.P15106051294236020191

/-! ## A343221.P3143983922306100656

`A343222(A138127(n+1))`
-/

namespace A343221.P3143983922306100656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A138127 (n + 1)).toNat

end

end A343221.P3143983922306100656

/-! ## A343221.P442623569867801192

`A343222(A158229(n+1)-A005408(n+1))`
-/

namespace A343221.P442623569867801192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A158229 (n + 1) - A005408 (n + 1)).toNat

end

end A343221.P442623569867801192

/-! ## A343221.P12581285102541708681

`A343222(A157961(n+1)-n)`
-/

namespace A343221.P12581285102541708681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A157961 (n + 1) - (n : ℤ)).toNat

end

end A343221.P12581285102541708681

/-! ## A343221.P638742651228301103

`A343222(A140580(n+1))`
-/

namespace A343221.P638742651228301103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A140580 (n + 1)).toNat

end

end A343221.P638742651228301103

/-! ## A343221.P16458224507615704162

`A343222((n+1)*A014963(n+1))`
-/

namespace A343221.P16458224507615704162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * A014963 (n + 1)).toNat

end

end A343221.P16458224507615704162

/-! ## A343221.P4243894908068784147

`A343222((n+1)²/A048671(n+1))`
-/

namespace A343221.P4243894908068784147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A048671 (n + 1) : ℚ))).toNat

end

end A343221.P4243894908068784147

/-! ## A343221.P14105276573693957756

`A343222(A013636(n+1))`
-/

namespace A343221.P14105276573693957756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A013636 (n + 1)).toNat

end

end A343221.P14105276573693957756

/-! ## A343221.P14309247611375189407

`A343222(A053024(n+1))`
-/

namespace A343221.P14309247611375189407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A053024 (n + 1)).toNat

end

end A343221.P14309247611375189407

/-! ## A343221.P6832473349911826764

`A343222((n+1)*A060264(n))`
-/

namespace A343221.P6832473349911826764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * A060264 n).toNat

end

end A343221.P6832473349911826764

/-! ## A343221.P9764052560515638241

`A343222((n+1)*p?[A004396(n)])`
-/

namespace A343221.P9764052560515638241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343221.P9764052560515638241

/-! ## A343221.P13240118948786481399

`A343222(lcm(n+1, p?[A004396(n)]))`
-/

namespace A343221.P13240118948786481399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (Int.lcm (n + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)))

end

end A343221.P13240118948786481399

/-! ## A343221.P2894305452103224773

`A343222((n+1)*p?[or(1, n)])`
-/

namespace A343221.P2894305452103224773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A343221.P2894305452103224773

/-! ## A343221.P5319907447573858622

`A343222((n+1)*p?[A000035(n+1)+n])`
-/

namespace A343221.P5319907447573858622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343221.P5319907447573858622

/-! ## A343221.P8673978090489309364

`A343222((n+1)*p?[n+1-A343222(n+1)])`
-/

namespace A343221.P8673978090489309364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A343222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343221.P8673978090489309364

/-! ## A343221.P4473802242492035157

`A343222((n+1)*p?[A343222(n+1)+n+1])`
-/

namespace A343221.P4473802242492035157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343221.P4473802242492035157

/-! ## A343221.P3219894432682619992

`A343222(A004928(n+1))`
-/

namespace A343221.P3219894432682619992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A004928 (n + 1)).toNat

end

end A343221.P3219894432682619992

/-! ## A343221.P6180093385359578031

`A343222((n+1)*p?[n-A284817(n+1)])`
-/

namespace A343221.P6180093385359578031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343221.P6180093385359578031

/-!
# A343222: Number of iterations of x -> A003961(x) needed until A003415(x) <= x, when starting from x=n, where A003415(x) gives the arithmetic derivative of x, and A003961 shifts its prime factorization one step towards the larger primes.

The programs for A343222, there is no canonical definition to state claims against.
-/

/-! ## A343222.P15881112050281657769

`A343221(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A343222.P15881112050281657769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A343222.P15881112050281657769

/-! ## A343222.P10390878274455793016

`A343221(A048671(n+1))`
-/

namespace A343222.P10390878274455793016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (A048671 (n + 1)).toNat

end

end A343222.P10390878274455793016

/-! ## A343222.P7586392339446870079

`A343221((n+1)/A014963(n+1))`
-/

namespace A343222.P7586392339446870079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A343222.P7586392339446870079

/-! ## A343222.P2853076293849110795

`and(A105034(n), A337636(A317791(n+1)))`
-/

namespace A343222.P2853076293849110795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A105034 n) (A337636 (A317791 (n + 1)).toNat)

end

end A343222.P2853076293849110795

/-! ## A343222.P9556203632703337821

`A004524(A326190(n+1))%A159234(n+1)`
-/

namespace A343222.P9556203632703337821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004524 (A326190 (n + 1)).toNat) (A159234 (n + 1))

end

end A343222.P9556203632703337821

/-!
# A343223: a(n) = gcd(A003415(n), A003415(sigma(n))-n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A343223, the canonical program `A343223.P16005087766060085566` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343223 has offset 1).

The definition of A343223 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343223.P2053338188029488254

`gcd(A003415(n+1), A342926(n+1))`
-/

namespace A343223.P2053338188029488254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (n + 1)) (A342926 (n + 1))

end

end A343223.P2053338188029488254

namespace A343223

/-- `gcd(A003415(n+1), A342926(n+1))` -/
def P2053338188029488254.Spec : Prop :=
  ∀ n, (P2053338188029488254.a n : ℤ) = A343223 (n + 1)

end A343223

/-! ## A343223.P16005087766060085566

`gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343223

/-- `gcd(A003415(n+1), A003415(A000203(n+1))-(n+1))` -/
def P16005087766060085566.Spec : Prop :=
  ∀ n, (P16005087766060085566.a n : ℤ) = A343223 (n + 1)

theorem P16005087766060085566.correct : P16005087766060085566.Spec := by
  intro n
  simp only [A343223, Nat.add_sub_cancel]

end A343223

/-! ## A343223.P13942722692260637236

`gcd(∑[A258057(n)], A342926(n+1))`
-/

namespace A343223.P13942722692260637236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A342926 (n + 1))

end

end A343223.P13942722692260637236

namespace A343223

/-- `gcd(∑[A258057(n)], A342926(n+1))` -/
def P13942722692260637236.Spec : Prop :=
  ∀ n, (P13942722692260637236.a n : ℤ) = A343223 (n + 1)

end A343223

/-! ## A343223.P13116696612548942591

`gcd(A003415(A064987(n+1)/(n+1))-(n+1), A319703(2*(n+1)))`
-/

namespace A343223.P13116696612548942591
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat - (n + 1 : ℤ)) (A319703 (2 * (n + 1)))

end

end A343223.P13116696612548942591

namespace A343223

/-- `gcd(A003415(A064987(n+1)/(n+1))-(n+1), A319703(2*(n+1)))` -/
def P13116696612548942591.Spec : Prop :=
  ∀ n, (P13116696612548942591.a n : ℤ) = A343223 (n + 1)

end A343223

/-! ## A343223.P12008614182778088780

`gcd(A344026(A332221(n+1))-(n+1), A319703(2*(n+1)))`
-/

namespace A343223.P12008614182778088780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A344026 (A332221 (n + 1)).toNat - (n + 1 : ℤ)) (A319703 (2 * (n + 1)))

end

end A343223.P12008614182778088780

namespace A343223

/-- `gcd(A344026(A332221(n+1))-(n+1), A319703(2*(n+1)))` -/
def P12008614182778088780.Spec : Prop :=
  ∀ n, (P12008614182778088780.a n : ℤ) = A343223 (n + 1)

end A343223

/-!
# A343224: a(n) = sigma(n) - A003415(n), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A343224, the canonical program `A343224.P18101851413978261599` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343224 has offset 1).

The definition of A343224 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343224.P18101851413978261599

`A000203(n+1)-A003415(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343224

/-- `A000203(n+1)-A003415(n+1)` -/
def P18101851413978261599.Spec : Prop :=
  ∀ n, P18101851413978261599.a n = A343224 (n + 1)

theorem P18101851413978261599.correct : P18101851413978261599.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel]

end A343224

/-! ## A343224.P4178964125173999294

`1-A211991(n+1)+n`
-/

namespace A343224.P4178964125173999294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A211991 (n + 1) + (n : ℤ)

end

end A343224.P4178964125173999294

namespace A343224

/-- `1-A211991(n+1)+n` -/
def P4178964125173999294.Spec : Prop :=
  ∀ n, P4178964125173999294.a n = A343224 (n + 1)

theorem P4178964125173999294.correct : P4178964125173999294.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P4178964125173999294.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A211991, A211991.P15084257827643114560.a, A001065, A001065.P4097147489331274860.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P7540252413192832236

`A000203(n+1)-∑[A258057(n)]`
-/

namespace A343224.P7540252413192832236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343224.P7540252413192832236

namespace A343224

/-- `A000203(n+1)-∑[A258057(n)]` -/
def P7540252413192832236.Spec : Prop :=
  ∀ n, P7540252413192832236.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P814241679805882313

`Δ[A160664(n)]-A003415(n+1)`
-/

namespace A343224.P814241679805882313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003415 (n + 1)

end

end A343224.P814241679805882313

namespace A343224

/-- `Δ[A160664(n)]-A003415(n+1)` -/
def P814241679805882313.Spec : Prop :=
  ∀ n, P814241679805882313.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P15879967309453384091

`A001065(n+1)-A168036(n+1)`
-/

namespace A343224.P15879967309453384091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A168036 (n + 1)

end

end A343224.P15879967309453384091

namespace A343224

/-- `A001065(n+1)-A168036(n+1)` -/
def P15879967309453384091.Spec : Prop :=
  ∀ n, P15879967309453384091.a n = A343224 (n + 1)

theorem P15879967309453384091.correct : P15879967309453384091.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P15879967309453384091.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A168036, A168036.P2098310487666722677.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P8098307553275463608

`A091818(n+1)-A345001(n+1)`
-/

namespace A343224.P8098307553275463608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A345001 (n + 1)

end

end A343224.P8098307553275463608

namespace A343224

/-- `A091818(n+1)-A345001(n+1)` -/
def P8098307553275463608.Spec : Prop :=
  ∀ n, P8098307553275463608.a n = A343224 (n + 1)

theorem P8098307553275463608.correct : P8098307553275463608.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P8098307553275463608.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A091818, A091818.P1536144604709334989.a, A345001, A345001.P11556338326385216766.a, A001065, A001065.P4097147489331274860.a, A168036, A168036.P2098310487666722677.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P9851705978152164552

`A348937(n+1)-A286385(n+1)`
-/

namespace A343224.P9851705978152164552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348937 (n + 1) - A286385 (n + 1)

end

end A343224.P9851705978152164552

namespace A343224

/-- `A348937(n+1)-A286385(n+1)` -/
def P9851705978152164552.Spec : Prop :=
  ∀ n, P9851705978152164552.a n = A343224 (n + 1)

theorem P9851705978152164552.correct : P9851705978152164552.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P9851705978152164552.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A286385, A286385.P7583078268767377745.a, A348937, A348937.P9014571055681436291.a, A003961, A003961.P5996473960037614004.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P15272747668551087572

`A001065(n+1)+∑[1-A258057(n)]`
-/

namespace A343224.P15272747668551087572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343224.P15272747668551087572

namespace A343224

/-- `A001065(n+1)+∑[1-A258057(n)]` -/
def P15272747668551087572.Spec : Prop :=
  ∀ n, P15272747668551087572.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P3279912268250741419

`A033880(n+1)+∑[2-A258057(n)]`
-/

namespace A343224.P3279912268250741419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343224.P3279912268250741419

namespace A343224

/-- `A033880(n+1)+∑[2-A258057(n)]` -/
def P3279912268250741419.Spec : Prop :=
  ∀ n, P3279912268250741419.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P16793236216250625217

`∑[2-A258057(n)]-A033879(n+1)`
-/

namespace A343224.P16793236216250625217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033879 (n + 1)

end

end A343224.P16793236216250625217

namespace A343224

/-- `∑[2-A258057(n)]-A033879(n+1)` -/
def P16793236216250625217.Spec : Prop :=
  ∀ n, P16793236216250625217.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P1619078596015302530

`A039653(n+1)+1-A003415(n+1)`
-/

namespace A343224.P1619078596015302530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + (1 - A003415 (n + 1))

end

end A343224.P1619078596015302530

namespace A343224

/-- `A039653(n+1)+1-A003415(n+1)` -/
def P1619078596015302530.Spec : Prop :=
  ∀ n, P1619078596015302530.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P8156763674819290384

`2*A001065(n+1)-A345001(n+1)`
-/

namespace A343224.P8156763674819290384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A345001 (n + 1)

end

end A343224.P8156763674819290384

namespace A343224

/-- `2*A001065(n+1)-A345001(n+1)` -/
def P8156763674819290384.Spec : Prop :=
  ∀ n, P8156763674819290384.a n = A343224 (n + 1)

theorem P8156763674819290384.correct : P8156763674819290384.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P8156763674819290384.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A345001, A345001.P11556338326385216766.a, A168036, A168036.P2098310487666722677.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P14002011188674803795

`1-(A129283(n+1)-A000203(n+1))+n`
-/

namespace A343224.P14002011188674803795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A129283 (n + 1) - A000203 (n + 1)) + (n : ℤ)

end

end A343224.P14002011188674803795

namespace A343224

/-- `1-(A129283(n+1)-A000203(n+1))+n` -/
def P14002011188674803795.Spec : Prop :=
  ∀ n, P14002011188674803795.a n = A343224 (n + 1)

theorem P14002011188674803795.correct : P14002011188674803795.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P14002011188674803795.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P13193116825796453789

`Δ[A160664(n)-A003415(n)]-A003415(n)`
-/

namespace A343224.P13193116825796453789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n - A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A003415 n

end

end A343224.P13193116825796453789

namespace A343224

/-- `Δ[A160664(n)-A003415(n)]-A003415(n)` -/
def P13193116825796453789.Spec : Prop :=
  ∀ n, P13193116825796453789.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P9926974314873594586

`A066959(n+1)-(A186170(n+1)+A003415(n+1))`
-/

namespace A343224.P9926974314873594586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066959 (n + 1) - (A186170 (n + 1) + A003415 (n + 1))

end

end A343224.P9926974314873594586

namespace A343224

/-- `A066959(n+1)-(A186170(n+1)+A003415(n+1))` -/
def P9926974314873594586.Spec : Prop :=
  ∀ n, P9926974314873594586.a n = A343224 (n + 1)

theorem P9926974314873594586.correct : P9926974314873594586.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P9926974314873594586.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A066959, A066959.P15004998191062164825.a, A186170, A186170.P11353951173779098323.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P6960332893768035613

`A003961(n+1)-(A286385(n+1)+A003415(n+1))`
-/

namespace A343224.P6960332893768035613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) - (A286385 (n + 1) + A003415 (n + 1))

end

end A343224.P6960332893768035613

namespace A343224

/-- `A003961(n+1)-(A286385(n+1)+A003415(n+1))` -/
def P6960332893768035613.Spec : Prop :=
  ∀ n, P6960332893768035613.a n = A343224 (n + 1)

theorem P6960332893768035613.correct : P6960332893768035613.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P6960332893768035613.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A252749, A252749.P15054942815197957636.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P3643040826917167796

`A000203(n+1)+A348937(n+1)-A003961(n+1)`
-/

namespace A343224.P3643040826917167796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A348937 (n + 1) - A003961 (n + 1))

end

end A343224.P3643040826917167796

namespace A343224

/-- `A000203(n+1)+A348937(n+1)-A003961(n+1)` -/
def P3643040826917167796.Spec : Prop :=
  ∀ n, P3643040826917167796.a n = A343224 (n + 1)

theorem P3643040826917167796.correct : P3643040826917167796.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P3643040826917167796.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A348937, A348937.P9014571055681436291.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A252749, A252749.P15054942815197957636.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P5385334523189976091

`A000203(n+1)-(A300252(n+1)+A300251(n+1))`
-/

namespace A343224.P5385334523189976091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A300252 (n + 1) + A300251 (n + 1))

end

end A343224.P5385334523189976091

namespace A343224

/-- `A000203(n+1)-(A300252(n+1)+A300251(n+1))` -/
def P5385334523189976091.Spec : Prop :=
  ∀ n, P5385334523189976091.a n = A343224 (n + 1)

theorem P5385334523189976091.correct : P5385334523189976091.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P5385334523189976091.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A300252, A300252.P5081431345107026110.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-! ## A343224.P2417675106435945638

`A336853(n+1)-(A286385(n+1)+A168036(n+1))`
-/

namespace A343224.P2417675106435945638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (n + 1) - (A286385 (n + 1) + A168036 (n + 1))

end

end A343224.P2417675106435945638

namespace A343224

/-- `A336853(n+1)-(A286385(n+1)+A168036(n+1))` -/
def P2417675106435945638.Spec : Prop :=
  ∀ n, P2417675106435945638.a n = A343224 (n + 1)

end A343224

/-! ## A343224.P7319583320386097319

`A345001(n+1)-A168036(n+1)-A168036(n+1)`
-/

namespace A343224.P7319583320386097319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345001 (n + 1) - A168036 (n + 1) - A168036 (n + 1)

end

end A343224.P7319583320386097319

namespace A343224

/-- `A345001(n+1)-A168036(n+1)-A168036(n+1)` -/
def P7319583320386097319.Spec : Prop :=
  ∀ n, P7319583320386097319.a n = A343224 (n + 1)

theorem P7319583320386097319.correct : P7319583320386097319.Spec := by
  intro n
  simp only [A343224, Nat.add_sub_cancel, A343224.P7319583320386097319.a, A343224.P18101851413978261599.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A168036, A168036.P2098310487666722677.a, A345001, A345001.P11556338326385216766.a, A001065, A001065.P4097147489331274860.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343224

/-!
# A343225: Primitive terms of A343218. Numbers k such that A343220(k) = 1.

The programs for A343225, there is no canonical definition to state claims against.
-/

/-! ## A343225.P1639347972790227356

`eq[1, A343220(n+1)]+1`
-/

namespace A343225.P1639347972790227356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A343225.P1639347972790227356

/-! ## A343225.P11306508825552511184

`eq[1, A343220(A028310(n))]`
-/

namespace A343225.P11306508825552511184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343225.P11306508825552511184

/-! ## A343225.P2478262189144644267

`A020725(eq[1, A343220(n+1)])`
-/

namespace A343225.P2478262189144644267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343225.P2478262189144644267

/-! ## A343225.P8193023756249780763

`A065475(eq[1, A343220(n+1)])`
-/

namespace A343225.P8193023756249780763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343225.P8193023756249780763

/-! ## A343225.P13233542490607831547

`A114637(eq[1, A343220(n+1)])`
-/

namespace A343225.P13233542490607831547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343225.P13233542490607831547

/-! ## A343225.P16234051245328142882

`eq[1, A343220(A233583(n+1))]`
-/

namespace A343225.P16234051245328142882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343220 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343225.P16234051245328142882

/-!
# A343226: a(n) = gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A343226, the canonical program `A343226.P5865503827985673324` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343226 has offset 1).

The definition of A343226 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343226.P13126474136555164669

`A000203(n+1)/A343227(n+1)`
-/

namespace A343226.P13126474136555164669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A343227 (n + 1) : ℚ)

end

end A343226.P13126474136555164669

namespace A343226

/-- `A000203(n+1)/A343227(n+1)` -/
def P13126474136555164669.Spec : Prop :=
  ∀ n, P13126474136555164669.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P9521065917047062783

`gcd(A000203(n+1), A129283(n+1))`
-/

namespace A343226.P9521065917047062783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A129283 (n + 1))

end

end A343226.P9521065917047062783

namespace A343226

/-- `gcd(A000203(n+1), A129283(n+1))` -/
def P9521065917047062783.Spec : Prop :=
  ∀ n, (P9521065917047062783.a n : ℤ) = A343226 (n + 1)

theorem P9521065917047062783.correct : P9521065917047062783.Spec := by
  intro n
  simp only [A343226, Nat.add_sub_cancel, A343226.P9521065917047062783.a, A343226.P5865503827985673324.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A129283, A129283.P3962818557550655141.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343226

/-! ## A343226.P5865503827985673324

`gcd(A000203(n+1), n+1+A003415(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343226

/-- `gcd(A000203(n+1), n+1+A003415(n+1))` -/
def P5865503827985673324.Spec : Prop :=
  ∀ n, (P5865503827985673324.a n : ℤ) = A343226 (n + 1)

theorem P5865503827985673324.correct : P5865503827985673324.Spec := by
  intro n
  simp only [A343226, Nat.add_sub_cancel]

end A343226

/-! ## A343226.P14446026535822481993

`A129283(n+1)/A345059(n+1)`
-/

namespace A343226.P14446026535822481993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) : ℚ) / (A345059 (n + 1) : ℚ)

end

end A343226.P14446026535822481993

namespace A343226

/-- `A129283(n+1)/A345059(n+1)` -/
def P14446026535822481993.Spec : Prop :=
  ∀ n, P14446026535822481993.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P9952520885261986486

`gcd(∑[A340793(n+1)], A211991(n+1))`
-/

namespace A343226.P9952520885261986486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A211991 (n + 1))

end

end A343226.P9952520885261986486

namespace A343226

/-- `gcd(∑[A340793(n+1)], A211991(n+1))` -/
def P9952520885261986486.Spec : Prop :=
  ∀ n, (P9952520885261986486.a n : ℤ) = A343226 (n + 1)

end A343226

/-! ## A343226.P6301487712496962244

`A245092(2*n+1)/A343227(n+1)`
-/

namespace A343226.P6301487712496962244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) / (A343227 (n + 1) : ℚ)

end

end A343226.P6301487712496962244

namespace A343226

/-- `A245092(2*n+1)/A343227(n+1)` -/
def P6301487712496962244.Spec : Prop :=
  ∀ n, P6301487712496962244.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P1526646697309362179

`(A001065(n+1)+n+1)/A343227(n+1)`
-/

namespace A343226.P1526646697309362179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ) : ℚ) / (A343227 (n + 1) : ℚ)

end

end A343226.P1526646697309362179

namespace A343226

/-- `(A001065(n+1)+n+1)/A343227(n+1)` -/
def P1526646697309362179.Spec : Prop :=
  ∀ n, P1526646697309362179.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P9728051312001273836

`(A211991(n+1)+A000203(n+1))/A345059(n+1)`
-/

namespace A343226.P9728051312001273836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211991 (n + 1) + A000203 (n + 1) : ℚ) / (A345059 (n + 1) : ℚ)

end

end A343226.P9728051312001273836

namespace A343226

/-- `(A211991(n+1)+A000203(n+1))/A345059(n+1)` -/
def P9728051312001273836.Spec : Prop :=
  ∀ n, P9728051312001273836.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P6266156260414481137

`(A065387(n+1)-A000010(n+1))/A343227(n+1)`
-/

namespace A343226.P6266156260414481137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065387 (n + 1) - A000010 (n + 1) : ℚ) / (A343227 (n + 1) : ℚ)

end

end A343226.P6266156260414481137

namespace A343226

/-- `(A065387(n+1)-A000010(n+1))/A343227(n+1)` -/
def P6266156260414481137.Spec : Prop :=
  ∀ n, P6266156260414481137.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P14924654835495823275

`(A129283(n+1)-A211991(n+1))/A343227(n+1)`
-/

namespace A343226.P14924654835495823275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) - A211991 (n + 1) : ℚ) / (A343227 (n + 1) : ℚ)

end

end A343226.P14924654835495823275

namespace A343226

/-- `(A129283(n+1)-A211991(n+1))/A343227(n+1)` -/
def P14924654835495823275.Spec : Prop :=
  ∀ n, P14924654835495823275.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P3661224316531434326

`(A003959(n+1)-A348970(n+1))/A345059(n+1)`
-/

namespace A343226.P3661224316531434326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003959 (n + 1) - A348970 (n + 1) : ℚ) / (A345059 (n + 1) : ℚ)

end

end A343226.P3661224316531434326

namespace A343226

/-- `(A003959(n+1)-A348970(n+1))/A345059(n+1)` -/
def P3661224316531434326.Spec : Prop :=
  ∀ n, P3661224316531434326.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P4988325053932658306

`A348972(n+1)/A345059(n+1)*A348973(n+1)`
-/

namespace A343226.P4988325053932658306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348972 (n + 1) : ℚ) / (A345059 (n + 1) : ℚ) * (A348973 (n + 1) : ℚ)

end

end A343226.P4988325053932658306

namespace A343226

/-- `A348972(n+1)/A345059(n+1)*A348973(n+1)` -/
def P4988325053932658306.Spec : Prop :=
  ∀ n, P4988325053932658306.a n = (A343226 (n + 1) : ℚ)

end A343226

/-! ## A343226.P4277365626535947367

`A245093(∑[n+1])/A343227(n+1)`
-/

namespace A343226.P4277365626535947367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A343227 (n + 1) : ℚ)

end

end A343226.P4277365626535947367

namespace A343226

/-- `A245093(∑[n+1])/A343227(n+1)` -/
def P4277365626535947367.Spec : Prop :=
  ∀ n, P4277365626535947367.a n = (A343226 (n + 1) : ℚ)

end A343226

/-!
# A343227: a(n) = sigma(n) / gcd(sigma(n), n+A003415(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A343227, the canonical program `A343227.P12175328120246538268` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343227 has offset 1).

The definition of A343227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343226, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343227.P12175328120246538268

`A000203(n+1)/A343226(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A343227

/-- `A000203(n+1)/A343226(n+1)` -/
def P12175328120246538268.Spec : Prop :=
  ∀ n, P12175328120246538268.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P11430676918177575771

`A000203(n+1)/gcd(A000203(n+1), n+1+A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A343227.P11430676918177575771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) ((n + 1 : ℤ) + A003415 (n + 1)) : ℚ)

end

end A343227.P11430676918177575771

namespace A343227

/-- `A000203(n+1)/gcd(A000203(n+1), n+1+A003415(n+1))` -/
def P11430676918177575771.Spec : Prop :=
  ∀ n, P11430676918177575771.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P15753755147795375744

`abs(Δ[A330725(n)]/A343226(n+1))`
-/

namespace A343227.P15753755147795375744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n : ℚ) / (A343226 (n + 1) : ℚ)|

end

end A343227.P15753755147795375744

namespace A343227

/-- `abs(Δ[A330725(n)]/A343226(n+1))` -/
def P15753755147795375744.Spec : Prop :=
  ∀ n, P15753755147795375744.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P12506004661710975709

`(A088580(n+1)-1)/A343226(n+1)`
-/

namespace A343227.P12506004661710975709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) - 1 : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P12506004661710975709

namespace A343227

/-- `(A088580(n+1)-1)/A343226(n+1)` -/
def P12506004661710975709.Spec : Prop :=
  ∀ n, P12506004661710975709.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P11093552115205313724

`A245092(2*n+1)/A343226(n+1)`
-/

namespace A343227.P11093552115205313724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P11093552115205313724

namespace A343227

/-- `A245092(2*n+1)/A343226(n+1)` -/
def P11093552115205313724.Spec : Prop :=
  ∀ n, P11093552115205313724.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P7787568687421340058

`(A001065(n+1)+n+1)/A343226(n+1)`
-/

namespace A343227.P7787568687421340058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + (n + 1 : ℤ) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P7787568687421340058

namespace A343227

/-- `(A001065(n+1)+n+1)/A343226(n+1)` -/
def P7787568687421340058.Spec : Prop :=
  ∀ n, P7787568687421340058.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P14222482869200074698

`(A051612(n+1)+A000010(n+1))/A343226(n+1)`
-/

namespace A343227.P14222482869200074698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051612 (n + 1) + A000010 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P14222482869200074698

namespace A343227

/-- `(A051612(n+1)+A000010(n+1))/A343226(n+1)` -/
def P14222482869200074698.Spec : Prop :=
  ∀ n, P14222482869200074698.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P5355129579812430661

`(A343224(n+1)+A003415(n+1))/A343226(n+1)`
-/

namespace A343227.P5355129579812430661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343224 (n + 1) + A003415 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P5355129579812430661

namespace A343227

/-- `(A343224(n+1)+A003415(n+1))/A343226(n+1)` -/
def P5355129579812430661.Spec : Prop :=
  ∀ n, P5355129579812430661.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P970697481541088661

`(A129283(n+1)-A211991(n+1))/A343226(n+1)`
-/

namespace A343227.P970697481541088661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129283 (n + 1) - A211991 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P970697481541088661

namespace A343227

/-- `(A129283(n+1)-A211991(n+1))/A343226(n+1)` -/
def P970697481541088661.Spec : Prop :=
  ∀ n, P970697481541088661.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P13372892632216816680

`A345059(n+1)-A211991(n+1)/A343226(n+1)`
-/

namespace A343227.P13372892632216816680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345059 (n + 1) : ℚ) - (A211991 (n + 1) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P13372892632216816680

namespace A343227

/-- `A345059(n+1)-A211991(n+1)/A343226(n+1)` -/
def P13372892632216816680.Spec : Prop :=
  ∀ n, P13372892632216816680.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P8289484007775005286

`A000203(n+1)/A129283(n+1)*A345059(n+1)`
-/

namespace A343227.P8289484007775005286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A129283 (n + 1) : ℚ) * (A345059 (n + 1) : ℚ)

end

end A343227.P8289484007775005286

namespace A343227

/-- `A000203(n+1)/A129283(n+1)*A345059(n+1)` -/
def P8289484007775005286.Spec : Prop :=
  ∀ n, P8289484007775005286.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P11848615629380090063

`A000203(n+1)/gcd(A000203(n+1), A211991(n+1))`
-/

namespace A343227.P11848615629380090063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (Int.gcd (A000203 (n + 1)) (A211991 (n + 1)) : ℚ)

end

end A343227.P11848615629380090063

namespace A343227

/-- `A000203(n+1)/gcd(A000203(n+1), A211991(n+1))` -/
def P11848615629380090063.Spec : Prop :=
  ∀ n, P11848615629380090063.a n = (A343227 (n + 1) : ℚ)

end A343227

/-! ## A343227.P4486607105361905068

`A245093(∑[n+1])/A343226(n+1)`
-/

namespace A343227.P4486607105361905068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A343226 (n + 1) : ℚ)

end

end A343227.P4486607105361905068

namespace A343227

/-- `A245093(∑[n+1])/A343226(n+1)` -/
def P4486607105361905068.Spec : Prop :=
  ∀ n, P4486607105361905068.a n = (A343227 (n + 1) : ℚ)

end A343227

/-!
# A343228: A binary encoding of the digits "+1" in balanced ternary representation of n.

The programs for A343228, the canonical program `A343228.P395779845011442952` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343228 has offset 0).

The definition of A343228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060372, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343228.P395779845011442952

`A289831(A060372(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A343228

/-- `A289831(A060372(n))` -/
def P395779845011442952.Spec : Prop :=
  ∀ n, P395779845011442952.a n = A343228 n

theorem P395779845011442952.correct : P395779845011442952.Spec := by
  intro n
  simp only [A343228]

end A343228

/-! ## A343228.P7025173289464986715

`A065361(A060373(n)+n)`
-/

namespace A343228.P7025173289464986715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A060373 n + (n : ℤ)).toNat

end

end A343228.P7025173289464986715

namespace A343228

/-- `A065361(A060373(n)+n)` -/
def P7025173289464986715.Spec : Prop :=
  ∀ n, P7025173289464986715.a n = A343228 n

end A343228

/-! ## A343228.P17105521581715782440

`A289813(A060373(n)+n)`
-/

namespace A343228.P17105521581715782440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A060373 n + (n : ℤ)).toNat

end

end A343228.P17105521581715782440

namespace A343228

/-- `A289813(A060373(n)+n)` -/
def P17105521581715782440.Spec : Prop :=
  ∀ n, P17105521581715782440.a n = A343228 n

end A343228

/-! ## A343228.P15834215679780403076

`A289831(A060373(n)+n)`
-/

namespace A343228.P15834215679780403076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060373 n + (n : ℤ)).toNat

end

end A343228.P15834215679780403076

namespace A343228

/-- `A289831(A060373(n)+n)` -/
def P15834215679780403076.Spec : Prop :=
  ∀ n, P15834215679780403076.a n = A343228 n

end A343228

/-! ## A343228.P13822759521168556480

`A343231(n)-A343229(n)`
-/

namespace A343228.P13822759521168556480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n - A343229 n

end

end A343228.P13822759521168556480

namespace A343228

/-- `A343231(n)-A343229(n)` -/
def P13822759521168556480.Spec : Prop :=
  ∀ n, P13822759521168556480.a n = A343228 n

theorem P13822759521168556480.correct : P13822759521168556480.Spec := by
  intro n
  simp only [A343228, Nat.add_sub_cancel, A343228.P13822759521168556480.a, A343228.P395779845011442952.a, A060372, A060372.P4864824408191301632.a, A289831, A289831.P1355285298190598776.a, A343229, A343229.P18291780148970798749.a, A343231, A343231.P10441655631567260462.a, A060373, A060373.P1941735290763042490.a, A117967, A117967.P4491383601677545787.a, A289813, A289813.P9011554254818249259.a, A289814, A289814.P11371932108795153936.a, A300222, A300222.P16406266268068730929.a, A004488, A004488.P15486159278781190577.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A168237, A168237.P12346762420407185560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343228

/-! ## A343228.P17439964020699670183

`and(A065361(n), A343231(n))`
-/

namespace A343228.P17439964020699670183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065361 n) (A343231 n)

end

end A343228.P17439964020699670183

namespace A343228

/-- `and(A065361(n), A343231(n))` -/
def P17439964020699670183.Spec : Prop :=
  ∀ n, P17439964020699670183.a n = A343228 n

end A343228

/-! ## A343228.P6149042466847664565

`A065361((A060374(n)+n)/2)`
-/

namespace A343228.P6149042466847664565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (SequenceMachineLib.roundAway ((A060374 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A343228.P6149042466847664565

namespace A343228

/-- `A065361((A060374(n)+n)/2)` -/
def P6149042466847664565.Spec : Prop :=
  ∀ n, P6149042466847664565.a n = A343228 n

end A343228

/-! ## A343228.P1273287461580147523

`A343231(n)-A289813(A060373(n))`
-/

namespace A343228.P1273287461580147523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n - A289813 (A060373 n).toNat

end

end A343228.P1273287461580147523

namespace A343228

/-- `A343231(n)-A289813(A060373(n))` -/
def P1273287461580147523.Spec : Prop :=
  ∀ n, P1273287461580147523.a n = A343228 n

end A343228

/-! ## A343228.P424906632741200592

`A343231(n)-A343231(A060372(n)-n)`
-/

namespace A343228.P424906632741200592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n - A343231 (A060372 n - (n : ℤ)).toNat

end

end A343228.P424906632741200592

namespace A343228

/-- `A343231(n)-A343231(A060372(n)-n)` -/
def P424906632741200592.Spec : Prop :=
  ∀ n, P424906632741200592.a n = A343228 n

end A343228

/-! ## A343228.P12556001329597626613

`A289831(2*n)-A289814(n)`
-/

namespace A343228.P12556001329597626613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (2 * n) - A289814 n

end

end A343228.P12556001329597626613

namespace A343228

/-- `A289831(2*n)-A289814(n)` -/
def P12556001329597626613.Spec : Prop :=
  ∀ n, P12556001329597626613.a n = A343228 n

end A343228

/-! ## A343228.P4655721227048938665

`A343231(A060373(n)+n)`
-/

namespace A343228.P4655721227048938665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A060373 n + (n : ℤ)).toNat

end

end A343228.P4655721227048938665

namespace A343228

/-- `A343231(A060373(n)+n)` -/
def P4655721227048938665.Spec : Prop :=
  ∀ n, P4655721227048938665.a n = A343228 n

end A343228

/-! ## A343228.P17394502492765489688

`A371256(A060373(n)+n)`
-/

namespace A343228.P17394502492765489688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A060373 n + (n : ℤ)).toNat

end

end A343228.P17394502492765489688

namespace A343228

/-- `A371256(A060373(n)+n)` -/
def P17394502492765489688.Spec : Prop :=
  ∀ n, P17394502492765489688.a n = A343228 n

end A343228

/-! ## A343228.P8702651616803052283

`A343231(A060372(2*n-n))`
-/

namespace A343228.P8702651616803052283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A060372 (2 * n - n)).toNat

end

end A343228.P8702651616803052283

namespace A343228

/-- `A343231(A060372(2*n-n))` -/
def P8702651616803052283.Spec : Prop :=
  ∀ n, P8702651616803052283.a n = A343228 n

end A343228

/-! ## A343228.P17597718127388420981

`A343231((A060374(n)+n)/2)`
-/

namespace A343228.P17597718127388420981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (SequenceMachineLib.roundAway ((A060374 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A343228.P17597718127388420981

namespace A343228

/-- `A343231((A060374(n)+n)/2)` -/
def P17597718127388420981.Spec : Prop :=
  ∀ n, P17597718127388420981.a n = A343228 n

end A343228

/-! ## A343228.P13762129631564590930

`A289813(A117967(n))`
-/

namespace A343228.P13762129631564590930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A117967 n).toNat

end

end A343228.P13762129631564590930

namespace A343228

/-- `A289813(A117967(n))` -/
def P13762129631564590930.Spec : Prop :=
  ∀ n, P13762129631564590930.a n = A343228 n

end A343228

/-! ## A343228.P15455411277050429288

`A289814(2*A060372(n))`
-/

namespace A343228.P15455411277050429288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (2 * A060372 n).toNat

end

end A343228.P15455411277050429288

namespace A343228

/-- `A289814(2*A060372(n))` -/
def P15455411277050429288.Spec : Prop :=
  ∀ n, P15455411277050429288.a n = A343228 n

end A343228

/-! ## A343228.P17439177191332530901

`A371256(2*A060372(n))`
-/

namespace A343228.P17439177191332530901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (2 * A060372 n).toNat

end

end A343228.P17439177191332530901

namespace A343228

/-- `A371256(2*A060372(n))` -/
def P17439177191332530901.Spec : Prop :=
  ∀ n, P17439177191332530901.a n = A343228 n

end A343228

/-! ## A343228.P1065789273258739677

`A289814(lt[A333773(n), 1])`
-/

namespace A343228.P1065789273258739677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A343228.P1065789273258739677

namespace A343228

/-- `A289814(lt[A333773(n), 1])` -/
def P1065789273258739677.Spec : Prop :=
  ∀ n, P1065789273258739677.a n = A343228 n

end A343228

/-! ## A343228.P11924221246349906831

`A289831(A060374(n)+n)`
-/

namespace A343228.P11924221246349906831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060374 n + (n : ℤ)).toNat

end

end A343228.P11924221246349906831

namespace A343228

/-- `A289831(A060374(n)+n)` -/
def P11924221246349906831.Spec : Prop :=
  ∀ n, P11924221246349906831.a n = A343228 n

end A343228

/-! ## A343228.P1245560868971749367

`A289814(A117967(n)+n)`
-/

namespace A343228.P1245560868971749367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A117967 n + (n : ℤ)).toNat

end

end A343228.P1245560868971749367

namespace A343228

/-- `A289814(A117967(n)+n)` -/
def P1245560868971749367.Spec : Prop :=
  ∀ n, P1245560868971749367.a n = A343228 n

end A343228

/-!
# A343229: A binary encoding of the digits "-1" in balanced ternary representation of n.

The programs for A343229, the canonical program `A343229.P18291780148970798749` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343229 has offset 0).

The definition of A343229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060373, A289831, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343229.P18291780148970798749

`A289831(A060373(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A343229

/-- `A289831(A060373(n))` -/
def P18291780148970798749.Spec : Prop :=
  ∀ n, P18291780148970798749.a n = A343229 n

theorem P18291780148970798749.correct : P18291780148970798749.Spec := by
  intro n
  simp only [A343229]

end A343229

/-! ## A343229.P17103914270069047973

`A289814(2*A060373(n))`
-/

namespace A343229.P17103914270069047973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (2 * A060373 n).toNat

end

end A343229.P17103914270069047973

namespace A343229

/-- `A289814(2*A060373(n))` -/
def P17103914270069047973.Spec : Prop :=
  ∀ n, P17103914270069047973.a n = A343229 n

end A343229

/-! ## A343229.P4518351270645225940

`A371256(2*A060373(n))`
-/

namespace A343229.P4518351270645225940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (2 * A060373 n).toNat

end

end A343229.P4518351270645225940

namespace A343229

/-- `A371256(2*A060373(n))` -/
def P4518351270645225940.Spec : Prop :=
  ∀ n, P4518351270645225940.a n = A343229 n

end A343229

/-! ## A343229.P14109690658726246333

`A065361(A060372(n)-n)`
-/

namespace A343229.P14109690658726246333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A060372 n - (n : ℤ)).toNat

end

end A343229.P14109690658726246333

namespace A343229

/-- `A065361(A060372(n)-n)` -/
def P14109690658726246333.Spec : Prop :=
  ∀ n, P14109690658726246333.a n = A343229 n

end A343229

/-! ## A343229.P12690074066065389787

`A289813(A060372(n)-n)`
-/

namespace A343229.P12690074066065389787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A060372 n - (n : ℤ)).toNat

end

end A343229.P12690074066065389787

namespace A343229

/-- `A289813(A060372(n)-n)` -/
def P12690074066065389787.Spec : Prop :=
  ∀ n, P12690074066065389787.a n = A343229 n

end A343229

/-! ## A343229.P15687305760747448176

`A289831(A060372(n)-n)`
-/

namespace A343229.P15687305760747448176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060372 n - (n : ℤ)).toNat

end

end A343229.P15687305760747448176

namespace A343229

/-- `A289831(A060372(n)-n)` -/
def P15687305760747448176.Spec : Prop :=
  ∀ n, P15687305760747448176.a n = A343229 n

end A343229

/-! ## A343229.P15109399307270626431

`A289831(A060374(n)-n)`
-/

namespace A343229.P15109399307270626431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A060374 n - (n : ℤ)).toNat

end

end A343229.P15109399307270626431

namespace A343229

/-- `A289831(A060374(n)-n)` -/
def P15109399307270626431.Spec : Prop :=
  ∀ n, P15109399307270626431.a n = A343229 n

end A343229

/-! ## A343229.P9575353333175529234

`A343228(A060372(n)-n)`
-/

namespace A343229.P9575353333175529234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A060372 n - (n : ℤ)).toNat

end

end A343229.P9575353333175529234

namespace A343229

/-- `A343228(A060372(n)-n)` -/
def P9575353333175529234.Spec : Prop :=
  ∀ n, P9575353333175529234.a n = A343229 n

end A343229

/-! ## A343229.P10701055631738622000

`A343231(A060372(n)-n)`
-/

namespace A343229.P10701055631738622000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A060372 n - (n : ℤ)).toNat

end

end A343229.P10701055631738622000

namespace A343229

/-- `A343231(A060372(n)-n)` -/
def P10701055631738622000.Spec : Prop :=
  ∀ n, P10701055631738622000.a n = A343229 n

end A343229

/-! ## A343229.P6265824703747030123

`A371256(A060372(n)-n)`
-/

namespace A343229.P6265824703747030123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A060372 n - (n : ℤ)).toNat

end

end A343229.P6265824703747030123

namespace A343229

/-- `A371256(A060372(n)-n)` -/
def P6265824703747030123.Spec : Prop :=
  ∀ n, P6265824703747030123.a n = A343229 n

end A343229

/-! ## A343229.P2733841638967369677

`A371256(A060374(n)-n)`
-/

namespace A343229.P2733841638967369677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (A060374 n - (n : ℤ)).toNat

end

end A343229.P2733841638967369677

namespace A343229

/-- `A371256(A060374(n)-n)` -/
def P2733841638967369677.Spec : Prop :=
  ∀ n, P2733841638967369677.a n = A343229 n

end A343229

/-! ## A343229.P17373463223881416462

`A343231(n)-A343228(n)`
-/

namespace A343229.P17373463223881416462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 n - A343228 n

end

end A343229.P17373463223881416462

namespace A343229

/-- `A343231(n)-A343228(n)` -/
def P17373463223881416462.Spec : Prop :=
  ∀ n, P17373463223881416462.a n = A343229 n

theorem P17373463223881416462.correct : P17373463223881416462.Spec := by
  intro n
  simp only [A343229, Nat.add_sub_cancel, A343229.P17373463223881416462.a, A343229.P18291780148970798749.a, A060373, A060373.P1941735290763042490.a, A289831, A289831.P1355285298190598776.a, A343228, A343228.P395779845011442952.a, A343231, A343231.P10441655631567260462.a, A060372, A060372.P4864824408191301632.a, A289813, A289813.P9011554254818249259.a, A289814, A289814.P11371932108795153936.a, A004488, A004488.P15486159278781190577.a, A117967, A117967.P4491383601677545787.a, A300222, A300222.P16406266268068730929.a, A005836, A005836.P12367569128854000442.a, A059249, A059249.P4278260831633000860.a, A168237, A168237.P12346762420407185560.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343229

/-! ## A343229.P1408671430841401863

`A343228(A060373(n)+1)-1`
-/

namespace A343229.P1408671430841401863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A060373 n + 1).toNat - 1

end

end A343229.P1408671430841401863

namespace A343229

/-- `A343228(A060373(n)+1)-1` -/
def P1408671430841401863.Spec : Prop :=
  ∀ n, P1408671430841401863.a n = A343229 n

end A343229

/-! ## A343229.P11577576941625114234

`A289814(2*(A060372(n)-n))`
-/

namespace A343229.P11577576941625114234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (2 * (A060372 n - (n : ℤ))).toNat

end

end A343229.P11577576941625114234

namespace A343229

/-- `A289814(2*(A060372(n)-n))` -/
def P11577576941625114234.Spec : Prop :=
  ∀ n, P11577576941625114234.a n = A343229 n

end A343229

/-! ## A343229.P17606090157804745094

`A343228(A060373(2*n-n))`
-/

namespace A343229.P17606090157804745094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A060373 (2 * n - n)).toNat

end

end A343229.P17606090157804745094

namespace A343229

/-- `A343228(A060373(2*n-n))` -/
def P17606090157804745094.Spec : Prop :=
  ∀ n, P17606090157804745094.a n = A343229 n

end A343229

/-! ## A343229.P11725755566586397154

`A065361((A060374(n)-n)/2)`
-/

namespace A343229.P11725755566586397154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (SequenceMachineLib.roundAway ((A060374 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A343229.P11725755566586397154

namespace A343229

/-- `A065361((A060374(n)-n)/2)` -/
def P11725755566586397154.Spec : Prop :=
  ∀ n, P11725755566586397154.a n = A343229 n

end A343229

/-! ## A343229.P8887867786507763463

`A343231((A060374(n)-n)/2)`
-/

namespace A343229.P8887867786507763463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (SequenceMachineLib.roundAway ((A060374 n - (n : ℤ) : ℚ) / 2)).toNat

end

end A343229.P8887867786507763463

namespace A343229

/-- `A343231((A060374(n)-n)/2)` -/
def P8887867786507763463.Spec : Prop :=
  ∀ n, P8887867786507763463.a n = A343229 n

end A343229

/-! ## A343229.P18010208871614335556

`A289814(A060373(n)+A060373(n))`
-/

namespace A343229.P18010208871614335556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A060373 n + A060373 n).toNat

end

end A343229.P18010208871614335556

namespace A343229

/-- `A289814(A060373(n)+A060373(n))` -/
def P18010208871614335556.Spec : Prop :=
  ∀ n, P18010208871614335556.a n = A343229 n

end A343229

/-! ## A343229.P14883788432105043953

`A289814(A338242(n))`
-/

namespace A343229.P14883788432105043953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A338242 n).toNat

end

end A343229.P14883788432105043953

namespace A343229

/-- `A289814(A338242(n))` -/
def P14883788432105043953.Spec : Prop :=
  ∀ n, P14883788432105043953.a n = A343229 n

end A343229

/-! ## A343229.P16579949865631116675

`A289814(A338243(n+1))`
-/

namespace A343229.P16579949865631116675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A338243 (n + 1)).toNat

end

end A343229.P16579949865631116675

namespace A343229

/-- `A289814(A338243(n+1))` -/
def P16579949865631116675.Spec : Prop :=
  ∀ n, P16579949865631116675.a n = A343229 n

end A343229

/-!
# A343230: A binary encoding of the digits "0" in balanced ternary representation of n.

The programs for A343230, the canonical program `A343230.P17749282856008221951` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343230 has offset 0).

The definition of A343230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343230.P1013390113045272303

`A352938(A368240(n))`
-/

namespace A343230.P1013390113045272303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352938 (A368240 n).toNat

end

end A343230.P1013390113045272303

namespace A343230

/-- `A352938(A368240(n))` -/
def P1013390113045272303.Spec : Prop :=
  ∀ n, P1013390113045272303.a n = A343230 n

end A343230

/-! ## A343230.P5430313792526116221

`A352938(A380182(n))`
-/

namespace A343230.P5430313792526116221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352938 (A380182 n).toNat

end

end A343230.P5430313792526116221

namespace A343230

/-- `A352938(A380182(n))` -/
def P5430313792526116221.Spec : Prop :=
  ∀ n, P5430313792526116221.a n = A343230 n

end A343230

/-! ## A343230.P6479091712688228034

`A003817(A343231(n))-A343231(n)`
-/

namespace A343230.P6479091712688228034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A343231 n).toNat - A343231 n

end

end A343230.P6479091712688228034

namespace A343230

/-- `A003817(A343231(n))-A343231(n)` -/
def P6479091712688228034.Spec : Prop :=
  ∀ n, P6479091712688228034.a n = A343230 n

end A343230

/-! ## A343230.P18442926457826774243

`A343231(A060374(n)-A343317(n))`
-/

namespace A343230.P18442926457826774243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A060374 n - A343317 n).toNat

end

end A343230.P18442926457826774243

namespace A343230

/-- `A343231(A060374(n)-A343317(n))` -/
def P18442926457826774243.Spec : Prop :=
  ∀ n, P18442926457826774243.a n = A343230 n

end A343230

/-! ## A343230.P14356134119859991211

`A086099(2*A343231(n))-A343231(n)`
-/

namespace A343230.P14356134119859991211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (2 * A343231 n).toNat - A343231 n

end

end A343230.P14356134119859991211

namespace A343230

/-- `A086099(2*A343231(n))-A343231(n)` -/
def P14356134119859991211.Spec : Prop :=
  ∀ n, P14356134119859991211.a n = A343230 n

end A343230

/-! ## A343230.P17749282856008221951

`A343229(A338246(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A343230

/-- `A343229(A338246(n))` -/
def P17749282856008221951.Spec : Prop :=
  ∀ n, P17749282856008221951.a n = A343230 n

theorem P17749282856008221951.correct : P17749282856008221951.Spec := by
  intro n
  simp only [A343230]

end A343230

/-! ## A343230.P6864157302778853266

`A343229(A338247(n))`
-/

namespace A343230.P6864157302778853266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (A338247 n).toNat

end

end A343230.P6864157302778853266

namespace A343230

/-- `A343229(A338247(n))` -/
def P6864157302778853266.Spec : Prop :=
  ∀ n, P6864157302778853266.a n = A343230 n

end A343230

/-! ## A343230.P3900544527863430879

`A343229(A343317(n))`
-/

namespace A343230.P3900544527863430879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 (A343317 n).toNat

end

end A343230.P3900544527863430879

namespace A343230

/-- `A343229(A343317(n))` -/
def P3900544527863430879.Spec : Prop :=
  ∀ n, P3900544527863430879.a n = A343230 n

end A343230

/-! ## A343230.P10527899711747557539

`A289813(A343317(A343317(n))+n)`
-/

namespace A343230.P10527899711747557539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A343317 (A343317 n).toNat + (n : ℤ)).toNat

end

end A343230.P10527899711747557539

namespace A343230

/-- `A289813(A343317(A343317(n))+n)` -/
def P10527899711747557539.Spec : Prop :=
  ∀ n, P10527899711747557539.a n = A343230 n

end A343230

/-! ## A343230.P15359690534267771856

`A343231(A343317(n))-A343231(n)`
-/

namespace A343230.P15359690534267771856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343231 (A343317 n).toNat - A343231 n

end

end A343230.P15359690534267771856

namespace A343230

/-- `A343231(A343317(n))-A343231(n)` -/
def P15359690534267771856.Spec : Prop :=
  ∀ n, P15359690534267771856.a n = A343230 n

end A343230

/-!
# A343231: A binary encoding of the nonzero digits in balanced ternary representation of n.

The programs for A343231, the canonical program `A343231.P10441655631567260462` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343231 has offset 0).

The definition of A343231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343228, A343229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343231.P10441655631567260462

`A343228(n)+A343229(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A343231

/-- `A343228(n)+A343229(n)` -/
def P10441655631567260462.Spec : Prop :=
  ∀ n, P10441655631567260462.a n = A343231 n

theorem P10441655631567260462.correct : P10441655631567260462.Spec := by
  intro n
  simp only [A343231]

end A343231

/-! ## A343231.P5062484746255101213

`A065361(A060374(n))`
-/

namespace A343231.P5062484746255101213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A060374 n).toNat

end

end A343231.P5062484746255101213

namespace A343231

/-- `A065361(A060374(n))` -/
def P5062484746255101213.Spec : Prop :=
  ∀ n, P5062484746255101213.a n = A343231 n

end A343231

/-! ## A343231.P2412966807038949375

`A065361(A343317(n))`
-/

namespace A343231.P2412966807038949375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A343317 n).toNat

end

end A343231.P2412966807038949375

namespace A343231

/-- `A065361(A343317(n))` -/
def P2412966807038949375.Spec : Prop :=
  ∀ n, P2412966807038949375.a n = A343231 n

end A343231

/-! ## A343231.P17191816630567017611

`A065361(2*A060373(n)+n)`
-/

namespace A343231.P17191816630567017611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (2 * A060373 n + (n : ℤ)).toNat

end

end A343231.P17191816630567017611

namespace A343231

/-- `A065361(2*A060373(n)+n)` -/
def P17191816630567017611.Spec : Prop :=
  ∀ n, P17191816630567017611.a n = A343231 n

end A343231

/-! ## A343231.P14648407054579994108

`A289813(2*A060373(n)+n)`
-/

namespace A343231.P14648407054579994108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (2 * A060373 n + (n : ℤ)).toNat

end

end A343231.P14648407054579994108

namespace A343231

/-- `A289813(2*A060373(n)+n)` -/
def P14648407054579994108.Spec : Prop :=
  ∀ n, P14648407054579994108.a n = A343231 n

end A343231

/-! ## A343231.P12685513173239693971

`A289831(2*A060373(n)+n)`
-/

namespace A343231.P12685513173239693971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (2 * A060373 n + (n : ℤ)).toNat

end

end A343231.P12685513173239693971

namespace A343231

/-- `A289831(2*A060373(n)+n)` -/
def P12685513173239693971.Spec : Prop :=
  ∀ n, P12685513173239693971.a n = A343231 n

end A343231

/-! ## A343231.P12439489908710956992

`A065361(2*A060372(n)-n)`
-/

namespace A343231.P12439489908710956992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (2 * A060372 n - (n : ℤ)).toNat

end

end A343231.P12439489908710956992

namespace A343231

/-- `A065361(2*A060372(n)-n)` -/
def P12439489908710956992.Spec : Prop :=
  ∀ n, P12439489908710956992.a n = A343231 n

end A343231

/-! ## A343231.P11111639285695516982

`A289813(2*A060372(n)-n)`
-/

namespace A343231.P11111639285695516982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (2 * A060372 n - (n : ℤ)).toNat

end

end A343231.P11111639285695516982

namespace A343231

/-- `A289813(2*A060372(n)-n)` -/
def P11111639285695516982.Spec : Prop :=
  ∀ n, P11111639285695516982.a n = A343231 n

end A343231

/-! ## A343231.P7847792105584155521

`A289831(2*A060372(n)-n)`
-/

namespace A343231.P7847792105584155521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (2 * A060372 n - (n : ℤ)).toNat

end

end A343231.P7847792105584155521

namespace A343231

/-- `A289831(2*A060372(n)-n)` -/
def P7847792105584155521.Spec : Prop :=
  ∀ n, P7847792105584155521.a n = A343231 n

end A343231

/-! ## A343231.P2905942632218808061

`A343228(n)+A289813(A060373(n))`
-/

namespace A343231.P2905942632218808061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 n + A289813 (A060373 n).toNat

end

end A343231.P2905942632218808061

namespace A343231

/-- `A343228(n)+A289813(A060373(n))` -/
def P2905942632218808061.Spec : Prop :=
  ∀ n, P2905942632218808061.a n = A343231 n

end A343231

/-! ## A343231.P12329070200230835950

`A343229(n)+A289813(A060372(n))`
-/

namespace A343231.P12329070200230835950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343229 n + A289813 (A060372 n).toNat

end

end A343231.P12329070200230835950

namespace A343231

/-- `A343229(n)+A289813(A060372(n))` -/
def P12329070200230835950.Spec : Prop :=
  ∀ n, P12329070200230835950.a n = A343231 n

end A343231

/-! ## A343231.P695789307550523895

`A065361(A060373(n)+A060373(n)+n)`
-/

namespace A343231.P695789307550523895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A060373 n + (A060373 n + (n : ℤ))).toNat

end

end A343231.P695789307550523895

namespace A343231

/-- `A065361(A060373(n)+A060373(n)+n)` -/
def P695789307550523895.Spec : Prop :=
  ∀ n, P695789307550523895.a n = A343231 n

end A343231

/-! ## A343231.P10505575268991672240

`A065361(A060372(n)+A060372(n)-n)`
-/

namespace A343231.P10505575268991672240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A060372 n + (A060372 n - (n : ℤ))).toNat

end

end A343231.P10505575268991672240

namespace A343231

/-- `A065361(A060372(n)+A060372(n)-n)` -/
def P10505575268991672240.Spec : Prop :=
  ∀ n, P10505575268991672240.a n = A343231 n

end A343231

/-! ## A343231.P1193460862865991

`A065361(A060372(n)-(n-A060372(n)))`
-/

namespace A343231.P1193460862865991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A060372 n - ((n : ℤ) - A060372 n)).toNat

end

end A343231.P1193460862865991

namespace A343231

/-- `A065361(A060372(n)-(n-A060372(n)))` -/
def P1193460862865991.Spec : Prop :=
  ∀ n, P1193460862865991.a n = A343231 n

end A343231

/-! ## A343231.P12347253145610523673

`A289813(2*n)+A289813(n)`
-/

namespace A343231.P12347253145610523673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (2 * n) + A289813 n

end

end A343231.P12347253145610523673

namespace A343231

/-- `A289813(2*n)+A289813(n)` -/
def P12347253145610523673.Spec : Prop :=
  ∀ n, P12347253145610523673.a n = A343231 n

end A343231

/-! ## A343231.P7713374851509933105

`A289831(A117967(n))`
-/

namespace A343231.P7713374851509933105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A117967 n).toNat

end

end A343231.P7713374851509933105

namespace A343231

/-- `A289831(A117967(n))` -/
def P7713374851509933105.Spec : Prop :=
  ∀ n, P7713374851509933105.a n = A343231 n

end A343231

/-! ## A343231.P6940478537696053811

`A371256(2*A060374(n))`
-/

namespace A343231.P6940478537696053811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371256 (2 * A060374 n).toNat

end

end A343231.P6940478537696053811

namespace A343231

/-- `A371256(2*A060374(n))` -/
def P6940478537696053811.Spec : Prop :=
  ∀ n, P6940478537696053811.a n = A343231 n

end A343231

/-! ## A343231.P7583607898782608284

`A343228(2*A060373(n)+n)`
-/

namespace A343231.P7583607898782608284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (2 * A060373 n + (n : ℤ)).toNat

end

end A343231.P7583607898782608284

namespace A343231

/-- `A343228(2*A060373(n)+n)` -/
def P7583607898782608284.Spec : Prop :=
  ∀ n, P7583607898782608284.a n = A343231 n

end A343231

/-! ## A343231.P13883375735652257566

`A343228(2*A060372(n)-n)`
-/

namespace A343231.P13883375735652257566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (2 * A060372 n - (n : ℤ)).toNat

end

end A343231.P13883375735652257566

namespace A343231

/-- `A343228(2*A060372(n)-n)` -/
def P13883375735652257566.Spec : Prop :=
  ∀ n, P13883375735652257566.a n = A343231 n

end A343231

/-! ## A343231.P10339298218344161812

`A343228(A060373(n)+A060372(n))`
-/

namespace A343231.P10339298218344161812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343228 (A060373 n + A060372 n).toNat

end

end A343231.P10339298218344161812

namespace A343231

/-- `A343228(A060373(n)+A060372(n))` -/
def P10339298218344161812.Spec : Prop :=
  ∀ n, P10339298218344161812.a n = A343231 n

end A343231

/-!
# A343232: Irregular triangle T read by rows: T(n, m) gives the solutions j of the congruence A002061(j+1) = j^2 + j + 1 == 0 (mod k(n)), with k(n) = A034017(n+1), for j from {0, 1, ..., k(n)-1}, and n >= 1.

The programs for A343232, there is no canonical definition to state claims against.
-/

/-! ## A343232.P5945044531665246326

`A002262(eq[A002262(n), A048152(n+1)])`
-/

namespace A343232.P5945044531665246326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343232.P5945044531665246326

/-!
# A343233: Triangle read by rows: Riordan triangle T = (1 - x*c(x), x), with the generating function c of A000108 (Catalan).

The programs for A343233, the canonical program `A343233.P1163040122208317958` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343233 has offset 0).

The definition of A343233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343233.P8473928358351711663

`ceil(A106190(n)/2)`
-/

namespace A343233.P8473928358351711663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A106190 n : ℚ) / 2⌉

end

end A343233.P8473928358351711663

namespace A343233

/-- `ceil(A106190(n)/2)` -/
def P8473928358351711663.Spec : Prop :=
  ∀ n, P8473928358351711663.a n = A343233 n

end A343233

/-! ## A343233.P13084259328940170906

`A115140(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A343233.P13084259328940170906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A343233.P13084259328940170906

namespace A343233

/-- `A115140(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P13084259328940170906.Spec : Prop :=
  ∀ n, P13084259328940170906.a n = A343233 n

end A343233

/-! ## A343233.P4063408100454677485

`A115140(C(comp[∑[n]]-n, 2)-1-n)`
-/

namespace A343233.P4063408100454677485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - 1 - (n : ℤ)).toNat

end

end A343233.P4063408100454677485

namespace A343233

/-- `A115140(C(comp[∑[n]]-n, 2)-1-n)` -/
def P4063408100454677485.Spec : Prop :=
  ∀ n, P4063408100454677485.a n = A343233 n

end A343233

/-! ## A343233.P17544508685954283248

`ceil(A002420(C(comp[∑[n]]-n, 2)-n-1)/2)`
-/

namespace A343233.P17544508685954283248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002420 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat : ℚ) / 2⌉

end

end A343233.P17544508685954283248

namespace A343233

/-- `ceil(A002420(C(comp[∑[n]]-n, 2)-n-1)/2)` -/
def P17544508685954283248.Spec : Prop :=
  ∀ n, P17544508685954283248.a n = A343233 n

end A343233

/-! ## A343233.P14581058784423791756

`A115140(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A343233.P14581058784423791756
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A343233.P14581058784423791756

namespace A343233

/-- `A115140(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))` -/
def P14581058784423791756.Spec : Prop :=
  ∀ n, P14581058784423791756.a n = A343233 n

end A343233

/-! ## A343233.P1163040122208317958

`A115140(A025581(n))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343233

/-- `A115140(A025581(n))` -/
def P1163040122208317958.Spec : Prop :=
  ∀ n, P1163040122208317958.a n = A343233 n

theorem P1163040122208317958.correct : P1163040122208317958.Spec := by
  intro n
  simp only [A343233]

end A343233

/-! ## A343233.P11257172911305752591

`A080232(2*(n+1-C(comp[∑[n]]-n, 2))²)`
-/

namespace A343233.P11257172911305752591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 (2 * ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat

end

end A343233.P11257172911305752591

namespace A343233

/-- `A080232(2*(n+1-C(comp[∑[n]]-n, 2))²)` -/
def P11257172911305752591.Spec : Prop :=
  ∀ n, P11257172911305752591.a n = A343233 n

end A343233

/-! ## A343233.P5850503569927036263

`(2*char[∑[n-1]]-1)*A155586(n+1)`
-/

namespace A343233.P5850503569927036263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1) * A155586 (n + 1)

end

end A343233.P5850503569927036263

namespace A343233

/-- `(2*char[∑[n-1]]-1)*A155586(n+1)` -/
def P5850503569927036263.Spec : Prop :=
  ∀ n, P5850503569927036263.a n = A343233 n

end A343233

/-! ## A343233.P759232452628596156

`A001057(abs(A106190(n)))`
-/

namespace A343233.P759232452628596156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 |A106190 n|.toNat

end

end A343233.P759232452628596156

namespace A343233

/-- `A001057(abs(A106190(n)))` -/
def P759232452628596156.Spec : Prop :=
  ∀ n, P759232452628596156.a n = A343233 n

end A343233

/-!
# A343234: Triangle T read by rows: lower triangular Riordan matrix of the Toeplitz type with first column A067687.

The programs for A343234, there is no canonical definition to state claims against.
-/

/-! ## A343234.P11614598099254252227

`A067687(row(n)-col(n))`
-/

namespace A343234.P11614598099254252227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A343234.P11614598099254252227

/-! ## A343234.P1613706280824779247

`A067687(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A343234.P1613706280824779247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A343234.P1613706280824779247

/-! ## A343234.P2200248061090996600

`A067687(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A343234.P2200248061090996600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A343234.P2200248061090996600

/-! ## A343234.P9661202942536525724

`A067687(∑[char[∑[n+1]]]-(n-C(∑[char[∑[n]]], 2)))`
-/

namespace A343234.P9661202942536525724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))).toNat

end

end A343234.P9661202942536525724

/-! ## A343234.P11389960890413746568

`A067687(A025581(n))`
-/

namespace A343234.P11389960890413746568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 (A025581 n).toNat

end

end A343234.P11389960890413746568

/-! ## A343234.P1148021940582949235

`A067687(log2(A130321(n)))`
-/

namespace A343234.P1148021940582949235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A343234.P1148021940582949235

/-! ## A343234.P14251850254073031831

`A067687(A193592(n+1))`
-/

namespace A343234.P14251850254073031831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 (A193592 (n + 1)).toNat

end

end A343234.P14251850254073031831

/-!
# A343237: Triangle T obtained from the array A(n, k) = (k+1)^(n+1) - k^(n+1), n, k >= 0, by reading antidiagonals upwards.

The programs for A343237, the canonical program `A343237.P5770952166810438926` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343237 has offset 0).

The definition of A343237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343237.P5770952166810438926

`(col(n)+1)^(row(n)-col(n)+1)-col(n)^(row(n)-col(n)+1)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343237

/-- `(col(n)+1)^(row(n)-col(n)+1)-col(n)^(row(n)-col(n)+1)` -/
def P5770952166810438926.Spec : Prop :=
  ∀ n, P5770952166810438926.a n = (A343237 n : ℚ)

end A343237

/-! ## A343237.P10079992931022798806

`A051129(n+1)-A095884(A038722(n+1))`
-/

namespace A343237.P10079992931022798806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051129 (n + 1) - A095884 (A038722 (n + 1)).toNat

end

end A343237.P10079992931022798806

namespace A343237

/-- `A051129(n+1)-A095884(A038722(n+1))` -/
def P10079992931022798806.Spec : Prop :=
  ∀ n, P10079992931022798806.a n = A343237 n

end A343237

/-! ## A343237.P393348476257304066

`A047969(A002378(n)%A080036(n))`
-/

namespace A343237.P393348476257304066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A343237.P393348476257304066

namespace A343237

/-- `A047969(A002378(n)%A080036(n))` -/
def P393348476257304066.Spec : Prop :=
  ∀ n, P393348476257304066.a n = A343237 n

end A343237

/-! ## A343237.P5247581612902802384

`A047969(A061579(n))`
-/

namespace A343237.P5247581612902802384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A061579 n).toNat

end

end A343237.P5247581612902802384

namespace A343237

/-- `A047969(A061579(n))` -/
def P5247581612902802384.Spec : Prop :=
  ∀ n, P5247581612902802384.a n = A343237 n

end A343237

/-! ## A343237.P12866684121385467543

`A047969(A114327(n)+n)`
-/

namespace A343237.P12866684121385467543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A114327 n + (n : ℤ)).toNat

end

end A343237.P12866684121385467543

namespace A343237

/-- `A047969(A114327(n)+n)` -/
def P12866684121385467543.Spec : Prop :=
  ∀ n, P12866684121385467543.a n = A343237 n

end A343237

/-! ## A343237.P3734445573939458693

`A047969(A038722(n+1)-1)`
-/

namespace A343237.P3734445573939458693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A038722 (n + 1) - 1).toNat

end

end A343237.P3734445573939458693

namespace A343237

/-- `A047969(A038722(n+1)-1)` -/
def P3734445573939458693.Spec : Prop :=
  ∀ n, P3734445573939458693.a n = A343237 n

end A343237

/-! ## A343237.P10108700533938317308

`A047969(A093995(n+1)-(n+1))`
-/

namespace A343237.P10108700533938317308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A343237.P10108700533938317308

namespace A343237

/-- `A047969(A093995(n+1)-(n+1))` -/
def P10108700533938317308.Spec : Prop :=
  ∀ n, P10108700533938317308.a n = A343237 n

end A343237

/-! ## A343237.P10075839875969758977

`A047969(A002024(n+1)²-(n+1))`
-/

namespace A343237.P10075839875969758977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A343237.P10075839875969758977

namespace A343237

/-- `A047969(A002024(n+1)²-(n+1))` -/
def P10075839875969758977.Spec : Prop :=
  ∀ n, P10075839875969758977.a n = A343237 n

end A343237

/-! ## A343237.P13605725577216713492

`A047969(Δ[A004247(n)+A000217(n)])`
-/

namespace A343237.P13605725577216713492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (f1 (n + 1) - f1 n).toNat

end

end A343237.P13605725577216713492

namespace A343237

/-- `A047969(Δ[A004247(n)+A000217(n)])` -/
def P13605725577216713492.Spec : Prop :=
  ∀ n, P13605725577216713492.a n = A343237 n

end A343237

/-! ## A343237.P8745218352390896886

`A047969(A038722(n+2))`
-/

namespace A343237.P8745218352390896886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047969 (A038722 (n + 2)).toNat

end

end A343237.P8745218352390896886

namespace A343237

/-- `A047969(A038722(n+2))` -/
def P8745218352390896886.Spec : Prop :=
  ∀ n, P8745218352390896886.a n = A343237 n

end A343237

/-! ## A343237.P6086579322397963737

`A056151(n+1)/A233543(n)`
-/

namespace A343237.P6086579322397963737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056151 (n + 1) : ℚ) / (A233543 n : ℚ)

end

end A343237.P6086579322397963737

namespace A343237

/-- `A056151(n+1)/A233543(n)` -/
def P6086579322397963737.Spec : Prop :=
  ∀ n, P6086579322397963737.a n = (A343237 n : ℚ)

end A343237

/-! ## A343237.P15001972134913693587

`A056151(n+1)/A002262(n)!`
-/

namespace A343237.P15001972134913693587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056151 (n + 1) : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A343237.P15001972134913693587

namespace A343237

/-- `A056151(n+1)/A002262(n)!` -/
def P15001972134913693587.Spec : Prop :=
  ∀ n, P15001972134913693587.a n = (A343237 n : ℚ)

end A343237

/-!
# A343238: All positive integer moduli a(n) for which the congruence x^2 == -5 (mod a(n)) is solvable for integer x (representatives from {0, 1, ..., a(n)-1}); ordered increasingly.

The programs for A343238, there is no canonical definition to state claims against.
-/

/-! ## A343238.P2303601097507257504

`record[gcd(n²+5, A193832(n+1))]`
-/

namespace A343238.P2303601097507257504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + 5 : ℤ) (A193832 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343238.P2303601097507257504

/-! ## A343238.P394569613244713887

`∪[A344231(n+1), A344232(n+1)]`
-/

namespace A343238.P394569613244713887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343238.P394569613244713887

/-! ## A343238.P7916383623604048787

`record[gcd(n²+5, log2(A140513(n)))]`
-/

namespace A343238.P7916383623604048787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 + 5 : ℤ) (SequenceMachineLib.roundAway (Real.logb 2 (A140513 n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343238.P7916383623604048787

/-! ## A343238.P18388234251359294215

`record[gcd(A002024(n+1), A027575(n))]`
-/

namespace A343238.P18388234251359294215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1)) (A027575 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343238.P18388234251359294215

/-! ## A343238.P4982579054353876406

`record[gcd(A000196(2*n+1), A117951(n))]`
-/

namespace A343238.P4982579054353876406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000196 (2 * n + 1)) (A117951 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343238.P4982579054353876406

/-!
# A343240: The number of solutions x from {0, 1, ..., A343238(n)-1} of the congruence x^2 + 5 == 0 (mod A343238(n)) is given by a(n).

The programs for A343240, there is no canonical definition to state claims against.
-/

/-! ## A343240.P16997538734763327629

`A157230(5*∪[A344231(n+1), A344232(n+1)])`
-/

namespace A343240.P16997538734763327629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344232 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (5 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A343240.P16997538734763327629

/-! ## A343240.P12887263862768111358

`A157230(5*A343238(n+1))`
-/

namespace A343240.P12887263862768111358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (5 * A343238 (n + 1)).toNat

end

end A343240.P12887263862768111358

/-! ## A343240.P4571269911800040302

`A157230(lcm(5, A343238(n+1)))`
-/

namespace A343240.P4571269911800040302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (Int.lcm 5 (A343238 (n + 1)))

end

end A343240.P4571269911800040302

/-! ## A343240.P18176365820213827605

`A035170(∏{p}[A343238(n+1), #])`
-/

namespace A343240.P18176365820213827605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A343240.P18176365820213827605

/-! ## A343240.P3199517695586874044

`∏{p}[A343238(n+1), A091728(#)]`
-/

namespace A343240.P3199517695586874044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A091728 p

end

end A343240.P3199517695586874044

/-! ## A343240.P8401503978316718689

`A124233(∏{p}[A343238(n+1), #])`
-/

namespace A343240.P8401503978316718689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124233 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A343240.P8401503978316718689

/-!
# A343241: Primes congruent to 2 or 8 modulo 15.

The programs for A343241, the canonical program `A343241.P16830711836484009387` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343241 has offset 1).

The definition of A343241 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A343241.anchor (n : ℕ) (hn : 1 ≤ n) : A343241 n = (Nat.nth (fun p => p.Prime ∧ p % 15 ∈ ({2, 8} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A343.A343241`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343241.P16830711836484009387

`p?[a(n-2)+15]` with `a(0)=2, a(1)=8`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343241

/-- `p?[a(n-2)+15]` -/
def P16830711836484009387.Spec : Prop :=
  ∀ n, (P16830711836484009387.a n : ℤ) = A343241 (n + 1)

theorem P16830711836484009387.correct : P16830711836484009387.Spec := by
  intro n
  simp only [A343241, Nat.add_sub_cancel]

end A343241

/-! ## A343241.P3182482356893494338

`p?[3*ceil((5*n+1)/2)-1]`
-/

namespace A343241.P3182482356893494338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(5 * n + 1 : ℚ) / 2⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343241.P3182482356893494338

namespace A343241

/-- `p?[3*ceil((5*n+1)/2)-1]` -/
def P3182482356893494338.Spec : Prop :=
  ∀ n, P3182482356893494338.a n = A343241 (n + 1)

end A343241

/-! ## A343241.P7532973130753447327

`∪[A132235(n+1), A141860(n+1)]`
-/

namespace A343241.P7532973130753447327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P7532973130753447327

namespace A343241

/-- `∪[A132235(n+1), A141860(n+1)]` -/
def P7532973130753447327.Spec : Prop :=
  ∀ n, (P7532973130753447327.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P9625235974600723342

`A106859(A171463(n+1))`
-/

namespace A343241.P9625235974600723342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (A171463 (n + 1)).toNat

end

end A343241.P9625235974600723342

namespace A343241

/-- `A106859(A171463(n+1))` -/
def P9625235974600723342.Spec : Prop :=
  ∀ n, P9625235974600723342.a n = A343241 (n + 1)

end A343241

/-! ## A343241.P6352025877777442636

`A106859(n+3)%A139874(n+1)`
-/

namespace A343241.P6352025877777442636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106859 (n + 3)) (A139874 (n + 1))

end

end A343241.P6352025877777442636

namespace A343241

/-- `A106859(n+3)%A139874(n+1)` -/
def P6352025877777442636.Spec : Prop :=
  ∀ n, P6352025877777442636.a n = A343241 (n + 1)

end A343241

/-! ## A343241.P4642466233795467229

`∩[A003627(n+1), A191018(n+1)]`
-/

namespace A343241.P4642466233795467229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P4642466233795467229

namespace A343241

/-- `∩[A003627(n+1), A191018(n+1)]` -/
def P4642466233795467229.Spec : Prop :=
  ∀ n, (P4642466233795467229.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P1196275044686676732

`∩[A045309(n+1), A191018(n+1)]`
-/

namespace A343241.P1196275044686676732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P1196275044686676732

namespace A343241

/-- `∩[A045309(n+1), A191018(n+1)]` -/
def P1196275044686676732.Spec : Prop :=
  ∀ n, (P1196275044686676732.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P10989651313420356321

`∩[A003627(n+1), A003631(n+1)]`
-/

namespace A343241.P10989651313420356321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P10989651313420356321

namespace A343241

/-- `∩[A003627(n+1), A003631(n+1)]` -/
def P10989651313420356321.Spec : Prop :=
  ∀ n, (P10989651313420356321.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P14178127431143910552

`∩[A003631(n+1), A191018(n+1)]`
-/

namespace A343241.P14178127431143910552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P14178127431143910552

namespace A343241

/-- `∩[A003631(n+1), A191018(n+1)]` -/
def P14178127431143910552.Spec : Prop :=
  ∀ n, (P14178127431143910552.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P7292979844748827138

`∩[A042993(n+1), A191018(n+1)]`
-/

namespace A343241.P7292979844748827138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P7292979844748827138

namespace A343241

/-- `∩[A042993(n+1), A191018(n+1)]` -/
def P7292979844748827138.Spec : Prop :=
  ∀ n, (P7292979844748827138.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P10155192143642313449

`∩[A003627(n+1), A069104(n+1)]`
-/

namespace A343241.P10155192143642313449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P10155192143642313449

namespace A343241

/-- `∩[A003627(n+1), A069104(n+1)]` -/
def P10155192143642313449.Spec : Prop :=
  ∀ n, (P10155192143642313449.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P16818978043629624891

`∩[A069104(n+1), A191018(n+1)]`
-/

namespace A343241.P16818978043629624891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P16818978043629624891

namespace A343241

/-- `∩[A069104(n+1), A191018(n+1)]` -/
def P16818978043629624891.Spec : Prop :=
  ∀ n, (P16818978043629624891.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P9626933132845519824

`∩[A003627(n+1), A023162(n+1)]`
-/

namespace A343241.P9626933132845519824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P9626933132845519824

namespace A343241

/-- `∩[A003627(n+1), A023162(n+1)]` -/
def P9626933132845519824.Spec : Prop :=
  ∀ n, (P9626933132845519824.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P4732644913620727183

`∩[A023162(n+1), A191018(n+1)]`
-/

namespace A343241.P4732644913620727183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P4732644913620727183

namespace A343241

/-- `∩[A023162(n+1), A191018(n+1)]` -/
def P4732644913620727183.Spec : Prop :=
  ∀ n, (P4732644913620727183.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P18236338513656504490

`∩[A066501(n+1), A191018(n+1)]`
-/

namespace A343241.P18236338513656504490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P18236338513656504490

namespace A343241

/-- `∩[A066501(n+1), A191018(n+1)]` -/
def P18236338513656504490.Spec : Prop :=
  ∀ n, (P18236338513656504490.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P5428898883826237978

`∩[A106859(n+1), A156828(n+1)]`
-/

namespace A343241.P5428898883826237978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P5428898883826237978

namespace A343241

/-- `∩[A106859(n+1), A156828(n+1)]` -/
def P5428898883826237978.Spec : Prop :=
  ∀ n, (P5428898883826237978.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P7519181255855959469

`∩[A094516(n+1), A106859(n+1)]`
-/

namespace A343241.P7519181255855959469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094516 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P7519181255855959469

namespace A343241

/-- `∩[A094516(n+1), A106859(n+1)]` -/
def P7519181255855959469.Spec : Prop :=
  ∀ n, (P7519181255855959469.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P13719478344742615714

`∩[A003631(n+1), A082406(n+1)]`
-/

namespace A343241.P13719478344742615714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P13719478344742615714

namespace A343241

/-- `∩[A003631(n+1), A082406(n+1)]` -/
def P13719478344742615714.Spec : Prop :=
  ∀ n, (P13719478344742615714.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P1189763150472455872

`∩[A082406(n+1), A191018(n+1)]`
-/

namespace A343241.P1189763150472455872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P1189763150472455872

namespace A343241

/-- `∩[A082406(n+1), A191018(n+1)]` -/
def P1189763150472455872.Spec : Prop :=
  ∀ n, (P1189763150472455872.a n : ℤ) = A343241 (n + 1)

end A343241

/-! ## A343241.P10332134567526911881

`∩[A163578(n+1), A106859(n+1)]`
-/

namespace A343241.P10332134567526911881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106859 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343241.P10332134567526911881

namespace A343241

/-- `∩[A163578(n+1), A106859(n+1)]` -/
def P10332134567526911881.Spec : Prop :=
  ∀ n, (P10332134567526911881.a n : ℤ) = A343241 (n + 1)

end A343241

/-!
# A343242: Nonprime numbers k such that A054008(k) = A054024(k).

The programs for A343242, there is no canonical definition to state claims against.
-/

/-! ## A343242.P13623567587667004128

`A121716(n+1)*A325512(A121716(n+2))`
-/

namespace A343242.P13623567587667004128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121716 (n + 1) * A325512 (A121716 (n + 2)).toNat

end

end A343242.P13623567587667004128

/-!
# A343246: Number of partitions of n into 3 parts where at least one part divides another.

The programs for A343246, there is no canonical definition to state claims against.
-/

/-! ## A343246.P2587850145441741149

`A348531(n+1)-A185284(A264120(n+1))`
-/

namespace A343246.P2587850145441741149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348531 (n + 1) - A185284 (A264120 (n + 1)).toNat

end

end A343246.P2587850145441741149

/-! ## A343246.P995476483103459497

`A348531(n+1)-A185284(2*n+1)`
-/

namespace A343246.P995476483103459497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348531 (n + 1) - A185284 (2 * n + 1)

end

end A343246.P995476483103459497

/-! ## A343246.P18178766538915580348

`A348531(n+1)-A055641(A157134(n))`
-/

namespace A343246.P18178766538915580348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348531 (n + 1) - A055641 (A157134 n).toNat

end

end A343246.P18178766538915580348

/-! ## A343246.P2919553317295383054

`A348531(n+1)-A185284(A001399(n))²`
-/

namespace A343246.P2919553317295383054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348531 (n + 1) - A185284 (A001399 n).toNat ^ 2

end

end A343246.P2919553317295383054

/-! ## A343246.P18232977293311423934

`A348531(n+1)-A070109(A325302(n+1))`
-/

namespace A343246.P18232977293311423934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348531 (n + 1) - A070109 (A325302 (n + 1)).toNat

end

end A343246.P18232977293311423934

/-!
# A343247: Number of partitions of n into 3 parts where at least 1 part divides n.

The programs for A343247, there is no canonical definition to state claims against.
-/

/-! ## A343247.P5366264455378812566

`round((n+1)²/12)-A343248(n+1)`
-/

namespace A343247.P5366264455378812566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / 12) - A343248 (n + 1)

end

end A343247.P5366264455378812566

/-! ## A343247.P5481407346871941746

`A049822(n+1)+A343396(n+1)-A343248(n+1)`
-/

namespace A343247.P5481407346871941746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049822 (n + 1) + (A343396 (n + 1) - A343248 (n + 1))

end

end A343247.P5481407346871941746

/-! ## A343247.P17947601108704586565

`A348538(n+1)+A129272(A324059(n+1))`
-/

namespace A343247.P17947601108704586565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348538 (n + 1) + A129272 (A324059 (n + 1)).toNat

end

end A343247.P17947601108704586565

/-! ## A343247.P7339069978227758310

`A348538(n+1)+A321936(A063804(n+3))`
-/

namespace A343247.P7339069978227758310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348538 (n + 1) + A321936 (A063804 (n + 3)).toNat

end

end A343247.P7339069978227758310

/-!
# A343248: Number of partitions of n into 3 parts such that no part divides n.

The programs for A343248, there is no canonical definition to state claims against.
-/

/-! ## A343248.P7574733154602314581

`∑[A008615(n)]-A343247(n+1)`
-/

namespace A343248.P7574733154602314581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A343247 (n + 1)

end

end A343248.P7574733154602314581

/-!
# A343249: a(n) is the least k0 <= n such that v_2(n), the 2-adic order of n, can be obtained by the formula: v_2(n) = log_2(n / L_2(k0, n)), where L_2(k0, n) is the lowest common denominator of the elements of the set S_2(k0, n) = {(1/n)*binomial(n, k), with 0 < k <= k0 such that k is not divisible by 2} or 0 if no such k0 exists.

The programs for A343249, there is no canonical definition to state claims against.
-/

/-! ## A343249.P17545758955979019140

`A034699((n+1)/2^val(n+1, 2))`
-/

namespace A343249.P17545758955979019140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A343249.P17545758955979019140

/-! ## A343249.P14129988922854789300

`A081472((n+1)/and(n+1, -(n+1)))-(n+1)/and(n+1, -(n+1))`
-/

namespace A343249.P14129988922854789300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ) - (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A343249.P14129988922854789300

/-! ## A343249.P11767183785199796708

`A034699(A000265(n+1))`
-/

namespace A343249.P11767183785199796708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A000265 (n + 1)).toNat

end

end A343249.P11767183785199796708

/-! ## A343249.P17944099251475816940

`A034699(A153733(n)+1)`
-/

namespace A343249.P17944099251475816940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A153733 n + 1).toNat

end

end A343249.P17944099251475816940

/-! ## A343249.P1071248867436911449

`A034699(A028234(2*(n+1)))`
-/

namespace A343249.P1071248867436911449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A028234 (2 * (n + 1))).toNat

end

end A343249.P1071248867436911449

/-! ## A343249.P398123127226336179

`A034699(A093803(2*(n+1)))`
-/

namespace A343249.P398123127226336179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A093803 (2 * (n + 1))).toNat

end

end A343249.P398123127226336179

/-! ## A343249.P12086189467626404150

`A034699(A302044(2*(n+1)))`
-/

namespace A343249.P12086189467626404150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A302044 (2 * (n + 1))).toNat

end

end A343249.P12086189467626404150

/-! ## A343249.P17086130497630089775

`A034699(2*A003602(n+1)-1)`
-/

namespace A343249.P17086130497630089775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * A003602 (n + 1) - 1).toNat

end

end A343249.P17086130497630089775

/-! ## A343249.P5726541798026251240

`A034699((n+1)/A006519(n+1))`
-/

namespace A343249.P5726541798026251240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A343249.P5726541798026251240

/-! ## A343249.P17692880863998074435

`A034699(A003602(n+1)+A003602(n+1)-1)`
-/

namespace A343249.P17692880863998074435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A003602 (n + 1) + (A003602 (n + 1) - 1)).toNat

end

end A343249.P17692880863998074435

/-!
# A343250: a(n) is the least k0 <= n such that v_3(n), the 3-adic order of n, can be obtained by the formula: v_3(n) = log_3(n / L_3(k0, n)), where L_3(k0, n) is the lowest common denominator of the elements of the set S_3(k0, n) = {(1/n)*binomial(n, k), with 0 < k <= k0 such that k is not divisible by 3} or 0 if no such k0 exists.

The programs for A343250, there is no canonical definition to state claims against.
-/

/-! ## A343250.P8253642907254734473

`A034699((n+1)/3^val(n+1, 3))`
-/

namespace A343250.P8253642907254734473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A343250.P8253642907254734473

/-! ## A343250.P8776384445462584624

`(n+1)/3^val(n+1, 3)-A081805((n+1)/3^val(n+1, 3))`
-/

namespace A343250.P8776384445462584624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) - (A081805 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat : ℚ)

end

end A343250.P8776384445462584624

/-! ## A343250.P16008131209889395959

`A034699(A038502(n+1))`
-/

namespace A343250.P16008131209889395959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A038502 (n + 1)).toNat

end

end A343250.P16008131209889395959

/-! ## A343250.P737096749626185410

`A034699((n+1)/A038500(n+1))`
-/

namespace A343250.P737096749626185410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A343250.P737096749626185410

/-! ## A343250.P10805541764706186060

`A034699(A006519(n+1)*A065330(n+1))`
-/

namespace A343250.P10805541764706186060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A006519 (n + 1) * A065330 (n + 1)).toNat

end

end A343250.P10805541764706186060

/-! ## A343250.P1754765472304544445

`A034699(lcm(A006519(n+1), A065330(n+1)))`
-/

namespace A343250.P1754765472304544445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.lcm (A006519 (n + 1)) (A065330 (n + 1)))

end

end A343250.P1754765472304544445

/-! ## A343250.P5281837895069149950

`A034699(gcd(n+1, A038610(n+4)))`
-/

namespace A343250.P5281837895069149950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.gcd (n + 1 : ℤ) (A038610 (n + 4)))

end

end A343250.P5281837895069149950

/-! ## A343250.P13813030349200160462

`A330691(A038502(n+1))%p?[A080859(n)]`
-/

namespace A343250.P13813030349200160462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330691 (A038502 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A343250.P13813030349200160462

/-! ## A343250.P11541079867051984149

`A330741(A038502(n+1)%A232784(n+1))`
-/

namespace A343250.P11541079867051984149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (Int.tmod (A038502 (n + 1)) (A232784 (n + 1))).toNat

end

end A343250.P11541079867051984149

/-!
# A343251: a(n) is the least k0 <= n such that v_5(n), the 5-adic order of n, can be obtained by the formula: v_5(n) = log_5(n / L_5(k0, n)), where L_5(k0, n) is the lowest common denominator of the elements of the set S_5(k0, n) = {(1/n)*binomial(n, k), with 0 < k <= k0 such that k is not divisible by 5} or 0 if no such k0 exists.

The programs for A343251, there is no canonical definition to state claims against.
-/

/-! ## A343251.P14982646565971244051

`A034699(A132739(n+1))`
-/

namespace A343251.P14982646565971244051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A132739 (n + 1)).toNat

end

end A343251.P14982646565971244051

/-! ## A343251.P15155714189535744860

`A034699((n+1)/A060904(n+1))`
-/

namespace A343251.P15155714189535744860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A060904 (n + 1) : ℚ))).toNat

end

end A343251.P15155714189535744860

/-! ## A343251.P5581971338375755671

`A346596(A132739(n+1)%A178862(n+4))`
-/

namespace A343251.P5581971338375755671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346596 (Int.tmod (A132739 (n + 1)) (A178862 (n + 4))).toNat

end

end A343251.P5581971338375755671

/-! ## A343251.P8367333691623674979

`A346596(A132739(n+1))%A232784(n+1)`
-/

namespace A343251.P8367333691623674979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346596 (A132739 (n + 1)).toNat) (A232784 (n + 1))

end

end A343251.P8367333691623674979

/-! ## A343251.P16419125084790742275

`A034699(gcd(n+1, A349487(n+6)))`
-/

namespace A343251.P16419125084790742275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.gcd (n + 1 : ℤ) (A349487 (n + 6)))

end

end A343251.P16419125084790742275

/-!
# A343252: a(n) is the least k0 <= n such that v_7(n), the 7-adic order of n, can be obtained by the formula: v_7(n) = log_7(n / L_7(k0, n)), where L_7(k0, n) is the lowest common denominator of the elements of the set S_7(k0, n) = {(1/n)*binomial(n, k), with 0 < k <= k0 such that k is not divisible by 7} or 0 if no such k0 exists.

The programs for A343252, there is no canonical definition to state claims against.
-/

/-! ## A343252.P2188078411778041791

`A034699((n+1)/gcd(49, n+1))`
-/

namespace A343252.P2188078411778041791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 49 (n + 1) : ℚ))).toNat

end

end A343252.P2188078411778041791

/-! ## A343252.P10380222153056475464

`A034699((n+1)/7^val(n+1, 7))`
-/

namespace A343252.P10380222153056475464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ))).toNat

end

end A343252.P10380222153056475464

/-! ## A343252.P7740202941095862506

`A034699(lcm(64*n+15, n+1)/(64*n+15))`
-/

namespace A343252.P7740202941095862506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((Nat.lcm (64 * n + 15) (n + 1) : ℚ) / (64 * n + 15 : ℚ))).toNat

end

end A343252.P7740202941095862506

/-! ## A343252.P867825283054281833

`A034699(A242603(n+1))`
-/

namespace A343252.P867825283054281833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A242603 (n + 1)).toNat

end

end A343252.P867825283054281833

/-! ## A343252.P2498325259740452281

`A034699((n+1)/A268354(n+1))`
-/

namespace A343252.P2498325259740452281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A268354 (n + 1) : ℚ))).toNat

end

end A343252.P2498325259740452281

/-! ## A343252.P3454535729892123866

`and(A034699(A106615(2*(n+1))), A034699(n+1))`
-/

namespace A343252.P3454535729892123866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034699 (A106615 (2 * (n + 1))).toNat) (A034699 (n + 1))

end

end A343252.P3454535729892123866

/-!
# A343253: a(n) is the least k0 <= n such that v_11(n), the 11-adic order of n, can be obtained by the formula: v_11(n) = log_11(n / L_11(k0, n)), where L_11(k0, n) is the lowest common denominator of the elements of the set S_11(k0, n) = {(1/n)*binomial(n, k), with 0 < k <= k0 such that k is not divisible by 11} or 0 if no such k0 exists.

The programs for A343253, there is no canonical definition to state claims against.
-/

/-! ## A343253.P6741753496385449073

`A034699(A106612(n+1))`
-/

namespace A343253.P6741753496385449073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A106612 (n + 1)).toNat

end

end A343253.P6741753496385449073

/-! ## A343253.P9284538788073820163

`A034699(A137564(n+1))`
-/

namespace A343253.P9284538788073820163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A137564 (n + 1)).toNat

end

end A343253.P9284538788073820163

/-! ## A343253.P3778916938201834563

`A034699(A337864(n+1))`
-/

namespace A343253.P3778916938201834563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A337864 (n + 1)).toNat

end

end A343253.P3778916938201834563

/-! ## A343253.P4851826416786022257

`A034699(gcd(n+1, A001288(n)))`
-/

namespace A343253.P4851826416786022257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (Int.gcd (n + 1 : ℤ) (A001288 (n + 11)))

end

end A343253.P4851826416786022257

/-!
# A343255: a(n) is obtained by replacing 2's by n's in the hereditary base-2 expansion of n.

The programs for A343255, there is no canonical definition to state claims against.
-/

/-! ## A343255.P9317610027007245612

`A342707(∑[4*n])`
-/

namespace A343255.P9317610027007245612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342707 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343255.P9317610027007245612

/-! ## A343255.P8114428813833985281

`record[A192490(n+1)*A342707(n)]`
-/

namespace A343255.P8114428813833985281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192490 (n + 1) * A342707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343255.P8114428813833985281

/-!
# A343256: Difference between prime(Fibonacci(n+1)) and prime(Fibonacci(n)).

The programs for A343256, the canonical program `A343256.P13451384529683243788` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343256 has offset 1).

The definition of A343256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343256.P13451384529683243788

`A030427(n+2)-A030427(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343256

/-- `A030427(n+2)-A030427(n+1)` -/
def P13451384529683243788.Spec : Prop :=
  ∀ n, P13451384529683243788.a n = A343256 (n + 1)

theorem P13451384529683243788.correct : P13451384529683243788.Spec := by
  intro n
  simp only [A343256, Nat.add_sub_cancel]

end A343256

/-! ## A343256.P4938708790989721257

`A000040(A000045(n+2))-A000040(A000045(n+1))`
-/

namespace A343256.P4938708790989721257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000045 (n + 2)).toNat - A000040 (A000045 (n + 1)).toNat

end

end A343256.P4938708790989721257

namespace A343256

/-- `A000040(A000045(n+2))-A000040(A000045(n+1))` -/
def P4938708790989721257.Spec : Prop :=
  ∀ n, P4938708790989721257.a n = A343256 (n + 1)

theorem P4938708790989721257.correct : P4938708790989721257.Spec := by
  intro n
  simp only [A343256, Nat.add_sub_cancel, A343256.P4938708790989721257.a, A343256.P13451384529683243788.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A030427, A030427.P14895017311041254849.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343256

/-! ## A343256.P8221295994708053557

`Δ[A030427(n+1)]`
-/

namespace A343256.P8221295994708053557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343256.P8221295994708053557

namespace A343256

/-- `Δ[A030427(n+1)]` -/
def P8221295994708053557.Spec : Prop :=
  ∀ n, P8221295994708053557.a n = A343256 (n + 1)

theorem P8221295994708053557.correct : P8221295994708053557.Spec := by
  intro n
  simp only [A343256, Nat.add_sub_cancel, A343256.P8221295994708053557.f1, A343256.P8221295994708053557.a, A343256.P13451384529683243788.a, SequenceMachineLib.memo_apply]

end A343256

/-! ## A343256.P9769101430341730607

`record[Δ[A030427(A210435(n))]]`
-/

namespace A343256.P9769101430341730607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A210435 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343256.P9769101430341730607

namespace A343256

/-- `record[Δ[A030427(A210435(n))]]` -/
def P9769101430341730607.Spec : Prop :=
  ∀ n, P9769101430341730607.a n = A343256 (n + 1)

end A343256

/-! ## A343256.P932282591116873462

`abs(Δ[A030427(A110514(2*n))])`
-/

namespace A343256.P932282591116873462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A343256.P932282591116873462

namespace A343256

/-- `abs(Δ[A030427(A110514(2*n))])` -/
def P932282591116873462.Spec : Prop :=
  ∀ n, P932282591116873462.a n = A343256 (n + 1)

end A343256

/-! ## A343256.P17530185532028012739

`Δ[A030427(A110514(2*n))]%A048490(n)`
-/

namespace A343256.P17530185532028012739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A048490 n)

end

end A343256.P17530185532028012739

namespace A343256

/-- `Δ[A030427(A110514(2*n))]%A048490(n)` -/
def P17530185532028012739.Spec : Prop :=
  ∀ n, P17530185532028012739.a n = A343256 (n + 1)

end A343256

/-! ## A343256.P7874971204927086274

`A011615(n)²*Δ[A030427(A110514(2*n))]`
-/

namespace A343256.P7874971204927086274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030427 (A110514 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011615 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A343256.P7874971204927086274

namespace A343256

/-- `A011615(n)²*Δ[A030427(A110514(2*n))]` -/
def P7874971204927086274.Spec : Prop :=
  ∀ n, P7874971204927086274.a n = A343256 (n + 1)

end A343256

/-!
# A343258: Numbers whose binary representation has a prime number of zeros and a prime number of ones.

The programs for A343258, the canonical program `A343258.P4371836176800830808` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343258 has offset 1).

The definition of A343258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343258.P4371836176800830808

`∩[A052294(n+1), A144754(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A343258

/-- `∩[A052294(n+1), A144754(n+1)]` -/
def P4371836176800830808.Spec : Prop :=
  ∀ n, (P4371836176800830808.a n : ℤ) = A343258 (n + 1)

theorem P4371836176800830808.correct : P4371836176800830808.Spec := by
  intro n
  simp only [A343258, Nat.add_sub_cancel]

end A343258

/-! ## A343258.P6877966840142431298

`filter[A144754(n+1), A137331(#)]`
-/

namespace A343258.P6877966840142431298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137331 (f1 j).toNat = 1) n)

end

end A343258.P6877966840142431298

namespace A343258

/-- `filter[A144754(n+1), A137331(#)]` -/
def P6877966840142431298.Spec : Prop :=
  ∀ n, P6877966840142431298.a n = A343258 (n + 1)

end A343258

/-! ## A343258.P17975777752929563282

`eq[A003415(A071295(n)), A070939(n)]`
-/

namespace A343258.P17975777752929563282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A071295 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343258.P17975777752929563282

namespace A343258

/-- `eq[A003415(A071295(n)), A070939(n)]` -/
def P17975777752929563282.Spec : Prop :=
  ∀ n, (P17975777752929563282.a n : ℤ) = A343258 (n + 1)

end A343258

/-! ## A343258.P9801138980984706767

`eq[2, A136480(A136494(n))]`
-/

namespace A343258.P9801138980984706767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A136494 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343258.P9801138980984706767

namespace A343258

/-- `eq[2, A136480(A136494(n))]` -/
def P9801138980984706767.Spec : Prop :=
  ∀ n, (P9801138980984706767.a n : ℤ) = A343258 (n + 1)

end A343258

/-! ## A343258.P800519090307265479

`lt[A093878(n+1), A194086(A164884(n))]`
-/

namespace A343258.P800519090307265479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194086 (A164884 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343258.P800519090307265479

namespace A343258

/-- `lt[A093878(n+1), A194086(A164884(n))]` -/
def P800519090307265479.Spec : Prop :=
  ∀ n, (P800519090307265479.a n : ℤ) = A343258 (n + 1)

end A343258

/-!
# A343259: a(n) = 2 * T(n,n/2) where T(n,x) is a Chebyshev polynomial of the first kind.

The programs for A343259, there is no canonical definition to state claims against.
-/

/-! ## A343259.P11078408535558821164

`A060964(∑[4*n])`
-/

namespace A343259.P11078408535558821164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343259.P11078408535558821164

/-! ## A343259.P7656463323735843689

`abs(A060964(∑[A008586(n)]))`
-/

namespace A343259.P7656463323735843689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A343259.P7656463323735843689

/-! ## A343259.P14481721449315092525

`abs(A060964(A014105(n)+n))`
-/

namespace A343259.P14481721449315092525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060964 (A014105 n + (n : ℤ)).toNat|

end

end A343259.P14481721449315092525

/-! ## A343259.P15051964626419834421

`gcd(A000038(n), A060964(A046092(n)))`
-/

namespace A343259.P15051964626419834421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A060964 (A046092 n).toNat)

end

end A343259.P15051964626419834421

/-! ## A343259.P15036830645253904496

`A060964(A014105(n)+n)^A007318(C(n, 2))`
-/

namespace A343259.P15036830645253904496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060964 (A014105 n + (n : ℤ)).toNat : ℚ) ^ (A007318 (Nat.choose n 2) : ℤ)

end

end A343259.P15036830645253904496

/-!
# A343260: a(n) = 2 * T(n,(n+1)/2) where T(n,x) is a Chebyshev polynomial of the first kind.

The programs for A343260, there is no canonical definition to state claims against.
-/

/-! ## A343260.P3763169726633212013

`A060964(2*(n+1)²)`
-/

namespace A343260.P3763169726633212013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (2 * (n + 1) ^ 2)

end

end A343260.P3763169726633212013

/-! ## A343260.P5055018127277613969

`abs(A060964(∑[A016825(n)]))`
-/

namespace A343260.P5055018127277613969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A343260.P5055018127277613969

/-! ## A343260.P14876135990459339791

`abs(A060964(A001105(n+1)))`
-/

namespace A343260.P14876135990459339791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060964 (A001105 (n + 1)).toNat|

end

end A343260.P14876135990459339791

/-! ## A343260.P16783300737988953537

`abs(A060964(record[A168281(n+1)]))`
-/

namespace A343260.P16783300737988953537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A343260.P16783300737988953537

/-! ## A343260.P17605719324475047007

`abs(A060964(record[A278117(n+1)]))`
-/

namespace A343260.P17605719324475047007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A343260.P17605719324475047007

/-!
# A343261: a(n) = 2 * T(n,(n+2)/2) where T(n,x) is a Chebyshev polynomial of the first kind.

The programs for A343261, there is no canonical definition to state claims against.
-/

/-! ## A343261.P9036194892121340671

`A060964((n+1)²+(n+2)²)`
-/

namespace A343261.P9036194892121340671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A343261.P9036194892121340671

/-! ## A343261.P2506745556737052223

`record[A060964(A286457(n+1))]`
-/

namespace A343261.P2506745556737052223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (A286457 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343261.P2506745556737052223

/-! ## A343261.P13460310783681828337

`record[A060964(A292565(n+1))]`
-/

namespace A343261.P13460310783681828337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (A292565 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343261.P13460310783681828337

/-! ## A343261.P14178098555191644659

`record[A060964(record[A055096(n+2)])]`
-/

namespace A343261.P14178098555191644659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060964 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343261.P14178098555191644659

/-! ## A343261.P10134413725664937744

`A094956(A028310(n))+A094955(n+1)`
-/

namespace A343261.P10134413725664937744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094956 (A028310 n).toNat + A094955 (n + 1)

end

end A343261.P10134413725664937744

/-!
# A343264: Cardinalities of the sets of fusible numbers obtained at the consecutive steps of their construction as follows. We set S(0) = {0}. S(n+1) is obtained by adding to S(n) the sums (x+y+1)/2 for all x,y from S(n) with the property |x-y| < 1. Then, a(n) is the number of elements in S(n).

The programs for A343264, there is no canonical definition to state claims against.
-/

/-! ## A343264.P8466529908281191257

`A038567(A015533(n))`
-/

namespace A343264.P8466529908281191257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A015533 n).toNat

end

end A343264.P8466529908281191257

/-! ## A343264.P6735981105185598498

`A280513(A057960(n))`
-/

namespace A343264.P6735981105185598498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280513 (A057960 n).toNat

end

end A343264.P6735981105185598498

/-! ## A343264.P3788641488217928283

`A245473(A329274(n))`
-/

namespace A343264.P3788641488217928283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A329274 n).toNat

end

end A343264.P3788641488217928283

/-! ## A343264.P18082428943801385092

`A280513(∑[A155020(n)])`
-/

namespace A343264.P18082428943801385092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280513 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343264.P18082428943801385092

/-!
# A343265: a(n) is the number of ways n can be reached starting from 0 and using only two operations: adding one or, once n > 1, squaring.

The programs for A343265, there is no canonical definition to state claims against.
-/

/-! ## A343265.P8197246926124961302

`round(log(∑[char[n²]]!+2))`
-/

namespace A343265.P8197246926124961302
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) + 2 : ℝ))

end

end A343265.P8197246926124961302

/-! ## A343265.P7904260203721743519

`2-A175269(floor(sqrt(n)))`
-/

namespace A343265.P7904260203721743519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A175269 (Nat.sqrt n)

end

end A343265.P7904260203721743519

/-! ## A343265.P809123318653235750

`A229790(C(floor(sqrt(n)), 2))`
-/

namespace A343265.P809123318653235750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229790 (Nat.choose (Nat.sqrt n) 2)

end

end A343265.P809123318653235750

/-! ## A343265.P5918543190833568443

`floor(log2(A176621(floor(sqrt(n)))))`
-/

namespace A343265.P5918543190833568443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A176621 (Nat.sqrt n)).toNat

end

end A343265.P5918543190833568443

/-! ## A343265.P1492853527346145397

`ceil(A027379(floor(sqrt(n)))/4)`
-/

namespace A343265.P1492853527346145397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027379 (Nat.sqrt n) : ℚ) / 4⌉

end

end A343265.P1492853527346145397

/-! ## A343265.P5344488081593859745

`A025900(∑[11*char[n²]])`
-/

namespace A343265.P5344488081593859745
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025900 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A343265.P5344488081593859745

/-! ## A343265.P7325404925847672236

`A101776(C(∑[char[n²]], 3))`
-/

namespace A343265.P7325404925847672236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101776 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 3)

end

end A343265.P7325404925847672236

/-! ## A343265.P17263524634083321564

`A004280(floor(sqrt(acot(n)+n)))`
-/

namespace A343265.P17263524634083321564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 ⌊Real.sqrt (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))⌋.toNat

end

end A343265.P17263524634083321564

/-! ## A343265.P10827064438513660094

`A279516(ceil(sqrt(acot(n)+n)))`
-/

namespace A343265.P10827064438513660094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279516 ⌈Real.sqrt (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))⌉.toNat

end

end A343265.P10827064438513660094

/-! ## A343265.P16105169874261356416

`ceil(A261229(∑[char[n²]])/3)`
-/

namespace A343265.P16105169874261356416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261229 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌉

end

end A343265.P16105169874261356416

/-!
# A343267: Numbers that are not the sum of four or fewer terms from A020330 (not necessarily distinct).

The programs for A343267, there is no canonical definition to state claims against.
-/

/-! ## A343267.P11163846122808875032

`eq[0, A290335(n)]`
-/

namespace A343267.P11163846122808875032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290335 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343267.P11163846122808875032

/-! ## A343267.P18078513739270698402

`eq[0, A298731(n)]`
-/

namespace A343267.P18078513739270698402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343267.P18078513739270698402

/-! ## A343267.P10509282187808214269

`record[gcd(n+1, A298731(n+1))]`
-/

namespace A343267.P10509282187808214269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A298731 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343267.P10509282187808214269

/-! ## A343267.P1736233583011372799

`record[(n+1)/(A290335(n+1)+1)]`
-/

namespace A343267.P1736233583011372799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A290335 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343267.P1736233583011372799

/-! ## A343267.P15014018437747905630

`∩[A290334(n+1), A343268(n+1)]`
-/

namespace A343267.P15014018437747905630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343268 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343267.P15014018437747905630

/-! ## A343267.P5168741788626833338

`record[n+1-A187452(A290335(n+1)+1)]`
-/

namespace A343267.P5168741788626833338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A187452 (A290335 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343267.P5168741788626833338

/-! ## A343267.P3600742879947788481

`record[(n+1)/A007088(A298731(n+1)+1)]`
-/

namespace A343267.P3600742879947788481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007088 (A298731 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343267.P3600742879947788481

/-! ## A343267.P236767091394060930

`record[n+1-A007088(2*A290335(n+1))]`
-/

namespace A343267.P236767091394060930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A007088 (2 * A290335 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343267.P236767091394060930

/-!
# A343268: Numbers that are not the sum of exactly four terms from A020330 (not necessarily distinct).

The programs for A343268, there is no canonical definition to state claims against.
-/

/-! ## A343268.P13924751840257701473

`eq[1, A319719(A281457(2*n+3))]`
-/

namespace A343268.P13924751840257701473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319719 (A281457 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343268.P13924751840257701473

/-! ## A343268.P13045920006431075311

`eq[1, A219347(A281457(2*n+3)²²)]`
-/

namespace A343268.P13045920006431075311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 ((A281457 (2 * n + 3) ^ 2) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343268.P13045920006431075311

/-! ## A343268.P17947572035483789806

`lt[A209756(n+1), A049988(A210421(n+1))]`
-/

namespace A343268.P17947572035483789806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (A210421 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343268.P17947572035483789806

/-! ## A343268.P13947601583507816185

`lt[A292152(n+1), A249459(A023153(n+1))]`
-/

namespace A343268.P13947601583507816185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249459 (A023153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343268.P13947601583507816185

/-! ## A343268.P4253495621125060969

`lt[A333382(A007318(n)), A146292(3*n+2)]`
-/

namespace A343268.P4253495621125060969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343268.P4253495621125060969

/-!
# A343270: Number of partitions of n into 3 parts x,y,z such that (x+y+z) | x*y*z.

The programs for A343270, there is no canonical definition to state claims against.
-/

/-! ## A343270.P4115104198600292610

`A333251(A305801(n+1)%A346309(3*n+2))`
-/

namespace A343270.P4115104198600292610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333251 (Int.tmod (A305801 (n + 1)) (A346309 (3 * n + 2))).toNat

end

end A343270.P4115104198600292610

/-! ## A343270.P17630253767042441928

`A244231(C(A237984(n+1), 4))`
-/

namespace A343270.P17630253767042441928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (Nat.choose (A237984 (n + 1)).toNat 4)

end

end A343270.P17630253767042441928

/-! ## A343270.P17592673935983495562

`A333218(3*n+2)%A324160(A076610(n+1))`
-/

namespace A343270.P17592673935983495562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333218 (3 * n + 2)) (A324160 (A076610 (n + 1)).toNat)

end

end A343270.P17592673935983495562

/-!
# A343272: Partial sums of A170842.

The programs for A343272, there is no canonical definition to state claims against.
-/

/-! ## A343272.P16430083500105431042

`∑[A170842(n)]`
-/

namespace A343272.P16430083500105431042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343272.P16430083500105431042

/-! ## A343272.P2279609251555917950

`∑[A170841(n)/3-a(n-1)]` with `a(0)=1`
-/

namespace A343272.P2279609251555917950
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A170841 n : ℚ) / 3 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343272.P2279609251555917950

/-! ## A343272.P3045812376986187616

`A170842(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A343272.P3045812376986187616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A170842 n + a (A023443 n).toNat

end

end A343272.P3045812376986187616

/-! ## A343272.P6870510329145703708

`A000027(A170842(n)+a(n-1))` with `a(0)=1`
-/

namespace A343272.P6870510329145703708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A170842 n + a (n - 1)).toNat

end

end A343272.P6870510329145703708

/-! ## A343272.P13816211553922877967

`A028310(A170842(n)+a(n-1))` with `a(0)=1`
-/

namespace A343272.P13816211553922877967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (A170842 n + a (n - 1)).toNat

end

end A343272.P13816211553922877967

/-! ## A343272.P17345820803248427541

`A170842(n)-A001489(a(n-1))` with `a(0)=1`
-/

namespace A343272.P17345820803248427541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A170842 n - A001489 (a (n - 1)).toNat

end

end A343272.P17345820803248427541

/-! ## A343272.P9339063136856540599

`A170842(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A343272.P9339063136856540599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A170842 n + a (A004273 n - (n : ℤ)).toNat

end

end A343272.P9339063136856540599

/-! ## A343272.P7988176450353151672

`A170842(n)+a(A065475(n+1)-3)` with `a(0)=1`
-/

namespace A343272.P7988176450353151672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A170842 n + a (A065475 (n + 1) - 3).toNat

end

end A343272.P7988176450353151672

/-!
# A343274: a(n) = Sum_{d|n} d^d * sopf(d).

The programs for A343274, there is no canonical definition to state claims against.
-/

/-! ## A343274.P13228851900612818061

`(n+1)/∏{p}[n+1, (n+1)/#]*A023443(∑{d}[n+1, #^#])`
-/

namespace A343274.P13228851900612818061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)) * (A023443 (∑ d ∈ Nat.divisors (f2 n), d ^ d) : ℚ)

end

end A343274.P13228851900612818061

/-!
# A343275: a(n) = |2*n - 10^length(n)|.

The programs for A343275, the canonical program `A343275.P7124724049167782293` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343275 has offset 1).

The definition of A343275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343275.P7124724049167782293

`abs(2*(n+1)-10^A055642(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343275

/-- `abs(2*(n+1)-10^A055642(n+1))` -/
def P7124724049167782293.Spec : Prop :=
  ∀ n, P7124724049167782293.a n = (A343275 (n + 1) : ℚ)

end A343275

/-! ## A343275.P11981615206629544159

`abs(A061601(n+1)-n)`
-/

namespace A343275.P11981615206629544159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A061601 (n + 1) - (n : ℤ)|

end

end A343275.P11981615206629544159

namespace A343275

/-- `abs(A061601(n+1)-n)` -/
def P11981615206629544159.Spec : Prop :=
  ∀ n, P11981615206629544159.a n = A343275 (n + 1)

end A343275

/-! ## A343275.P4312382701956663709

`lcm(A061601(n+1)-n, A000034(n))`
-/

namespace A343275.P4312382701956663709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061601 (n + 1) - (n : ℤ)) (A000034 n)

end

end A343275.P4312382701956663709

namespace A343275

/-- `lcm(A061601(n+1)-n, A000034(n))` -/
def P4312382701956663709.Spec : Prop :=
  ∀ n, (P4312382701956663709.a n : ℤ) = A343275 (n + 1)

end A343275

/-! ## A343275.P17303728242979858476

`∑{d}[A061601(n+1)-n, A000010(#)]`
-/

namespace A343275.P17303728242979858476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A343275.P17303728242979858476

namespace A343275

/-- `∑{d}[A061601(n+1)-n, A000010(#)]` -/
def P17303728242979858476.Spec : Prop :=
  ∀ n, P17303728242979858476.a n = A343275 (n + 1)

end A343275

/-! ## A343275.P3275110150270284716

`lcm(A061601(n+1)+A001489(n), A014709(n))`
-/

namespace A343275.P3275110150270284716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061601 (n + 1) + A001489 n) (A014709 n)

end

end A343275.P3275110150270284716

namespace A343275

/-- `lcm(A061601(n+1)+A001489(n), A014709(n))` -/
def P3275110150270284716.Spec : Prop :=
  ∀ n, (P3275110150270284716.a n : ℤ) = A343275 (n + 1)

end A343275

/-! ## A343275.P15193601672384648260

`lcm(2, A004524(2*n+1)-A061601(n+1))`
-/

namespace A343275.P15193601672384648260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A004524 (2 * n + 1) - A061601 (n + 1))

end

end A343275.P15193601672384648260

namespace A343275

/-- `lcm(2, A004524(2*n+1)-A061601(n+1))` -/
def P15193601672384648260.Spec : Prop :=
  ∀ n, (P15193601672384648260.a n : ℤ) = A343275 (n + 1)

end A343275

/-! ## A343275.P5745837042669622225

`sqrt(A000007(2*n+1)+(A061601(n+1)-n)²)`
-/

namespace A343275.P5745837042669622225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000007 (2 * n + 1) + (A061601 (n + 1) - (n : ℤ)) ^ 2 : ℝ)

end

end A343275.P5745837042669622225

namespace A343275

/-- `sqrt(A000007(2*n+1)+(A061601(n+1)-n)²)` -/
def P5745837042669622225.Spec : Prop :=
  ∀ n, P5745837042669622225.a n = (A343275 (n + 1) : ℝ)

end A343275

/-! ## A343275.P12302073706980610389

`gcd(A061601(n+1)-n, A343046(∑[n]))`
-/

namespace A343275.P12302073706980610389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061601 (n + 1) - (n : ℤ)) (A343046 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A343275.P12302073706980610389

namespace A343275

/-- `gcd(A061601(n+1)-n, A343046(∑[n]))` -/
def P12302073706980610389.Spec : Prop :=
  ∀ n, (P12302073706980610389.a n : ℤ) = A343275 (n + 1)

end A343275

/-! ## A343275.P17981101018802316008

`A000196((A061601(n+1)-n)²)`
-/

namespace A343275.P17981101018802316008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A061601 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A343275.P17981101018802316008

namespace A343275

/-- `A000196((A061601(n+1)-n)²)` -/
def P17981101018802316008.Spec : Prop :=
  ∀ n, P17981101018802316008.a n = A343275 (n + 1)

end A343275

/-!
# A343276: a(n) = n! * [x^n] -x*(x + 1)*exp(x)/(x - 1)^3.

The programs for A343276, the canonical program `A343276.P2563068009371661098` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343276 has offset 0).

The definition of A343276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343276.P2563068009371661098

`(2+n*(n+2))*a(n-1)/(n-1)-(n+1)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343276

/-- `(2+n*(n+2))*a(n-1)/(n-1)-(n+1)*a(n-2)` -/
def P2563068009371661098.Spec : Prop :=
  ∀ n, P2563068009371661098.a n = (A343276 n : ℚ)

end A343276

/-! ## A343276.P13249137817631000642

`((n+1)²+1)*a(n-1)/(n-1)-(n+1)*a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A343276.P13249137817631000642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((n + 1) ^ 2 + 1 : ℚ) * (a (n - 1) / ((n : ℤ) - 1 : ℚ)) - (n + 1 : ℚ) * a (n - 2)

end

end A343276.P13249137817631000642

namespace A343276

/-- `((n+1)²+1)*a(n-1)/(n-1)-(n+1)*a(n-2)` -/
def P13249137817631000642.Spec : Prop :=
  ∀ n, P13249137817631000642.a n = (A343276 n : ℚ)

end A343276

/-! ## A343276.P4546291919037761152

`Δ[A093964(n)]-A082028(n)`
-/

namespace A343276.P4546291919037761152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A082028 n

end

end A343276.P4546291919037761152

namespace A343276

/-- `Δ[A093964(n)]-A082028(n)` -/
def P4546291919037761152.Spec : Prop :=
  ∀ n, P4546291919037761152.a n = A343276 n

end A343276

/-! ## A343276.P13675252006917917724

`n*(A001339(n)-A006183(n+1))`
-/

namespace A343276.P13675252006917917724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A001339 n - A006183 (n + 1))

end

end A343276.P13675252006917917724

namespace A343276

/-- `n*(A001339(n)-A006183(n+1))` -/
def P13675252006917917724.Spec : Prop :=
  ∀ n, P13675252006917917724.a n = A343276 n

end A343276

/-! ## A343276.P16642086763646964247

`n*Δ[A006183(n+1)-A000522(n)]`
-/

namespace A343276.P16642086763646964247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006183 (n + 1) - A000522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A343276.P16642086763646964247

namespace A343276

/-- `n*Δ[A006183(n+1)-A000522(n)]` -/
def P16642086763646964247.Spec : Prop :=
  ∀ n, P16642086763646964247.a n = A343276 n

end A343276

/-!
# A343277: a(n) = lcm(denominator(p(n, x))), where p(n, x) are the rational polynomials defined in A342321.

The programs for A343277, there is no canonical definition to state claims against.
-/

/-! ## A343277.P15713547277586483925

`(n+1)*A342321(A000096(n))`
-/

namespace A343277.P15713547277586483925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A342321 (A000096 n).toNat

end

end A343277.P15713547277586483925

/-! ## A343277.P10838562954746206507

`(n+1)*A342321(eq[1, A121438(n)])`
-/

namespace A343277.P10838562954746206507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A342321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343277.P10838562954746206507

/-! ## A343277.P15185582540152482860

`A123108(lcm(∑[4*n], A002805(n+1)))`
-/

namespace A343277.P15185582540152482860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A002805 (n + 1)))

end

end A343277.P15185582540152482860

/-! ## A343277.P6908602981683145395

`A065033(lcm(A002805(n+1), A046092(n)))`
-/

namespace A343277.P6908602981683145395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.lcm (A002805 (n + 1)) (A046092 n))

end

end A343277.P6908602981683145395

/-! ## A343277.P10877683025686171717

`A179661(A048816(n+1)+A005843(n))`
-/

namespace A343277.P10877683025686171717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179661 (A048816 (n + 1) + A005843 n).toNat

end

end A343277.P10877683025686171717

/-!
# A343278: a(n) = Stirling2(n, ceiling(n/2)).

The programs for A343278, there is no canonical definition to state claims against.
-/

/-! ## A343278.P15416093339872978038

`A106800(floor(n²/2)+n)`
-/

namespace A343278.P15416093339872978038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A343278.P15416093339872978038

/-! ## A343278.P13765739514292986466

`A008278(A008619(n²))`
-/

namespace A343278.P13765739514292986466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A008619 (n ^ 2)).toNat

end

end A343278.P13765739514292986466

/-! ## A343278.P8683466269619925026

`A008278(A099392(n+1))`
-/

namespace A343278.P8683466269619925026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008278 (A099392 (n + 1)).toNat

end

end A343278.P8683466269619925026

/-! ## A343278.P11364439618990044063

`A048993(ceil(n²/2)+n)`
-/

namespace A343278.P11364439618990044063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A343278.P11364439618990044063

/-! ## A343278.P14326874016150610790

`A008277(ceil(n²/2)+floor(acot(n)))`
-/

namespace A343278.P14326874016150610790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (⌈(n ^ 2 : ℚ) / 2⌉ + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A343278.P14326874016150610790

/-! ## A343278.P42770339324402671

`A008277(A065033(n²))`
-/

namespace A343278.P42770339324402671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (A065033 (n ^ 2)).toNat

end

end A343278.P42770339324402671

/-!
# A343279: a(n) = Stirling2(n, floor(n/2)).

The programs for A343279, there is no canonical definition to state claims against.
-/

/-! ## A343279.P15799567608200072085

`A106800(ceil(n²/2)+n)`
-/

namespace A343279.P15799567608200072085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 (⌈(n ^ 2 : ℚ) / 2⌉ + (n : ℤ)).toNat

end

end A343279.P15799567608200072085

/-! ## A343279.P6545508812996206213

`A048993(∑[or(1, n)]-1)`
-/

namespace A343279.P6545508812996206213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A343279.P6545508812996206213

/-! ## A343279.P16480180668014137379

`A048993(floor(n²/2)+n)`
-/

namespace A343279.P16480180668014137379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A343279.P16480180668014137379

/-! ## A343279.P5657227416731119682

`A151511(∑[or(1, n)]-1)`
-/

namespace A343279.P5657227416731119682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A343279.P5657227416731119682

/-! ## A343279.P18410406487358215570

`A151511(∑[and(n, -2)]+n)`
-/

namespace A343279.P18410406487358215570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151511 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A343279.P18410406487358215570

/-!
# A343281: Numbers of the form x + y + z in positive integers x,y,z such that (x+y) | x*y, (y+z) | y*z, and (x+z) | x*z.

The programs for A343281, there is no canonical definition to state claims against.
-/

/-! ## A343281.P1767765115866637509

`∪[A005279(n+1), A146081(n)]`
-/

namespace A343281.P1767765115866637509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146081 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P1767765115866637509

/-! ## A343281.P5619886849064774844

`∪[A005279(n+1), A343207(n+1)]`
-/

namespace A343281.P5619886849064774844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P5619886849064774844

/-! ## A343281.P9196451115941127627

`∪[A051774(n+1), A343207(n+1)]`
-/

namespace A343281.P9196451115941127627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P9196451115941127627

/-! ## A343281.P14966055601652287374

`∪[A119357(n+1), A343207(n+1)]`
-/

namespace A343281.P14966055601652287374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P14966055601652287374

/-! ## A343281.P9423854062883828134

`∪[A129512(n+1), A343207(n+1)]`
-/

namespace A343281.P9423854062883828134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P9423854062883828134

/-! ## A343281.P5100975044276579123

`∪[A259366(n+1), A343207(n+1)]`
-/

namespace A343281.P5100975044276579123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259366 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P5100975044276579123

/-! ## A343281.P10759188065357446690

`record[A005279(n+1)%A178100(n+1)]`
-/

namespace A343281.P10759188065357446690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005279 (n + 1)) (A178100 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343281.P10759188065357446690

/-! ## A343281.P10326223067419009472

`A005279(n+1)-A046312(n+1)%4`
-/

namespace A343281.P10326223067419009472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) - Int.tmod (A046312 (n + 1)) 4

end

end A343281.P10326223067419009472

/-! ## A343281.P15608196012704101137

`∪[A043158(3*n+5), A005279(n+1)]`
-/

namespace A343281.P15608196012704101137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043158 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343281.P15608196012704101137

/-! ## A343281.P4736735137514207430

`A005279(n+1)-A282516(C(n+1, 63))`
-/

namespace A343281.P4736735137514207430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1) - A282516 (Nat.choose (n + 1) 63)

end

end A343281.P4736735137514207430

/-!
# A343282: 

The programs for A343282, there is no canonical definition to state claims against.
-/

/-! ## A343282.P6400795443890555375

`A082544(10^n)`
-/

namespace A343282.P6400795443890555375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082544 (10 ^ n)

end

end A343282.P6400795443890555375

/-!
# A343283: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(k^3).

The programs for A343283, there is no canonical definition to state claims against.
-/

/-! ## A343283.P8027644563284467839

`A343323(n+1)+A049084(A186997(n))`
-/

namespace A343283.P8027644563284467839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343323 (n + 1) + A049084 (A186997 n).toNat

end

end A343283.P8027644563284467839

/-! ## A343283.P8600816206101595411

`A057521(A067535(n+1)²*A247651(n))`
-/

namespace A343283.P8600816206101595411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A067535 (n + 1) ^ 2 * A247651 n).toNat

end

end A343283.P8600816206101595411

/-! ## A343283.P4503881536203499828

`A057521(A067535(n+1)*A247651(n)*A067535(n+1))`
-/

namespace A343283.P4503881536203499828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A067535 (n + 1) * A247651 n * A067535 (n + 1)).toNat

end

end A343283.P4503881536203499828

/-!
# A343284: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(k^4).

The programs for A343284, there is no canonical definition to state claims against.
-/

/-! ## A343284.P14417432658039973758

`A309242(A341656(n+1))`
-/

namespace A343284.P14417432658039973758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309242 (A341656 (n + 1)).toNat

end

end A343284.P14417432658039973758

/-!
# A343285: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(k^5).

The programs for A343285, there is no canonical definition to state claims against.
-/

/-! ## A343285.P3814218719043853487

`A343325(n+1)+A258651(A344248(n+1))`
-/

namespace A343285.P3814218719043853487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343325 (n + 1) + A258651 (A344248 (n + 1)).toNat

end

end A343285.P3814218719043853487

/-! ## A343285.P1184505682918966259

`A343342(A089463(n))+A343325(n+1)`
-/

namespace A343285.P1184505682918966259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343342 (A089463 n).toNat + A343325 (n + 1)

end

end A343285.P1184505682918966259

/-!
# A343286: Dirichlet g.f.: Product_{k>=2} 1 / (1 - k^(-s))^(k^6).

The programs for A343286, there is no canonical definition to state claims against.
-/

/-! ## A343286.P13555604173794949149

`A086933(A261461(n)*A343285(n+1))`
-/

namespace A343286.P13555604173794949149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086933 (A261461 n * A343285 (n + 1)).toNat

end

end A343286.P13555604173794949149

/-!
# A343291: a(n) = (n-2)*2^(n-1) + n + 2.

The programs for A343291, the canonical program `A343291.P1131782987714866787` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343291 has offset 0).

The definition of A343291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343291.P1131782987714866787

`(n-2)*2^(n-1)+n+2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A343291

/-- `(n-2)*2^(n-1)+n+2` -/
def P1131782987714866787.Spec : Prop :=
  ∀ n, P1131782987714866787.a n = (A343291 n : ℚ)

end A343291

/-! ## A343291.P13101115433632235852

`∑[A139756(n)+1]`
-/

namespace A343291.P13101115433632235852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343291.P13101115433632235852

namespace A343291

/-- `∑[A139756(n)+1]` -/
def P13101115433632235852.Spec : Prop :=
  ∀ n, P13101115433632235852.a n = A343291 n

end A343291

/-! ## A343291.P13109168290928318873

`∑[A154222(n)-n]`
-/

namespace A343291.P13109168290928318873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343291.P13109168290928318873

namespace A343291

/-- `∑[A154222(n)-n]` -/
def P13109168290928318873.Spec : Prop :=
  ∀ n, P13109168290928318873.a n = A343291 n

end A343291

/-! ## A343291.P14342879119477528559

`∑[∑[A049610(n)]+1]`
-/

namespace A343291.P14342879119477528559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343291.P14342879119477528559

namespace A343291

/-- `∑[∑[A049610(n)]+1]` -/
def P14342879119477528559.Spec : Prop :=
  ∀ n, P14342879119477528559.a n = A343291 n

end A343291

/-! ## A343291.P53691846302039426

`A079859(n+4)%A291097(n+2)`
-/

namespace A343291.P53691846302039426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079859 (n + 4)) (A291097 (n + 2))

end

end A343291.P53691846302039426

namespace A343291

/-- `A079859(n+4)%A291097(n+2)` -/
def P53691846302039426.Spec : Prop :=
  ∀ n, P53691846302039426.a n = A343291 n

end A343291

/-!
# A343292: Number of distinct results produced when generating a graphical image of each row of the multiplication table modulo n.

The programs for A343292, the canonical program `A343292.P10693571210079166947` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343292 has offset 1).

The definition of A343292 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A329152, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343292.P10693571210079166947

`n+1-A329152(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A343292

/-- `n+1-A329152(n+1)` -/
def P10693571210079166947.Spec : Prop :=
  ∀ n, P10693571210079166947.a n = A343292 (n + 1)

theorem P10693571210079166947.correct : P10693571210079166947.Spec := by
  intro n
  simp only [A343292, Nat.add_sub_cancel]

end A343292

/-! ## A343292.P3879820162696912363

`n+1-(A000010(n+1)-A060594(n+1))/2`
-/

namespace A343292.P3879820162696912363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A000010 (n + 1) - A060594 (n + 1) : ℚ) / 2

end

end A343292.P3879820162696912363

namespace A343292

/-- `n+1-(A000010(n+1)-A060594(n+1))/2` -/
def P3879820162696912363.Spec : Prop :=
  ∀ n, P3879820162696912363.a n = (A343292 (n + 1) : ℚ)

end A343292

/-! ## A343292.P5532002956988080759

`A024000(A329152(n+1))+n`
-/

namespace A343292.P5532002956988080759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A329152 (n + 1)).toNat + (n : ℤ)

end

end A343292.P5532002956988080759

namespace A343292

/-- `A024000(A329152(n+1))+n` -/
def P5532002956988080759.Spec : Prop :=
  ∀ n, P5532002956988080759.a n = A343292 (n + 1)

end A343292

/-! ## A343292.P1090427201353554268

`abs(A329152(n+1)+A001478(n+1))`
-/

namespace A343292.P1090427201353554268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A329152 (n + 1) + A001478 (n + 1)|

end

end A343292.P1090427201353554268

namespace A343292

/-- `abs(A329152(n+1)+A001478(n+1))` -/
def P1090427201353554268.Spec : Prop :=
  ∀ n, P1090427201353554268.a n = A343292 (n + 1)

end A343292

/-! ## A343292.P12657571606311719574

`(A060594(n+1)+A053158(n+1))/2`
-/

namespace A343292.P12657571606311719574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060594 (n + 1) + A053158 (n + 1) : ℚ) / 2

end

end A343292.P12657571606311719574

namespace A343292

/-- `(A060594(n+1)+A053158(n+1))/2` -/
def P12657571606311719574.Spec : Prop :=
  ∀ n, P12657571606311719574.a n = (A343292 (n + 1) : ℚ)

end A343292

/-! ## A343292.P17390406817908446944

`-(A023443(A329152(n+1))+A001489(n))`
-/

namespace A343292.P17390406817908446944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A023443 (A329152 (n + 1)).toNat + A001489 n)

end

end A343292.P17390406817908446944

namespace A343292

/-- `-(A023443(A329152(n+1))+A001489(n))` -/
def P17390406817908446944.Spec : Prop :=
  ∀ n, P17390406817908446944.a n = A343292 (n + 1)

end A343292

/-! ## A343292.P5997666403990935639

`A008619(A155828(n+1)+A053158(n+1))`
-/

namespace A343292.P5997666403990935639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A155828 (n + 1) + A053158 (n + 1)).toNat

end

end A343292.P5997666403990935639

namespace A343292

/-- `A008619(A155828(n+1)+A053158(n+1))` -/
def P5997666403990935639.Spec : Prop :=
  ∀ n, P5997666403990935639.a n = A343292 (n + 1)

end A343292

/-! ## A343292.P911756405961346786

`A025581(A329152(n+1)+∑[n+1])`
-/

namespace A343292.P911756405961346786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A329152 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A343292.P911756405961346786

namespace A343292

/-- `A025581(A329152(n+1)+∑[n+1])` -/
def P911756405961346786.Spec : Prop :=
  ∀ n, P911756405961346786.a n = A343292 (n + 1)

end A343292

/-! ## A343292.P2875271694032720597

`A004736(A329152(n+1)+∑[n+1]+2)`
-/

namespace A343292.P2875271694032720597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A329152 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A343292.P2875271694032720597

namespace A343292

/-- `A004736(A329152(n+1)+∑[n+1]+2)` -/
def P2875271694032720597.Spec : Prop :=
  ∀ n, P2875271694032720597.a n = A343292 (n + 1)

end A343292

/-! ## A343292.P615523802934729804

`A195663(A329152(n+1)+∑[n])`
-/

namespace A343292.P615523802934729804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (A329152 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A343292.P615523802934729804

namespace A343292

/-- `A195663(A329152(n+1)+∑[n])` -/
def P615523802934729804.Spec : Prop :=
  ∀ n, P615523802934729804.a n = A343292 (n + 1)

end A343292

/-!
# A343293: a(n+1) is the smallest preimage k such that A008477(k) = a(n) with a(1) = 36.

The programs for A343293, there is no canonical definition to state claims against.
-/

/-! ## A343293.P10802967114223203426

`A195080(2*(n+2))^A096111(A274708(3*n))`
-/

namespace A343293.P10802967114223203426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195080 (2 * (n + 2)) : ℚ) ^ (A096111 (A274708 (3 * n)).toNat : ℤ)

end

end A343293.P10802967114223203426

/-!
# A343297: Numbers k such that there are exactly two multisets of cardinality k where the sum equals the product (A033178(k)=2).

The programs for A343297, there is no canonical definition to state claims against.
-/

/-! ## A343297.P18410895647576796707

`eq[2, A033178(n+2)]+2`
-/

namespace A343297.P18410895647576796707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A343297.P18410895647576796707

/-! ## A343297.P4188843434323908932

`A009056(eq[2, A033178(n+2)])`
-/

namespace A343297.P4188843434323908932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343297.P4188843434323908932

/-! ## A343297.P1968851390012043591

`A171463(eq[2, A033178(n+2)])`
-/

namespace A343297.P1968851390012043591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343297.P1968851390012043591

/-! ## A343297.P3127336890024554837

`eq[2, A033178(A233583(n+1))]`
-/

namespace A343297.P3127336890024554837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033178 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343297.P3127336890024554837

/-! ## A343297.P1247392597694332331

`eq[3, Δ[A360971(n)]]`
-/

namespace A343297.P1247392597694332331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343297.P1247392597694332331

/-!
# A343299: a(n) = n + A000120(a(n-1)) - a(n-1), with n > 1, a(1) = 1, where A000120(x) is the binary weight of x.

The programs for A343299, the canonical program `A343299.P10274657373919912099` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343299 has offset 1).

The definition of A343299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+A000120(a(n-1))-a(n-1)` (program `A343299.P10274657373919912099`, by `A343299.P10274657373919912099.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343299.P7330903545944297527

`n+1-A011371(a(n-1))` with `a(0)=1`
-/

namespace A343299.P7330903545944297527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - A011371 (a (n - 1)).toNat

end

end A343299.P7330903545944297527

namespace A343299

/-- `n+1-A011371(a(n-1))` -/
def P7330903545944297527.Spec : Prop :=
  ∀ n, P7330903545944297527.a n = A343299 (n + 1)

end A343299

/-! ## A343299.P10274657373919912099

`n+1+A000120(a(n-1))-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A343299

/-- `n+1+A000120(a(n-1))-a(n-1)` -/
def P10274657373919912099.Spec : Prop :=
  ∀ n, P10274657373919912099.a n = A343299 (n + 1)

theorem P10274657373919912099.correct : P10274657373919912099.Spec := by
  intro n
  simp only [A343299, Nat.add_sub_cancel]

end A343299

/-! ## A343299.P9965755595367719138

`2-A113474(a(n-1))+n` with `a(0)=1`
-/

namespace A343299.P9965755595367719138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - A113474 (a (n - 1)).toNat + (n : ℤ)

end

end A343299.P9965755595367719138

namespace A343299

/-- `2-A113474(a(n-1))+n` -/
def P9965755595367719138.Spec : Prop :=
  ∀ n, P9965755595367719138.a n = A343299 (n + 1)

end A343299

/-! ## A343299.P4320352159849615511

`a(n-1)+n+1-A005187(a(n-1))` with `a(0)=1`
-/

namespace A343299.P4320352159849615511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℤ) - A005187 (a (n - 1)).toNat

end

end A343299.P4320352159849615511

namespace A343299

/-- `a(n-1)+n+1-A005187(a(n-1))` -/
def P4320352159849615511.Spec : Prop :=
  ∀ n, P4320352159849615511.a n = A343299 (n + 1)

end A343299

/-! ## A343299.P2621856502448693723

`A000005(A001316(a(n-1)))+n-a(n-1)` with `a(0)=1`
-/

namespace A343299.P2621856502448693723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000005 (A001316 (a (n - 1)).toNat).toNat + (n : ℤ) - a (n - 1)

end

end A343299.P2621856502448693723

namespace A343299

/-- `A000005(A001316(a(n-1)))+n-a(n-1)` -/
def P2621856502448693723.Spec : Prop :=
  ∀ n, P2621856502448693723.a n = A343299 (n + 1)

end A343299

/-! ## A343299.P2345350757389195192

`n+1-(a(n-1)-A023416(A010078(a(n-1)+1)))` with `a(0)=1`
-/

namespace A343299.P2345350757389195192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - (a (n - 1) - A023416 (A010078 (a (n - 1) + 1).toNat).toNat)

end

end A343299.P2345350757389195192

namespace A343299

/-- `n+1-(a(n-1)-A023416(A010078(a(n-1)+1)))` -/
def P2345350757389195192.Spec : Prop :=
  ∀ n, P2345350757389195192.a n = A343299 (n + 1)

end A343299

/-! ## A343299.P1690428792318016789

`n+1-val(a(n-1)!, 2)` with `a(0)=1`
-/

namespace A343299.P1690428792318016789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (a (n - 1)).toNat) 2 : ℤ)

end

end A343299.P1690428792318016789

namespace A343299

/-- `n+1-val(a(n-1)!, 2)` -/
def P1690428792318016789.Spec : Prop :=
  ∀ n, P1690428792318016789.a n = A343299 (n + 1)

end A343299

