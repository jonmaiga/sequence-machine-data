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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A092400: Fixed point of the morphism 1 -> 1121211, 2 -> 1121212121211, starting from a(1) = 1.

The programs for A092400, the canonical program `A092400.P712876146201366220` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092400 has offset 1).

The definition of A092400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092400.P712876146201366220

`Δ[A145204(n+1)/3]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092400

/-- `Δ[A145204(n+1)/3]` -/
def P712876146201366220.Spec : Prop :=
  ∀ n, P712876146201366220.a n = (A092400 (n + 1) : ℚ)

end A092400

/-! ## A092400.P10098358395704139213

`A001221(Δ[A145204(n+1)])`
-/

namespace A092400.P10098358395704139213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A092400.P10098358395704139213

namespace A092400

/-- `A001221(Δ[A145204(n+1)])` -/
def P10098358395704139213.Spec : Prop :=
  ∀ n, P10098358395704139213.a n = A092400 (n + 1)

end A092400

/-! ## A092400.P11463042582438909572

`A001222(Δ[A145204(n+1)])`
-/

namespace A092400.P11463042582438909572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A092400.P11463042582438909572

namespace A092400

/-- `A001222(Δ[A145204(n+1)])` -/
def P11463042582438909572.Spec : Prop :=
  ∀ n, P11463042582438909572.a n = A092400 (n + 1)

end A092400

/-! ## A092400.P1551129514417455061

`Δ[record[A158416(A325419(n+1))]]`
-/

namespace A092400.P1551129514417455061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (A325419 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092400.P1551129514417455061

namespace A092400

/-- `Δ[record[A158416(A325419(n+1))]]` -/
def P1551129514417455061.Spec : Prop :=
  ∀ n, P1551129514417455061.a n = A092400 (n + 1)

end A092400

/-!
# A092401: List of pairs n, 3n, where n is the least unused number so far.

The programs for A092401, the canonical program `A092401.P10773884446493401631` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092401 has offset 1).

The definition of A092401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092401.P10773884446493401631

`A007417(A008619(n))*A010684(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092401

/-- `A007417(A008619(n))*A010684(n)` -/
def P10773884446493401631.Spec : Prop :=
  ∀ n, P10773884446493401631.a n = A092401 (n + 1)

theorem P10773884446493401631.correct : P10773884446493401631.Spec := by
  intro n
  simp only [A092401, Nat.add_sub_cancel]

end A092401

/-! ## A092401.P2200840435791959495

`Δ[A042948(n)]*A007417(A008619(n))`
-/

namespace A092401.P2200840435791959495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007417 (A008619 n).toNat

end

end A092401.P2200840435791959495

namespace A092401

/-- `Δ[A042948(n)]*A007417(A008619(n))` -/
def P2200840435791959495.Spec : Prop :=
  ∀ n, P2200840435791959495.a n = A092401 (n + 1)

end A092401

/-! ## A092401.P1344138549468136786

`(2-A033999(n))*A007417(A008619(n))`
-/

namespace A092401.P1344138549468136786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A033999 n) * A007417 (A008619 n).toNat

end

end A092401.P1344138549468136786

namespace A092401

/-- `(2-A033999(n))*A007417(A008619(n))` -/
def P1344138549468136786.Spec : Prop :=
  ∀ n, P1344138549468136786.a n = A092401 (n + 1)

end A092401

/-! ## A092401.P13737870880289616767

`Δ[A059841(n)+2*n]*A007417(A008619(n))`
-/

namespace A092401.P13737870880289616767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007417 (A008619 n).toNat

end

end A092401.P13737870880289616767

namespace A092401

/-- `Δ[A059841(n)+2*n]*A007417(A008619(n))` -/
def P13737870880289616767.Spec : Prop :=
  ∀ n, P13737870880289616767.a n = A092401 (n + 1)

end A092401

/-! ## A092401.P8515551501916327519

`A007417(A008619(n))*A065882(Δ[n²])`
-/

namespace A092401.P8515551501916327519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007417 (A008619 n).toNat * A065882 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A092401.P8515551501916327519

namespace A092401

/-- `A007417(A008619(n))*A065882(Δ[n²])` -/
def P8515551501916327519.Spec : Prop :=
  ∀ n, P8515551501916327519.a n = A092401 (n + 1)

end A092401

/-!
# A092402: Primes of the form p+8 where p is a prime.

The programs for A092402, the canonical program `A092402.P6414901605658176195` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092402 has offset 1).

The definition of A092402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092402.P6414901605658176195

`p?[p?[2*n+1]+8]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092402

/-- `p?[p?[2*n+1]+8]` -/
def P6414901605658176195.Spec : Prop :=
  ∀ n, (P6414901605658176195.a n : ℤ) = A092402 (n + 1)

theorem P6414901605658176195.correct : P6414901605658176195.Spec := by
  intro n
  simp only [A092402, Nat.add_sub_cancel]

end A092402

/-! ## A092402.P12700857842007237408

`p?[A175224(n+1)]`
-/

namespace A092402.P12700857842007237408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P12700857842007237408

namespace A092402

/-- `p?[A175224(n+1)]` -/
def P12700857842007237408.Spec : Prop :=
  ∀ n, P12700857842007237408.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P12693971605486083881

`p?[A028815(n)+7]`
-/

namespace A092402.P12693971605486083881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P12693971605486083881

namespace A092402

/-- `p?[A028815(n)+7]` -/
def P12693971605486083881.Spec : Prop :=
  ∀ n, P12693971605486083881.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P14934614986320115161

`A087680(n+1)+4`
-/

namespace A092402.P14934614986320115161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1) + 4

end

end A092402.P14934614986320115161

namespace A092402

/-- `A087680(n+1)+4` -/
def P14934614986320115161.Spec : Prop :=
  ∀ n, P14934614986320115161.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P13058934917241671423

`8+A023202(n+1)`
-/

namespace A092402.P13058934917241671423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 + A023202 (n + 1)

end

end A092402.P13058934917241671423

namespace A092402

/-- `8+A023202(n+1)` -/
def P13058934917241671423.Spec : Prop :=
  ∀ n, P13058934917241671423.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P6435958645484216689

`p?[A139049(n+1)+2]`
-/

namespace A092402.P6435958645484216689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P6435958645484216689

namespace A092402

/-- `p?[A139049(n+1)+2]` -/
def P6435958645484216689.Spec : Prop :=
  ∀ n, P6435958645484216689.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P9392715275554782186

`p?[A140353(n+1)-1]`
-/

namespace A092402.P9392715275554782186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P9392715275554782186

namespace A092402

/-- `p?[A140353(n+1)-1]` -/
def P9392715275554782186.Spec : Prop :=
  ∀ n, P9392715275554782186.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P2857560911289232016

`p?[A175225(n+1)-2]`
-/

namespace A092402.P2857560911289232016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P2857560911289232016

namespace A092402

/-- `p?[A175225(n+1)-2]` -/
def P2857560911289232016.Spec : Prop :=
  ∀ n, P2857560911289232016.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P17372208691674661356

`p?[A008864(n+1)+7]`
-/

namespace A092402.P17372208691674661356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P17372208691674661356

namespace A092402

/-- `p?[A008864(n+1)+7]` -/
def P17372208691674661356.Spec : Prop :=
  ∀ n, P17372208691674661356.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P14256708423185143770

`p?[A000040(n+1)+8]`
-/

namespace A092402.P14256708423185143770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P14256708423185143770

namespace A092402

/-- `p?[A000040(n+1)+8]` -/
def P14256708423185143770.Spec : Prop :=
  ∀ n, P14256708423185143770.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P7254656944164723778

`p?[A008578(n+1)+8]`
-/

namespace A092402.P7254656944164723778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P7254656944164723778

namespace A092402

/-- `p?[A008578(n+1)+8]` -/
def P7254656944164723778.Spec : Prop :=
  ∀ n, P7254656944164723778.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P9483476031290480256

`p?[A006093(n+1)+9]`
-/

namespace A092402.P9483476031290480256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P9483476031290480256

namespace A092402

/-- `p?[A006093(n+1)+9]` -/
def P9483476031290480256.Spec : Prop :=
  ∀ n, P9483476031290480256.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P1344799972066146644

`2*A088764(n+1)+5`
-/

namespace A092402.P1344799972066146644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088764 (n + 1) + 5

end

end A092402.P1344799972066146644

namespace A092402

/-- `2*A088764(n+1)+5` -/
def P1344799972066146644.Spec : Prop :=
  ∀ n, P1344799972066146644.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P1885113981187964990

`p?[record[A000010(n+1)+9]]`
-/

namespace A092402.P1885113981187964990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 9

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092402.P1885113981187964990

namespace A092402

/-- `p?[record[A000010(n+1)+9]]` -/
def P1885113981187964990.Spec : Prop :=
  ∀ n, P1885113981187964990.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P5084425169001921162

`record[A006530(A175224(n+2))]`
-/

namespace A092402.P5084425169001921162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A175224 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092402.P5084425169001921162

namespace A092402

/-- `record[A006530(A175224(n+2))]` -/
def P5084425169001921162.Spec : Prop :=
  ∀ n, P5084425169001921162.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P16046093984608132170

`filter[A175224(n+1), A010051(#)]`
-/

namespace A092402.P16046093984608132170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A092402.P16046093984608132170

namespace A092402

/-- `filter[A175224(n+1), A010051(#)]` -/
def P16046093984608132170.Spec : Prop :=
  ∀ n, P16046093984608132170.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P8791061806896885577

`filter[A175224(n+1), A380467(#)]`
-/

namespace A092402.P8791061806896885577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A092402.P8791061806896885577

namespace A092402

/-- `filter[A175224(n+1), A380467(#)]` -/
def P8791061806896885577.Spec : Prop :=
  ∀ n, P8791061806896885577.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P10146692453136635193

`filter[A175224(n+2), A365716(#)]`
-/

namespace A092402.P10146692453136635193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A092402.P10146692453136635193

namespace A092402

/-- `filter[A175224(n+2), A365716(#)]` -/
def P10146692453136635193.Spec : Prop :=
  ∀ n, P10146692453136635193.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P14496220599830029999

`filter[A175224(n+2), A379969(#)]`
-/

namespace A092402.P14496220599830029999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A092402.P14496220599830029999

namespace A092402

/-- `filter[A175224(n+2), A379969(#)]` -/
def P14496220599830029999.Spec : Prop :=
  ∀ n, P14496220599830029999.a n = A092402 (n + 1)

end A092402

/-! ## A092402.P8339740283476148490

`record[A006530(A000040(n+2)+8)]`
-/

namespace A092402.P8339740283476148490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 2) + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092402.P8339740283476148490

namespace A092402

/-- `record[A006530(A000040(n+2)+8)]` -/
def P8339740283476148490.Spec : Prop :=
  ∀ n, P8339740283476148490.a n = A092402 (n + 1)

end A092402

/-!
# A092403: a(n) = sigma(n) + sigma(n+1).

The programs for A092403, the canonical program `A092403.P9702063797173032194` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092403 has offset 1).

The definition of A092403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000203(n+1)+A000203(n+2)` (program `A092403.P9702063797173032194`, by `A092403.P9702063797173032194.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092403.P9702063797173032194

`A000203(n+1)+A000203(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092403

/-- `A000203(n+1)+A000203(n+2)` -/
def P9702063797173032194.Spec : Prop :=
  ∀ n, P9702063797173032194.a n = A092403 (n + 1)

theorem P9702063797173032194.correct : P9702063797173032194.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel]

end A092403

/-! ## A092403.P1913876758790778672

`∑{d}[n+1, #]+∑{d}[n+2, #]`
-/

namespace A092403.P1913876758790778672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d + ∑ d ∈ Nat.divisors (f2 n), d

end

end A092403.P1913876758790778672

namespace A092403

/-- `∑{d}[n+1, #]+∑{d}[n+2, #]` -/
def P1913876758790778672.Spec : Prop :=
  ∀ n, (P1913876758790778672.a n : ℤ) = A092403 (n + 1)

theorem P1913876758790778672.correct : P1913876758790778672.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel, A092403.P1913876758790778672.f1, A092403.P1913876758790778672.f2, A092403.P1913876758790778672.a, A092403.P9702063797173032194.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092403

/-! ## A092403.P2374525801375569731

`A000203(n+2)+Δ[A160664(n)]`
-/

namespace A092403.P2374525801375569731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) + (f1 (n + 1) - f1 n)

end

end A092403.P2374525801375569731

namespace A092403

/-- `A000203(n+2)+Δ[A160664(n)]` -/
def P2374525801375569731.Spec : Prop :=
  ∀ n, P2374525801375569731.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P547935009870817270

`A074400(n+1)+A053222(n+1)`
-/

namespace A092403.P547935009870817270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + A053222 (n + 1)

end

end A092403.P547935009870817270

namespace A092403

/-- `A074400(n+1)+A053222(n+1)` -/
def P547935009870817270.Spec : Prop :=
  ∀ n, P547935009870817270.a n = A092403 (n + 1)

theorem P547935009870817270.correct : P547935009870817270.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel, A092403.P547935009870817270.a, A092403.P9702063797173032194.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053222, A053222.P10935068220858784370.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092403

/-! ## A092403.P13937261364657401959

`A387001(n+1)-A120444(n+1)`
-/

namespace A092403.P13937261364657401959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387001 (n + 1) - A120444 (n + 1)

end

end A092403.P13937261364657401959

namespace A092403

/-- `A387001(n+1)-A120444(n+1)` -/
def P13937261364657401959.Spec : Prop :=
  ∀ n, P13937261364657401959.a n = A092403 (n + 1)

theorem P13937261364657401959.correct : P13937261364657401959.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel, A092403.P13937261364657401959.a, A092403.P9702063797173032194.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A120444, A120444.P14466474420296758408.a, A387001, A387001.P16811340479551848930.a, A005408, A005408.P17437947328870227736.a, A224880, A224880.P6780601834210635688.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092403

/-! ## A092403.P14178707545339195404

`A088580(n+1)+∑[A053222(n+1)]`
-/

namespace A092403.P14178707545339195404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092403.P14178707545339195404

namespace A092403

/-- `A088580(n+1)+∑[A053222(n+1)]` -/
def P14178707545339195404.Spec : Prop :=
  ∀ n, P14178707545339195404.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P12101088860084968679

`(A074400(n+1)+A074400(n+2))/2`
-/

namespace A092403.P12101088860084968679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) + A074400 (n + 2) : ℚ) / 2

end

end A092403.P12101088860084968679

namespace A092403

/-- `(A074400(n+1)+A074400(n+2))/2` -/
def P12101088860084968679.Spec : Prop :=
  ∀ n, P12101088860084968679.a n = (A092403 (n + 1) : ℚ)

theorem P12101088860084968679.correct : P12101088860084968679.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel, A092403.P12101088860084968679.a, A092403.P9702063797173032194.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092403

/-! ## A092403.P9126397302197388454

`∑{d}[A051698(n), A000203(A000005(#)+n)]`
-/

namespace A092403.P9126397302197388454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000203 (A000005 d + (n : ℤ)).toNat

end

end A092403.P9126397302197388454

namespace A092403

/-- `∑{d}[A051698(n), A000203(A000005(#)+n)]` -/
def P9126397302197388454.Spec : Prop :=
  ∀ n, P9126397302197388454.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P15235486225786494333

`Δ[A332569(n+1)]`
-/

namespace A092403.P15235486225786494333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092403.P15235486225786494333

namespace A092403

/-- `Δ[A332569(n+1)]` -/
def P15235486225786494333.Spec : Prop :=
  ∀ n, P15235486225786494333.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P7576053438845711978

`abs(Δ[A143348(n+1)])`
-/

namespace A092403.P7576053438845711978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A092403.P7576053438845711978

namespace A092403

/-- `abs(Δ[A143348(n+1)])` -/
def P7576053438845711978.Spec : Prop :=
  ∀ n, P7576053438845711978.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P11931277626809943628

`A160664(n+2)-A160664(n)`
-/

namespace A092403.P11931277626809943628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 2) - A160664 n

end

end A092403.P11931277626809943628

namespace A092403

/-- `A160664(n+2)-A160664(n)` -/
def P11931277626809943628.Spec : Prop :=
  ∀ n, P11931277626809943628.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P2558081480026050754

`Δ[A160664(n)+A024916(n+1)]`
-/

namespace A092403.P2558081480026050754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + A024916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092403.P2558081480026050754

namespace A092403

/-- `Δ[A160664(n)+A024916(n+1)]` -/
def P2558081480026050754.Spec : Prop :=
  ∀ n, P2558081480026050754.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P11245675540261387152

`Δ[A160664(n+1)+A160664(n)]`
-/

namespace A092403.P11245675540261387152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (n + 1) + A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092403.P11245675540261387152

namespace A092403

/-- `Δ[A160664(n+1)+A160664(n)]` -/
def P11245675540261387152.Spec : Prop :=
  ∀ n, P11245675540261387152.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P676215128270544644

`∑{d}[Δ[A143348(n+1)], A000010(#)]`
-/

namespace A092403.P676215128270544644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A092403.P676215128270544644

namespace A092403

/-- `∑{d}[Δ[A143348(n+1)], A000010(#)]` -/
def P676215128270544644.Spec : Prop :=
  ∀ n, P676215128270544644.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P17768730371524591304

`A088580(n+1)+A039653(n+2)`
-/

namespace A092403.P17768730371524591304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + A039653 (n + 2)

end

end A092403.P17768730371524591304

namespace A092403

/-- `A088580(n+1)+A039653(n+2)` -/
def P17768730371524591304.Spec : Prop :=
  ∀ n, P17768730371524591304.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P12338941139406590273

`A340793(n+2)+A074400(n+1)`
-/

namespace A092403.P12338941139406590273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 2) + A074400 (n + 1)

end

end A092403.P12338941139406590273

namespace A092403

/-- `A340793(n+2)+A074400(n+1)` -/
def P12338941139406590273.Spec : Prop :=
  ∀ n, P12338941139406590273.a n = A092403 (n + 1)

theorem P12338941139406590273.correct : P12338941139406590273.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel, A092403.P12338941139406590273.a, A092403.P9702063797173032194.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A340793, A340793.P1700930985006359286.f1, A340793.P1700930985006359286.f2, A340793.P1700930985006359286.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092403

/-! ## A092403.P4546289256454998869

`A332569(n+2)-A332569(n+1)`
-/

namespace A092403.P4546289256454998869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332569 (n + 2) - A332569 (n + 1)

end

end A092403.P4546289256454998869

namespace A092403

/-- `A332569(n+2)-A332569(n+1)` -/
def P4546289256454998869.Spec : Prop :=
  ∀ n, P4546289256454998869.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P15688820981748621134

`A074400(n+1)+Δ[A039653(n+1)]`
-/

namespace A092403.P15688820981748621134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092403.P15688820981748621134

namespace A092403

/-- `A074400(n+1)+Δ[A039653(n+1)]` -/
def P15688820981748621134.Spec : Prop :=
  ∀ n, P15688820981748621134.a n = A092403 (n + 1)

end A092403

/-! ## A092403.P17830274349364183821

`A074400(n+1)+Δ[A088580(n+1)]`
-/

namespace A092403.P17830274349364183821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092403.P17830274349364183821

namespace A092403

/-- `A074400(n+1)+Δ[A088580(n+1)]` -/
def P17830274349364183821.Spec : Prop :=
  ∀ n, P17830274349364183821.a n = A092403 (n + 1)

theorem P17830274349364183821.correct : P17830274349364183821.Spec := by
  intro n
  simp only [A092403, Nat.add_sub_cancel, A092403.P17830274349364183821.f1, A092403.P17830274349364183821.a, A092403.P9702063797173032194.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074400, A074400.P16312391460013478761.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092403

/-! ## A092403.P3141528559173432117

`A088580(n+1)+∑[A340793(n+2)]`
-/

namespace A092403.P3141528559173432117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092403.P3141528559173432117

namespace A092403

/-- `A088580(n+1)+∑[A340793(n+2)]` -/
def P3141528559173432117.Spec : Prop :=
  ∀ n, P3141528559173432117.a n = A092403 (n + 1)

end A092403

/-!
# A092404: a(n) = phi(n) + phi(n+1).

The programs for A092404, the canonical program `A092404.P2775860006979489995` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092404 has offset 1).

The definition of A092404 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092404.P2775860006979489995

`A000010(n+1)+A000010(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092404

/-- `A000010(n+1)+A000010(n+2)` -/
def P2775860006979489995.Spec : Prop :=
  ∀ n, P2775860006979489995.a n = A092404 (n + 1)

theorem P2775860006979489995.correct : P2775860006979489995.Spec := by
  intro n
  simp only [A092404, Nat.add_sub_cancel]

end A092404

/-! ## A092404.P5374511683238317987

`A002088(n+2)-A002088(n)`
-/

namespace A092404.P5374511683238317987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2) - A002088 n

end

end A092404.P5374511683238317987

namespace A092404

/-- `A002088(n+2)-A002088(n)` -/
def P5374511683238317987.Spec : Prop :=
  ∀ n, P5374511683238317987.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P4584947211200389332

`A005728(n+2)-A005728(n)`
-/

namespace A092404.P4584947211200389332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2) - A005728 n

end

end A092404.P4584947211200389332

namespace A092404

/-- `A005728(n+2)-A005728(n)` -/
def P4584947211200389332.Spec : Prop :=
  ∀ n, P4584947211200389332.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P10370296381128134235

`Δ[A002088(n+1)+A002088(n)]`
-/

namespace A092404.P10370296381128134235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P10370296381128134235

namespace A092404

/-- `Δ[A002088(n+1)+A002088(n)]` -/
def P10370296381128134235.Spec : Prop :=
  ∀ n, P10370296381128134235.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P12569068954422873021

`Δ[A005728(n+1)+A005728(n)]`
-/

namespace A092404.P12569068954422873021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) + A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P12569068954422873021

namespace A092404

/-- `Δ[A005728(n+1)+A005728(n)]` -/
def P12569068954422873021.Spec : Prop :=
  ∀ n, P12569068954422873021.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P3040305129306998241

`Δ[A049696(n)+Δ[A002088(n)]]`
-/

namespace A092404.P3040305129306998241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049696 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P3040305129306998241

namespace A092404

/-- `Δ[A049696(n)+Δ[A002088(n)]]` -/
def P3040305129306998241.Spec : Prop :=
  ∀ n, P3040305129306998241.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P15168658771934112802

`A109606(n+1)+A039649(n+2)`
-/

namespace A092404.P15168658771934112802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + A039649 (n + 2)

end

end A092404.P15168658771934112802

namespace A092404

/-- `A109606(n+1)+A039649(n+2)` -/
def P15168658771934112802.Spec : Prop :=
  ∀ n, P15168658771934112802.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P16246530677966727510

`Δ[A018805(n+1)-A039649(n+1)]`
-/

namespace A092404.P16246530677966727510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) - A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P16246530677966727510

namespace A092404

/-- `Δ[A018805(n+1)-A039649(n+1)]` -/
def P16246530677966727510.Spec : Prop :=
  ∀ n, P16246530677966727510.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P15500346699043450657

`Δ[A018805(n+1)-A109606(n+1)]`
-/

namespace A092404.P15500346699043450657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018805 (n + 1) - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P15500346699043450657

namespace A092404

/-- `Δ[A018805(n+1)-A109606(n+1)]` -/
def P15500346699043450657.Spec : Prop :=
  ∀ n, P15500346699043450657.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P8701588781199245930

`Δ[A039649(n+1)+A100449(n)/2]`
-/

namespace A092404.P8701588781199245930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) : ℚ) + (A100449 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P8701588781199245930

namespace A092404

/-- `Δ[A039649(n+1)+A100449(n)/2]` -/
def P8701588781199245930.Spec : Prop :=
  ∀ n, P8701588781199245930.a n = (A092404 (n + 1) : ℚ)

end A092404

/-! ## A092404.P15354171299800324378

`Δ[A109606(n+1)+A100449(n)/2]`
-/

namespace A092404.P15354171299800324378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) : ℚ) + (A100449 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P15354171299800324378

namespace A092404

/-- `Δ[A109606(n+1)+A100449(n)/2]` -/
def P15354171299800324378.Spec : Prop :=
  ∀ n, P15354171299800324378.a n = (A092404 (n + 1) : ℚ)

end A092404

/-! ## A092404.P16304908547185286028

`Δ[∑[A140434(n+1)]-A039649(n+1)]`
-/

namespace A092404.P16304908547185286028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P16304908547185286028

namespace A092404

/-- `Δ[∑[A140434(n+1)]-A039649(n+1)]` -/
def P16304908547185286028.Spec : Prop :=
  ∀ n, P16304908547185286028.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P15028909326525142057

`Δ[∑[A140434(n+1)]-A109606(n+1)]`
-/

namespace A092404.P15028909326525142057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140434 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A109606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P15028909326525142057

namespace A092404

/-- `Δ[∑[A140434(n+1)]-A109606(n+1)]` -/
def P15028909326525142057.Spec : Prop :=
  ∀ n, P15028909326525142057.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P12420490819888338904

`A091369(n+2)-(A091369(n+1)+A051953(n+1))`
-/

namespace A092404.P12420490819888338904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091369 (n + 2) - (A091369 (n + 1) + A051953 (n + 1))

end

end A092404.P12420490819888338904

namespace A092404

/-- `A091369(n+2)-(A091369(n+1)+A051953(n+1))` -/
def P12420490819888338904.Spec : Prop :=
  ∀ n, P12420490819888338904.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P1949667465097366174

`A255385(n+2)-(A152770(n+2)+A051953(n+1))`
-/

namespace A092404.P1949667465097366174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 2) - (A152770 (n + 2) + A051953 (n + 1))

end

end A092404.P1949667465097366174

namespace A092404

/-- `A255385(n+2)-(A152770(n+2)+A051953(n+1))` -/
def P1949667465097366174.Spec : Prop :=
  ∀ n, P1949667465097366174.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P6438278254933331545

`Δ[A002088(n)+Δ[A005598(n)]]`
-/

namespace A092404.P6438278254933331545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P6438278254933331545

namespace A092404

/-- `Δ[A002088(n)+Δ[A005598(n)]]` -/
def P6438278254933331545.Spec : Prop :=
  ∀ n, P6438278254933331545.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P8382563867178038273

`record[A049643(A052938(n))]-A049643(n)`
-/

namespace A092404.P8382563867178038273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A049643 n

end

end A092404.P8382563867178038273

namespace A092404

/-- `record[A049643(A052938(n))]-A049643(n)` -/
def P8382563867178038273.Spec : Prop :=
  ∀ n, P8382563867178038273.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P13402111351016009342

`A049634(n)-A049691(n)`
-/

namespace A092404.P13402111351016009342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049634 n - A049691 n

end

end A092404.P13402111351016009342

namespace A092404

/-- `A049634(n)-A049691(n)` -/
def P13402111351016009342.Spec : Prop :=
  ∀ n, P13402111351016009342.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P15503793643394042133

`Δ[A049697(n)]`
-/

namespace A092404.P15503793643394042133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092404.P15503793643394042133

namespace A092404

/-- `Δ[A049697(n)]` -/
def P15503793643394042133.Spec : Prop :=
  ∀ n, P15503793643394042133.a n = A092404 (n + 1)

end A092404

/-! ## A092404.P10301771872554993871

`A049697(n+1)-A049697(n)`
-/

namespace A092404.P10301771872554993871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049697 (n + 1) - A049697 n

end

end A092404.P10301771872554993871

namespace A092404

/-- `A049697(n+1)-A049697(n)` -/
def P10301771872554993871.Spec : Prop :=
  ∀ n, P10301771872554993871.a n = A092404 (n + 1)

end A092404

/-!
# A092405: a(n) = tau(n) + tau(n+1), where tau(n) = A000005(n), the number of divisors of n.

The programs for A092405, the canonical program `A092405.P13454232516479669845` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092405 has offset 1).

The definition of A092405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000005(n+1)+A000005(n+2)` (program `A092405.P13454232516479669845`, by `A092405.P13454232516479669845.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092405.P13454232516479669845

`A000005(n+1)+A000005(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092405

/-- `A000005(n+1)+A000005(n+2)` -/
def P13454232516479669845.Spec : Prop :=
  ∀ n, P13454232516479669845.a n = A092405 (n + 1)

theorem P13454232516479669845.correct : P13454232516479669845.Spec := by
  intro n
  simp only [A092405, Nat.add_sub_cancel]

end A092405

/-! ## A092405.P2787583756000941994

`A343005(n+2)+3`
-/

namespace A092405.P2787583756000941994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343005 (n + 2) + 3

end

end A092405.P2787583756000941994

namespace A092405

/-- `A343005(n+2)+3` -/
def P2787583756000941994.Spec : Prop :=
  ∀ n, P2787583756000941994.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P11082744265593510150

`3-A131187(n+1)+n`
-/

namespace A092405.P11082744265593510150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A131187 (n + 1) + (n : ℤ)

end

end A092405.P11082744265593510150

namespace A092405

/-- `3-A131187(n+1)+n` -/
def P11082744265593510150.Spec : Prop :=
  ∀ n, P11082744265593510150.a n = A092405 (n + 1)

theorem P11082744265593510150.correct : P11082744265593510150.Spec := by
  intro n
  simp only [A092405, Nat.add_sub_cancel, A092405.P11082744265593510150.a, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A131187, A131187.P4579191634371129488.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092405

/-! ## A092405.P12897615988960076141

`A384195(n+1)+a(n-1)` with `a(0)=3`
-/

namespace A092405.P12897615988960076141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A384195 (n + 1) + a (n - 1)

end

end A092405.P12897615988960076141

namespace A092405

/-- `A384195(n+1)+a(n-1)` -/
def P12897615988960076141.Spec : Prop :=
  ∀ n, P12897615988960076141.a n = A092405 (n + 1)

theorem P12897615988960076141.correct : P12897615988960076141.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A092405, Nat.add_sub_cancel, A092405.P12897615988960076141.a, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A384195, A384195.P12788916049746499615.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A092405, Nat.add_sub_cancel, A092405.P12897615988960076141.a, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A384195, A384195.P12788916049746499615.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A092405

/-! ## A092405.P129770525705837682

`A006218(n+2)-(∑[∏{e}[n, #+1]-1]+n)`
-/

namespace A092405.P129770525705837682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 2) - (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A092405.P129770525705837682

namespace A092405

/-- `A006218(n+2)-(∑[∏{e}[n, #+1]-1]+n)` -/
def P129770525705837682.Spec : Prop :=
  ∀ n, P129770525705837682.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P6270709163881057817

`A006218(n+2)-A006218(n)`
-/

namespace A092405.P6270709163881057817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 2) - A006218 n

end

end A092405.P6270709163881057817

namespace A092405

/-- `A006218(n+2)-A006218(n)` -/
def P6270709163881057817.Spec : Prop :=
  ∀ n, P6270709163881057817.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P11856947961688015171

`Δ[A006218(n+1)+A006218(n)]`
-/

namespace A092405.P11856947961688015171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092405.P11856947961688015171

namespace A092405

/-- `Δ[A006218(n+1)+A006218(n)]` -/
def P11856947961688015171.Spec : Prop :=
  ∀ n, P11856947961688015171.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P3379663983570333903

`A000005(n+2)+Δ[A054519(n)]`
-/

namespace A092405.P3379663983570333903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2) + (f1 (n + 1) - f1 n)

end

end A092405.P3379663983570333903

namespace A092405

/-- `A000005(n+2)+Δ[A054519(n)]` -/
def P3379663983570333903.Spec : Prop :=
  ∀ n, P3379663983570333903.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P15452807470055574607

`A062011(n+1)+A051950(n+2)`
-/

namespace A092405.P15452807470055574607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) + A051950 (n + 2)

