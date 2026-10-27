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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A213202: Number of ways to write n = p + sum_{k=1..m}(-1)^(m-k)*p_k, where p is a Sophie Germain prime and p_k is the k-th prime.

The programs for A213202, there is no canonical definition to state claims against.
-/

/-! ## A213202.P16584023218185953253

`A326034(A025431(n)+A015614(n+1))`
-/

namespace A213202.P16584023218185953253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326034 (A025431 n + A015614 (n + 1)).toNat

end

end A213202.P16584023218185953253

/-! ## A213202.P8739497352961323206

`A001221(A134293(n+1)%A134304(3*n+5))`
-/

namespace A213202.P8739497352961323206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A134293 (n + 1)) (A134304 (3 * n + 5))).toNat

end

end A213202.P8739497352961323206

/-!
# A213203: The sum of the first n! integers, with every n-th integer taken as negative.

The programs for A213203, the canonical program `A213203.P16236968659299571090` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213203 has offset 1).

The definition of A213203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213203.P16236968659299571090

`(n+1)*n!*((n-1)*n!-1)/2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213203

/-- `(n+1)*n!*((n-1)*n!-1)/2` -/
def P16236968659299571090.Spec : Prop :=
  ∀ n, P16236968659299571090.a n = (A213203 (n + 1) : ℚ)

end A213203

/-! ## A213203.P16813954629559083001

`((n-1)*n!-1)/2*∏[n+1]`
-/

namespace A213203.P16813954629559083001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (Nat.factorial n : ℤ) - 1 : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A213203.P16813954629559083001

namespace A213203

/-- `((n-1)*n!-1)/2*∏[n+1]` -/
def P16813954629559083001.Spec : Prop :=
  ∀ n, P16813954629559083001.a n = (A213203 (n + 1) : ℚ)

end A213203

/-! ## A213203.P15904907240853643826

`A001710(n)*A052571(n+1)-A001710(n+1)`
-/

namespace A213203.P15904907240853643826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 n * A052571 (n + 1) - A001710 (n + 1)

end

end A213203.P15904907240853643826

namespace A213203

/-- `A001710(n)*A052571(n+1)-A001710(n+1)` -/
def P15904907240853643826.Spec : Prop :=
  ∀ n, P15904907240853643826.a n = A213203 (n + 1)

end A213203

/-! ## A213203.P1180176801006612873

`A000142(n)*A317527(n+1)-A001710(n+1)`
-/

namespace A213203.P1180176801006612873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A317527 (n + 1) - A001710 (n + 1)

end

end A213203.P1180176801006612873

namespace A213203

/-- `A000142(n)*A317527(n+1)-A001710(n+1)` -/
def P1180176801006612873.Spec : Prop :=
  ∀ n, P1180176801006612873.a n = A213203 (n + 1)

end A213203

/-!
# A213204: Number of terms of the Collatz (3x+1) trajectory of n that are greater than or equal to n.

The programs for A213204, there is no canonical definition to state claims against.
-/

/-! ## A213204.P3419872579905949162

`A222597(n+1)+1`
-/

namespace A213204.P3419872579905949162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1) + 1

end

end A213204.P3419872579905949162

/-! ## A213204.P15950086460233785325

`A008908(n+1)-A076228(n+1)`
-/

namespace A213204.P15950086460233785325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A076228 (n + 1)

end

end A213204.P15950086460233785325

/-! ## A213204.P596937950738768110

`A006577(n+1)+1-A076228(n+1)`
-/

namespace A213204.P596937950738768110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A076228 (n + 1))

end

end A213204.P596937950738768110

/-! ## A213204.P11613158897986285890

`A008908(n+1)+1-A159999(n+1)`
-/

namespace A213204.P11613158897986285890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) + (1 - A159999 (n + 1))

end

end A213204.P11613158897986285890

/-! ## A213204.P11095166302736774714

`A008908(n+1)+A246436(n+1)-n`
-/

namespace A213204.P11095166302736774714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) + (A246436 (n + 1) - (n : ℤ))

end

end A213204.P11095166302736774714

/-!
# A213205: T(n,k) = ((k+n)^2-4*k+3+(-1)^k-2*(-1)^n-(k+n)*(-1)^(k+n))/2; n , k > 0, read by antidiagonals.

The programs for A213205, the canonical program `A213205.P4254426360876600584` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213205 has offset 1).

The definition of A213205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9730 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213205.P6221905569678049057

`A211377(A199855(A213171(n+1)))`
-/

namespace A213205.P6221905569678049057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211377 (A199855 (A213171 (n + 1)).toNat).toNat

end

end A213205.P6221905569678049057

namespace A213205

/-- `A211377(A199855(A213171(n+1)))` -/
def P6221905569678049057.Spec : Prop :=
  ∀ n, P6221905569678049057.a n = A213205 (n + 1)

end A213205

/-! ## A213205.P4254426360876600584

`A210521(A379343(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A213205

/-- `A210521(A379343(n+1))` -/
def P4254426360876600584.Spec : Prop :=
  ∀ n, P4254426360876600584.a n = A213205 (n + 1)

theorem P4254426360876600584.correct : P4254426360876600584.Spec := by
  intro n
  simp only [A213205, Nat.add_sub_cancel]

end A213205

/-!
# A213207: Number of distinct products i*j*k over all triples (i,j,k) with |i| + |j| + |k| <= n.

The programs for A213207, there is no canonical definition to state claims against.
-/

/-! ## A213207.P14774022269934972977

`2*A213213(n)-1`
-/

namespace A213207.P14774022269934972977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213213 n - 1

end

end A213207.P14774022269934972977

/-! ## A213207.P4689424598922787666

`A008683(A094343(n+1))+2*A213213(n)`
-/

namespace A213207.P4689424598922787666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A094343 (n + 1)).toNat + 2 * A213213 n

end

end A213207.P4689424598922787666

/-! ## A213207.P6505071534093975106

`A008683(A008578(n+2))+2*A213213(n)`
-/

namespace A213207.P6505071534093975106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008578 (n + 2)).toNat + 2 * A213213 n

end

end A213207.P6505071534093975106

/-! ## A213207.P14289234234694374051

`A008683(A006093(n+1)+1)+2*A213213(n)`
-/

namespace A213207.P14289234234694374051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006093 (n + 1) + 1).toNat + 2 * A213213 n

end

end A213207.P14289234234694374051

/-! ## A213207.P17821512208239212590

`A213213(n)+A213213(n)-A300909(A300909(n+1))`
-/

namespace A213207.P17821512208239212590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213213 n + (A213213 n - A300909 (A300909 (n + 1)).toNat)

end

end A213207.P17821512208239212590

/-! ## A213207.P8104559225348085627

`(A213213(n)+A213213(n)-1)^A019425(A019425(n))`
-/

namespace A213207.P8104559225348085627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213213 n + (A213213 n - 1) : ℚ) ^ (A019425 (A019425 n).toNat : ℤ)

end

end A213207.P8104559225348085627

/-! ## A213207.P2123604561003075849

`A008683(A023263(n+1))+2*A213213(n)`
-/

namespace A213207.P2123604561003075849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A023263 (n + 1)).toNat + 2 * A213213 n

end

end A213207.P2123604561003075849

/-! ## A213207.P975132541824360822

`A004273(A213213(n))`
-/

namespace A213207.P975132541824360822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A213213 n).toNat

end

end A213207.P975132541824360822

/-! ## A213207.P10672443042736791314

`A005408(A213213(n)-1)`
-/

namespace A213207.P10672443042736791314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A213213 n - 1).toNat

end

end A213207.P10672443042736791314

/-! ## A213207.P13995340576161208557

`A346468(2*A213213(n))`
-/

namespace A213207.P13995340576161208557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * A213213 n).toNat

end

end A213207.P13995340576161208557

/-!
# A213208: Number of distinct products i*j*k over all triples (i,j,k) with |i| + |j| + |k| <= n and gcd(i,j,k) <= 1.

The programs for A213208, there is no canonical definition to state claims against.
-/

/-! ## A213208.P2638083148447393994

`2*A213212(n)-1`
-/

namespace A213208.P2638083148447393994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213212 n - 1

end

end A213208.P2638083148447393994

/-! ## A213208.P13474483099546740974

`A153881(n+2)+2*A213212(n)`
-/

namespace A213208.P13474483099546740974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + 2 * A213212 n

end

end A213208.P13474483099546740974

/-! ## A213208.P10291637287419802261

`A008683(A020484(n))+2*A213212(n)`
-/

namespace A213208.P10291637287419802261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + 2 * A213212 n

end

end A213208.P10291637287419802261

/-! ## A213208.P8808663442777200465

`A008683(A062584(n))+2*A213212(n)`
-/

namespace A213208.P8808663442777200465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062584 n).toNat + 2 * A213212 n

end

end A213208.P8808663442777200465

/-! ## A213208.P4565156964762506355

`A008683(A006512(n+1))+2*A213212(n)`
-/

namespace A213208.P4565156964762506355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1)).toNat + 2 * A213212 n

end

end A213208.P4565156964762506355

/-! ## A213208.P15383952187054113004

`A008683(A046133(n+1))+2*A213212(n)`
-/

namespace A213208.P15383952187054113004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A046133 (n + 1)).toNat + 2 * A213212 n

end

end A213208.P15383952187054113004

/-! ## A213208.P7308759644619971831

`A057428(A023115(n+1))+2*A213212(n)`
-/

namespace A213208.P7308759644619971831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A023115 (n + 1)).toNat + 2 * A213212 n

end

end A213208.P7308759644619971831

/-! ## A213208.P15533043170350696166

`A008683(A084126(n+1))+2*A213212(n)`
-/

namespace A213208.P15533043170350696166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A084126 (n + 1)).toNat + 2 * A213212 n

end

end A213208.P15533043170350696166

/-! ## A213208.P17271670774860894501

`A008683(sqrt(A001248(n+1)))+2*A213212(n)`
-/

namespace A213208.P17271670774860894501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat + 2 * A213212 n

end

end A213208.P17271670774860894501

/-! ## A213208.P16746082718655631110

`A213212(n)+A213212(n)-A001222(A198273(n+1))`
-/

namespace A213208.P16746082718655631110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213212 n + (A213212 n - A001222 (A198273 (n + 1)).toNat)

end

end A213208.P16746082718655631110

/-! ## A213208.P16115773201039137194

`A004273(A213212(n))`
-/

namespace A213208.P16115773201039137194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A213212 n).toNat

end

end A213208.P16115773201039137194

/-! ## A213208.P5603553107307804788

`A005408(A213212(n)-1)`
-/

namespace A213208.P5603553107307804788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A213212 n - 1).toNat

end

end A213208.P5603553107307804788

/-! ## A213208.P15595086911575360621

`A346468(2*A213212(n))`
-/

namespace A213208.P15595086911575360621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (2 * A213212 n).toNat

end

end A213208.P15595086911575360621

/-! ## A213208.P10112707218929662032

`A346468(A213212(n)+A213212(n))`
-/

namespace A213208.P10112707218929662032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346468 (A213212 n + A213212 n).toNat

end

end A213208.P10112707218929662032

/-! ## A213208.P9298008271531180304

`A016789(A213212(n)-1)-A213212(n)`
-/

namespace A213208.P9298008271531180304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A213212 n - 1).toNat - A213212 n

end

end A213208.P9298008271531180304

/-! ## A213208.P14946480333222084968

`A005843(A213212(n))-A213212(A025462(n))`
-/

namespace A213208.P14946480333222084968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213212 n).toNat - A213212 (A025462 n).toNat

end

end A213208.P14946480333222084968

/-!
# A213209: Number of isolated even numbers in Collatz (3x+1) trajectory of n.

The programs for A213209, there is no canonical definition to state claims against.
-/

/-! ## A213209.P1733187572230921539

`A286380(n+1)-A213181(n+1)`
-/

namespace A213209.P1733187572230921539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A213181 (n + 1)

end

end A213209.P1733187572230921539

/-! ## A213209.P810442208784785961

`A286380(n+1)-A160541(A026741(n+1))`
-/

namespace A213209.P810442208784785961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A160541 (A026741 (n + 1)).toNat

end

end A213209.P810442208784785961

/-! ## A213209.P5318861399055065597

`A110654(A220182(n+1))-A213181(n+1)`
-/

namespace A213209.P5318861399055065597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A220182 (n + 1)).toNat - A213181 (n + 1)

end

end A213209.P5318861399055065597

/-! ## A213209.P5526465360609537616

`A286380(n+1)-A160541(A214682(n+1))`
-/

namespace A213209.P5526465360609537616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A160541 (A214682 (n + 1)).toNat

end

end A213209.P5526465360609537616

/-! ## A213209.P2996852253942128594

`A078719(n+1)-(A213181(n+1)+A059841(n))`
-/

namespace A213209.P2996852253942128594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1) - (A213181 (n + 1) + A059841 n)

end

end A213209.P2996852253942128594

/-! ## A213209.P9973652741024961975

`A220182(n+1)-(A213181(n+1)+A006667(n+1))`
-/

namespace A213209.P9973652741024961975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1) - (A213181 (n + 1) + A006667 (n + 1))

end

end A213209.P9973652741024961975

/-! ## A213209.P6687897595228621153

`A286380(n+1)-A160541(A283971(n+1))`
-/

namespace A213209.P6687897595228621153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A160541 (A283971 (n + 1)).toNat

end

end A213209.P6687897595228621153

/-! ## A213209.P18262954061489746124

`A286380(n+1)-A160541(A165342(n+1))`
-/

namespace A213209.P18262954061489746124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) - A160541 (A165342 (n + 1)).toNat

end

end A213209.P18262954061489746124

/-!
# A213210: Numbers n such that n and n + 8 are prime and there is a power of two in the interval (n,n+8).

The programs for A213210, there is no canonical definition to state claims against.
-/

/-! ## A213210.P2324219701686616885

`A056495(A333610(n))-1`
-/

namespace A213210.P2324219701686616885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056495 (A333610 n).toNat - 1

end

end A213210.P2324219701686616885

/-!
# A213211: Triangular array read by rows: T(n,k) is the number of size k subsets of {1,2,...,n} such that (when the elements are arranged in increasing order) the smallest element is congruent to 1 mod 3 and the difference of every pair of successive elements is also congruent to 1 mod 3.

The programs for A213211, the canonical program `A213211.P8517783259495149270` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213211 has offset 0).

The definition of A213211 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213211.P8517783259495149270

