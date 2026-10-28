import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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

/-!
# A235501: Riordan array (1/(1-2*x^2), x/(1-x)).

The programs for A235501, there is no canonical definition to state claims against.
-/

/-! ## A235501.P736526766194229705

`abs(A279008(∑[A035214(n)]))`
-/

namespace A235501.P736526766194229705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A235501.P736526766194229705

/-! ## A235501.P18409936800220677042

`abs(A279008(comp[A000217(n)]))`
-/

namespace A235501.P18409936800220677042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279008 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A235501.P18409936800220677042

/-! ## A235501.P2979672097352391036

`abs(A279008(A014132(n+1)))`
-/

namespace A235501.P2979672097352391036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279008 (A014132 (n + 1)).toNat|

end

end A235501.P2979672097352391036

/-! ## A235501.P15184134475101051158

`abs(A279008(∑[A010054(n)+1]))`
-/

namespace A235501.P15184134475101051158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279008 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A235501.P15184134475101051158

/-! ## A235501.P7793742406386180248

`A056926(A279008(A014132(n+1))²)`
-/

namespace A235501.P7793742406386180248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A279008 (A014132 (n + 1)).toNat ^ 2).toNat

end

end A235501.P7793742406386180248

/-! ## A235501.P2482128976666184430

`A097807(n)*A279008(A014132(n+1))`
-/

namespace A235501.P2482128976666184430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A279008 (A014132 (n + 1)).toNat

end

end A235501.P2482128976666184430

/-! ## A235501.P6588116409377544192

`gcd(A000038(n), A279008(A014132(n+1)))`
-/

namespace A235501.P6588116409377544192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279008 (A014132 (n + 1)).toNat)

end

end A235501.P6588116409377544192

/-! ## A235501.P2752498969325287794

`lcm(A020985(n), A279008(A014132(n+1)))`
-/

namespace A235501.P2752498969325287794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A279008 (A014132 (n + 1)).toNat)

end

end A235501.P2752498969325287794

/-! ## A235501.P12653895020314240981

`∑{d}[A279008(A014132(n+1)), A000010(#)]`
-/

namespace A235501.P12653895020314240981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279008 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A235501.P12653895020314240981

/-! ## A235501.P166616425279943406

`A033999(A025581(n))*A279008(A014132(n+1))`
-/

namespace A235501.P166616425279943406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A279008 (A014132 (n + 1)).toNat

end

end A235501.P166616425279943406

/-!
# A235502: Number of (n+1)X(1+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235502, there is no canonical definition to state claims against.
-/

/-! ## A235502.P8203370722654172843

`A235506(∑[n]+1)`
-/

namespace A235502.P8203370722654172843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235502.P8203370722654172843

/-! ## A235502.P8863346857518472393

`A235747(∑[n]+1)`
-/

namespace A235502.P8863346857518472393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235747 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235502.P8863346857518472393

/-! ## A235502.P10880697960683068993

`record[gcd(A002262(n), A235506(n+1))]`
-/

namespace A235502.P10880697960683068993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235506 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235502.P10880697960683068993

/-! ## A235502.P11016031007699818755

`record[gcd(A194801(n), A235747(n+1))]`
-/

namespace A235502.P11016031007699818755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A194801 n) (A235747 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235502.P11016031007699818755

/-! ## A235502.P14595671583580739789

`record[root(A235506(n+1), A212737(n+1))]`
-/

namespace A235502.P14595671583580739789
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235506 (n + 1) : ℝ) ^ (1 / (A212737 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235502.P14595671583580739789

/-!
# A235503: Number of (n+1)X(2+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235503, there is no canonical definition to state claims against.
-/

/-! ## A235503.P9342046492745097415

`A235506(∑[n+1]+2)`
-/

namespace A235503.P9342046492745097415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235503.P9342046492745097415

/-! ## A235503.P11292929266490959689

`record[gcd(A002262(n), A235506(n+2))]`
-/

namespace A235503.P11292929266490959689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235506 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235503.P11292929266490959689

/-! ## A235503.P16183351608671582140

`record[A235506(A152948(n+1))-A185012(n)]`
-/

namespace A235503.P16183351608671582140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (A152948 (n + 1)).toNat - A185012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235503.P16183351608671582140

/-! ## A235503.P2685671476005314203

`record[A060576(n)*A235506(A152948(n+1))]`
-/

namespace A235503.P2685671476005314203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A235506 (A152948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235503.P2685671476005314203

/-!
# A235504: Number of (n+1)X(3+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235504, there is no canonical definition to state claims against.
-/

/-! ## A235504.P7651380995713864022

`A235506(A167614(n+1))`
-/

namespace A235504.P7651380995713864022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (A167614 (n + 1)).toNat

end

end A235504.P7651380995713864022

/-! ## A235504.P12114033547493570953

`A235506(∑[n+3]+1)`
-/

namespace A235504.P12114033547493570953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235504.P12114033547493570953

/-!
# A235505: Number of (n+1)X(4+1) 0..3 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235505, there is no canonical definition to state claims against.
-/

/-! ## A235505.P13023987269169103986

`A235506(A167614(n+2)+1)`
-/

namespace A235505.P13023987269169103986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (A167614 (n + 2) + 1).toNat

end

end A235505.P13023987269169103986

/-! ## A235505.P17861917788120655751

`A235506(A000124(n+4)-(n+1))`
-/

namespace A235505.P17861917788120655751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235506 (A000124 (n + 4) - (n + 1 : ℤ)).toNat

end

end A235505.P17861917788120655751

/-!
# A235507: Harshad numbers which when divided by sum of their digits, give a quotient which is a Harshad number.

The programs for A235507, there is no canonical definition to state claims against.
-/

/-! ## A235507.P15804477918052694406

`record[A005349(n+1)*A188641(A113315(n+1))]`
-/

namespace A235507.P15804477918052694406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1) * A188641 (A113315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235507.P15804477918052694406

/-! ## A235507.P10024803260291525771

`record[A325454(n+1)*A360074(A113315(n+1))]`
-/

namespace A235507.P10024803260291525771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325454 (n + 1) * A360074 (A113315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235507.P10024803260291525771

/-! ## A235507.P2646872792794428071

`A255408(A235697(n+1))`
-/

namespace A235507.P2646872792794428071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A235697 (n + 1)).toNat

end

end A235507.P2646872792794428071

/-! ## A235507.P15405838693358549200

`A076314(10*A235697(n+1))`
-/

namespace A235507.P15405838693358549200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (10 * A235697 (n + 1)).toNat

end

end A235507.P15405838693358549200

/-! ## A235507.P6588520039606403864

`A235697(n+1)%A324334(n+1)²`
-/

namespace A235507.P6588520039606403864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235697 (n + 1)) (A324334 (n + 1) ^ 2)

end

end A235507.P6588520039606403864

/-! ## A235507.P12574475168492506626

`A235697(round(acot(A279339(2*n+5))+n)+1)`
-/

namespace A235507.P12574475168492506626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235697 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A279339 (2 * n + 5) : ℝ) + (n : ℝ)) + 1).toNat

end

end A235507.P12574475168492506626

/-! ## A235507.P8679249232562080351

`A235697(A003056(∑[A194981(n+1)]))`
-/

namespace A235507.P8679249232562080351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235697 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A235507.P8679249232562080351

/-! ## A235507.P2085633436662260052

`A168234(n+1)%2*A235697(n+1)`
-/

namespace A235507.P2085633436662260052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168234 (n + 1)) 2 * A235697 (n + 1)

end

end A235507.P2085633436662260052

/-! ## A235507.P5179101540060395699

`lcm(A014963(A308560(n+1)), A235697(n+1))`
-/

namespace A235507.P5179101540060395699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (A308560 (n + 1)).toNat) (A235697 (n + 1))

end

end A235507.P5179101540060395699

/-! ## A235507.P12806332368643039680

`A235697(A352871(A065877(n+1))+n+1)`
-/