end

end A092405.P15452807470055574607

namespace A092405

/-- `A062011(n+1)+A051950(n+2)` -/
def P15452807470055574607.Spec : Prop :=
  ∀ n, P15452807470055574607.a n = A092405 (n + 1)

theorem P15452807470055574607.correct : P15452807470055574607.Spec := by
  intro n
  simp only [A092405, Nat.add_sub_cancel, A092405.P15452807470055574607.a, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A051950, A051950.P1558606958145203364.a, A062011, A062011.P17525320077853469406.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092405

/-! ## A092405.P15399323989473945972

`A320111(2*(n+1))+A320111(2*(n+2))`
-/

namespace A092405.P15399323989473945972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1)) + A320111 (2 * (n + 2))

end

end A092405.P15399323989473945972

namespace A092405

/-- `A320111(2*(n+1))+A320111(2*(n+2))` -/
def P15399323989473945972.Spec : Prop :=
  ∀ n, P15399323989473945972.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P14470082816795871989

`A092338(n+2)+1`
-/

namespace A092405.P14470082816795871989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (n + 2) + 1

end

end A092405.P14470082816795871989

namespace A092405

/-- `A092338(n+2)+1` -/
def P14470082816795871989.Spec : Prop :=
  ∀ n, P14470082816795871989.a n = A092405 (n + 1)

theorem P14470082816795871989.correct : P14470082816795871989.Spec := by
  intro n
  simp only [A092405, Nat.add_sub_cancel, A092405.P14470082816795871989.a, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A092338, A092338.P14591990927845726689.f1, A092338.P14591990927845726689.f2, A092338.P14591990927845726689.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092405

/-! ## A092405.P14277913124149474033

`A274010(n+2)+2`
-/

namespace A092405.P14277913124149474033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (n + 2) + 2

end

end A092405.P14277913124149474033

namespace A092405

/-- `A274010(n+2)+2` -/
def P14277913124149474033.Spec : Prop :=
  ∀ n, P14277913124149474033.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P15408973985305093306

`∏{e}[n+1, #+1]+Δ[A054519(n+1)]`
-/

namespace A092405.P15408973985305093306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A092405.P15408973985305093306

namespace A092405

/-- `∏{e}[n+1, #+1]+Δ[A054519(n+1)]` -/
def P15408973985305093306.Spec : Prop :=
  ∀ n, P15408973985305093306.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P13615531671096236093

`Δ[A334954(n+1)]+2*∏{e}[n+1, #+1]`
-/

namespace A092405.P13615531671096236093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((2 * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℤ)

end

end A092405.P13615531671096236093

namespace A092405

/-- `Δ[A334954(n+1)]+2*∏{e}[n+1, #+1]` -/
def P13615531671096236093.Spec : Prop :=
  ∀ n, P13615531671096236093.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P13146708426621750109

`Δ[A038040(n+1)/(n+1)]+2*∏{e}[n+1, #+1]`
-/

namespace A092405.P13146708426621750109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((2 * (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) : ℕ) : ℚ)

end

end A092405.P13146708426621750109

namespace A092405

/-- `Δ[A038040(n+1)/(n+1)]+2*∏{e}[n+1, #+1]` -/
def P13146708426621750109.Spec : Prop :=
  ∀ n, P13146708426621750109.a n = (A092405 (n + 1) : ℚ)

theorem P13146708426621750109.correct : P13146708426621750109.Spec := by
  intro n
  simp only [A092405, Nat.add_sub_cancel, A092405.P13146708426621750109.f1, A092405.P13146708426621750109.f2, A092405.P13146708426621750109.a, A092405.P13454232516479669845.a, A000005, A000005.P16091521709108585461.a, A038040, A038040.P16512896840577774730.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092405

/-! ## A092405.P1284763694543776927

`A065475(A092338(n+2))`
-/

namespace A092405.P1284763694543776927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A092338 (n + 2)).toNat

end

end A092405.P1284763694543776927

namespace A092405

/-- `A065475(A092338(n+2))` -/
def P1284763694543776927.Spec : Prop :=
  ∀ n, P1284763694543776927.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P14672190412829633377

`A054519(n+2)-A054519(n)`
-/

namespace A092405.P14672190412829633377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 2) - A054519 n

end

end A092405.P14672190412829633377

namespace A092405

/-- `A054519(n+2)-A054519(n)` -/
def P14672190412829633377.Spec : Prop :=
  ∀ n, P14672190412829633377.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P14604247166965808369

`Δ[A054519(n+1)+A054519(n)]`
-/

namespace A092405.P14604247166965808369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (n + 1) + A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092405.P14604247166965808369

namespace A092405

/-- `Δ[A054519(n+1)+A054519(n)]` -/
def P14604247166965808369.Spec : Prop :=
  ∀ n, P14604247166965808369.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P14876756975421290199

`A076984(n+1)+A062558(n+2)`
-/

namespace A092405.P14876756975421290199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) + A062558 (n + 2)

end

end A092405.P14876756975421290199

namespace A092405

/-- `A076984(n+1)+A062558(n+2)` -/
def P14876756975421290199.Spec : Prop :=
  ∀ n, P14876756975421290199.a n = A092405 (n + 1)

end A092405

/-! ## A092405.P13979947682961260599

`A334954(n+1)+A032741(n+2)`
-/

namespace A092405.P13979947682961260599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + A032741 (n + 2)

end

end A092405.P13979947682961260599

namespace A092405

/-- `A334954(n+1)+A032741(n+2)` -/
def P13979947682961260599.Spec : Prop :=
  ∀ n, P13979947682961260599.a n = A092405 (n + 1)

end A092405

/-!
# A092406: a(1)=1, a(n) = sigma(n) if sigma(n) >= a(n-1), otherwise a(n) = a(n-1) + sigma(n).

The programs for A092406, the canonical program `A092406.P4467119123936826414` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092406 has offset 1).

The definition of A092406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092406.P4467119123936826414

`∑{d}[n+1, #]+a(n-1)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092406

/-- `∑{d}[n+1, #]+a(n-1)` -/
def P4467119123936826414.Spec : Prop :=
  ∀ n, (P4467119123936826414.a n : ℤ) = A092406 (n + 1)

theorem P4467119123936826414.correct : P4467119123936826414.Spec := by
  intro n
  simp only [A092406, Nat.add_sub_cancel]

end A092406

/-! ## A092406.P2362875707558099734

`A000203(n+1)+a(n-1)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A092406.P2362875707558099734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  A000203 (n + 1) + a (n - 1)

end

end A092406.P2362875707558099734

namespace A092406

/-- `A000203(n+1)+a(n-1)` -/
def P2362875707558099734.Spec : Prop :=
  ∀ n, P2362875707558099734.a n = A092406 (n + 1)

end A092406

/-! ## A092406.P14505156641022794786

`a(n-1)+sqrt(A072861(n+1))` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A092406.P14505156641022794786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  a (n - 1) + Real.sqrt (A072861 (n + 1) : ℝ)

end

end A092406.P14505156641022794786

namespace A092406

/-- `a(n-1)+sqrt(A072861(n+1))` -/
def P14505156641022794786.Spec : Prop :=
  ∀ n, P14505156641022794786.a n = (A092406 (n + 1) : ℝ)

end A092406

/-! ## A092406.P11342135108199377979

`a(n-1)+A039653(n+1)+1` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A092406.P11342135108199377979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  a (n - 1) + (A039653 (n + 1) + 1)

end

end A092406.P11342135108199377979

namespace A092406

/-- `a(n-1)+A039653(n+1)+1` -/
def P11342135108199377979.Spec : Prop :=
  ∀ n, P11342135108199377979.a n = A092406 (n + 1)

end A092406

/-! ## A092406.P5346867127268272887

`a(n-1)+A088580(n+1)-1` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A092406.P5346867127268272887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  a (n - 1) + (A088580 (n + 1) - 1)

end

end A092406.P5346867127268272887

namespace A092406

/-- `a(n-1)+A088580(n+1)-1` -/
def P5346867127268272887.Spec : Prop :=
  ∀ n, P5346867127268272887.a n = A092406 (n + 1)

end A092406

/-! ## A092406.P12830321136068905727

`a(n-1)+A074400(n+1)/2` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7`
-/

namespace A092406.P12830321136068905727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3, 4, 7] fun n a =>
  a (n - 1) + (A074400 (n + 1) : ℚ) / 2

end

end A092406.P12830321136068905727

namespace A092406

/-- `a(n-1)+A074400(n+1)/2` -/
def P12830321136068905727.Spec : Prop :=
  ∀ n, P12830321136068905727.a n = (A092406 (n + 1) : ℚ)

end A092406

/-!
# A092407: Coins and notes in the Norwegian currency.

The programs for A092407, there is no canonical definition to state claims against.
-/

/-! ## A092407.P2903202434153677273

`10*a(n-3)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=20`
-/

namespace A092407.P2903202434153677273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 10, 20] fun n a =>
  10 * a (n - 3)

end

end A092407.P2903202434153677273

/-! ## A092407.P10789529381520274691

`A194350(comp[∑[n]])`
-/

namespace A092407.P10789529381520274691
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092407.P10789529381520274691

/-! ## A092407.P10790035335349577805

`A082593(n+4)/10`
-/

namespace A092407.P10790035335349577805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082593 (n + 4) : ℚ) / 10

end

end A092407.P10790035335349577805

/-! ## A092407.P13515199571080030392

`A051109(comp[(4^n)²])`
-/

namespace A092407.P13515199571080030392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 ^ n) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051109 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092407.P13515199571080030392

/-! ## A092407.P14483545138066568857

`A093703(A314387(n))`
-/

namespace A092407.P14483545138066568857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093703 (A314387 n).toNat

end

end A092407.P14483545138066568857

/-!
# A092408: Numbers k that divide 3^(k^3) + 1.

The programs for A092408, there is no canonical definition to state claims against.
-/

/-! ## A092408.P3809782501193827780

`∑[gcd(A223575(n+1), A223586(2*n+1))]`
-/

namespace A092408.P3809782501193827780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223575 (n + 1)) (A223586 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092408.P3809782501193827780

/-!
# A092410: a(n) = moebius(n)+moebius(n+1).

The programs for A092410, the canonical program `A092410.P17837141450304798792` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092410 has offset 1).

The definition of A092410 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A092410.P17837141450304798792

`A008683(n+1)+A008683(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092410

/-- `A008683(n+1)+A008683(n+2)` -/
def P17837141450304798792.Spec : Prop :=
  ∀ n, P17837141450304798792.a n = A092410 (n + 1)

theorem P17837141450304798792.correct : P17837141450304798792.Spec := by
  intro n
  simp only [A092410, Nat.add_sub_cancel]

end A092410

/-! ## A092410.P15769336470797877174

`A007423(n+1)+∑[A127440(n+1)]`
-/

namespace A092410.P15769336470797877174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092410.P15769336470797877174

namespace A092410

/-- `A007423(n+1)+∑[A127440(n+1)]` -/
def P15769336470797877174.Spec : Prop :=
  ∀ n, P15769336470797877174.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P13334833035571482117

`A007423(n+1)+A007423(n+2)-2`
-/

namespace A092410.P13334833035571482117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1) + (A007423 (n + 2) - 2)

end

end A092410.P13334833035571482117

namespace A092410

/-- `A007423(n+1)+A007423(n+2)-2` -/
def P13334833035571482117.Spec : Prop :=
  ∀ n, P13334833035571482117.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P4483294018959513510

`Δ[A002321(n+1)]+A231821(n+1)-3`
-/

namespace A092410.P4483294018959513510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A231821 (n + 1) - 3)

end

end A092410.P4483294018959513510

namespace A092410

/-- `Δ[A002321(n+1)]+A231821(n+1)-3` -/
def P4483294018959513510.Spec : Prop :=
  ∀ n, P4483294018959513510.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P11637707221900439242

`Δ[A002321(n+1)]+A162512(n+1)%2`
-/

namespace A092410.P11637707221900439242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A162512 (n + 1)) 2

end

end A092410.P11637707221900439242

namespace A092410

/-- `Δ[A002321(n+1)]+A162512(n+1)%2` -/
def P11637707221900439242.Spec : Prop :=
  ∀ n, P11637707221900439242.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P3368327917383045075

`A008836(n+1)*A008966(n+1)-A157657(n+2)`
-/

namespace A092410.P3368327917383045075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A008966 (n + 1) - A157657 (n + 2)

end

end A092410.P3368327917383045075

namespace A092410

/-- `A008836(n+1)*A008966(n+1)-A157657(n+2)` -/
def P3368327917383045075.Spec : Prop :=
  ∀ n, P3368327917383045075.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P12647051371863836514

`and(A092152(n+2), A133639(n+2))-A092152(2*(n+1))`
-/

namespace A092410.P12647051371863836514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092152 (n + 2)) (A133639 (n + 2)) - A092152 (2 * (n + 1))

end

end A092410.P12647051371863836514

namespace A092410

/-- `and(A092152(n+2), A133639(n+2))-A092152(2*(n+1))` -/
def P12647051371863836514.Spec : Prop :=
  ∀ n, P12647051371863836514.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P3416307982876602504

`and(A092152(n+2), A197774(n+2))-A092152(2*(n+1))`
-/

namespace A092410.P3416307982876602504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092152 (n + 2)) (A197774 (n + 2)) - A092152 (2 * (n + 1))

end

end A092410.P3416307982876602504

namespace A092410

/-- `and(A092152(n+2), A197774(n+2))-A092152(2*(n+1))` -/
def P3416307982876602504.Spec : Prop :=
  ∀ n, P3416307982876602504.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P7897044640796661320

`and(A092152(n+2), A219009(n+2))-A092152(2*(n+1))`
-/

namespace A092410.P7897044640796661320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092152 (n + 2)) (A219009 (n + 2)) - A092152 (2 * (n + 1))

end

end A092410.P7897044640796661320

namespace A092410

/-- `and(A092152(n+2), A219009(n+2))-A092152(2*(n+1))` -/
def P7897044640796661320.Spec : Prop :=
  ∀ n, P7897044640796661320.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P14126760801212792254

`Δ[A002321(n+1)]+A181435(n+1)%(A051731(n+1)+2)`
-/

namespace A092410.P14126760801212792254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A181435 (n + 1)) (A051731 (n + 1) + 2)

end

end A092410.P14126760801212792254

namespace A092410

/-- `Δ[A002321(n+1)]+A181435(n+1)%(A051731(n+1)+2)` -/
def P14126760801212792254.Spec : Prop :=
  ∀ n, P14126760801212792254.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P9215002726147217618

`Δ[A002321(n+1)]+A181434(n+1)%2`
-/

namespace A092410.P9215002726147217618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A181434 (n + 1)) 2

end

end A092410.P9215002726147217618

namespace A092410

/-- `Δ[A002321(n+1)]+A181434(n+1)%2` -/
def P9215002726147217618.Spec : Prop :=
  ∀ n, P9215002726147217618.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P8408235850429852589

`A092152(A003961(n+2))-A092152(2*(n+1))`
-/

namespace A092410.P8408235850429852589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A003961 (n + 2)).toNat - A092152 (2 * (n + 1))

end

end A092410.P8408235850429852589

namespace A092410

/-- `A092152(A003961(n+2))-A092152(2*(n+1))` -/
def P8408235850429852589.Spec : Prop :=
  ∀ n, P8408235850429852589.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P6952398850893569762

`A143158(∑[n+2])`
-/

namespace A092410.P6952398850893569762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143158 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092410.P6952398850893569762

namespace A092410

/-- `A143158(∑[n+2])` -/
def P6952398850893569762.Spec : Prop :=
  ∀ n, P6952398850893569762.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P9665429844646057958

`A100198(n+2)-A100198(n)`
-/

namespace A092410.P9665429844646057958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (n + 2) - A100198 n

end

end A092410.P9665429844646057958

namespace A092410

/-- `A100198(n+2)-A100198(n)` -/
def P9665429844646057958.Spec : Prop :=
  ∀ n, P9665429844646057958.a n = A092410 (n + 1)

end A092410

/-! ## A092410.P3184844914845512088

`Δ[A100198(n+1)+A100198(n)]`
-/

namespace A092410.P3184844914845512088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100198 (n + 1) + A100198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092410.P3184844914845512088

namespace A092410

/-- `Δ[A100198(n+1)+A100198(n)]` -/
def P3184844914845512088.Spec : Prop :=
  ∀ n, P3184844914845512088.a n = A092410 (n + 1)

end A092410

/-!
# A092411: a(n) = sigma(n,2) + sigma(n+1,2).

The programs for A092411, the canonical program `A092411.P1542600042011528390` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092411 has offset 1).

The definition of A092411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092411.P1542600042011528390

`∑{d}[n+1, #²]+∑{d}[n+2, #²]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092411

/-- `∑{d}[n+1, #²]+∑{d}[n+2, #²]` -/
def P1542600042011528390.Spec : Prop :=
  ∀ n, (P1542600042011528390.a n : ℤ) = A092411 (n + 1)

theorem P1542600042011528390.correct : P1542600042011528390.Spec := by
  intro n
  simp only [A092411, Nat.add_sub_cancel]

end A092411

/-! ## A092411.P3010865005120883124

`A001157(n+1)+∑{d}[n+2, #²]`
-/

namespace A092411.P3010865005120883124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℤ)

end

end A092411.P3010865005120883124

namespace A092411

/-- `A001157(n+1)+∑{d}[n+2, #²]` -/
def P3010865005120883124.Spec : Prop :=
  ∀ n, P3010865005120883124.a n = A092411 (n + 1)

end A092411

/-! ## A092411.P16649860833749055080

`abs(Δ[(-1)^n*∑{d}[n+1, #²]])`
-/

namespace A092411.P16649860833749055080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A092411.P16649860833749055080

namespace A092411

/-- `abs(Δ[(-1)^n*∑{d}[n+1, #²]])` -/
def P16649860833749055080.Spec : Prop :=
  ∀ n, P16649860833749055080.a n = A092411 (n + 1)

end A092411

/-! ## A092411.P9967502211483171271

`abs(Δ[∑{d}[n+1, #²]/(-1)^n])`
-/

namespace A092411.P9967502211483171271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A092411.P9967502211483171271

namespace A092411

/-- `abs(Δ[∑{d}[n+1, #²]/(-1)^n])` -/
def P9967502211483171271.Spec : Prop :=
  ∀ n, P9967502211483171271.a n = (A092411 (n + 1) : ℚ)

end A092411

/-! ## A092411.P3137378373553864943

`abs(Δ[∑{d}[n+1, #²]*A033999(n)])`
-/

namespace A092411.P3137378373553864943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d ^ 2 : ℕ) : ℤ) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A092411.P3137378373553864943

namespace A092411

/-- `abs(Δ[∑{d}[n+1, #²]*A033999(n)])` -/
def P3137378373553864943.Spec : Prop :=
  ∀ n, P3137378373553864943.a n = A092411 (n + 1)

end A092411

/-! ## A092411.P2481286423781472512

`A001157(n+1)+A001157(n+2)`
-/

namespace A092411.P2481286423781472512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + A001157 (n + 2)

end

end A092411.P2481286423781472512

namespace A092411

/-- `A001157(n+1)+A001157(n+2)` -/
def P2481286423781472512.Spec : Prop :=
  ∀ n, P2481286423781472512.a n = A092411 (n + 1)

end A092411

/-!
# A092412: Fixed point of the morphism 0->11, 1->12, 2->13, 3->10, starting from a(1) = 1.

The programs for A092412, the canonical program `A092412.P12943769288359296631` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092412 has offset 1).

The definition of A092412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092412.P12943769288359296631

`(1+val(n+1, 2))%4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092412

/-- `(1+val(n+1, 2))%4` -/
def P12943769288359296631.Spec : Prop :=
  ∀ n, (P12943769288359296631.a n : ℤ) = A092412 (n + 1)

theorem P12943769288359296631.correct : P12943769288359296631.Spec := by
  intro n
  simp only [A092412, Nat.add_sub_cancel]

end A092412

/-! ## A092412.P18098561669281099725

`A001511(n+1)%4`
-/

namespace A092412.P18098561669281099725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (n + 1)) 4

end

end A092412.P18098561669281099725

namespace A092412

/-- `A001511(n+1)%4` -/
def P18098561669281099725.Spec : Prop :=
  ∀ n, P18098561669281099725.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P5788783347150263566

`and(3, val(n+1, 2)+1)`
-/

namespace A092412.P5788783347150263566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.valuation (n + 1) 2 + 1)

end

end A092412.P5788783347150263566

namespace A092412

/-- `and(3, val(n+1, 2)+1)` -/
def P5788783347150263566.Spec : Prop :=
  ∀ n, (P5788783347150263566.a n : ℤ) = A092412 (n + 1)

end A092412

/-! ## A092412.P11884466502172718781

`(xor(n, n+1)^3)%5`
-/

namespace A092412.P11884466502172718781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) ^ 3 % 5

end

end A092412.P11884466502172718781

namespace A092412

/-- `(xor(n, n+1)^3)%5` -/
def P11884466502172718781.Spec : Prop :=
  ∀ n, (P11884466502172718781.a n : ℤ) = A092412 (n + 1)

end A092412

/-! ## A092412.P464717755313447581

`val(record[abs(xor(n, -2))], 2)%4`
-/

namespace A092412.P464717755313447581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 % 4

end

end A092412.P464717755313447581

namespace A092412

/-- `val(record[abs(xor(n, -2))], 2)%4` -/
def P464717755313447581.Spec : Prop :=
  ∀ n, (P464717755313447581.a n : ℤ) = A092412 (n + 1)

end A092412

/-! ## A092412.P5255131897390088250

`val(∑[2*or(3, n)], 2)%4`
-/

namespace A092412.P5255131897390088250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2 % 4

end

end A092412.P5255131897390088250

namespace A092412

/-- `val(∑[2*or(3, n)], 2)%4` -/
def P5255131897390088250.Spec : Prop :=
  ∀ n, (P5255131897390088250.a n : ℤ) = A092412 (n + 1)

end A092412

/-! ## A092412.P9002552517098284630

`and(3, val(∑[2*or(3, n)], 2))`
-/

namespace A092412.P9002552517098284630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A092412.P9002552517098284630

namespace A092412

/-- `and(3, val(∑[2*or(3, n)], 2))` -/
def P9002552517098284630.Spec : Prop :=
  ∀ n, (P9002552517098284630.a n : ℤ) = A092412 (n + 1)

end A092412

/-! ## A092412.P11864121281238580511

`and(3, log2(xor(n, n+1)+1))`
-/

namespace A092412.P11864121281238580511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ)))

end

end A092412.P11864121281238580511

namespace A092412

/-- `and(3, log2(xor(n, n+1)+1))` -/
def P11864121281238580511.Spec : Prop :=
  ∀ n, P11864121281238580511.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P12401623193265427706

`Δ[a(floor(n/2))+n]%4` with `a(0)=0`
-/

namespace A092412.P12401623193265427706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 4

end

end A092412.P12401623193265427706

namespace A092412

/-- `Δ[a(floor(n/2))+n]%4` -/
def P12401623193265427706.Spec : Prop :=
  ∀ n, P12401623193265427706.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P1215715280237111407

`and(3, Δ[a(floor(n/2))+n])` with `a(0)=0`
-/

namespace A092412.P1215715280237111407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A092412.P1215715280237111407

namespace A092412

/-- `and(3, Δ[a(floor(n/2))+n])` -/
def P1215715280237111407.Spec : Prop :=
  ∀ n, P1215715280237111407.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P1771047992096793783

`(log2(and(n+1, -(n+1)))+1)%4`
-/

namespace A092412.P1771047992096793783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1)) 4

end

end A092412.P1771047992096793783

namespace A092412

/-- `(log2(and(n+1, -(n+1)))+1)%4` -/
def P1771047992096793783.Spec : Prop :=
  ∀ n, P1771047992096793783.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P18317940420995052653

`and(3, log2(and(n+1, -(n+1)))+1)`
-/

namespace A092412.P18317940420995052653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1))

end

end A092412.P18317940420995052653

namespace A092412

/-- `and(3, log2(and(n+1, -(n+1)))+1)` -/
def P18317940420995052653.Spec : Prop :=
  ∀ n, P18317940420995052653.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P8394413522981754836

`(log2(-or(n+1, -(n+1)))+1)%4`
-/

namespace A092412.P8394413522981754836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (-Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1)) 4

end

end A092412.P8394413522981754836

namespace A092412

/-- `(log2(-or(n+1, -(n+1)))+1)%4` -/
def P8394413522981754836.Spec : Prop :=
  ∀ n, P8394413522981754836.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P9056125476937313598

`Δ[A005187(n)]%4`
-/

namespace A092412.P9056125476937313598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 4

end

end A092412.P9056125476937313598

namespace A092412

/-- `Δ[A005187(n)]%4` -/
def P9056125476937313598.Spec : Prop :=
  ∀ n, P9056125476937313598.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P11565979468414215738

`and(3, A007814(n+1)+1)`
-/

namespace A092412.P11565979468414215738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A007814 (n + 1) + 1)

end

end A092412.P11565979468414215738

namespace A092412

/-- `and(3, A007814(n+1)+1)` -/
def P11565979468414215738.Spec : Prop :=
  ∀ n, P11565979468414215738.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P8994418835789243671

`A000005(and(n+1, -(n+1)))%4`
-/

namespace A092412.P8994418835789243671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat) 4

end

end A092412.P8994418835789243671

namespace A092412

/-- `A000005(and(n+1, -(n+1)))%4` -/
def P8994418835789243671.Spec : Prop :=
  ∀ n, P8994418835789243671.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P15173113973453078696

`and(3, A000005(n+1-and(n, n+1)))`
-/

namespace A092412.P15173113973453078696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000005 (n + 1 - Nat.land n (n + 1)))

end

end A092412.P15173113973453078696

namespace A092412

/-- `and(3, A000005(n+1-and(n, n+1)))` -/
def P15173113973453078696.Spec : Prop :=
  ∀ n, P15173113973453078696.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P4137756038373286586

`A133874(A059137(n))`
-/

namespace A092412.P4137756038373286586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133874 (A059137 n).toNat

end

end A092412.P4137756038373286586

namespace A092412

/-- `A133874(A059137(n))` -/
def P4137756038373286586.Spec : Prop :=
  ∀ n, P4137756038373286586.a n = A092412 (n + 1)

end A092412

/-! ## A092412.P12869626968768776046

`A189480(A085058(n))`
-/

namespace A092412.P12869626968768776046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A085058 n).toNat

end

end A092412.P12869626968768776046

namespace A092412

/-- `A189480(A085058(n))` -/
def P12869626968768776046.Spec : Prop :=
  ∀ n, P12869626968768776046.a n = A092412 (n + 1)

end A092412

/-!
# A092413: Coefficient of x^n in solution of x = y + y^2 + y^4 + y^8 + ...

The programs for A092413, there is no canonical definition to state claims against.
-/

/-! ## A092413.P12844731343269752145

`(-ceil(sin(n)²))^n*A105519(22*A049128(n+1))`
-/

namespace A092413.P12844731343269752145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-⌈Real.sin (n : ℝ) ^ 2⌉) ^ n * A105519 (22 * A049128 (n + 1)).toNat

end

end A092413.P12844731343269752145

/-! ## A092413.P15232376072229324051

`A033999(n)*A086378(A308745(n))`
-/

namespace A092413.P15232376072229324051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A086378 (A308745 n).toNat

end

end A092413.P15232376072229324051

/-! ## A092413.P784396638771200867

`A008683(A002110(n))*A049140(n+1)`
-/

namespace A092413.P784396638771200867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002110 n).toNat * A049140 (n + 1)

end

end A092413.P784396638771200867

/-!
# A092414: Negative of the determinant of the 3 X 3 matrix with entries (X+Y)^n.

The programs for A092414, the canonical program `A092414.P1131712277020798931` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092414 has offset 0).

The definition of A092414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092414.P1131712277020798931

`50^n+54^n-48^n+64^n-2*60^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092414

/-- `50^n+54^n-48^n+64^n-2*60^n` -/
def P1131712277020798931.Spec : Prop :=
  ∀ n, P1131712277020798931.a n = A092414 n

theorem P1131712277020798931.correct : P1131712277020798931.Spec := by
  intro n
  simp only [A092414]