`C(col(n)+floor((row(n)-col(n))/3), col(n))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213211

/-- `C(col(n)+floor((row(n)-col(n))/3), col(n))` -/
def P8517783259495149270.Spec : Prop :=
  ∀ n, (P8517783259495149270.a n : ℤ) = A213211 n

theorem P8517783259495149270.correct : P8517783259495149270.Spec := by
  intro n
  simp only [A213211]

end A213211

/-! ## A213211.P362274581953056236

`A081604(C(A353434(n), A125919(n+1)))`
-/

namespace A213211.P362274581953056236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (Nat.choose (A353434 n).toNat (A125919 (n + 1)).toNat)

end

end A213211.P362274581953056236

namespace A213211

/-- `A081604(C(A353434(n), A125919(n+1)))` -/
def P362274581953056236.Spec : Prop :=
  ∀ n, P362274581953056236.a n = A213211 n

end A213211

/-! ## A213211.P15850451293868198228

`A256915(A318451(n+1)+A267479(n+1))`
-/

namespace A213211.P15850451293868198228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256915 (A318451 (n + 1) + A267479 (n + 1)).toNat

end

end A213211.P15850451293868198228

namespace A213211

/-- `A256915(A318451(n+1)+A267479(n+1))` -/
def P15850451293868198228.Spec : Prop :=
  ∀ n, P15850451293868198228.a n = A213211 n

end A213211

/-! ## A213211.P15858996322933472402

`A035170(A225816(n))`
-/

namespace A213211.P15858996322933472402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035170 (A225816 n).toNat

end

end A213211.P15858996322933472402

namespace A213211

/-- `A035170(A225816(n))` -/
def P15858996322933472402.Spec : Prop :=
  ∀ n, P15858996322933472402.a n = A213211 n

end A213211

/-! ## A213211.P17288879707865902176

`A238943(A208673(n+1))`
-/

namespace A213211.P17288879707865902176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238943 (A208673 (n + 1)).toNat

end

end A213211.P17288879707865902176

namespace A213211

/-- `A238943(A208673(n+1))` -/
def P17288879707865902176.Spec : Prop :=
  ∀ n, P17288879707865902176.a n = A213211 n

end A213211

/-!
# A213212: Number of distinct products i*j*k over all triples (i,j,k) with i,j,k >= 0 and i+j+k <= n and gcd(i,j,k) <= 1.

The programs for A213212, there is no canonical definition to state claims against.
-/

/-! ## A213212.P317108326848617418

`(A213208(n)+1)/2`
-/

namespace A213212.P317108326848617418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213208 n + 1 : ℚ) / 2

end

end A213212.P317108326848617418

/-! ## A213212.P9381626470863605683

`ceil(A213208(n)/2)`
-/

namespace A213212.P9381626470863605683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213208 n : ℚ) / 2⌉

end

end A213212.P9381626470863605683

/-! ## A213212.P10756738911214182677

`round(A213208(n)/(2-A000007(n)))`
-/

namespace A213212.P10756738911214182677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213208 n : ℚ) / (2 - A000007 n : ℚ))

end

end A213212.P10756738911214182677

/-! ## A213212.P14863375683528001756

`round(A213208(n)/A040001(A008574(n)))`
-/

namespace A213212.P14863375683528001756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213208 n : ℚ) / (A040001 (A008574 n).toNat : ℚ))

end

end A213212.P14863375683528001756

/-! ## A213212.P13279308509948170726

`(A213208(n)+1)*2^A008683(A133410(n))`
-/

namespace A213212.P13279308509948170726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213208 n + 1 : ℚ) * (2 : ℚ) ^ (A008683 (A133410 n).toNat : ℤ)

end

end A213212.P13279308509948170726

/-! ## A213212.P16905971588418403171

`round(A213208(n)/A040001(A225530(n)))`
-/

namespace A213212.P16905971588418403171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213208 n : ℚ) / (A040001 (A225530 n).toNat : ℚ))

end

end A213212.P16905971588418403171

/-! ## A213212.P3786204806462053158

`A273943(A213208(n)+1)`
-/

namespace A213212.P3786204806462053158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213208 n + 1).toNat

end

end A213212.P3786204806462053158

/-! ## A213212.P8872972397496832352

`A014682(A213208(n)+1)`
-/

namespace A213212.P8872972397496832352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213208 n + 1).toNat

end

end A213212.P8872972397496832352

/-! ## A213212.P13740845881108480088

`A305425(A213208(n)+1)`
-/

namespace A213212.P13740845881108480088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305425 (A213208 n + 1).toNat

end

end A213212.P13740845881108480088

/-! ## A213212.P13902207603582737987

`A302032(A213208(n)+1)`
-/

namespace A213212.P13902207603582737987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A213208 n + 1).toNat

end

end A213212.P13902207603582737987

/-! ## A213212.P3239451997056060214

`A328399(A213208(n)-1)`
-/

namespace A213212.P3239451997056060214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (A213208 n - 1).toNat

end

end A213212.P3239451997056060214

/-! ## A213212.P14459668449853923188

`A328399(xor(1, A213208(n)))`
-/

namespace A213212.P14459668449853923188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Int.xor 1 (A213208 n)).toNat

end

end A213212.P14459668449853923188

/-! ## A213212.P2860611861129065105

`A038572(A213208(n)+1)`
-/

namespace A213212.P2860611861129065105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A213208 n + 1).toNat

end

end A213212.P2860611861129065105

/-! ## A213212.P12917545779649432201

`A175126(A213208(n)+1)`
-/

namespace A213212.P12917545779649432201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A213208 n + 1).toNat

end

end A213212.P12917545779649432201

/-! ## A213212.P17335147230088143752

`A328399(2*A213208(n))/2`
-/

namespace A213212.P17335147230088143752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * A213208 n).toNat : ℚ) / 2

end

end A213212.P17335147230088143752

/-!
# A213213: Number of distinct products i*j*k over all triples (i,j,k) with i,j,k>=0 and i+j+k <= n.

The programs for A213213, there is no canonical definition to state claims against.
-/

/-! ## A213213.P10362799869445221180

`(A213207(n)+1)/2`
-/

namespace A213213.P10362799869445221180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213207 n + 1 : ℚ) / 2

end

end A213213.P10362799869445221180

/-! ## A213213.P6125696737754162859

`ceil(A213207(n)/2)`
-/

namespace A213213.P6125696737754162859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213207 n : ℚ) / 2⌉

end

end A213213.P6125696737754162859

/-! ## A213213.P872161415558041490

`round(A213207(n)/A020639(A008574(n)))`
-/

namespace A213213.P872161415558041490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213207 n : ℚ) / (A020639 (A008574 n).toNat : ℚ))

end

end A213213.P872161415558041490

/-! ## A213213.P13862554254267357661

`round(A213207(n)/A040001(A005843(n)))`
-/

namespace A213213.P13862554254267357661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A213207 n : ℚ) / (A040001 (A005843 n).toNat : ℚ))

end

end A213213.P13862554254267357661

/-! ## A213213.P8831143614619953306

`A273943(A213207(n)+1)`
-/

namespace A213213.P8831143614619953306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A213207 n + 1).toNat

end

end A213213.P8831143614619953306

/-! ## A213213.P2278558582095103043

`A014682(A213207(n)+1)`
-/

namespace A213213.P2278558582095103043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A213207 n + 1).toNat

end

end A213213.P2278558582095103043

/-! ## A213213.P2372863089482353902

`A302032(A213207(n)+1)`
-/

namespace A213213.P2372863089482353902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (A213207 n + 1).toNat

end

end A213213.P2372863089482353902

/-! ## A213213.P3096472901847178213

`A246425(A213207(n))`
-/

namespace A213213.P3096472901847178213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A213207 n).toNat

end

end A213213.P3096472901847178213

/-! ## A213213.P15412657951320815062

`A000463(or(1, A213207(n)))`
-/

namespace A213213.P15412657951320815062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (A213207 n)).toNat

end

end A213213.P15412657951320815062

/-!
# A213214: Number of steps to reach 1 in the Collatz (3x+1) problem starting with 3^n - 1.

The programs for A213214, there is no canonical definition to state claims against.
-/

/-! ## A213214.P14184008420612840867

`A075488(n+1)-1`
-/

namespace A213214.P14184008420612840867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075488 (n + 1) - 1

end

end A213214.P14184008420612840867

/-! ## A213214.P642783807581974558

`A075485(n+1)-A062545(n)`
-/

namespace A213214.P642783807581974558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075485 (n + 1) - A062545 n

end

end A213214.P642783807581974558

/-! ## A213214.P16321839695447943402

`A193688(n+1)+1-A062545(n)`
-/

namespace A213214.P16321839695447943402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193688 (n + 1) + (1 - A062545 n)

end

end A213214.P16321839695447943402

/-! ## A213214.P2393796549304645043

`A153881(2*(n+1))+A075488(n+1)`
-/

namespace A213214.P2393796549304645043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * (n + 1)) + A075488 (n + 1)

end

end A213214.P2393796549304645043

/-! ## A213214.P56785805023929336

`abs(A075485(n+1)-A051755(n+2))-1`
-/

namespace A213214.P56785805023929336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A075485 (n + 1) - A051755 (n + 2)| - 1

end

end A213214.P56785805023929336

/-! ## A213214.P1595723677406361197

`A082551(A014963(n+1))+A075488(n+1)`
-/

namespace A213214.P1595723677406361197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A014963 (n + 1)).toNat + A075488 (n + 1)

end

end A213214.P1595723677406361197

/-! ## A213214.P1752265205613614456

`A075485(n+1)-(A038608(A103517(n))+1)`
-/

namespace A213214.P1752265205613614456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075485 (n + 1) - (A038608 (A103517 n).toNat + 1)

end

end A213214.P1752265205613614456

/-! ## A213214.P11552465800040902443

`A082551(p?[A349238(n)])+A075488(n+1)`
-/

namespace A213214.P11552465800040902443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A075488 (n + 1)

end

end A213214.P11552465800040902443

/-! ## A213214.P4547147637559852787

`A082551(p?[A195126(n)])+A075488(n+1)`
-/

namespace A213214.P4547147637559852787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A075488 (n + 1)

end

end A213214.P4547147637559852787

/-! ## A213214.P16866683983588758175

`A023443(A075488(n+1))`
-/

namespace A213214.P16866683983588758175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075488 (n + 1)).toNat

end

end A213214.P16866683983588758175

/-! ## A213214.P1991216464717854568

`A082551(p?[A075488(n+1)])+A075488(n+1)`
-/

namespace A213214.P1991216464717854568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075488 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A075488 (n + 1)

end

end A213214.P1991216464717854568

/-! ## A213214.P444228343107741532

`A082551(A048058(n))+A075488(n+1)`
-/

namespace A213214.P444228343107741532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082551 (A048058 n).toNat + A075488 (n + 1)

end

end A213214.P444228343107741532

/-!
# A213215: For the Collatz (3x+1) iterations starting with the odd numbers k, a(n) is the smallest k such that the trajectory contains at least n successive odd numbers == 3 (mod 4).

The programs for A213215, there is no canonical definition to state claims against.
-/

/-! ## A213215.P16349593961022760196

`A222598(n+1)%A152811(A140298(n))`
-/

namespace A213215.P16349593961022760196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222598 (n + 1)) (A152811 (A140298 n).toNat)

end

end A213215.P16349593961022760196

/-! ## A213215.P17716896936651556519

`A350370(A010054(ceil(2^(n-2))+floor(2^(n-3)))+n)`
-/

namespace A213215.P17716896936651556519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350370 (A010054 (⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ + ⌊(2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋).toNat + (n : ℤ)).toNat

end

end A213215.P17716896936651556519

/-! ## A213215.P14297808336525497345

`and(A222598(A028835(n+1)), A222598(n+1))`
-/

namespace A213215.P14297808336525497345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222598 (A028835 (n + 1)).toNat) (A222598 (n + 1))

end

end A213215.P14297808336525497345

/-! ## A213215.P10400408550597695487

`and(A222598(A056527(n+1)), A222598(n+1))`
-/

namespace A213215.P10400408550597695487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222598 (A056527 (n + 1)).toNat) (A222598 (n + 1))

end

end A213215.P10400408550597695487

/-! ## A213215.P9216141080527449172

`and(A222598(n+1), A350370(∑{d}[n+1, (n+1)*#%2]))`
-/

namespace A213215.P9216141080527449172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222598 (n + 1)) (A350370 (∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d % 2)))

end

end A213215.P9216141080527449172

/-!
# A213217: Earliest string in {1,2,...9}* that is order-isomorphic to string formed by digits of n.

The programs for A213217, there is no canonical definition to state claims against.
-/

/-! ## A213217.P1110112530774592590

`A356264(A139337(n)+3)+dr(A193581(n))`
-/

namespace A213217.P1110112530774592590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356264 (A139337 n + 3).toNat + (SequenceMachineLib.digitalRoot (A193581 n) : ℤ)

end

end A213217.P1110112530774592590

/-! ## A213217.P14346852953270772997

`A260529(A355221(n))-A107846(n)`
-/

namespace A213217.P14346852953270772997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 (A355221 n).toNat - A107846 n

end

end A213217.P14346852953270772997

/-! ## A213217.P3350625642316136957

`A004086(A260526(n)-A107846(n))`
-/

namespace A213217.P3350625642316136957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A260526 n - A107846 n).toNat

end

end A213217.P3350625642316136957

/-! ## A213217.P14817027404299501695

`A321474(A260526(n)-A107846(n))`
-/

namespace A213217.P14817027404299501695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A260526 n - A107846 n).toNat

end

end A213217.P14817027404299501695

/-! ## A213217.P16963333902023643884

`A345110(A260526(n)-A107846(n))`
-/

namespace A213217.P16963333902023643884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (A260526 n - A107846 n).toNat

end

end A213217.P16963333902023643884

/-! ## A213217.P5387242218630730409

`A260526(A260526(A107846(n)+n))-A107846(n)`
-/

namespace A213217.P5387242218630730409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 (A260526 (A107846 n + (n : ℤ)).toNat).toNat - A107846 n

end

end A213217.P5387242218630730409

/-! ## A213217.P3636131851075070170

`A260526(A260526(n)-A107846(n))-A107846(n)`
-/

namespace A213217.P3636131851075070170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260526 (A260526 n - A107846 n).toNat - A107846 n

end

end A213217.P3636131851075070170

/-! ## A213217.P12353133308874277741

`A260529(n)-A107846(n)`
-/

namespace A213217.P12353133308874277741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260529 n - A107846 n

end

end A213217.P12353133308874277741

/-! ## A213217.P7871014293112081672

`A004086(A260528(n)-A107846(n))`
-/

namespace A213217.P7871014293112081672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A260528 n - A107846 n).toNat

end

end A213217.P7871014293112081672

/-! ## A213217.P3165009684847831043

`A321474(A260528(n)-A107846(n))`
-/

namespace A213217.P3165009684847831043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A260528 n - A107846 n).toNat

end

end A213217.P3165009684847831043

/-!
# A213219: Largest k such that F = 1 + x*(x*F^n)'/F^k is solved by a power series F with positive coefficients (where ' is the derivative w.r.t. x).

The programs for A213219, there is no canonical definition to state claims against.
-/

/-! ## A213219.P9845189397010625999

`A057427(∑[4*n+1])+floor(n*cosh(1))`
-/

namespace A213219.P9845189397010625999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (∑ j ∈ Finset.range (n + 1), f1 j) + ⌊(n : ℝ) * Real.cosh (1 : ℝ)⌋

end

end A213219.P9845189397010625999

/-! ## A213219.P1313924846560828741

`ceil(A000007(A089863(n))+n*cosh(1))`
-/

namespace A213219.P1313924846560828741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000007 (A089863 n).toNat : ℝ) + (n : ℝ) * Real.cosh (1 : ℝ)⌉

end

end A213219.P1313924846560828741

/-! ## A213219.P2167078007650061945

`A104725(A179025(n+1))+floor(n*cosh(1))`
-/

namespace A213219.P2167078007650061945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A179025 (n + 1)).toNat + ⌊(n : ℝ) * Real.cosh (1 : ℝ)⌋

end

end A213219.P2167078007650061945

/-! ## A213219.P3529605504948134790

`A250068(A179025(n+2))+floor(n*cosh(1))`
-/

namespace A213219.P3529605504948134790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (A179025 (n + 2)).toNat + ⌊(n : ℝ) * Real.cosh (1 : ℝ)⌋

end

end A213219.P3529605504948134790

/-! ## A213219.P578464898445785513

`floor(A057427(A000096(2*n+3))+n*cosh(1))`
-/

namespace A213219.P578464898445785513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 (A000096 (2 * n + 3)).toNat : ℝ) + (n : ℝ) * Real.cosh (1 : ℝ)⌋

end

end A213219.P578464898445785513

/-! ## A213219.P6660828997645816280

`A008486(n)-A000194(A062005(n)²)`
-/

namespace A213219.P6660828997645816280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A000194 (A062005 n ^ 2).toNat

end

end A213219.P6660828997645816280

/-! ## A213219.P10786450658869420323

`(A008486(n)-A062005(n))%A165228(n+1)²`
-/

namespace A213219.P10786450658869420323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008486 n - A062005 n) (A165228 (n + 1) ^ 2)

end

end A213219.P10786450658869420323

/-! ## A213219.P15389824634549165069

`A118759(A008486(n)-A062005(n))`
-/

namespace A213219.P15389824634549165069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A008486 n - A062005 n).toNat

end

end A213219.P15389824634549165069

/-!
# A213220: Positions in A114183 where doubling runs begin.

The programs for A213220, there is no canonical definition to state claims against.
-/

/-! ## A213220.P13231815285517479248

`A221716(n)+a(n-1)` with `a(0)=1`
-/

namespace A213220.P13231815285517479248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A221716 n + a (n - 1)

end

end A213220.P13231815285517479248

/-! ## A213220.P17879644809077919926

`∑[A221716(A028310(n))]-5`
-/

namespace A213220.P17879644809077919926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221716 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A213220.P17879644809077919926

/-! ## A213220.P13475755565401830369

`∑[A221716(A028310(n))%A017221(n)]`
-/

namespace A213220.P13475755565401830369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221716 (A028310 n).toNat) (A017221 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213220.P13475755565401830369

/-! ## A213220.P9589590695346010846

`∑[A221716(A028310(n))^A062157(n)²]`
-/

namespace A213220.P9589590695346010846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221716 (A028310 n).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213220.P9589590695346010846

/-! ## A213220.P17222927841703121518

`∑[A221716(n+1)]+1-A221716(n+1)`
-/

namespace A213220.P17222927841703121518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A221716 (n + 1))

end

end A213220.P17222927841703121518

/-! ## A213220.P1917204447131349956

`A189419(A221715(n+1))`
-/

namespace A213220.P1917204447131349956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189419 (A221715 (n + 1)).toNat

end

end A213220.P1917204447131349956

/-!
# A213221: Riordan array (f(x), x*g(x)) where f(x) is the g.f. of A157004 and g(x) is the g.f. of A157003.

The programs for A213221, there is no canonical definition to state claims against.
-/

/-! ## A213221.P4730997344724361930

`A121468(A261279(n+1)+1)+char[7]`
-/

namespace A213221.P4730997344724361930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121468 (A261279 (n + 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213221.P4730997344724361930

/-! ## A213221.P6831984793597894054

`A168151(n)+A014707(A008842(n))`
-/

namespace A213221.P6831984793597894054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 n + A014707 (A008842 n).toNat

end

end A213221.P6831984793597894054

/-! ## A213221.P14402335418926089577

`A168151(n)+A007031(A101275(n))`
-/

namespace A213221.P14402335418926089577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 n + A007031 (A101275 n).toNat

end

end A213221.P14402335418926089577

/-! ## A213221.P10030773580983010464

`A188291(A036765(n))+A168151(n)`
-/

namespace A213221.P10030773580983010464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188291 (A036765 n).toNat + A168151 n

end

end A213221.P10030773580983010464

/-! ## A213221.P16968174451312045189

`A168151(n)+A100910(A247618(n))`
-/

namespace A213221.P16968174451312045189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168151 n + A100910 (A247618 n).toNat

end

end A213221.P16968174451312045189

/-!
# A213222: Minimum number of distinct slopes formed by n noncollinear points in the plane.

The programs for A213222, the canonical program `A213222.P11382189503372088155` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213222 has offset 3).

The definition of A213222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213222.P11382189503372088155

`a(n-2)+2` with `a(0)=3, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213222

/-- `a(n-2)+2` -/
def P11382189503372088155.Spec : Prop :=
  ∀ n, (P11382189503372088155.a n : ℤ) = A213222 (n + 3)

theorem P11382189503372088155.correct : P11382189503372088155.Spec := by
  intro n
  simp only [A213222, Nat.add_sub_cancel]

end A213222

/-! ## A213222.P16696963031711746179

`(n%2)^n+2+n`
-/

namespace A213222.P16696963031711746179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 2) ^ n + 2 + n

end

end A213222.P16696963031711746179

namespace A213222

/-- `(n%2)^n+2+n` -/
def P16696963031711746179.Spec : Prop :=
  ∀ n, (P16696963031711746179.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P15653335518161088211

`and(1, n)^n+2+n`
-/

namespace A213222.P15653335518161088211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n + 2 + n

end

end A213222.P15653335518161088211

namespace A213222

/-- `and(1, n)^n+2+n` -/
def P15653335518161088211.Spec : Prop :=
  ∀ n, (P15653335518161088211.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P16234308474879704511

`∏{d}[n, #%2]+n+2`
-/

namespace A213222.P16234308474879704511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d % 2 + (n + 2)

end

end A213222.P16234308474879704511

namespace A213222

/-- `∏{d}[n, #%2]+n+2` -/
def P16234308474879704511.Spec : Prop :=
  ∀ n, (P16234308474879704511.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P17538206071885677086

`∏{p}[n, #]%2+n+2`
-/

namespace A213222.P17538206071885677086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), p) % 2 + (n + 2)

end

end A213222.P17538206071885677086

namespace A213222

/-- `∏{p}[n, #]%2+n+2` -/
def P17538206071885677086.Spec : Prop :=
  ∀ n, (P17538206071885677086.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P2553370574220676351

`n+3-∑{p}[n, val(#, 2)]`
-/

namespace A213222.P2553370574220676351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 2 : ℕ) : ℤ)

end

end A213222.P2553370574220676351

namespace A213222

/-- `n+3-∑{p}[n, val(#, 2)]` -/
def P2553370574220676351.Spec : Prop :=
  ∀ n, P2553370574220676351.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P16924137826008561175

`and(1, ∏{p}[n, #])+n+2`
-/

namespace A213222.P16924137826008561175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 2)

end

end A213222.P16924137826008561175

namespace A213222

/-- `and(1, ∏{p}[n, #])+n+2` -/
def P16924137826008561175.Spec : Prop :=
  ∀ n, (P16924137826008561175.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P2060379097045786523

`n+3-val(∏{p}[n, #], 2)`
-/

namespace A213222.P2060379097045786523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 2 : ℤ)

end

end A213222.P2060379097045786523

namespace A213222

/-- `n+3-val(∏{p}[n, #], 2)` -/
def P2060379097045786523.Spec : Prop :=
  ∀ n, P2060379097045786523.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P11088395816928624058

`n+3-∑{p}[n, C(2, #)]`
-/

namespace A213222.P11088395816928624058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose 2 p : ℕ) : ℤ)

end

end A213222.P11088395816928624058

namespace A213222

/-- `n+3-∑{p}[n, C(2, #)]` -/
def P11088395816928624058.Spec : Prop :=
  ∀ n, P11088395816928624058.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P18096491784330854266

`∑[2-a(n-1)]` with `a(0)=3, a(1)=1, a(2)=0`
-/

namespace A213222.P18096491784330854266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213222.P18096491784330854266

namespace A213222

/-- `∑[2-a(n-1)]` -/
def P18096491784330854266.Spec : Prop :=
  ∀ n, P18096491784330854266.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P16562104020045215031

`∑[2*a(gcd(2, n))]` with `a(0)=3, a(1)=1, a(2)=0`
-/

namespace A213222.P16562104020045215031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 0] fun n f1 =>
  2 * f1 (Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213222.P16562104020045215031

namespace A213222

/-- `∑[2*a(gcd(2, n))]` -/
def P16562104020045215031.Spec : Prop :=
  ∀ n, (P16562104020045215031.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P14781947662825068750

`3-char[2*(n+1)]+n`
-/

namespace A213222.P14781947662825068750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

end

end A213222.P14781947662825068750

namespace A213222

/-- `3-char[2*(n+1)]+n` -/
def P14781947662825068750.Spec : Prop :=
  ∀ n, P14781947662825068750.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P4398586462329091138

`xor(n+3, char[2*(n+1)])`
-/

namespace A213222.P4398586462329091138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 3) (if ∃ j, f1 j = n then 1 else 0)

end

end A213222.P4398586462329091138

namespace A213222

/-- `xor(n+3, char[2*(n+1)])` -/
def P4398586462329091138.Spec : Prop :=
  ∀ n, (P4398586462329091138.a n : ℤ) = A213222 (n + 3)

end A213222

/-! ## A213222.P3218242493668532632

`and(n+3, C(n, n²)-2)`
-/

namespace A213222.P3218242493668532632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)

end

end A213222.P3218242493668532632

namespace A213222

/-- `and(n+3, C(n, n²)-2)` -/
def P3218242493668532632.Spec : Prop :=
  ∀ n, P3218242493668532632.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P9218541336877268186

`and(n+3, floor(atan(-(n+1))))`
-/

namespace A213222.P9218541336877268186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) ⌊Real.arctan (-(n + 1 : ℤ) : ℝ)⌋

end

end A213222.P9218541336877268186

namespace A213222

/-- `and(n+3, floor(atan(-(n+1))))` -/
def P9218541336877268186.Spec : Prop :=
  ∀ n, P9218541336877268186.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P196248132305101413

`and(n+3, -ceil(atan(n+1)))`
-/

namespace A213222.P196248132305101413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-⌈Real.arctan (n + 1 : ℝ)⌉)

end

end A213222.P196248132305101413

namespace A213222

/-- `and(n+3, -ceil(atan(n+1)))` -/
def P196248132305101413.Spec : Prop :=
  ∀ n, P196248132305101413.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P10632389927872347560

`∑[∑[ogf((3+x-3x^2+x^3)/(1+x))]]`
-/

namespace A213222.P10632389927872347560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213222.P10632389927872347560

namespace A213222

/-- `∑[∑[ogf((3+x-3x^2+x^3)/(1+x))]]` -/
def P10632389927872347560.Spec : Prop :=
  ∀ n, P10632389927872347560.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P4979181968124129828

`ogf((3+x-3x^2+x^3)/(1-x-x^2+x^3))`
-/

namespace A213222.P4979181968124129828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, -3, 1] [1, -1, -1, 1] n

end

end A213222.P4979181968124129828

namespace A213222