namespace A235507.P12806332368643039680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235697 (A352871 (A065877 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A235507.P12806332368643039680

/-!
# A235510: Number of (n+1) X (1+1) 0..1 arrays with the sum of each 2 X 2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235510, the canonical program `A235510.P9250496520794656511` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235510 has offset 1).

The definition of A235510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235510.P9250496520794656511

`ogf((16-6x-23x^2+6x^3+8x^4)/(1-4x+6x^3-x^4-2x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235510

/-- `ogf((16-6x-23x^2+6x^3+8x^4)/(1-4x+6x^3-x^4-2x^5))` -/
def P9250496520794656511.Spec : Prop :=
  ∀ n, P9250496520794656511.a n = A235510 (n + 1)

theorem P9250496520794656511.correct : P9250496520794656511.Spec := by
  intro n
  simp only [A235510, Nat.add_sub_cancel]

end A235510

/-! ## A235510.P3108919535653502529

`A235736(∑[n]+1)`
-/

namespace A235510.P3108919535653502529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235510.P3108919535653502529

namespace A235510

/-- `A235736(∑[n]+1)` -/
def P3108919535653502529.Spec : Prop :=
  ∀ n, P3108919535653502529.a n = A235510 (n + 1)

end A235510

/-! ## A235510.P12772686031375476777

`record[A235736(n+1)/A156690(n)]`
-/

namespace A235510.P12772686031375476777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235736 (n + 1) : ℚ) / (A156690 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235510.P12772686031375476777

namespace A235510

/-- `record[A235736(n+1)/A156690(n)]` -/
def P12772686031375476777.Spec : Prop :=
  ∀ n, P12772686031375476777.a n = (A235510 (n + 1) : ℚ)

end A235510

/-! ## A235510.P10593455369068258557

`record[root(A235736(n+1), A008459(n))]`
-/

namespace A235510.P10593455369068258557
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235736 (n + 1) : ℝ) ^ (1 / (A008459 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235510.P10593455369068258557

namespace A235510

/-- `record[root(A235736(n+1), A008459(n))]` -/
def P10593455369068258557.Spec : Prop :=
  ∀ n, P10593455369068258557.a n = (A235510 (n + 1) : ℝ)

end A235510

/-! ## A235510.P294016268546868331

`record[gcd(A004197(n), A235736(n+1))]`
-/

namespace A235510.P294016268546868331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A235736 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235510.P294016268546868331

namespace A235510

/-- `record[gcd(A004197(n), A235736(n+1))]` -/
def P294016268546868331.Spec : Prop :=
  ∀ n, (P294016268546868331.a n : ℤ) = A235510 (n + 1)

end A235510

/-!
# A235511: Number of (n+1)X(2+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235511, there is no canonical definition to state claims against.
-/

/-! ## A235511.P7387576655305833158

`A235517(∑[n+1]+2)`
-/

namespace A235511.P7387576655305833158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235511.P7387576655305833158

/-! ## A235511.P13627961468358185558

`record[root(A235517(n+2), A039758(n))]`
-/

namespace A235511.P13627961468358185558
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235517 (n + 2) : ℝ) ^ (1 / (A039758 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235511.P13627961468358185558

/-! ## A235511.P16099707141060325858

`record[gcd(A002262(n), A235517(n+2))]`
-/

namespace A235511.P16099707141060325858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235517 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235511.P16099707141060325858

/-! ## A235511.P8214745884116506669

`record[root(A235517(n+2), A211836(n+1))]`
-/

namespace A235511.P8214745884116506669
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235517 (n + 2) : ℝ) ^ (1 / (A211836 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235511.P8214745884116506669

/-! ## A235511.P3585170818146015378

`A235517(A133263(n+1))%A235512(n+1)`
-/

namespace A235511.P3585170818146015378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235517 (A133263 (n + 1)).toNat) (A235512 (n + 1))

end

end A235511.P3585170818146015378

/-!
# A235512: Number of (n+1)X(3+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235512, there is no canonical definition to state claims against.
-/

/-! ## A235512.P1462560609596982309

`A235517(∑[n+2]+4)`
-/

namespace A235512.P1462560609596982309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235512.P1462560609596982309

/-! ## A235512.P11881900440595954825

`A235517(A167614(n+1))+A184955(n)`
-/

namespace A235512.P11881900440595954825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A167614 (n + 1)).toNat + A184955 n

end

end A235512.P11881900440595954825

/-! ## A235512.P9099058132664907716

`A235517(A167614(n+1))*A269626(n)`
-/

namespace A235512.P9099058132664907716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A167614 (n + 1)).toNat * A269626 n

end

end A235512.P9099058132664907716

/-! ## A235512.P11393973949573842413

`or(A000007(n), A235517(A167614(n+1)))`
-/

namespace A235512.P11393973949573842413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A235517 (A167614 (n + 1)).toNat)

end

end A235512.P11393973949573842413

/-! ## A235512.P9921791656266516122

`A235517(A167614(n+1))%A235513(n+1)`
-/

namespace A235512.P9921791656266516122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235517 (A167614 (n + 1)).toNat) (A235513 (n + 1))

end

end A235512.P9921791656266516122

/-!
# A235513: Number of (n+1)X(4+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235513, there is no canonical definition to state claims against.
-/

/-! ## A235513.P5092827083690460424

`A235517(A374004(n+1))`
-/

namespace A235513.P5092827083690460424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A374004 (n + 1)).toNat

end

end A235513.P5092827083690460424

/-! ## A235513.P3159784337498562754

`A235517(A052905(n)+9)`
-/

namespace A235513.P3159784337498562754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A052905 n + 9).toNat

end

end A235513.P3159784337498562754

/-! ## A235513.P7005492344390885083

`A235517(A055999(n)+10)`
-/

namespace A235513.P7005492344390885083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A055999 n + 10).toNat

end

end A235513.P7005492344390885083

/-! ## A235513.P16640688646026245086

`A235517(eq[5, A066657(n)])`
-/

namespace A235513.P16640688646026245086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235513.P16640688646026245086

/-! ## A235513.P13605168199590220878

`A235517(A167614(n+2)+1)`
-/

namespace A235513.P13605168199590220878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A167614 (n + 2) + 1).toNat

end

end A235513.P13605168199590220878

/-!
# A235514: Number of (n+1)X(5+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235514, there is no canonical definition to state claims against.
-/

/-! ## A235514.P7636763745736030786

`A235517(A374005(n+1))`
-/

namespace A235514.P7636763745736030786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A374005 (n + 1)).toNat

end

end A235514.P7636763745736030786

/-! ## A235514.P16884556862905485585

`A235517(A167499(n+3))`
-/

namespace A235514.P16884556862905485585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A167499 (n + 3)).toNat

end

end A235514.P16884556862905485585

/-! ## A235514.P444312551892992208

`A235517(A155212(n)+13)`
-/

namespace A235514.P444312551892992208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A155212 n + 13).toNat

end

end A235514.P444312551892992208

/-! ## A235514.P16489555783258268734

`A235517(A056000(n)+15)`
-/

namespace A235514.P16489555783258268734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A056000 n + 15).toNat

end

end A235514.P16489555783258268734

/-! ## A235514.P18094933197117562413

`A235517(eq[7, A066657(n)])`
-/

namespace A235514.P18094933197117562413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235514.P18094933197117562413

/-!
# A235515: Number of (n+1)X(6+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235515, there is no canonical definition to state claims against.
-/

/-! ## A235515.P16829916915527997051

`A235517(A374007(n+1))`
-/

namespace A235515.P16829916915527997051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A374007 (n + 1)).toNat

end

end A235515.P16829916915527997051

/-! ## A235515.P14469629049988758055

`A235517(A166136(n+4))`
-/

namespace A235515.P14469629049988758055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A166136 (n + 4)).toNat

end

end A235515.P14469629049988758055

/-! ## A235515.P13057352778545362975

`A235517(Δ[A264443(n)]+10)`
-/

namespace A235515.P13057352778545362975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (f1 (n + 1) - f1 n + 10).toNat

end

end A235515.P13057352778545362975

/-! ## A235515.P8368222036181291538

`A235517(eq[7, A131818(n+1)])`
-/

namespace A235515.P8368222036181291538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235515.P8368222036181291538

/-! ## A235515.P9676851468584192846

`A235517(A052905(n+3))`
-/

namespace A235515.P9676851468584192846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A052905 (n + 3)).toNat

end

end A235515.P9676851468584192846

/-!
# A235516: Number of (n+1)X(7+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235516, there is no canonical definition to state claims against.
-/

/-! ## A235516.P5342485807743579309

`A235517(A374008(n+1))`
-/

namespace A235516.P5342485807743579309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A374008 (n + 1)).toNat

end

end A235516.P5342485807743579309

/-! ## A235516.P3366025468160829907

`A235517(eq[11, A066657(n)])`
-/

namespace A235516.P3366025468160829907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235516.P3366025468160829907

/-! ## A235516.P12826156193182273379

`A235517(eq[8, A131818(n+1)])`
-/

namespace A235516.P12826156193182273379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235516.P12826156193182273379

/-! ## A235516.P3781555216283499440

`A235517(A055999(n+4))`
-/

namespace A235516.P3781555216283499440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (A055999 (n + 4)).toNat

end

end A235516.P3781555216283499440

/-! ## A235516.P10650178486229143880

`A235517(eq[6, A193592(n)])`
-/

namespace A235516.P10650178486229143880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235516.P10650178486229143880

/-!
# A235517: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock maximum and minimum lexicographically nondecreasing rowwise and columnwise.

The programs for A235517, there is no canonical definition to state claims against.
-/

/-! ## A235517.P13361360062355810297

`A235736(n+1)+A037913(A010683(n))`
-/

namespace A235517.P13361360062355810297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (n + 1) + A037913 (A010683 n).toNat

end

end A235517.P13361360062355810297

/-! ## A235517.P13153252821553391012

`A235736(n+1)+A046660(A062146(n))`
-/

namespace A235517.P13153252821553391012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (n + 1) + A046660 (A062146 n).toNat

end

end A235517.P13153252821553391012

/-! ## A235517.P17883050584400633009

`A235736(n+1)+A225099(A008000(n))`
-/

namespace A235517.P17883050584400633009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235736 (n + 1) + A225099 (A008000 n).toNat

end

end A235517.P17883050584400633009

/-!
# A235518: Number of (n+1)X(1+1) 0..3 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235518, there is no canonical definition to state claims against.
-/

/-! ## A235518.P3700344117636654769

`A235521(∑[n]+1)`
-/

namespace A235518.P3700344117636654769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235518.P3700344117636654769

/-! ## A235518.P9574928325884577344

`A235652(∑[n]+1)`
-/

namespace A235518.P9574928325884577344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235518.P9574928325884577344

/-! ## A235518.P12702225022942371434

`record[root(A235521(n+1), A001498(n))]`
-/

namespace A235518.P12702225022942371434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235521 (n + 1) : ℝ) ^ (1 / (A001498 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235518.P12702225022942371434

/-! ## A235518.P2875887994738232198

`record[root(A235521(n+1), A008279(n))]`
-/

namespace A235518.P2875887994738232198
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235521 (n + 1) : ℝ) ^ (1 / (A008279 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235518.P2875887994738232198

/-! ## A235518.P17486241374989918878

`record[root(A235521(n+1), A094525(n))]`
-/

namespace A235518.P17486241374989918878
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235521 (n + 1) : ℝ) ^ (1 / (A094525 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235518.P17486241374989918878

/-!
# A235519: Number of (n+1)X(2+1) 0..3 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235519, there is no canonical definition to state claims against.
-/

/-! ## A235519.P9643050033518821569

`A235521(∑[n+2])`
-/

namespace A235519.P9643050033518821569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A235519.P9643050033518821569

/-! ## A235519.P10262652732902400180

`record[gcd(A086810(n+3), A235521(n+2))]`
-/

namespace A235519.P10262652732902400180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086810 (n + 3)) (A235521 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235519.P10262652732902400180

/-! ## A235519.P11789287402420612385

`A235521(A000096(n+1))+A165878(n)`
-/

namespace A235519.P11789287402420612385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (A000096 (n + 1)).toNat + A165878 n

end

end A235519.P11789287402420612385

/-! ## A235519.P9905860662197035865

`A282192(n)+A235521(A000096(n+1))`
-/

namespace A235519.P9905860662197035865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 n + A235521 (A000096 (n + 1)).toNat

end

end A235519.P9905860662197035865

/-!
# A235520: Number of (n+1)X(3+1) 0..3 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235520, there is no canonical definition to state claims against.
-/

/-! ## A235520.P8474874325723078069

`A235521(∑[n+3]+1)`
-/

namespace A235520.P8474874325723078069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235520.P8474874325723078069

/-!
# A235522: Number of (2+1)X(n+1) 0..3 arrays with 2X2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235522, there is no canonical definition to state claims against.
-/

/-! ## A235522.P2711208851888339252

`A235521(∑[n+1]+2)`
-/

namespace A235522.P2711208851888339252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235522.P2711208851888339252

/-! ## A235522.P7176045369171689124

`record[A235521(C(A002262(n), 2)+2)]`
-/

namespace A235522.P7176045369171689124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (Nat.choose (A002262 n).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235522.P7176045369171689124

/-! ## A235522.P231682912601723846

`record[gcd(A002262(n), A235521(n+2))]`
-/

namespace A235522.P231682912601723846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235521 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235522.P231682912601723846

/-!
# A235523: Number of (3+1) X (n+1) 0..3 arrays with 2 X 2 subblock sum of squares lexicographically nondecreasing rowwise and nonincreasing columnwise.

The programs for A235523, there is no canonical definition to state claims against.
-/

/-! ## A235523.P2447628514127332829

`A235521(∑[n+2]+4)`
-/

namespace A235523.P2447628514127332829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235523.P2447628514127332829

/-! ## A235523.P17163046869957619379

`record[A023531(n)*A235521(n+4)]`
-/

namespace A235523.P17163046869957619379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A235521 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235523.P17163046869957619379

/-! ## A235523.P12126094790143155124

`A235521(A167614(n+1))+A025439(n)`
-/

namespace A235523.P12126094790143155124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (A167614 (n + 1)).toNat + A025439 n

end

end A235523.P12126094790143155124

/-! ## A235523.P5731742742987112527

`A235521(A167614(n+1))+A025469(n)`
-/

namespace A235523.P5731742742987112527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235521 (A167614 (n + 1)).toNat + A025469 n

end

end A235523.P5731742742987112527

/-!
# A235524: Primitive refactorable (or tau) numbers: refactorable numbers which are not part of any family.

The programs for A235524, there is no canonical definition to state claims against.
-/

/-! ## A235524.P7872970143122110218

`∩[A033950(n+1), A081381(n+1)]`
-/

namespace A235524.P7872970143122110218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235524.P7872970143122110218

/-! ## A235524.P12976814366076277133

`∩[A033950(n+1), A120737(n+1)]`
-/

namespace A235524.P12976814366076277133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235524.P12976814366076277133

/-! ## A235524.P12393062110552977483

`filter[A081381(n+1), A336040(#)]`
-/

namespace A235524.P12393062110552977483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A235524.P12393062110552977483

/-! ## A235524.P9205869562026846482

`filter[A120737(n+1), A336040(#)]`
-/

namespace A235524.P9205869562026846482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A235524.P9205869562026846482

/-! ## A235524.P15502679672497194540

`record[A122377(A081381(n+1))]`
-/

namespace A235524.P15502679672497194540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A081381 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235524.P15502679672497194540

/-!
# A235527: Number of (n+1)X(1+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235527, there is no canonical definition to state claims against.
-/

/-! ## A235527.P17905264659951029678

`A235531(∑[n]+1)`
-/

namespace A235527.P17905264659951029678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235527.P17905264659951029678

/-! ## A235527.P6437300167772301986

`A235756(∑[n]+1)`
-/

namespace A235527.P6437300167772301986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235527.P6437300167772301986

/-! ## A235527.P10451086219195935575

`record[A235531(A286234(n+1))]`
-/

namespace A235527.P10451086219195935575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235527.P10451086219195935575

/-! ## A235527.P9433466605983223575

`record[A235756(A286234(n+2))]`
-/

namespace A235527.P9433466605983223575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A286234 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235527.P9433466605983223575

/-! ## A235527.P14713037136784461216

`A235756(A000217(n)+1)-char[15]`
-/

namespace A235527.P14713037136784461216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235756 (A000217 n + 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235527.P14713037136784461216

/-!
# A235528: Number of (n+1)X(2+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235528, there is no canonical definition to state claims against.
-/

/-! ## A235528.P5654140646552460782

`A235531(∑[n+1]+2)`
-/

namespace A235528.P5654140646552460782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235528.P5654140646552460782

/-! ## A235528.P2065297064374642784

`record[A010054(n)*A235531(n+2)]`
-/

namespace A235528.P2065297064374642784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235531 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235528.P2065297064374642784

/-! ## A235528.P7214167939994860397

`record[A235531(A286234(n+1)+A010054(n+1))]`
-/

namespace A235528.P7214167939994860397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A286234 (n + 1) + A010054 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235528.P7214167939994860397

/-! ## A235528.P10731434417687294492

`record[gcd(A235531(n+2), A339779(n+2))]`
-/

namespace A235528.P10731434417687294492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235531 (n + 2)) (A339779 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235528.P10731434417687294492

/-!
# A235529: Number of (n+1)X(3+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235529, there is no canonical definition to state claims against.
-/

/-! ## A235529.P10679824957199205446

`A235531(∑[n+2]+4)`
-/

namespace A235529.P10679824957199205446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235529.P10679824957199205446

/-! ## A235529.P1024142830527642022

`A235531(A167614(n+1))+A102683(n)`
-/

namespace A235529.P1024142830527642022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A167614 (n + 1)).toNat + A102683 n

end

end A235529.P1024142830527642022

/-! ## A235529.P15813718086501395996

`lcm(A033999(n), A235531(A167614(n+1)))`
-/

namespace A235529.P15813718086501395996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A235531 (A167614 (n + 1)).toNat)

end

end A235529.P15813718086501395996

/-! ## A235529.P7878498888679076660

`or(A014082(n), A235531(A167614(n+1)))`
-/

namespace A235529.P7878498888679076660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014082 n) (A235531 (A167614 (n + 1)).toNat)

end

end A235529.P7878498888679076660

/-! ## A235529.P13594526238144498900

`A235531(A167614(n+1))+A037825(n+1)`
-/

namespace A235529.P13594526238144498900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A167614 (n + 1)).toNat + A037825 (n + 1)

end

end A235529.P13594526238144498900

/-!
# A235530: Number of (n+1)X(4+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235530, there is no canonical definition to state claims against.
-/

/-! ## A235530.P17719972305143067540

`A235531(A374004(n+1))`
-/

namespace A235530.P17719972305143067540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A374004 (n + 1)).toNat

end

end A235530.P17719972305143067540

/-! ## A235530.P11637178329705031615

`A235531(A141214(n)+7)`
-/

namespace A235530.P11637178329705031615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A141214 n + 7).toNat

end

end A235530.P11637178329705031615

/-! ## A235530.P10566903135820796689

`A235531(A052905(n)+9)`
-/

namespace A235530.P10566903135820796689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A052905 n + 9).toNat

end

end A235530.P10566903135820796689

/-! ## A235530.P10370390484830591146

`A235531(A055999(n)+10)`
-/

namespace A235530.P10370390484830591146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235531 (A055999 n + 10).toNat

end

end A235530.P10370390484830591146

/-!
# A235531: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235531, there is no canonical definition to state claims against.
-/

/-! ## A235531.P8921106709675529932

`A304263(A206296(n))+A235756(n+1)`
-/

namespace A235531.P8921106709675529932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304263 (A206296 n).toNat + A235756 (n + 1)

end

end A235531.P8921106709675529932

/-!
# A235532: a(n) = floor(n^2 * (4-Pi)).

The programs for A235532, the canonical program `A235532.P6062228471838559243` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235532 has offset 0).

The definition of A235532 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²*(4-π))` (program `A235532.P6062228471838559243`, by `A235532.P6062228471838559243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235532.P6062228471838559243