end A092414

/-!
# A092416: Determinant of the n X n matrix with entries gcd(X,Y)^gcd(X,Y).

The programs for A092416, there is no canonical definition to state claims against.
-/

/-! ## A092416.P10634801346713540747

`a(n-1)*A062793(n)` with `a(0)=1`
-/

namespace A092416.P10634801346713540747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A062793 n

end

end A092416.P10634801346713540747

/-! ## A092416.P13681600621886182973

`∏[A062793(A028310(n))]`
-/

namespace A092416.P13681600621886182973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062793 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092416.P13681600621886182973

/-! ## A092416.P17932661133203099223

`∏[A062793(n+1)]/A062793(n+1)`
-/

namespace A092416.P17932661133203099223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062793 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A062793 (n + 1) : ℚ)

end

end A092416.P17932661133203099223

/-!
# A092418: A sieve: starting with the sequence of positive integers, delete every 4th number, then delete every 16th number from the remaining sequence, then delete every 64th number, etc. Sequence gives the remaining numbers.

The programs for A092418, there is no canonical definition to state claims against.
-/

/-! ## A092418.P613547085472631430

`A337037(lt[val(n+1, 2), 4]+1)`
-/

namespace A092418.P613547085472631430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A092418.P613547085472631430

/-! ## A092418.P9765616353431128743

`A337037(A046100(n+1))`
-/

namespace A092418.P9765616353431128743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (A046100 (n + 1)).toNat

end

end A092418.P9765616353431128743

/-! ## A092418.P9366569714989725458

`record[A337037(n+1)/A008835(n+1)]`
-/

namespace A092418.P9366569714989725458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337037 (n + 1) : ℚ) / (A008835 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092418.P9366569714989725458

/-! ## A092418.P10566983183475013942

`A337037(lt[A258028(n+1), A000118(n)])`
-/

namespace A092418.P10566983183475013942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337037 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A092418.P10566983183475013942

/-! ## A092418.P4597542015741542618

`A042968(or(A046100(n+1), A151934(n)))`
-/

namespace A092418.P4597542015741542618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (Int.lor (A046100 (n + 1)) (A151934 n)).toNat

end

end A092418.P4597542015741542618

/-! ## A092418.P13653409943597352938

`A042968(or(A046100(n+1), A151935(n)))`
-/

namespace A092418.P13653409943597352938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (Int.lor (A046100 (n + 1)) (A151935 n)).toNat

end

end A092418.P13653409943597352938

/-! ## A092418.P1085139700250725479

`A195291(or(A046100(n+1), A151934(n)))`
-/

namespace A092418.P1085139700250725479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195291 (Int.lor (A046100 (n + 1)) (A151934 n)).toNat

end

end A092418.P1085139700250725479

/-! ## A092418.P9862492513914852351

`A195291(or(A046100(n+1), A151935(n)))`
-/

namespace A092418.P9862492513914852351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195291 (Int.lor (A046100 (n + 1)) (A151935 n)).toNat

end

end A092418.P9862492513914852351

/-! ## A092418.P2156657346049668536

`A042968(A046100(n+1)%A337080(n+1))`
-/

namespace A092418.P2156657346049668536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (Int.tmod (A046100 (n + 1)) (A337080 (n + 1))).toNat

end

end A092418.P2156657346049668536

/-! ## A092418.P7032196125726248802

`A195291(A046100(n+1)+n*A151934(n))`
-/

namespace A092418.P7032196125726248802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195291 (A046100 (n + 1) + (n : ℤ) * A151934 n).toNat

end

end A092418.P7032196125726248802

/-!
# A092419: Let k = n-th nonsquare = A000037(n); then a(n) = smallest prime p such that the Kronecker-Jacobi symbol K(k,p) = -1.

The programs for A092419, there is no canonical definition to state claims against.
-/

/-! ## A092419.P11104513592383433589

`p?[A373088(n)]`
-/

namespace A092419.P11104513592383433589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092419.P11104513592383433589

/-! ## A092419.P18248556930565104538

`A373088(comp[n²])`
-/

namespace A092419.P18248556930565104538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092419.P18248556930565104538

/-! ## A092419.P1277778604740828900

`filter[A373088(n), A014306(#)]`
-/

namespace A092419.P1277778604740828900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A092419.P1277778604740828900

/-! ## A092419.P5779269358653089709

`filter[A373088(n), A022930(#)]`
-/

namespace A092419.P5779269358653089709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A092419.P5779269358653089709

/-! ## A092419.P3259447413037567811

`filter[A373088(n), A079421(#)]`
-/

namespace A092419.P3259447413037567811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A092419.P3259447413037567811

/-! ## A092419.P7807274719993954001

`filter[A373088(n), A097325(#)]`
-/

namespace A092419.P7807274719993954001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A092419.P7807274719993954001

/-! ## A092419.P12172509565525944807

`filter[A373088(n), A098725(#)]`
-/

namespace A092419.P12172509565525944807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A092419.P12172509565525944807

/-! ## A092419.P7642855463217325304

`filter[A373088(n), A115517(#)]`
-/

namespace A092419.P7642855463217325304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115517 (f1 j).toNat = 1) n)

end

end A092419.P7642855463217325304

/-! ## A092419.P9039005301015194974

`filter[A373088(n), A144609(#)]`
-/

namespace A092419.P9039005301015194974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144609 (f1 j).toNat = 1) n)

end

end A092419.P9039005301015194974

/-! ## A092419.P18287048866248730208

`filter[A373088(n), A165560(#)]`
-/

namespace A092419.P18287048866248730208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A092419.P18287048866248730208

/-!
# A092420: a(n+2) = 9*a(n+1) - a(n) + 1, with a(1)=1, a(2)=10.

The programs for A092420, the canonical program `A092420.P8952920674934910866` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092420 has offset 1).

The definition of A092420 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092420.P8952920674934910866

`9*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092420

/-- `9*a(n-1)-a(n-2)+1` -/
def P8952920674934910866.Spec : Prop :=
  ∀ n, P8952920674934910866.a n = A092420 (n + 1)

theorem P8952920674934910866.correct : P8952920674934910866.Spec := by
  intro n
  simp only [A092420, Nat.add_sub_cancel]

end A092420

/-! ## A092420.P13568843469059727397

`∑[ogf(1/(1-9x+x^2))]`
-/

namespace A092420.P13568843469059727397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092420.P13568843469059727397

namespace A092420

/-- `∑[ogf(1/(1-9x+x^2))]` -/
def P13568843469059727397.Spec : Prop :=
  ∀ n, P13568843469059727397.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P6028609913109644224

`ogf(1/(1-10x+10x^2-x^3))`
-/

namespace A092420.P6028609913109644224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 10, -1] n

end

end A092420.P6028609913109644224

namespace A092420

/-- `ogf(1/(1-10x+10x^2-x^3))` -/
def P6028609913109644224.Spec : Prop :=
  ∀ n, P6028609913109644224.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P13083271272111455966

`∑[9*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=9`
-/

namespace A092420.P13083271272111455966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  9 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092420.P13083271272111455966

namespace A092420

/-- `∑[9*a(n-1)-a(n-2)]` -/
def P13083271272111455966.Spec : Prop :=
  ∀ n, P13083271272111455966.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P6553823495818591004

`∑[∑[A070998(n)]]`
-/

namespace A092420.P6553823495818591004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092420.P6553823495818591004

namespace A092420

/-- `∑[∑[A070998(n)]]` -/
def P6553823495818591004.Spec : Prop :=
  ∀ n, P6553823495818591004.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P16713931249014166161

`∑[A018913(n+1)]`
-/

namespace A092420.P16713931249014166161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092420.P16713931249014166161

namespace A092420

/-- `∑[A018913(n+1)]` -/
def P16713931249014166161.Spec : Prop :=
  ∀ n, P16713931249014166161.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P6989941601762509962

`A057081(n)+a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A092420.P6989941601762509962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n a =>
  A057081 n + a (n - 2)

end

end A092420.P6989941601762509962

namespace A092420

/-- `A057081(n)+a(n-2)` -/
def P6989941601762509962.Spec : Prop :=
  ∀ n, P6989941601762509962.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P9786383598694210625

`A098296(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A092420.P9786383598694210625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098296 (n + 1) - a (n - 1)

end

end A092420.P9786383598694210625

namespace A092420

/-- `A098296(n+1)-a(n-1)` -/
def P9786383598694210625.Spec : Prop :=
  ∀ n, P9786383598694210625.a n = A092420 (n + 1)

end A092420

/-! ## A092420.P8573615154025178105

`∑[A065100(n)/3]`
-/

namespace A092420.P8573615154025178105
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065100 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092420.P8573615154025178105

namespace A092420

/-- `∑[A065100(n)/3]` -/
def P8573615154025178105.Spec : Prop :=
  ∀ n, P8573615154025178105.a n = (A092420 (n + 1) : ℚ)

end A092420

/-! ## A092420.P7074394390962540823

`(a(n-1)²-a(n-1))/a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A092420.P7074394390962540823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 10] fun n a =>
  (a (n - 1) ^ 2 - a (n - 1)) / a (n - 2)

end

end A092420.P7074394390962540823

namespace A092420

/-- `(a(n-1)²-a(n-1))/a(n-2)` -/
def P7074394390962540823.Spec : Prop :=
  ∀ n, P7074394390962540823.a n = (A092420 (n + 1) : ℚ)

end A092420

/-!
# A092422: Triangle, read by rows, where T(n,k) equals the k-th term of the convolution of the (n-k)-th row with the (2k)-th Fibonacci polynomial (A011973).

The programs for A092422, there is no canonical definition to state claims against.
-/

/-! ## A092422.P17047571270399657107

`A319951(A086329(n)+A047812(n+1))`
-/

namespace A092422.P17047571270399657107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A086329 n + A047812 (n + 1)).toNat

end

end A092422.P17047571270399657107

/-! ## A092422.P7285250501837208279

`A089899(n)+A010894(A291117(n))`
-/

namespace A092422.P7285250501837208279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089899 n + A010894 ((A291117 n).toNat + 21)

end

end A092422.P7285250501837208279

/-! ## A092422.P13256551526057375200

`A260999(A071922(n)²)`
-/

namespace A092422.P13256551526057375200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A071922 n ^ 2).toNat

end

end A092422.P13256551526057375200

/-! ## A092422.P70102418500319300

`A260999(A080853(n)²)`
-/

namespace A092422.P70102418500319300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A080853 n ^ 2).toNat

end

end A092422.P70102418500319300

/-! ## A092422.P14379162943846130766

`A185284(A111133(n))+A089899(n)`
-/

namespace A092422.P14379162943846130766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A111133 n).toNat + A089899 n

end

end A092422.P14379162943846130766

/-!
# A092423: Row sums of triangle A092422, which is generated from the even-numbered Fibonacci polynomials (A011973).

The programs for A092423, there is no canonical definition to state claims against.
-/

/-! ## A092423.P11249536884175442319

`A199410(n)+Δ[A261664(n)]`
-/

namespace A092423.P11249536884175442319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199410 n + (f1 (n + 1) - f1 n)

end

end A092423.P11249536884175442319

/-! ## A092423.P3461175418944071992

`A261664(n+1)+A137747(n)`
-/

namespace A092423.P3461175418944071992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 1) + A137747 n

end

end A092423.P3461175418944071992

/-! ## A092423.P16259870316129583626

`A261664(n+1)+Δ[A137748(n)]`
-/

namespace A092423.P16259870316129583626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 1) + (f1 (n + 1) - f1 n)

end

end A092423.P16259870316129583626

/-! ## A092423.P12803228056743362727

`A261664(n+1)+A000418(n+1)`
-/

namespace A092423.P12803228056743362727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 1) + A000418 (n + 1)

end

end A092423.P12803228056743362727

/-! ## A092423.P3282634690944495623

`A261664(n+1)+A036639(n+1)`
-/

namespace A092423.P3282634690944495623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261664 (n + 1) + A036639 (n + 1)

end

end A092423.P3282634690944495623

/-!
# A092424: Antidiagonal sums of triangle A092422, which is generated from the even-numbered Fibonacci polynomials (A011973).

The programs for A092424, there is no canonical definition to state claims against.
-/

/-! ## A092424.P6870675727356622614

`A000194(A148177(n+1))`
-/

namespace A092424.P6870675727356622614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A148177 (n + 1)).toNat

end

end A092424.P6870675727356622614

/-! ## A092424.P1191954129150557261

`A321936(A081668(n))+A026008(n)`
-/

namespace A092424.P1191954129150557261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A081668 n).toNat + A026008 n

end

end A092424.P1191954129150557261

/-! ## A092424.P3507496983806685178

`A194287(A148320(n)+A112367(n))`
-/

namespace A092424.P3507496983806685178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194287 (A148320 n + A112367 n).toNat

end

end A092424.P3507496983806685178

/-! ## A092424.P2071636255098321174

`A293855(n)+A181153(A114800(n))`
-/

namespace A092424.P2071636255098321174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293855 n + A181153 (A114800 n).toNat

end

end A092424.P2071636255098321174

/-! ## A092424.P13694332958027536753

`A000196(∑[A000034(n)]*A309505(n))`
-/

namespace A092424.P13694332958027536753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) * A309505 n).toNat

end

end A092424.P13694332958027536753

/-!
# A092427: Least k > 1 such that k^n divides (k-1)!.

The programs for A092427, there is no canonical definition to state claims against.
-/

/-! ## A092427.P11399679487393356553

`A119791(A153663(n+1)+A000110(n))`
-/

namespace A092427.P11399679487393356553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119791 (A153663 (n + 1) + A000110 n).toNat

end

end A092427.P11399679487393356553

/-!
# A092428: Numbers n such that A092255(n) == 2 (mod 3).

The programs for A092428, there is no canonical definition to state claims against.
-/

/-! ## A092428.P3782651657072865150

`eq[2, A092037(n)]`
-/

namespace A092428.P3782651657072865150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092037 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092428.P3782651657072865150

/-! ## A092428.P15259316333579886740

`lt[2, A151668(n)]`
-/

namespace A092428.P15259316333579886740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151668 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092428.P15259316333579886740

/-! ## A092428.P4559743509806734603

`lt[4, A151672(n)]`
-/

namespace A092428.P4559743509806734603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092428.P4559743509806734603

/-! ## A092428.P16243394501223944293

`eq[4, dr(A038574(n))]`
-/

namespace A092428.P16243394501223944293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038574 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092428.P16243394501223944293

/-! ## A092428.P10530864958163967989

`A005836(comp[and(n, -n)]+1)`
-/

namespace A092428.P10530864958163967989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A092428.P10530864958163967989

/-! ## A092428.P514303308379616124

`A005836(comp[2^n-1]+2)`
-/

namespace A092428.P514303308379616124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A092428.P514303308379616124

/-! ## A092428.P2464286571252999741

`eq[2, A051699(A120879(n))]`
-/

namespace A092428.P2464286571252999741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A120879 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092428.P2464286571252999741

/-! ## A092428.P3918448042310312060

`eq[4, A007948(A006047(n))]`
-/

namespace A092428.P3918448042310312060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A006047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092428.P3918448042310312060

/-! ## A092428.P14122562544559328498

`comp[n*A338848(A338848(n))]`
-/

namespace A092428.P14122562544559328498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A338848 (A338848 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092428.P14122562544559328498

/-! ## A092428.P18131174475871638908

`filter[A026230(n+1), A039966(#)]`
-/

namespace A092428.P18131174475871638908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026230 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A092428.P18131174475871638908

/-!
# A092429: a(n) = n! * Sum_{i,j,k,l >= 0, i+j+k+l = n} 1/(i!*j!*k!*l!).

The programs for A092429, there is no canonical definition to state claims against.
-/

/-! ## A092429.P2258997431019469728

`A226873(A052905(n+2))`
-/

namespace A092429.P2258997431019469728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A052905 (n + 2)).toNat

end

end A092429.P2258997431019469728

/-! ## A092429.P16133478828996507476

`A226873(eq[4, A025581(n)])`
-/

namespace A092429.P16133478828996507476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A092429.P16133478828996507476

/-! ## A092429.P6516498129030531211

`A226873(Δ[A134465(n+2)])`
-/

namespace A092429.P6516498129030531211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134465 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (f1 (n + 1) - f1 n).toNat

end

end A092429.P6516498129030531211

/-! ## A092429.P7774090208524794943

`A226873(A000124(n+5)-6)`
-/

namespace A092429.P7774090208524794943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A000124 (n + 5) - 6).toNat

end

end A092429.P7774090208524794943

/-! ## A092429.P10165289609531655790

`A226873(A167487(n)+A016825(n))`
-/

namespace A092429.P10165289609531655790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A167487 n + A016825 n).toNat

end

end A092429.P10165289609531655790

/-! ## A092429.P17192406665796643195

`A226873(A166136(n+1)+A016777(n))`
-/

namespace A092429.P17192406665796643195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A166136 (n + 1) + A016777 n).toNat

end

end A092429.P17192406665796643195

/-! ## A092429.P809859295184517792

`A226873(A167499(n+1)+A016789(n))`
-/

namespace A092429.P809859295184517792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 (A167499 (n + 1) + A016789 n).toNat

end

end A092429.P809859295184517792

/-!
# A092430: Number of n-node labeled connected mating graphs, cf. A006024.

The programs for A092430, there is no canonical definition to state claims against.
-/

/-! ## A092430.P1048440409764545398

`A079306(n+2)+(-1)^(n+2)*(n+1)!`
-/

namespace A092430.P1048440409764545398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079306 (n + 2) + (-1) ^ (n + 2) * (Nat.factorial (n + 1) : ℤ)

end

end A092430.P1048440409764545398

/-!
# A092431: Numbers having in binary representation a leading 1 followed by n zeros and n-1 ones.

The programs for A092431, the canonical program `A092431.P10060195551394861038` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092431 has offset 1).

The definition of A092431 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092431.P3834267237493449652

`2^(2*(n+1)-1)+2^n-1`
-/

namespace A092431.P3834267237493449652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) + (2 ^ n : ℚ) - 1

end

end A092431.P3834267237493449652

namespace A092431

/-- `2^(2*(n+1)-1)+2^n-1` -/
def P3834267237493449652.Spec : Prop :=
  ∀ n, P3834267237493449652.a n = (A092431 (n + 1) : ℚ)

end A092431

/-! ## A092431.P17160921678105771055

`A005367(n)/2`
-/

namespace A092431.P17160921678105771055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005367 n : ℚ) / 2

end

end A092431.P17160921678105771055

namespace A092431

/-- `A005367(n)/2` -/
def P17160921678105771055.Spec : Prop :=
  ∀ n, P17160921678105771055.a n = (A092431 (n + 1) : ℚ)

end A092431

/-! ## A092431.P10060195551394861038