/-- `ogf((3+x-3x^2+x^3)/(1-x-x^2+x^3))` -/
def P4979181968124129828.Spec : Prop :=
  ∀ n, P4979181968124129828.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P10245120320079223691

`-xor(-2, a(n-2))` with `a(0)=3, a(1)=4, a(2)=4`
-/

namespace A213222.P10245120320079223691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4, 4] fun n a =>
  -Int.xor (-2) (a (n - 2))

end

end A213222.P10245120320079223691

namespace A213222

/-- `-xor(-2, a(n-2))` -/
def P10245120320079223691.Spec : Prop :=
  ∀ n, P10245120320079223691.a n = A213222 (n + 3)

end A213222

/-! ## A213222.P13269264644513017936

`∑[5%a((n+1)%2)]` with `a(0)=3, a(1)=1`
-/

namespace A213222.P13269264644513017936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 % f1 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213222.P13269264644513017936

namespace A213222

/-- `∑[5%a((n+1)%2)]` -/
def P13269264644513017936.Spec : Prop :=
  ∀ n, (P13269264644513017936.a n : ℤ) = A213222 (n + 3)

end A213222

/-!
# A213223: a(n) = 10^n + 10*n.

The programs for A213223, the canonical program `A213223.P4229889062137049557` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213223 has offset 0).

The definition of A213223 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+10*n` (program `A213223.P4229889062137049557`, by `A213223.P4229889062137049557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213223.P4229889062137049557

`10^n+10*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213223

/-- `10^n+10*n` -/
def P4229889062137049557.Spec : Prop :=
  ∀ n, (P4229889062137049557.a n : ℤ) = A213223 n

theorem P4229889062137049557.correct : P4229889062137049557.Spec := by
  intro n
  simp only [A213223]

end A213223

/-! ## A213223.P14788860630659962284

`∑{digits}[10^n, 10^n^#]`
-/

namespace A213223.P14788860630659962284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ n ^ x).sum

end

end A213223.P14788860630659962284

namespace A213223

/-- `∑{digits}[10^n, 10^n^#]` -/
def P14788860630659962284.Spec : Prop :=
  ∀ n, (P14788860630659962284.a n : ℤ) = A213223 n

end A213223

/-! ## A213223.P4235785685539738614

`abs(Δ[A002275(n)]+10*n)`
-/

namespace A213223.P4235785685539738614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + (10 * n : ℤ)|

end

end A213223.P4235785685539738614

namespace A213223

/-- `abs(Δ[A002275(n)]+10*n)` -/
def P4235785685539738614.Spec : Prop :=
  ∀ n, P4235785685539738614.a n = A213223 n

end A213223

/-! ## A213223.P740097688138800739

`Δ[A002278(n)/4+10*C(n, 2)]`
-/

namespace A213223.P740097688138800739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002278 n : ℚ) / 4 + (10 * Nat.choose n 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213223.P740097688138800739

namespace A213223

/-- `Δ[A002278(n)/4+10*C(n, 2)]` -/
def P740097688138800739.Spec : Prop :=
  ∀ n, P740097688138800739.a n = (A213223 n : ℚ)

end A213223

/-! ## A213223.P7201979852507949602

`abs(3*5*n-A011557(n)-25*n)`
-/

namespace A213223.P7201979852507949602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 * (5 * n) : ℤ) - A011557 n - (25 * n : ℤ)|

end

end A213223.P7201979852507949602

namespace A213223

/-- `abs(3*5*n-A011557(n)-25*n)` -/
def P7201979852507949602.Spec : Prop :=
  ∀ n, P7201979852507949602.a n = A213223 n

end A213223

/-! ## A213223.P15329435372840199324

`abs(A008592(n)+Δ[A002275(n)])`
-/

namespace A213223.P15329435372840199324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + (f1 (n + 1) - f1 n)|

end

end A213223.P15329435372840199324

namespace A213223

/-- `abs(A008592(n)+Δ[A002275(n)])` -/
def P15329435372840199324.Spec : Prop :=
  ∀ n, P15329435372840199324.a n = A213223 n

end A213223

/-! ## A213223.P16283680851457869014

`abs(10*n+A000042(n+1)-A002275(n))`
-/

namespace A213223.P16283680851457869014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) + (A000042 (n + 1) - A002275 n)|

end

end A213223.P16283680851457869014

namespace A213223

/-- `abs(10*n+A000042(n+1)-A002275(n))` -/
def P16283680851457869014.Spec : Prop :=
  ∀ n, P16283680851457869014.a n = A213223 n

end A213223

/-! ## A213223.P13620028042067914129

`abs(A002275(n)-A002275(n+1)-A008592(n))`
-/

namespace A213223.P13620028042067914129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002275 n - A002275 (n + 1) - A008592 n|

end

end A213223.P13620028042067914129

namespace A213223

/-- `abs(A002275(n)-A002275(n+1)-A008592(n))` -/
def P13620028042067914129.Spec : Prop :=
  ∀ n, P13620028042067914129.a n = A213223 n

end A213223

/-! ## A213223.P13638094448267442192

`abs(A008592(n)-(A033873(n)-A003617(n+1)))`
-/

namespace A213223.P13638094448267442192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A033873 n - A003617 (n + 1))|

end

end A213223.P13638094448267442192

namespace A213223

/-- `abs(A008592(n)-(A033873(n)-A003617(n+1)))` -/
def P13638094448267442192.Spec : Prop :=
  ∀ n, P13638094448267442192.a n = A213223 n

end A213223

/-!
# A213225: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^4)).

The programs for A213225, there is no canonical definition to state claims against.
-/

/-! ## A213225.P15523373835286648303

`A194640(A027338(∑[n]))`
-/

namespace A213225.P15523373835286648303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A027338 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A213225.P15523373835286648303

/-! ## A213225.P11799763561776503525

`A255072(A200215(n)+1)`
-/

namespace A213225.P11799763561776503525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A200215 n + 1).toNat

end

end A213225.P11799763561776503525

/-! ## A213225.P10458553734881219990

`A038567(floor(A008544(n)/7))`
-/

namespace A213225.P10458553734881219990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 ⌊(A008544 n : ℚ) / 7⌋.toNat

end

end A213225.P10458553734881219990

/-!
# A213226: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^5)).

The programs for A213226, there is no canonical definition to state claims against.
-/

/-! ## A213226.P5893066993419868650

`A023705(A135303(4^n))`
-/

namespace A213226.P5893066993419868650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (A135303 (4 ^ n)).toNat

end

end A213226.P5893066993419868650

/-! ## A213226.P16580841374191305220

`A034887(A194353(n)+A000257(n))`
-/

namespace A213226.P16580841374191305220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A194353 n + A000257 n).toNat

end

end A213226.P16580841374191305220

/-! ## A213226.P1375969471222867004

`or(A008621(A124542(n)), A016098(n))`
-/

namespace A213226.P1375969471222867004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008621 (A124542 n).toNat) (A016098 n)

end

end A213226.P1375969471222867004

/-!
# A213227: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^6)).

The programs for A213227, there is no canonical definition to state claims against.
-/

/-! ## A213227.P11979804618549079916

`A189663(A189663(n+4)+A129323(n))`
-/

namespace A213227.P11979804618549079916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A189663 (n + 4) + A129323 n).toNat

end

end A213227.P11979804618549079916

/-! ## A213227.P10155998112906479259

`A196526(4*n!)`
-/

namespace A213227.P10155998112906479259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196526 (4 * Nat.factorial n)

end

end A213227.P10155998112906479259

/-!
# A213228: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^6)^2).

The programs for A213228, there is no canonical definition to state claims against.
-/

/-! ## A213228.P2569128825530408136

`A303787(A212964(n)+A001147(n))`
-/

namespace A213228.P2569128825530408136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303787 (A212964 n + A001147 n).toNat

end

end A213228.P2569128825530408136

/-! ## A213228.P8877171984416128348

`A285881(A152124(n)+A128328(n))`
-/

namespace A213228.P8877171984416128348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A152124 n + A128328 n).toNat

end

end A213228.P8877171984416128348

/-!
# A213229: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^7)^2).

The programs for A213229, there is no canonical definition to state claims against.
-/

/-! ## A213229.P17500376877276008920

`A261585(Δ[A052572(n)])`
-/

namespace A213229.P17500376877276008920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (f1 (n + 1) - f1 n).toNat

end

end A213229.P17500376877276008920

/-! ## A213229.P5248679971303940944

`A064458(13*A000262(n))`
-/

namespace A213229.P5248679971303940944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (13 * A000262 n).toNat

end

end A213229.P5248679971303940944

/-!
# A213230: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^8)^2).

The programs for A213230, there is no canonical definition to state claims against.
-/

/-! ## A213230.P12502872330412188223

`A187187((n+1)*A001427(n+1))`
-/

namespace A213230.P12502872330412188223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 ((n + 1 : ℤ) * A001427 (n + 1)).toNat

end

end A213230.P12502872330412188223

/-! ## A213230.P16905930936145847737

`A020037(n)+A004526(A004213(n))`
-/

namespace A213230.P16905930936145847737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020037 n + A004526 (A004213 n).toNat

end

end A213230.P16905930936145847737

/-!
# A213231: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^8)^3).

The programs for A213231, there is no canonical definition to state claims against.
-/

/-! ## A213231.P4786222811274349585

`∑[A140106(A052897(n))]+1`
-/

namespace A213231.P4786222811274349585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A052897 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A213231.P4786222811274349585

/-! ## A213231.P11118118826845290222

`∑[A123108(A052897(n)-1)]`
-/

namespace A213231.P11118118826845290222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A052897 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213231.P11118118826845290222

/-!
# A213232: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^9)^3).

The programs for A213232, there is no canonical definition to state claims against.
-/

/-! ## A213232.P13035381605613169581

`xor(floor(n/2), A004273(A120732(n)))`
-/

namespace A213232.P13035381605613169581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 2⌋ (A004273 (A120732 n).toNat)

end

end A213232.P13035381605613169581

/-! ## A213232.P1620068800767815625

`A328842(n)+A000069(A120732(n))`
-/

namespace A213232.P1620068800767815625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328842 n + A000069 (A120732 n).toNat

end

end A213232.P1620068800767815625

/-!
# A213233: G.f. satisfies: A(x) = 1/(1 - x/A(-x*A(x)^10)^4).

The programs for A213233, there is no canonical definition to state claims against.
-/

/-! ## A213233.P1645469535815586898

`∏{p}[A328554(n)², #]`
-/

namespace A213233.P1645469535815586898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328554 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A213233.P1645469535815586898

/-!
# A213234: Triangle read by rows: coefficients of auxiliary Rudin-Shapiro polynomials A_{ns}(omega) written in descending powers of x.

The programs for A213234, the canonical program `A213234.P13155706535955670258` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213234 has offset 0).

The definition of A213234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213234.P13155706535955670258

`floor(1/(n+1))+A132460(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213234

/-- `floor(1/(n+1))+A132460(n)` -/
def P13155706535955670258.Spec : Prop :=
  ∀ n, P13155706535955670258.a n = A213234 n

theorem P13155706535955670258.correct : P13155706535955670258.Spec := by
  intro n
  simp only [A213234]

end A213234

/-! ## A213234.P8644485183877516682

`A132460(n)+A000007(n)`
-/

namespace A213234.P8644485183877516682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n + A000007 n

end

end A213234.P8644485183877516682

namespace A213234

/-- `A132460(n)+A000007(n)` -/
def P8644485183877516682.Spec : Prop :=
  ∀ n, P8644485183877516682.a n = A213234 n

end A213234

/-! ## A213234.P5526660128974694057

`A054977(n)*A132460(n)`
-/

namespace A213234.P5526660128974694057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A132460 n

end

end A213234.P5526660128974694057

namespace A213234

/-- `A054977(n)*A132460(n)` -/
def P5526660128974694057.Spec : Prop :=
  ∀ n, P5526660128974694057.a n = A213234 n

end A213234

/-! ## A213234.P14522813709112509476

`A132460(n)+A154269(2*n+1)²`
-/

namespace A213234.P14522813709112509476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n + A154269 (2 * n + 1) ^ 2

end

end A213234.P14522813709112509476

namespace A213234

/-- `A132460(n)+A154269(2*n+1)²` -/
def P14522813709112509476.Spec : Prop :=
  ∀ n, P14522813709112509476.a n = A213234 n

end A213234

/-! ## A213234.P10043350057791380212

`A132460(n)+A049310(round(n/(n+1)))`
-/

namespace A213234.P10043350057791380212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n + A049310 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A213234.P10043350057791380212

namespace A213234

/-- `A132460(n)+A049310(round(n/(n+1)))` -/
def P10043350057791380212.Spec : Prop :=
  ∀ n, P10043350057791380212.a n = A213234 n

end A213234

/-! ## A213234.P8493791901544109656

`A132460(n)+A051344(gcd(n, n+1))^n`
-/

namespace A213234.P8493791901544109656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n + A051344 (Nat.gcd n (n + 1)) ^ n

end

end A213234.P8493791901544109656

namespace A213234

/-- `A132460(n)+A051344(gcd(n, n+1))^n` -/
def P8493791901544109656.Spec : Prop :=
  ∀ n, P8493791901544109656.a n = A213234 n

end A213234

/-! ## A213234.P4736325954431027320

`A127677(n)+A132460(n)-A110162(n)`
-/

namespace A213234.P4736325954431027320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127677 n + (A132460 n - A110162 n)

end

end A213234.P4736325954431027320

namespace A213234

/-- `A127677(n)+A132460(n)-A110162(n)` -/
def P4736325954431027320.Spec : Prop :=
  ∀ n, P4736325954431027320.a n = A213234 n

end A213234

/-! ## A213234.P13507294207287809487

`A132460(n)+A132460(n)%A034807(n)`
-/

namespace A213234.P13507294207287809487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 n + Int.tmod (A132460 n) (A034807 n)

end

end A213234.P13507294207287809487

namespace A213234

/-- `A132460(n)+A132460(n)%A034807(n)` -/
def P13507294207287809487.Spec : Prop :=
  ∀ n, P13507294207287809487.a n = A213234 n

end A213234

/-! ## A213234.P6023111794026239529

`A115139(n+1)/A011973(n)*A034807(n)`
-/

namespace A213234.P6023111794026239529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115139 (n + 1) : ℚ) / (A011973 n : ℚ) * (A034807 n : ℚ)

end

end A213234.P6023111794026239529

namespace A213234

/-- `A115139(n+1)/A011973(n)*A034807(n)` -/
def P6023111794026239529.Spec : Prop :=
  ∀ n, P6023111794026239529.a n = (A213234 n : ℚ)

end A213234

/-! ## A213234.P11373417431738899413

`(2-and(1, A000051(n)))*A132460(n)`
-/

namespace A213234.P11373417431738899413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.land 1 (A000051 n)) * A132460 n

end

end A213234.P11373417431738899413

namespace A213234

/-- `(2-and(1, A000051(n)))*A132460(n)` -/
def P11373417431738899413.Spec : Prop :=
  ∀ n, P11373417431738899413.a n = A213234 n

end A213234

/-! ## A213234.P8925739189206578791

`A034807(n²)*A132460(n)`
-/

namespace A213234.P8925739189206578791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (n ^ 2) * A132460 n

end

end A213234.P8925739189206578791

namespace A213234

/-- `A034807(n²)*A132460(n)` -/
def P8925739189206578791.Spec : Prop :=
  ∀ n, P8925739189206578791.a n = A213234 n

end A213234

/-! ## A213234.P11666325247800203592

`A034807(A000290(n))+A132460(n)-1`
-/

namespace A213234.P11666325247800203592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A000290 n).toNat + (A132460 n - 1)

end

end A213234.P11666325247800203592

namespace A213234

/-- `A034807(A000290(n))+A132460(n)-1` -/
def P11666325247800203592.Spec : Prop :=
  ∀ n, P11666325247800203592.a n = A213234 n

end A213234

/-!
# A213236: a(n) = (-n)^(n-1).

The programs for A213236, the canonical program `A213236.P14431229578407999649` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213236 has offset 1).

The definition of A213236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-(n+1))^n` (program `A213236.P14431229578407999649`, by `A213236.P14431229578407999649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213236.P14431229578407999649

`(-(n+1))^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213236

/-- `(-(n+1))^n` -/
def P14431229578407999649.Spec : Prop :=
  ∀ n, P14431229578407999649.a n = A213236 (n + 1)

theorem P14431229578407999649.correct : P14431229578407999649.Spec := by
  intro n
  simp only [A213236, Nat.add_sub_cancel]

end A213236

/-! ## A213236.P514774238285862562

`(n+1)^n*(-1)^a(n-1)` with `a(0)=1`
-/

namespace A213236.P514774238285862562
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  ((n + 1) ^ n : ℝ) * (-1 : ℝ) ^ (a (n - 1))

end

end A213236.P514774238285862562

namespace A213236

/-- `(n+1)^n*(-1)^a(n-1)` -/
def P514774238285862562.Spec : Prop :=
  ∀ n, P514774238285862562.a n = (A213236 (n + 1) : ℝ)

end A213236

/-! ## A213236.P1632282520351929890

`floor((a(n-1)-floor(a(n-1)+n+1))^n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A213236.P1632282520351929890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (a (n - 1) + (n + 1 : ℤ))) ^ n

end

end A213236.P1632282520351929890

namespace A213236

/-- `floor((a(n-1)-floor(a(n-1)+n+1))^n)` -/
def P1632282520351929890.Spec : Prop :=
  ∀ n, P1632282520351929890.a n = A213236 (n + 1)

theorem P1632282520351929890.correct : P1632282520351929890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A213236, Nat.add_sub_cancel, A213236.P1632282520351929890.a, A213236.P14431229578407999649.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A213236, Nat.add_sub_cancel, A213236.P1632282520351929890.a, A213236.P14431229578407999649.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A213236

/-! ## A213236.P7842107529522636010

`A244128(∑[n+2])`
-/

namespace A213236.P7842107529522636010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244128 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213236.P7842107529522636010

namespace A213236

/-- `A244128(∑[n+2])` -/
def P7842107529522636010.Spec : Prop :=
  ∀ n, P7842107529522636010.a n = A213236 (n + 1)

end A213236

/-! ## A213236.P3193002363492086422

`A244130(∑[n+2])`
-/

namespace A213236.P3193002363492086422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244130 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213236.P3193002363492086422

namespace A213236

/-- `A244130(∑[n+2])` -/
def P3193002363492086422.Spec : Prop :=
  ∀ n, P3193002363492086422.a n = A213236 (n + 1)

end A213236

/-! ## A213236.P15262129072536928367

`A244134(∑[n+2])`
-/

namespace A213236.P15262129072536928367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213236.P15262129072536928367

namespace A213236

/-- `A244134(∑[n+2])` -/
def P15262129072536928367.Spec : Prop :=
  ∀ n, P15262129072536928367.a n = A213236 (n + 1)

end A213236

/-! ## A213236.P13357467900592815977

`A137452(∑[n+1]+1)`
-/

namespace A213236.P13357467900592815977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137452 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A213236.P13357467900592815977

namespace A213236

/-- `A137452(∑[n+1]+1)` -/
def P13357467900592815977.Spec : Prop :=
  ∀ n, P13357467900592815977.a n = A213236 (n + 1)

end A213236

/-! ## A213236.P6736674351370147789

`A051696(n+1)*A227831(n+1)`
-/

namespace A213236.P6736674351370147789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051696 (n + 1) * A227831 (n + 1)

end

end A213236.P6736674351370147789

namespace A213236

/-- `A051696(n+1)*A227831(n+1)` -/
def P6736674351370147789.Spec : Prop :=
  ∀ n, P6736674351370147789.a n = A213236 (n + 1)

end A213236

/-! ## A213236.P11003394349803510867

`(A181983(n+1)+A181983(n))*A000169(n+1)`
-/

namespace A213236.P11003394349803510867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A181983 (n + 1) + A181983 n) * A000169 (n + 1)

end

end A213236.P11003394349803510867

namespace A213236

/-- `(A181983(n+1)+A181983(n))*A000169(n+1)` -/
def P11003394349803510867.Spec : Prop :=
  ∀ n, P11003394349803510867.a n = A213236 (n + 1)

end A213236

/-! ## A213236.P3539581808055953253

`A042977(∑[n])`
-/

namespace A213236.P3539581808055953253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042977 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213236.P3539581808055953253

namespace A213236

/-- `A042977(∑[n])` -/
def P3539581808055953253.Spec : Prop :=
  ∀ n, P3539581808055953253.a n = A213236 (n + 1)

end A213236

/-!
# A213237: Number of distinct values v satisfying v = sum of elements in S = product of elements in P for any partition of {1,...,n} into two sets S and P.

The programs for A213237, there is no canonical definition to state claims against.
-/

/-! ## A213237.P16389167168091850754

`A319420(A339418(n)%A078866(n+1))`
-/

namespace A213237.P16389167168091850754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (Int.tmod (A339418 n) (A078866 (n + 1))).toNat

end

end A213237.P16389167168091850754

/-! ## A213237.P4837309198519943104

`A319420(A339418(n))`
-/

namespace A213237.P4837309198519943104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A339418 n).toNat

end

end A213237.P4837309198519943104

/-! ## A213237.P11326344209884394284

`A000120(A186505(n)^A065941(n))`
-/

namespace A213237.P11326344209884394284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A186505 n : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A213237.P11326344209884394284

/-! ## A213237.P4994272392194438427

`or(A025817(n), A071028(A086362(n)))`
-/

namespace A213237.P4994272392194438427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025817 n) (A071028 (A086362 n).toNat)

end

end A213237.P4994272392194438427

/-! ## A213237.P15444447217810176467

`A102673(A056020(n+1)+A020701(n))`
-/

namespace A213237.P15444447217810176467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (A056020 (n + 1) + A020701 n).toNat

end

end A213237.P15444447217810176467

/-!
# A213238: Triangle T(n,k) in which n-th row lists in increasing order the distinct values v satisfying v = sum of elements in S = product of elements in P for a partition of {1,...,n} into two sets S and P.

The programs for A213238, there is no canonical definition to state claims against.
-/

/-! ## A213238.P9873199236198024344

`lt[A126759(n), A175400(A127096(n+1))]`
-/

namespace A213238.P9873199236198024344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175400 (A127096 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213238.P9873199236198024344

/-! ## A213238.P10738199422686751607

`A167447(A007931(n+1)*A086323(n+1))`
-/

namespace A213238.P10738199422686751607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167447 (A007931 (n + 1) * A086323 (n + 1)).toNat

end

end A213238.P10738199422686751607

/-!
# A213241: Numbers n for which n=(n'' mod n'), where n' and n'' are the first and second arithmetic derivative of n.

The programs for A213241, there is no canonical definition to state claims against.
-/

/-! ## A213241.P13428459681005932165

`A340929(A340933(n+1))%A340908(A258868(n+1))`
-/

namespace A213241.P13428459681005932165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340929 (A340933 (n + 1)).toNat) (A340908 (A258868 (n + 1)).toNat)

end

end A213241.P13428459681005932165

/-!
# A213242: Number of generalizations of the partition 1^n.

The programs for A213242, there is no canonical definition to state claims against.
-/

/-! ## A213242.P1571969223100296731

`ceil(∑[A014085(A258788(n))/2])`
-/

namespace A213242.P1571969223100296731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014085 (A258788 n).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A213242.P1571969223100296731

/-! ## A213242.P14831850870404159096

`A213251(A011782(n))+A000237(n)`
-/

namespace A213242.P14831850870404159096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213251 (A011782 n).toNat + A000237 n

end

end A213242.P14831850870404159096

/-! ## A213242.P7310054802313349944

`A023190(A291981(n)+A007022(n+1))`
-/

namespace A213242.P7310054802313349944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A291981 n + A007022 (n + 1)).toNat

end

end A213242.P7310054802313349944

/-! ## A213242.P14527928678231864302

`A113204(n+1)+A023190(A291981(n))`
-/

namespace A213242.P14527928678231864302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113204 (n + 1) + A023190 (A291981 n).toNat

end

end A213242.P14527928678231864302

/-!
# A213243: Number of nonzero elements in GF(2^n) that are cubes.

The programs for A213243, the canonical program `A213243.P233757969064694131` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213243 has offset 1).

The definition of A213243 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213243.P9059676011610424816

`(2^(n+1)-1)/gcd(2^(n+1)-1, 3)`
-/

namespace A213243.P9059676011610424816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 1) : ℤ) - 1 : ℚ) / (Int.gcd ((2 ^ (n + 1) : ℤ) - 1) 3 : ℚ)

end

end A213243.P9059676011610424816

namespace A213243

/-- `(2^(n+1)-1)/gcd(2^(n+1)-1, 3)` -/
def P9059676011610424816.Spec : Prop :=
  ∀ n, P9059676011610424816.a n = (A213243 (n + 1) : ℚ)

end A213243

/-! ## A213243.P233757969064694131

`A051176(2^(n+1)-1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213243

/-- `A051176(2^(n+1)-1)` -/
def P233757969064694131.Spec : Prop :=
  ∀ n, P233757969064694131.a n = A213243 (n + 1)

theorem P233757969064694131.correct : P233757969064694131.Spec := by
  intro n
  simp only [A213243, Nat.add_sub_cancel]

end A213243

/-! ## A213243.P16864180256130609486

`∑[2^n]/3^(n%2)`
-/

namespace A213243.P16864180256130609486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 ^ (n % 2) : ℚ)

end

end A213243.P16864180256130609486

namespace A213243

/-- `∑[2^n]/3^(n%2)` -/
def P16864180256130609486.Spec : Prop :=
  ∀ n, P16864180256130609486.a n = (A213243 (n + 1) : ℚ)

end A213243

/-! ## A213243.P6984283439419485302

`∑[2^n]/(2-(-1)^n)`
-/

namespace A213243.P6984283439419485302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 - (-1) ^ n : ℚ)