`floor(n²*(4-π))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235532

/-- `floor(n²*(4-π))` -/
def P6062228471838559243.Spec : Prop :=
  ∀ n, P6062228471838559243.a n = A235532 n

theorem P6062228471838559243.correct : P6062228471838559243.Spec := by
  intro n
  simp only [A235532]

end A235532

/-! ## A235532.P15427103278190058312

`(2*n)²-A135039(n)`
-/

namespace A235532.P15427103278190058312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A135039 n

end

end A235532.P15427103278190058312

namespace A235532

/-- `(2*n)²-A135039(n)` -/
def P15427103278190058312.Spec : Prop :=
  ∀ n, P15427103278190058312.a n = A235532 n

end A235532

/-! ## A235532.P17522886851177321736

`A005843(n)²-ceil(π*n²)`
-/

namespace A235532.P17522886851177321736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2 - ⌈Real.pi * (n ^ 2 : ℝ)⌉

end

end A235532.P17522886851177321736

namespace A235532

/-- `A005843(n)²-ceil(π*n²)` -/
def P17522886851177321736.Spec : Prop :=
  ∀ n, P17522886851177321736.a n = A235532 n

end A235532

/-! ## A235532.P1134349739005232999

`A004277(n)²-(A066643(n)+1)`
-/

namespace A235532.P1134349739005232999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n ^ 2 - (A066643 n + 1)

end

end A235532.P1134349739005232999

namespace A235532

/-- `A004277(n)²-(A066643(n)+1)` -/
def P1134349739005232999.Spec : Prop :=
  ∀ n, P1134349739005232999.a n = A235532 n

end A235532

/-! ## A235532.P5458083925671621423

`A005843(n)²%(A066643(n)+1)`
-/

namespace A235532.P5458083925671621423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n ^ 2) (A066643 n + 1)

end

end A235532.P5458083925671621423

namespace A235532

/-- `A005843(n)²%(A066643(n)+1)` -/
def P5458083925671621423.Spec : Prop :=
  ∀ n, P5458083925671621423.a n = A235532 n

end A235532

/-! ## A235532.P11862125678212193436

`A057672(A004277(n))`
-/

namespace A235532.P11862125678212193436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057672 (A004277 n).toNat

end

end A235532.P11862125678212193436

namespace A235532

/-- `A057672(A004277(n))` -/
def P11862125678212193436.Spec : Prop :=
  ∀ n, P11862125678212193436.a n = A235532 n

end A235532

/-! ## A235532.P16921367078297667360

`A057672(A004275(n+1))`
-/

namespace A235532.P16921367078297667360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057672 (A004275 (n + 1)).toNat

end

end A235532.P16921367078297667360

namespace A235532

/-- `A057672(A004275(n+1))` -/
def P16921367078297667360.Spec : Prop :=
  ∀ n, P16921367078297667360.a n = A235532 n

end A235532

/-! ## A235532.P11798194909281442569

`A057672(A300576(n+2))`
-/

namespace A235532.P11798194909281442569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057672 (A300576 (n + 2)).toNat

end

end A235532.P11798194909281442569

namespace A235532

/-- `A057672(A300576(n+2))` -/
def P11798194909281442569.Spec : Prop :=
  ∀ n, P11798194909281442569.a n = A235532 n

end A235532

/-! ## A235532.P17840147103795556167

`record[A198148(n)]-A066643(n)`
-/

namespace A235532.P17840147103795556167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A066643 n

end

end A235532.P17840147103795556167

namespace A235532

/-- `record[A198148(n)]-A066643(n)` -/
def P17840147103795556167.Spec : Prop :=
  ∀ n, P17840147103795556167.a n = A235532 n

end A235532

/-! ## A235532.P6654779551711616483

`A005563(A004273(n))-A066643(n)`
-/

namespace A235532.P6654779551711616483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A004273 n).toNat - A066643 n

end

end A235532.P6654779551711616483

namespace A235532

/-- `A005563(A004273(n))-A066643(n)` -/
def P6654779551711616483.Spec : Prop :=
  ∀ n, P6654779551711616483.a n = A235532 n

end A235532

/-! ## A235532.P8199057250176432652

`A195125(n²)%A002522(n)`
-/

namespace A235532.P8199057250176432652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195125 (n ^ 2)) (A002522 n)

end

end A235532.P8199057250176432652

namespace A235532

/-- `A195125(n²)%A002522(n)` -/
def P8199057250176432652.Spec : Prop :=
  ∀ n, P8199057250176432652.a n = A235532 n

end A235532

/-! ## A235532.P15950671290747839515

`A057672(A034807(n²+n+1))`
-/

namespace A235532.P15950671290747839515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057672 (A034807 (n ^ 2 + (n + 1))).toNat

end

end A235532.P15950671290747839515

namespace A235532

/-- `A057672(A034807(n²+n+1))` -/
def P15950671290747839515.Spec : Prop :=
  ∀ n, P15950671290747839515.a n = A235532 n

end A235532

/-!
# A235533: Positive integers n that cannot be represented as the form of a+b+c or a+b-c where a, b, c are perfect square numbers not larger than n (including 0).

The programs for A235533, there is no canonical definition to state claims against.
-/

/-! ## A235533.P6104209895494784816

`filter[A390380(n+1), A072401(#)]`
-/

namespace A235533.P6104209895494784816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072401 (f1 j).toNat = 1) n)

end

end A235533.P6104209895494784816

/-! ## A235533.P3547092774279033401

`∩[A390380(n+1), A004771(n)]`
-/

namespace A235533.P3547092774279033401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235533.P3547092774279033401

/-! ## A235533.P5812273376437897221

`∩[A390380(n+1), A133655(n)]`
-/

namespace A235533.P5812273376437897221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235533.P5812273376437897221

/-! ## A235533.P16125619399287113098

`∩[A004214(n+1), A390380(n+1)]`
-/

namespace A235533.P16125619399287113098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235533.P16125619399287113098

/-! ## A235533.P15312875062479680118

`∩[A004215(n+1), A390380(n+1)]`
-/

namespace A235533.P15312875062479680118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235533.P15312875062479680118

/-!
# A235534: a(n) = binomial(6*n, 2*n) / (4*n + 1).

The programs for A235534, the canonical program `A235534.P3376776800515303205` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235534 has offset 0).

The definition of A235534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235534.P3376776800515303205

`A001764(2*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A235534

/-- `A001764(2*n)` -/
def P3376776800515303205.Spec : Prop :=
  ∀ n, P3376776800515303205.a n = A235534 n

theorem P3376776800515303205.correct : P3376776800515303205.Spec := by
  intro n
  simp only [A235534]

end A235534

/-! ## A235534.P15772272935991973278

`A047749(4*n)`
-/

namespace A235534.P15772272935991973278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (4 * n)

end

end A235534.P15772272935991973278

namespace A235534

/-- `A047749(4*n)` -/
def P15772272935991973278.Spec : Prop :=
  ∀ n, P15772272935991973278.a n = A235534 n

end A235534

/-! ## A235534.P12702715066096320275

`C(6*n, 2*n)/(4*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235534.P12702715066096320275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (6 * n) (2 * n) : ℚ) / (4 * n + 1 : ℚ)

end

end A235534.P12702715066096320275

namespace A235534

/-- `C(6*n, 2*n)/(4*n+1)` -/
def P12702715066096320275.Spec : Prop :=
  ∀ n, P12702715066096320275.a n = (A235534 n : ℚ)

end A235534

/-! ## A235534.P2744921909618882653

`A367520(2*n)`
-/

namespace A235534.P2744921909618882653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367520 (2 * n)

end

end A235534.P2744921909618882653

namespace A235534

/-- `A367520(2*n)` -/
def P2744921909618882653.Spec : Prop :=
  ∀ n, P2744921909618882653.a n = A235534 n

end A235534

/-! ## A235534.P16556094311557132108

`record[A109956(∑[n])]`
-/

namespace A235534.P16556094311557132108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109956 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235534.P16556094311557132108

namespace A235534

/-- `record[A109956(∑[n])]` -/
def P16556094311557132108.Spec : Prop :=
  ∀ n, P16556094311557132108.a n = A235534 n

end A235534

/-! ## A235534.P15307338598985645612

`A127898(C(2*n, 2))`
-/

namespace A235534.P15307338598985645612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose (2 * n) 2)

end

end A235534.P15307338598985645612

namespace A235534

/-- `A127898(C(2*n, 2))` -/
def P15307338598985645612.Spec : Prop :=
  ∀ n, P15307338598985645612.a n = A235534 n

end A235534

/-! ## A235534.P17941311346016590038

`A073147(n*Δ[n²])`
-/

namespace A235534.P17941311346016590038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A235534.P17941311346016590038

namespace A235534

/-- `A073147(n*Δ[n²])` -/
def P17941311346016590038.Spec : Prop :=
  ∀ n, P17941311346016590038.a n = A235534 n

end A235534

/-! ## A235534.P11182991583114785751

`A109956(n*Δ[n²])`
-/

namespace A235534.P11182991583114785751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109956 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A235534.P11182991583114785751

namespace A235534

/-- `A109956(n*Δ[n²])` -/
def P11182991583114785751.Spec : Prop :=
  ∀ n, P11182991583114785751.a n = A235534 n

end A235534

/-! ## A235534.P16895121441610201188

`A110616(n*Δ[n²])`
-/

namespace A235534.P16895121441610201188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A235534.P16895121441610201188

namespace A235534

/-- `A110616(n*Δ[n²])` -/
def P16895121441610201188.Spec : Prop :=
  ∀ n, P16895121441610201188.a n = A235534 n

end A235534

/-! ## A235534.P16929999523528615686

`A047761(abs(1-4*n))`
-/

namespace A235534.P16929999523528615686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 |1 - (4 * n : ℤ)|.toNat

end

end A235534.P16929999523528615686

namespace A235534

/-- `A047761(abs(1-4*n))` -/
def P16929999523528615686.Spec : Prop :=
  ∀ n, P16929999523528615686.a n = A235534 n

end A235534

/-!
# A235535: a(n) = binomial(9*n, 3*n) / (6*n + 1).

The programs for A235535, the canonical program `A235535.P10117489047087618360` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235535 has offset 0).

The definition of A235535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235535.P10117489047087618360

`A001764(3*n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A235535

/-- `A001764(3*n)` -/
def P10117489047087618360.Spec : Prop :=
  ∀ n, P10117489047087618360.a n = A235535 n

theorem P10117489047087618360.correct : P10117489047087618360.Spec := by
  intro n
  simp only [A235535]

end A235535

/-! ## A235535.P1916500981011580086

`A047749(6*n)`
-/

namespace A235535.P1916500981011580086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (6 * n)

end

end A235535.P1916500981011580086

namespace A235535

/-- `A047749(6*n)` -/
def P1916500981011580086.Spec : Prop :=
  ∀ n, P1916500981011580086.a n = A235535 n

end A235535

/-! ## A235535.P2344231877981340329

`C(9*n, 3*n)/(6*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235535.P2344231877981340329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (9 * n) (3 * n) : ℚ) / (6 * n + 1 : ℚ)

end

end A235535.P2344231877981340329

namespace A235535

/-- `C(9*n, 3*n)/(6*n+1)` -/
def P2344231877981340329.Spec : Prop :=
  ∀ n, P2344231877981340329.a n = (A235535 n : ℚ)

end A235535

/-! ## A235535.P13114255755074636186

`ceil(A116637(6*n)/2)`
-/

namespace A235535.P13114255755074636186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116637 (6 * n) : ℚ) / 2⌉

end

end A235535.P13114255755074636186

namespace A235535

/-- `ceil(A116637(6*n)/2)` -/
def P13114255755074636186.Spec : Prop :=
  ∀ n, P13114255755074636186.a n = A235535 n

end A235535

/-! ## A235535.P14962589802939301535

`ceil(A046646(3*n+1)/2)`
-/

namespace A235535.P14962589802939301535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046646 (3 * n + 1) : ℚ) / 2⌉

end

end A235535.P14962589802939301535

namespace A235535

/-- `ceil(A046646(3*n+1)/2)` -/
def P14962589802939301535.Spec : Prop :=
  ∀ n, P14962589802939301535.a n = A235535 n

end A235535

/-!
# A235536: a(n) = binomial(8*n, 2*n) / (6*n + 1).

The programs for A235536, the canonical program `A235536.P17712812136090816936` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235536 has offset 0).

The definition of A235536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235536.P17712812136090816936

`A002293(2*n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A235536

/-- `A002293(2*n)` -/
def P17712812136090816936.Spec : Prop :=
  ∀ n, P17712812136090816936.a n = A235536 n

theorem P17712812136090816936.correct : P17712812136090816936.Spec := by
  intro n
  simp only [A235536]

end A235536

/-! ## A235536.P9099896820444618671

`A124753(6*n)`
-/

namespace A235536.P9099896820444618671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124753 (6 * n)

end

end A235536.P9099896820444618671

namespace A235536

/-- `A124753(6*n)` -/
def P9099896820444618671.Spec : Prop :=
  ∀ n, P9099896820444618671.a n = A235536 n

end A235536

/-! ## A235536.P16054086369226212310

`C(8*n, 2*n)/(6*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A235536.P16054086369226212310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * n) (2 * n) : ℚ) / (6 * n + 1 : ℚ)

end

end A235536.P16054086369226212310

namespace A235536

/-- `C(8*n, 2*n)/(6*n+1)` -/
def P16054086369226212310.Spec : Prop :=
  ∀ n, P16054086369226212310.a n = (A235536 n : ℚ)

end A235536

/-! ## A235536.P7888860771358422615

`A369082(4*n)`
-/

namespace A235536.P7888860771358422615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369082 (4 * n)

end

end A235536.P7888860771358422615

namespace A235536

/-- `A369082(4*n)` -/
def P7888860771358422615.Spec : Prop :=
  ∀ n, P7888860771358422615.a n = A235536 n

end A235536

/-! ## A235536.P4189929888107238072

`record[A109962(∑[n])]`
-/

namespace A235536.P4189929888107238072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109962 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235536.P4189929888107238072

namespace A235536

/-- `record[A109962(∑[n])]` -/
def P4189929888107238072.Spec : Prop :=
  ∀ n, P4189929888107238072.a n = A235536 n

end A235536

/-! ## A235536.P11738529910998887572

`A109962(n*Δ[n²])`
-/

namespace A235536.P11738529910998887572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109962 ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A235536.P11738529910998887572

namespace A235536

/-- `A109962(n*Δ[n²])` -/
def P11738529910998887572.Spec : Prop :=
  ∀ n, P11738529910998887572.a n = A235536 n

end A235536

/-! ## A235536.P14147201322729719144