`A056326(2*(n+1)+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092431

/-- `A056326(2*(n+1)+1)` -/
def P10060195551394861038.Spec : Prop :=
  ∀ n, P10060195551394861038.a n = A092431 (n + 1)

theorem P10060195551394861038.correct : P10060195551394861038.Spec := by
  intro n
  simp only [A092431, Nat.add_sub_cancel]

end A092431

/-! ## A092431.P14513739518796079454

`(A001576(n+1)-3)/2`
-/

namespace A092431.P14513739518796079454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001576 (n + 1) - 3 : ℚ) / 2

end

end A092431.P14513739518796079454

namespace A092431

/-- `(A001576(n+1)-3)/2` -/
def P14513739518796079454.Spec : Prop :=
  ∀ n, P14513739518796079454.a n = (A092431 (n + 1) : ℚ)

end A092431

/-! ## A092431.P14656757966593897161

`A056309(2*(n+1)+1)/2`
-/

namespace A092431.P14656757966593897161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056309 (2 * (n + 1) + 1) : ℚ) / 2

end

end A092431.P14656757966593897161

namespace A092431

/-- `A056309(2*(n+1)+1)/2` -/
def P14656757966593897161.Spec : Prop :=
  ∀ n, P14656757966593897161.a n = (A092431 (n + 1) : ℚ)

end A092431

/-! ## A092431.P5487332285681262353

`(A028400(n+2)-9)/8`
-/

namespace A092431.P5487332285681262353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028400 (n + 2) - 9 : ℚ) / 8

end

end A092431.P5487332285681262353

namespace A092431

/-- `(A028400(n+2)-9)/8` -/
def P5487332285681262353.Spec : Prop :=
  ∀ n, P5487332285681262353.a n = (A092431 (n + 1) : ℚ)

end A092431

/-! ## A092431.P18332000170207192435

`∑[ogf((2-5x)/(1-6x+8x^2))]`
-/

namespace A092431.P18332000170207192435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092431.P18332000170207192435

namespace A092431

/-- `∑[ogf((2-5x)/(1-6x+8x^2))]` -/
def P18332000170207192435.Spec : Prop :=
  ∀ n, P18332000170207192435.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P9439945101316807816

`ogf((2-5x)/(1-7x+14x^2-8x^3))`
-/

namespace A092431.P9439945101316807816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5] [1, -7, 14, -8] n

end

end A092431.P9439945101316807816

namespace A092431

/-- `ogf((2-5x)/(1-7x+14x^2-8x^3))` -/
def P9439945101316807816.Spec : Prop :=
  ∀ n, P9439945101316807816.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P9762092216338691094

`∑[A049775(n+2)]`
-/

namespace A092431.P9762092216338691094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049775 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092431.P9762092216338691094

namespace A092431

/-- `∑[A049775(n+2)]` -/
def P9762092216338691094.Spec : Prop :=
  ∀ n, P9762092216338691094.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P15502173246650924340

`∑[abs(Δ[A007582(n)])]`
-/

namespace A092431.P15502173246650924340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092431.P15502173246650924340

namespace A092431

/-- `∑[abs(Δ[A007582(n)])]` -/
def P15502173246650924340.Spec : Prop :=
  ∀ n, P15502173246650924340.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P5920223008547990349

`(A099393(n+1)-1)/2`
-/

namespace A092431.P5920223008547990349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099393 (n + 1) - 1 : ℚ) / 2

end

end A092431.P5920223008547990349

namespace A092431

/-- `(A099393(n+1)-1)/2` -/
def P5920223008547990349.Spec : Prop :=
  ∀ n, P5920223008547990349.a n = (A092431 (n + 1) : ℚ)

end A092431

/-! ## A092431.P7466779858232388141

`and(A187560(n), A281482(n))`
-/

namespace A092431.P7466779858232388141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187560 n) (A281482 n)

end

end A092431.P7466779858232388141

namespace A092431

/-- `and(A187560(n), A281482(n))` -/
def P7466779858232388141.Spec : Prop :=
  ∀ n, P7466779858232388141.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P17474832519019508607

`xor(A000225(n), A004171(n))`
-/

namespace A092431.P17474832519019508607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A004171 n)

end

end A092431.P17474832519019508607

namespace A092431

/-- `xor(A000225(n), A004171(n))` -/
def P17474832519019508607.Spec : Prop :=
  ∀ n, P17474832519019508607.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P2970083145858137454

`xor(A020522(n), A198693(n))`
-/

namespace A092431.P2970083145858137454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020522 n) (A198693 n)

end

end A092431.P2970083145858137454

namespace A092431

/-- `xor(A020522(n), A198693(n))` -/
def P2970083145858137454.Spec : Prop :=
  ∀ n, P2970083145858137454.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P4163462155067181596

`xor(A083420(n), A171499(n))`
-/

namespace A092431.P4163462155067181596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A083420 n) (A171499 n)

end

end A092431.P4163462155067181596

namespace A092431

/-- `xor(A083420(n), A171499(n))` -/
def P4163462155067181596.Spec : Prop :=
  ∀ n, P4163462155067181596.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P917903744025993920

`xor(A099393(n), A164346(n))`
-/

namespace A092431.P917903744025993920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A099393 n) (A164346 n)

end

end A092431.P917903744025993920

namespace A092431

/-- `xor(A099393(n), A164346(n))` -/
def P917903744025993920.Spec : Prop :=
  ∀ n, P917903744025993920.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P7232509106985164699

`xor(A000079(n), A281482(n))`
-/

namespace A092431.P7232509106985164699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000079 n) (A281482 n)

end

end A092431.P7232509106985164699

namespace A092431

/-- `xor(A000079(n), A281482(n))` -/
def P7232509106985164699.Spec : Prop :=
  ∀ n, P7232509106985164699.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P1410815089548534275

`A000051(n)*A000225(n+1)`
-/

namespace A092431.P1410815089548534275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A000225 (n + 1)

end

end A092431.P1410815089548534275

namespace A092431

/-- `A000051(n)*A000225(n+1)` -/
def P1410815089548534275.Spec : Prop :=
  ∀ n, P1410815089548534275.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P8091031309612810641

`A000051(n)*A056007(2*n)`
-/

namespace A092431.P8091031309612810641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A056007 (2 * n)

end

end A092431.P8091031309612810641

namespace A092431

/-- `A000051(n)*A056007(2*n)` -/
def P8091031309612810641.Spec : Prop :=
  ∀ n, P8091031309612810641.a n = A092431 (n + 1)

end A092431

/-! ## A092431.P5863665361693909069

`A000051(n)*A086341(2*n)`
-/

namespace A092431.P5863665361693909069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n * A086341 (2 * n)

end

end A092431.P5863665361693909069

namespace A092431

/-- `A000051(n)*A086341(2*n)` -/
def P5863665361693909069.Spec : Prop :=
  ∀ n, P5863665361693909069.a n = A092431 (n + 1)

end A092431

/-!
# A092432: Partial sums of A091579.

The programs for A092432, there is no canonical definition to state claims against.
-/

/-! ## A092432.P138023488436241821

`∑[A091579(n+1)]`
-/

namespace A092432.P138023488436241821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092432.P138023488436241821

/-! ## A092432.P7717429284028055426

`A091579(n%(2*(n+1))+1)+a(n-1)` with `a(0)=1`
-/

namespace A092432.P7717429284028055426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091579 (n % (2 * (n + 1)) + 1) + a (n - 1)

end

end A092432.P7717429284028055426

/-! ## A092432.P12140029458553420431

`A091579(A004273(n+1)-n)+a(n-1)` with `a(0)=1`
-/

namespace A092432.P12140029458553420431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091579 (A004273 (n + 1) - (n : ℤ)).toNat + a (n - 1)

end

end A092432.P12140029458553420431

/-! ## A092432.P905191741992076830

`a(n-1)+A091579(n+1)+A001316(n)%2` with `a(0)=1`
-/

namespace A092432.P905191741992076830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091579 (n + 1) + Int.tmod (A001316 n) 2)

end

end A092432.P905191741992076830

/-! ## A092432.P16470100465712062811

`a(n-1)+A091579(n+1)+A008683(4*(n+1))` with `a(0)=1`
-/

namespace A092432.P16470100465712062811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091579 (n + 1) + A008683 (4 * (n + 1)))

end

end A092432.P16470100465712062811

/-! ## A092432.P3921151999286159841

`a(n-1)+A091579(n+1)/A006530(gcd(n, n+1))` with `a(0)=1`
-/

namespace A092432.P3921151999286159841
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091579 (n + 1) : ℚ) / (A006530 (Nat.gcd n (n + 1)) : ℚ)

end

end A092432.P3921151999286159841

/-!
# A092433: Positive numbers from the children's game "Buzz" or "Sevens": positive integers which are divisible by seven, or which contain a seven as a digit.

The programs for A092433, the canonical program `A092433.P2656392453258521260` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092433 has offset 1).

The definition of A092433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092433.P2656392453258521260

`∪[A011537(n+1), 7*(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092433

/-- `∪[A011537(n+1), 7*(n+1)]` -/
def P2656392453258521260.Spec : Prop :=
  ∀ n, (P2656392453258521260.a n : ℤ) = A092433 (n + 1)

theorem P2656392453258521260.correct : P2656392453258521260.Spec := by
  intro n
  simp only [A092433, Nat.add_sub_cancel]

end A092433

/-! ## A092433.P5517231805389381565

`∪[A008589(n+1), A011537(n+1)]`
-/

namespace A092433.P5517231805389381565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092433.P5517231805389381565

namespace A092433

/-- `∪[A008589(n+1), A011537(n+1)]` -/
def P5517231805389381565.Spec : Prop :=
  ∀ n, (P5517231805389381565.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P13101238651115833951

`lt[A230101(n+1)%7, 1]+1`
-/

namespace A092433.P13101238651115833951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230101 (n + 1)) 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A092433.P13101238651115833951

namespace A092433

/-- `lt[A230101(n+1)%7, 1]+1` -/
def P13101238651115833951.Spec : Prop :=
  ∀ n, (P13101238651115833951.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P7821197068134202595

`eq[A230101(n)%7, A000007(n)]`
-/

namespace A092433.P7821197068134202595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230101 n) 7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092433.P7821197068134202595

namespace A092433

/-- `eq[A230101(n)%7, A000007(n)]` -/
def P7821197068134202595.Spec : Prop :=
  ∀ n, (P7821197068134202595.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P11819766153550159901

`lt[A004182(n*A109720(n)), n]`
-/

namespace A092433.P11819766153550159901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 ((n : ℤ) * A109720 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092433.P11819766153550159901

namespace A092433

/-- `lt[A004182(n*A109720(n)), n]` -/
def P11819766153550159901.Spec : Prop :=
  ∀ n, (P11819766153550159901.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P6744517202287903118

`lt[7, A010143(A230101(n))]`
-/

namespace A092433.P6744517202287903118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A092433.P6744517202287903118

namespace A092433

/-- `lt[7, A010143(A230101(n))]` -/
def P6744517202287903118.Spec : Prop :=
  ∀ n, (P6744517202287903118.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P17366138782914511940

`eq[14, A010143(A230101(n))]%A017018(n)`
-/

namespace A092433.P17366138782914511940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010143 (A230101 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A017018 n)

end

end A092433.P17366138782914511940

namespace A092433

/-- `eq[14, A010143(A230101(n))]%A017018(n)` -/
def P17366138782914511940.Spec : Prop :=
  ∀ n, P17366138782914511940.a n = A092433 (n + 1)

end A092433

/-! ## A092433.P3447287466270181035

`eq[A000007(n), A010876(A230101(n))]`
-/

namespace A092433.P3447287466270181035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092433.P3447287466270181035

namespace A092433

/-- `eq[A000007(n), A010876(A230101(n))]` -/
def P3447287466270181035.Spec : Prop :=
  ∀ n, (P3447287466270181035.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P129389835398018559

`eq[A000038(n), A010876(A230101(n))]`
-/

namespace A092433.P129389835398018559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092433.P129389835398018559

namespace A092433

/-- `eq[A000038(n), A010876(A230101(n))]` -/
def P129389835398018559.Spec : Prop :=
  ∀ n, (P129389835398018559.a n : ℤ) = A092433 (n + 1)

end A092433

/-! ## A092433.P12246533625472927803

`lt[A010876(A230101(n)), A057427(n)]`
-/

namespace A092433.P12246533625472927803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A230101 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092433.P12246533625472927803

namespace A092433

/-- `lt[A010876(A230101(n)), A057427(n)]` -/
def P12246533625472927803.Spec : Prop :=
  ∀ n, (P12246533625472927803.a n : ℤ) = A092433 (n + 1)

end A092433

/-!
# A092434: Number of words X=x(1)x(2)x(3)...x(n) of length n in three digits {0,1,2} that are invariant under the mapping X -> Y, where y(i)=((AD)^(i-1))x(1) and where (AD) denotes the absolute difference (AD)x(i)=abs(x(i+1)-x(i)) (in other words, y(i) is the i-th element in the diagonal of leading entries in the table of absolute differences of {x(1), x(2),...,x(n)}).

The programs for A092434, there is no canonical definition to state claims against.
-/

/-! ## A092434.P8751246702327085783

`(n+3)*2^floor(n/2)`
-/

namespace A092434.P8751246702327085783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A092434.P8751246702327085783

/-! ## A092434.P333729720274255565

`∏[lcm(2, n+3)/(n+2)]`
-/

namespace A092434.P333729720274255565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 3) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092434.P333729720274255565

/-! ## A092434.P8477497321084026349

`(n+3)*∏[gcd(2, n)]/2`
-/

namespace A092434.P8477497321084026349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A092434.P8477497321084026349

/-! ## A092434.P4196471302009233892

`ogf((3+4x-2x^2-4x^3)/(1-4x^2+4x^4))`
-/

namespace A092434.P4196471302009233892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -2, -4] [1, 0, -4, 0, 4] n

end

end A092434.P4196471302009233892

/-!
# A092435: Prime factorials divided by their corresponding primorials.

The programs for A092435, the canonical program `A092435.P2982260256719848996` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092435 has offset 1).

The definition of A092435 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092435.P2982260256719848996

`A049614(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092435

/-- `A049614(A000040(n+1))` -/
def P2982260256719848996.Spec : Prop :=
  ∀ n, P2982260256719848996.a n = A092435 (n + 1)

theorem P2982260256719848996.correct : P2982260256719848996.Spec := by
  intro n
  simp only [A092435, Nat.add_sub_cancel]

end A092435

/-! ## A092435.P14384693087754282587

`A036691(A065890(n+1))`
-/

namespace A092435.P14384693087754282587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 (A065890 (n + 1)).toNat

end

end A092435.P14384693087754282587

namespace A092435

/-- `A036691(A065890(n+1))` -/
def P14384693087754282587.Spec : Prop :=
  ∀ n, P14384693087754282587.a n = A092435 (n + 1)

end A092435

/-! ## A092435.P368356730251961375

`A049614(p?[comp[n²]])`
-/

namespace A092435.P368356730251961375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A092435.P368356730251961375

namespace A092435

/-- `A049614(p?[comp[n²]])` -/
def P368356730251961375.Spec : Prop :=
  ∀ n, P368356730251961375.a n = A092435 (n + 1)

end A092435

/-! ## A092435.P11443849983186534158

`A103890(n+1)-1`
-/

namespace A092435.P11443849983186534158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103890 (n + 1) - 1

end

end A092435.P11443849983186534158

namespace A092435

/-- `A103890(n+1)-1` -/
def P11443849983186534158.Spec : Prop :=
  ∀ n, P11443849983186534158.a n = A092435 (n + 1)

theorem P11443849983186534158.correct : P11443849983186534158.Spec := by
  intro n
  simp only [A092435, Nat.add_sub_cancel, A092435.P11443849983186534158.a, A092435.P2982260256719848996.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A049614, A049614.P5818696899068743169.a, A103890, A103890.P10895498586581410336.a, A000142, A000142.P3272619076580183195.a, A034386, A034386.P1755129826133478527.a, A003418, A003418.P6976248655893080794.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092435

/-! ## A092435.P14406267958581396925

`∏[A109919(2*n+1)]`
-/

namespace A092435.P14406267958581396925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109919 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A092435.P14406267958581396925

namespace A092435

/-- `∏[A109919(2*n+1)]` -/
def P14406267958581396925.Spec : Prop :=
  ∀ n, P14406267958581396925.a n = A092435 (n + 1)

end A092435

/-!
# A092436: a(n) = 1/2 + (-1)^n*(1/2 - A010060(floor(n/2))).

The programs for A092436, the canonical program `A092436.P18053594016097437094` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092436 has offset 1).

The definition of A092436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092436.P18053594016097437094

`1-A010060(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A092436

/-- `1-A010060(n+1)` -/
def P18053594016097437094.Spec : Prop :=
  ∀ n, P18053594016097437094.a n = A092436 (n + 1)

theorem P18053594016097437094.correct : P18053594016097437094.Spec := by
  intro n
  simp only [A092436, Nat.add_sub_cancel]

end A092436

/-! ## A092436.P17602601834625010774

`1/2+(-1)^(n+1)*(1/2-A010060(floor((n+1)/2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092436.P17602601834625010774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 + ((-1) ^ (n + 1) : ℚ) * ((1 : ℚ) / 2 - (A010060 ⌊(n + 1 : ℚ) / 2⌋.toNat : ℚ))

end

end A092436.P17602601834625010774

namespace A092436

/-- `1/2+(-1)^(n+1)*(1/2-A010060(floor((n+1)/2)))` -/
def P17602601834625010774.Spec : Prop :=
  ∀ n, P17602601834625010774.a n = (A092436 (n + 1) : ℚ)

end A092436

/-! ## A092436.P11736702349526874597

`char[xor(n, 2*(n+1))]`
-/

namespace A092436.P11736702349526874597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A092436.P11736702349526874597

namespace A092436

/-- `char[xor(n, 2*(n+1))]` -/
def P11736702349526874597.Spec : Prop :=
  ∀ n, (P11736702349526874597.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P11265715737928228349

`char[xor(n, 2*n)-1]`
-/

namespace A092436.P11265715737928228349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A092436.P11265715737928228349

namespace A092436

/-- `char[xor(n, 2*n)-1]` -/
def P11265715737928228349.Spec : Prop :=
  ∀ n, (P11265715737928228349.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P3013906588094807780

`(∑[val(n+1, 2)]+n)%2`
-/

namespace A092436.P3013906588094807780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) % 2

end

end A092436.P3013906588094807780

namespace A092436

/-- `(∑[val(n+1, 2)]+n)%2` -/
def P3013906588094807780.Spec : Prop :=
  ∀ n, (P3013906588094807780.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P14486794215648072883

`and(1, ∑[val(n+1, 2)]+n)`
-/

namespace A092436.P14486794215648072883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A092436.P14486794215648072883

namespace A092436

/-- `and(1, ∑[val(n+1, 2)]+n)` -/
def P14486794215648072883.Spec : Prop :=
  ∀ n, (P14486794215648072883.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P1160625488688978311

`log2(gcd(2, ∑[val(n+1, 2)+1]))`
-/

namespace A092436.P1160625488688978311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A092436.P1160625488688978311

namespace A092436

/-- `log2(gcd(2, ∑[val(n+1, 2)+1]))` -/
def P1160625488688978311.Spec : Prop :=
  ∀ n, P1160625488688978311.a n = (A092436 (n + 1) : ℝ)

end A092436

/-! ## A092436.P909674679450772443

`comp[xor(2*n+1, n+1)]%2`
-/

namespace A092436.P909674679450772443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2

end

end A092436.P909674679450772443

namespace A092436

/-- `comp[xor(2*n+1, n+1)]%2` -/
def P909674679450772443.Spec : Prop :=
  ∀ n, (P909674679450772443.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P14453989391529240439

`and(1, comp[xor(2*n+1, n+1)])`
-/

namespace A092436.P14453989391529240439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092436.P14453989391529240439

namespace A092436

/-- `and(1, comp[xor(2*n+1, n+1)])` -/
def P14453989391529240439.Spec : Prop :=
  ∀ n, (P14453989391529240439.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P10194290323730972556

`1-char[xor(n+1, n+1+n)]`
-/

namespace A092436.P10194290323730972556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 1 + n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A092436.P10194290323730972556

namespace A092436

/-- `1-char[xor(n+1, n+1+n)]` -/
def P10194290323730972556.Spec : Prop :=
  ∀ n, P10194290323730972556.a n = A092436 (n + 1)

end A092436

/-! ## A092436.P6872774020553947463

`xor(1, char[xor(n+1, n+1+n)])`
-/

namespace A092436.P6872774020553947463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (n + 1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A092436.P6872774020553947463

namespace A092436

/-- `xor(1, char[xor(n+1, n+1+n)])` -/
def P6872774020553947463.Spec : Prop :=
  ∀ n, (P6872774020553947463.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P14214476788878835368

`and(1, a(and(n+1, n-1))+n+1)` with `a(0)=0`
-/

namespace A092436.P14214476788878835368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.land 1 (a (Int.land (n + 1 : ℤ) ((n : ℤ) - 1)).toNat + (n + 1))

end

end A092436.P14214476788878835368

namespace A092436

/-- `and(1, a(and(n+1, n-1))+n+1)` -/
def P14214476788878835368.Spec : Prop :=
  ∀ n, (P14214476788878835368.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P18004950897441526459

`(1-(-1)^(∑[val(n+1, 2)]+n))/2`
-/

namespace A092436.P18004950897441526459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j + n) : ℚ) / 2

end

end A092436.P18004950897441526459

namespace A092436

/-- `(1-(-1)^(∑[val(n+1, 2)]+n))/2` -/
def P18004950897441526459.Spec : Prop :=
  ∀ n, P18004950897441526459.a n = (A092436 (n + 1) : ℚ)

end A092436

/-! ## A092436.P16886593116259424093

`val(2*n+1, comp[xor(2*n+1, n+1)])`
-/

namespace A092436.P16886593116259424093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092436.P16886593116259424093

namespace A092436

/-- `val(2*n+1, comp[xor(2*n+1, n+1)])` -/
def P16886593116259424093.Spec : Prop :=
  ∀ n, (P16886593116259424093.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P6261466082025685516

`C(2*n+1, comp[xor(2*n+1, n+1)])`
-/

namespace A092436.P6261466082025685516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * n + 1) (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A092436.P6261466082025685516

namespace A092436

/-- `C(2*n+1, comp[xor(2*n+1, n+1)])` -/
def P6261466082025685516.Spec : Prop :=
  ∀ n, (P6261466082025685516.a n : ℤ) = A092436 (n + 1)

end A092436

/-! ## A092436.P11329443121409925162

`Δ[A159481(n)]`
-/

namespace A092436.P11329443121409925162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092436.P11329443121409925162

namespace A092436

/-- `Δ[A159481(n)]` -/
def P11329443121409925162.Spec : Prop :=
  ∀ n, P11329443121409925162.a n = A092436 (n + 1)

end A092436

/-! ## A092436.P10318988286036371280

`Δ[A245710(n)]`
-/

namespace A092436.P10318988286036371280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092436.P10318988286036371280

namespace A092436

/-- `Δ[A245710(n)]` -/
def P10318988286036371280.Spec : Prop :=
  ∀ n, P10318988286036371280.a n = A092436 (n + 1)

end A092436

/-! ## A092436.P3516656271557658599

`A010059(n+1)`
-/

namespace A092436.P3516656271557658599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n + 1)

end

end A092436.P3516656271557658599

namespace A092436

/-- `A010059(n+1)` -/
def P3516656271557658599.Spec : Prop :=
  ∀ n, P3516656271557658599.a n = A092436 (n + 1)

end A092436

/-!
# A092438: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

The programs for A092438, the canonical program `A092438.P2452655790391448084` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092438 has offset 0).

The definition of A092438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092438.P10712944189261993096

`2*A140420(n)`
-/

namespace A092438.P10712944189261993096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140420 n

end

end A092438.P10712944189261993096

namespace A092438

/-- `2*A140420(n)` -/
def P10712944189261993096.Spec : Prop :=
  ∀ n, P10712944189261993096.a n = A092438 n

end A092438

/-! ## A092438.P2452655790391448084

`A046717(n+1)-2^(n+1)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092438

/-- `A046717(n+1)-2^(n+1)+1` -/
def P2452655790391448084.Spec : Prop :=
  ∀ n, P2452655790391448084.a n = A092438 n

theorem P2452655790391448084.correct : P2452655790391448084.Spec := by
  intro n
  simp only [A092438]

end A092438

/-! ## A092438.P15519868769536361925

`(3^(n+1)-(-1)^n)/2-2^(n+1)+1`
-/

namespace A092438.P15519868769536361925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ (n + 1) : ℤ) - (-1) ^ n : ℚ) / 2 - (2 ^ (n + 1) : ℚ) + 1

end

end A092438.P15519868769536361925

namespace A092438

/-- `(3^(n+1)-(-1)^n)/2-2^(n+1)+1` -/
def P15519868769536361925.Spec : Prop :=
  ∀ n, P15519868769536361925.a n = (A092438 n : ℚ)

end A092438

/-! ## A092438.P14495168904276995611

`∑[A362316(n)-(-1)^n+1]`
-/

namespace A092438.P14495168904276995611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362316 n - (-1) ^ n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092438.P14495168904276995611

namespace A092438

/-- `∑[A362316(n)-(-1)^n+1]` -/
def P14495168904276995611.Spec : Prop :=
  ∀ n, P14495168904276995611.a n = A092438 n

end A092438

/-!
# A092439: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

The programs for A092439, the canonical program `A092439.P1069653901415661317` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092439 has offset 0).

The definition of A092439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092439.P1069653901415661317

`A046717(n+2)-2^(n+2)-(n+2)*(2^(n+1)-1)+(n+1)²`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092439

/-- `A046717(n+2)-2^(n+2)-(n+2)*(2^(n+1)-1)+(n+1)²` -/
def P1069653901415661317.Spec : Prop :=
  ∀ n, P1069653901415661317.a n = A092439 n

theorem P1069653901415661317.correct : P1069653901415661317.Spec := by
  intro n
  simp only [A092439]

end A092439

/-! ## A092439.P14030968413064047502

`A108613((2*n+1)*A000045(n))`
-/

namespace A092439.P14030968413064047502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108613 ((2 * n + 1 : ℤ) * A000045 n).toNat

end

end A092439.P14030968413064047502

namespace A092439

/-- `A108613((2*n+1)*A000045(n))` -/
def P14030968413064047502.Spec : Prop :=
  ∀ n, P14030968413064047502.a n = A092439 n

end A092439

/-!
# A092440: a(n) = 2^(2*n+1) - 2^(n+1) + 1.

The programs for A092440, the canonical program `A092440.P9739041573880748262` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092440 has offset 0).

The definition of A092440 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(2*n+1)-2^(n+1)+1` (program `A092440.P9739041573880748262`, by `A092440.P9739041573880748262.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092440.P9739041573880748262

`2^(2*n+1)-2^(n+1)+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092440

/-- `2^(2*n+1)-2^(n+1)+1` -/
def P9739041573880748262.Spec : Prop :=
  ∀ n, P9739041573880748262.a n = A092440 n

theorem P9739041573880748262.correct : P9739041573880748262.Spec := by
  intro n
  simp only [A092440]

end A092440

/-! ## A092440.P9334729926001878065

`∑[ogf((1-2x+4x^2)/(1-6x+8x^2))]`
-/

namespace A092440.P9334729926001878065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4] [1, -6, 8] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092440.P9334729926001878065

namespace A092440

/-- `∑[ogf((1-2x+4x^2)/(1-6x+8x^2))]` -/
def P9334729926001878065.Spec : Prop :=
  ∀ n, P9334729926001878065.a n = A092440 n

end A092440

/-! ## A092440.P10246399149802227283

`or((1-2^n)², 4^n)`
-/

namespace A092440.P10246399149802227283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((1 - (2 ^ n : ℤ)) ^ 2) (4 ^ n : ℤ)

end

end A092440.P10246399149802227283

namespace A092440

/-- `or((1-2^n)², 4^n)` -/
def P10246399149802227283.Spec : Prop :=
  ∀ n, P10246399149802227283.a n = A092440 n

end A092440

/-! ## A092440.P3368307906943959876

`xor((1-2^n)², 4^n)`
-/

namespace A092440.P3368307906943959876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((1 - (2 ^ n : ℤ)) ^ 2) (4 ^ n : ℤ)

end

end A092440.P3368307906943959876

namespace A092440

/-- `xor((1-2^n)², 4^n)` -/
def P3368307906943959876.Spec : Prop :=
  ∀ n, P3368307906943959876.a n = A092440 n

end A092440

/-! ## A092440.P14462331575361268731

`∑[lcm(3*2^n-2, 2^n)]`
-/

namespace A092440.P14462331575361268731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 * 2 ^ n : ℤ) - 2) (2 ^ n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092440.P14462331575361268731

namespace A092440

/-- `∑[lcm(3*2^n-2, 2^n)]` -/
def P14462331575361268731.Spec : Prop :=
  ∀ n, (P14462331575361268731.a n : ℤ) = A092440 n

end A092440

/-! ## A092440.P15368258365971325134

`A171663(2*n)`
-/

namespace A092440.P15368258365971325134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171663 (2 * n)

end

end A092440.P15368258365971325134

namespace A092440

/-- `A171663(2*n)` -/
def P15368258365971325134.Spec : Prop :=
  ∀ n, P15368258365971325134.a n = A092440 n

end A092440

/-! ## A092440.P8175629673078720573

`A129757(2*(n+1))`
-/

namespace A092440.P8175629673078720573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129757 (2 * (n + 1))

end

end A092440.P8175629673078720573

namespace A092440

/-- `A129757(2*(n+1))` -/
def P8175629673078720573.Spec : Prop :=
  ∀ n, P8175629673078720573.a n = A092440 n

end A092440

/-! ## A092440.P8590756712706560235

`(A060867(n+1)+1)/2`
-/

namespace A092440.P8590756712706560235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060867 (n + 1) + 1 : ℚ) / 2

end

end A092440.P8590756712706560235

namespace A092440

/-- `(A060867(n+1)+1)/2` -/
def P8590756712706560235.Spec : Prop :=
  ∀ n, P8590756712706560235.a n = (A092440 n : ℚ)

theorem P8590756712706560235.correct : P8590756712706560235.Spec := by
  intro n
  simp only [A092440, Nat.add_sub_cancel, A092440.P8590756712706560235.a, A092440.P9739041573880748262.a, A060867, A060867.P13595053921376631971.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092440

/-! ## A092440.P6170838188043902902

`(A191341(n+1)-1)/2`
-/

namespace A092440.P6170838188043902902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191341 (n + 1) - 1 : ℚ) / 2

end

end A092440.P6170838188043902902

namespace A092440

/-- `(A191341(n+1)-1)/2` -/
def P6170838188043902902.Spec : Prop :=
  ∀ n, P6170838188043902902.a n = (A092440 n : ℚ)

end A092440

/-! ## A092440.P4789894245916109107

`(A093112(n+1)+3)/2`
-/

namespace A092440.P4789894245916109107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093112 (n + 1) + 3 : ℚ) / 2

end

end A092440.P4789894245916109107

namespace A092440

/-- `(A093112(n+1)+3)/2` -/
def P4789894245916109107.Spec : Prop :=
  ∀ n, P4789894245916109107.a n = (A092440 n : ℚ)

theorem P4789894245916109107.correct : P4789894245916109107.Spec := by
  intro n
  simp only [A092440, Nat.add_sub_cancel, A092440.P4789894245916109107.a, A092440.P9739041573880748262.a, A093112, A093112.P7388753159867486684.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A092440

/-! ## A092440.P6896933804580167722

`A208900(2*(n+1))/2`
-/

namespace A092440.P6896933804580167722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208900 (2 * (n + 1)) : ℚ) / 2

end

end A092440.P6896933804580167722

namespace A092440

/-- `A208900(2*(n+1))/2` -/
def P6896933804580167722.Spec : Prop :=
  ∀ n, P6896933804580167722.a n = (A092440 n : ℚ)

end A092440

/-! ## A092440.P1103968044380385460

`A276918(A004273(n))`
-/

namespace A092440.P1103968044380385460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276918 (A004273 n).toNat

end

end A092440.P1103968044380385460

namespace A092440

/-- `A276918(A004273(n))` -/
def P1103968044380385460.Spec : Prop :=
  ∀ n, P1103968044380385460.a n = A092440 n

end A092440

/-! ## A092440.P18225822560616121850

`A171499(n)%A092431(n+1)`
-/

namespace A092440.P18225822560616121850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171499 n) (A092431 (n + 1))

end

end A092440.P18225822560616121850

namespace A092440

/-- `A171499(n)%A092431(n+1)` -/
def P18225822560616121850.Spec : Prop :=
  ∀ n, P18225822560616121850.a n = A092440 n

end A092440

/-! ## A092440.P18292274344665500421

`A164051(n+1)%A297928(n)`
-/

namespace A092440.P18292274344665500421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164051 (n + 1)) (A297928 n)

end

end A092440.P18292274344665500421

namespace A092440

/-- `A164051(n+1)%A297928(n)` -/
def P18292274344665500421.Spec : Prop :=
  ∀ n, P18292274344665500421.a n = A092440 n

end A092440

/-! ## A092440.P1771791244478900893

`(A020527(n)+2)/3`
-/

namespace A092440.P1771791244478900893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020527 n + 2 : ℚ) / 3

end

end A092440.P1771791244478900893

namespace A092440

/-- `(A020527(n)+2)/3` -/
def P1771791244478900893.Spec : Prop :=
  ∀ n, P1771791244478900893.a n = (A092440 n : ℚ)

end A092440

/-! ## A092440.P11247172613635890827

`A140529(n)%A005367(n)`
-/

namespace A092440.P11247172613635890827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140529 n) (A005367 n)

end

end A092440.P11247172613635890827

namespace A092440

/-- `A140529(n)%A005367(n)` -/
def P11247172613635890827.Spec : Prop :=
  ∀ n, P11247172613635890827.a n = A092440 n

end A092440

/-! ## A092440.P2060322148798175546

`A171496(n)%A140529(n)`
-/

namespace A092440.P2060322148798175546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171496 n) (A140529 n)

end

end A092440.P2060322148798175546

namespace A092440

/-- `A171496(n)%A140529(n)` -/
def P2060322148798175546.Spec : Prop :=
  ∀ n, P2060322148798175546.a n = A092440 n

end A092440

/-! ## A092440.P95983218980932025

`A103897(n+1)%A187560(n)`
-/

namespace A092440.P95983218980932025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103897 (n + 1)) (A187560 n)

end

end A092440.P95983218980932025

namespace A092440

/-- `A103897(n+1)%A187560(n)` -/
def P95983218980932025.Spec : Prop :=
  ∀ n, P95983218980932025.a n = A092440 n

end A092440

/-! ## A092440.P12788368445100623181

`A199209(n)%A164051(n+1)`
-/

namespace A092440.P12788368445100623181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199209 n) (A164051 (n + 1))

end

end A092440.P12788368445100623181

namespace A092440

/-- `A199209(n)%A164051(n+1)` -/
def P12788368445100623181.Spec : Prop :=
  ∀ n, P12788368445100623181.a n = A092440 n

end A092440

/-! ## A092440.P4599000333618779655

`A199116(n)%A028402(n+2)`
-/

namespace A092440.P4599000333618779655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A199116 n) (A028402 (n + 2))

end

end A092440.P4599000333618779655

namespace A092440

/-- `A199116(n)%A028402(n+2)` -/
def P4599000333618779655.Spec : Prop :=
  ∀ n, P4599000333618779655.a n = A092440 n

end A092440

/-!
# A092441: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

The programs for A092441, the canonical program `A092441.P6877956464463086644` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092441 has offset 0).

The definition of A092441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092441.P6877956464463086644

`2^(2*n+3)-2^(n+2)-2*(n+2)*(2^(n+1)-1)+(n+1)²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092441

/-- `2^(2*n+3)-2^(n+2)-2*(n+2)*(2^(n+1)-1)+(n+1)²` -/
def P6877956464463086644.Spec : Prop :=
  ∀ n, P6877956464463086644.a n = A092441 n

theorem P6877956464463086644.correct : P6877956464463086644.Spec := by
  intro n
  simp only [A092441]

end A092441

/-! ## A092441.P11544896918077226151

`A112830(∑[n+1]+n)`
-/

namespace A092441.P11544896918077226151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112830 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A092441.P11544896918077226151

namespace A092441

/-- `A112830(∑[n+1]+n)` -/
def P11544896918077226151.Spec : Prop :=
  ∀ n, P11544896918077226151.a n = A092441 n

end A092441

/-!
# A092442: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

The programs for A092442, the canonical program `A092442.P8376013778019993799` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092442 has offset 0).

The definition of A092442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092442.P8376013778019993799

`(n+1)*(2^n-1)-n²`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092442

/-- `(n+1)*(2^n-1)-n²` -/
def P8376013778019993799.Spec : Prop :=
  ∀ n, P8376013778019993799.a n = A092442 n

theorem P8376013778019993799.correct : P8376013778019993799.Spec := by
  intro n
  simp only [A092442]

end A092442

/-! ## A092442.P12904053387180200774

`abs(A058877(n+1)-n²)`
-/

namespace A092442.P12904053387180200774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058877 (n + 1) - (n ^ 2 : ℤ)|

end

end A092442.P12904053387180200774

namespace A092442

/-- `abs(A058877(n+1)-n²)` -/
def P12904053387180200774.Spec : Prop :=
  ∀ n, P12904053387180200774.a n = A092442 n

end A092442

/-! ## A092442.P7099148924681247445

`∑[A132750(n)-(2*n+1)]`
-/

namespace A092442.P7099148924681247445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132750 n - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092442.P7099148924681247445

namespace A092442

/-- `∑[A132750(n)-(2*n+1)]` -/
def P7099148924681247445.Spec : Prop :=
  ∀ n, P7099148924681247445.a n = A092442 n

end A092442

/-! ## A092442.P6881469682159545989

`∑[A001792(n)-floor(2/acot(n))]`
-/

namespace A092442.P6881469682159545989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092442.P6881469682159545989

namespace A092442

/-- `∑[A001792(n)-floor(2/acot(n))]` -/
def P6881469682159545989.Spec : Prop :=
  ∀ n, P6881469682159545989.a n = A092442 n

end A092442

/-! ## A092442.P3094061598029782069

`abs((n+1)*(n-A000079(n))+1)`
-/

namespace A092442.P3094061598029782069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((n : ℤ) - A000079 n) + 1|

end

end A092442.P3094061598029782069

namespace A092442

/-- `abs((n+1)*(n-A000079(n))+1)` -/
def P3094061598029782069.Spec : Prop :=
  ∀ n, P3094061598029782069.a n = A092442 n

end A092442

/-! ## A092442.P11142953461111072422

`abs((n+1)*(n-A000225(n))-n)`
-/

namespace A092442.P11142953461111072422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((n : ℤ) - A000225 n) - (n : ℤ)|

end

end A092442.P11142953461111072422

namespace A092442

/-- `abs((n+1)*(n-A000225(n))-n)` -/
def P11142953461111072422.Spec : Prop :=
  ∀ n, P11142953461111072422.a n = A092442 n

end A092442

/-! ## A092442.P7580182194609473630

`floor(A001787(n+1)-(n+1)/acot(n))`
-/

namespace A092442.P7580182194609473630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001787 (n + 1) : ℝ) - (n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A092442.P7580182194609473630

namespace A092442

/-- `floor(A001787(n+1)-(n+1)/acot(n))` -/
def P7580182194609473630.Spec : Prop :=
  ∀ n, P7580182194609473630.a n = A092442 n

end A092442

/-! ## A092442.P14474045790416164774

`abs(∑[2*n+1-Δ[A001787(n)]]-n)`
-/

namespace A092442.P14474045790416164774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A092442.P14474045790416164774

namespace A092442

/-- `abs(∑[2*n+1-Δ[A001787(n)]]-n)` -/
def P14474045790416164774.Spec : Prop :=
  ∀ n, P14474045790416164774.a n = A092442 n

end A092442

/-! ## A092442.P4336102021430633281

`∑[A001792(n)-A004277(n)]`
-/

namespace A092442.P4336102021430633281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092442.P4336102021430633281

namespace A092442

/-- `∑[A001792(n)-A004277(n)]` -/
def P4336102021430633281.Spec : Prop :=
  ∀ n, P4336102021430633281.a n = A092442 n

end A092442

/-! ## A092442.P4682093399989911400

`∑[∑[A045623(n)]-A004277(n)]`
-/

namespace A092442.P4682093399989911400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092442.P4682093399989911400

namespace A092442

/-- `∑[∑[A045623(n)]-A004277(n)]` -/
def P4682093399989911400.Spec : Prop :=
  ∀ n, P4682093399989911400.a n = A092442 n

end A092442

/-! ## A092442.P12982842328041703883

`∑[A001792(n)-∏{d}[2*n, A014963(#)]]`
-/

namespace A092442.P12982842328041703883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - ∏ d ∈ Nat.divisors (f2 n), A014963 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092442.P12982842328041703883

namespace A092442

/-- `∑[A001792(n)-∏{d}[2*n, A014963(#)]]` -/
def P12982842328041703883.Spec : Prop :=
  ∀ n, P12982842328041703883.a n = A092442 n

end A092442

/-!
# A092443: Sequence arising from enumeration of domino tilings of Aztec Pillow-like regions.

The programs for A092443, the canonical program `A092443.P10839671212827273342` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092443 has offset 1).