end

end A213243.P6984283439419485302

namespace A213243

/-- `∑[2^n]/(2-(-1)^n)` -/
def P6984283439419485302.Spec : Prop :=
  ∀ n, P6984283439419485302.a n = (A213243 (n + 1) : ℚ)

end A213243

/-! ## A213243.P3241068900191082251

`ogf((1+x+2x^2)/(1-5x^2+4x^4))`
-/

namespace A213243.P3241068900191082251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 0, -5, 0, 4] n

end

end A213243.P3241068900191082251

namespace A213243

/-- `ogf((1+x+2x^2)/(1-5x^2+4x^4))` -/
def P3241068900191082251.Spec : Prop :=
  ∀ n, P3241068900191082251.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P12183536487995519126

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=7, a(3)=5`
-/

namespace A213243.P12183536487995519126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 7, 5] fun n a =>
  5 * a (n - 2) - 4 * a (n - 4)

end

end A213243.P12183536487995519126

namespace A213243

/-- `5*a(n-2)-4*a(n-4)` -/
def P12183536487995519126.Spec : Prop :=
  ∀ n, P12183536487995519126.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P13214825669556091316

`or(1, A282798(n))`
-/

namespace A213243.P13214825669556091316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282798 n)

end

end A213243.P13214825669556091316

namespace A213243

/-- `or(1, A282798(n))` -/
def P13214825669556091316.Spec : Prop :=
  ∀ n, P13214825669556091316.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P11527788059182436365

`or(1, A282802(n))`
-/

namespace A213243.P11527788059182436365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A282802 n)

end

end A213243.P11527788059182436365

namespace A213243

/-- `or(1, A282802(n))` -/
def P11527788059182436365.Spec : Prop :=
  ∀ n, P11527788059182436365.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P16576136286966810015

`2^(n+1)-A166752(n+1)`
-/

namespace A213243.P16576136286966810015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A166752 (n + 1)

end

end A213243.P16576136286966810015

namespace A213243

/-- `2^(n+1)-A166752(n+1)` -/
def P16576136286966810015.Spec : Prop :=
  ∀ n, P16576136286966810015.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P18276055109952128070

`A176961(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A213243.P18276055109952128070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A176961 (n + 1) - a (n - 1)

end

end A213243.P18276055109952128070

namespace A213243

/-- `A176961(n+1)-a(n-1)` -/
def P18276055109952128070.Spec : Prop :=
  ∀ n, P18276055109952128070.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P2649463050662543062

`A279030(n)+A000975(n)`
-/

namespace A213243.P2649463050662543062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279030 n + A000975 n

end

end A213243.P2649463050662543062

namespace A213243

/-- `A279030(n)+A000975(n)` -/
def P2649463050662543062.Spec : Prop :=
  ∀ n, P2649463050662543062.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P2447129475491730727

`A282798(n)+A000035(n)`
-/

namespace A213243.P2447129475491730727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282798 n + A000035 n

end

end A213243.P2447129475491730727

namespace A213243

/-- `A282798(n)+A000035(n)` -/
def P2447129475491730727.Spec : Prop :=
  ∀ n, P2447129475491730727.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P10169090026490460071

`A255138(n)+A167030(n)`
-/

namespace A213243.P10169090026490460071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255138 n + A167030 n

end

end A213243.P10169090026490460071

namespace A213243

/-- `A255138(n)+A167030(n)` -/
def P10169090026490460071.Spec : Prop :=
  ∀ n, P10169090026490460071.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P6667733499339490515

`xor(A060590(n), A283642(n))`
-/

namespace A213243.P6667733499339490515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060590 n) (A283642 n)

end

end A213243.P6667733499339490515

namespace A213243

/-- `xor(A060590(n), A283642(n))` -/
def P6667733499339490515.Spec : Prop :=
  ∀ n, P6667733499339490515.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P17737398989440000819

`A176965(n+1)+A001045(n)`
-/

namespace A213243.P17737398989440000819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176965 (n + 1) + A001045 n

end

end A213243.P17737398989440000819

namespace A213243

/-- `A176965(n+1)+A001045(n)` -/
def P17737398989440000819.Spec : Prop :=
  ∀ n, P17737398989440000819.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P780790279619785384

`A001045(n)+A255138(n)-1`
-/

namespace A213243.P780790279619785384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A255138 n - 1)

end

end A213243.P780790279619785384

namespace A213243

/-- `A001045(n)+A255138(n)-1` -/
def P780790279619785384.Spec : Prop :=
  ∀ n, P780790279619785384.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P4730699608341798465

`A000034(n)+A282798(n)-1`
-/

namespace A213243.P4730699608341798465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (A282798 n - 1)

end

end A213243.P4730699608341798465

namespace A213243

/-- `A000034(n)+A282798(n)-1` -/
def P4730699608341798465.Spec : Prop :=
  ∀ n, P4730699608341798465.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P11490951319033651992

`A077925(n)+A283642(n)-1`
-/

namespace A213243.P11490951319033651992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + (A283642 n - 1)

end

end A213243.P11490951319033651992

namespace A213243

/-- `A077925(n)+A283642(n)-1` -/
def P11490951319033651992.Spec : Prop :=
  ∀ n, P11490951319033651992.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P16495220316782448935

`A282802(n)+1-A266591(n)`
-/

namespace A213243.P16495220316782448935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282802 n + (1 - A266591 n)

end

end A213243.P16495220316782448935

namespace A213243

/-- `A282802(n)+1-A266591(n)` -/
def P16495220316782448935.Spec : Prop :=
  ∀ n, P16495220316782448935.a n = A213243 (n + 1)

end A213243

/-! ## A213243.P10248345524997513407

`A077925(n)+2*A000975(n)`
-/

namespace A213243.P10248345524997513407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + 2 * A000975 n

end

end A213243.P10248345524997513407

namespace A213243

/-- `A077925(n)+2*A000975(n)` -/
def P10248345524997513407.Spec : Prop :=
  ∀ n, P10248345524997513407.a n = A213243 (n + 1)

end A213243

/-!
# A213244: Number of nonzero elements in GF(2^n) that are 5th powers.

The programs for A213244, the canonical program `A213244.P15907858341792989224` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213244 has offset 1).

The definition of A213244 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213244.P15907858341792989224

`(2^(n+1)-1)/gcd(2^(n+1)-1, 5)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213244

/-- `(2^(n+1)-1)/gcd(2^(n+1)-1, 5)` -/
def P15907858341792989224.Spec : Prop :=
  ∀ n, P15907858341792989224.a n = (A213244 (n + 1) : ℚ)

end A213244

/-! ## A213244.P14697304245785210228

`17*a(n-4)-16*a(n-8)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=3, a(4)=31, a(5)=63, a(6)=127, a(7)=51`
-/

namespace A213244.P14697304245785210228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 3, 31, 63, 127, 51] fun n a =>
  17 * a (n - 4) - 16 * a (n - 8)

end

end A213244.P14697304245785210228

namespace A213244

/-- `17*a(n-4)-16*a(n-8)` -/
def P14697304245785210228.Spec : Prop :=
  ∀ n, P14697304245785210228.a n = A213244 (n + 1)

end A213244

/-! ## A213244.P15253353135220462120

`A000225(n+1)/5%A000123(A001511(n+1))`
-/

namespace A213244.P15253353135220462120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (Int.tmod 5 (A000123 (A001511 (n + 1)).toNat) : ℚ)

end

end A213244.P15253353135220462120

namespace A213244

/-- `A000225(n+1)/5%A000123(A001511(n+1))` -/
def P15253353135220462120.Spec : Prop :=
  ∀ n, P15253353135220462120.a n = (A213244 (n + 1) : ℚ)

end A213244

/-! ## A213244.P7405449129035740207

`lcm(5, ∑[2^n])/5`
-/

namespace A213244.P7405449129035740207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A213244.P7405449129035740207

namespace A213244

/-- `lcm(5, ∑[2^n])/5` -/
def P7405449129035740207.Spec : Prop :=
  ∀ n, P7405449129035740207.a n = (A213244 (n + 1) : ℚ)

end A213244

/-! ## A213244.P17324885686425426308

`A228147(∑[n+2]-1)`
-/

namespace A213244.P17324885686425426308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228147 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A213244.P17324885686425426308

namespace A213244

/-- `A228147(∑[n+2]-1)` -/
def P17324885686425426308.Spec : Prop :=
  ∀ n, P17324885686425426308.a n = A213244 (n + 1)

end A213244

/-!
# A213245: Number of nonzero elements in GF(2^n) that are 7th powers.

The programs for A213245, the canonical program `A213245.P15950068401957414591` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213245 has offset 1).

The definition of A213245 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213245.P15950068401957414591

`(2^(n+1)-1)/gcd(2^(n+1)-1, 7)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213245

/-- `(2^(n+1)-1)/gcd(2^(n+1)-1, 7)` -/
def P15950068401957414591.Spec : Prop :=
  ∀ n, P15950068401957414591.a n = (A213245 (n + 1) : ℚ)

end A213245

/-! ## A213245.P8624249972370154109

`9*a(n-3)-8*a(n-6)` with `a(0)=1, a(1)=3, a(2)=1, a(3)=15, a(4)=31, a(5)=9`
-/

namespace A213245.P8624249972370154109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 1, 15, 31, 9] fun n a =>
  9 * a (n - 3) - 8 * a (n - 6)

end

end A213245.P8624249972370154109

namespace A213245

/-- `9*a(n-3)-8*a(n-6)` -/
def P8624249972370154109.Spec : Prop :=
  ∀ n, P8624249972370154109.a n = A213245 (n + 1)

end A213245

/-! ## A213245.P16544224562058979635

`A000225(n+1)%∑[2*A087462(n)]`
-/

namespace A213245.P16544224562058979635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A087462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213245.P16544224562058979635

namespace A213245

/-- `A000225(n+1)%∑[2*A087462(n)]` -/
def P16544224562058979635.Spec : Prop :=
  ∀ n, P16544224562058979635.a n = A213245 (n + 1)

end A213245

/-! ## A213245.P17589698612305615323

`A126646(n)/A219873(Δ[A002264(n)])`
-/

namespace A213245.P17589698612305615323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A219873 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A213245.P17589698612305615323

namespace A213245

/-- `A126646(n)/A219873(Δ[A002264(n)])` -/
def P17589698612305615323.Spec : Prop :=
  ∀ n, P17589698612305615323.a n = (A213245 (n + 1) : ℚ)

end A213245

/-! ## A213245.P15077813630383649393

`A000225(n+1)/A000225((n+1)/A051176(n+1))`
-/

namespace A213245.P15077813630383649393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) : ℚ) / (A000225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A051176 (n + 1) : ℚ))).toNat : ℚ)

end

end A213245.P15077813630383649393

namespace A213245

/-- `A000225(n+1)/A000225((n+1)/A051176(n+1))` -/
def P15077813630383649393.Spec : Prop :=
  ∀ n, P15077813630383649393.a n = (A213245 (n + 1) : ℚ)

end A213245

/-! ## A213245.P16974669565128555019

`lcm(14, ∑[2^n])/14`
-/

namespace A213245.P16974669565128555019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 14 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 14

end

end A213245.P16974669565128555019

namespace A213245

/-- `lcm(14, ∑[2^n])/14` -/
def P16974669565128555019.Spec : Prop :=
  ∀ n, P16974669565128555019.a n = (A213245 (n + 1) : ℚ)

end A213245

/-! ## A213245.P4201200148656627952

`A228035(∑[n+3])`
-/

namespace A213245.P4201200148656627952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213245.P4201200148656627952

namespace A213245

/-- `A228035(∑[n+3])` -/
def P4201200148656627952.Spec : Prop :=
  ∀ n, P4201200148656627952.a n = A213245 (n + 1)

end A213245

/-! ## A213245.P5198032079882621352

`gcd(∑[2^n], ∑[8^n])`
-/

namespace A213245.P5198032079882621352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A213245.P5198032079882621352

namespace A213245

/-- `gcd(∑[2^n], ∑[8^n])` -/
def P5198032079882621352.Spec : Prop :=
  ∀ n, (P5198032079882621352.a n : ℤ) = A213245 (n + 1)

end A213245

/-! ## A213245.P826569805899879547

`A227984(∑[n+2]+3)`
-/

namespace A213245.P826569805899879547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227984 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A213245.P826569805899879547

namespace A213245

/-- `A227984(∑[n+2]+3)` -/
def P826569805899879547.Spec : Prop :=
  ∀ n, P826569805899879547.a n = A213245 (n + 1)

end A213245

/-!
# A213246: Number of nonzero elements in GF(2^n) that are 9th powers.

The programs for A213246, the canonical program `A213246.P2601033586858310706` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213246 has offset 1).

The definition of A213246 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213246.P2601033586858310706

`(2^(n+1)-1)/gcd(2^(n+1)-1, 9)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213246

/-- `(2^(n+1)-1)/gcd(2^(n+1)-1, 9)` -/
def P2601033586858310706.Spec : Prop :=
  ∀ n, P2601033586858310706.a n = (A213246 (n + 1) : ℚ)

end A213246

/-! ## A213246.P10433436833797957627

`lcm(9, ∑[2^n])/9`
-/

namespace A213246.P10433436833797957627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 9 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 9

end

end A213246.P10433436833797957627

namespace A213246

/-- `lcm(9, ∑[2^n])/9` -/
def P10433436833797957627.Spec : Prop :=
  ∀ n, P10433436833797957627.a n = (A213246 (n + 1) : ℚ)

end A213246

/-! ## A213246.P13741132862908763600

`A228147(∑[n+3])`
-/

namespace A213246.P13741132862908763600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228147 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213246.P13741132862908763600

namespace A213246

/-- `A228147(∑[n+3])` -/
def P13741132862908763600.Spec : Prop :=
  ∀ n, P13741132862908763600.a n = A213246 (n + 1)

end A213246

/-! ## A213246.P12500471353168762251

`A000265(A059990(n+1))`
-/

namespace A213246.P12500471353168762251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A059990 (n + 1)).toNat

end

end A213246.P12500471353168762251

namespace A213246

/-- `A000265(A059990(n+1))` -/
def P12500471353168762251.Spec : Prop :=
  ∀ n, P12500471353168762251.a n = A213246 (n + 1)

end A213246

/-!
# A213247: Number of nonzero elements in GF(2^n) that are 11th powers.

The programs for A213247, the canonical program `A213247.P11467630012135529042` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213247 has offset 1).

The definition of A213247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213247.P11467630012135529042

`(2^(n+1)-1)/gcd(2^(n+1)-1, 11)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213247

/-- `(2^(n+1)-1)/gcd(2^(n+1)-1, 11)` -/
def P11467630012135529042.Spec : Prop :=
  ∀ n, P11467630012135529042.a n = (A213247 (n + 1) : ℚ)

end A213247

/-! ## A213247.P12862161217140482160

`lcm(11, A239678(n+3))/11`
-/

namespace A213247.P12862161217140482160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 11 (A239678 (n + 3)) : ℚ) / 11

end

end A213247.P12862161217140482160

namespace A213247

/-- `lcm(11, A239678(n+3))/11` -/
def P12862161217140482160.Spec : Prop :=
  ∀ n, P12862161217140482160.a n = (A213247 (n + 1) : ℚ)

end A213247

/-! ## A213247.P14865824664839309644

`lcm(22, ∑[2^(n+1)])/22`
-/

namespace A213247.P14865824664839309644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 22 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 22

end

end A213247.P14865824664839309644

namespace A213247

/-- `lcm(22, ∑[2^(n+1)])/22` -/
def P14865824664839309644.Spec : Prop :=
  ∀ n, P14865824664839309644.a n = (A213247 (n + 1) : ℚ)