`A069270(∑[4*n]+n)`
-/

namespace A235536.P14147201322729719144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A235536.P14147201322729719144

namespace A235536

/-- `A069270(∑[4*n]+n)` -/
def P14147201322729719144.Spec : Prop :=
  ∀ n, P14147201322729719144.a n = A235536 n

end A235536

/-! ## A235536.P18373108045388371038

`record[A002293(n%4+n)]`
-/

namespace A235536.P18373108045388371038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235536.P18373108045388371038

namespace A235536

/-- `record[A002293(n%4+n)]` -/
def P18373108045388371038.Spec : Prop :=
  ∀ n, P18373108045388371038.a n = A235536 n

end A235536

/-! ## A235536.P14452237822523151012

`record[A002293(n)/(-1)^n]`
-/

namespace A235536.P14452237822523151012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002293 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235536.P14452237822523151012

namespace A235536

/-- `record[A002293(n)/(-1)^n]` -/
def P14452237822523151012.Spec : Prop :=
  ∀ n, P14452237822523151012.a n = (A235536 n : ℚ)

end A235536

/-! ## A235536.P8649417189924818778

`record[A002293(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A235536.P8649417189924818778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A002293 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235536.P8649417189924818778

namespace A235536

/-- `record[A002293(C(n, a(n-1)))]` -/
def P8649417189924818778.Spec : Prop :=
  ∀ n, P8649417189924818778.a n = A235536 n

end A235536

/-!
# A235537: Expansion of (6 + 13*x - 8*x^2 - 8*x^3 + 6*x^4)/((1 + x)^2*(1 - x)^3).

The programs for A235537, the canonical program `A235537.P11212271059711621119` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235537 has offset 0).

The definition of A235537 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6+13x-8x^2-8x^3+6x^4)/(1-x-2x^2+2x^3+x^4-x^5))` (program `A235537.P11212271059711621119`, by `A235537.P11212271059711621119.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235537.P11212271059711621119

`ogf((6+13x-8x^2-8x^3+6x^4)/(1-x-2x^2+2x^3+x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235537

/-- `ogf((6+13x-8x^2-8x^3+6x^4)/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P11212271059711621119.Spec : Prop :=
  ∀ n, P11212271059711621119.a n = A235537 n

theorem P11212271059711621119.correct : P11212271059711621119.Spec := by
  intro n
  simp only [A235537]

end A235537

/-! ## A235537.P5049189024545409531

`(6*n*(3*n+17)-(2*n+43)*(-1)^n+11)/16+8`
-/

namespace A235537.P5049189024545409531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n * (3 * n + 17) : ℤ) - (2 * n + 43 : ℤ) * (-1) ^ n + 11 : ℚ) / 16 + 8

end

end A235537.P5049189024545409531

namespace A235537

/-- `(6*n*(3*n+17)-(2*n+43)*(-1)^n+11)/16+8` -/
def P5049189024545409531.Spec : Prop :=
  ∀ n, P5049189024545409531.a n = (A235537 n : ℚ)

end A235537

/-! ## A235537.P3508995306343629181

`∪[A167614(3*n+1)+n, A235332(n)]`
-/

namespace A235537.P3508995306343629181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167614 (3 * n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235332 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A235537.P3508995306343629181

namespace A235537

/-- `∪[A167614(3*n+1)+n, A235332(n)]` -/
def P3508995306343629181.Spec : Prop :=
  ∀ n, (P3508995306343629181.a n : ℤ) = A235537 n

end A235537

/-!
# A235538: Earliest infinite sequence of natural numbers such that the members of this sequence as well as the absolute values of the members of the k-th differences of this sequence, for all k>0, are all distinct.

The programs for A235538, there is no canonical definition to state claims against.
-/

/-! ## A235538.P16338253818733418997

`A235539(∑[n]+1)`
-/

namespace A235538.P16338253818733418997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235539 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235538.P16338253818733418997

/-! ## A235538.P15148611572010259909

`∑[A235539(A133263(n))]`
-/

namespace A235538.P15148611572010259909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235539 (A133263 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A235538.P15148611572010259909

/-! ## A235538.P8050409724505086258

`abs(A235539(A000217(n)+1))`
-/

namespace A235538.P8050409724505086258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A235539 (A000217 n + 1).toNat|

end

end A235538.P8050409724505086258

/-! ## A235538.P16222636137575427344

`or(A000007(n), A235539(A000124(n)))`
-/

namespace A235538.P16222636137575427344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A235539 (A000124 n).toNat)

end

end A235538.P16222636137575427344

/-! ## A235538.P3640104249712506540

`A235539(A000124(n))%A001248(n+1)`
-/

namespace A235538.P3640104249712506540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235539 (A000124 n).toNat) (A001248 (n + 1))

end

end A235538.P3640104249712506540

/-!
# A235540: Composite numbers m such that (4^m - 2^m + 8*m^2 - 2) / (2*m*(2*m + 1)) is an integer.

The programs for A235540, there is no canonical definition to state claims against.
-/

/-! ## A235540.P3243183359189985648

`filter[A158034(n+1), A373973(#)]`
-/

namespace A235540.P3243183359189985648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373973 (f1 j).toNat = 1) n)

end

end A235540.P3243183359189985648

/-! ## A235540.P15589200738433928054

`filter[A158034(n+1), A373979(#)]`
-/

namespace A235540.P15589200738433928054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373979 (f1 j).toNat = 1) n)

end

end A235540.P15589200738433928054

/-! ## A235540.P5929720231296662902

`∩[A158034(n+1), A316320(n)]`
-/

namespace A235540.P5929720231296662902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316320 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235540.P5929720231296662902

/-!
# A235541: Number of (n+1) X (1+1) 0..1 arrays with the sum of each 2 X 2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235541, the canonical program `A235541.P17190905062043250466` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235541 has offset 1).

The definition of A235541 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235541.P17190905062043250466

`ogf((16-16x-51x^2+38x^3+68x^4-24x^5-32x^6)/(1-4x+14x^3-5x^4-18x^5+4x^6+8x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235541

/-- `ogf((16-16x-51x^2+38x^3+68x^4-24x^5-32x^6)/(1-4x+14x^3-5x^4-18x^5+4x^6+8x^7))` -/
def P17190905062043250466.Spec : Prop :=
  ∀ n, P17190905062043250466.a n = A235541 (n + 1)

theorem P17190905062043250466.correct : P17190905062043250466.Spec := by
  intro n
  simp only [A235541, Nat.add_sub_cancel]

end A235541

/-! ## A235541.P15340445569062041080

`A235765(∑[n]+1)`
-/

namespace A235541.P15340445569062041080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235541.P15340445569062041080

namespace A235541

/-- `A235765(∑[n]+1)` -/
def P15340445569062041080.Spec : Prop :=
  ∀ n, P15340445569062041080.a n = A235541 (n + 1)

end A235541

/-! ## A235541.P13419648801354278868

`A235765(A000124(n))+char[16]`
-/

namespace A235541.P13419648801354278868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A235541.P13419648801354278868

namespace A235541

/-- `A235765(A000124(n))+char[16]` -/
def P13419648801354278868.Spec : Prop :=
  ∀ n, P13419648801354278868.a n = A235541 (n + 1)

end A235541

/-! ## A235541.P1966203527622124029

`record[A010054(n)*A235765(n+1)]`
-/

namespace A235541.P1966203527622124029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235541.P1966203527622124029

namespace A235541

/-- `record[A010054(n)*A235765(n+1)]` -/
def P1966203527622124029.Spec : Prop :=
  ∀ n, P1966203527622124029.a n = A235541 (n + 1)

end A235541

/-! ## A235541.P2464288479125753381

`record[A235765(n+1)/A015109(n)]`
-/

namespace A235541.P2464288479125753381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235765 (n + 1) : ℚ) / (A015109 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235541.P2464288479125753381

namespace A235541

/-- `record[A235765(n+1)/A015109(n)]` -/
def P2464288479125753381.Spec : Prop :=
  ∀ n, P2464288479125753381.a n = (A235541 (n + 1) : ℚ)

end A235541

/-!
# A235542: Number of (n+1)X(2+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235542, there is no canonical definition to state claims against.
-/

/-! ## A235542.P12499268590388410555

`A235548(∑[n+1]+2)`
-/

namespace A235542.P12499268590388410555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235542.P12499268590388410555

/-! ## A235542.P4420923248143049290

`record[gcd(A235548(n+2), A319047(n))]`
-/

namespace A235542.P4420923248143049290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235548 (n + 2)) (A319047 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235542.P4420923248143049290

/-! ## A235542.P11527497636000139792

`A308976(n)+A235548(A133263(n+1))`
-/

namespace A235542.P11527497636000139792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308976 n + A235548 (A133263 (n + 1)).toNat

end

end A235542.P11527497636000139792

/-! ## A235542.P15266906862941397476

`A235548(A133263(n+1))*A238015(n)`
-/

namespace A235542.P15266906862941397476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A133263 (n + 1)).toNat * A238015 n

end

end A235542.P15266906862941397476

/-! ## A235542.P18331502243877690711

`A235548(A133263(n+1))%A156398(n+1)`
-/

namespace A235542.P18331502243877690711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235548 (A133263 (n + 1)).toNat) (A156398 (n + 1))

end

end A235542.P18331502243877690711

/-!
# A235543: Number of (n+1)X(3+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235543, there is no canonical definition to state claims against.
-/

/-! ## A235543.P5594826147111530054

`A235548(∑[n+2]+4)`
-/

namespace A235543.P5594826147111530054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235543.P5594826147111530054

/-! ## A235543.P4337826248653794085

`record[A235548(A167614(val(n+1, 2)+1))]`
-/

namespace A235543.P4337826248653794085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235543.P4337826248653794085

/-! ## A235543.P4507675507833131127

`lcm((-1)^n, A235548(A167614(n+1)))`
-/

namespace A235543.P4507675507833131127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A235548 (A167614 (n + 1)).toNat)

end

end A235543.P4507675507833131127

/-! ## A235543.P10232940900892425841

`record[A235548(A167614(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A235543.P10232940900892425841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A167614 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235543.P10232940900892425841

/-! ## A235543.P197732900138341683

`A308976(n)+A235548(A167614(n+1))`
-/

namespace A235543.P197732900138341683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308976 n + A235548 (A167614 (n + 1)).toNat

end

end A235543.P197732900138341683

/-!
# A235544: Number of (n+1)X(4+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235544, there is no canonical definition to state claims against.
-/

/-! ## A235544.P17423761205331400178

`A235548(A374004(n+1))`
-/

namespace A235544.P17423761205331400178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A374004 (n + 1)).toNat

end

end A235544.P17423761205331400178

/-! ## A235544.P6744347554936978880

`A235548(A141214(n)+7)`
-/

namespace A235544.P6744347554936978880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A141214 n + 7).toNat

end

end A235544.P6744347554936978880

/-! ## A235544.P16717018095511653363

`A235548(A052905(n)+9)`
-/

namespace A235544.P16717018095511653363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A052905 n + 9).toNat

end

end A235544.P16717018095511653363

/-! ## A235544.P15490434058366932888

`A235548(A055999(n)+10)`
-/

namespace A235544.P15490434058366932888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A055999 n + 10).toNat

end

end A235544.P15490434058366932888

/-! ## A235544.P4501427575571153665

`A235548(A167614(n+2)+1)`
-/

namespace A235544.P4501427575571153665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A167614 (n + 2) + 1).toNat

end

end A235544.P4501427575571153665

/-!
# A235545: Number of (n+1)X(5+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235545, there is no canonical definition to state claims against.
-/

/-! ## A235545.P15981423368274005011

`A235548(A374005(n+1))`
-/

namespace A235545.P15981423368274005011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A374005 (n + 1)).toNat

end

end A235545.P15981423368274005011

/-! ## A235545.P12046641575335159503

`A235548(A155212(n)+13)`
-/

namespace A235545.P12046641575335159503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A155212 n + 13).toNat

end

end A235545.P12046641575335159503

/-! ## A235545.P7134675036772242062

`A235548(A056000(n)+15)`
-/

namespace A235545.P7134675036772242062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A056000 n + 15).toNat

end

end A235545.P7134675036772242062

/-! ## A235545.P1662263731051439625

`A235548(eq[7, A066657(n)])`
-/

namespace A235545.P1662263731051439625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235545.P1662263731051439625

/-! ## A235545.P4189302308255124962

`A235548(eq[6, A131818(n+1)])`
-/

namespace A235545.P4189302308255124962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235545.P4189302308255124962

/-!
# A235546: Number of (n+1)X(6+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235546, there is no canonical definition to state claims against.
-/

/-! ## A235546.P5551070187194991372

`A235548(A374007(n+1))`
-/

namespace A235546.P5551070187194991372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A374007 (n + 1)).toNat

end

end A235546.P5551070187194991372

/-! ## A235546.P17498340132384572184

`A235548(A000124(n+5)+5)`
-/

namespace A235546.P17498340132384572184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A000124 (n + 5) + 5).toNat

end

end A235546.P17498340132384572184

/-! ## A235546.P8532600883945435766

`A235548(eq[7, A131818(n+1)])`
-/

namespace A235546.P8532600883945435766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235546.P8532600883945435766

/-! ## A235546.P6370257119533450153

`A235548(eq[3, A219347(n)])`
-/

namespace A235546.P6370257119533450153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235546.P6370257119533450153

/-! ## A235546.P11284545585182161498

`A235548(eq[5, A193592(n)])`
-/

namespace A235546.P11284545585182161498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235546.P11284545585182161498

/-!
# A235547: Number of (n+1)X(7+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235547, there is no canonical definition to state claims against.
-/

/-! ## A235547.P5433216346713756566

`A235548(A374008(n+1))`
-/

namespace A235547.P5433216346713756566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A374008 (n + 1)).toNat

end

end A235547.P5433216346713756566

/-! ## A235547.P13955329145970824488

`A235548(eq[11, A066657(n)])`
-/

namespace A235547.P13955329145970824488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235547.P13955329145970824488

/-! ## A235547.P9939365894376113733

`A235548(A166136(n+5)+1)`
-/

namespace A235547.P9939365894376113733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A166136 (n + 5) + 1).toNat

end

end A235547.P9939365894376113733