The definition of A092443 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092443.P11816720835905806845

`(n+3)*A001700(n)`
-/

namespace A092443.P11816720835905806845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A001700 n

end

end A092443.P11816720835905806845

namespace A092443

/-- `(n+3)*A001700(n)` -/
def P11816720835905806845.Spec : Prop :=
  ∀ n, P11816720835905806845.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P5371362123894469461

`A000108(n+1)*C(n+3, 2)`
-/

namespace A092443.P5371362123894469461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * (Nat.choose (n + 3) 2 : ℤ)

end

end A092443.P5371362123894469461

namespace A092443

/-- `A000108(n+1)*C(n+3, 2)` -/
def P5371362123894469461.Spec : Prop :=
  ∀ n, P5371362123894469461.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P10839671212827273342

`A002457(n)+A000984(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092443

/-- `A002457(n)+A000984(n+1)` -/
def P10839671212827273342.Spec : Prop :=
  ∀ n, P10839671212827273342.a n = A092443 (n + 1)

theorem P10839671212827273342.correct : P10839671212827273342.Spec := by
  intro n
  simp only [A092443, Nat.add_sub_cancel]

end A092443

/-! ## A092443.P9562011415124380502

`(n+3)*C(2*(n+1)-1, n+1)`
-/

namespace A092443.P9562011415124380502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat (n + 1)

end

end A092443.P9562011415124380502

namespace A092443

/-- `(n+3)*C(2*(n+1)-1, n+1)` -/
def P9562011415124380502.Spec : Prop :=
  ∀ n, (P9562011415124380502.a n : ℤ) = A092443 (n + 1)

end A092443

/-! ## A092443.P388042180680963334

`(2*(n+1)-1)!/n!²+(2*(n+1))!/(n+1)!²`
-/

namespace A092443.P388042180680963334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((2 * (n + 1) : ℤ) - 1).toNat : ℚ) / (Nat.factorial n ^ 2 : ℚ) + (Nat.factorial (2 * (n + 1)) : ℚ) / (Nat.factorial (n + 1) ^ 2 : ℚ)

end

end A092443.P388042180680963334

namespace A092443

/-- `(2*(n+1)-1)!/n!²+(2*(n+1))!/(n+1)!²` -/
def P388042180680963334.Spec : Prop :=
  ∀ n, P388042180680963334.a n = (A092443 (n + 1) : ℚ)

end A092443

/-! ## A092443.P5895598777068882186

`(n+3)*∏[4-2/(n+1)]/2`
-/

namespace A092443.P5895598777068882186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j) / 2)

end

end A092443.P5895598777068882186

namespace A092443

/-- `(n+3)*∏[4-2/(n+1)]/2` -/
def P5895598777068882186.Spec : Prop :=
  ∀ n, P5895598777068882186.a n = (A092443 (n + 1) : ℚ)

end A092443

/-! ## A092443.P2010872938896942793

`A013498(2*(n+2))`
-/

namespace A092443.P2010872938896942793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013498 (2 * (n + 2))

end

end A092443.P2010872938896942793

namespace A092443

/-- `A013498(2*(n+2))` -/
def P2010872938896942793.Spec : Prop :=
  ∀ n, P2010872938896942793.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P2166614125710048059

`abs((n+3)*A110556(n+1))`
-/

namespace A092443.P2166614125710048059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 3 : ℤ) * A110556 (n + 1)|

end

end A092443.P2166614125710048059

namespace A092443

/-- `abs((n+3)*A110556(n+1))` -/
def P2166614125710048059.Spec : Prop :=
  ∀ n, P2166614125710048059.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P10527031784769191484

`Δ[A024718(n)]+(4-n/∑[n])*a(n-1)` with `a(0)=3`
-/

namespace A092443.P10527031784769191484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (f1 (n + 1) - f1 n : ℚ) + (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * a (n - 1)

end

end A092443.P10527031784769191484

namespace A092443

/-- `Δ[A024718(n)]+(4-n/∑[n])*a(n-1)` -/
def P10527031784769191484.Spec : Prop :=
  ∀ n, P10527031784769191484.a n = (A092443 (n + 1) : ℚ)

end A092443

/-! ## A092443.P18379952512321082671

`record[A057977(n)]+(4-n/∑[n])*a(n-1)` with `a(0)=3`
-/

namespace A092443.P18379952512321082671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)) * a (n - 1)

end

end A092443.P18379952512321082671

namespace A092443

/-- `record[A057977(n)]+(4-n/∑[n])*a(n-1)` -/
def P18379952512321082671.Spec : Prop :=
  ∀ n, P18379952512321082671.a n = (A092443 (n + 1) : ℚ)

end A092443

/-! ## A092443.P12454658546342964451

`(4-n/∑[n])*a(n-1)+A010763(n)+1` with `a(0)=3`
-/

namespace A092443.P12454658546342964451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * a (n - 1) + (A010763 n + 1 : ℚ)

end

end A092443.P12454658546342964451

namespace A092443

/-- `(4-n/∑[n])*a(n-1)+A010763(n)+1` -/
def P12454658546342964451.Spec : Prop :=
  ∀ n, P12454658546342964451.a n = (A092443 (n + 1) : ℚ)

end A092443

/-! ## A092443.P851862668519939306

`A088218(n+1)+(4-n/∑[n])*a(n-1)` with `a(0)=3`
-/

namespace A092443.P851862668519939306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (A088218 (n + 1) : ℚ) + (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * a (n - 1)

end

end A092443.P851862668519939306

namespace A092443

/-- `A088218(n+1)+(4-n/∑[n])*a(n-1)` -/
def P851862668519939306.Spec : Prop :=
  ∀ n, P851862668519939306.a n = (A092443 (n + 1) : ℚ)

end A092443

/-! ## A092443.P1059681602996376074

`A194460(n+1)+A004171(n)`
-/

namespace A092443.P1059681602996376074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194460 (n + 1) + A004171 n

end

end A092443.P1059681602996376074

namespace A092443

/-- `A194460(n+1)+A004171(n)` -/
def P1059681602996376074.Spec : Prop :=
  ∀ n, P1059681602996376074.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P8977512118399079069

`A097070(n+2)+A001700(n)`
-/

namespace A092443.P8977512118399079069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 2) + A001700 n

end

end A092443.P8977512118399079069

namespace A092443

/-- `A097070(n+2)+A001700(n)` -/
def P8977512118399079069.Spec : Prop :=
  ∀ n, P8977512118399079069.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P743789675267844925

`A002740(n+2)+A001700(n+1)`
-/

namespace A092443.P743789675267844925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002740 (n + 2) + A001700 (n + 1)

end

end A092443.P743789675267844925

namespace A092443

/-- `A002740(n+2)+A001700(n+1)` -/
def P743789675267844925.Spec : Prop :=
  ∀ n, P743789675267844925.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P8058927215205055322

`A034274(n+1)+A024482(n+2)`
-/

namespace A092443.P8058927215205055322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034274 (n + 1) + A024482 (n + 2)

end

end A092443.P8058927215205055322

namespace A092443

/-- `A034274(n+1)+A024482(n+2)` -/
def P8058927215205055322.Spec : Prop :=
  ∀ n, P8058927215205055322.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P2557031089059638158

`A097070(n+2)+A088218(n+1)`
-/

namespace A092443.P2557031089059638158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097070 (n + 2) + A088218 (n + 1)

end

end A092443.P2557031089059638158

namespace A092443

/-- `A097070(n+2)+A088218(n+1)` -/
def P2557031089059638158.Spec : Prop :=
  ∀ n, P2557031089059638158.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P16202170505157813778

`A088218(n+2)+A002740(n+2)`
-/

namespace A092443.P16202170505157813778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 2) + A002740 (n + 2)

end

end A092443.P16202170505157813778

namespace A092443

/-- `A088218(n+2)+A002740(n+2)` -/
def P16202170505157813778.Spec : Prop :=
  ∀ n, P16202170505157813778.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P5869351303970480094

`A210736(2*n+3)+A002457(n)`
-/

namespace A092443.P5869351303970480094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (2 * n + 3) + A002457 n

end

end A092443.P5869351303970480094

namespace A092443

/-- `A210736(2*n+3)+A002457(n)` -/
def P5869351303970480094.Spec : Prop :=
  ∀ n, P5869351303970480094.a n = A092443 (n + 1)

end A092443

/-! ## A092443.P2979940765011051140

`A000984(n+1)+abs(A331552(2*n))`
-/

namespace A092443.P2979940765011051140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (n + 1) + |A331552 (2 * n)|

end

end A092443.P2979940765011051140

namespace A092443

/-- `A000984(n+1)+abs(A331552(2*n))` -/
def P2979940765011051140.Spec : Prop :=
  ∀ n, P2979940765011051140.a n = A092443 (n + 1)

end A092443

/-!
# A092444: a(n+1) = 11*a(n) - a(n-1) - 3, a(0)=a(1)=1.

The programs for A092444, there is no canonical definition to state claims against.
-/

/-! ## A092444.P7176963027700131899

`abs(a(n-2)-11*a(n-1))-3` with `a(0)=1, a(1)=1`
-/

namespace A092444.P7176963027700131899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  |a (n - 2) - 11 * a (n - 1)| - 3

end

end A092444.P7176963027700131899

/-! ## A092444.P2070537734156653397

`∑[11*a(n-1)-a(n-2)]-1` with `a(0)=2, a(1)=0, a(2)=6`
-/

namespace A092444.P2070537734156653397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 6] fun n f1 =>
  11 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A092444.P2070537734156653397

/-! ## A092444.P14137673137767568815

`A322573(or(1, comp[2*(n+1)]))`
-/

namespace A092444.P14137673137767568815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322573 (Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A092444.P14137673137767568815

/-! ## A092444.P13012694384844396361

`∑[A305889(xor(3, A111284(n+1)))]`
-/

namespace A092444.P13012694384844396361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305889 (Int.xor 3 (A111284 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092444.P13012694384844396361

/-! ## A092444.P8556073729194989139

`((a(n-1)+3)*a(n-1)+3)/a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A092444.P8556073729194989139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((a (n - 1) + 3) * a (n - 1) + 3) / a (n - 2)

end

end A092444.P8556073729194989139

/-!
# A092445: a(n) is the first term of the sexy prime quadruple a(n), a(n)+6, a(n)+12 and a(n)+18 that becomes a perfect square if the rightmost digit (1) is removed.

The programs for A092445, there is no canonical definition to state claims against.
-/

/-! ## A092445.P9831806517544422057

`A030685(A092446(n+1))`
-/

namespace A092445.P9831806517544422057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030685 (A092446 (n + 1)).toNat

end

end A092445.P9831806517544422057

/-! ## A092445.P1176654589239810529

`∩[A023271(n+1), A158187(n)]`
-/

namespace A092445.P1176654589239810529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092445.P1176654589239810529

/-! ## A092445.P9177261515885295728

`∩[A023271(n+1), A121509(n+1)]`
-/

namespace A092445.P9177261515885295728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092445.P9177261515885295728

/-! ## A092445.P4600661105160663973

`∩[A023271(n+1), A201709(n+1)]`
-/

namespace A092445.P4600661105160663973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092445.P4600661105160663973

/-! ## A092445.P952080107112626589

`∩[A023271(n+1), A275058(n+1)]`
-/

namespace A092445.P952080107112626589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092445.P952080107112626589

/-!
# A092446: Numbers k such that if P = 10*k^2+1, then P, P+6, P+12 and P+18 are all primes.

The programs for A092446, there is no canonical definition to state claims against.
-/

/-! ## A092446.P13132395073809812993

`floor(sqrt(A092445(n+1)/10))`
-/

namespace A092446.P13132395073809812993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A092445 (n + 1) : ℚ) / 10 : ℝ)⌋

end

end A092446.P13132395073809812993

/-!
# A092447: Concatenate odd primes in decreasing order.

The programs for A092447, there is no canonical definition to state claims against.
-/

/-! ## A092447.P6439014290842618919

`floor(A038394(n+2)/10)`
-/

namespace A092447.P6439014290842618919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038394 (n + 2) : ℚ) / 10⌋

end

end A092447.P6439014290842618919

/-! ## A092447.P2485025490719111207

`∑[Δ[A038394(n+1)]/10]`
-/

namespace A092447.P2485025490719111207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038394 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092447.P2485025490719111207

/-!
# A092451: Numbers that either contain the digit 2 or are divisible by 2.

The programs for A092451, the canonical program `A092451.P11472134814657966417` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092451 has offset 0).

The definition of A092451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092451.P11472134814657966417

`comp[or(1, A052404(n+1))]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092451

/-- `comp[or(1, A052404(n+1))]` -/
def P11472134814657966417.Spec : Prop :=
  ∀ n, (P11472134814657966417.a n : ℤ) = A092451 n

theorem P11472134814657966417.correct : P11472134814657966417.Spec := by
  intro n
  simp only [A092451]

end A092451

/-! ## A092451.P5559234420484436079

`∪[2*n, A011532(n+1)]`
-/

namespace A092451.P5559234420484436079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092451.P5559234420484436079

namespace A092451

/-- `∪[2*n, A011532(n+1)]` -/
def P5559234420484436079.Spec : Prop :=
  ∀ n, (P5559234420484436079.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P5235388670531026892

`∪[A011532(n+1), A005843(n)]`
-/

namespace A092451.P5235388670531026892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092451.P5235388670531026892

namespace A092451

/-- `∪[A011532(n+1), A005843(n)]` -/
def P5235388670531026892.Spec : Prop :=
  ∀ n, (P5235388670531026892.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P9167882344896638593

`∪[A011532(n+1), A163300(n+1)]`
-/

namespace A092451.P9167882344896638593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092451.P9167882344896638593

namespace A092451

/-- `∪[A011532(n+1), A163300(n+1)]` -/
def P9167882344896638593.Spec : Prop :=
  ∀ n, (P9167882344896638593.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P6579169016603372977

`eq[1, gcd(8/gcd(2, n)-3, A316863(n))]`
-/

namespace A092451.P6579169016603372977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (8 / (Nat.gcd 2 n : ℚ) - 3)) (A316863 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092451.P6579169016603372977

namespace A092451

/-- `eq[1, gcd(8/gcd(2, n)-3, A316863(n))]` -/
def P6579169016603372977.Spec : Prop :=
  ∀ n, (P6579169016603372977.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P18342985546594877873

`lt[1-A316863(n), A010766(a(n-1)+1)]` with `a(0)=4`
-/

namespace A092451.P18342985546594877873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A010766 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092451.P18342985546594877873

namespace A092451

/-- `lt[1-A316863(n), A010766(a(n-1)+1)]` -/
def P18342985546594877873.Spec : Prop :=
  ∀ n, (P18342985546594877873.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P4455811055876505743

`eq[A004177(n)%A109613(n), A004177(n)]`
-/

namespace A092451.P4455811055876505743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004177 n) (A109613 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092451.P4455811055876505743

namespace A092451

/-- `eq[A004177(n)%A109613(n), A004177(n)]` -/
def P4455811055876505743.Spec : Prop :=
  ∀ n, (P4455811055876505743.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P6902772868156617414

`lt[A000035(n), A040001(A211396(n))]`
-/

namespace A092451.P6902772868156617414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A211396 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092451.P6902772868156617414

namespace A092451

/-- `lt[A000035(n), A040001(A211396(n))]` -/
def P6902772868156617414.Spec : Prop :=
  ∀ n, (P6902772868156617414.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P7572732540176156717

`eq[2, A211396(A322489(n+1))]`
-/

namespace A092451.P7572732540176156717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211396 (A322489 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092451.P7572732540176156717

namespace A092451

/-- `eq[2, A211396(A322489(n+1))]` -/
def P7572732540176156717.Spec : Prop :=
  ∀ n, (P7572732540176156717.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P17164608646180130037

`eq[A000034(n), A094267(A098736(n))]`
-/

namespace A092451.P17164608646180130037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A098736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092451.P17164608646180130037

namespace A092451

/-- `eq[A000034(n), A094267(A098736(n))]` -/
def P17164608646180130037.Spec : Prop :=
  ∀ n, (P17164608646180130037.a n : ℤ) = A092451 n

end A092451

/-! ## A092451.P2943600049580933921

`eq[A084642(n), A094267(A098736(n))]`
-/

namespace A092451.P2943600049580933921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A098736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092451.P2943600049580933921

namespace A092451

/-- `eq[A084642(n), A094267(A098736(n))]` -/
def P2943600049580933921.Spec : Prop :=
  ∀ n, (P2943600049580933921.a n : ℤ) = A092451 n

end A092451

/-!
# A092452: Numbers that either contain the digit 3 or are divisible by 3.

The programs for A092452, the canonical program `A092452.P13510736005175417312` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092452 has offset 0).

The definition of A092452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092452.P13510736005175417312

`∪[3*n, A011533(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092452

/-- `∪[3*n, A011533(n+1)]` -/
def P13510736005175417312.Spec : Prop :=
  ∀ n, (P13510736005175417312.a n : ℤ) = A092452 n

theorem P13510736005175417312.correct : P13510736005175417312.Spec := by
  intro n
  simp only [A092452]

end A092452

/-! ## A092452.P5697346467283451668

`∪[A011533(n+1), A008585(n)]`
-/

namespace A092452.P5697346467283451668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092452.P5697346467283451668

namespace A092452

/-- `∪[A011533(n+1), A008585(n)]` -/
def P5697346467283451668.Spec : Prop :=
  ∀ n, (P5697346467283451668.a n : ℤ) = A092452 n

end A092452

/-! ## A092452.P7582735165926916596

`lt[n²%3, exp(∑{digits}[n, val(#+4, 7)])]`
-/

namespace A092452.P7582735165926916596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 4) 7).sum : ℕ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A092452.P7582735165926916596

namespace A092452

/-- `lt[n²%3, exp(∑{digits}[n, val(#+4, 7)])]` -/
def P7582735165926916596.Spec : Prop :=
  ∀ n, (P7582735165926916596.a n : ℤ) = A092452 n

end A092452

/-! ## A092452.P17043608161285821090

`lt[A004178(n), Δ[ceil(n/3)]+n]`
-/

namespace A092452.P17043608161285821090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092452.P17043608161285821090

namespace A092452

/-- `lt[A004178(n), Δ[ceil(n/3)]+n]` -/
def P17043608161285821090.Spec : Prop :=
  ∀ n, (P17043608161285821090.a n : ℤ) = A092452 n

end A092452

/-! ## A092452.P95044846734850540

`lt[A011655(n), cosh(∑{digits}[n, val(#+4, 7)])]`
-/