end A213247

/-! ## A213247.P17678267876680782207

`A126646(n)/Δ[A330859(n)]`
-/

namespace A213247.P17678267876680782207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330859 (n + 100)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A213247.P17678267876680782207

namespace A213247

/-- `A126646(n)/Δ[A330859(n)]` -/
def P17678267876680782207.Spec : Prop :=
  ∀ n, P17678267876680782207.a n = (A213247 (n + 1) : ℚ)

end A213247

/-! ## A213247.P10086690713333731154

`A106612(∑[2^n])`
-/

namespace A213247.P10086690713333731154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A213247.P10086690713333731154

namespace A213247

/-- `A106612(∑[2^n])` -/
def P10086690713333731154.Spec : Prop :=
  ∀ n, P10086690713333731154.a n = A213247 (n + 1)

end A213247

/-!
# A213248: Number of nonzero elements in GF(2^n) that are 13th powers.

The programs for A213248, the canonical program `A213248.P14422407278774516830` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213248 has offset 1).

The definition of A213248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213248.P14422407278774516830

`(2^(n+1)-1)/gcd(2^(n+1)-1, 13)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213248

/-- `(2^(n+1)-1)/gcd(2^(n+1)-1, 13)` -/
def P14422407278774516830.Spec : Prop :=
  ∀ n, P14422407278774516830.a n = (A213248 (n + 1) : ℚ)

end A213248

/-! ## A213248.P12971835719640877670

`lcm(13, ∑[2^n])/13`
-/

namespace A213248.P12971835719640877670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 13 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 13

end

end A213248.P12971835719640877670

namespace A213248

/-- `lcm(13, ∑[2^n])/13` -/
def P12971835719640877670.Spec : Prop :=
  ∀ n, P12971835719640877670.a n = (A213248 (n + 1) : ℚ)

end A213248

/-! ## A213248.P13954992061959899677

`A126646(n)/A059289(A059288(n+1)!)`
-/

namespace A213248.P13954992061959899677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A059289 (Nat.factorial (A059288 (n + 1)).toNat) : ℚ)

end

end A213248.P13954992061959899677

namespace A213248

/-- `A126646(n)/A059289(A059288(n+1)!)` -/
def P13954992061959899677.Spec : Prop :=
  ∀ n, P13954992061959899677.a n = (A213248 (n + 1) : ℚ)

end A213248

/-! ## A213248.P9433736803474900608

`A000203(2^n)/A357912(n+1)`
-/

namespace A213248.P9433736803474900608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 ^ n) : ℚ) / (A357912 (n + 1) : ℚ)

end

end A213248.P9433736803474900608

namespace A213248

/-- `A000203(2^n)/A357912(n+1)` -/
def P9433736803474900608.Spec : Prop :=
  ∀ n, P9433736803474900608.a n = (A213248 (n + 1) : ℚ)

end A213248

/-! ## A213248.P5770123527387772354

`A000203(2^n)/(A321800(n)+2)`
-/

namespace A213248.P5770123527387772354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (2 ^ n) : ℚ) / (A321800 n + 2 : ℚ)

end

end A213248.P5770123527387772354

namespace A213248

/-- `A000203(2^n)/(A321800(n)+2)` -/
def P5770123527387772354.Spec : Prop :=
  ∀ n, P5770123527387772354.a n = (A213248 (n + 1) : ℚ)

end A213248

/-!
# A213249: Triangle T(n,k) of numbers of distinct shapes under rotation of non-extendable (complete) non-self-adjacent simple paths within a square lattice bounded by rectangles with nodal dimensions n and k, n >= k >= 2.

The programs for A213249, there is no canonical definition to state claims against.
-/

/-! ## A213249.P3462435766087238703

`A122080(A385517(n+1))`
-/

namespace A213249.P3462435766087238703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A385517 (n + 1)).toNat

end

end A213249.P3462435766087238703

/-! ## A213249.P17980221442477699190

`A122080(∏{e}[n+1, #+1]^A109395(n+1))`
-/

namespace A213249.P17980221442477699190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (A109395 (n + 1) : ℤ))).toNat

end

end A213249.P17980221442477699190

/-!
# A213250: Numbers n such that the coefficient of x^n in the expansion of Product_{k>=1} (1-x^k)^2 is zero.

The programs for A213250, there is no canonical definition to state claims against.
-/

/-! ## A213250.P6520854122727428161

`eq[0, A002107(n)]`
-/

namespace A213250.P6520854122727428161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213250.P6520854122727428161

/-! ## A213250.P7023160270844224548

`eq[0, A208845(n)]`
-/

namespace A213250.P7023160270844224548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213250.P7023160270844224548

/-! ## A213250.P4608450802333849709

`lt[abs(A002107(n+1)), 1]+1`
-/

namespace A213250.P4608450802333849709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002107 (n + 1)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A213250.P4608450802333849709

/-! ## A213250.P127288490749027871

`record[gcd(n+7, A002107(n+7))]`
-/

namespace A213250.P127288490749027871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 7 : ℤ) (A002107 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213250.P127288490749027871

/-! ## A213250.P15036224030630132785

`lt[A002107(n)², A002107(A002107(n)²)]`
-/

namespace A213250.P15036224030630132785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 (A002107 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213250.P15036224030630132785

/-! ## A213250.P14332996181508187818

`lt[8, dr(A000726(n))]`
-/

namespace A213250.P14332996181508187818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000726 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213250.P14332996181508187818

/-! ## A213250.P17664850233131709324

`eq[16, gcd(16, A022567(n))]`
-/

namespace A213250.P17664850233131709324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 16 (A022567 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213250.P17664850233131709324

/-! ## A213250.P17132294659490475470

`lt[A002107(n)^6*A016969(n)-2*n, A176346(n)]`
-/

namespace A213250.P17132294659490475470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n ^ 6 * A016969 n - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176346 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213250.P17132294659490475470

/-! ## A213250.P10723263014327442425

`eq[0, A122163(n)]`
-/

namespace A213250.P10723263014327442425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122163 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213250.P10723263014327442425

/-! ## A213250.P17967728808209646128

`eq[0, A293388(A034856(n+1))]`
-/

namespace A213250.P17967728808209646128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (A034856 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213250.P17967728808209646128

/-!
# A213251: a(n) = smallest m such that there exists an m X m (0,1)-matrix with permanent n.

The programs for A213251, there is no canonical definition to state claims against.
-/

/-! ## A213251.P10907711039639841046

`A026233(p?[A000523(A286379(n+1))])`
-/

namespace A213251.P10907711039639841046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A286379 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A213251.P10907711039639841046

/-! ## A213251.P9177042359151363132

`A364631(n+5)-(A271231(A256890(n+4))+A140753(n+1))%3`
-/

namespace A213251.P9177042359151363132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364631 (n + 5) - Int.tmod (A271231 (A256890 (n + 4)).toNat + A140753 (n + 1)) 3

end

end A213251.P9177042359151363132

/-!
# A213253: a(n) = smallest k such that highest prime factor of m(m+1)...(m+k-1) is > n if m > n.

The programs for A213253, there is no canonical definition to state claims against.
-/

/-! ## A213253.P114231218230346064

`A001462(A130805(n+1))%A061951(n+4)`
-/

namespace A213253.P114231218230346064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A130805 (n + 1)).toNat) (A061951 (n + 4))

end

end A213253.P114231218230346064

/-! ## A213253.P13197493599994244340

`A001462(A130805(n+1)%A169864(n+5))`
-/

namespace A213253.P13197493599994244340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A130805 (n + 1)) (A169864 (n + 5))).toNat

end

end A213253.P13197493599994244340

/-! ## A213253.P14507681293011556018

`A001462(A130805(n+1))+A000038(A177929(n+1))`
-/

namespace A213253.P14507681293011556018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A130805 (n + 1)).toNat + A000038 (A177929 (n + 1)).toNat

end

end A213253.P14507681293011556018

/-! ## A213253.P3336542367924391302

`A000377(A297112(n+1))*A001462(A130805(n+1))`
-/

namespace A213253.P3336542367924391302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000377 (A297112 (n + 1)).toNat * A001462 (A130805 (n + 1)).toNat

end

end A213253.P3336542367924391302

/-! ## A213253.P12247914033009574701

`A174901(A309077(n+1))`
-/

namespace A213253.P12247914033009574701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174901 (A309077 (n + 1)).toNat

end

end A213253.P12247914033009574701

/-!
# A213255: 2^(n-1) - floor((2^(n-1) - 1)/(n-1)).

The programs for A213255, the canonical program `A213255.P16176587692621198560` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213255 has offset 2).

The definition of A213255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)-floor((2^(n+1)-1)/(n+1))` (program `A213255.P16176587692621198560`, by `A213255.P16176587692621198560.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A213255.P16176587692621198560

`2^(n+1)-floor((2^(n+1)-1)/(n+1))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213255

/-- `2^(n+1)-floor((2^(n+1)-1)/(n+1))` -/
def P16176587692621198560.Spec : Prop :=
  ∀ n, P16176587692621198560.a n = A213255 (n + 2)

theorem P16176587692621198560.correct : P16176587692621198560.Spec := by
  intro n
  simp only [A213255, Nat.add_sub_cancel]

end A213255

/-! ## A213255.P3391548243677265214

`abs(A053638(n+1)-A048578(n))`
-/

namespace A213255.P3391548243677265214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053638 (n + 1) - A048578 n|

end

end A213255.P3391548243677265214

namespace A213255

/-- `abs(A053638(n+1)-A048578(n))` -/
def P3391548243677265214.Spec : Prop :=
  ∀ n, P3391548243677265214.a n = A213255 (n + 2)

end A213255

/-! ## A213255.P4408986587456712600

`ceil(A000337(n+1)/(n+1))`
-/

namespace A213255.P4408986587456712600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000337 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A213255.P4408986587456712600

namespace A213255

/-- `ceil(A000337(n+1)/(n+1))` -/
def P4408986587456712600.Spec : Prop :=
  ∀ n, P4408986587456712600.a n = A213255 (n + 2)

end A213255

/-! ## A213255.P1613226244624475643

`ceil(∑[A001787(n+1)]/(n+1))`
-/

namespace A213255.P1613226244624475643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A213255.P1613226244624475643

namespace A213255

/-- `ceil(∑[A001787(n+1)]/(n+1))` -/
def P1613226244624475643.Spec : Prop :=
  ∀ n, P1613226244624475643.a n = A213255 (n + 2)

end A213255

/-! ## A213255.P4997516354866638917

`ceil(∑[(n+1)*A000079(n)]/(n+1))`
-/

namespace A213255.P4997516354866638917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌉

end

end A213255.P4997516354866638917

namespace A213255

/-- `ceil(∑[(n+1)*A000079(n)]/(n+1))` -/
def P4997516354866638917.Spec : Prop :=
  ∀ n, P4997516354866638917.a n = A213255 (n + 2)

end A213255

/-!
# A213256: p(11n+6) where p(k) = number of partitions of k = A000041(k).

The programs for A213256, there is no canonical definition to state claims against.
-/

/-! ## A213256.P6684311568477460951

`A000041(11*n+6)`
-/

namespace A213256.P6684311568477460951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (11 * n + 6)

end

end A213256.P6684311568477460951

/-! ## A213256.P15256688507992406470

`11*A076394(n)`
-/

namespace A213256.P15256688507992406470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A076394 n

end

end A213256.P15256688507992406470

/-! ## A213256.P9242167909668116651

`record[A035363(12*(n+1)-n)]`
-/

namespace A213256.P9242167909668116651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (12 * (n + 1) - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213256.P9242167909668116651

/-! ## A213256.P7136019782655982671

`A035363(A141694(n))`
-/

namespace A213256.P7136019782655982671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A141694 n).toNat

end

end A213256.P7136019782655982671

/-! ## A213256.P11119028668356012118

`A035444(A304157(n+1))`
-/

namespace A213256.P11119028668356012118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A304157 (n + 1)).toNat

end

end A213256.P11119028668356012118

/-! ## A213256.P5563253748764348256

`A035444(4*A017461(n))`
-/

namespace A213256.P5563253748764348256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * A017461 n).toNat

end

end A213256.P5563253748764348256

/-!
# A213257: a(1) = 1, a(2) = 2 and, for n > 2, a(n) is the smallest integer greater than a(n - 1) such that no three terms of the sequence form a geometric progression of the form {x, 2 x, 4 x}.

The programs for A213257, there is no canonical definition to state claims against.
-/

/-! ## A213257.P16161626178951447797

`comp[n*4^gcd(4, n)]`
-/

namespace A213257.P16161626178951447797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 4 ^ Nat.gcd 4 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A213257.P16161626178951447797

/-! ## A213257.P7672922868993121214

`comp[n*xor(n, -n)²]`
-/

namespace A213257.P7672922868993121214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor (n : ℤ) (-(n : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A213257.P7672922868993121214

/-! ## A213257.P15719906992617404515

`lt[0, xor(n, n-1)%7]`
-/

namespace A213257.P15719906992617404515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A213257.P15719906992617404515

/-! ## A213257.P9076843473111112654

`comp[n*gcd(8, 2*n)²]`
-/

namespace A213257.P9076843473111112654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 8 (2 * n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A213257.P9076843473111112654

/-! ## A213257.P8619378577785774594

`comp[4*n*n²%8]`
-/

namespace A213257.P8619378577785774594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n * (n ^ 2 % 8))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A213257.P8619378577785774594

/-! ## A213257.P8772505900402873432

`record[and(n+1, or(n, -37))]`
-/

namespace A213257.P8772505900402873432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.lor (n : ℤ) (-37))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213257.P8772505900402873432

/-! ## A213257.P7376754483347040203

`lt[1, tan(dr(and(n, -n)²))]`
-/

namespace A213257.P7376754483347040203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.digitalRoot (Int.land (n : ℤ) (-(n : ℤ)) ^ 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A213257.P7376754483347040203

/-! ## A213257.P3467118426653586045

`record[and(or(36, n)+1, n+1)]`
-/

namespace A213257.P3467118426653586045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.lor 36 n + 1) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213257.P3467118426653586045

/-! ## A213257.P7086443256025043198

`lt[cot(xor(n, n+1)), 1]+1`
-/

namespace A213257.P7086443256025043198
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Nat.xor n (n + 1) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A213257.P7086443256025043198

/-! ## A213257.P15326467039506174962

`lt[cot(val(abs(1-4*n)+1, 2)), 0]`
-/

namespace A213257.P15326467039506174962
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A213257.P15326467039506174962

/-!
# A213258: Positive integers that are not in A213257.

The programs for A213258, the canonical program `A213258.P18308358314319043973` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213258 has offset 1).

The definition of A213258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067368, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A213258.P18308358314319043973

`2*A067368(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213258

/-- `2*A067368(n+1)` -/
def P18308358314319043973.Spec : Prop :=
  ∀ n, P18308358314319043973.a n = A213258 (n + 1)

theorem P18308358314319043973.correct : P18308358314319043973.Spec := by
  intro n
  simp only [A213258, Nat.add_sub_cancel]

end A213258

/-! ## A213258.P3480376544825407757

`4*A191257(n+1)`
-/

namespace A213258.P3480376544825407757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A191257 (n + 1)

end

end A213258.P3480376544825407757

namespace A213258

/-- `4*A191257(n+1)` -/
def P3480376544825407757.Spec : Prop :=
  ∀ n, P3480376544825407757.a n = A213258 (n + 1)

end A213258

/-! ## A213258.P15340797013153410129

`2*eq[2, and(n, -n)%7]`
-/

namespace A213258.P15340797013153410129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ))) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213258.P15340797013153410129

namespace A213258