/-! ## A235547.P5010122353632232061

`A235548(A167614(n+5)+4)`
-/

namespace A235547.P5010122353632232061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A167614 (n + 5) + 4).toNat

end

end A235547.P5010122353632232061

/-! ## A235547.P930400454655936743

`A235548(A000217(n+6)+7)`
-/

namespace A235547.P930400454655936743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235548 (A000217 (n + 6) + 7).toNat

end

end A235547.P930400454655936743

/-!
# A235548: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235548, there is no canonical definition to state claims against.
-/

/-! ## A235548.P7648368429205959338

`A235765(n+1)+A058911(A056940(n))`
-/

namespace A235548.P7648368429205959338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (n + 1) + A058911 (A056940 n).toNat

end

end A235548.P7648368429205959338

/-! ## A235548.P17178732483130427366

`A233583(A235765(n+1)+A168517(n))`
-/

namespace A235548.P17178732483130427366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A235765 (n + 1) + A168517 n).toNat

end

end A235548.P17178732483130427366

/-! ## A235548.P5091973550184923242

`A235765(n+1)+A074016(A333560(n))`
-/

namespace A235548.P5091973550184923242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235765 (n + 1) + A074016 (A333560 n).toNat

end

end A235548.P5091973550184923242

/-!
# A235549: Number of (n+1) X (1+1) 0..1 arrays with the sum of each 2 X 2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235549, the canonical program `A235549.P16326683964366735517` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235549 has offset 1).

The definition of A235549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235549.P16326683964366735517