namespace A092452.P95044846734850540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh ((((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 4) 7).sum : ℕ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A092452.P95044846734850540

namespace A092452

/-- `lt[A011655(n), cosh(∑{digits}[n, val(#+4, 7)])]` -/
def P95044846734850540.Spec : Prop :=
  ∀ n, (P95044846734850540.a n : ℤ) = A092452 n

end A092452

/-! ## A092452.P7808280634790163101

`eq[1, A316864(n)^A266578(n+1)]`
-/

namespace A092452.P7808280634790163101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316864 n : ℚ) ^ (A266578 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A092452.P7808280634790163101

namespace A092452

/-- `eq[1, A316864(n)^A266578(n+1)]` -/
def P7808280634790163101.Spec : Prop :=
  ∀ n, (P7808280634790163101.a n : ℤ) = A092452 n

end A092452

/-!
# A092453: Numbers that either contain the digit 4 or are divisible by 4.

The programs for A092453, the canonical program `A092453.P9438286494143066281` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092453 has offset 0).

The definition of A092453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092453.P9438286494143066281

`∪[A011534(n+1), A008586(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A092453

/-- `∪[A011534(n+1), A008586(n)]` -/
def P9438286494143066281.Spec : Prop :=
  ∀ n, (P9438286494143066281.a n : ℤ) = A092453 n

theorem P9438286494143066281.correct : P9438286494143066281.Spec := by
  intro n
  simp only [A092453]

end A092453

/-! ## A092453.P17930355284444035140

`lt[2*A225058(A004179(n)), n]`
-/

namespace A092453.P17930355284444035140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225058 (A004179 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092453.P17930355284444035140

namespace A092453

/-- `lt[2*A225058(A004179(n)), n]` -/
def P17930355284444035140.Spec : Prop :=
  ∀ n, (P17930355284444035140.a n : ℤ) = A092453 n

end A092453

/-! ## A092453.P5275603763286232808

`lt[A004179(n), A059029(A028242(n))]`
-/

namespace A092453.P5275603763286232808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (A028242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092453.P5275603763286232808

namespace A092453

/-- `lt[A004179(n), A059029(A028242(n))]` -/
def P5275603763286232808.Spec : Prop :=
  ∀ n, (P5275603763286232808.a n : ℤ) = A092453 n

end A092453

/-! ## A092453.P6676512566064705924

`lt[A225058(A004179(n)), A002264(n)]`
-/

namespace A092453.P6676512566064705924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092453.P6676512566064705924

namespace A092453

/-- `lt[A225058(A004179(n)), A002264(n)]` -/
def P6676512566064705924.Spec : Prop :=
  ∀ n, (P6676512566064705924.a n : ℤ) = A092453 n

end A092453

/-! ## A092453.P5363645325535958506

`lt[A225058(A004179(n)), A008621(n)]`
-/

namespace A092453.P5363645325535958506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092453.P5363645325535958506

namespace A092453

/-- `lt[A225058(A004179(n)), A008621(n)]` -/
def P5363645325535958506.Spec : Prop :=
  ∀ n, (P5363645325535958506.a n : ℤ) = A092453 n

end A092453

/-! ## A092453.P2555349048177233571

`lt[A225058(A004179(n)), A026741(n)]`
-/

namespace A092453.P2555349048177233571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092453.P2555349048177233571

namespace A092453

/-- `lt[A225058(A004179(n)), A026741(n)]` -/
def P2555349048177233571.Spec : Prop :=
  ∀ n, (P2555349048177233571.a n : ℤ) = A092453 n

end A092453

/-! ## A092453.P10454927456247405215

`lt[A225058(A004179(n)), A059169(n+1)]`
-/

namespace A092453.P10454927456247405215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 (A004179 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092453.P10454927456247405215

namespace A092453

/-- `lt[A225058(A004179(n)), A059169(n+1)]` -/
def P10454927456247405215.Spec : Prop :=
  ∀ n, (P10454927456247405215.a n : ℤ) = A092453 n

end A092453

/-!
# A092454: Numbers that either contain the digit 5 or are divisible by 5.

The programs for A092454, the canonical program `A092454.P5847463884604930939` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092454 has offset 0).

The definition of A092454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092454.P5847463884604930939

`∪[5*n, A011535(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092454

/-- `∪[5*n, A011535(n+1)]` -/
def P5847463884604930939.Spec : Prop :=
  ∀ n, (P5847463884604930939.a n : ℤ) = A092454 n

theorem P5847463884604930939.correct : P5847463884604930939.Spec := by
  intro n
  simp only [A092454]

end A092454

/-! ## A092454.P6783352999508722464

`∪[A011535(n+1), A008587(n)]`
-/

namespace A092454.P6783352999508722464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092454.P6783352999508722464

namespace A092454

/-- `∪[A011535(n+1), A008587(n)]` -/
def P6783352999508722464.Spec : Prop :=
  ∀ n, (P6783352999508722464.a n : ℤ) = A092454 n

end A092454

/-! ## A092454.P4659439932108006632

`∪[A011535(n+1), A008592(n)]`
-/

namespace A092454.P4659439932108006632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092454.P4659439932108006632

namespace A092454

/-- `∪[A011535(n+1), A008592(n)]` -/
def P4659439932108006632.Spec : Prop :=
  ∀ n, (P4659439932108006632.a n : ℤ) = A092454 n

end A092454

/-! ## A092454.P18087373057615609840

`eq[0, A230101(n)%5]`
-/

namespace A092454.P18087373057615609840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230101 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092454.P18087373057615609840

namespace A092454

/-- `eq[0, A230101(n)%5]` -/
def P18087373057615609840.Spec : Prop :=
  ∀ n, (P18087373057615609840.a n : ℤ) = A092454 n

end A092454

/-! ## A092454.P14139582298172932402

`lt[A176059(n), gcd(10, A230101(n))]`
-/

namespace A092454.P14139582298172932402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176059 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A230101 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092454.P14139582298172932402

namespace A092454

/-- `lt[A176059(n), gcd(10, A230101(n))]` -/
def P14139582298172932402.Spec : Prop :=
  ∀ n, (P14139582298172932402.a n : ℤ) = A092454 n

end A092454

/-!
# A092455: Numbers that either contain the digit 6 or are divisible by 6.

The programs for A092455, the canonical program `A092455.P1329306576228413859` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092455 has offset 0).

The definition of A092455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092455.P1329306576228413859

`∪[A011536(n+1), 6*n]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092455

/-- `∪[A011536(n+1), 6*n]` -/
def P1329306576228413859.Spec : Prop :=
  ∀ n, (P1329306576228413859.a n : ℤ) = A092455 n

theorem P1329306576228413859.correct : P1329306576228413859.Spec := by
  intro n
  simp only [A092455]

end A092455

/-! ## A092455.P7333384803452141787

`∪[A008588(n), A011536(n+1)]`
-/

namespace A092455.P7333384803452141787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011536 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092455.P7333384803452141787

namespace A092455

/-- `∪[A008588(n), A011536(n+1)]` -/
def P7333384803452141787.Spec : Prop :=
  ∀ n, (P7333384803452141787.a n : ℤ) = A092455 n

end A092455

/-! ## A092455.P16164344704007132265

`lt[A097325(n), cosh(A316867(n))]`
-/

namespace A092455.P16164344704007132265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A316867 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A092455.P16164344704007132265

namespace A092455

/-- `lt[A097325(n), cosh(A316867(n))]` -/
def P16164344704007132265.Spec : Prop :=
  ∀ n, (P16164344704007132265.a n : ℤ) = A092455 n

end A092455

/-! ## A092455.P11491066695770086633

`lt[n+1, A136804(A003415(2*n+3))/(-1)^n]`
-/

namespace A092455.P11491066695770086633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136804 (A003415 (2 * n + 3)).toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A092455.P11491066695770086633

namespace A092455

/-- `lt[n+1, A136804(A003415(2*n+3))/(-1)^n]` -/
def P11491066695770086633.Spec : Prop :=
  ∀ n, (P11491066695770086633.a n : ℤ) = A092455 n

end A092455

/-! ## A092455.P14391243741861698259

`eq[A168008(n+5), A280261(A020483(n))]`
-/

namespace A092455.P14391243741861698259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168008 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280261 (A020483 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092455.P14391243741861698259

namespace A092455

/-- `eq[A168008(n+5), A280261(A020483(n))]` -/
def P14391243741861698259.Spec : Prop :=
  ∀ n, (P14391243741861698259.a n : ℤ) = A092455 n

end A092455

/-!
# A092456: Numbers that either contain the digit 8 or are divisible by 8.

The programs for A092456, the canonical program `A092456.P17302602622088378195` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092456 has offset 0).

The definition of A092456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092456.P17302602622088378195

`∪[8*n, A011538(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092456

/-- `∪[8*n, A011538(n+1)]` -/
def P17302602622088378195.Spec : Prop :=
  ∀ n, (P17302602622088378195.a n : ℤ) = A092456 n

theorem P17302602622088378195.correct : P17302602622088378195.Spec := by
  intro n
  simp only [A092456]

end A092456

/-! ## A092456.P14866130026175903433

`∪[A011538(n+1), A008590(n)]`
-/

namespace A092456.P14866130026175903433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092456.P14866130026175903433

namespace A092456

/-- `∪[A011538(n+1), A008590(n)]` -/
def P14866130026175903433.Spec : Prop :=
  ∀ n, (P14866130026175903433.a n : ℤ) = A092456 n

end A092456

/-! ## A092456.P5417301611307529172

`eq[A073610(3*(n+1)), A073610(A195270(3*n+4))]`
-/

namespace A092456.P5417301611307529172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073610 (A195270 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092456.P5417301611307529172

namespace A092456

/-- `eq[A073610(3*(n+1)), A073610(A195270(3*n+4))]` -/
def P5417301611307529172.Spec : Prop :=
  ∀ n, (P5417301611307529172.a n : ℤ) = A092456 n

end A092456

/-! ## A092456.P13033957658567418130

`eq[A178489(n), A357941(A158416(n))]`
-/

namespace A092456.P13033957658567418130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357941 (A158416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092456.P13033957658567418130

namespace A092456

/-- `eq[A178489(n), A357941(A158416(n))]` -/
def P13033957658567418130.Spec : Prop :=
  ∀ n, (P13033957658567418130.a n : ℤ) = A092456 n

end A092456

/-! ## A092456.P16914081329667540855

`lt[A037003(n+1), A326842(A017257(n))]`
-/

namespace A092456.P16914081329667540855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 (A017257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092456.P16914081329667540855

namespace A092456

/-- `lt[A037003(n+1), A326842(A017257(n))]` -/
def P16914081329667540855.Spec : Prop :=
  ∀ n, (P16914081329667540855.a n : ℤ) = A092456 n

end A092456

/-!
# A092457: Numbers that either contain the digit 9 or are divisible by 9.

The programs for A092457, there is no canonical definition to state claims against.
-/

/-! ## A092457.P5192671736032781926

`∪[A011539(n+1), A008591(n)]`
-/

namespace A092457.P5192671736032781926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A092457.P5192671736032781926

/-! ## A092457.P16887240760557587012

`lt[A168182(n), A181061(A064770(n))]`
-/

namespace A092457.P16887240760557587012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168182 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181061 (A064770 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092457.P16887240760557587012

/-! ## A092457.P6050453649611338004

`eq[A019426(2*n), A127844(n+2)]`
-/

namespace A092457.P6050453649611338004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127844 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092457.P6050453649611338004

/-! ## A092457.P8678288448866890974

`lt[A007954((n+1)*111), 2]`
-/

namespace A092457.P8678288448866890974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 ((n + 1) * 111)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A092457.P8678288448866890974

/-! ## A092457.P4100502464872136934

`eq[A017877(n), A177274(n)]`
-/

namespace A092457.P4100502464872136934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017877 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092457.P4100502464872136934

/-!
# A092459: Numbers that are not Catalan numbers (A000108).

The programs for A092459, the canonical program `A092459.P2398461548746564961` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092459 has offset 1).

The definition of A092459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092459.P2398461548746564961

`comp[A000108(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092459

/-- `comp[A000108(n)]` -/
def P2398461548746564961.Spec : Prop :=
  ∀ n, (P2398461548746564961.a n : ℤ) = A092459 (n + 1)

theorem P2398461548746564961.correct : P2398461548746564961.Spec := by
  intro n
  simp only [A092459, Nat.add_sub_cancel]

end A092459

/-! ## A092459.P1974868683497795215

`comp[A099363(n)]`
-/

namespace A092459.P1974868683497795215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099363 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P1974868683497795215

namespace A092459

/-- `comp[A099363(n)]` -/
def P1974868683497795215.Spec : Prop :=
  ∀ n, (P1974868683497795215.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P18358522029038407727

`comp[A099364(n)]`
-/

namespace A092459.P18358522029038407727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099364 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P18358522029038407727

namespace A092459

/-- `comp[A099364(n)]` -/
def P18358522029038407727.Spec : Prop :=
  ∀ n, (P18358522029038407727.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P10099057004495643844

`comp[A120588(n)]`
-/

namespace A092459.P10099057004495643844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P10099057004495643844

namespace A092459

/-- `comp[A120588(n)]` -/
def P10099057004495643844.Spec : Prop :=
  ∀ n, (P10099057004495643844.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P6190462429276151296

`comp[A168256(n)]`
-/

namespace A092459.P6190462429276151296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168256 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P6190462429276151296

namespace A092459

/-- `comp[A168256(n)]` -/
def P6190462429276151296.Spec : Prop :=
  ∀ n, (P6190462429276151296.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P15278584386613110078

`comp[A208355(n)]`
-/

namespace A092459.P15278584386613110078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P15278584386613110078

namespace A092459

/-- `comp[A208355(n)]` -/
def P15278584386613110078.Spec : Prop :=
  ∀ n, (P15278584386613110078.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P4337415577768925035

`comp[abs(A168491(n))]`
-/

namespace A092459.P4337415577768925035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P4337415577768925035

namespace A092459

/-- `comp[abs(A168491(n))]` -/
def P4337415577768925035.Spec : Prop :=
  ∀ n, (P4337415577768925035.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P2821670402172274964

`comp[A296666(n²)]`
-/

namespace A092459.P2821670402172274964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296666 (n ^ 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P2821670402172274964

namespace A092459

/-- `comp[A296666(n²)]` -/
def P2821670402172274964.Spec : Prop :=
  ∀ n, (P2821670402172274964.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P10729419781344502580

`comp[A039598(∑[n])]`
-/

namespace A092459.P10729419781344502580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P10729419781344502580

namespace A092459

/-- `comp[A039598(∑[n])]` -/
def P10729419781344502580.Spec : Prop :=
  ∀ n, (P10729419781344502580.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P17804397984480970873

`comp[A039599(∑[n])]`
-/

namespace A092459.P17804397984480970873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P17804397984480970873

namespace A092459

/-- `comp[A039599(∑[n])]` -/
def P17804397984480970873.Spec : Prop :=
  ∀ n, (P17804397984480970873.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P15580247861465723605

`comp[A054445(∑[n])]`
-/

namespace A092459.P15580247861465723605
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054445 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P15580247861465723605

namespace A092459

/-- `comp[A054445(∑[n])]` -/
def P15580247861465723605.Spec : Prop :=
  ∀ n, (P15580247861465723605.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P2453919709620129593

`comp[A060693(∑[n])]`
-/

namespace A092459.P2453919709620129593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P2453919709620129593

namespace A092459

/-- `comp[A060693(∑[n])]` -/
def P2453919709620129593.Spec : Prop :=
  ∀ n, (P2453919709620129593.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P9728185208379485698

`comp[A110488(∑[n])]`
-/

namespace A092459.P9728185208379485698
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110488 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P9728185208379485698

namespace A092459

/-- `comp[A110488(∑[n])]` -/
def P9728185208379485698.Spec : Prop :=
  ∀ n, (P9728185208379485698.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P4292863421173728409

`comp[A124644(∑[n])]`
-/

namespace A092459.P4292863421173728409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124644 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P4292863421173728409

namespace A092459

/-- `comp[A124644(∑[n])]` -/
def P4292863421173728409.Spec : Prop :=
  ∀ n, (P4292863421173728409.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P9993940318122729268

`comp[A165621(∑[n])]`
-/

namespace A092459.P9993940318122729268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165621 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P9993940318122729268

namespace A092459

/-- `comp[A165621(∑[n])]` -/
def P9993940318122729268.Spec : Prop :=
  ∀ n, (P9993940318122729268.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P11436891265697221339

`comp[A280470(∑[n])]`
-/

namespace A092459.P11436891265697221339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P11436891265697221339

namespace A092459

/-- `comp[A280470(∑[n])]` -/
def P11436891265697221339.Spec : Prop :=
  ∀ n, (P11436891265697221339.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P10061423307056139215

`comp[record[A100247(n)]]`
-/

namespace A092459.P10061423307056139215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092459.P10061423307056139215

namespace A092459

/-- `comp[record[A100247(n)]]` -/
def P10061423307056139215.Spec : Prop :=
  ∀ n, (P10061423307056139215.a n : ℤ) = A092459 (n + 1)

end A092459

/-! ## A092459.P4523678983252115557

`eq[0, A010058(n)]`
-/

namespace A092459.P4523678983252115557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A092459.P4523678983252115557

namespace A092459

/-- `eq[0, A010058(n)]` -/
def P4523678983252115557.Spec : Prop :=
  ∀ n, (P4523678983252115557.a n : ℤ) = A092459 (n + 1)

end A092459

/-!
# A092460: Numbers that are not Bell numbers (A000110).

The programs for A092460, there is no canonical definition to state claims against.
-/

/-! ## A092460.P2049254800020877353

`comp[floor(3^(n²/10))]`
-/

namespace A092460.P2049254800020877353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℝ) ^ ((n ^ 2 : ℚ) / 10 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A092460.P2049254800020877353

/-! ## A092460.P13169175571330233009

`round(∑[root(2, cot(5)+n)])`
-/

namespace A092460.P13169175571330233009
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (1 / (Real.cot (5 : ℝ) + (n : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092460.P13169175571330233009

/-! ## A092460.P582930764620406106

`char[4*a(n-1)]+a(n-1)+1` with `a(0)=0, a(1)=3`
-/

namespace A092460.P582930764620406106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  4 * f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1) + 1

end

end A092460.P582930764620406106

/-! ## A092460.P5223007014539809323

`eq[0, char[A000110(n)]]`
-/

namespace A092460.P5223007014539809323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092460.P5223007014539809323

/-! ## A092460.P17786490868679031727

`eq[0, char[A050315(n)]]`
-/

namespace A092460.P17786490868679031727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092460.P17786490868679031727

/-! ## A092460.P13158083439127985707

`eq[0, char[A056272(n)]]`
-/

namespace A092460.P13158083439127985707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056272 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092460.P13158083439127985707

/-! ## A092460.P7721665966409986874

`eq[0, char[A123081(n)]]`
-/

namespace A092460.P7721665966409986874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092460.P7721665966409986874

/-! ## A092460.P10882875378065310206

`eq[0, char[A287276(n)]]`
-/

namespace A092460.P10882875378065310206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287276 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A092460.P10882875378065310206

/-! ## A092460.P15148101864400851707

`lt[A336811(A336811(n+1))², A231818(n+1)]`
-/

namespace A092460.P15148101864400851707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A336811 (n + 1)).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231818 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A092460.P15148101864400851707

/-!
# A092462: n times the coefficient of x^n in log[1 + sum(k>=0, x^2^k)].

The programs for A092462, there is no canonical definition to state claims against.
-/

/-! ## A092462.P783436044924396462

`A271726(ceil(abs(γ-n)))+ceil(n/98)`
-/

namespace A092462.P783436044924396462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271726 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat + ⌈(n : ℚ) / 98⌉

end

end A092462.P783436044924396462

/-! ## A092462.P11166389855797656096

`(A271726(ceil(abs(γ-n)))+1)%A001287(n)`
-/

namespace A092462.P11166389855797656096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271726 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat + 1) (A001287 (n + 10))

end

end A092462.P11166389855797656096

/-! ## A092462.P11898114648065313500

`A036453(n+1)+A271726(A028310(n))-1`
-/

namespace A092462.P11898114648065313500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) + (A271726 (A028310 n).toNat - 1)

end

end A092462.P11898114648065313500

/-! ## A092462.P11875151906857664288

`A000032(C(2, n+2))+A271726(A028310(n))-1`
-/

namespace A092462.P11875151906857664288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) + (A271726 (A028310 n).toNat - 1)

end

end A092462.P11875151906857664288

/-! ## A092462.P9351044296124634356

`A000032(floor(1/(n+1)))+A271726(A028310(n))-1`
-/

namespace A092462.P9351044296124634356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat + (A271726 (A028310 n).toNat - 1)

end

end A092462.P9351044296124634356

/-!
# A092463: Greatest number in the n-th successive group of natural numbers containing exactly n prime powers.

The programs for A092463, the canonical program `A092463.P12133458308391720378` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092463 has offset 1).

The definition of A092463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092463.P12133458308391720378

`A000961(∑[1+n])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A092463

/-- `A000961(∑[1+n])` -/
def P12133458308391720378.Spec : Prop :=
  ∀ n, P12133458308391720378.a n = A092463 (n + 1)

theorem P12133458308391720378.correct : P12133458308391720378.Spec := by
  intro n
  simp only [A092463, Nat.add_sub_cancel]

end A092463

/-! ## A092463.P16326051264835415890

`sqrt(A056798(∑[n+1]))`
-/

namespace A092463.P16326051264835415890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056798 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A092463.P16326051264835415890

namespace A092463

/-- `sqrt(A056798(∑[n+1]))` -/
def P16326051264835415890.Spec : Prop :=
  ∀ n, P16326051264835415890.a n = (A092463 (n + 1) : ℝ)

end A092463

/-! ## A092463.P9808290821536923304

`A181062(∑[n+1])+1`
-/

namespace A092463.P9808290821536923304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181062 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A092463.P9808290821536923304

namespace A092463

/-- `A181062(∑[n+1])+1` -/
def P9808290821536923304.Spec : Prop :=
  ∀ n, P9808290821536923304.a n = A092463 (n + 1)

theorem P9808290821536923304.correct : P9808290821536923304.Spec := by
  intro n
  simp only [A092463, Nat.add_sub_cancel, A092463.P9808290821536923304.f1, A092463.P9808290821536923304.a, A092463.P12133458308391720378.f1, A092463.P12133458308391720378.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A181062, A181062.P6529548857799504333.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092463

/-! ## A092463.P2366819424397463446

`A138929(∑[n+1])/2`
-/

namespace A092463.P2366819424397463446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138929 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A092463.P2366819424397463446

namespace A092463

/-- `A138929(∑[n+1])/2` -/
def P2366819424397463446.Spec : Prop :=
  ∀ n, P2366819424397463446.a n = (A092463 (n + 1) : ℚ)

theorem P2366819424397463446.correct : P2366819424397463446.Spec := by
  intro n
  simp only [A092463, Nat.add_sub_cancel, A092463.P2366819424397463446.f1, A092463.P2366819424397463446.a, A092463.P12133458308391720378.f1, A092463.P12133458308391720378.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A138929, A138929.P2871587686834618281.a, A000079, A000079.P10855139691139572931.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A092463

/-! ## A092463.P14330314200216287629

`floor(sqrt(A056798(C(n+2, 2))))`
-/

namespace A092463.P14330314200216287629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A056798 (Nat.choose (n + 2) 2))

end

end A092463.P14330314200216287629

namespace A092463

/-- `floor(sqrt(A056798(C(n+2, 2))))` -/
def P14330314200216287629.Spec : Prop :=
  ∀ n, P14330314200216287629.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P16586488684277085599

`record[A000961(A260220(n))]`
-/

namespace A092463.P16586488684277085599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A260220 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P16586488684277085599

namespace A092463

/-- `record[A000961(A260220(n))]` -/
def P16586488684277085599.Spec : Prop :=
  ∀ n, P16586488684277085599.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P6872936267371655512

`record[A000961(A061579(n)+1)]`
-/

namespace A092463.P6872936267371655512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A061579 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P6872936267371655512

namespace A092463

/-- `record[A000961(A061579(n)+1)]` -/
def P6872936267371655512.Spec : Prop :=
  ∀ n, P6872936267371655512.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P9524168173805884237

`record[A000961(A257506(n+1))]`
-/

namespace A092463.P9524168173805884237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (A257506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P9524168173805884237

namespace A092463

/-- `record[A000961(A257506(n+1))]` -/
def P9524168173805884237.Spec : Prop :=
  ∀ n, P9524168173805884237.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P1425023902915381015

`or(char[1], A000961(A000217(n+1)))`
-/

namespace A092463.P1425023902915381015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000961 (A000217 (n + 1)).toNat)

end

end A092463.P1425023902915381015

namespace A092463

/-- `or(char[1], A000961(A000217(n+1)))` -/
def P1425023902915381015.Spec : Prop :=
  ∀ n, P1425023902915381015.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P15483193891904522285

`record[A000961(n+1)/A122075(n)]`
-/

namespace A092463.P15483193891904522285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A122075 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P15483193891904522285

namespace A092463

/-- `record[A000961(n+1)/A122075(n)]` -/
def P15483193891904522285.Spec : Prop :=
  ∀ n, P15483193891904522285.a n = (A092463 (n + 1) : ℚ)

end A092463

/-! ## A092463.P17261840237152760285

`record[A000961(n+1)/A130321(n)]`
-/

namespace A092463.P17261840237152760285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A130321 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P17261840237152760285

namespace A092463

/-- `record[A000961(n+1)/A130321(n)]` -/
def P17261840237152760285.Spec : Prop :=
  ∀ n, P17261840237152760285.a n = (A092463 (n + 1) : ℚ)

end A092463

/-! ## A092463.P1013742091028549703

`record[A000961(Δ[A029147(3*(n+1))])]`
-/

namespace A092463.P1013742091028549703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029147 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P1013742091028549703

namespace A092463

/-- `record[A000961(Δ[A029147(3*(n+1))])]` -/
def P1013742091028549703.Spec : Prop :=
  ∀ n, P1013742091028549703.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P12480989847847346550

`A000027(A000961(∑[1-(n-2*n)]))`
-/

namespace A092463.P12480989847847346550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000961 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A092463.P12480989847847346550

namespace A092463

/-- `A000027(A000961(∑[1-(n-2*n)]))` -/
def P12480989847847346550.Spec : Prop :=
  ∀ n, P12480989847847346550.a n = A092463 (n + 1)

end A092463

/-! ## A092463.P8698653498192072460

`record[A000961(n+1)/A004736(n+1)]`
-/

namespace A092463.P8698653498192072460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000961 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092463.P8698653498192072460

namespace A092463

/-- `record[A000961(n+1)/A004736(n+1)]` -/
def P8698653498192072460.Spec : Prop :=
  ∀ n, P8698653498192072460.a n = (A092463 (n + 1) : ℚ)

end A092463

/-!
# A092464: Numbers congruent to 4 or 9 mod 13.

The programs for A092464, the canonical program `A092464.P7384020709784046838` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092464 has offset 1).

The definition of A092464 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092464.P7384020709784046838

`a(n-2)+13` with `a(0)=4, a(1)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092464

/-- `a(n-2)+13` -/
def P7384020709784046838.Spec : Prop :=
  ∀ n, (P7384020709784046838.a n : ℤ) = A092464 (n + 1)

theorem P7384020709784046838.correct : P7384020709784046838.Spec := by
  intro n
  simp only [A092464, Nat.add_sub_cancel]

end A092464

/-! ## A092464.P7171229724283576141

`13*n-a(n-1)` with `a(0)=4`
-/

namespace A092464.P7171229724283576141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (13 * n : ℤ) - a (n - 1)

end

end A092464.P7171229724283576141

namespace A092464

/-- `13*n-a(n-1)` -/
def P7171229724283576141.Spec : Prop :=
  ∀ n, P7171229724283576141.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P12570984285269198350

`13*(n+1)/2-13/4-3*(-1)^(n+1)/4`
-/

namespace A092464.P12570984285269198350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * (n + 1) : ℚ) / 2 - (13 : ℚ) / 4 - (3 * (-1) ^ (n + 1) : ℚ) / 4

end

end A092464.P12570984285269198350

namespace A092464

/-- `13*(n+1)/2-13/4-3*(-1)^(n+1)/4` -/
def P12570984285269198350.Spec : Prop :=
  ∀ n, P12570984285269198350.a n = (A092464 (n + 1) : ℚ)

theorem P12570984285269198350.correct : P12570984285269198350.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A092464, Nat.add_sub_cancel, A092464.P12570984285269198350.a, A092464.P7384020709784046838.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A092464, Nat.add_sub_cancel, A092464.P12570984285269198350.a, A092464.P7384020709784046838.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A092464

/-! ## A092464.P3413701498704478244

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=5, a(2)=8`
-/

namespace A092464.P3413701498704478244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P3413701498704478244

namespace A092464

/-- `∑[abs(a(n-2))]` -/
def P3413701498704478244.Spec : Prop :=
  ∀ n, (P3413701498704478244.a n : ℤ) = A092464 (n + 1)

end A092464

/-! ## A092464.P7748595744614567224

`∑[13-a(n-1)]` with `a(0)=4, a(1)=5`
-/

namespace A092464.P7748595744614567224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P7748595744614567224

namespace A092464

/-- `∑[13-a(n-1)]` -/
def P7748595744614567224.Spec : Prop :=
  ∀ n, P7748595744614567224.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P7299325858990961498

`∑[(n²-1)%4+5]`
-/

namespace A092464.P7299325858990961498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 4 + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P7299325858990961498

namespace A092464

/-- `∑[(n²-1)%4+5]` -/
def P7299325858990961498.Spec : Prop :=
  ∀ n, P7299325858990961498.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P9364062829456794386

`∑[5-(1-n²)%4]`
-/

namespace A092464.P9364062829456794386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - Int.tmod (1 - (n ^ 2 : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P9364062829456794386

namespace A092464

/-- `∑[5-(1-n²)%4]` -/
def P9364062829456794386.Spec : Prop :=
  ∀ n, P9364062829456794386.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P12181750693661463045

`∑[∑[ogf((4+5x+4x^2)/(1+x))]]`
-/

namespace A092464.P12181750693661463045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P12181750693661463045

namespace A092464

/-- `∑[∑[ogf((4+5x+4x^2)/(1+x))]]` -/
def P12181750693661463045.Spec : Prop :=
  ∀ n, P12181750693661463045.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P15977142555594579289

`ogf((4+5x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A092464.P15977142555594579289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, 4] [1, -1, -1, 1] n

end

end A092464.P15977142555594579289

namespace A092464

/-- `ogf((4+5x+4x^2)/(1-x-x^2+x^3))` -/
def P15977142555594579289.Spec : Prop :=
  ∀ n, P15977142555594579289.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P16924804929478196093

`∑[5-A115634(n)]`
-/

namespace A092464.P16924804929478196093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A115634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P16924804929478196093

namespace A092464

/-- `∑[5-A115634(n)]` -/
def P16924804929478196093.Spec : Prop :=
  ∀ n, P16924804929478196093.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P5223136534147389523

`∑[A059855(n+1)+3]`
-/

namespace A092464.P5223136534147389523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059855 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P5223136534147389523

namespace A092464

/-- `∑[A059855(n+1)+3]` -/
def P5223136534147389523.Spec : Prop :=
  ∀ n, P5223136534147389523.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P11048181079813069429

`∑[A010719(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P11048181079813069429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A010719 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P11048181079813069429

namespace A092464

/-- `∑[A010719(a(n-1))]` -/
def P11048181079813069429.Spec : Prop :=
  ∀ n, P11048181079813069429.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P4772595561235447042

`∑[A023413(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P4772595561235447042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A023413 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P4772595561235447042

namespace A092464

/-- `∑[A023413(a(n-1))]` -/
def P4772595561235447042.Spec : Prop :=
  ∀ n, P4772595561235447042.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P7840539340800111169

`∑[A152303(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P7840539340800111169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A152303 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P7840539340800111169

namespace A092464

/-- `∑[A152303(a(n-1))]` -/
def P7840539340800111169.Spec : Prop :=
  ∀ n, P7840539340800111169.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P12633396052333546105

`∑[A255668(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P12633396052333546105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A255668 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P12633396052333546105

namespace A092464

/-- `∑[A255668(a(n-1))]` -/
def P12633396052333546105.Spec : Prop :=
  ∀ n, P12633396052333546105.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P10685551575541017502

`∑[A267046(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P10685551575541017502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A267046 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P10685551575541017502

namespace A092464

/-- `∑[A267046(a(n-1))]` -/
def P10685551575541017502.Spec : Prop :=
  ∀ n, P10685551575541017502.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P7087028580370961734

`∑[A293982(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P7087028580370961734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A293982 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P7087028580370961734

namespace A092464

/-- `∑[A293982(a(n-1))]` -/
def P7087028580370961734.Spec : Prop :=
  ∀ n, P7087028580370961734.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P4908285720762638906

`∑[A381331(a(n-1))]` with `a(0)=4`
-/

namespace A092464.P4908285720762638906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A381331 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092464.P4908285720762638906

namespace A092464

/-- `∑[A381331(a(n-1))]` -/
def P4908285720762638906.Spec : Prop :=
  ∀ n, P4908285720762638906.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P16530132420474264362

`A182323(n)%A147587(n)`
-/

namespace A092464.P16530132420474264362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182323 n) (A147587 n)

end

end A092464.P16530132420474264362

namespace A092464

/-- `A182323(n)%A147587(n)` -/
def P16530132420474264362.Spec : Prop :=
  ∀ n, P16530132420474264362.a n = A092464 (n + 1)

end A092464

/-! ## A092464.P17621273922653226276

`A166959(n+1)%A164131(n+1)`
-/

namespace A092464.P17621273922653226276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166959 (n + 1)) (A164131 (n + 1))

end

end A092464.P17621273922653226276

namespace A092464

/-- `A166959(n+1)%A164131(n+1)` -/
def P17621273922653226276.Spec : Prop :=
  ∀ n, P17621273922653226276.a n = A092464 (n + 1)

end A092464

/-!
# A092465: a(n) = Sum_{i+j+k=n, 0<=j<=i<=n, 0<=k<=n} (n+k)!/(i! * j! * (2*k)!).

The programs for A092465, there is no canonical definition to state claims against.
-/

/-! ## A092465.P5272296812999012276

`A093686(A150295(n))`
-/

namespace A092465.P5272296812999012276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093686 (A150295 n).toNat

end

end A092465.P5272296812999012276

/-! ## A092465.P13193160296989104425

`A276798(A344274(n+1)+4^n)`
-/

namespace A092465.P13193160296989104425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A344274 (n + 1) + (4 ^ n : ℤ)).toNat

end

end A092465.P13193160296989104425

/-!
# A092466: a(n) = Sum_{i+j+k=n, 0<=j<=i<=k<=n} (n+k)!/(i! * j! * (2*k)!).

The programs for A092466, there is no canonical definition to state claims against.
-/

/-! ## A092466.P4983334713895970569

`A272620(A192891(n+1))`
-/

namespace A092466.P4983334713895970569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272620 (A192891 (n + 1)).toNat

end

end A092466.P4983334713895970569

/-! ## A092466.P16496991342632991156

`A141206(∑[A078010(n)²])`
-/

namespace A092466.P16496991342632991156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141206 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092466.P16496991342632991156

/-!
# A092467: a(n) = Sum_{i+j+k=n, 0<=i,j,k<=n} (n+2k)!/(i! * j! * (3*k)!).

The programs for A092467, the canonical program `A092467.P15276664502002150912` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092467 has offset 0).

The definition of A092467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092467.P15276664502002150912

`A077949(3*n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A092467

/-- `A077949(3*n)` -/
def P15276664502002150912.Spec : Prop :=
  ∀ n, P15276664502002150912.a n = A092467 n

theorem P15276664502002150912.correct : P15276664502002150912.Spec := by
  intro n
  simp only [A092467]

end A092467

/-! ## A092467.P2260586638788822992

`A192808(n+1)/2`
-/

namespace A092467.P2260586638788822992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192808 (n + 1) : ℚ) / 2

end

end A092467.P2260586638788822992

namespace A092467

/-- `A192808(n+1)/2` -/
def P2260586638788822992.Spec : Prop :=
  ∀ n, P2260586638788822992.a n = (A092467 n : ℚ)

end A092467

/-! ## A092467.P3076580005603106615

`A052537(3*(n+1))/2`
-/

namespace A092467.P3076580005603106615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052537 (3 * (n + 1)) : ℚ) / 2

end

end A092467.P3076580005603106615

namespace A092467

/-- `A052537(3*(n+1))/2` -/
def P3076580005603106615.Spec : Prop :=
  ∀ n, P3076580005603106615.a n = (A092467 n : ℚ)

end A092467

/-! ## A092467.P16456667276347334867

`A003229(comp[2*(n+1)]+n)`
-/

namespace A092467.P16456667276347334867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003229 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A092467.P16456667276347334867

namespace A092467

/-- `A003229(comp[2*(n+1)]+n)` -/
def P16456667276347334867.Spec : Prop :=
  ∀ n, P16456667276347334867.a n = A092467 n

end A092467

/-! ## A092467.P9051220611308947288

`record[A077949(A006368(n))]`
-/

namespace A092467.P9051220611308947288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077949 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092467.P9051220611308947288

namespace A092467

/-- `record[A077949(A006368(n))]` -/
def P9051220611308947288.Spec : Prop :=
  ∀ n, P9051220611308947288.a n = A092467 n

end A092467

/-! ## A092467.P15891819803629324359

`Δ[A192810(n)]-A192810(n)`
-/

namespace A092467.P15891819803629324359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A192810 n

end

end A092467.P15891819803629324359

namespace A092467

/-- `Δ[A192810(n)]-A192810(n)` -/
def P15891819803629324359.Spec : Prop :=
  ∀ n, P15891819803629324359.a n = A092467 n

end A092467

/-! ## A092467.P2779282137558996503

`A192811(n+1)+A192808(n)`
-/

namespace A092467.P2779282137558996503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192811 (n + 1) + A192808 n

end

end A092467.P2779282137558996503

namespace A092467

/-- `A192811(n+1)+A192808(n)` -/
def P2779282137558996503.Spec : Prop :=
  ∀ n, P2779282137558996503.a n = A092467 n

end A092467

/-! ## A092467.P12159947275963042308

`A192810(n+1)-2*A192810(n)`
-/

namespace A092467.P12159947275963042308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192810 (n + 1) - 2 * A192810 n

end

end A092467.P12159947275963042308

namespace A092467

/-- `A192810(n+1)-2*A192810(n)` -/
def P12159947275963042308.Spec : Prop :=
  ∀ n, P12159947275963042308.a n = A092467 n

end A092467

/-! ## A092467.P4170696004697375297

`A192808(n)+A192810(n)+A192809(n)`
-/

namespace A092467.P4170696004697375297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192808 n + (A192810 n + A192809 n)

end

end A092467.P4170696004697375297

namespace A092467

/-- `A192808(n)+A192810(n)+A192809(n)` -/
def P4170696004697375297.Spec : Prop :=
  ∀ n, P4170696004697375297.a n = A092467 n

end A092467

/-! ## A092467.P2015808207424364403

`gcd(floor(acot(n)), A077974(3*n))`
-/

namespace A092467.P2015808207424364403
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A077974 (3 * n))

end

end A092467.P2015808207424364403

namespace A092467

/-- `gcd(floor(acot(n)), A077974(3*n))` -/
def P2015808207424364403.Spec : Prop :=
  ∀ n, (P2015808207424364403.a n : ℤ) = A092467 n

end A092467

/-! ## A092467.P10707014025188150456

`lcm(A077974(3*n), A143453(∑[n]))`
-/

namespace A092467.P10707014025188150456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077974 (3 * n)) (A143453 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A092467.P10707014025188150456

namespace A092467

/-- `lcm(A077974(3*n), A143453(∑[n]))` -/
def P10707014025188150456.Spec : Prop :=
  ∀ n, (P10707014025188150456.a n : ℤ) = A092467 n

end A092467

/-!
# A092468: a(n) = Sum_{i+j+k=n, 0<=i<=j<=k<=n} (n+2k)!/(i! * j! * (3*k)!).

The programs for A092468, there is no canonical definition to state claims against.
-/

/-! ## A092468.P10222628726849618389

`A070253(A151954(n))%A023551(A343657(n+1))`
-/

namespace A092468.P10222628726849618389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070253 (A151954 n).toNat) (A023551 (A343657 (n + 1)).toNat)

end

end A092468.P10222628726849618389

/-!
# A092469: a(n) = Sum_{i+j+k=n, 0<=i<=j<=k<=n} (n+2j)!/(i! * (3j)! * k!).

The programs for A092469, there is no canonical definition to state claims against.
-/

/-! ## A092469.P15993161425575326926

`A104194((3^n+1)/2*3^n)+1`
-/

namespace A092469.P15993161425575326926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104194 (SequenceMachineLib.roundAway ((3 ^ n + 1 : ℚ) / 2 * (3 ^ n : ℚ))).toNat + 1

end

end A092469.P15993161425575326926

/-!
# A092470: a(n) = Sum_{i+j+k=n, 0<=i<=j<=k<=n} (n+2*i)!/((2*i)! * j! * k!).

The programs for A092470, there is no canonical definition to state claims against.
-/

/-! ## A092470.P12297618055940785148

`A204502(A304446(n)+A288049(n))`
-/

namespace A092470.P12297618055940785148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (A304446 n + A288049 n).toNat

end

end A092470.P12297618055940785148

/-!
# A092471: a(n) = Sum_{i+j+k=n, 0<=i<=n, 0<=j<=n, 0<=k<=n} (n+i+j)!/((i+j)! * j! * k!).

The programs for A092471, there is no canonical definition to state claims against.
-/

/-! ## A092471.P13906646249613177221

`A109613(n*A107872(n))`
-/

namespace A092471.P13906646249613177221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 ((n : ℤ) * A107872 n).toNat

end

end A092471.P13906646249613177221

/-!
# A092472: a(n)=sum(i+j+k=n,(2n)!/(i+j)!/(j+k)!/(k+i)!) 0<=i<=n, 0<=j<=n, 0<=k<=n.

The programs for A092472, there is no canonical definition to state claims against.
-/

/-! ## A092472.P2541488025633068482

`A315462(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=6`
-/

namespace A092472.P2541488025633068482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A315462 (2 * a (n - 1) - a (n - 2)).toNat

end

end A092472.P2541488025633068482

/-!
# A092473: a(n) = Sum_{i+j+k=n, 0<=i<=j<=k<=n} (2n)!/((i+j)! * (j+k)! * (k+i)!).

The programs for A092473, there is no canonical definition to state claims against.
-/

/-! ## A092473.P1444029096060782520

`A127079(A155628(n)-floor(sqrt(n)))`
-/

namespace A092473.P1444029096060782520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127079 (A155628 n - (Nat.sqrt n : ℤ)).toNat

end

end A092473.P1444029096060782520

/-!
# A092474: a(n) is the first term in a sequence of primes such that a(n)+4m^2 is also prime for m = 1 to n.

The programs for A092474, there is no canonical definition to state claims against.
-/

/-! ## A092474.P17513615860558878686

`p?[A130003(∑[∑[(-1)^n]])]`
-/

namespace A092474.P17513615860558878686
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130003 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A092474.P17513615860558878686

/-! ## A092474.P1781296216128431550

`A049500(A099174(2*n+3)+n)`
-/

namespace A092474.P1781296216128431550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049500 (A099174 (2 * n + 3) + (n : ℤ)).toNat

end

end A092474.P1781296216128431550

/-! ## A092474.P14458436433729715906

`A049500(C(A055224(2*(n+2)), A055184(n+1)))`
-/

namespace A092474.P14458436433729715906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049500 (Nat.choose (A055224 (2 * (n + 2))).toNat (A055184 (n + 1)).toNat)

end

end A092474.P14458436433729715906

/-!
# A092475: Primes p such that p + 2^2, p + 4^2 and p + 6^2 are also primes.

The programs for A092475, there is no canonical definition to state claims against.
-/

/-! ## A092475.P6848006346315154822

`∩[A049488(n+1), A049489(n+1)-4]`
-/

namespace A092475.P6848006346315154822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049489 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092475.P6848006346315154822

/-! ## A092475.P17166151400944152127

`∩[A049492(n+1), A156104(n+1)]`
-/

namespace A092475.P17166151400944152127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092475.P17166151400944152127

/-! ## A092475.P1404660910346776779

`∩[A046133(n+1)-4, A156104(n+1)]`
-/

namespace A092475.P1404660910346776779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) - 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092475.P1404660910346776779

/-! ## A092475.P4591219014046735650

`∩[A049492(n+1), A090348(n+1)]`
-/

namespace A092475.P4591219014046735650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A092475.P4591219014046735650

/-!
# A092476: Numbers that are congruent to {1, 3, 9} mod 13.

The programs for A092476, the canonical program `A092476.P8776827810270881558` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092476 has offset 1).

The definition of A092476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092476.P8776827810270881558

`a(n-3)+13` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092476

/-- `a(n-3)+13` -/
def P8776827810270881558.Spec : Prop :=
  ∀ n, (P8776827810270881558.a n : ℤ) = A092476 (n + 1)

theorem P8776827810270881558.correct : P8776827810270881558.Spec := by
  intro n
  simp only [A092476, Nat.add_sub_cancel]

end A092476

/-! ## A092476.P8048068557291993211

`(39*(n+1)-39+3*cos(2*(n+1)*π/3)+7*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A092476.P8048068557291993211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((39 * (n + 1) : ℤ) - 39 : ℝ) + 3 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 7 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A092476.P8048068557291993211

namespace A092476

/-- `(39*(n+1)-39+3*cos(2*(n+1)*π/3)+7*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P8048068557291993211.Spec : Prop :=
  ∀ n, P8048068557291993211.a n = (A092476 (n + 1) : ℝ)

end A092476

/-! ## A092476.P12995130446782983610

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A092476.P12995130446782983610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 5] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092476.P12995130446782983610

namespace A092476

/-- `∑[floor(a(n-3))]` -/
def P12995130446782983610.Spec : Prop :=
  ∀ n, (P12995130446782983610.a n : ℤ) = A092476 (n + 1)

end A092476

/-! ## A092476.P12132650121906018887

`∑[a(n-3)%7]` with `a(0)=1, a(1)=2, a(2)=6, a(3)=5`
-/

namespace A092476.P12132650121906018887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6, 5] fun n f1 =>
  f1 (n - 3) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092476.P12132650121906018887

namespace A092476

/-- `∑[a(n-3)%7]` -/
def P12132650121906018887.Spec : Prop :=
  ∀ n, (P12132650121906018887.a n : ℤ) = A092476 (n + 1)

end A092476

/-! ## A092476.P13050952419361247049

`∑[6-((n+1)%3)²]-4`
-/

namespace A092476.P13050952419361247049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ((((n + 1) % 3) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A092476.P13050952419361247049

namespace A092476

/-- `∑[6-((n+1)%3)²]-4` -/
def P13050952419361247049.Spec : Prop :=
  ∀ n, P13050952419361247049.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P16737652381090177229

`∑[∑[ogf((1+2x+6x^2+4x^3)/(1+x+x^2))]]`
-/

namespace A092476.P16737652381090177229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6, 4] [1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092476.P16737652381090177229

namespace A092476

/-- `∑[∑[ogf((1+2x+6x^2+4x^3)/(1+x+x^2))]]` -/
def P16737652381090177229.Spec : Prop :=
  ∀ n, P16737652381090177229.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P14800145007711079065

`Δ[ogf((1+5x+2x^2+5x^3)/(1-2x+x^2-x^3+2x^4-x^5))]-5`
-/

namespace A092476.P14800145007711079065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2, 5] [1, -2, 1, -1, 2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 5

end

end A092476.P14800145007711079065

namespace A092476

/-- `Δ[ogf((1+5x+2x^2+5x^3)/(1-2x+x^2-x^3+2x^4-x^5))]-5` -/
def P14800145007711079065.Spec : Prop :=
  ∀ n, P14800145007711079065.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P14099541642484132564

`A132677(n)+A112655(n)`
-/

namespace A092476.P14099541642484132564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132677 n + A112655 n

end

end A092476.P14099541642484132564

namespace A092476

/-- `A132677(n)+A112655(n)` -/
def P14099541642484132564.Spec : Prop :=
  ∀ n, P14099541642484132564.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P6023463868064479637

`A054967(n+1)+A004482(n)`
-/

namespace A092476.P6023463868064479637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1) + A004482 n

end

end A092476.P6023463868064479637

namespace A092476

/-- `A054967(n+1)+A004482(n)` -/
def P6023463868064479637.Spec : Prop :=
  ∀ n, P6023463868064479637.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P16880257282837335162

`A061891(n)+A047386(n+1)`
-/

namespace A092476.P16880257282837335162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061891 n + A047386 (n + 1)

end

end A092476.P16880257282837335162

namespace A092476

/-- `A061891(n)+A047386(n+1)` -/
def P16880257282837335162.Spec : Prop :=
  ∀ n, P16880257282837335162.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P14625121084410893407

`A016993(n)-A047437(n+1)`
-/

namespace A092476.P14625121084410893407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 n - A047437 (n + 1)

end

end A092476.P14625121084410893407

namespace A092476

/-- `A016993(n)-A047437(n+1)` -/
def P14625121084410893407.Spec : Prop :=
  ∀ n, P14625121084410893407.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P16591429310754959759

`A017005(n)-A047591(n+1)`
-/

namespace A092476.P16591429310754959759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n - A047591 (n + 1)

end

end A092476.P16591429310754959759

namespace A092476

/-- `A017005(n)-A047591(n+1)` -/
def P16591429310754959759.Spec : Prop :=
  ∀ n, P16591429310754959759.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P4156978249037425068

`A047619(n+1)+A008854(n+1)`
-/

namespace A092476.P4156978249037425068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1) + A008854 (n + 1)

end

end A092476.P4156978249037425068

namespace A092476

/-- `A047619(n+1)+A008854(n+1)` -/
def P4156978249037425068.Spec : Prop :=
  ∀ n, P4156978249037425068.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P6975992887145631718

`A047616(n+1)+A032793(n+1)`
-/

namespace A092476.P6975992887145631718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 1) + A032793 (n + 1)

end

end A092476.P6975992887145631718

namespace A092476

/-- `A047616(n+1)+A032793(n+1)` -/
def P6975992887145631718.Spec : Prop :=
  ∀ n, P6975992887145631718.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P14703342403126969999

`A047275(n+1)+A047245(n+1)`
-/

namespace A092476.P14703342403126969999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047275 (n + 1) + A047245 (n + 1)

end

end A092476.P14703342403126969999

namespace A092476

/-- `A047275(n+1)+A047245(n+1)` -/
def P14703342403126969999.Spec : Prop :=
  ∀ n, P14703342403126969999.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P2478588965652901294

`A047278(n+1)+A047242(n+1)`
-/

namespace A092476.P2478588965652901294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047278 (n + 1) + A047242 (n + 1)

end

end A092476.P2478588965652901294

namespace A092476

/-- `A047278(n+1)+A047242(n+1)` -/
def P2478588965652901294.Spec : Prop :=
  ∀ n, P2478588965652901294.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P573695145259841188

`A047347(n+1)+A047268(n+1)`
-/

namespace A092476.P573695145259841188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047347 (n + 1) + A047268 (n + 1)

end

end A092476.P573695145259841188

namespace A092476

/-- `A047347(n+1)+A047268(n+1)` -/
def P573695145259841188.Spec : Prop :=
  ∀ n, P573695145259841188.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P17839451667988444004

`A047350(n+1)+A047266(n+1)`
-/

namespace A092476.P17839451667988444004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1) + A047266 (n + 1)

end

end A092476.P17839451667988444004

namespace A092476

/-- `A047350(n+1)+A047266(n+1)` -/
def P17839451667988444004.Spec : Prop :=
  ∀ n, P17839451667988444004.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P11478366237729560219

`A047384(n+1)+A047236(n+1)`
-/

namespace A092476.P11478366237729560219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047384 (n + 1) + A047236 (n + 1)

end

end A092476.P11478366237729560219

namespace A092476

/-- `A047384(n+1)+A047236(n+1)` -/
def P11478366237729560219.Spec : Prop :=
  ∀ n, P11478366237729560219.a n = A092476 (n + 1)

end A092476

/-! ## A092476.P6100107685736801868

`A047387(n+1)+A047234(n+1)`
-/

namespace A092476.P6100107685736801868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047387 (n + 1) + A047234 (n + 1)

end

end A092476.P6100107685736801868

namespace A092476

/-- `A047387(n+1)+A047234(n+1)` -/
def P6100107685736801868.Spec : Prop :=
  ∀ n, P6100107685736801868.a n = A092476 (n + 1)

end A092476

/-!
# A092477: Triangle read by rows: T(n,k) = (2^k - 1)^n, 1<=k<=n.

The programs for A092477, the canonical program `A092477.P18386753265145305361` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092477 has offset 1).

The definition of A092477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(col(n)+1)-1)^(row(n)+1)` (program `A092477.P18386753265145305361`, by `A092477.P18386753265145305361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092477.P18386753265145305361

`(2^(col(n)+1)-1)^(row(n)+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092477

/-- `(2^(col(n)+1)-1)^(row(n)+1)` -/
def P18386753265145305361.Spec : Prop :=
  ∀ n, P18386753265145305361.a n = A092477 (n + 1)

theorem P18386753265145305361.correct : P18386753265145305361.Spec := by
  intro n
  simp only [A092477, Nat.add_sub_cancel]

end A092477

/-! ## A092477.P11851733261805957455

`A126646(A002262(n))^A002024(n+1)`
-/

namespace A092477.P11851733261805957455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 (A002262 n).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P11851733261805957455

namespace A092477

/-- `A126646(A002262(n))^A002024(n+1)` -/
def P11851733261805957455.Spec : Prop :=
  ∀ n, P11851733261805957455.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P3321925119004506642

`A000225(A002260(n+1))^A002024(n+1)`
-/

namespace A092477.P3321925119004506642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (A002260 (n + 1)).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P3321925119004506642

namespace A092477

/-- `A000225(A002260(n+1))^A002024(n+1)` -/
def P3321925119004506642.Spec : Prop :=
  ∀ n, P3321925119004506642.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P6029401479065344082

`(A155559(A002260(n+1))-1)^log2(A140513(n))`
-/

namespace A092477.P6029401479065344082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A155559 (A002260 (n + 1)).toNat - 1 : ℝ) ^ (Real.logb 2 (A140513 n : ℝ))

end

end A092477.P6029401479065344082

namespace A092477

/-- `(A155559(A002260(n+1))-1)^log2(A140513(n))` -/
def P6029401479065344082.Spec : Prop :=
  ∀ n, P6029401479065344082.a n = (A092477 (n + 1) : ℝ)

end A092477

/-! ## A092477.P14783199120298996381

`A000203(A059268(n))^round(sqrt(2*n))`
-/

namespace A092477.P14783199120298996381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A059268 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) : ℤ)

end

end A092477.P14783199120298996381

namespace A092477

/-- `A000203(A059268(n))^round(sqrt(2*n))` -/
def P14783199120298996381.Spec : Prop :=
  ∀ n, P14783199120298996381.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P17422809656579723141

`A000203(2^A002262(n))^A002024(n+1)`
-/

namespace A092477.P17422809656579723141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002262 n : ℤ))).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P17422809656579723141

namespace A092477

/-- `A000203(2^A002262(n))^A002024(n+1)` -/
def P17422809656579723141.Spec : Prop :=
  ∀ n, P17422809656579723141.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P15883924894376379800

`A000203(A013609(n)/A007318(n))^A002024(n+1)`
-/

namespace A092477.P15883924894376379800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway ((A013609 n : ℚ) / (A007318 n : ℚ))).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P15883924894376379800

namespace A092477

/-- `A000203(A013609(n)/A007318(n))^A002024(n+1)` -/
def P15883924894376379800.Spec : Prop :=
  ∀ n, P15883924894376379800.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P9203763063845779276

`A000265(A023758(n+2))^A002024(n+1)`
-/

namespace A092477.P9203763063845779276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A023758 (n + 2)).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P9203763063845779276

namespace A092477

/-- `A000265(A023758(n+2))^A002024(n+1)` -/
def P9203763063845779276.Spec : Prop :=
  ∀ n, P9203763063845779276.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P8649098395635612883

`A005187(A059268(n))^A002024(n+1)`
-/

namespace A092477.P8649098395635612883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 (A059268 n).toNat : ℚ) ^ (A002024 (n + 1) : ℤ)

end

end A092477.P8649098395635612883

namespace A092477

/-- `A005187(A059268(n))^A002024(n+1)` -/
def P8649098395635612883.Spec : Prop :=
  ∀ n, P8649098395635612883.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P15632220776933948404

`A326065(2*A059268(n))^round(sqrt(2*n+1))`
-/

namespace A092477.P15632220776933948404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326065 (2 * A059268 n).toNat : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) : ℤ)

end

end A092477.P15632220776933948404

namespace A092477

/-- `A326065(2*A059268(n))^round(sqrt(2*n+1))` -/
def P15632220776933948404.Spec : Prop :=
  ∀ n, P15632220776933948404.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P3290988042302470556

`A004273(A059268(n))^A000194(2*(n+1))`
-/

namespace A092477.P3290988042302470556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004273 (A059268 n).toNat : ℚ) ^ (A000194 (2 * (n + 1)) : ℤ)

end

end A092477.P3290988042302470556

namespace A092477

/-- `A004273(A059268(n))^A000194(2*(n+1))` -/
def P3290988042302470556.Spec : Prop :=
  ∀ n, P3290988042302470556.a n = (A092477 (n + 1) : ℚ)

end A092477

/-! ## A092477.P14680456863228727648

`A114753(A059268(n))^(A007401(n+1)-n)`
-/

namespace A092477.P14680456863228727648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114753 (A059268 n).toNat : ℚ) ^ (A007401 (n + 1) - (n : ℤ) : ℤ)

end

end A092477.P14680456863228727648

namespace A092477

/-- `A114753(A059268(n))^(A007401(n+1)-n)` -/
def P14680456863228727648.Spec : Prop :=
  ∀ n, P14680456863228727648.a n = (A092477 (n + 1) : ℚ)

end A092477

/-!
# A092479: T(n,k) is the number of numbers <= 2^n having exactly k prime factors (with repetitions), 0<=k<=n, triangle read by rows.

The programs for A092479, there is no canonical definition to state claims against.
-/

/-! ## A092479.P15417128913638927034

`A126279(A169585(n)+A083920(n))`
-/

namespace A092479.P15417128913638927034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A169585 n + A083920 n).toNat

end

end A092479.P15417128913638927034

/-! ## A092479.P5609406062789678289

`A126279(or(A083920(n), A169585(n)))`
-/

namespace A092479.P5609406062789678289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (Int.lor (A083920 n) (A169585 n)).toNat

end

end A092479.P5609406062789678289

/-! ## A092479.P16575485741559007026

`A126279(xor(A083920(n), A169585(n)))`
-/

namespace A092479.P16575485741559007026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (Int.xor (A083920 n) (A169585 n)).toNat

end

end A092479.P16575485741559007026

/-! ## A092479.P11681021383355609545

`A114791(A056943(n)+1)`
-/

namespace A092479.P11681021383355609545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114791 (A056943 n + 1).toNat

end

end A092479.P11681021383355609545

/-! ## A092479.P12901097587048613082

`A114791(2-A158405(n+1)+n)`
-/

namespace A092479.P12901097587048613082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114791 (2 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A092479.P12901097587048613082

/-! ## A092479.P13870554293517396557

`A114791(A038722(n+1)-A003056(n))`
-/

namespace A092479.P13870554293517396557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114791 (A038722 (n + 1) - A003056 n).toNat

end

end A092479.P13870554293517396557

/-! ## A092479.P2662958719031507919

`A114791(A127739(n+1)-A051162(n))`
-/

namespace A092479.P2662958719031507919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114791 (A127739 (n + 1) - A051162 n).toNat

end

end A092479.P2662958719031507919

/-!
# A092480: 

The programs for A092480, there is no canonical definition to state claims against.
-/

/-! ## A092480.P10955874948717906846

`A173771(n+2)`
-/

namespace A092480.P10955874948717906846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173771 (n + 2)

end

end A092480.P10955874948717906846

/-!
# A092482: Sequence contains no 3-term arithmetic progression, other than its initial terms 1, 2, 3.

The programs for A092482, there is no canonical definition to state claims against.
-/

/-! ## A092482.P7455516756590002938

`eq[1, A381658(n+1)]+1`
-/

namespace A092482.P7455516756590002938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A092482.P7455516756590002938

/-! ## A092482.P6147887720936079069

`record[A000027(n+1)/A381658(n+1)]`
-/

namespace A092482.P6147887720936079069
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A381658 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A092482.P6147887720936079069

/-!
# A092483: a(n) is the floor of the average of the 1st moment of all previous entries.

The programs for A092483, there is no canonical definition to state claims against.
-/

/-! ## A092483.P501974507362972279

`A126257(ceil((4-2/n)*a(n-1)))` with `a(0)=1`
-/

namespace A092483.P501974507362972279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126257 ⌈(4 - 2 / (n : ℚ)) * (a (n - 1) : ℚ)⌉.toNat

end

end A092483.P501974507362972279

/-! ## A092483.P7632435786452730474

`A126257(ceil(2*(2-n^(-1))*a(n-1)))` with `a(0)=1`
-/

namespace A092483.P7632435786452730474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A126257 ⌈2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * (a (n - 1) : ℚ))⌉.toNat

end

end A092483.P7632435786452730474

/-! ## A092483.P9156408136657510906

`floor(A028310(A131246(n))/A004277(n))`
-/

namespace A092483.P9156408136657510906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028310 (A131246 n).toNat : ℚ) / (A004277 n : ℚ)⌋

end

end A092483.P9156408136657510906

/-! ## A092483.P11403855433647296732

`A257639(A148363(n))`
-/

namespace A092483.P11403855433647296732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A148363 n).toNat

end

end A092483.P11403855433647296732

/-! ## A092483.P554141614078838246

`A257639(A364161(n))`
-/

namespace A092483.P554141614078838246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A364161 n).toNat

end

end A092483.P554141614078838246

/-!
# A092484: Expansion of Product_{m>=1} (1 + m^2*q^m).

The programs for A092484, there is no canonical definition to state claims against.
-/

/-! ## A092484.P3440480999521045039

`A292189(∑[n+3])`
-/

namespace A092484.P3440480999521045039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292189 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A092484.P3440480999521045039

/-!
# A092485: Expansion of Product_{m>=1} (1+m*(m+1)*q^m).

The programs for A092485, there is no canonical definition to state claims against.
-/

/-! ## A092485.P10914216879962557723

`A111338(A307605(n+1)+1)`
-/

namespace A092485.P10914216879962557723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111338 (A307605 (n + 1) + 1).toNat

end

end A092485.P10914216879962557723

/-! ## A092485.P12000355920253848867

`A161207((floor(n/log2(7))+1)*A352821(2*n+3))`
-/

namespace A092485.P12000355920253848867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 ((⌊(n : ℝ) / Real.logb 2 (7 : ℝ)⌋ + 1) * A352821 (2 * n + 3)).toNat

end

end A092485.P12000355920253848867

/-!
# A092486: Take natural numbers, exchange first and third quadrisection.

The programs for A092486, the canonical program `A092486.P1942806276167415935` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092486 has offset 0).

The definition of A092486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092486.P4878158268440974282

`1+n+2*cos(n*π/2)`
-/

namespace A092486.P4878158268440974282
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + n : ℝ) + 2 * Real.cos ((n : ℝ) * Real.pi / 2)

end

end A092486.P4878158268440974282

namespace A092486

/-- `1+n+2*cos(n*π/2)` -/
def P4878158268440974282.Spec : Prop :=
  ∀ n, P4878158268440974282.a n = (A092486 n : ℝ)

end A092486

/-! ## A092486.P1942806276167415935

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=3, a(1)=2, a(2)=1, a(3)=4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092486

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P1942806276167415935.Spec : Prop :=
  ∀ n, P1942806276167415935.a n = A092486 n

theorem P1942806276167415935.correct : P1942806276167415935.Spec := by
  intro n
  simp only [A092486]

end A092486

/-! ## A092486.P6828300106426270383

`n-Δ[or(2, -n)]`
-/

namespace A092486.P6828300106426270383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A092486.P6828300106426270383

namespace A092486

/-- `n-Δ[or(2, -n)]` -/
def P6828300106426270383.Spec : Prop :=
  ∀ n, P6828300106426270383.a n = A092486 n

end A092486

/-! ## A092486.P4280067627953210856

`∑[or(2, (-1)^∑[n])]`
-/

namespace A092486.P4280067627953210856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P4280067627953210856

namespace A092486

/-- `∑[or(2, (-1)^∑[n])]` -/
def P4280067627953210856.Spec : Prop :=
  ∀ n, P4280067627953210856.a n = A092486 n

end A092486

/-! ## A092486.P11180634733927426727

`∑[3-and(4, 6*n)]`
-/

namespace A092486.P11180634733927426727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (Nat.land 4 (6 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P11180634733927426727

namespace A092486

/-- `∑[3-and(4, 6*n)]` -/
def P11180634733927426727.Spec : Prop :=
  ∀ n, P11180634733927426727.a n = A092486 n

end A092486

/-! ## A092486.P925229164152249592

`∑[xor(2, n+1)-n]`
-/

namespace A092486.P925229164152249592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P925229164152249592

namespace A092486

/-- `∑[xor(2, n+1)-n]` -/
def P925229164152249592.Spec : Prop :=
  ∀ n, P925229164152249592.a n = A092486 n

end A092486

/-! ## A092486.P4479429234191511187

`Δ[or(2, n-1)]+n`
-/

namespace A092486.P4479429234191511187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A092486.P4479429234191511187

namespace A092486

/-- `Δ[or(2, n-1)]+n` -/
def P4479429234191511187.Spec : Prop :=
  ∀ n, P4479429234191511187.a n = A092486 n

end A092486

/-! ## A092486.P10148209446122536285

`∑[n-xor(2, n-1)]`
-/

namespace A092486.P10148209446122536285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 2 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P10148209446122536285

namespace A092486

/-- `∑[n-xor(2, n-1)]` -/
def P10148209446122536285.Spec : Prop :=
  ∀ n, P10148209446122536285.a n = A092486 n

end A092486

/-! ## A092486.P4717918227725356566

`∑[3-and(2, -n)²]`
-/

namespace A092486.P4717918227725356566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.land 2 (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P4717918227725356566

namespace A092486

/-- `∑[3-and(2, -n)²]` -/
def P4717918227725356566.Spec : Prop :=
  ∀ n, P4717918227725356566.a n = A092486 n

end A092486

/-! ## A092486.P14019347768964913812

`Δ[-or(2, -n)]+n`
-/

namespace A092486.P14019347768964913812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A092486.P14019347768964913812

namespace A092486

/-- `Δ[-or(2, -n)]+n` -/
def P14019347768964913812.Spec : Prop :=
  ∀ n, P14019347768964913812.a n = A092486 n

end A092486

/-! ## A092486.P7800270421373694823

`n-Δ[and(-3, -n)]`
-/

namespace A092486.P7800270421373694823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A092486.P7800270421373694823

namespace A092486

/-- `n-Δ[and(-3, -n)]` -/
def P7800270421373694823.Spec : Prop :=
  ∀ n, P7800270421373694823.a n = A092486 n

end A092486

/-! ## A092486.P16116261707055152204

`xor(2, a(n-1))+1` with `a(0)=3`
-/

namespace A092486.P16116261707055152204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.xor 2 (a (n - 1)) + 1

end

end A092486.P16116261707055152204

namespace A092486

/-- `xor(2, a(n-1))+1` -/
def P16116261707055152204.Spec : Prop :=
  ∀ n, (P16116261707055152204.a n : ℤ) = A092486 n

end A092486

/-! ## A092486.P13889968681513555131

`or(3, n+1)-n%4`
-/

namespace A092486.P13889968681513555131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 (n + 1) : ℤ) - ((n % 4 : ℕ) : ℤ)

end

end A092486.P13889968681513555131

namespace A092486

/-- `or(3, n+1)-n%4` -/
def P13889968681513555131.Spec : Prop :=
  ∀ n, P13889968681513555131.a n = A092486 n

end A092486

/-! ## A092486.P1426489977990458982

`or(2, n+1)-and(2, n)`
-/

namespace A092486.P1426489977990458982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (n + 1) : ℤ) - (Nat.land 2 n : ℤ)

end

end A092486.P1426489977990458982

namespace A092486

/-- `or(2, n+1)-and(2, n)` -/
def P1426489977990458982.Spec : Prop :=
  ∀ n, P1426489977990458982.a n = A092486 n

end A092486

/-! ## A092486.P5792567091202182622

`xor(n, and(2, gcd(2, n)))+1`
-/

namespace A092486.P5792567091202182622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Nat.land 2 (Nat.gcd 2 n)) + 1

end

end A092486.P5792567091202182622

namespace A092486

/-- `xor(n, and(2, gcd(2, n)))+1` -/
def P5792567091202182622.Spec : Prop :=
  ∀ n, (P5792567091202182622.a n : ℤ) = A092486 n

end A092486

/-! ## A092486.P2167424926856487727

`∑[and(2, n-1)²-1]`
-/

namespace A092486.P2167424926856487727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P2167424926856487727

namespace A092486

/-- `∑[and(2, n-1)²-1]` -/
def P2167424926856487727.Spec : Prop :=
  ∀ n, P2167424926856487727.a n = A092486 n

end A092486

/-! ## A092486.P1919729198467053264

`abs(xor(-3, a(n-1)))` with `a(0)=3`
-/

namespace A092486.P1919729198467053264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  |Int.xor (-3) (a (n - 1))|

end

end A092486.P1919729198467053264

namespace A092486

/-- `abs(xor(-3, a(n-1)))` -/
def P1919729198467053264.Spec : Prop :=
  ∀ n, P1919729198467053264.a n = A092486 n

end A092486

/-! ## A092486.P831930978191293557

`-xor(-3, a(n-1))` with `a(0)=3`
-/

namespace A092486.P831930978191293557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  -Int.xor (-3) (a (n - 1))

end

end A092486.P831930978191293557

namespace A092486

/-- `-xor(-3, a(n-1))` -/
def P831930978191293557.Spec : Prop :=
  ∀ n, P831930978191293557.a n = A092486 n

end A092486

/-! ## A092486.P1468839086212423357

`∑[3-4*∑[n]%2]`
-/

namespace A092486.P1468839086212423357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((4 * ((∑ j ∈ Finset.range (n + 1), f2 j) % 2) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092486.P1468839086212423357

namespace A092486

/-- `∑[3-4*∑[n]%2]` -/
def P1468839086212423357.Spec : Prop :=
  ∀ n, P1468839086212423357.a n = A092486 n

end A092486

/-! ## A092486.P3437686934523650904

`-xor(n, or(2*n, -3))`
-/

namespace A092486.P3437686934523650904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (Int.lor (2 * n : ℤ) (-3))

end

end A092486.P3437686934523650904

namespace A092486

/-- `-xor(n, or(2*n, -3))` -/
def P3437686934523650904.Spec : Prop :=
  ∀ n, P3437686934523650904.a n = A092486 n

end A092486

/-!
# A092487: a(n) = least k such that {n+1, n+2, n+3, ... n+k} has a subset the product of whose members with n is a square.

The programs for A092487, there is no canonical definition to state claims against.
-/

/-! ## A092487.P13656310438715011897

`A006255(n+1)-(n+1)`
-/

namespace A092487.P13656310438715011897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (n + 1) - (n + 1 : ℤ)

end

end A092487.P13656310438715011897

/-! ## A092487.P1246484198486647407

`A023443(A006255(n+1)-n)`
-/

namespace A092487.P1246484198486647407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A006255 (n + 1) - (n : ℤ)).toNat

end

end A092487.P1246484198486647407

/-! ## A092487.P10854604567490084448

`A245499(∑[A066400(n+1)])-(n+1)`
-/

namespace A092487.P10854604567490084448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245499 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A092487.P10854604567490084448

/-! ## A092487.P4817175020255768977

`A067722(n+1)-A255167(n+1)`
-/

namespace A092487.P4817175020255768977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 (n + 1) - A255167 (n + 1)

end

end A092487.P4817175020255768977

/-! ## A092487.P8931426860864605137

`A018252(A297104(n+1))-(n+1)`
-/

namespace A092487.P8931426860864605137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A297104 (n + 1)).toNat - (n + 1 : ℤ)

end

end A092487.P8931426860864605137

/-! ## A092487.P5704630162090219965

`A141468(A297104(n+1)+1)-(n+1)`
-/

namespace A092487.P5704630162090219965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A297104 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A092487.P5704630162090219965

/-!
# A092488: a(n) = least k such that {n+0, n+1, n+2, n+3, ... n+k} has a nonempty subset the product of whose members is a square.

The programs for A092488, there is no canonical definition to state claims against.
-/

/-! ## A092488.P15271802107072738170

`A080883(n)-A053150(A326326(n))`
-/

namespace A092488.P15271802107072738170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 n - A053150 (A326326 n).toNat

end

end A092488.P15271802107072738170

/-! ## A092488.P17956996845983751888

`A080883(n)-A005136(A152977(n))`
-/

namespace A092488.P17956996845983751888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 n - A005136 (A152977 n).toNat

end

end A092488.P17956996845983751888

/-!
# A092489: Arises in enumeration of 321-hexagon-avoiding permutations.

The programs for A092489, there is no canonical definition to state claims against.
-/

/-! ## A092489.P13002186134313596133

`A092492(n+4)-A092490(n+1)`
-/

namespace A092489.P13002186134313596133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092492 (n + 4) - A092490 (n + 1)

end

end A092489.P13002186134313596133

/-! ## A092489.P6153326410954088126

`Δ[A092491(n+2)]-A092490(n+1)`
-/

namespace A092489.P6153326410954088126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092490 (n + 1)

end

end A092489.P6153326410954088126

/-! ## A092489.P9503058742255348447

`A092491(n+3)-A092490(n+1)-A092491(n+2)`
-/

namespace A092489.P9503058742255348447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092491 (n + 3) - A092490 (n + 1) - A092491 (n + 2)

end

end A092489.P9503058742255348447

/-! ## A092489.P12170419227283871320

`A028310(Δ[A058094(n)])-A058094(n)`
-/

namespace A092489.P12170419227283871320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat - A058094 n

end

end A092489.P12170419227283871320

/-!
# A092490: a(n) = A058094(n) - 3*A058094(n-1) + A058094(n-2) for n >=4.

The programs for A092490, there is no canonical definition to state claims against.
-/

/-! ## A092490.P2498164853960717663

`A092492(n+4)-A092489(n+1)`
-/

namespace A092490.P2498164853960717663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092492 (n + 4) - A092489 (n + 1)

end

end A092490.P2498164853960717663

/-! ## A092490.P12466703955804350259

`Δ[A092491(n+2)]-A092489(n+1)`
-/

namespace A092490.P12466703955804350259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092491 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A092489 (n + 1)

end

end A092490.P12466703955804350259

/-! ## A092490.P7377614825355258930

`A092491(n+3)-A092489(n+1)-A092491(n+2)`
-/

namespace A092490.P7377614825355258930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092491 (n + 3) - A092489 (n + 1) - A092491 (n + 2)

end

end A092490.P7377614825355258930

/-! ## A092490.P12624166583304356387

`A026819(A078591(n))-1`
-/

namespace A092490.P12624166583304356387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A078591 n).toNat - 1

end

end A092490.P12624166583304356387

/-!
# A092491: a(n) = 2*A058094(n-2) - 5*A058094(n-3) + A058094(n-4) + a(n-1) for n >=4.

The programs for A092491, there is no canonical definition to state claims against.
-/

/-! ## A092491.P12742976488737905066

`2*A058094(n-1)-5*A058094(n-2)+A058094(n-3)+a(n-1)` with `a(0)=0, a(1)=0, a(2)=0`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A092491.P12742976488737905066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  2 * A058094 (n - 1) - 5 * A058094 (n - 2) + A058094 (n - 3) + a (n - 1)

end

end A092491.P12742976488737905066

/-! ## A092491.P9981997334217973569

`∑[A092492(n+2)]`
-/

namespace A092491.P9981997334217973569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092492 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092491.P9981997334217973569

/-! ## A092491.P5114395361848625274

`A120588(n)-A003056(A328433(n))`
-/

namespace A092491.P5114395361848625274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n - A003056 (A328433 n).toNat

end

end A092491.P5114395361848625274

/-! ## A092491.P1323046720811050222

`A059995(A130495(n)-A076921(n+1))`
-/

namespace A092491.P1323046720811050222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A130495 n - A076921 (n + 1)).toNat

end

end A092491.P1323046720811050222

/-! ## A092491.P8696909871840274902

`A059995(A130495(n))-A059995(3*n)`
-/

namespace A092491.P8696909871840274902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A130495 n).toNat - A059995 (3 * n)

end

end A092491.P8696909871840274902

/-!
# A092492: Arises in enumeration of 321-hexagon-avoiding permutations.

The programs for A092492, there is no canonical definition to state claims against.
-/

/-! ## A092492.P17571761238367698188

`Δ[A092491(abs(2-n)+1)]`
-/

namespace A092492.P17571761238367698188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092491 (|2 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A092492.P17571761238367698188

/-! ## A092492.P17348148791844879219

`round(A121097(n)/89)`
-/

namespace A092492.P17348148791844879219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A121097 n : ℚ) / 89)

end

end A092492.P17348148791844879219

/-! ## A092492.P16911685522996543393

`A033183(or(ceil(n/2), A148619(n)))`
-/

namespace A092492.P16911685522996543393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (Int.lor ⌈(n : ℚ) / 2⌉ (A148619 n)).toNat

end

end A092492.P16911685522996543393

/-! ## A092492.P15145430746775769557

`floor(floor(A287960(A287967(n))/10)/10)`
-/

namespace A092492.P15145430746775769557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A287960 (A287967 n).toNat : ℚ) / 10⌋ : ℚ) / 10⌋

end

end A092492.P15145430746775769557

/-! ## A092492.P6814937407884918596

`A008651(A023427(n)*A292460(n))`
-/

namespace A092492.P6814937407884918596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A023427 n * A292460 n).toNat

end

end A092492.P6814937407884918596

/-!
# A092493: a(n) = 4a(n-1) - 4a(n-2) + 3a(n-3) + a(n-4) - a(n-5).

The programs for A092493, the canonical program `A092493.P8416137220299255875` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092493 has offset 1).

The definition of A092493 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-4*a(n-2)+3*a(n-3)+a(n-4)-a(n-5)` (program `A092493.P8416137220299255875`, by `A092493.P8416137220299255875.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092493.P8416137220299255875

`4*a(n-1)-4*a(n-2)+3*a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=14, a(4)=42`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092493

/-- `4*a(n-1)-4*a(n-2)+3*a(n-3)+a(n-4)-a(n-5)` -/
def P8416137220299255875.Spec : Prop :=
  ∀ n, P8416137220299255875.a n = A092493 (n + 1)

theorem P8416137220299255875.correct : P8416137220299255875.Spec := by
  intro n
  simp only [A092493, Nat.add_sub_cancel]

end A092493

/-! ## A092493.P3304001743884062246

`A100196(A050147(n+1))`
-/

namespace A092493.P3304001743884062246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A050147 (n + 1)).toNat

end

end A092493.P3304001743884062246

namespace A092493

/-- `A100196(A050147(n+1))` -/
def P3304001743884062246.Spec : Prop :=
  ∀ n, P3304001743884062246.a n = A092493 (n + 1)

end A092493

/-! ## A092493.P17409817023411877250

`A226233(A336337(n+1))`
-/

namespace A092493.P17409817023411877250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A336337 (n + 1)).toNat

end

end A092493.P17409817023411877250

namespace A092493

/-- `A226233(A336337(n+1))` -/
def P17409817023411877250.Spec : Prop :=
  ∀ n, P17409817023411877250.a n = A092493 (n + 1)

end A092493

/-!
# A092494: a(n) = Sum_{p prime and p<=n} ceiling(n/p).

The programs for A092494, the canonical program `A092494.P17574960425768699571` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092494 has offset 1).

The definition of A092494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A092494.P17574960425768699571

`A048865(n+1)+A013939(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A092494

/-- `A048865(n+1)+A013939(n+1)` -/
def P17574960425768699571.Spec : Prop :=
  ∀ n, P17574960425768699571.a n = A092494 (n + 1)

theorem P17574960425768699571.correct : P17574960425768699571.Spec := by
  intro n
  simp only [A092494, Nat.add_sub_cancel]

end A092494

/-! ## A092494.P13089275836477917282

`A332687(n+1)-A062298(n+1)`
-/

namespace A092494.P13089275836477917282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332687 (n + 1) - A062298 (n + 1)

end

end A092494.P13089275836477917282

namespace A092494

/-- `A332687(n+1)-A062298(n+1)` -/
def P13089275836477917282.Spec : Prop :=
  ∀ n, P13089275836477917282.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P5800239594826384435

`A368610(n+1)-A368612(n+1)`
-/

namespace A092494.P5800239594826384435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - A368612 (n + 1)

end

end A092494.P5800239594826384435

namespace A092494

/-- `A368610(n+1)-A368612(n+1)` -/
def P5800239594826384435.Spec : Prop :=
  ∀ n, P5800239594826384435.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P16311042329116591010

`A048865(n+1)+∑[A001221(n+1)]`
-/

namespace A092494.P16311042329116591010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092494.P16311042329116591010

namespace A092494

/-- `A048865(n+1)+∑[A001221(n+1)]` -/
def P16311042329116591010.Spec : Prop :=
  ∀ n, P16311042329116591010.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P680003877833111626

`A000720(n+1)+∑[A001222(∏{p}[n, #])]`
-/

namespace A092494.P680003877833111626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092494.P680003877833111626

namespace A092494

/-- `A000720(n+1)+∑[A001222(∏{p}[n, #])]` -/
def P680003877833111626.Spec : Prop :=
  ∀ n, P680003877833111626.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P4864746069801707888

`A048865(n+1)+A082186(n+1)-1`
-/

namespace A092494.P4864746069801707888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A082186 (n + 1) - 1)

end

end A092494.P4864746069801707888

namespace A092494

/-- `A048865(n+1)+A082186(n+1)-1` -/
def P4864746069801707888.Spec : Prop :=
  ∀ n, P4864746069801707888.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P6560086464888073710

`A000720(n+1)+A013939(n+1)-A001221(n+1)`
-/

namespace A092494.P6560086464888073710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A013939 (n + 1) - A001221 (n + 1))

end

end A092494.P6560086464888073710

namespace A092494

/-- `A000720(n+1)+A013939(n+1)-A001221(n+1)` -/
def P6560086464888073710.Spec : Prop :=
  ∀ n, P6560086464888073710.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P793261161908760859

`A013939(n+1)+A368616(n+1)-A368641(n+1)`
-/

namespace A092494.P793261161908760859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368616 (n + 1) - A368641 (n + 1))

end

end A092494.P793261161908760859

namespace A092494

/-- `A013939(n+1)+A368616(n+1)-A368641(n+1)` -/
def P793261161908760859.Spec : Prop :=
  ∀ n, P793261161908760859.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P11260761216524698690

`A048865(n+1)+A368611(n+1)-A368613(n+1)`
-/

namespace A092494.P11260761216524698690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A368611 (n + 1) - A368613 (n + 1))

end

end A092494.P11260761216524698690

namespace A092494

/-- `A048865(n+1)+A368611(n+1)-A368613(n+1)` -/
def P11260761216524698690.Spec : Prop :=
  ∀ n, P11260761216524698690.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P7338121168691687600

`A368611(n+1)+A368616(n+1)-A368612(n+1)`
-/

namespace A092494.P7338121168691687600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368611 (n + 1) + (A368616 (n + 1) - A368612 (n + 1))

end

end A092494.P7338121168691687600

namespace A092494

/-- `A368611(n+1)+A368616(n+1)-A368612(n+1)` -/
def P7338121168691687600.Spec : Prop :=
  ∀ n, P7338121168691687600.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P10419080351819143702

`A368610(n+1)-(A368641(n+1)+A368613(n+1))`
-/

namespace A092494.P10419080351819143702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - (A368641 (n + 1) + A368613 (n + 1))

end

end A092494.P10419080351819143702

namespace A092494

/-- `A368610(n+1)-(A368641(n+1)+A368613(n+1))` -/
def P10419080351819143702.Spec : Prop :=
  ∀ n, P10419080351819143702.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P1719882445181882158

`∑[A010051(n+1)+A001221(n+1)]-A001221(n+1)`
-/

namespace A092494.P1719882445181882158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001221 (n + 1)

end

end A092494.P1719882445181882158

namespace A092494

/-- `∑[A010051(n+1)+A001221(n+1)]-A001221(n+1)` -/
def P1719882445181882158.Spec : Prop :=
  ∀ n, P1719882445181882158.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P13121378233147134187

`A001221(n)+a(n-1)+C(2, C(n, A006530(n+1)))` with `a(0)=0`
-/

namespace A092494.P13121378233147134187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001221 n + (a (n - 1) + (Nat.choose 2 (Nat.choose n (A006530 (n + 1)).toNat) : ℤ))

end

end A092494.P13121378233147134187

namespace A092494

/-- `A001221(n)+a(n-1)+C(2, C(n, A006530(n+1)))` -/
def P13121378233147134187.Spec : Prop :=
  ∀ n, P13121378233147134187.a n = A092494 (n + 1)

end A092494

/-! ## A092494.P8555480126127249724

`A001221(n)+a(n-1)+C(n+1, C(n+1, A000010(n+1)))` with `a(0)=0`
-/

namespace A092494.P8555480126127249724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001221 n + (a (n - 1) + (Nat.choose (n + 1) (Nat.choose (n + 1) (A000010 (n + 1)).toNat) : ℤ))

end

end A092494.P8555480126127249724

namespace A092494

/-- `A001221(n)+a(n-1)+C(n+1, C(n+1, A000010(n+1)))` -/
def P8555480126127249724.Spec : Prop :=
  ∀ n, P8555480126127249724.a n = A092494 (n + 1)

end A092494

/-!
# A092495: Least factorial multiple of n.

The programs for A092495, there is no canonical definition to state claims against.
-/

/-! ## A092495.P1870511419260357511

`A002034(n+1)!`
-/

namespace A092495.P1870511419260357511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A002034 (n + 1)).toNat

end

end A092495.P1870511419260357511

/-! ## A092495.P15435543182063392187

`A064760(n+1)!`
-/

namespace A092495.P15435543182063392187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A064760 (n + 1)).toNat

end

end A092495.P15435543182063392187

/-! ## A092495.P5173309488699045767

`(A122416(n+1)-1)!`
-/

namespace A092495.P5173309488699045767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A122416 (n + 1) - 1).toNat