/-- `2*eq[2, and(n, -n)%7]` -/
def P15340797013153410129.Spec : Prop :=
  ∀ n, (P15340797013153410129.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P9020293178295394188

`4*eq[1, dr(and(n, -n)²)]`
-/

namespace A213258.P9020293178295394188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.land (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213258.P9020293178295394188

namespace A213258

/-- `4*eq[1, dr(and(n, -n)²)]` -/
def P9020293178295394188.Spec : Prop :=
  ∀ n, (P9020293178295394188.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P4628162380176628925

`4*eq[1, dr(or(n, -n)²)]`
-/

namespace A213258.P4628162380176628925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213258.P4628162380176628925

namespace A213258

/-- `4*eq[1, dr(or(n, -n)²)]` -/
def P4628162380176628925.Spec : Prop :=
  ∀ n, (P4628162380176628925.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P1817243695328213669

`4*eq[4, dr(xor(n, -n)²)]`
-/

namespace A213258.P1817243695328213669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor (n : ℤ) (-(n : ℤ)) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A213258.P1817243695328213669

namespace A213258

/-- `4*eq[4, dr(xor(n, -n)²)]` -/
def P1817243695328213669.Spec : Prop :=
  ∀ n, (P1817243695328213669.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P15505367416014231871

`4*(lt[1, gcd(3, val(n+1, 2))]+1)`
-/

namespace A213258.P15505367416014231871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A213258.P15505367416014231871

namespace A213258

/-- `4*(lt[1, gcd(3, val(n+1, 2))]+1)` -/
def P15505367416014231871.Spec : Prop :=
  ∀ n, (P15505367416014231871.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P15925490163359238210

`A067396(n+1)-n`
-/

namespace A213258.P15925490163359238210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067396 (n + 1) - (n : ℤ)

end

end A213258.P15925490163359238210

namespace A213258

/-- `A067396(n+1)-n` -/
def P15925490163359238210.Spec : Prop :=
  ∀ n, P15925490163359238210.a n = A213258 (n + 1)

end A213258

/-! ## A213258.P8970693649301793470

`A067368(n+1)²/A191257(n+1)`
-/

namespace A213258.P8970693649301793470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067368 (n + 1) ^ 2 : ℚ) / (A191257 (n + 1) : ℚ)

end

end A213258.P8970693649301793470

namespace A213258

/-- `A067368(n+1)²/A191257(n+1)` -/
def P8970693649301793470.Spec : Prop :=
  ∀ n, P8970693649301793470.a n = (A213258 (n + 1) : ℚ)

end A213258

/-! ## A213258.P17794993542702388987

`A067368(n+1)+A067368(n+2)-A067395(n+1)`
-/

namespace A213258.P17794993542702388987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067368 (n + 1) + (A067368 (n + 2) - A067395 (n + 1))

end

end A213258.P17794993542702388987

namespace A213258

/-- `A067368(n+1)+A067368(n+2)-A067395(n+1)` -/
def P17794993542702388987.Spec : Prop :=
  ∀ n, P17794993542702388987.a n = A213258 (n + 1)

theorem P17794993542702388987.correct : P17794993542702388987.Spec := by
  intro n
  simp only [A213258, Nat.add_sub_cancel, A213258.P17794993542702388987.a, A213258.P18308358314319043973.a, A067368, A067368.P1907791272494275587.f1, A067368.P1907791272494275587.f2, A067368.P1907791272494275587.a, A067395, A067395.P4961952494524289833.f1, A067395.P4961952494524289833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A213258

/-! ## A213258.P11259955768105765906

`lt[6, dr(xor(n, n-1))]`
-/

namespace A213258.P11259955768105765906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.xor (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A213258.P11259955768105765906

namespace A213258

/-- `lt[6, dr(xor(n, n-1))]` -/
def P11259955768105765906.Spec : Prop :=
  ∀ n, (P11259955768105765906.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P2810005494047809425

`eq[0, xor(n, n-1)%7]`
-/

namespace A213258.P2810005494047809425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A213258.P2810005494047809425

namespace A213258

/-- `eq[0, xor(n, n-1)%7]` -/
def P2810005494047809425.Spec : Prop :=
  ∀ n, (P2810005494047809425.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P13974208488074930920

`lt[1, A096271(n)]+1`
-/

namespace A213258.P13974208488074930920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213258.P13974208488074930920

namespace A213258

/-- `lt[1, A096271(n)]+1` -/
def P13974208488074930920.Spec : Prop :=
  ∀ n, (P13974208488074930920.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P17248452412537339967

`eq[2, A191255(n+1)]+1`
-/

namespace A213258.P17248452412537339967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A213258.P17248452412537339967

namespace A213258

/-- `eq[2, A191255(n+1)]+1` -/
def P17248452412537339967.Spec : Prop :=
  ∀ n, (P17248452412537339967.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P16131371827853811603

`A008574(A191257(n+1))`
-/

namespace A213258.P16131371827853811603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A191257 (n + 1)).toNat

end

end A213258.P16131371827853811603

namespace A213258

/-- `A008574(A191257(n+1))` -/
def P16131371827853811603.Spec : Prop :=
  ∀ n, P16131371827853811603.a n = A213258 (n + 1)

end A213258

/-! ## A213258.P7383008744764176627

`lt[2, A078734(n+1)]+1`
-/

namespace A213258.P7383008744764176627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A213258.P7383008744764176627

namespace A213258

/-- `lt[2, A078734(n+1)]+1` -/
def P7383008744764176627.Spec : Prop :=
  ∀ n, (P7383008744764176627.a n : ℤ) = A213258 (n + 1)

end A213258

/-! ## A213258.P3046305074483273728

`A004277(A067368(n+1))`
-/

namespace A213258.P3046305074483273728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A067368 (n + 1)).toNat

end

end A213258.P3046305074483273728

namespace A213258

/-- `A004277(A067368(n+1))` -/
def P3046305074483273728.Spec : Prop :=
  ∀ n, P3046305074483273728.a n = A213258 (n + 1)

end A213258

/-! ## A213258.P17404113586804796746

`A026491(eq[1, A096271(n)])`
-/

namespace A213258.P17404113586804796746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213258.P17404113586804796746

namespace A213258

/-- `A026491(eq[1, A096271(n)])` -/
def P17404113586804796746.Spec : Prop :=
  ∀ n, P17404113586804796746.a n = A213258 (n + 1)

end A213258

/-! ## A213258.P16906154221195818888

`A066104(eq[1, A096271(n)])`
-/

namespace A213258.P16906154221195818888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213258.P16906154221195818888

namespace A213258

/-- `A066104(eq[1, A096271(n)])` -/
def P16906154221195818888.Spec : Prop :=
  ∀ n, P16906154221195818888.a n = A213258 (n + 1)

end A213258

/-!
# A213259: The number of primorials that neither exceed nor divide the n-th colossally abundant number.

The programs for A213259, there is no canonical definition to state claims against.
-/

/-! ## A213259.P9599352688018202001

`A329343(A342012(n+1))`
-/

namespace A213259.P9599352688018202001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329343 (A342012 (n + 1)).toNat

end

end A213259.P9599352688018202001

/-!
# A213260: p(5n+4) where p(k) = number of partitions of k = A000041(k).

The programs for A213260, there is no canonical definition to state claims against.
-/

/-! ## A213260.P6708906091891300668

`A000041(5*n+4)`
-/

namespace A213260.P6708906091891300668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (5 * n + 4)

end

end A213260.P6708906091891300668

/-! ## A213260.P5634812640916388255

`5*A071734(n)`
-/

namespace A213260.P5634812640916388255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A071734 n

end

end A213260.P5634812640916388255

/-! ## A213260.P17092886709179458119

`record[A035363(4*(n+2)+n)]`
-/

namespace A213260.P17092886709179458119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (4 * (n + 2) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213260.P17092886709179458119

/-! ## A213260.P10830607437788537170

`A035363(5*(2*n+1)+3)`
-/

namespace A213260.P10830607437788537170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (5 * (2 * n + 1) + 3)

end

end A213260.P10830607437788537170

/-! ## A213260.P12960271634020674969

`A119620(A017377(n))`
-/

namespace A213260.P12960271634020674969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (A017377 n).toNat

end

end A213260.P12960271634020674969

/-! ## A213260.P5916244793751268292

`A194451(A017353(n))`
-/

namespace A213260.P5916244793751268292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A017353 n).toNat

end

end A213260.P5916244793751268292

/-! ## A213260.P15113731235730156180

`A194451(A160912(n+2))`
-/

namespace A213260.P15113731235730156180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A160912 (n + 2)).toNat

end

end A213260.P15113731235730156180

/-! ## A213260.P7052668475482493553

`Δ[A024789(5*n+4)]`
-/

namespace A213260.P7052668475482493553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (5 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A213260.P7052668475482493553

/-! ## A213260.P11382626555368954715

`A003964(A031379(n+1))`
-/

namespace A213260.P11382626555368954715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A031379 (n + 1)).toNat

end

end A213260.P11382626555368954715

/-! ## A213260.P3281434083508813026

`A299200(A031371(n+1))`
-/

namespace A213260.P3281434083508813026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A031371 (n + 1)).toNat

end

end A213260.P3281434083508813026

/-! ## A213260.P6945358143707080809

`A100824(A017365(n))`
-/

namespace A213260.P6945358143707080809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A017365 n).toNat

end

end A213260.P6945358143707080809

/-! ## A213260.P7220611837475107535

`A100824(A004767(2*n+1)+2*n+1)`
-/

namespace A213260.P7220611837475107535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A004767 (2 * n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A213260.P7220611837475107535

/-!
# A213261: a(n) = p(7*n + 5), where p(k) = number of partitions of k = A000041(k).

The programs for A213261, there is no canonical definition to state claims against.
-/

/-! ## A213261.P17851763509556905707

`7*A071746(n)`
-/

namespace A213261.P17851763509556905707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A071746 n

end

end A213261.P17851763509556905707

/-! ## A213261.P14123866439452307840

`A000041(7*n+5)`
-/

namespace A213261.P14123866439452307840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (7 * n + 5)

end

end A213261.P14123866439452307840

/-! ## A213261.P14305436811300784004

`record[A035363(7*(n+1)+3)]`
-/

namespace A213261.P14305436811300784004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (7 * (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213261.P14305436811300784004

/-! ## A213261.P9836486771204499525

`A035363(A016993(2*n+1)+2)`
-/

namespace A213261.P9836486771204499525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A016993 (2 * n + 1) + 2).toNat

end

end A213261.P9836486771204499525

/-! ## A213261.P16911695764687813460

`A035363(A298024(2*n+n+2))`
-/

namespace A213261.P16911695764687813460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A298024 (2 * n + (n + 2))).toNat

end

end A213261.P16911695764687813460

/-! ## A213261.P7626172699747547349

`record[A035377(7*(n+2)+1)]`
-/

namespace A213261.P7626172699747547349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (7 * (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213261.P7626172699747547349

/-! ## A213261.P17019519902188199073

`A003964(A031388(n+1))`
-/

namespace A213261.P17019519902188199073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A031388 (n + 1)).toNat

end

end A213261.P17019519902188199073

/-! ## A213261.P6124076299216430809

`A299200(A031381(n+1))`
-/

namespace A213261.P6124076299216430809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A031381 (n + 1)).toNat

end

end A213261.P6124076299216430809

/-!
# A213262: Triangle read by rows: R*(n,k) (n>=2, k from 2 to n-1 or to 2 if n = 2), where R*(n,k) = number of trees with n nodes and k unlabeled end-nodes.

The programs for A213262, there is no canonical definition to state claims against.
-/

/-! ## A213262.P14106593909974253263

`A151880(A038722(abs(1-n)+1))`
-/

namespace A213262.P14106593909974253263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151880 (A038722 (|1 - (n : ℤ)| + 1).toNat).toNat

end

end A213262.P14106593909974253263

/-! ## A213262.P6298619428839506764

`A151880(A061579(abs(1-n))+1)`
-/

namespace A213262.P6298619428839506764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151880 (A061579 |1 - (n : ℤ)|.toNat + 1).toNat

end

end A213262.P6298619428839506764

/-! ## A213262.P6233254592032792631

`A151880(∑[char[A000124(n)]]²-n+1)`
-/

namespace A213262.P6233254592032792631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151880 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A213262.P6233254592032792631

/-! ## A213262.P1671898932875092746

`A151880(∑[char[∑[n]]]²+1-n)`
-/

namespace A213262.P1671898932875092746
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151880 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 - n)

end

end A213262.P1671898932875092746

/-!
# A213263: G.f. satisfies: A(x) = x + A( A(x)^2/(1 + A(x)) ).

The programs for A213263, there is no canonical definition to state claims against.
-/

/-! ## A213263.P8292970340502049906

`A226190(ceil(sqrt(A352855(n))))`
-/

namespace A213263.P8292970340502049906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 ⌈Real.sqrt (A352855 n : ℝ)⌉.toNat

end

end A213263.P8292970340502049906

/-! ## A213263.P13850184702245434974

`A026819(A120567(n+1)+1)`
-/

namespace A213263.P13850184702245434974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A120567 (n + 1) + 1).toNat

end

end A213263.P13850184702245434974

/-! ## A213263.P3762403298208112042

`A179544(lcm(1-n, A232440(n+5)))`
-/

namespace A213263.P3762403298208112042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179544 (Int.lcm (1 - (n : ℤ)) (A232440 (n + 5)))

end

end A213263.P3762403298208112042

/-! ## A213263.P5849488100468478987

`ceil(A218551(3*(n+1))/A218588(n+1))`
-/

namespace A213263.P5849488100468478987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A218551 (3 * (n + 1)) : ℚ) / (A218588 (n + 1) : ℚ)⌉

end

end A213263.P5849488100468478987

/-! ## A213263.P5604670745231741894

`A026819(A148075(n)+A109972(n))`
-/

namespace A213263.P5604670745231741894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A148075 n + A109972 n).toNat

end

end A213263.P5604670745231741894

/-!
# A213264: G.f. satisfies: A(x) = x + A( A(x)^2/(1 + A(x)^2) ).

The programs for A213264, there is no canonical definition to state claims against.
-/

/-! ## A213264.P1605541645209924347

`A004525(∑[A085139(n)])`
-/

namespace A213264.P1605541645209924347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213264.P1605541645209924347

/-! ## A213264.P4837189914248122918

`A026741(∑[A085139(n)])`
-/

namespace A213264.P4837189914248122918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213264.P4837189914248122918

/-! ## A213264.P14214569557787238363

`A032742(∑[A085139(n)])`
-/

namespace A213264.P14214569557787238363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213264.P14214569557787238363

/-! ## A213264.P5345248019642695482

`A060789(∑[A085139(n)])`
-/

namespace A213264.P5345248019642695482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213264.P5345248019642695482

/-! ## A213264.P14176286185665759413

`A065033(∑[A085139(n)])`
-/

namespace A213264.P14176286185665759413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A213264.P14176286185665759413

/-!
# A213265: Expansion of psi(q) * psi(q^2) * psi(q^6) / psi(q^3)^3 in powers of q where psi() is a Ramanujan theta function.

The programs for A213265, there is no canonical definition to state claims against.
-/

/-! ## A213265.P64583846253737877

`ceil(A261321(n)/4)`
-/

namespace A213265.P64583846253737877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A261321 n : ℚ) / 4⌉

end

end A213265.P64583846253737877

/-! ## A213265.P1443337586468554262

`A187153(n+1-ceil(abs(sin(n))))`
-/

namespace A213265.P1443337586468554262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 ((n + 1 : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A213265.P1443337586468554262

/-! ## A213265.P5999848165477711346

`A187153(1-(1-n)%(n+1))`
-/

namespace A213265.P5999848165477711346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (1 - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A213265.P5999848165477711346

/-! ## A213265.P815067152937506946

`A187153((2*n)%(n+1)+1)`
-/

namespace A213265.P815067152937506946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (2 * n % (n + 1) + 1)

end

end A213265.P815067152937506946

/-! ## A213265.P14496691775336977333

`A187153(n^((n+2)%(n+1)))`
-/

namespace A213265.P14496691775336977333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (n ^ ((n + 2) % (n + 1)))

end

end A213265.P14496691775336977333

/-! ## A213265.P741907563954857475

`A187153(A028310(n))`
-/

namespace A213265.P741907563954857475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A028310 n).toNat

end

end A213265.P741907563954857475

/-! ## A213265.P14372402542962449126

`A187153(A000007(n)+n)`
-/

namespace A213265.P14372402542962449126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A000007 n + (n : ℤ)).toNat

end

end A213265.P14372402542962449126

/-! ## A213265.P3800137329434272668

`A187153(A004277(n)-n)`
-/

namespace A213265.P3800137329434272668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A004277 n - (n : ℤ)).toNat

end

end A213265.P3800137329434272668

/-! ## A213265.P12676016282635049246

`A261321(n)/A123932(n)`
-/

namespace A213265.P12676016282635049246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261321 n : ℚ) / (A123932 n : ℚ)

end

end A213265.P12676016282635049246

/-! ## A213265.P12600136357804847835

`A187153(A004275(n+1)-n)`
-/

namespace A213265.P12600136357804847835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A004275 (n + 1) - (n : ℤ)).toNat

end

end A213265.P12600136357804847835

/-! ## A213265.P6087407468024770021

`A187153(2-(n-A004275(n)))`
-/

namespace A213265.P6087407468024770021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (2 - ((n : ℤ) - A004275 n)).toNat

end

end A213265.P6087407468024770021

/-! ## A213265.P15302113169659925940

`A187153(A300576(n+2)/2)`
-/

namespace A213265.P15302113169659925940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (SequenceMachineLib.roundAway ((A300576 (n + 2) : ℚ) / 2)).toNat

end

end A213265.P15302113169659925940

/-! ## A213265.P15427097049641976418

`A187153(A300576(n+2)-n)`
-/

namespace A213265.P15427097049641976418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A300576 (n + 2) - (n : ℤ)).toNat

end

end A213265.P15427097049641976418

/-! ## A213265.P9686290610083013282

`A187153(A004275(n+1)²/A004275(2*n+1))`
-/

namespace A213265.P9686290610083013282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (SequenceMachineLib.roundAway ((A004275 (n + 1) ^ 2 : ℚ) / (A004275 (2 * n + 1) : ℚ))).toNat

end

end A213265.P9686290610083013282

/-! ## A213265.P11744113776488904865

`A187153(A233583(n+1))`
-/

namespace A213265.P11744113776488904865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (A233583 (n + 1)).toNat

end

end A213265.P11744113776488904865

/-! ## A213265.P13968204746169078891

`A187153(A004277(n²)/A004277(n))`
-/

namespace A213265.P13968204746169078891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187153 (SequenceMachineLib.roundAway ((A004277 (n ^ 2) : ℚ) / (A004277 n : ℚ))).toNat

end

end A213265.P13968204746169078891

/-!
# A213266: Expansion of psi(q) * psi(q^9) / (psi(q^2) * chi(q^3) * psi(-q^9)) in powers of q where psi(), chi() are Ramanujan theta functions.

The programs for A213266, there is no canonical definition to state claims against.
-/

/-! ## A213266.P17298179305704368995

`A182038((2*n)%(n+1)+1)`
-/

namespace A213266.P17298179305704368995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (2 * n % (n + 1) + 1)

end

end A213266.P17298179305704368995

/-! ## A213266.P7874702110758326181

`A182038(n-n²%(n+1)+1)`
-/

namespace A213266.P7874702110758326181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 ((n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A213266.P7874702110758326181

/-! ## A213266.P3363261965541589599

`A182038(A028310(n))`
-/

namespace A213266.P3363261965541589599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (A028310 n).toNat

end

end A213266.P3363261965541589599

/-! ## A213266.P6914596779837007099

`A182038(A000007(n)+n)`
-/

namespace A213266.P6914596779837007099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (A000007 n + (n : ℤ)).toNat

end

end A213266.P6914596779837007099

/-! ## A213266.P1072771445971426330

`A033999(n)*A128144(n)`
-/

namespace A213266.P1072771445971426330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A128144 n

end

end A213266.P1072771445971426330

/-! ## A213266.P3051555678422648018

`A128145(n)*A165326(n)`
-/

namespace A213266.P3051555678422648018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 n * A165326 n

end

end A213266.P3051555678422648018

/-! ## A213266.P6281137785319982114

`A182038(A089263(2*n+1)+n+1)`
-/

namespace A213266.P6281137785319982114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182038 (A089263 (2 * n + 1) + (n : ℤ) + 1).toNat

end

end A213266.P6281137785319982114

/-! ## A213266.P6628308313328018777

`A128145(A020639(n+1))*A128145(n)`
-/

namespace A213266.P6628308313328018777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128145 (A020639 (n + 1)).toNat * A128145 n

end

end A213266.P6628308313328018777

/-! ## A213266.P17949447413559766930

`∏{e}[A302781(n), A128144(#)]*A128144(n)`
-/

namespace A213266.P17949447413559766930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A128144 (Nat.factorization (f1 n).natAbs p)) * A128144 n

end

end A213266.P17949447413559766930

/-!
# A213267: Expansion of phi(q^9) / (psi(-q) * chi(q^3)) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A213267, there is no canonical definition to state claims against.
-/

/-! ## A213267.P8086526325724833146

`abs(A145977(n))`
-/

namespace A213267.P8086526325724833146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145977 n|

end

end A213267.P8086526325724833146

/-! ## A213267.P7521272212179861285

`ceil(A132972(n)/3)`
-/

namespace A213267.P7521272212179861285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132972 n : ℚ) / 3⌉

end

end A213267.P7521272212179861285

/-! ## A213267.P3190028061225764815

`ceil(abs(A141094(n)/3))`
-/

namespace A213267.P3190028061225764815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(A141094 n : ℚ) / 3|⌉

end

end A213267.P3190028061225764815

/-! ## A213267.P1634857893520710225

`abs(A124243(abs(1-n)+1))`
-/

namespace A213267.P1634857893520710225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A124243 (|1 - (n : ℤ)| + 1).toNat)|

end

end A213267.P1634857893520710225

/-! ## A213267.P701899928798776566

`A132975((2*n)%(n+1)+1)`
-/

namespace A213267.P701899928798776566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (2 * n % (n + 1) + 1)

end

end A213267.P701899928798776566

/-! ## A213267.P10624182859772869923

`A132975(A028310(n))`
-/

namespace A213267.P10624182859772869923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A028310 n).toNat

end

end A213267.P10624182859772869923

/-! ## A213267.P858816137034799708

`A132975(A000007(n)+n)`
-/

namespace A213267.P858816137034799708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A000007 n + (n : ℤ)).toNat

end

end A213267.P858816137034799708

/-! ## A213267.P17983227722690938

`A033999(n)*A145977(n)`
-/

namespace A213267.P17983227722690938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A145977 n

end

end A213267.P17983227722690938

/-! ## A213267.P9093691998893698806

`A132972(n)/A122553(n)`
-/

namespace A213267.P9093691998893698806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (A122553 n : ℚ)

end

end A213267.P9093691998893698806

/-! ## A213267.P1177247130179714708

`gcd(A000038(n), A145977(n))`
-/

namespace A213267.P1177247130179714708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A145977 n)

end

end A213267.P1177247130179714708

/-! ## A213267.P796808767931559692

`lcm(A020985(n), A145977(n))`
-/

namespace A213267.P796808767931559692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A145977 n)

end

end A213267.P796808767931559692

/-! ## A213267.P15479039287646770444

`A132975(A163985(n)+1-n)`
-/

namespace A213267.P15479039287646770444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A163985 n + (1 - (n : ℤ))).toNat

end

end A213267.P15479039287646770444

/-! ## A213267.P5604230602161831215

`A132975(1-(n-A163985(n)))`
-/

namespace A213267.P5604230602161831215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (1 - ((n : ℤ) - A163985 n)).toNat

end

end A213267.P5604230602161831215

/-! ## A213267.P3290193150415326330

`A132180(n)/A153284(n+1)`
-/

namespace A213267.P3290193150415326330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 n : ℚ) / (A153284 (n + 1) : ℚ)

end

end A213267.P3290193150415326330

/-! ## A213267.P17529038144298235954

`A132975(A008486(n)-2*n)`
-/

namespace A213267.P17529038144298235954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A008486 n - (2 * n : ℤ)).toNat

end

end A213267.P17529038144298235954

/-! ## A213267.P783223328396236983

`A132975(A008486(n)-n-n)`
-/

namespace A213267.P783223328396236983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A008486 n - (n : ℤ) - (n : ℤ)).toNat

end

end A213267.P783223328396236983

/-! ## A213267.P17982047134648256838

`A132975(A004280(n+1)+1-n)`
-/

namespace A213267.P17982047134648256838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A004280 (n + 1) + (1 - (n : ℤ))).toNat

end

end A213267.P17982047134648256838

/-! ## A213267.P7902133178061528246

`A132975(A051755(n+2)-(n+2))`
-/

namespace A213267.P7902133178061528246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A051755 (n + 2) - (n + 2 : ℤ)).toNat

end

end A213267.P7902133178061528246

/-! ## A213267.P14669400612004058796

`A132975(A045833(A004016(n))+n)`
-/

namespace A213267.P14669400612004058796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132975 (A045833 (A004016 n).toNat + (n : ℤ)).toNat

end

end A213267.P14669400612004058796

/-! ## A213267.P4046508650737768098

`A124243(n+1)/A132975(n+1)*A145977(n)`
-/

namespace A213267.P4046508650737768098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124243 (n + 1) : ℚ) / (A132975 (n + 1) : ℚ) * (A145977 n : ℚ)

end

end A213267.P4046508650737768098

/-!
# A213268: Denominators of the Inverse semi-binomial transform of A001477(n) read downwards antidiagonals.

The programs for A213268, there is no canonical definition to state claims against.
-/