`ogf((16+14x-36x^2-8x^3+36x^4)/(1-2x-4x^2+8x^3+4x^4-8x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235549

/-- `ogf((16+14x-36x^2-8x^3+36x^4)/(1-2x-4x^2+8x^3+4x^4-8x^5))` -/
def P16326683964366735517.Spec : Prop :=
  ∀ n, P16326683964366735517.a n = A235549 (n + 1)

theorem P16326683964366735517.correct : P16326683964366735517.Spec := by
  intro n
  simp only [A235549, Nat.add_sub_cancel]

end A235549

/-! ## A235549.P3957894860837928959

`A235772(∑[n]+1)`
-/

namespace A235549.P3957894860837928959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235549.P3957894860837928959

namespace A235549

/-- `A235772(∑[n]+1)` -/
def P3957894860837928959.Spec : Prop :=
  ∀ n, P3957894860837928959.a n = A235549 (n + 1)

end A235549

/-! ## A235549.P1532208055908937007

`lcm(2, A235772(A000124(n)))`
-/

namespace A235549.P1532208055908937007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235772 (A000124 n).toNat)

end

end A235549.P1532208055908937007

namespace A235549

/-- `lcm(2, A235772(A000124(n)))` -/
def P1532208055908937007.Spec : Prop :=
  ∀ n, (P1532208055908937007.a n : ℤ) = A235549 (n + 1)

end A235549

/-! ## A235549.P3742857528231623096

`record[A235772(A114091(n+1))]`
-/

namespace A235549.P3742857528231623096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235549.P3742857528231623096

namespace A235549

/-- `record[A235772(A114091(n+1))]` -/
def P3742857528231623096.Spec : Prop :=
  ∀ n, P3742857528231623096.a n = A235549 (n + 1)

end A235549

/-! ## A235549.P13691014752669322562

`record[A235772(Δ[A053436(n+1)])]`
-/

namespace A235549.P13691014752669322562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235549.P13691014752669322562

namespace A235549

/-- `record[A235772(Δ[A053436(n+1)])]` -/
def P13691014752669322562.Spec : Prop :=
  ∀ n, P13691014752669322562.a n = A235549 (n + 1)

end A235549

/-!
# A235550: Number of (n+1)X(2+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235550, there is no canonical definition to state claims against.
-/

/-! ## A235550.P2171740450449616426

`A235555(∑[n+1]+2)`
-/

namespace A235550.P2171740450449616426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235550.P2171740450449616426

/-! ## A235550.P12274192626373241626

`record[A010054(n)*A235555(n+2)]`
-/

namespace A235550.P12274192626373241626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235555 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235550.P12274192626373241626

/-! ## A235550.P8756745576286736800

`record[A115359(n)*A235555(n+3)]`
-/

namespace A235550.P8756745576286736800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115359 n * A235555 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235550.P8756745576286736800

/-! ## A235550.P15220051996846974539

`record[A235555(n+3)/A266131(n+1)]`
-/

namespace A235550.P15220051996846974539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235555 (n + 3) : ℚ) / (A266131 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235550.P15220051996846974539

/-! ## A235550.P6851766929473535378

`record[gcd(A235555(n+2), A299989(2*n))]`
-/

namespace A235550.P6851766929473535378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235555 (n + 2)) (A299989 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235550.P6851766929473535378

/-!
# A235551: Number of (n+1)X(3+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235551, there is no canonical definition to state claims against.
-/

/-! ## A235551.P15137636865005944651

`A235555(∑[n+2]+4)`
-/

namespace A235551.P15137636865005944651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235551.P15137636865005944651

/-! ## A235551.P9233569490801426139

`A235555(A167614(n+1))+C(n, 64)`
-/

namespace A235551.P9233569490801426139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A167614 (n + 1)).toNat + (Nat.choose n 64 : ℤ)

end

end A235551.P9233569490801426139

/-! ## A235551.P14852555243105816079

`record[A235555(n+4)/A266131(n+1)]`
-/

namespace A235551.P14852555243105816079
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235555 (n + 4) : ℚ) / (A266131 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235551.P14852555243105816079

/-! ## A235551.P16165969942833603167

`A235555(A167614(n+1))+A011731(n)`
-/

namespace A235551.P16165969942833603167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A167614 (n + 1)).toNat + A011731 n

end

end A235551.P16165969942833603167

/-! ## A235551.P13569926321341959502

`A235555(A167614(n+1))+A011745(n)`
-/

namespace A235551.P13569926321341959502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A167614 (n + 1)).toNat + A011745 n

end

end A235551.P13569926321341959502

/-!
# A235552: Number of (n+1) X (4+1) 0..1 arrays with the sum of each 2 X 2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235552, there is no canonical definition to state claims against.
-/

/-! ## A235552.P17015608468555157787

`A235555(∑[n+3]+7)`
-/

namespace A235552.P17015608468555157787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235552.P17015608468555157787

/-! ## A235552.P16483936284827611549

`A235555(A055998(n+2))+A025443(n)`
-/

namespace A235552.P16483936284827611549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A055998 (n + 2)).toNat + A025443 n

end

end A235552.P16483936284827611549

/-! ## A235552.P2388215641846547038

`A235555(A055998(n+2))+A056965(n)`
-/

namespace A235552.P2388215641846547038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A055998 (n + 2)).toNat + A056965 n

end

end A235552.P2388215641846547038

/-! ## A235552.P8086963199607429692

`A235555(A141214(n+1))+A216601(n+1)`
-/

namespace A235552.P8086963199607429692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A141214 (n + 1)).toNat + A216601 (n + 1)

end

end A235552.P8086963199607429692

/-!
# A235553: Number of (n+1)X(5+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235553, there is no canonical definition to state claims against.
-/

/-! ## A235553.P16518070597459088079

`A235555(A167499(n+3))`
-/

namespace A235553.P16518070597459088079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A167499 (n + 3)).toNat

end

end A235553.P16518070597459088079

/-! ## A235553.P1569120600701259051

`A235555(A155212(n)+13)`
-/

namespace A235553.P1569120600701259051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A155212 n + 13).toNat

end

end A235553.P1569120600701259051

/-! ## A235553.P6613245764613192474

`A235555(A056000(n)+15)`
-/

namespace A235553.P6613245764613192474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A056000 n + 15).toNat

end

end A235553.P6613245764613192474

/-! ## A235553.P1707368574221631246

`A235555(eq[7, A066657(n)])`
-/

namespace A235553.P1707368574221631246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235553.P1707368574221631246

/-! ## A235553.P18047787181420675709

`A235555(A167614(n+3)+2)`
-/

namespace A235553.P18047787181420675709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A167614 (n + 3) + 2).toNat

end

end A235553.P18047787181420675709

/-!
# A235554: Number of (n+1)X(6+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235554, there is no canonical definition to state claims against.
-/

/-! ## A235554.P8006758264329176355

`A235555(A056115(n)+21)`
-/

namespace A235554.P8006758264329176355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A056115 n + 21).toNat

end

end A235554.P8006758264329176355

/-! ## A235554.P11305178163348670469

`A235555(A167614(n+4)+3)`
-/

namespace A235554.P11305178163348670469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A167614 (n + 4) + 3).toNat

end

end A235554.P11305178163348670469

/-! ## A235554.P6663689876418924876

`A235555(A000124(n+5)+5)`
-/

namespace A235554.P6663689876418924876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A000124 (n + 5) + 5).toNat

end

end A235554.P6663689876418924876

/-! ## A235554.P6738869731834709686

`A235555(A000217(n+5)+6)`
-/

namespace A235554.P6738869731834709686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (A000217 (n + 5) + 6).toNat

end

end A235554.P6738869731834709686

/-! ## A235554.P17534674624590818665

`A235555(eq[7, A131818(n+1)])`
-/

namespace A235554.P17534674624590818665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235555 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235554.P17534674624590818665

/-!
# A235555: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235555, there is no canonical definition to state claims against.
-/

/-! ## A235555.P12230547510983807782

`A235772(n+1)+A155487(A155497(n))`
-/

namespace A235555.P12230547510983807782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (n + 1) + A155487 (A155497 n).toNat

end

end A235555.P12230547510983807782

/-! ## A235555.P4208884672520860832

`A235772(n+1)+A156874(A156646(n))`
-/

namespace A235555.P4208884672520860832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235772 (n + 1) + A156874 (A156646 n).toNat

end

end A235555.P4208884672520860832

/-!
# A235556: Number of (n+1)X(1+1) 0..3 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235556, there is no canonical definition to state claims against.
-/

/-! ## A235556.P14483456472832776843

`A235559(∑[n]+1)`
-/

namespace A235556.P14483456472832776843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235559 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235556.P14483456472832776843

/-! ## A235556.P279419385096893856

`A235779(∑[n]+1)`
-/

namespace A235556.P279419385096893856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235779 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235556.P279419385096893856

/-! ## A235556.P11212165322109622870

`lcm(2, A235559(A000124(n)))`
-/

namespace A235556.P11212165322109622870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235559 (A000124 n).toNat)

end

end A235556.P11212165322109622870

/-! ## A235556.P9844019855721090490

`record[A235779(A286234(n+1))]`
-/

namespace A235556.P9844019855721090490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235779 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235556.P9844019855721090490

/-!
# A235557: Number of (n+1)X(2+1) 0..3 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235557, there is no canonical definition to state claims against.
-/

/-! ## A235557.P12368572195415888665

`A235559(∑[n+1]+2)`
-/

namespace A235557.P12368572195415888665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235559 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235557.P12368572195415888665

/-! ## A235557.P763462559780497629

`record[A235559(Δ[A053436(n+1)]+1)]`
-/

namespace A235557.P763462559780497629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235559 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235557.P763462559780497629

/-! ## A235557.P377100137730841203

`gcd((2*(n+1))%2, A235559(A000096(n)+3))`
-/

namespace A235557.P377100137730841203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (n + 1) % 2 : ℕ) : ℤ) (A235559 (A000096 n + 3).toNat)

end

end A235557.P377100137730841203

/-!
# A235558: Number of (n+1)X(3+1) 0..3 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing rowwise and columnwise.

The programs for A235558, there is no canonical definition to state claims against.
-/

/-! ## A235558.P4895232109531182220

`A235559(∑[n+2]+4)`
-/

namespace A235558.P4895232109531182220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235559 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235558.P4895232109531182220

/-! ## A235558.P2426898333993672070

`record[A235559(∑[A290795(n)])]`
-/

namespace A235558.P2426898333993672070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290795 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235559 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235558.P2426898333993672070

/-!
# A235560: Number of (n+1) X (1+1) 0..2 arrays with the difference of the upper and lower median value of each 2 X 2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235560, there is no canonical definition to state claims against.
-/

/-! ## A235560.P11253409272428245527

`A235565(∑[n]+1)`
-/

namespace A235560.P11253409272428245527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235560.P11253409272428245527

/-! ## A235560.P1858170968237725820

`A235784(∑[n]+1)`
-/

namespace A235560.P1858170968237725820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235560.P1858170968237725820

/-! ## A235560.P14588718936167441287

`or(1, A235565(A000124(n)))`
-/

namespace A235560.P14588718936167441287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235565 (A000124 n).toNat)

end

end A235560.P14588718936167441287

/-! ## A235560.P15479063930063891381

`record[A235784(Δ[A053436(n+1)])]`
-/

namespace A235560.P15479063930063891381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053436 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235560.P15479063930063891381

/-! ## A235560.P16117924875468961535

`record[A235784(A220693(n+1)+1)]`
-/

namespace A235560.P16117924875468961535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235784 (A220693 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235560.P16117924875468961535

/-!
# A235561: Number of (n+1)X(2+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235561, there is no canonical definition to state claims against.
-/

/-! ## A235561.P5545560396100702946

`A235565(∑[n+1]+2)`
-/

namespace A235561.P5545560396100702946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235561.P5545560396100702946

/-! ## A235561.P1200634298015350412

`record[root(A235565(n+3), A078938(n))]`
-/

namespace A235561.P1200634298015350412
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A235565 (n + 3) : ℝ) ^ (1 / (A078938 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235561.P1200634298015350412

/-! ## A235561.P15151411873094568761

`record[gcd(A195739(n+2), A235565(n+3))]`
-/

namespace A235561.P15151411873094568761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A195739 (n + 2)) (A235565 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235561.P15151411873094568761

/-! ## A235561.P9025953201595017094

`record[A235565(abs(A201163(n)))]`
-/

namespace A235561.P9025953201595017094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235561.P9025953201595017094

/-! ## A235561.P17568846187127750945

`A243836(n)+A235565(A000096(n+1))`
-/

namespace A235561.P17568846187127750945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243836 n + A235565 (A000096 (n + 1)).toNat

end

end A235561.P17568846187127750945

/-!
# A235562: Number of (n+1)X(3+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235562, there is no canonical definition to state claims against.
-/

/-! ## A235562.P4186175130706586702

`A235565(∑[n+2]+4)`
-/

namespace A235562.P4186175130706586702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235562.P4186175130706586702

/-! ## A235562.P966245679730717730

`or(1, A235565(A167614(n+1)))`
-/

namespace A235562.P966245679730717730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235565 (A167614 (n + 1)).toNat)

end

end A235562.P966245679730717730

/-! ## A235562.P17250784520608596819

`A235565(A167614(n+1))+A059995(n)`
-/

namespace A235562.P17250784520608596819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A167614 (n + 1)).toNat + A059995 n

end

end A235562.P17250784520608596819

/-! ## A235562.P9799806973518650584

`A235565(A167614(n+1))+A210632(n)`
-/

namespace A235562.P9799806973518650584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A167614 (n + 1)).toNat + A210632 n

end

end A235562.P9799806973518650584

/-! ## A235562.P4366726561127610155

`A299905(n)+A235565(A167614(n+1))`
-/

namespace A235562.P4366726561127610155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299905 n + A235565 (A167614 (n + 1)).toNat

end

end A235562.P4366726561127610155

/-!
# A235563: Number of (n+1) X (4+1) 0..2 arrays with the difference of the upper and lower median value of each 2 X 2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235563, there is no canonical definition to state claims against.
-/

/-! ## A235563.P1169981740811837189

`A235565(A145018(n+4))`
-/

namespace A235563.P1169981740811837189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A145018 (n + 4)).toNat

end

end A235563.P1169981740811837189

/-! ## A235563.P10823279280678754972

`A235565(A141214(n)+7)`
-/

namespace A235563.P10823279280678754972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A141214 n + 7).toNat

end

end A235563.P10823279280678754972

/-! ## A235563.P13883608044354526849

`A235565(A052905(n)+9)`
-/

namespace A235563.P13883608044354526849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A052905 n + 9).toNat

end

end A235563.P13883608044354526849

/-! ## A235563.P6330801197300425379

`A235565(A055999(n)+10)`
-/

namespace A235563.P6330801197300425379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A055999 n + 10).toNat

end

end A235563.P6330801197300425379

/-!
# A235564: Number of (n+1)X(5+1) 0..2 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235564, there is no canonical definition to state claims against.
-/

/-! ## A235564.P12295577056362149186

`A235565(A374005(n+1))`
-/

namespace A235564.P12295577056362149186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A374005 (n + 1)).toNat

end

end A235564.P12295577056362149186

/-! ## A235564.P6085441463990195046

`A235565(A167614(n+3)+2)`
-/

namespace A235564.P6085441463990195046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (A167614 (n + 3) + 2).toNat

end

end A235564.P6085441463990195046

/-! ## A235564.P7792814881547289507

`A235565(eq[6, A131818(n+1)])`
-/

namespace A235564.P7792814881547289507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235565 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235564.P7792814881547289507

/-!
# A235566: Number of (n+1) X (1+1) 0..1 arrays with the difference of the upper and lower median value of each 2 X 2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235566, the canonical program `A235566.P1488265595610199434` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235566 has offset 1).

The definition of A235566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235566.P7226799949803818361

`ogf((16-14x-40x^2+32x^3)/(1-4x+x^2+10x^3-8x^4))`
-/

namespace A235566.P7226799949803818361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -14, -40, 32] [1, -4, 1, 10, -8] n

end

end A235566.P7226799949803818361

namespace A235566

/-- `ogf((16-14x-40x^2+32x^3)/(1-4x+x^2+10x^3-8x^4))` -/
def P7226799949803818361.Spec : Prop :=
  ∀ n, P7226799949803818361.a n = A235566 (n + 1)

end A235566

/-! ## A235566.P1488265595610199434

`4*a(n-1)-a(n-2)-10*a(n-3)+8*a(n-4)` with `a(0)=16, a(1)=50, a(2)=144, a(3)=398`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235566

/-- `4*a(n-1)-a(n-2)-10*a(n-3)+8*a(n-4)` -/
def P1488265595610199434.Spec : Prop :=
  ∀ n, P1488265595610199434.a n = A235566 (n + 1)

theorem P1488265595610199434.correct : P1488265595610199434.Spec := by
  intro n
  simp only [A235566, Nat.add_sub_cancel]

end A235566

/-! ## A235566.P104456465873634901

`A235962(∑[n]+1)`
-/

namespace A235566.P104456465873634901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235566.P104456465873634901

namespace A235566

/-- `A235962(∑[n]+1)` -/
def P104456465873634901.Spec : Prop :=
  ∀ n, P104456465873634901.a n = A235566 (n + 1)

end A235566

/-! ## A235566.P12351296248015771322

`lcm(2, A235962(A000124(n)))`
-/

namespace A235566.P12351296248015771322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235962 (A000124 n).toNat)

end

end A235566.P12351296248015771322

namespace A235566

/-- `lcm(2, A235962(A000124(n)))` -/
def P12351296248015771322.Spec : Prop :=
  ∀ n, (P12351296248015771322.a n : ℤ) = A235566 (n + 1)

end A235566

/-! ## A235566.P16081352244017394946

`record[A235962(A056534(n+1))]`
-/

namespace A235566.P16081352244017394946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235962 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235566.P16081352244017394946

namespace A235566

/-- `record[A235962(A056534(n+1))]` -/
def P16081352244017394946.Spec : Prop :=
  ∀ n, P16081352244017394946.a n = A235566 (n + 1)

end A235566

/-!
# A235567: Number of (n+1)X(2+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235567, there is no canonical definition to state claims against.
-/

/-! ## A235567.P13201055899116615601

`A235573(∑[n+1]+2)`
-/

namespace A235567.P13201055899116615601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235567.P13201055899116615601

/-! ## A235567.P11706982692688010344

`record[A235573(A114091(n+1)+1)]`
-/

namespace A235567.P11706982692688010344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235567.P11706982692688010344

/-! ## A235567.P13619446015217186298

`record[A010054(n)*A235573(n+2)]`
-/

namespace A235567.P13619446015217186298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A235573 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235567.P13619446015217186298

/-! ## A235567.P9556691860495189123

`record[A132013(n)*A235573(n+3)]`
-/

namespace A235567.P9556691860495189123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132013 n * A235573 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235567.P9556691860495189123

/-! ## A235567.P9077352752614454425

`record[gcd(A002262(n), A235573(n+2))]`
-/

namespace A235567.P9077352752614454425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A235573 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235567.P9077352752614454425

/-!
# A235568: Number of (n+1)X(3+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235568, there is no canonical definition to state claims against.
-/

/-! ## A235568.P10657051845161438579

`A235573(∑[n+2]+4)`
-/

namespace A235568.P10657051845161438579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235568.P10657051845161438579

/-! ## A235568.P8936820416940369423

`lcm(2, A235573(A167614(n+1)))`
-/

namespace A235568.P8936820416940369423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235573 (A167614 (n + 1)).toNat)

end

end A235568.P8936820416940369423

/-! ## A235568.P8353025235402923276

`record[gcd(A235573(n+4), A355565(n))]`
-/

namespace A235568.P8353025235402923276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A235573 (n + 4)) (A355565 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235568.P8353025235402923276

/-! ## A235568.P17885698170205995979

`A235573(A167614(n+1))+A025442(n)`
-/

namespace A235568.P17885698170205995979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A167614 (n + 1)).toNat + A025442 n

end

end A235568.P17885698170205995979

/-! ## A235568.P10401669352575145213

`A235573(A167614(n+1))+A025466(n)`
-/

namespace A235568.P10401669352575145213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A167614 (n + 1)).toNat + A025466 n

end

end A235568.P10401669352575145213

/-!
# A235569: Number of (n+1)X(4+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235569, there is no canonical definition to state claims against.
-/

/-! ## A235569.P8398324218889293447

`A235573(∑[n+3]+7)`
-/

namespace A235569.P8398324218889293447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A235569.P8398324218889293447

/-! ## A235569.P3819498493917393984

`A235573(A000217(n+3)+4)+A058343(n+1)`
-/

namespace A235569.P3819498493917393984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A000217 (n + 3) + 4).toNat + A058343 (n + 1)

end

end A235569.P3819498493917393984

/-! ## A235569.P10548788719069646874

`A326168(n+3)+A235573(A055998(n+2))`
-/

namespace A235569.P10548788719069646874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326168 (n + 3) + A235573 (A055998 (n + 2)).toNat

end

end A235569.P10548788719069646874

/-!
# A235570: Number of (n+1)X(5+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235570, there is no canonical definition to state claims against.
-/

/-! ## A235570.P10693494549201885699

`A235573(A374005(n+1))`
-/

namespace A235570.P10693494549201885699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A374005 (n + 1)).toNat

end

end A235570.P10693494549201885699

/-! ## A235570.P3956931399254503762

`A235573(A167499(n+3))`
-/

namespace A235570.P3956931399254503762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A167499 (n + 3)).toNat

end

end A235570.P3956931399254503762

/-! ## A235570.P5919028642475043492

`A235573(A155212(n)+13)`
-/

namespace A235570.P5919028642475043492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A155212 n + 13).toNat

end

end A235570.P5919028642475043492

/-! ## A235570.P16057472612547399739

`A235573(A056000(n)+15)`
-/

namespace A235570.P16057472612547399739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A056000 n + 15).toNat

end

end A235570.P16057472612547399739

/-! ## A235570.P5751256239558187290

`A235573(eq[7, A066657(n)])`
-/

namespace A235570.P5751256239558187290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235570.P5751256239558187290

/-!
# A235571: Number of (n+1)X(6+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235571, there is no canonical definition to state claims against.
-/

/-! ## A235571.P1500804319324672349

`A235573(A374007(n+1))`
-/

namespace A235571.P1500804319324672349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A374007 (n + 1)).toNat

end

end A235571.P1500804319324672349

/-! ## A235571.P9352446943377953128

`A235573(A166136(n+4))`
-/

namespace A235571.P9352446943377953128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A166136 (n + 4)).toNat

end

end A235571.P9352446943377953128

/-! ## A235571.P7006474417705391154

`A235573(A056115(n)+21)`
-/

namespace A235571.P7006474417705391154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A056115 n + 21).toNat

end

end A235571.P7006474417705391154

/-! ## A235571.P5761532546623755256

`A235573(A000217(n+5)+6)`
-/

namespace A235571.P5761532546623755256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A000217 (n + 5) + 6).toNat

end

end A235571.P5761532546623755256

/-! ## A235571.P14803563673413920348

`A235573(eq[7, A131818(n+1)])`
-/

namespace A235571.P14803563673413920348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235571.P14803563673413920348

/-!
# A235572: Number of (n+1)X(7+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235572, there is no canonical definition to state claims against.
-/

/-! ## A235572.P4721305213154943784

`A235573(A374008(n+1))`
-/

namespace A235572.P4721305213154943784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A374008 (n + 1)).toNat

end

end A235572.P4721305213154943784

/-! ## A235572.P14675850777143974903

`A235573(A056119(n)+28)`
-/

namespace A235572.P14675850777143974903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A056119 n + 28).toNat

end

end A235572.P14675850777143974903

/-! ## A235572.P7990018253898174199

`A235573(eq[11, A066657(n)])`
-/

namespace A235572.P7990018253898174199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A235572.P7990018253898174199

/-! ## A235572.P12993873562090823832

`A235573(A166136(n+5)+1)`
-/

namespace A235572.P12993873562090823832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A166136 (n + 5) + 1).toNat

end

end A235572.P12993873562090823832

/-! ## A235572.P10244922710243965347

`A235573(A055998(n+4)+10)`
-/

namespace A235572.P10244922710243965347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235573 (A055998 (n + 4) + 10).toNat

end

end A235572.P10244922710243965347

/-!
# A235573: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235573, there is no canonical definition to state claims against.
-/

/-! ## A235573.P15196845662470383368

`xor(A235962(n+1), A277043(A173882(n)))`
-/

namespace A235573.P15196845662470383368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235962 (n + 1)) (A277043 (A173882 n).toNat)

end

end A235573.P15196845662470383368

/-! ## A235573.P7493037519453758065

`xor(A235962(n+1), A277043(A252820(n+1)))`
-/

namespace A235573.P7493037519453758065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A235962 (n + 1)) (A277043 (A252820 (n + 1)).toNat)

end

end A235573.P7493037519453758065

/-!
# A235574: Number of (n+1)X(1+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235574, there is no canonical definition to state claims against.
-/

/-! ## A235574.P17963876423341584139

`A235577(∑[n]+1)`
-/

namespace A235574.P17963876423341584139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235577 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235574.P17963876423341584139

/-! ## A235574.P8759738346703354772

`A235818(∑[n]+1)`
-/

namespace A235574.P8759738346703354772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235574.P8759738346703354772

/-! ## A235574.P2969565083838219850

`lcm(2, A235577(A000124(n)))`
-/

namespace A235574.P2969565083838219850
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235577 (A000124 n).toNat)

end

end A235574.P2969565083838219850

/-! ## A235574.P7826062808302563856

`record[A235577(A166017(n+1))]`
-/

namespace A235574.P7826062808302563856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235577 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235574.P7826062808302563856

/-! ## A235574.P4014649582226803159

`record[A235818(A286234(n+1))]`
-/

namespace A235574.P4014649582226803159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235818 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235574.P4014649582226803159

/-!
# A235575: Number of (n+1)X(2+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235575, there is no canonical definition to state claims against.
-/

/-! ## A235575.P9892953224888006422

`A235577(∑[n+1]+2)`
-/

namespace A235575.P9892953224888006422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235577 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235575.P9892953224888006422

/-! ## A235575.P13735907759852208611

`lcm(2, A235577(A000096(n)+3))`
-/

namespace A235575.P13735907759852208611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235577 (A000096 n + 3).toNat)

end

end A235575.P13735907759852208611

/-! ## A235575.P12709368639854432650

`record[A235577(A166017(n+1)+1)]`
-/

namespace A235575.P12709368639854432650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235577 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235575.P12709368639854432650

/-! ## A235575.P3086736804200638391

`record[lcm(A197870(n), A235577(n+2))]`
-/

namespace A235575.P3086736804200638391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A235577 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235575.P3086736804200638391

/-!
# A235576: Number of (n+1)X(3+1) 0..3 arrays with the difference of the upper and lower median value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235576, there is no canonical definition to state claims against.
-/

/-! ## A235576.P14524605987527141551

`A235577(A167614(n+1))`
-/

namespace A235576.P14524605987527141551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235577 (A167614 (n + 1)).toNat

end

end A235576.P14524605987527141551

/-! ## A235576.P1747721565491113485

`A235577(∑[n+3]+1)`
-/

namespace A235576.P1747721565491113485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235577 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235576.P1747721565491113485

/-!
# A235578: Squareful numbers with squareful neighbors.

The programs for A235578, there is no canonical definition to state claims against.
-/

/-! ## A235578.P13426495573267577418

`A070258(n+1)+1`
-/

namespace A235578.P13426495573267577418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070258 (n + 1) + 1

end

end A235578.P13426495573267577418

/-! ## A235578.P7351671355065127849

`∩[A013929(n+1), A114180(n+1)+1]`
-/

namespace A235578.P7351671355065127849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P7351671355065127849

/-! ## A235578.P3359054002671438961

`∩[A013929(n+1), A281192(n+1)]`
-/

namespace A235578.P3359054002671438961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P3359054002671438961

/-! ## A235578.P13740090813717861734

`∩[A176309(n+1), A281192(n+1)]`
-/

namespace A235578.P13740090813717861734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P13740090813717861734

/-! ## A235578.P13041626713851309553

`∩[A068781(n+2), A114180(n+2)]+1`
-/

namespace A235578.P13041626713851309553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A235578.P13041626713851309553

/-! ## A235578.P8604585445363517569

`∩[A068781(n+1), A281192(n+1)]`
-/

namespace A235578.P8604585445363517569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P8604585445363517569

/-! ## A235578.P2135203507302716366

`A068781(eq[1, A068781(n+2)-A068781(n+1)]+1)+1`
-/

namespace A235578.P2135203507302716366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 2) - A068781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A235578.P2135203507302716366

/-! ## A235578.P7290545884259797228

`filter[A281192(n+1), A087049(#)]`
-/

namespace A235578.P7290545884259797228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A235578.P7290545884259797228

/-! ## A235578.P4946979865916762195

`record[A105570(A114180(n+4))+1]`
-/

namespace A235578.P4946979865916762195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A114180 (n + 4)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235578.P4946979865916762195

/-! ## A235578.P8808114015116234970

`lt[1, A080733(n+1)]+1`
-/

namespace A235578.P8808114015116234970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A235578.P8808114015116234970

/-! ## A235578.P17195104302324647519

`∩[A064148(n+1), A281192(n+1)]`
-/

namespace A235578.P17195104302324647519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P17195104302324647519

/-! ## A235578.P4948213929598920021

`∩[A074819(n+1), A281192(n+1)]`
-/

namespace A235578.P4948213929598920021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P4948213929598920021

/-! ## A235578.P10383074226655006057

`∩[A068781(n+1), A074820(n+1)+1]`
-/

namespace A235578.P10383074226655006057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074820 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P10383074226655006057

/-! ## A235578.P13455021574215159596

`∩[A074819(n+1), A114180(n+1)+1]`
-/

namespace A235578.P13455021574215159596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P13455021574215159596

/-! ## A235578.P10896094120948334853

`∩[A080756(n+1), A281192(n+1)]`
-/

namespace A235578.P10896094120948334853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P10896094120948334853

/-! ## A235578.P9666609209739477188

`∩[A162966(n+1), A281192(n+1)]`
-/

namespace A235578.P9666609209739477188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P9666609209739477188

/-! ## A235578.P11560769362040413713

`∩[A281192(n+1), A354360(n+1)]`
-/

namespace A235578.P11560769362040413713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P11560769362040413713

/-! ## A235578.P5831851593408850417

`∩[A114180(n+1)+1, A162966(n+1)]`
-/

namespace A235578.P5831851593408850417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P5831851593408850417

/-! ## A235578.P10195311821847605355

`∩[A114180(n+1), A354360(n+1)]+1`
-/

namespace A235578.P10195311821847605355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A235578.P10195311821847605355

/-! ## A235578.P9154521072010788223

`∩[A067197(n+1), A114180(n+1)+1]`
-/

namespace A235578.P9154521072010788223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114180 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235578.P9154521072010788223

/-!
# A235579: Number of (n+1)X(1+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235579, there is no canonical definition to state claims against.
-/

/-! ## A235579.P15678433126086225217

`A235582(∑[n]+1)`
-/

namespace A235579.P15678433126086225217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235579.P15678433126086225217

/-! ## A235579.P9516665671294461604

`A235824(∑[n]+1)`
-/

namespace A235579.P9516665671294461604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235824 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235579.P9516665671294461604

/-! ## A235579.P13438125148544639054

`lcm(2, A235582(A000124(n)))`
-/

namespace A235579.P13438125148544639054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A235582 (A000124 n).toNat)

end

end A235579.P13438125148544639054

/-! ## A235579.P8135285166193402267

`record[A235582(A286235(n+1))]`
-/

namespace A235579.P8135285166193402267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235579.P8135285166193402267

/-! ## A235579.P10470362591085259638

`record[A235582(A286244(n+1))]`
-/

namespace A235579.P10470362591085259638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235579.P10470362591085259638

/-!
# A235580: Number of (n+1)X(2+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235580, there is no canonical definition to state claims against.
-/

/-! ## A235580.P9601124790527112166

`A235582(∑[n+1]+2)`
-/

namespace A235580.P9601124790527112166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235580.P9601124790527112166

/-! ## A235580.P7775288867626492137

`record[A235582(A286235(n+1)+1)]`
-/

namespace A235580.P7775288867626492137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235580.P7775288867626492137

/-! ## A235580.P5374077954158645012

`A319387(n)+A235582(A000096(n)+3)`
-/

namespace A235580.P5374077954158645012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319387 n + A235582 (A000096 n + 3).toNat

end

end A235580.P5374077954158645012

/-! ## A235580.P1145577056385842894

`A014963(10*A000040(n+1))*A235582(A000096(n)+3)`
-/

namespace A235580.P1145577056385842894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * A000040 (n + 1)).toNat * A235582 (A000096 n + 3).toNat