end

end A092495.P5173309488699045767

/-! ## A092495.P3170741898398788054

`(n+1)*A007672(n+1)`
-/

namespace A092495.P3170741898398788054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007672 (n + 1)

end

end A092495.P3170741898398788054

/-! ## A092495.P2833552782375852707

`(A061243(n+1)-(n+1))!`
-/

namespace A092495.P2833552782375852707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A061243 (n + 1) - (n + 1 : ℤ)).toNat

end

end A092495.P2833552782375852707

/-! ## A092495.P6992035118894175026

`(n+1)*(A139148(n+1)-1)`
-/

namespace A092495.P6992035118894175026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A139148 (n + 1) - 1)

end

end A092495.P6992035118894175026

/-! ## A092495.P13967293693569853626

`∑[A029717(A028310(n))]!`
-/

namespace A092495.P13967293693569853626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029717 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A092495.P13967293693569853626

/-! ## A092495.P1085063564876664750

`A214080(A002034(n+1)²)`
-/

namespace A092495.P1085063564876664750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214080 (A002034 (n + 1) ^ 2).toNat

end

end A092495.P1085063564876664750

/-! ## A092495.P12345730159200786494

`A000142(A122416(n+1)-1)`
-/

namespace A092495.P12345730159200786494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A122416 (n + 1) - 1).toNat