/-! ## A213268.P10371086874425310862

`A059268(n)/gcd(A051162(n), A059268(n))`
-/

namespace A213268.P10371086874425310862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / (Int.gcd (A051162 n) (A059268 n) : ℚ)

end

end A213268.P10371086874425310862

/-! ## A213268.P2671977916582470705

`lcm(A059268(n), A134478(n))/A134478(n)`
-/

namespace A213268.P2671977916582470705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A059268 n) (A134478 n) : ℚ) / (A134478 n : ℚ)

end

end A213268.P2671977916582470705

/-! ## A213268.P9092305269684049428

`A326153(A036561(A000038(n)+n))`
-/

namespace A213268.P9092305269684049428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (A036561 (A000038 n + (n : ℤ)).toNat).toNat

end

end A213268.P9092305269684049428

/-! ## A213268.P16401238419854566454

`A326153(A036561(n)*A141044(n))`
-/

namespace A213268.P16401238419854566454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (A036561 n * A141044 n).toNat

end

end A213268.P16401238419854566454

/-! ## A213268.P8137409590444519308

`A326153(lcm(A036561(n), A141044(n)))`
-/

namespace A213268.P8137409590444519308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326153 (Int.lcm (A036561 n) (A141044 n))

end

end A213268.P8137409590444519308

/-!
# A213269: The number of edges in the directed graph of the 2-opt landscape of the symmetric TSP.

The programs for A213269, the canonical program `A213269.P18062519584476786695` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213269 has offset 3).

The definition of A213269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213269.P18062519584476786695

`(n+3)!*n/4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213269

/-- `(n+3)!*n/4` -/
def P18062519584476786695.Spec : Prop :=
  ∀ n, P18062519584476786695.a n = (A213269 (n + 3) : ℚ)

end A213269

/-! ## A213269.P17931931300891220723

`n/2*∏[n+3]`
-/

namespace A213269.P17931931300891220723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A213269.P17931931300891220723

namespace A213269

/-- `n/2*∏[n+3]` -/
def P17931931300891220723.Spec : Prop :=
  ∀ n, P17931931300891220723.a n = (A213269 (n + 3) : ℚ)

end A213269

/-! ## A213269.P10804158180096088496

`record[(n-3)*round(n!/4)]`
-/

namespace A213269.P10804158180096088496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213269.P10804158180096088496

namespace A213269

/-- `record[(n-3)*round(n!/4)]` -/
def P10804158180096088496.Spec : Prop :=
  ∀ n, P10804158180096088496.a n = A213269 (n + 3)

end A213269

/-! ## A213269.P7463157211704344477

`∏[abs(1-n)+5]-(n+3)!`
-/

namespace A213269.P7463157211704344477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (Nat.factorial (n + 3) : ℤ)

end

end A213269.P7463157211704344477

namespace A213269

/-- `∏[abs(1-n)+5]-(n+3)!` -/
def P7463157211704344477.Spec : Prop :=
  ∀ n, P7463157211704344477.a n = A213269 (n + 3)

end A213269

/-! ## A213269.P17601356121729067778

`abs(n*(a(n-1)+(n+2)!))` with `a(0)=0`
-/

namespace A213269.P17601356121729067778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 2))

end

end A213269.P17601356121729067778

namespace A213269

/-- `abs(n*(a(n-1)+(n+2)!))` -/
def P17601356121729067778.Spec : Prop :=
  ∀ n, (P17601356121729067778.a n : ℤ) = A213269 (n + 3)

end A213269

/-! ## A213269.P2716626489167453784

`floor(n*(a(n-1)+(n+2)!))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A213269.P2716626489167453784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 2))

end

end A213269.P2716626489167453784

namespace A213269

/-- `floor(n*(a(n-1)+(n+2)!))` -/
def P2716626489167453784.Spec : Prop :=
  ∀ n, (P2716626489167453784.a n : ℤ) = A213269 (n + 3)

end A213269

/-! ## A213269.P13472650651569225072

`ceil(n*(a(n-1)+(n+2)!))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A213269.P13472650651569225072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 2))

end

end A213269.P13472650651569225072

namespace A213269

/-- `ceil(n*(a(n-1)+(n+2)!))` -/
def P13472650651569225072.Spec : Prop :=
  ∀ n, (P13472650651569225072.a n : ℤ) = A213269 (n + 3)

end A213269

/-! ## A213269.P7142643316760970219

`round(n*(a(n-1)+(n+2)!))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A213269.P7142643316760970219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (a (n - 1) + Nat.factorial (n + 2))

end

end A213269.P7142643316760970219

namespace A213269

/-- `round(n*(a(n-1)+(n+2)!))` -/
def P7142643316760970219.Spec : Prop :=
  ∀ n, (P7142643316760970219.a n : ℤ) = A213269 (n + 3)

end A213269

/-! ## A213269.P17583956938006232853

`record[(a(n-1)+n!)*(n-2)]` with `a(0)=0`
-/

namespace A213269.P17583956938006232853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (f1 (n - 1) + (Nat.factorial n : ℤ)) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213269.P17583956938006232853

namespace A213269

/-- `record[(a(n-1)+n!)*(n-2)]` -/
def P17583956938006232853.Spec : Prop :=
  ∀ n, P17583956938006232853.a n = A213269 (n + 3)

end A213269

/-! ## A213269.P8760024407088525682

`record[A002378(n)*A136572(n)]`
-/

namespace A213269.P8760024407088525682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n * A136572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213269.P8760024407088525682

namespace A213269

/-- `record[A002378(n)*A136572(n)]` -/
def P8760024407088525682.Spec : Prop :=
  ∀ n, P8760024407088525682.a n = A213269 (n + 3)

end A213269

/-!
# A213270: Costas arrays such that the corresponding permutation is an involution.

The programs for A213270, there is no canonical definition to state claims against.
-/

/-! ## A213270.P6784581026266442597

`A001440(n+1)*A036452(n+1)`
-/

namespace A213270.P6784581026266442597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001440 (n + 1) * A036452 (n + 1)

end

end A213270.P6784581026266442597

/-! ## A213270.P17740554416398682978

`A001440(n+1)*A036453(n+1)`
-/

namespace A213270.P17740554416398682978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001440 (n + 1) * A036453 (n + 1)

end

end A213270.P17740554416398682978

/-! ## A213270.P11067773676373908844

`(A178334(n)+1)*A001440(n+1)`
-/

namespace A213270.P11067773676373908844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A001440 (n + 1)

end

end A213270.P11067773676373908844

/-! ## A213270.P434699697304734863

`A001440(n+1)*A242253(n+1)`
-/

namespace A213270.P434699697304734863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001440 (n + 1) * A242253 (n + 1)

end

end A213270.P434699697304734863

/-!
# A213271: Costas arrays such that the corresponding permutation is a derangement.

The programs for A213271, there is no canonical definition to state claims against.
-/

/-! ## A213271.P7280215395763130089

`A110936(A005421(2*n+1))%A104599(n+1)`
-/

namespace A213271.P7280215395763130089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110936 (A005421 (2 * n + 1)).toNat) (A104599 (n + 1))

end

end A213271.P7280215395763130089

/-!
# A213272: Costas arrays such that the terms in each row of the difference table are unique modulo n.

The programs for A213272, there is no canonical definition to state claims against.
-/

/-! ## A213272.P10989587508851624966

`C(∏{p}[n+2, #-1], n)*A000010(n+1)`
-/

namespace A213272.P10989587508851624966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)).toNat n : ℤ) * A000010 (n + 1)

end

end A213272.P10989587508851624966

/-! ## A213272.P16266397261860893263

`char[p?[round(8*n/7)]-2]*A002618(n+1)`
-/

namespace A213272.P16266397261860893263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A002618 (n + 1)

end

end A213272.P16266397261860893263

/-! ## A213272.P16963741778875558357

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A010051(n+2)`
-/

namespace A213272.P16963741778875558357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) * (A010051 (n + 2) : ℚ)

end

end A213272.P16963741778875558357

/-! ## A213272.P12883271794653002880

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A101040((n+2)²)`
-/

namespace A213272.P12883271794653002880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) * (A101040 ((n + 2) ^ 2) : ℚ)

end

end A213272.P12883271794653002880

/-! ## A213272.P9089451813677631889

`(n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*Δ[A000720(n+1)]`
-/

namespace A213272.P9089451813677631889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)) * (f3 (n + 1) - f3 n : ℚ)

end

end A213272.P9089451813677631889

/-!
# A213273: The smallest m such that the complete bipartite graph K_{n,n} has a coprime labeling using labels from {1,...,m}.

The programs for A213273, there is no canonical definition to state claims against.
-/

/-! ## A213273.P13710638762786121262

`A316622(A275935(n))+A070932(2*n+2)`
-/

namespace A213273.P13710638762786121262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316622 (A275935 n).toNat + A070932 (2 * n + 2)

end

end A213273.P13710638762786121262

/-! ## A213273.P8483800323519042712

`A329313(A316622(n))+A070932(2*n+2)`
-/

namespace A213273.P8483800323519042712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A316622 n).toNat + A070932 (2 * n + 2)

end

end A213273.P8483800323519042712

/-! ## A213273.P2093938826382406414

`A070932(2*n+2)+A057427(A045934(n+1))`
-/

namespace A213273.P2093938826382406414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (2 * n + 2) + A057427 (A045934 (n + 1)).toNat

end

end A213273.P2093938826382406414

/-! ## A213273.P13988621375386506950

`A070932(2*n+2)+A060576(A046528(n+2))`
-/

namespace A213273.P13988621375386506950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (2 * n + 2) + A060576 (A046528 (n + 2)).toNat

end

end A213273.P13988621375386506950

/-! ## A213273.P4771053591603458731

`A070932(2*n+2)-A321800(A000079(n+1))`
-/

namespace A213273.P4771053591603458731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (2 * n + 2) - A321800 (A000079 (n + 1)).toNat

end

end A213273.P4771053591603458731

/-!
# A213275: Number A(n,k) of words w where each letter of the k-ary alphabet occurs n times and for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A213275, there is no canonical definition to state claims against.
-/

/-! ## A213275.P4041992814401618473

`or(A256268(n), A359893(A249443(2*(n+2))))`
-/

namespace A213275.P4041992814401618473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256268 n) (A359893 (A249443 (2 * (n + 2))).toNat)

end

end A213275.P4041992814401618473

/-! ## A213275.P1223473634795115901

`or(A256268(n), A340988(A005117(3*n+4)))`
-/

namespace A213275.P1223473634795115901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A256268 n) (A340988 ((A005117 (3 * n + 4)).toNat + 91))

end

end A213275.P1223473634795115901

/-!
# A213276: Number A(n,k) of n-length words w over a k-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A213276, there is no canonical definition to state claims against.
-/

/-! ## A213276.P3581766484393193661

`A210391(n)-A102683(A284732(n+1))`
-/

namespace A213276.P3581766484393193661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n - A102683 (A284732 (n + 1)).toNat

end

end A213276.P3581766484393193661

/-! ## A213276.P3228291281028512469

`and(A071921(n), A175298(A000792(n)))`
-/

namespace A213276.P3228291281028512469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071921 n) (A175298 (A000792 n).toNat)

end

end A213276.P3228291281028512469

/-! ## A213276.P1663567643485386690

`A210391(n)-A085974(A013612(n))`
-/

namespace A213276.P1663567643485386690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210391 n - A085974 (A013612 n).toNat

end

end A213276.P1663567643485386690

/-! ## A213276.P11468255541310667628

`A118340(n)+A018843(A053534(n))`
-/

namespace A213276.P11468255541310667628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 n + A018843 (A053534 n).toNat

end

end A213276.P11468255541310667628

/-! ## A213276.P17258210612351156496

`A118340(n)+A001842(A155971(n))`
-/

namespace A213276.P17258210612351156496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118340 n + A001842 (A155971 n).toNat

end

end A213276.P17258210612351156496

/-!
# A213278: Least common multiple of A001175(n) and n.

The programs for A213278, there is no canonical definition to state claims against.
-/

/-! ## A213278.P616184302879395947

`lcm(A001175(n+1), n+1)`
-/

namespace A213278.P616184302879395947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001175 (n + 1)) (n + 1 : ℤ)

end

end A213278.P616184302879395947

/-! ## A213278.P12603466573883299924

`lcm(A000027(n+1), A106291(n+1))`
-/

namespace A213278.P12603466573883299924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A106291 (n + 1))

end

end A213278.P12603466573883299924

/-! ## A213278.P12943376236128725342

`lcm(A106291(A007947(n+1)), A237517(n+1))`
-/

namespace A213278.P12943376236128725342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106291 (A007947 (n + 1)).toNat) (A237517 (n + 1))

end

end A213278.P12943376236128725342

/-! ## A213278.P5862047307567970344

`lcm(A237836(n+1)/A237517(n+1), A065033(2*(n+1)))`
-/

namespace A213278.P5862047307567970344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A237836 (n + 1) : ℚ) / (A237517 (n + 1) : ℚ))) (A065033 (2 * (n + 1)))

end

end A213278.P5862047307567970344

/-! ## A213278.P18058667120152963179

`lcm(A175183(n+1), A285057(n+1))`
-/

namespace A213278.P18058667120152963179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A175183 (n + 1)) (A285057 (n + 1))

end

end A213278.P18058667120152963179

/-! ## A213278.P9461308061098624786

`A106291((n+1)*∏{p}[n+1, #])`
-/

namespace A213278.P9461308061098624786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A213278.P9461308061098624786

/-! ## A213278.P10090644304364454628

`A106291(A064549(n+1))`
-/

namespace A213278.P10090644304364454628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A064549 (n + 1)).toNat

end

end A213278.P10090644304364454628

/-! ## A213278.P7953400683413365485

`A106291(A007947(n+1)*A237517(n+1))`
-/

namespace A213278.P7953400683413365485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A007947 (n + 1) * A237517 (n + 1)).toNat

end

end A213278.P7953400683413365485

/-!
# A213279: Triangle read by rows: T(n,k) (n>=1, 1 <= k <= n) = number of permutations of [1..n] in which all cycle lengths are divisible by k.

The programs for A213279, there is no canonical definition to state claims against.
-/

/-! ## A213279.P8469256473139335071

`lcm(A193356(A226234(n)), A333726(n+1))`
-/

namespace A213279.P8469256473139335071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A193356 (A226234 n).toNat) (A333726 (n + 1))

end

end A213279.P8469256473139335071

/-! ## A213279.P14213145603354820219

`A135528(A033455(n+1))*A333726(n+1)`
-/

namespace A213279.P14213145603354820219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A033455 (n + 1)).toNat * A333726 (n + 1)

end

end A213279.P14213145603354820219

/-!
# A213280: Triangle read by rows: T(n,k) (n>=1, 1 <= k <= n) = number of permutations of [1..n] in which none of the cycle lengths are divisible by k.

The programs for A213280, there is no canonical definition to state claims against.
-/

/-! ## A213280.P6682851154289590530

`A118759(A002262(n)*A293211(n+1))`
-/

namespace A213280.P6682851154289590530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A002262 n * A293211 (n + 1)).toNat

end

end A213280.P6682851154289590530

/-! ## A213280.P13059394098504278500

`A000196((A002262(n)*A293211(n+1))²)`
-/

namespace A213280.P13059394098504278500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A002262 n * A293211 (n + 1)) ^ 2).toNat

end

end A213280.P13059394098504278500

/-! ## A213280.P11199388969600636593

`A118759(A025668(n+1)*A293211(n+1))`
-/

namespace A213280.P11199388969600636593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A025668 (n + 1) * A293211 (n + 1)).toNat

end

end A213280.P11199388969600636593

/-! ## A213280.P15145572325087063964

`(A002262(n)*A293211(n+1))%A000112(n+1)`
-/

namespace A213280.P15145572325087063964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n * A293211 (n + 1)) (A000112 (n + 1))

end

end A213280.P15145572325087063964

/-! ## A213280.P18430018121369080256

`A118759((A130493(n+1)-A122974(n+1))*A002262(n))`
-/

namespace A213280.P18430018121369080256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 ((A130493 (n + 1) - A122974 (n + 1)) * A002262 n).toNat

end

end A213280.P18430018121369080256

/-!
# A213282: G.f. satisfies A(x) = G(x/(1-x)^3) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A213282, there is no canonical definition to state claims against.
-/

/-! ## A213282.P9962592530736365046

`abs(Δ[A346626(abs(1-n))])`
-/

namespace A213282.P9962592530736365046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346626 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A213282.P9962592530736365046

/-! ## A213282.P2101730567535949002

`A051953(A278236(n)+A025013(n))`
-/

namespace A213282.P2101730567535949002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A278236 n + A025013 n).toNat

end

end A213282.P2101730567535949002

/-!
# A213283: Number of 4-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213283, the canonical program `A213283.P1671582640164315362` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213283 has offset 0).

The definition of A213283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213283.P1671582640164315362

`∑[n]²+2*9*C(n, 4)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213283

/-- `∑[n]²+2*9*C(n, 4)` -/
def P1671582640164315362.Spec : Prop :=
  ∀ n, (P1671582640164315362.a n : ℤ) = A213283 n

theorem P1671582640164315362.correct : P1671582640164315362.Spec := by
  intro n
  simp only [A213283]

end A213283

/-! ## A213283.P8526454231018529081

`∑[n]²+2*A060008(n)`
-/

namespace A213283.P8526454231018529081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + 2 * A060008 n

end

end A213283.P8526454231018529081

namespace A213283

/-- `∑[n]²+2*A060008(n)` -/
def P8526454231018529081.Spec : Prop :=
  ∀ n, P8526454231018529081.a n = A213283 n

theorem P8526454231018529081.correct : P8526454231018529081.Spec := by
  intro n
  simp only [A213283, Nat.add_sub_cancel, A213283.P8526454231018529081.f1, A213283.P8526454231018529081.a, A213283.P1671582640164315362.f1, A213283.P1671582640164315362.a, A060008, A060008.P5269451932416479602.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213283

/-! ## A213283.P8744861933327415399

`∑[n]²+18*A000332(n)`
-/

namespace A213283.P8744861933327415399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) + 18 * A000332 n

end

end A213283.P8744861933327415399

namespace A213283

/-- `∑[n]²+18*A000332(n)` -/
def P8744861933327415399.Spec : Prop :=
  ∀ n, P8744861933327415399.a n = A213283 n

theorem P8744861933327415399.correct : P8744861933327415399.Spec := by
  intro n
  simp only [A213283, Nat.add_sub_cancel, A213283.P8744861933327415399.f1, A213283.P8744861933327415399.a, A213283.P1671582640164315362.f1, A213283.P1671582640164315362.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A213283

/-! ## A213283.P5267155285611546496

`A000537(n)+9*A034827(n)`
-/

namespace A213283.P5267155285611546496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + 9 * A034827 n

end

end A213283.P5267155285611546496

namespace A213283

/-- `A000537(n)+9*A034827(n)` -/
def P5267155285611546496.Spec : Prop :=
  ∀ n, P5267155285611546496.a n = A213283 n

end A213283

/-! ## A213283.P16273228603165846813

`18*A000332(n)-∑[A024001(n)-1]`
-/

namespace A213283.P16273228603165846813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024001 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A000332 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213283.P16273228603165846813

namespace A213283

/-- `18*A000332(n)-∑[A024001(n)-1]` -/
def P16273228603165846813.Spec : Prop :=
  ∀ n, P16273228603165846813.a n = A213283 n

end A213283

/-! ## A213283.P11219703711134914808

`A000537(n)+lcm(A034827(n), A060008(n))`
-/

namespace A213283.P11219703711134914808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + (Int.lcm (A034827 n) (A060008 n) : ℤ)

end

end A213283.P11219703711134914808

namespace A213283

/-- `A000537(n)+lcm(A034827(n), A060008(n))` -/
def P11219703711134914808.Spec : Prop :=
  ∀ n, P11219703711134914808.a n = A213283 n

end A213283

/-!
# A213284: Number of 5-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213284, the canonical program `A213284.P859440898009864633` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213284 has offset 0).

The definition of A213284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A213284.P859440898009864633

`n*(94-204*n+155*n²-45*n^3+6*n^4)/6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A213284

/-- `n*(94-204*n+155*n²-45*n^3+6*n^4)/6` -/
def P859440898009864633.Spec : Prop :=
  ∀ n, P859440898009864633.a n = (A213284 n : ℚ)

end A213284

/-! ## A213284.P7982533131358692894

`A213276(C(n+7, 2)-n-1)`
-/