end

end A235580.P1145577056385842894

/-!
# A235581: Number of (n+1)X(3+1) 0..3 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235581, there is no canonical definition to state claims against.
-/

/-! ## A235581.P15787823781983050199

`A235582(A167614(n+1))`
-/

namespace A235581.P15787823781983050199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (A167614 (n + 1)).toNat

end

end A235581.P15787823781983050199

/-! ## A235581.P12837328211821715595

`A235582(∑[n+3]+1)`
-/

namespace A235581.P12837328211821715595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235581.P12837328211821715595

/-!
# A235583: Numbers not divisible by 2, 5 or 7.

The programs for A235583, the canonical program `A235583.P17776821583397594156` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235583 has offset 1).

The definition of A235583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A235583.P11861252390642201225

`filter[2*n+1, gcd(35, #)]`
-/

namespace A235583.P11861252390642201225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Nat.gcd 35 (f1 j) = 1) n)

end

end A235583.P11861252390642201225

namespace A235583

/-- `filter[2*n+1, gcd(35, #)]` -/
def P11861252390642201225.Spec : Prop :=
  ∀ n, (P11861252390642201225.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P17776821583397594156

`eq[gcd(70, n)+n, n+1]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235583

/-- `eq[gcd(70, n)+n, n+1]` -/
def P17776821583397594156.Spec : Prop :=
  ∀ n, (P17776821583397594156.a n : ℤ) = A235583 (n + 1)

theorem P17776821583397594156.correct : P17776821583397594156.Spec := by
  intro n
  simp only [A235583, Nat.add_sub_cancel]

end A235583

/-! ## A235583.P17226925380562371370

`record[lcm(35, 2*n+1)/35]`
-/

namespace A235583.P17226925380562371370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 35 (2 * n + 1) : ℚ) / 35

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235583.P17226925380562371370

namespace A235583

/-- `record[lcm(35, 2*n+1)/35]` -/
def P17226925380562371370.Spec : Prop :=
  ∀ n, P17226925380562371370.a n = (A235583 (n + 1) : ℚ)

end A235583

/-! ## A235583.P13791267851516082708

`record[(2*n+1)/gcd(2*n+1, 5*(n-3))]`
-/

namespace A235583.P13791267851516082708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (Int.gcd (2 * n + 1 : ℤ) (5 * ((n : ℤ) - 3)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235583.P13791267851516082708

namespace A235583

/-- `record[(2*n+1)/gcd(2*n+1, 5*(n-3))]` -/
def P13791267851516082708.Spec : Prop :=
  ∀ n, P13791267851516082708.a n = (A235583 (n + 1) : ℚ)

end A235583

/-! ## A235583.P10963000549940893698

`filter[A162699(n+1), A011558(#)]`
-/

namespace A235583.P10963000549940893698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A235583.P10963000549940893698

namespace A235583

/-- `filter[A162699(n+1), A011558(#)]` -/
def P10963000549940893698.Spec : Prop :=
  ∀ n, P10963000549940893698.a n = A235583 (n + 1)

end A235583

/-! ## A235583.P837606782438715849

`filter[A162699(n+1), A358847(#)]`
-/

namespace A235583.P837606782438715849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358847 (f1 j).toNat = 1) n)

end

end A235583.P837606782438715849

namespace A235583

/-- `filter[A162699(n+1), A358847(#)]` -/
def P837606782438715849.Spec : Prop :=
  ∀ n, P837606782438715849.a n = A235583 (n + 1)

end A235583

/-! ## A235583.P1591113499176989185

`∩[A045572(n+1), A162699(n+1)]`
-/

namespace A235583.P1591113499176989185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P1591113499176989185

namespace A235583

/-- `∩[A045572(n+1), A162699(n+1)]` -/
def P1591113499176989185.Spec : Prop :=
  ∀ n, (P1591113499176989185.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P9693567094993673960

`∩[A162699(n+1), A241662(n+1)]`
-/

namespace A235583.P9693567094993673960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P9693567094993673960

namespace A235583

/-- `∩[A162699(n+1), A241662(n+1)]` -/
def P9693567094993673960.Spec : Prop :=
  ∀ n, (P9693567094993673960.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P8687089014097666248

`record[gcd(A001849(n), A005408(n))]`
-/

namespace A235583.P8687089014097666248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001849 n) (A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235583.P8687089014097666248

namespace A235583

/-- `record[gcd(A001849(n), A005408(n))]` -/
def P8687089014097666248.Spec : Prop :=
  ∀ n, (P8687089014097666248.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P12970833350134738999

`∩[2*n+1, A235933(n+1)]`
-/

namespace A235583.P12970833350134738999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P12970833350134738999

namespace A235583

/-- `∩[2*n+1, A235933(n+1)]` -/
def P12970833350134738999.Spec : Prop :=
  ∀ n, (P12970833350134738999.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P10723518667683786773

`filter[A235933(n+1), A374134(#)]`
-/

namespace A235583.P10723518667683786773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A235583.P10723518667683786773

namespace A235583

/-- `filter[A235933(n+1), A374134(#)]` -/
def P10723518667683786773.Spec : Prop :=
  ∀ n, P10723518667683786773.a n = A235583 (n + 1)

end A235583

/-! ## A235583.P134768293653076975

`∩[A235933(n+1), A004273(n)]`
-/

namespace A235583.P134768293653076975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P134768293653076975

namespace A235583

/-- `∩[A235933(n+1), A004273(n)]` -/
def P134768293653076975.Spec : Prop :=
  ∀ n, (P134768293653076975.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P3331174540325683307

`∩[A235933(n+1), A060747(n)]`
-/

namespace A235583.P3331174540325683307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P3331174540325683307

namespace A235583

/-- `∩[A235933(n+1), A060747(n)]` -/
def P3331174540325683307.Spec : Prop :=
  ∀ n, (P3331174540325683307.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P10827592078432824193

`∩[A235933(n+1), A241662(n+1)]`
-/

namespace A235583.P10827592078432824193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P10827592078432824193

namespace A235583

/-- `∩[A235933(n+1), A241662(n+1)]` -/
def P10827592078432824193.Spec : Prop :=
  ∀ n, (P10827592078432824193.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P9755697134750174584

`∩[A235933(n+1), A277599(n+1)]`
-/

namespace A235583.P9755697134750174584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P9755697134750174584

namespace A235583

/-- `∩[A235933(n+1), A277599(n+1)]` -/
def P9755697134750174584.Spec : Prop :=
  ∀ n, (P9755697134750174584.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P12528022095872633776

`∩[A047201(n+1), A162699(n+1)]`
-/

namespace A235583.P12528022095872633776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P12528022095872633776

namespace A235583

/-- `∩[A047201(n+1), A162699(n+1)]` -/
def P12528022095872633776.Spec : Prop :=
  ∀ n, (P12528022095872633776.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P10706208349052069319

`∩[A045572(n+1), A047304(n+1)]`
-/

namespace A235583.P10706208349052069319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A235583.P10706208349052069319

namespace A235583

/-- `∩[A045572(n+1), A047304(n+1)]` -/
def P10706208349052069319.Spec : Prop :=
  ∀ n, (P10706208349052069319.a n : ℤ) = A235583 (n + 1)

end A235583

/-! ## A235583.P10800486621299935059

`record[gcd(n+1, ∑[3*A166810(n+1)])]`
-/

namespace A235583.P10800486621299935059
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A166810 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235583.P10800486621299935059

namespace A235583

/-- `record[gcd(n+1, ∑[3*A166810(n+1)])]` -/
def P10800486621299935059.Spec : Prop :=
  ∀ n, (P10800486621299935059.a n : ℤ) = A235583 (n + 1)

end A235583

/-!
# A235584: Number of (n+1)X(1+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235584, there is no canonical definition to state claims against.
-/

/-! ## A235584.P10933867723647033375

`A235588(∑[n]+1)`
-/

namespace A235584.P10933867723647033375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235584.P10933867723647033375

/-! ## A235584.P10854192886975770137

`A235833(∑[n]+1)`
-/

namespace A235584.P10854192886975770137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A235584.P10854192886975770137

/-! ## A235584.P2952911925157147688

`or(1, A235588(A000124(n)))`
-/

namespace A235584.P2952911925157147688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A235588 (A000124 n).toNat)

end

end A235584.P2952911925157147688

/-! ## A235584.P16235637113363937247

`record[A235833(A056534(n+1))]`
-/

namespace A235584.P16235637113363937247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235584.P16235637113363937247

/-! ## A235584.P4741892930756002458

`record[A235833(A114091(n+1))]`
-/

namespace A235584.P4741892930756002458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235833 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235584.P4741892930756002458

/-!
# A235585: Number of (n+1)X(2+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235585, there is no canonical definition to state claims against.
-/

/-! ## A235585.P10315206885980903278

`A235588(∑[n+1]+2)`
-/

namespace A235585.P10315206885980903278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A235585.P10315206885980903278

/-! ## A235585.P11262186378527181815

`A235588(A000096(n)+3)/A043562(n)`
-/

namespace A235585.P11262186378527181815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235588 (A000096 n + 3).toNat : ℚ) / (A043562 n : ℚ)

end

end A235585.P11262186378527181815

/-! ## A235585.P2652702129769590492

`A235588(A000096(n)+3)%A235570(n+1)`
-/

namespace A235585.P2652702129769590492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235588 (A000096 n + 3).toNat) (A235570 (n + 1))

end

end A235585.P2652702129769590492

/-! ## A235585.P3062781146793570475

`record[A235588(abs(A201163(n)))]`
-/

namespace A235585.P3062781146793570475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235585.P3062781146793570475

/-! ## A235585.P16948211048846620217

`record[A235588(Δ[A003453(n+5)])]`
-/

namespace A235585.P16948211048846620217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A235585.P16948211048846620217

/-!
# A235586: Number of (n+1)X(3+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235586, there is no canonical definition to state claims against.
-/

/-! ## A235586.P4094759183208004436

`A235588(∑[n+2]+4)`
-/

namespace A235586.P4094759183208004436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A235586.P4094759183208004436

/-! ## A235586.P2480262468300366834

`or(A011883(n), A235588(A167614(n+1)))`
-/

namespace A235586.P2480262468300366834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011883 n) (A235588 (A167614 (n + 1)).toNat)

end

end A235586.P2480262468300366834

/-! ## A235586.P13600242286888115940

`A235588(A167614(n+1))*A318829(n+1)`
-/

namespace A235586.P13600242286888115940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (A167614 (n + 1)).toNat * A318829 (n + 1)

end

end A235586.P13600242286888115940

/-! ## A235586.P4550103305911725519

`A235588(A167614(n+1))*A319099(n+1)`
-/

namespace A235586.P4550103305911725519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (A167614 (n + 1)).toNat * A319099 (n + 1)

end

end A235586.P4550103305911725519

/-! ## A235586.P11440418565723001511

`A235588(A167614(n+1))%A235587(n+1)`
-/

namespace A235586.P11440418565723001511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235588 (A167614 (n + 1)).toNat) (A235587 (n + 1))

end

end A235586.P11440418565723001511

/-!
# A235587: Number of (n+1)X(4+1) 0..2 arrays with the difference of the upper median and minimum value of each 2X2 subblock in lexicographically nondecreasing order rowwise and columnwise.

The programs for A235587, there is no canonical definition to state claims against.
-/

/-! ## A235587.P4323955195711873690

`A235588(∑[round(sqrt(n²+1))+3]+6)`
-/

namespace A235587.P4323955195711873690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235588 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A235587.P4323955195711873690

/-!
# A235589: The periodic part of the decimal expansion of m/(m+1), for those m/(m+1) that have pure periods.

The programs for A235589, there is no canonical definition to state claims against.
-/

/-! ## A235589.P12471871342292522647

`A045572(n+2)*A178505(n+1)-A178505(n+1)`
-/

namespace A235589.P12471871342292522647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2) * A178505 (n + 1) - A178505 (n + 1)

end

end A235589.P12471871342292522647

/-!
# A235590: Sum of parts of the form 10...0 with nonnegative number of zeros in binary representation of c-squarefree numbers (A233564) as the corresponding powers of 2.

The programs for A235590, there is no canonical definition to state claims against.
-/

/-! ## A235590.P615974671216865476

`A162439(A233564(n+2))`
-/

namespace A235590.P615974671216865476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162439 (A233564 (n + 2)).toNat

end

end A235590.P615974671216865476

/-!
# A235591: Numbers which on division by their digital root give quotient which is divisible by its digital root.

The programs for A235591, there is no canonical definition to state claims against.
-/

/-! ## A235591.P7180876560048658561

`A085974(A199101(n+1))+A064807(n+1)`
-/

namespace A235591.P7180876560048658561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (A199101 (n + 1)).toNat + A064807 (n + 1)

end

end A235591.P7180876560048658561

/-! ## A235591.P10142521267586909309

`A064807(n+1)-A240328(A196115(3*n+1))`
-/

namespace A235591.P10142521267586909309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1) - A240328 (A196115 (3 * n + 1)).toNat

end

end A235591.P10142521267586909309

/-!
# A235592: Numbers k such that k*(k+1) - prime(k) is prime.

The programs for A235592, there is no canonical definition to state claims against.
-/

/-! ## A235592.P457555344030528451

`lt[A256154(A256193(n)), A256121(n+1)]`
-/

namespace A235592.P457555344030528451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256154 (A256193 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235592.P457555344030528451

/-! ## A235592.P13675131459898056649

`lt[A167268(A056793(n+1)), A064216(n+1)]`
-/

namespace A235592.P13675131459898056649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167268 (A056793 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235592.P13675131459898056649

/-! ## A235592.P16584206518401593128

`lt[A003987(A187162(n+1)), A377027(3*n+1)]`
-/

namespace A235592.P16584206518401593128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A187162 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377027 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A235592.P16584206518401593128

/-!
# A235593: Binomial(n-1,3)+3*binomial(n-1,4)+6*binomial(n-1,5)+5*binomial(n-1,6).

The programs for A235593, the canonical program `A235593.P15768815034740778860` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235593 has offset 1).

The definition of A235593 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n, 3)+3*C(n, 4)+6*C(n, 5)+5*C(n, 6)` (program `A235593.P15768815034740778860`, by `A235593.P15768815034740778860.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A235593.P4978325427041870458

`ogf((x^3+3x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A235593.P4978325427041870458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 0, 3, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A235593.P4978325427041870458

namespace A235593

/-- `ogf((x^3+3x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P4978325427041870458.Spec : Prop :=
  ∀ n, P4978325427041870458.a n = A235593 (n + 1)

end A235593

/-! ## A235593.P15768815034740778860

`C(n, 3)+3*C(n, 4)+6*C(n, 5)+5*C(n, 6)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A235593

/-- `C(n, 3)+3*C(n, 4)+6*C(n, 5)+5*C(n, 6)` -/
def P15768815034740778860.Spec : Prop :=
  ∀ n, (P15768815034740778860.a n : ℤ) = A235593 (n + 1)

theorem P15768815034740778860.correct : P15768815034740778860.Spec := by
  intro n
  simp only [A235593, Nat.add_sub_cancel]

end A235593

/-! ## A235593.P3111928261507283767

`A335512(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A235593.P3111928261507283767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A335512 (a (n - 1)).toNat

end

end A235593.P3111928261507283767

namespace A235593

/-- `A335512(a(n-1))` -/
def P3111928261507283767.Spec : Prop :=
  ∀ n, P3111928261507283767.a n = A235593 (n + 1)

end A235593

/-!
# A235595: Triangle read by rows: the triangle in A034855, with the n-th row normalized by dividing it by n.

The programs for A235595, there is no canonical definition to state claims against.
-/

/-! ## A235595.P11049753395340189325

`A034855(n+2)/(A003056(n)+2)`
-/

namespace A235595.P11049753395340189325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 2) : ℚ) / (A003056 n + 2 : ℚ)

end

end A235595.P11049753395340189325

/-! ## A235595.P8376119675943872380

`A034855(n+2)/A003057(n+2)`
-/

namespace A235595.P8376119675943872380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A235595.P8376119675943872380

/-! ## A235595.P5435046928067678084

`A034855(n+2)/(A002024(n+1)+1)`
-/

namespace A235595.P5435046928067678084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 2) : ℚ) / (A002024 (n + 1) + 1 : ℚ)

end

end A235595.P5435046928067678084

/-! ## A235595.P7527110395296742831

`A034855(n+2)/(A014132(n+1)-n)`
-/

namespace A235595.P7527110395296742831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 2) : ℚ) / (A014132 (n + 1) - (n : ℤ) : ℚ)