end

end A092495.P12345730159200786494

/-! ## A092495.P11297020421076179503

`A000142(A061243(n+1)-(n+1))`
-/

namespace A092495.P11297020421076179503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A061243 (n + 1) - (n + 1 : ℤ)).toNat

end

end A092495.P11297020421076179503

/-!
# A092496: Molien series for 16-dimensional group of structure S_3 and order 6, corresponding to complete weight enumerators of Hermitian self-dual GF(4)-linear codes over GF(16).

The programs for A092496, there is no canonical definition to state claims against.
-/

/-! ## A092496.P9678968800826340496

`∑[A058408(n)]`
-/

namespace A092496.P9678968800826340496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092496.P9678968800826340496

/-! ## A092496.P6349572610569688245

`∑{d}[A000079(n), A058408(A001222(#))]`
-/

namespace A092496.P6349572610569688245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A058408 (A001222 d).toNat

end

end A092496.P6349572610569688245

/-!
# A092497: Molien series for 16-dimensional group of structure Z_2^4.S_3 and order 96, corresponding to complete weight enumerators of Hermitian self-dual GF(4)-linear codes over GF(16) containing the all-ones vector.

The programs for A092497, there is no canonical definition to state claims against.
-/

/-! ## A092497.P16791360291437511180

`A321044(A027133(n))`
-/

namespace A092497.P16791360291437511180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321044 (A027133 n).toNat

end

end A092497.P16791360291437511180

/-! ## A092497.P1365423095383418110

`A018216(A325676(∑[n]))`
-/

namespace A092497.P1365423095383418110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018216 (A325676 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A092497.P1365423095383418110

/-!
# A092498: Expansion of g.f. (1 + x + 2*x^2)/((1 - x)^3*(1 - x^3)).

The programs for A092498, the canonical program `A092498.P11267618525311713946` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092498 has offset 0).

The definition of A092498 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+2x^2)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` (program `A092498.P11267618525311713946`, by `A092498.P11267618525311713946.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A092498.P11267618525311713946

`ogf((1+x+2x^2)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092498

/-- `ogf((1+x+2x^2)/(1-3x+3x^2-2x^3+3x^4-3x^5+x^6))` -/
def P11267618525311713946.Spec : Prop :=
  ∀ n, P11267618525311713946.a n = A092498 n

theorem P11267618525311713946.correct : P11267618525311713946.Spec := by
  intro n
  simp only [A092498]

end A092498

/-! ## A092498.P9603969990969260296

`(4*n^3+21*n²+35*n+18-6*floor((n+2)/3))/18`
-/

namespace A092498.P9603969990969260296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n ^ 3 + 21 * n ^ 2 + 35 * n + 18 : ℤ) - 6 * ⌊(n + 2 : ℚ) / 3⌋ : ℚ) / 18

end

end A092498.P9603969990969260296

namespace A092498

/-- `(4*n^3+21*n²+35*n+18-6*floor((n+2)/3))/18` -/
def P9603969990969260296.Spec : Prop :=
  ∀ n, P9603969990969260296.a n = (A092498 n : ℚ)

end A092498

/-! ## A092498.P11215104216562258854

`∑[∑[∑[(n%3)!]]]`
-/

namespace A092498.P11215104216562258854
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092498.P11215104216562258854

namespace A092498

/-- `∑[∑[∑[(n%3)!]]]` -/
def P11215104216562258854.Spec : Prop :=
  ∀ n, (P11215104216562258854.a n : ℤ) = A092498 n

end A092498

/-! ## A092498.P5566891854826389346

`∑[∑[a(n-3)+4]]` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A092498.P5566891854826389346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n f2 =>
  f2 (n - 3) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092498.P5566891854826389346

namespace A092498

/-- `∑[∑[a(n-3)+4]]` -/
def P5566891854826389346.Spec : Prop :=
  ∀ n, (P5566891854826389346.a n : ℤ) = A092498 n

end A092498

/-! ## A092498.P14158053865616395517

`∑[∑[∑[a(n-3)^a(n-1)]]]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A092498.P14158053865616395517
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f3 =>
  f3 (n - 3) ^ f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092498.P14158053865616395517

namespace A092498

/-- `∑[∑[∑[a(n-3)^a(n-1)]]]` -/
def P14158053865616395517.Spec : Prop :=
  ∀ n, (P14158053865616395517.a n : ℤ) = A092498 n

end A092498

/-! ## A092498.P13191048610523336704

`∑[A000969(n)]`
-/

namespace A092498.P13191048610523336704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092498.P13191048610523336704

namespace A092498

/-- `∑[A000969(n)]` -/
def P13191048610523336704.Spec : Prop :=
  ∀ n, P13191048610523336704.a n = A092498 n

end A092498

/-! ## A092498.P4207624941287726997

`∑[∑[A004773(n+1)]]`
-/

namespace A092498.P4207624941287726997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092498.P4207624941287726997

namespace A092498

/-- `∑[∑[A004773(n+1)]]` -/
def P4207624941287726997.Spec : Prop :=
  ∀ n, P4207624941287726997.a n = A092498 n

end A092498

/-! ## A092498.P10748294094273157769

`∑[A298787(n)-n²]`
-/

namespace A092498.P10748294094273157769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298787 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A092498.P10748294094273157769

namespace A092498

/-- `∑[A298787(n)-n²]` -/
def P10748294094273157769.Spec : Prop :=
  ∀ n, P10748294094273157769.a n = A092498 n

end A092498

/-! ## A092498.P18207762982452352564

`∑[(n+1)²]-A060999(n)`
-/

namespace A092498.P18207762982452352564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A060999 n

end

end A092498.P18207762982452352564

namespace A092498

/-- `∑[(n+1)²]-A060999(n)` -/
def P18207762982452352564.Spec : Prop :=
  ∀ n, P18207762982452352564.a n = A092498 n

end A092498

/-! ## A092498.P9347277017843080823

`A084849(n)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=11`
-/

namespace A092498.P9347277017843080823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 11] fun n a =>
  A084849 n + a (n - 3)

end

end A092498.P9347277017843080823

namespace A092498

/-- `A084849(n)+a(n-3)` -/
def P9347277017843080823.Spec : Prop :=
  ∀ n, P9347277017843080823.a n = A092498 n

end A092498

/-! ## A092498.P4477153898787051011

`A238340(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A092498.P4477153898787051011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A238340 (n + 1) - a (n - 1)

end

end A092498.P4477153898787051011

namespace A092498

/-- `A238340(n+1)-a(n-1)` -/
def P4477153898787051011.Spec : Prop :=
  ∀ n, P4477153898787051011.a n = A092498 n

end A092498

/-! ## A092498.P3769858157714324183

`∑[n+1]+∑[∑[A042965(n+1)]]`
-/

namespace A092498.P3769858157714324183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A092498.P3769858157714324183

namespace A092498

/-- `∑[n+1]+∑[∑[A042965(n+1)]]` -/
def P3769858157714324183.Spec : Prop :=
  ∀ n, P3769858157714324183.a n = A092498 n

end A092498

/-! ## A092498.P16994010545236134071

`A212973(n)-A181286(n)`
-/

namespace A092498.P16994010545236134071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212973 n - A181286 n

end

end A092498.P16994010545236134071

namespace A092498

/-- `A212973(n)-A181286(n)` -/
def P16994010545236134071.Spec : Prop :=
  ∀ n, P16994010545236134071.a n = A092498 n

end A092498

/-! ## A092498.P3234508392287963088

`A002417(n+1)-A134507(n+1)`
-/

namespace A092498.P3234508392287963088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) - A134507 (n + 1)

end

end A092498.P3234508392287963088

namespace A092498

/-- `A002417(n+1)-A134507(n+1)` -/
def P3234508392287963088.Spec : Prop :=
  ∀ n, P3234508392287963088.a n = A092498 n

end A092498

/-! ## A092498.P17062511625185099411

`A000292(n+1)+A000292(n)-A060999(n)`
-/

namespace A092498.P17062511625185099411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A000292 n - A060999 n)

end

end A092498.P17062511625185099411

namespace A092498

/-- `A000292(n+1)+A000292(n)-A060999(n)` -/
def P17062511625185099411.Spec : Prop :=
  ∀ n, P17062511625185099411.a n = A092498 n

end A092498

/-! ## A092498.P6476515202055376808

`A173196(n+1)+A173196(n+1)+A014126(n)`
-/

namespace A092498.P6476515202055376808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (n + 1) + (A173196 (n + 1) + A014126 n)

end

end A092498.P6476515202055376808

namespace A092498

/-- `A173196(n+1)+A173196(n+1)+A014126(n)` -/
def P6476515202055376808.Spec : Prop :=
  ∀ n, P6476515202055376808.a n = A092498 n

end A092498

/-! ## A092498.P11115478103077584468

`A000217(n+1)+A181286(n+1)+A181286(n)`
-/

namespace A092498.P11115478103077584468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A181286 (n + 1) + A181286 n)

end

end A092498.P11115478103077584468

namespace A092498

/-- `A000217(n+1)+A181286(n+1)+A181286(n)` -/
def P11115478103077584468.Spec : Prop :=
  ∀ n, P11115478103077584468.a n = A092498 n

end A092498

/-! ## A092498.P7480766760163765464

`A241526(n+1)-A000212(n+2)`
-/

namespace A092498.P7480766760163765464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241526 (n + 1) - A000212 (n + 2)

end

end A092498.P7480766760163765464

namespace A092498

/-- `A241526(n+1)-A000212(n+2)` -/
def P7480766760163765464.Spec : Prop :=
  ∀ n, P7480766760163765464.a n = A092498 n

end A092498

/-! ## A092498.P12311550892968020343

`A000601(2*n)`
-/

namespace A092498.P12311550892968020343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * n)

end

end A092498.P12311550892968020343

namespace A092498

/-- `A000601(2*n)` -/
def P12311550892968020343.Spec : Prop :=
  ∀ n, P12311550892968020343.a n = A092498 n

end A092498

/-!
# A092499: Chebyshev polynomials S(n-1,21) with Diophantine property.

The programs for A092499, the canonical program `A092499.P13180851132667307642` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A092499 has offset 0).

The definition of A092499 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A092499.P13180851132667307642

`21*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A092499

/-- `21*a(n-1)-a(n-2)` -/
def P13180851132667307642.Spec : Prop :=
  ∀ n, P13180851132667307642.a n = A092499 n

theorem P13180851132667307642.correct : P13180851132667307642.Spec := by
  intro n
  simp only [A092499]

end A092499

/-! ## A092499.P4310965258878075790

`ogf(x/(1-21x+x^2))`
-/

namespace A092499.P4310965258878075790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -21, 1] n

end

end A092499.P4310965258878075790

namespace A092499

/-- `ogf(x/(1-21x+x^2))` -/
def P4310965258878075790.Spec : Prop :=
  ∀ n, P4310965258878075790.a n = A092499 n

end A092499

/-! ## A092499.P3065818792169158398

`∑[2*A099277(n)]-A099277(n)`
-/

namespace A092499.P3065818792169158398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099277 n

end

end A092499.P3065818792169158398

namespace A092499

/-- `∑[2*A099277(n)]-A099277(n)` -/
def P3065818792169158398.Spec : Prop :=
  ∀ n, P3065818792169158398.a n = A092499 n

end A092499

/-! ## A092499.P15708263958083223670

`A212335(n+1)-(A212335(n)+A090729(n+1))`
-/

namespace A092499.P15708263958083223670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212335 (n + 1) - (A212335 n + A090729 (n + 1))

end

end A092499.P15708263958083223670

namespace A092499

/-- `A212335(n+1)-(A212335(n)+A090729(n+1))` -/
def P15708263958083223670.Spec : Prop :=
  ∀ n, P15708263958083223670.a n = A092499 n

end A092499

/-! ## A092499.P7668994492795145527

`round(xor(1, a(n-1)²)/a(n-2))` with `a(0)=0, a(1)=1, a(2)=21`
-/

namespace A092499.P7668994492795145527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 21] fun n a =>
  SequenceMachineLib.roundAway ((Int.xor 1 (a (n - 1) ^ 2) : ℚ) / (a (n - 2) : ℚ))

end

end A092499.P7668994492795145527

namespace A092499

/-- `round(xor(1, a(n-1)²)/a(n-2))` -/
def P7668994492795145527.Spec : Prop :=
  ∀ n, P7668994492795145527.a n = A092499 n

end A092499