namespace A213284.P7982533131358692894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 ((Nat.choose (n + 7) 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A213284.P7982533131358692894

namespace A213284

/-- `A213276(C(n+7, 2)-n-1)` -/
def P7982533131358692894.Spec : Prop :=
  ∀ n, P7982533131358692894.a n = A213284 n

end A213284

/-! ## A213284.P4809035410188330712

`A213276(A167499(n+4))`
-/

namespace A213284.P4809035410188330712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A167499 (n + 4)).toNat

end

end A213284.P4809035410188330712

namespace A213284

/-- `A213276(A167499(n+4))` -/
def P4809035410188330712.Spec : Prop :=
  ∀ n, P4809035410188330712.a n = A213284 n

end A213284

/-! ## A213284.P13473548986293396308

`A213276(A077169(n+6))`
-/

namespace A213284.P13473548986293396308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A077169 (n + 6)).toNat

end

end A213284.P13473548986293396308

namespace A213284

/-- `A213276(A077169(n+6))` -/
def P13473548986293396308.Spec : Prop :=
  ∀ n, P13473548986293396308.a n = A213284 n

end A213284

/-! ## A213284.P10931178091190224063

`A213276(A056115(n)+20)`
-/

namespace A213284.P10931178091190224063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A056115 n + 20).toNat

end

end A213284.P10931178091190224063

namespace A213284

/-- `A213276(A056115(n)+20)` -/
def P10931178091190224063.Spec : Prop :=
  ∀ n, P10931178091190224063.a n = A213284 n

end A213284

/-!
# A213285: Number of 6-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213285, there is no canonical definition to state claims against.
-/

/-! ## A213285.P12727691811714978220

`A213276(eq[6, A002262(n)])`
-/

namespace A213285.P12727691811714978220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213285.P12727691811714978220

/-! ## A213285.P4127482729481435026

`A213276(A167499(n+5)+1)`
-/

namespace A213285.P4127482729481435026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A167499 (n + 5) + 1).toNat

end

end A213285.P4127482729481435026

/-! ## A213285.P13856349875600554801

`A213276(A167614(n+5)+3)`
-/

namespace A213285.P13856349875600554801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A167614 (n + 5) + 3).toNat

end

end A213285.P13856349875600554801

/-! ## A213285.P7029174047300189767

`A213276(A000124(n+6)+5)`
-/

namespace A213285.P7029174047300189767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000124 (n + 6) + 5).toNat

end

end A213285.P7029174047300189767

/-! ## A213285.P13988769390564772031

`A213276(A000096(n+5)+7)`
-/

namespace A213285.P13988769390564772031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 5) + 7).toNat

end

end A213285.P13988769390564772031

/-!
# A213286: Number of 7-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213286, there is no canonical definition to state claims against.
-/

/-! ## A213286.P8424436865828027801

`A213276(A167487(n+6))`
-/

namespace A213286.P8424436865828027801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A167487 (n + 6)).toNat

end

end A213286.P8424436865828027801

/-! ## A213286.P7847773664904315327

`A213276(A056121(n)+35)`
-/

namespace A213286.P7847773664904315327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A056121 n + 35).toNat

end

end A213286.P7847773664904315327

/-! ## A213286.P1502379248509917238

`A213276(eq[7, A002262(n)])`
-/

namespace A213286.P1502379248509917238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213286.P1502379248509917238

/-! ## A213286.P10212144580043548747

`A213276(A000124(n+7)+6)`
-/

namespace A213286.P10212144580043548747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000124 (n + 7) + 6).toNat

end

end A213286.P10212144580043548747

/-! ## A213286.P6665524280196895964

`A213276(A000096(n+6)+8)`
-/

namespace A213286.P6665524280196895964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 6) + 8).toNat

end

end A213286.P6665524280196895964

/-!
# A213287: Number of 8-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213287, there is no canonical definition to state claims against.
-/

/-! ## A213287.P2314569743658250551

`A213276(eq[8, A002262(n)])`
-/

namespace A213287.P2314569743658250551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213287.P2314569743658250551

/-! ## A213287.P10336173362877102810

`A213276(A000124(n+8)+7)`
-/

namespace A213287.P10336173362877102810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000124 (n + 8) + 7).toNat

end

end A213287.P10336173362877102810

/-! ## A213287.P15461816684741505534

`A213276(A000096(n+7)+9)`
-/

namespace A213287.P15461816684741505534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 7) + 9).toNat

end

end A213287.P15461816684741505534

/-! ## A213287.P6979488115935245745

`A213276(A000217(n+8)+8)`
-/

namespace A213287.P6979488115935245745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000217 (n + 8) + 8).toNat

end

end A213287.P6979488115935245745

/-! ## A213287.P9231728016591745151

`A213276(A046691(n+6)+12)`
-/

namespace A213287.P9231728016591745151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A046691 (n + 6) + 12).toNat

end

end A213287.P9231728016591745151

/-!
# A213288: Number of 9-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213288, there is no canonical definition to state claims against.
-/

/-! ## A213288.P14312476589892179441

`A213276(eq[9, A002262(n)])`
-/

namespace A213288.P14312476589892179441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213288.P14312476589892179441

/-! ## A213288.P15416598578528420666

`A213276(A133263(n+9)+7)`
-/

namespace A213288.P15416598578528420666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A133263 (n + 9) + 7).toNat

end

end A213288.P15416598578528420666

/-! ## A213288.P6602991093485902838

`A213276(A000124(n+9)+8)`
-/

namespace A213288.P6602991093485902838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000124 (n + 9) + 8).toNat

end

end A213288.P6602991093485902838

/-! ## A213288.P2325508667606729681

`A213276(A000096(n+8)+10)`
-/

namespace A213288.P2325508667606729681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 8) + 10).toNat

end

end A213288.P2325508667606729681

/-! ## A213288.P17917004232750622685

`A213276(A046691(n+7)+13)`
-/

namespace A213288.P17917004232750622685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A046691 (n + 7) + 13).toNat

end

end A213288.P17917004232750622685

/-!
# A213289: Number of 10-length words w over n-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213289, there is no canonical definition to state claims against.
-/

/-! ## A213289.P4125961380096925005

`A213276(eq[10, A002262(n)])`
-/

namespace A213289.P4125961380096925005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213289.P4125961380096925005

/-! ## A213289.P1431423456711699252

`A213276(A167614(n+9)+7)`
-/

namespace A213289.P1431423456711699252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A167614 (n + 9) + 7).toNat

end

end A213289.P1431423456711699252

/-! ## A213289.P16335111270476636293

`A213276(A000096(n+9)+11)`
-/

namespace A213289.P16335111270476636293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 9) + 11).toNat

end

end A213289.P16335111270476636293

/-! ## A213289.P17380200942448852621

`A213276(A056000(n+6)+20)`
-/

namespace A213289.P17380200942448852621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A056000 (n + 6) + 20).toNat

end

end A213289.P17380200942448852621

/-! ## A213289.P6468517192312824748

`A213276(eq[10, A144328(n+1)])`
-/

namespace A213289.P6468517192312824748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213289.P6468517192312824748

/-!
# A213290: Number of n-length words w over binary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213290, the canonical program `A213290.P9813323371573201390` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213290 has offset 0).

The definition of A213290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213290.P9813323371573201390

`A057427(n)+A028262(A194274(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A213290

/-- `A057427(n)+A028262(A194274(n))` -/
def P9813323371573201390.Spec : Prop :=
  ∀ n, P9813323371573201390.a n = A213290 n

theorem P9813323371573201390.correct : P9813323371573201390.Spec := by
  intro n
  simp only [A213290]

end A213290

/-! ## A213290.P8055828739085021917

`A028262(A194274(n))+char[A052938(n)]`
-/

namespace A213290.P8055828739085021917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028262 (A194274 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A213290.P8055828739085021917

namespace A213290

/-- `A028262(A194274(n))+char[A052938(n)]` -/
def P8055828739085021917.Spec : Prop :=
  ∀ n, P8055828739085021917.a n = A213290 n

end A213290

/-! ## A213290.P4253854851401189457

`A057427(n)+A028262(A080476(n+1))`
-/

namespace A213290.P4253854851401189457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A028262 (A080476 (n + 1)).toNat

end

end A213290.P4253854851401189457

namespace A213290

/-- `A057427(n)+A028262(A080476(n+1))` -/
def P4253854851401189457.Spec : Prop :=
  ∀ n, P4253854851401189457.a n = A213290 n

end A213290

/-! ## A213290.P7045998341138202522

`A028262(A194274(n))%A095121(n)+1`
-/

namespace A213290.P7045998341138202522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028262 (A194274 n).toNat) (A095121 n) + 1

end

end A213290.P7045998341138202522

namespace A213290

/-- `A028262(A194274(n))%A095121(n)+1` -/
def P7045998341138202522.Spec : Prop :=
  ∀ n, P7045998341138202522.a n = A213290 n

end A213290

/-! ## A213290.P2047724409011166447

`A028262(A007590(n+1))%A014137(n)+1`
-/

namespace A213290.P2047724409011166447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028262 (A007590 (n + 1)).toNat) (A014137 n) + 1

end

end A213290.P2047724409011166447

namespace A213290

/-- `A028262(A007590(n+1))%A014137(n)+1` -/
def P2047724409011166447.Spec : Prop :=
  ∀ n, P2047724409011166447.a n = A213290 n

end A213290

/-! ## A213290.P7074918187712886318

`A316314(A165825(n+1))+A028262(A194274(n))`
-/

namespace A213290.P7074918187712886318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (A165825 (n + 1)).toNat + A028262 (A194274 n).toNat

end

end A213290.P7074918187712886318

namespace A213290

/-- `A316314(A165825(n+1))+A028262(A194274(n))` -/
def P7074918187712886318.Spec : Prop :=
  ∀ n, P7074918187712886318.a n = A213290 n

end A213290

/-! ## A213290.P4571259286700780572

`A168185(A316314(n+1))+A028262(A194274(n))`
-/

namespace A213290.P4571259286700780572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (A316314 (n + 1)).toNat + A028262 (A194274 n).toNat

end

end A213290.P4571259286700780572

namespace A213290

/-- `A168185(A316314(n+1))+A028262(A194274(n))` -/
def P4571259286700780572.Spec : Prop :=
  ∀ n, P4571259286700780572.a n = A213290 n

end A213290

/-!
# A213291: Number of n-length words w over ternary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213291, there is no canonical definition to state claims against.
-/

/-! ## A213291.P15471329495444819758

`A213276(∑[n+4]+2)`
-/

namespace A213291.P15471329495444819758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A213291.P15471329495444819758

/-! ## A213291.P1022382886807807997

`record[A213276(abs(A046691(n)))]`
-/

namespace A213291.P1022382886807807997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213291.P1022382886807807997

/-! ## A213291.P5613505509936325227

`A213276(A046691(n+2))+char[30]`
-/

namespace A213291.P5613505509936325227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A046691 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A213291.P5613505509936325227

/-! ## A213291.P4807470583462576864

`record[gcd(A002262(n+4), A213276(n))]`
-/

namespace A213291.P4807470583462576864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 4)) (A213276 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213291.P4807470583462576864

/-! ## A213291.P490575047857886971

`record[C(A213276(n), A294118(n+2))]`
-/

namespace A213291.P490575047857886971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A213276 n).toNat (A294118 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213291.P490575047857886971

/-!
# A213292: Number of n-length words w over 4-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213292, there is no canonical definition to state claims against.
-/

/-! ## A213292.P11400329371422676260

`A213276(∑[n+5]+5)`
-/

namespace A213292.P11400329371422676260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A213292.P11400329371422676260

/-! ## A213292.P12744471506298897366

`record[A213276(A052905(n))]`
-/

namespace A213292.P12744471506298897366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213292.P12744471506298897366

/-! ## A213292.P18190902665187807527

`record[A213276(A055999(n)+1)]`
-/

namespace A213292.P18190902665187807527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213292.P18190902665187807527

/-! ## A213292.P10203679636791543478

`record[A213276(abs(A046691(n))-1)]`
-/

namespace A213292.P10203679636791543478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213292.P10203679636791543478

/-! ## A213292.P10433571239122303399

`record[A213276(A046691(n+1)-1)]`
-/

namespace A213292.P10433571239122303399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213292.P10433571239122303399

/-!
# A213293: Number of n-length words w over 5-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213293, there is no canonical definition to state claims against.
-/

/-! ## A213293.P12559298588793406580

`record[A213276(∑[n+4])]`
-/

namespace A213293.P12559298588793406580
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213293.P12559298588793406580

/-! ## A213293.P3359725130126518259

`A213276(A055999(n+3))`
-/

namespace A213293.P3359725130126518259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A055999 (n + 3)).toNat

end

end A213293.P3359725130126518259

/-! ## A213293.P12465989645933858182

`A213276(A056119(n)+15)`
-/

namespace A213293.P12465989645933858182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A056119 n + 15).toNat

end

end A213293.P12465989645933858182

/-! ## A213293.P11969122752850627938

`A213276(eq[5, A025581(n)])`
-/

namespace A213293.P11969122752850627938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213293.P11969122752850627938

/-! ## A213293.P10435644386585262049

`A213276(eq[6, A193739(n)])`
-/

namespace A213293.P10435644386585262049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213293.P10435644386585262049

/-!
# A213294: Number of n-length words w over 6-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213294, there is no canonical definition to state claims against.
-/

/-! ## A213294.P4043882477853213707

`A213276(2*n+C(n+7, 2)-n)`
-/

namespace A213294.P4043882477853213707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 ((2 * n : ℤ) + ((Nat.choose (n + 7) 2 : ℤ) - (n : ℤ))).toNat

end

end A213294.P4043882477853213707

/-! ## A213294.P11800319780458423324

`A213276(eq[6, A025581(n)])`
-/

namespace A213294.P11800319780458423324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213294.P11800319780458423324

/-! ## A213294.P1940717028120883242

`A213276(eq[7, A193739(n)])`
-/

namespace A213294.P1940717028120883242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213294.P1940717028120883242

/-! ## A213294.P17082385552342448742

`A213276(eq[13, A099375(n)])`
-/

namespace A213294.P17082385552342448742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213294.P17082385552342448742

/-! ## A213294.P14011314413494071799

`A213276(eq[64, A130321(n)])`
-/

namespace A213294.P14011314413494071799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213294.P14011314413494071799

/-!
# A213295: Number of n-length words w over 7-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213295, there is no canonical definition to state claims against.
-/

/-! ## A213295.P11394294695734305321

`A213276(A155212(n+4))`
-/

namespace A213295.P11394294695734305321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A155212 (n + 4)).toNat

end

end A213295.P11394294695734305321

/-! ## A213295.P13574929227684873330

`A213276(eq[7, A025581(n)])`
-/

namespace A213295.P13574929227684873330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213295.P13574929227684873330

/-! ## A213295.P8257522766636776209

`A213276(eq[8, A193739(n)])`
-/

namespace A213295.P8257522766636776209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213295.P8257522766636776209

/-! ## A213295.P16212191360582564100

`A213276(Δ[A264444(n+1)])`
-/

namespace A213295.P16212191360582564100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (f1 (n + 1) - f1 n).toNat

end

end A213295.P16212191360582564100

/-! ## A213295.P1283939421660731933

`A213276(A055999(n+5)-2)`
-/

namespace A213295.P1283939421660731933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A055999 (n + 5) - 2).toNat

end

end A213295.P1283939421660731933

/-!
# A213296: Number of n-length words w over 8-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213296, there is no canonical definition to state claims against.
-/

/-! ## A213296.P1708459645024159655

`A213276(eq[8, A025581(n)])`
-/

namespace A213296.P1708459645024159655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213296.P1708459645024159655

/-! ## A213296.P9643948826908642165

`A213276(eq[9, A193739(n)])`
-/

namespace A213296.P9643948826908642165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213296.P9643948826908642165

/-! ## A213296.P14955902620944685922

`A213276(A052905(n+6)-4)`
-/

namespace A213296.P14955902620944685922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A052905 (n + 6) - 4).toNat

end

end A213296.P14955902620944685922

/-! ## A213296.P15190275045607479367

`A213276(A046691(n+7)-5)`
-/

namespace A213296.P15190275045607479367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A046691 (n + 7) - 5).toNat

end

end A213296.P15190275045607479367

/-! ## A213296.P9621362347191709170

`A213276(A000096(n+8)-8)`
-/

namespace A213296.P9621362347191709170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 8) - 8).toNat

end

end A213296.P9621362347191709170

/-!
# A213297: Number of n-length words w over 9-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213297, there is no canonical definition to state claims against.
-/

/-! ## A213297.P238450956406325233

`A213276(A056000(n+6))`
-/

namespace A213297.P238450956406325233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A056000 (n + 6)).toNat

end

end A213297.P238450956406325233

/-! ## A213297.P4883761342586376187

`A213276(eq[9, A025581(n)])`
-/

namespace A213297.P4883761342586376187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213297.P4883761342586376187

/-! ## A213297.P15327745598443369752

`A213276(A052905(n+7)-5)`
-/

namespace A213297.P15327745598443369752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A052905 (n + 7) - 5).toNat

end

end A213297.P15327745598443369752

/-! ## A213297.P3720033234336551212

`A213276(A000096(n+9)-9)`
-/

namespace A213297.P3720033234336551212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000096 (n + 9) - 9).toNat

end

end A213297.P3720033234336551212

/-! ## A213297.P15794690817458125244

`A213276(A000217(n+10)-10)`
-/

namespace A213297.P15794690817458125244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000217 (n + 10) - 10).toNat

end

end A213297.P15794690817458125244

/-!
# A213298: Number of n-length words w over 10-ary alphabet such that for every prefix z of w we have #(z,a_i) = 0 or #(z,a_i) >= #(z,a_j) for all j>i and #(z,a_i) counts the occurrences of the i-th letter in z.

The programs for A213298, there is no canonical definition to state claims against.
-/

/-! ## A213298.P6836669463339257658

`A213276(eq[10, A025581(n)])`
-/

namespace A213298.P6836669463339257658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A213298.P6836669463339257658

/-! ## A213298.P2624123380981359225

`record[A213276(∑[A057717(n)])]`
-/

namespace A213298.P2624123380981359225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A213298.P2624123380981359225

/-! ## A213298.P14474231210844728759

`A213276(A056000(n+7)-1)`
-/

namespace A213298.P14474231210844728759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A056000 (n + 7) - 1).toNat

end

end A213298.P14474231210844728759

/-! ## A213298.P3680376911855822417

`A213276(A034856(n+10)-9)`
-/

namespace A213298.P3680376911855822417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A034856 (n + 10) - 9).toNat

end

end A213298.P3680376911855822417

/-! ## A213298.P4463332128093580466

`A213276(A000217(n+11)-11)`
-/

namespace A213298.P4463332128093580466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213276 (A000217 (n + 11) - 11).toNat

end

end A213298.P4463332128093580466

/-!
# A213299: Partial sums of A211681.

The programs for A213299, the canonical program `A213299.P7352330318747567761` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A213299 has offset 1).

The definition of A213299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A213299.P7352330318747567761

`∑[A211681(n+1)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A213299

/-- `∑[A211681(n+1)]` -/
def P7352330318747567761.Spec : Prop :=
  ∀ n, P7352330318747567761.a n = A213299 (n + 1)

theorem P7352330318747567761.correct : P7352330318747567761.Spec := by
  intro n
  simp only [A213299, Nat.add_sub_cancel]

end A213299

/-! ## A213299.P7233109555658474401

`∑[record[A211681(A236858(n))]]`
-/

namespace A213299.P7233109555658474401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (A236858 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213299.P7233109555658474401

namespace A213299

/-- `∑[record[A211681(A236858(n))]]` -/
def P7233109555658474401.Spec : Prop :=
  ∀ n, P7233109555658474401.a n = A213299 (n + 1)

end A213299

/-! ## A213299.P13964845051511035559

`∑[record[A211681(A324347(n))]]`
-/

namespace A213299.P13964845051511035559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213299.P13964845051511035559

namespace A213299

/-- `∑[record[A211681(A324347(n))]]` -/
def P13964845051511035559.Spec : Prop :=
  ∀ n, P13964845051511035559.a n = A213299 (n + 1)

end A213299

/-! ## A213299.P3403342617839105197

`∑[record[A211681(A331745(n))]]`
-/

namespace A213299.P3403342617839105197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213299.P3403342617839105197

namespace A213299

/-- `∑[record[A211681(A331745(n))]]` -/
def P3403342617839105197.Spec : Prop :=
  ∀ n, P3403342617839105197.a n = A213299 (n + 1)

end A213299

/-! ## A213299.P17608970627784765619

`∑[record[A211681(A344180(n))]]`
-/

namespace A213299.P17608970627784765619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211681 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A213299.P17608970627784765619

namespace A213299

/-- `∑[record[A211681(A344180(n))]]` -/
def P17608970627784765619.Spec : Prop :=
  ∀ n, P17608970627784765619.a n = A213299 (n + 1)

end A213299