end

end A235595.P7527110395296742831

/-! ## A235595.P13183121691840367885

`A034855(n+2)/A002024(A014132(n+1))`
-/

namespace A235595.P13183121691840367885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 2) : ℚ) / (A002024 (A014132 (n + 1)).toNat : ℚ)

end

end A235595.P13183121691840367885

/-! ## A235595.P6114624438586522855

`A034855(n+2)/(A004736(n+1)+A002260(n+1))`
-/

namespace A235595.P6114624438586522855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034855 (n + 2) : ℚ) / (A004736 (n + 1) + A002260 (n + 1) : ℚ)

end

end A235595.P6114624438586522855

/-!
# A235596: Second column of triangle in A235595.

The programs for A235596, the canonical program `A235596.P11875951441619194782` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A235596 has offset 1).

The definition of A235596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A235596.P11875951441619194782

`A000248(n)-1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A235596

/-- `A000248(n)-1` -/
def P11875951441619194782.Spec : Prop :=
  ∀ n, P11875951441619194782.a n = A235596 (n + 1)

theorem P11875951441619194782.correct : P11875951441619194782.Spec := by
  intro n
  simp only [A235596, Nat.add_sub_cancel]

end A235596

/-! ## A235596.P17486820309967911059

`A116071(∑[n])-1`
-/

namespace A235596.P17486820309967911059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116071 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A235596.P17486820309967911059

namespace A235596

/-- `A116071(∑[n])-1` -/
def P17486820309967911059.Spec : Prop :=
  ∀ n, P17486820309967911059.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P1001971587658381386

`A145460(∑[n+2]-1)-1`
-/

namespace A235596.P1001971587658381386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - 1

end

end A235596.P1001971587658381386

namespace A235596

/-- `A145460(∑[n+2]-1)-1` -/
def P1001971587658381386.Spec : Prop :=
  ∀ n, P1001971587658381386.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P359275970509617479

`A143398(A133263(n)-1)-1`
-/

namespace A235596.P359275970509617479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A133263 n - 1).toNat - 1

end

end A235596.P359275970509617479

namespace A235596

/-- `A143398(A133263(n)-1)-1` -/
def P359275970509617479.Spec : Prop :=
  ∀ n, P359275970509617479.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P2414056657423218973

`A057428(n+1)+A000248(n)`
-/

namespace A235596.P2414056657423218973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A000248 n

end

end A235596.P2414056657423218973

namespace A235596

/-- `A057428(n+1)+A000248(n)` -/
def P2414056657423218973.Spec : Prop :=
  ∀ n, P2414056657423218973.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P10191995923253026938

`A009121(n)+A009565(n)-1`
-/

namespace A235596.P10191995923253026938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009121 n + (A009565 n - 1)

end

end A235596.P10191995923253026938

namespace A235596

/-- `A009121(n)+A009565(n)-1` -/
def P10191995923253026938.Spec : Prop :=
  ∀ n, P10191995923253026938.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P16997310511202474157

`A033999(2*n+1)+A000248(n)`
-/

namespace A235596.P16997310511202474157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A000248 n

end

end A235596.P16997310511202474157

namespace A235596

/-- `A033999(2*n+1)+A000248(n)` -/
def P16997310511202474157.Spec : Prop :=
  ∀ n, P16997310511202474157.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P15976034191080852585

`A052512(n+1)/(n+1)-1`
-/

namespace A235596.P15976034191080852585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052512 (n + 1) : ℚ) / (n + 1 : ℚ) - 1

end

end A235596.P15976034191080852585

namespace A235596

/-- `A052512(n+1)/(n+1)-1` -/
def P15976034191080852585.Spec : Prop :=
  ∀ n, P15976034191080852585.a n = (A235596 (n + 1) : ℚ)

end A235596

/-! ## A235596.P462976032944000520

`A292978(A055998(n)+1)-1`
-/

namespace A235596.P462976032944000520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292978 (A055998 n + 1).toNat - 1

end

end A235596.P462976032944000520

namespace A235596

/-- `A292978(A055998(n)+1)-1` -/
def P462976032944000520.Spec : Prop :=
  ∀ n, P462976032944000520.a n = A235596 (n + 1)

end A235596

/-! ## A235596.P2341100195354659485

`A143397(A000096(n))-1`
-/

namespace A235596.P2341100195354659485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143397 (A000096 n).toNat - 1

end

end A235596.P2341100195354659485

namespace A235596

/-- `A143397(A000096(n))-1` -/
def P2341100195354659485.Spec : Prop :=
  ∀ n, P2341100195354659485.a n = A235596 (n + 1)

end A235596

/-!
# A235597: Squares in which each digit exceeds the previous digit by more than one.

The programs for A235597, there is no canonical definition to state claims against.
-/

/-! ## A235597.P5894032194779338005

`(1-∑[A064460(n)!])²`
-/

namespace A235597.P5894032194779338005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A064460 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A235597.P5894032194779338005

/-! ## A235597.P11441004862103829617

`(1-∑[A324362(n)!])²`
-/

namespace A235597.P11441004862103829617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A324362 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2

end

end A235597.P11441004862103829617

/-! ## A235597.P17568841738140127216

`(∑[A121308(n+1)]+n)²`
-/

namespace A235597.P17568841738140127216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) ^ 2

end

end A235597.P17568841738140127216

/-! ## A235597.P11066650561543967838

`(A326678(comp[2*(n+1)]+6)-n)²`
-/

namespace A235597.P11066650561543967838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326678 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 6) - (n : ℤ)) ^ 2

end

end A235597.P11066650561543967838

/-! ## A235597.P5204175535165057411

`filter[A122683(n+1), A322674(#)]`
-/

namespace A235597.P5204175535165057411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322674 (f1 j).toNat = 1) n)

end

end A235597.P5204175535165057411

